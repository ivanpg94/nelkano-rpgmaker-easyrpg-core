# Nelkano RPG Maker 2000/2003 EasyRPG Core

Public GPL core for running RPG Maker 2000/2003 games from Nelkano through EasyRPG Player.

This repository is intentionally separate from the main Nelkano application. The main app may remain private/proprietary while this repository contains the GPL-covered EasyRPG integration layer, build scripts, notices and source needed for the RPG Maker 2000/2003 runtime.

## License

This repository is distributed under GPL-3.0-or-later. See `COPYING`.

EasyRPG Player is GPL software. Any EasyRPG source, patches, build glue or binaries distributed from this repository must keep the corresponding source available here or from linked upstream repositories.

## Boundary With Nelkano

- Nelkano main detects RPG Maker 2000/2003 projects and knows that this runtime is required.
- This core runs as a separate runtime/process/package boundary where possible.
- The main Nelkano APK/EXE must not silently embed EasyRPG binaries unless the release explicitly includes GPL notices and corresponding source for the GPL-covered parts.
- Games, RTP files, ROMs, BIOS files, saves and protected third-party content are not included.

## Initial Layout

- `src/`: Nelkano-specific launcher/wrapper code for the EasyRPG runtime.
- `scripts/`: setup, build and packaging helpers.
- `legal/`: source-offer and third-party notice templates.
- `third_party/`: local upstream checkouts; ignored by git.
- `dist/`: generated packages; ignored by git.

## First Coding Target

Desktop first:

1. Fetch/build EasyRPG Player from source.
2. Add a thin Nelkano launcher that accepts a game folder path.
3. Keep saves outside the game folder when possible.
4. Publish a GPL source release and a matching binary release.
5. Let Nelkano main discover and launch the runtime as an external component.

Android comes later because packaging a GPL runtime inside an APK has stronger compliance and distribution implications.
