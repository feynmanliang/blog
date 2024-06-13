import lume from "lume/mod.ts";
import katex from "lume/plugins/katex.ts";
import blog from "blog/mod.ts";

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
  }));

export default site;
