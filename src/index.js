const app = require('express')();

app.get('/', (req, res) => {
	res.json({ message: 'Hello Docker ^^' });
});

const PORT = process.env.PORT || 4000;

app.listen(PORT, () => {
	console.log(`Server is up and running on port: ${PORT}`);
});
