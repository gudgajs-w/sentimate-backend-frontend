export default async function handler(req: Request) {
  const { prompt } = await req.json();
  const response = await fetch('https://api-inference.huggingface.co/models/mradermacher/Llama-3-Mopeyfied-Psychology-v2-i1-GGUF', {
    method: 'POST',
    headers: {
      'Authorization': `Bearer ${process.env.HUGGINGFACE_API_KEY}`,
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({ inputs: prompt })
  });

  const data = await response.json();
  return new Response(JSON.stringify(data), { status: 200 });
}