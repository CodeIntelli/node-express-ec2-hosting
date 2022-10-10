const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("CICD Worked");
});
app.get("/post", (req, res) => {
  res.json({
    name: "Product API",
    data: [
      { id: 1, productTitle: "Samsung" },
      { id: 2, productTitle: "Iphone" },
    ],
    message: "Success Fetched Data",
  });
});
app.listen(6464, () => {
  console.log("App is Connected at 6464");
});
