/** @type {import("snowpack").SnowpackUserConfig } */
module.exports = {
  mount: {
    public: { url: '/', static: true },
    src: { url: '/dist' },
  },
  exclude: ['**/*.{res,resi}'],
  plugins: ['@snowpack/plugin-react-refresh', '@jihchi/plugin-rescript'],
  optimize: {
    bundle: true,
    minify: true,
  },
};
