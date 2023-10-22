
/* reset */
a {
  color: gray; 
  text-decoration-line: none;
}
ul,ol {
  list-style:none; 
  margin:0px; 
  padding:0px;
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



/* blog */
.blog-content {
  display: grid;
  grid-template-columns: 1fr minmax(150px, 25%) ;
}
.blog-aside {
  margin-left: 32px;
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