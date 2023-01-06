import lume from "lume/mod.ts";
import imagick from "lume/plugins/imagick.ts";
import windi from "lume/plugins/windi_css.ts";

import blog from "https://deno.land/x/lume_theme_simple_blog@v0.5.0/mod.ts";

const site = lume();

site.use(blog())
    .use(imagick())
    .use(windi());

export default site;
