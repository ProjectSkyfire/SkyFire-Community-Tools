<p align="center">
  <img src="../Images/project-skyfire-logo.png" alt="Project SkyFire" width="300">
</p>

# SkyFire Authnet Launcher

This folder contains the stable SkyFire Authnet Launcher installer for Windows.
The launcher starts a supported client and applies the required connection
changes in memory. It does not permanently modify the client executable.

## Package

- Launcher version: 1.4 Authnet
- Installer version: 1.4.1
- Installer: `SkyFireLauncherSetup.msi`
- Platform: Windows x64
- Supported client: Mists of Pandaria 5.4.8, build 18414

The installer is self-contained and does not require a separate .NET runtime.

## Installation

1. Close the game client and any older SkyFire Launcher instance.
2. Run `SkyFireLauncherSetup.msi`.
3. Approve the Windows installation prompt.
4. Choose whether to install the optional desktop shortcut.
5. Finish the installation and open SkyFire Launcher from the Start menu or
   desktop shortcut.

Running a newer installer upgrades the existing installation. The launcher can
be removed later through Windows Installed Apps.

## Initial Configuration

1. Open SkyFire Launcher.
2. Select the gear icon to open Configuration.
3. Set **Client Location** to the root of the 5.4.8 client folder containing
   `Wow.exe` and `Wow-64.exe`.
4. Select the default 32-bit or 64-bit client.
5. Set **Login Address** to the hostname or IP address supplied by the server
   administrator.
6. Enable **Clear client cache on each login** when testing server or database
   changes that may leave stale client data.
7. Enable **Authnet login** to use the Authnet server route. Disable it to use
   the standard launcher route.
8. Select **Save**.

## Account Migration

Authnet uses an email address for account login. When a legacy username account
needs to be converted:

1. Open Configuration.
2. Select **Migrate Account to Email Login**.
3. Enter the existing username and current password.
4. Enter the new email address and password twice.
5. Select **Migrate**.

Migration requires a compatible server and a valid existing account. After a
successful migration, use the email address and new password in the client.

## Launching The Client

1. Start SkyFire Launcher before starting the game client.
2. Select the 32-bit or 64-bit client on the main screen.
3. Select **Play**.
4. Enter the account email address and password in the client.

When using an unmodified client, always start it through SkyFire Launcher so the
connection routing and required in-memory changes are applied.

## Troubleshooting

### Client executable not found

Confirm that Client Location points to the client root and that the selected
`Wow.exe` or `Wow-64.exe` exists there.

### Error 114 or unable to connect

Confirm that the login address is correct, the server is running, and the
Authnet setting matches the server configuration. A firewall may also block the
connection.

### Immediate disconnect after login

Verify the account email and password. Legacy accounts may need password reset
or migration before they have the verifier required for Authnet login.

### Client data appears stale

Enable the cache-clearing option in Configuration, save, and launch again.

## Project Links

- [Project SkyFire](https://www.projectskyfire.org)
- [Launcher source and releases](https://github.com/ProjectSkyfire/launcher)
- [SkyFire 5.4.8 server core](https://github.com/ProjectSkyfire/SkyFire_548)
- [Community tools](https://github.com/ProjectSkyfire/SkyFire-Community-Tools)
- [Project wiki](https://wiki.projectskyfire.org)

## License

SkyFire Launcher is distributed under the GNU General Public License v3.0. The
launcher source and full license are available in the
[launcher repository](https://github.com/ProjectSkyfire/launcher).

Copyright (c) 2026 Project SkyFire.
