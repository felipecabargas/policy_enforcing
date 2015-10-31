#GIT Policy Enforcing with Ruby

Git hooks done easy.

##Hooks

###pre-push

> Accepts only commits with "ADD", "RENAME", "REMOVE" or "HOTFIX" at the start of the commit-msg.

![](http://cabargas.me/policy.png)

**INSTALL:**

```bash
$ mv pre-push.rb destination_path/.git/hooks/pre-push
$ chmod 777 destination_path/.git/hooks/pre-push
```

##About

###Info

- *Version:* **1.0**
- *Website:* [git.cabargas.me](http://git.cabargas.me)

##Credits

- **Felipe Cabargas** - @felipecabargas - [email](mailto:felipe.cabargas@gmail.com)

##Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/felipecabargas/policy_enforcing](https://github.com/felipecabargas/policy_enforcing). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org/) code of conduct.

##License

```
policy_enforcing
Copyright (C) 2015 Felipe Cabargas

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

```

