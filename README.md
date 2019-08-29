## Installation


```
gem install nokogiri
```

### Usage

```
ruby analizer.rb <input_origin_file_path> <input_other_sample_file_path> [<css_or_xpath_selector>]
```

Example #1
```
ruby analyzer.rb ./examples/sample-0-origin.html ./examples/sample-1-evil-gemini.html
```

Example #2

```
ruby analyzer.rb ./examples/sample-0-origin.html ./example/sample-4-the-mash.html .dropdown-menu
```