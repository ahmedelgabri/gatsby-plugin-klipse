# gatsby-plugin-klipse

Adds code REPLs in markdown using [Klipse](https://github.com/viebel/klipse)

## Install

`npm install --save gatsby-plugin-klipse`

## How to use

```javascript
// In your gatsby-config.js
plugins: [
  {
    resolve: 'gatsby-plugin-klipse',
    options: {
      // Class prefix for <pre> tags containing code examples
      // defaults to empty string
      // if you use PrimsJS for example then add `language-` as the prefix
      classPrefix: '',
      // Klipse config, you can check it here
      // https://github.com/viebel/klipse#configuration
      klipseSettings: { ... }
    }
  }
]
```

### Usage in Markdown

This will create a JavaScript REPL

    ```eval-js
    1 + 1
    ```
This will create a Ruby REPL

    ```eval-ruby
    [ 1, 2 ] * 3
    ```

The text that you pass after the backticks needs to match the part after `selector_` keys in this object, these are default selectors used by the plugin:

```js
{
  selector: '.klipse', //selector for clojure evaluation snippets
  selector_brainfuck: '.klipse-brainfuck', // selector for brainfuck snippets
  selector_es2017: '.klipse-es2017', // selector for EcmaScript 2017 evaluation snippets
  selector_eval_cpp: '.klipse-cpp', // selector for cpp evaluation
  selector_eval_html: '.klipse-html', // selector for html evaluation snippets
  selector_eval_js: '.klipse-eval-js', // selector for javascript evaluation snippets
  selector_eval_lambdaway: '.klipse-lambdaway', // selector for lambdaway transpilation snippets
  selector_eval_markdown: '.klipse-markdown', // selector for markdown transpilation snippets
  selector_eval_ocaml: '.klipse-ocaml', // selector for ocaml evaluation snippets
  selector_eval_php: '.klipse-eval-php', // selector for php evaluation snippets
  selector_eval_python_client: '.klipse-python', // selector for python evaluation snippets
  selector_eval_reason: '.klipse-reason', // selector for reason evaluation snippets
  selector_eval_ruby: '.klipse-eval-ruby', //selector for ruby evaluation snippets
  selector_eval_scheme: '.klipse-scheme', // selector for scheme evaluation snippets
  selector_google_charts: '.klipse-google-charts', // selector for google charts snippets
  selector_js: '.klipse-js', // selector for clojure transpilation snippets
  selector_jsx: '.klipse-jsx', // selector for jsx evaluation snippets
  selector_oblivion: '.klipse-oblivion', // selector for oblivion snippets
  selector_react: '.klipse-react', //selector for react snippets
  selector_reagent: '.klipse-reagent', // selector for reagent snippets
  selector_render_jsx: '.klipse-render-jsx', // selector for jsx rendering snippets
  selector_sql: '.klipse-sql', // selector for sqlite evaluation snippets
  selector_transpile_jsx: '.klipse-transpile-jsx', // selector for jsx transpilation snippets
  selector_transpile_ocaml: '.klipse-transpile-ocaml', // selector for ocaml transpilation snippets
  selector_transpile_reason: '.klipse-transpile-reason', // selector for reason transpilation snippets
  selector_transpile_reason_to_ocaml: '.klipse-transpile-reason-to-ocaml', // selector for reason transpilation into ocaml snippets
}
```
