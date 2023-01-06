import lume from "lume/mod.ts";
import imagick from "lume/plugins/imagick.ts";

import blog from "https://deno.land/x/lume_theme_simple_blog@v0.5.0/mod.ts";

const site = lume();

site
  .use(imagick())
  .use(blog());

export default site;
