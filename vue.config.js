/*publicPath determines where Vue will try to access JS, CSS, and image files. by default the publicPath is '/'. our default github pages url is "https://<username>.github.io/<repo-name>/", so we will need to set publicPath to '/<repo-name>/'.*/
module.exports = {
  publicPath: process.env.NODE_ENV === 'production'
  ? '/raya-jobs/'
  : '/'
}
