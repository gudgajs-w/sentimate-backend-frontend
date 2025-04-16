
import { serve } from 'https://deno.land/std@0.168.0/http/server.ts'

serve(async (req) => {
  const { input } = await req.json()
  const mockResponse = {
    input,
    reply: "This is a simulated AI response from the Llama-3-Mopeyfied-Psychology model."
  }
  return new Response(JSON.stringify(mockResponse), { headers: { 'Content-Type': 'application/json' } })
})
