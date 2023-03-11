import { Web3Storage } from 'web3.storage';

// Construct with token and endpoint
const client = new Web3Storage({ token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkaWQ6ZXRocjoweERGYjBGMzNDNEYwRDExZUUwMDE0MjEyMGQ3RDdFYzVERDIxZDMxMzMiLCJpc3MiOiJ3ZWIzLXN0b3JhZ2UiLCJpYXQiOjE2Nzg1MTM0NTYzODksIm5hbWUiOiJkZW1vIn0.ROuzO1aV40RHRQvDzPtnkQKKqQKA7PVK8ECzKPzG9CQ });

const cid=await client.put()