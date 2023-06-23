var gradients = [
     ["#56C1FF", "#0076BA"],
     ["#16E7CF", "#007B76"],
     ["#61D836", "#017100"],
     ["#FAE232", "#FF9300"],
     ["#FF644E", "#B51700"],
     ["#FF42A1", "#970E53"]
]

const { createCanvas } = require('node-canvas')
const fs = require("fs");

for (const gradient of gradients) {
     const canvas = createCanvas(512, 512)
     const ctx = canvas.getContext('2d')

     var fillGradient = ctx.createLinearGradient(0, 0, 0, 512);

     fillGradient.addColorStop (0, gradient[0]);
     fillGradient.addColorStop (1, gradient[1]);
     ctx.fillStyle = fillGradient;

     ctx.fillRect(0, 0, 512, 512);

     const buffer = canvas.toBuffer("image/png");
     fs.writeFileSync(`./${gradient[0]}-${gradient[1]}.png`, buffer);
     console.log(`Generated ${gradient[0]}-${gradient[1]}...`)
}

console.log("Done")