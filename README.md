# Command output

An action that runs the provided command and captures its output for later use in other steps.

## Usage

```yaml
- name: Capture command output
  id: command
  uses: dawidd6/action-command-output@v1
  with:
    command: nix build nixpkgs#hello

- name: Print command output
  run: echo output='${{ steps.command.outputs.output }}'
```
