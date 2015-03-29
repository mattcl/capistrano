# capistrano-cookbook

TODO: Enter the cookbook description here.

## Supported Platforms

TODO: List your supported platforms.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['capistrano']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### capistrano::default

Include `capistrano` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[capistrano::default]"
  ]
}
```

## License and Authors

Author:: Matt Chun-Lum (<mchunlum@gmail.com>)
