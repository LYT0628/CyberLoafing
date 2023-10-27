/* get user` configuration */

{{ $color := site.Params.color 
            | default "#4f46e5" }}

/* string Red(#FF0000) */
{{ $r := substr $color -6 2 
  | print "0x" | int}}
/* string Red(#00FF00) */
{{ $g := substr $color -4 2 
        | print "0x" | int}}
/* string Red(#0000FF) */
{{ $b := substr $color -2 2 |
          print "0x" | int}}
/* css variables */
/* 通常的最佳实践是定义在根伪类 :root 下，这样就可以在 HTML 文档的任何地方访问到它了 */
:root {
  --red: {{$r}}; 
  --green: {{$g}}; 
  --blue: {{$b}}; 
}


/* blog */
.blog-content {
  display: grid;
  grid-template-columns: 1fr minmax(150px, 25%) ;
}
.blog-aside {
  margin-left: 32px;
}


/* style */

.body {
  display: grid;
  grid-row: auto 1fr auto;
}

/* menu */
.nav-title {
  /* flex */
  display: flex; 
  align-items: center;

  /* box */
  margin-left: 32px
}

.nav-title-text {
  margin-left: 16px;
}
.navbar {
  /* flex */
  display: flex;
  justify-content:space-between;

  /* box */
  margin: 0 auto;
  border-bottom:1px solid grey
}

.menubar {
  /* flex */
  display: flex;
  align-items:flex-end;
  justify-content:center
}

.menu {
  display: block;
  padding: 16px;
}

/* footer */
.footer {
  background-color: #eee;
}
.sitemap {
  /* text */
  text-align: center;
  /* box */
  padding: 2.5rem;

  /* grid */
  display: grid;
  grid-template-columns: 1fr 1fr;
}

.link-item {
  /* box */
  margin-left: 16px;
  margin-top: 16px;
}

/* hero */
.hero {
  /* view */
  min-height: 100vh;
  width: 100vw;

  /* flex */
  display: flex; 
  flex-direction: column;                       
  align-items:center;
  justify-content: center;
}





/* post */
.post {
  /* box */
  /* 放置上下margin传递 */
  border: 2px solid ;
  border-radius: 6px;

  cursor: pointer;
}



.copyright {
  text-align: center;
}