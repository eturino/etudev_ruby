etudev_ruby Cookbook
====================
This cookbook uses the rbenv cookbook to install the given rubies (and the bundler gem). It installs rbenv globally

see http://community.opscode.com/cookbooks/rbenv

Requirements
------------

#### cookbooks
- `rbenv` - etudev_ruby uses it for installing rbenv and the rubies

Attributes
----------

e.g.
#### etudev_ruby::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['etudev_ruby']['rubies']</tt></td>
    <td>Array</td>
    <td>list of ruby versions to install</td>
    <td><tt>['2.0.0-p247']</tt></td>
  </tr>
  <tr>
    <td><tt>['etudev_ruby']['gems']</tt></td>
    <td>Array</td>
    <td>list of gems to install with each ruby versions</td>
    <td><tt>['bundler']</tt></td>
  </tr>
</table>

Usage
-----
#### etudev_ruby::default
Just include `etudev_ruby` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[etudev_ruby]"
  ]
}
```

Contributing
------------

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Eduardo Turiño, eturino, https://github.com/eturino
