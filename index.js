const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.json({ status: 'ok', message: 'CI/CD demo app' });
});

app.get('/health', (req, res) => {
  res.json({ healthy: true });
});

module.exports = app;

if (require.main === module) {
  app.listen(3001, () => {
    console.log('Listening on port 3001');
  });
}