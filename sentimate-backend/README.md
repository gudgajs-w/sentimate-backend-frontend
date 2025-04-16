
# Sentimate Supabase Backend

## Setup Instructions

1. Go to [Supabase](https://supabase.com) and create a new project.
2. In the SQL Editor, paste and run the contents of `schema.sql`.
3. In the `functions` tab, create the following edge functions using the `.ts` files:
   - `get-users`
   - `get-models`
   - `query-ai`
4. Set environment variables for the edge functions:
   - `SUPABASE_URL`
   - `SUPABASE_SERVICE_ROLE_KEY`
5. Deploy the edge functions.
6. Update your frontend `.env` to call these functions via `/functions/v1/...` routes.

You're all set!
