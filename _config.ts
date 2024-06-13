import lume from "lume/mod.ts";
import blog from "blog/mod.ts";
import katex from "lume/plugins/katex.ts";
import picture from "lume/plugins/picture.ts";
import transformImages from "lume/plugins/transform_images.ts";

const site = lume();

site
  .use(blog())
  .use(katex({
    options: {
        delimiters: [
        { left: "$$", right: "$$", display: true },
        { left: "$", right: "$", display: false },
        { left: "\\(", right: "\\)", display: false },
        { left: "\\[", right: "\\]", display: true },
      ],
    },
  }))
  .use(picture())
  .use(transformImages())
;

export default site;
