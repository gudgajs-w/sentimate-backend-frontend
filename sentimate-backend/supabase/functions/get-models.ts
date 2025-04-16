export default async function handler() {
  const models = [
    { id: 'llama-3-mopeyfied-psychology', name: 'LLaMA 3 Mopeyfied Psychology', source: 'Hugging Face' }
  ];
  return new Response(JSON.stringify(models), { status: 200 });
}