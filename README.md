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
ruby analyzer.rb ./examples/sample-0-origin.html ./examples/sample-0-origin.html
```
Output:
```
/html/body/div/div/div[3]/div[1]/div/div[2]/a
```

Example #2

```
ruby analyzer.rb ./examples/sample-0-origin.html ./example/sample-4-the-mash.html .dropdown-menu
```