# Contributing

## Packages

Package should contain the name of the software to configure and include configuration
for it dependencies.

Take for example Hyprland that uses `waybar` and `rofi` as such the it should include
in the package both of them.

## Commit

If a commit only modifies a single package it should the package name as the **prefix**
all and both the message and the prefix should be start with a capital letter:

```commit
Hyprland: Add hyprland package
```

When modifying files outside package the prefix is unnecessary.

```commit
Add new dependencies to README.md
```
