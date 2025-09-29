Return-Path: <nicolas@saliencelabs.ai>
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82E5ACAC5B5
	for <webhook@archiver.kernel.org>; Mon, 29 Sep 2025 10:36:04 +0000 (UTC)
Subject: Re: [yocto] Failed to fetc qemu-project/u-boot
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: nicolas@saliencelabs.ai
X-Originating-Location: Reading, England, GB (2.124.203.197)
X-Originating-Platform: Windows Chrome 139
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 29 Sep 2025 03:35:56 -0700
References: <CANNYZj8Yx_EkRLagi+ZgAVhHhx1LXPDve+HBdmzy17i4MHR-PQ@mail.gmail.com>
In-Reply-To: <CANNYZj8Yx_EkRLagi+ZgAVhHhx1LXPDve+HBdmzy17i4MHR-PQ@mail.gmail.com>
Message-ID: <12545.1759142156172570349@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ZSF6v5aH36q0KnMjrSIi"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Sep 2025 10:36:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65882

--ZSF6v5aH36q0KnMjrSIi
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Full log:

>=20
> NOTE: Direct dependencies are []
> NOTE: Installed into sysroot: []
> NOTE: Skipping as already exists in sysroot: []
> DEBUG: Python function extend_recipe_sysroot finished
> DEBUG: Executing python function fetcher_hashes_dummyfunc
> DEBUG: Python function fetcher_hashes_dummyfunc finished
> DEBUG: Executing python function do_fetch
> DEBUG: Executing python function base_do_fetch
> DEBUG: Trying PREMIRRORS
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['git', 'sourceware.org', '/git/glibc.git',
> '', '', OrderedDict()] to ['https', 'downloads.yoctoproject.org',
> '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['git', 'sourceware.org',
> '/git/binutils-gdb.git', '', '', OrderedDict()] to ['https',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: Trying Upstream
> DEBUG: Fetcher accessed the network with the command LANG=3DC git -c
> gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall cl=
one
> --bare --mirror https://github.com/Xilinx/qemu.git
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> --progress
> DEBUG: Running export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; LANG=3DC git -c gc.autoDetach=3Dfalse -c
> core.pager=3Dcat -c safe.bareRepository=3Dall clone --bare --mirror
> https://github.com/Xilinx/qemu.git
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> --progress
> Cloning into bare repository
> '/home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git'...
> remote: Enumerating objects: 750297, done.
> remote: Counting objects: 100% (9632/9632), done.
> remote: Compressing objects: 100% (224/224), done.
> remote: Total 750297 (delta 9491), reused 9432 (delta 9407), pack-reused
> 740665 (from 2)
> Receiving objects: 100% (750297/750297), 358.33 MiB | 12.99 MiB/s, done.
> Resolving deltas: 100% (619519/619519), done.
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall branch --contains
> b05c9752662eb4b8120a57454a323445d78d1463 --list xlnx_rel_v2025.1 2>
> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall branch --contains
> b05c9752662eb4b8120a57454a323445d78d1463 --list xlnx_rel_v2025.1 2>
> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall branch --contains
> b05c9752662eb4b8120a57454a323445d78d1463 --list xlnx_rel_v2025.1 2>
> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall grep lfs xlnx_rel_v2025.1:.gitattributes | wc -=
l'
> in /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall branch --contains
> b05c9752662eb4b8120a57454a323445d78d1463 --list xlnx_rel_v2025.1 2>
> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall branch --contains
> b05c9752662eb4b8120a57454a323445d78d1463 --list xlnx_rel_v2025.1 2>
> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall grep lfs xlnx_rel_v2025.1:.gitattributes | wc -=
l'
> in /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall show
> b05c9752662eb4b8120a57454a323445d78d1463:.gitmodules' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 roms/seabios' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 roms/SLOF' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 roms/ipxe' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 roms/openbios' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 roms/qemu-palcode' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 roms/u-boot' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 roms/skiboot' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 roms/QemuMacDrivers' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 roms/seabios-hppa' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 roms/u-boot-sam460ex' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 roms/edk2' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 roms/opensbi' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 roms/qboot' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 roms/vbootrom' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 tests/lcitool/libvirt-ci' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: gitsm: Submodules requiring update: roms/seabios roms/SLOF
> roms/ipxe roms/openbios roms/qemu-palcode roms/u-boot roms/skiboot
> roms/QemuMacDrivers roms/seabios-hppa roms/u-boot-sam460ex roms/edk2
> roms/opensbi roms/qboot roms/vbootrom tests/lcitool/libvirt-ci
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall show
> b05c9752662eb4b8120a57454a323445d78d1463:.gitmodules' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 roms/seabios' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 roms/SLOF' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 roms/ipxe' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 roms/openbios' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 roms/qemu-palcode' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 roms/u-boot' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 roms/skiboot' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 roms/QemuMacDrivers' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 roms/seabios-hppa' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 roms/u-boot-sam460ex' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 roms/edk2' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 roms/opensbi' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 roms/qboot' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 roms/vbootrom' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall ls-tree -z -d
> b05c9752662eb4b8120a57454a323445d78d1463 tests/lcitool/libvirt-ci' in
> /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git
> DEBUG: Trying PREMIRRORS
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/seabios.git/', '',
> '', OrderedDict([('protocol', 'https'), ('name', 'roms/seabios'),
> ('subpath', 'roms/seabios'), ('nobranch', '1'), ('lfs', 'True'),
> ('bareclone', '1')])] comparing ['git', 'sourceware.org',
> '/git/glibc.git', '', '', OrderedDict()] to ['https',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/seabios.git/', '',
> '', OrderedDict([('protocol', 'https'), ('name', 'roms/seabios'),
> ('subpath', 'roms/seabios'), ('nobranch', '1'), ('lfs', 'True'),
> ('bareclone', '1')])] comparing ['git', 'sourceware.org',
> '/git/binutils-gdb.git', '', '', OrderedDict()] to ['https',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: Trying Upstream
> DEBUG: Fetcher accessed the network with the command LANG=3DC git -c
> gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall cl=
one
> --bare --mirror https://gitlab.com/qemu-project/seabios.git/
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.seabios=
.git.
> --progress
> DEBUG: Running export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; LANG=3DC git -c gc.autoDetach=3Dfalse -c
> core.pager=3Dcat -c safe.bareRepository=3Dall clone --bare --mirror
> https://gitlab.com/qemu-project/seabios.git/
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.seabios=
.git.
> --progress
> Cloning into bare repository
> '/home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.seabio=
s.git.'...
>=20
> remote: Enumerating objects: 16657, done.
> remote: Counting objects: 100% (76/76), done.
> remote: Compressing objects: 100% (48/48), done.
> remote: Total 16657 (delta 28), reused 76 (delta 28), pack-reused 16581
> (from 1)
> Receiving objects: 100% (16657/16657), 3.69 MiB | 18.87 MiB/s, done.
> Resolving deltas: 100% (13225/13225), done.
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall log --pretty=3Doneline -n 1
> a6ed6b701f0a57db0569ab98b0661c12a6ec3ff8 -- 2> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.seabios=
.git.
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall log --pretty=3Doneline -n 1
> a6ed6b701f0a57db0569ab98b0661c12a6ec3ff8 -- 2> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.seabios=
.git.
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall log --pretty=3Doneline -n 1
> a6ed6b701f0a57db0569ab98b0661c12a6ec3ff8 -- 2> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.seabios=
.git.
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall log --pretty=3Doneline -n 1
> a6ed6b701f0a57db0569ab98b0661c12a6ec3ff8 -- 2> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.seabios=
.git.
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall log --pretty=3Doneline -n 1
> a6ed6b701f0a57db0569ab98b0661c12a6ec3ff8 -- 2> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.seabios=
.git.
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall show
> a6ed6b701f0a57db0569ab98b0661c12a6ec3ff8:.gitmodules' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.seabios=
.git.
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall show
> a6ed6b701f0a57db0569ab98b0661c12a6ec3ff8:.gitmodules' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.seabios=
.git.
>=20
> DEBUG: Trying PREMIRRORS
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/SLOF.git', '', '',
> OrderedDict([('protocol', 'https'), ('name', 'roms/SLOF'), ('subpath',
> 'roms/SLOF'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['git', 'sourceware.org', '/git/glibc.git', '', '',
> OrderedDict()] to ['https', 'downloads.yoctoproject.org',
> '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/SLOF.git', '', '',
> OrderedDict([('protocol', 'https'), ('name', 'roms/SLOF'), ('subpath',
> 'roms/SLOF'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['git', 'sourceware.org', '/git/binutils-gdb.git', '', '',
> OrderedDict()] to ['https', 'downloads.yoctoproject.org',
> '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: Trying Upstream
> DEBUG: Fetcher accessed the network with the command LANG=3DC git -c
> gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall cl=
one
> --bare --mirror https://gitlab.com/qemu-project/SLOF.git
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.SLOF.gi=
t
> --progress
> DEBUG: Running export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; LANG=3DC git -c gc.autoDetach=3Dfalse -c
> core.pager=3Dcat -c safe.bareRepository=3Dall clone --bare --mirror
> https://gitlab.com/qemu-project/SLOF.git
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.SLOF.gi=
t
> --progress
> Cloning into bare repository
> '/home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.SLOF.g=
it'...
>=20
> remote: Enumerating objects: 8003, done.
> remote: Counting objects: 100% (3/3), done.
> remote: Compressing objects: 100% (3/3), done.
> remote: Total 8003 (delta 0), reused 3 (delta 0), pack-reused 8000 (from
> 1)
> Receiving objects: 100% (8003/8003), 2.70 MiB | 29.36 MiB/s, done.
> Resolving deltas: 100% (5893/5893), done.
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall log --pretty=3Doneline -n 1
> 3a259df2449fc4a4e43ab5f33f0b2c66484b4bc3 -- 2> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.SLOF.gi=
t
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall log --pretty=3Doneline -n 1
> 3a259df2449fc4a4e43ab5f33f0b2c66484b4bc3 -- 2> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.SLOF.gi=
t
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall log --pretty=3Doneline -n 1
> 3a259df2449fc4a4e43ab5f33f0b2c66484b4bc3 -- 2> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.SLOF.gi=
t
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall log --pretty=3Doneline -n 1
> 3a259df2449fc4a4e43ab5f33f0b2c66484b4bc3 -- 2> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.SLOF.gi=
t
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall log --pretty=3Doneline -n 1
> 3a259df2449fc4a4e43ab5f33f0b2c66484b4bc3 -- 2> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.SLOF.gi=
t
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall show
> 3a259df2449fc4a4e43ab5f33f0b2c66484b4bc3:.gitmodules' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.SLOF.gi=
t
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall show
> 3a259df2449fc4a4e43ab5f33f0b2c66484b4bc3:.gitmodules' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.SLOF.gi=
t
>=20
> DEBUG: Trying PREMIRRORS
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/ipxe.git', '', '',
> OrderedDict([('protocol', 'https'), ('name', 'roms/ipxe'), ('subpath',
> 'roms/ipxe'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['git', 'sourceware.org', '/git/glibc.git', '', '',
> OrderedDict()] to ['https', 'downloads.yoctoproject.org',
> '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/ipxe.git', '', '',
> OrderedDict([('protocol', 'https'), ('name', 'roms/ipxe'), ('subpath',
> 'roms/ipxe'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['git', 'sourceware.org', '/git/binutils-gdb.git', '', '',
> OrderedDict()] to ['https', 'downloads.yoctoproject.org',
> '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: Trying Upstream
> DEBUG: Fetcher accessed the network with the command LANG=3DC git -c
> gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall cl=
one
> --bare --mirror https://gitlab.com/qemu-project/ipxe.git
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.ipxe.gi=
t
> --progress
> DEBUG: Running export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; LANG=3DC git -c gc.autoDetach=3Dfalse -c
> core.pager=3Dcat -c safe.bareRepository=3Dall clone --bare --mirror
> https://gitlab.com/qemu-project/ipxe.git
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.ipxe.gi=
t
> --progress
> Cloning into bare repository
> '/home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.ipxe.g=
it'...
>=20
> remote: Enumerating objects: 62594, done.
> remote: Counting objects: 100% (356/356), done.
> remote: Compressing objects: 100% (147/147), done.
> remote: Total 62594 (delta 208), reused 356 (delta 208), pack-reused 6223=
8
> (from 1)
> Receiving objects: 100% (62594/62594), 18.79 MiB | 52.43 MiB/s, done.
> Resolving deltas: 100% (47493/47493), done.
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall log --pretty=3Doneline -n 1
> 4bd064de239dab2426b31c9789a1f4d78087dc63 -- 2> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.ipxe.gi=
t
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall log --pretty=3Doneline -n 1
> 4bd064de239dab2426b31c9789a1f4d78087dc63 -- 2> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.ipxe.gi=
t
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall log --pretty=3Doneline -n 1
> 4bd064de239dab2426b31c9789a1f4d78087dc63 -- 2> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.ipxe.gi=
t
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall log --pretty=3Doneline -n 1
> 4bd064de239dab2426b31c9789a1f4d78087dc63 -- 2> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.ipxe.gi=
t
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall log --pretty=3Doneline -n 1
> 4bd064de239dab2426b31c9789a1f4d78087dc63 -- 2> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.ipxe.gi=
t
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall show
> 4bd064de239dab2426b31c9789a1f4d78087dc63:.gitmodules' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.ipxe.gi=
t
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall show
> 4bd064de239dab2426b31c9789a1f4d78087dc63:.gitmodules' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.ipxe.gi=
t
>=20
> DEBUG: Trying PREMIRRORS
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/openbios.git', '',
> '', OrderedDict([('protocol', 'https'), ('name', 'roms/openbios'),
> ('subpath', 'roms/openbios'), ('nobranch', '1'), ('lfs', 'True'),
> ('bareclone', '1')])] comparing ['git', 'sourceware.org',
> '/git/glibc.git', '', '', OrderedDict()] to ['https',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/openbios.git', '',
> '', OrderedDict([('protocol', 'https'), ('name', 'roms/openbios'),
> ('subpath', 'roms/openbios'), ('nobranch', '1'), ('lfs', 'True'),
> ('bareclone', '1')])] comparing ['git', 'sourceware.org',
> '/git/binutils-gdb.git', '', '', OrderedDict()] to ['https',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: Trying Upstream
> DEBUG: Fetcher accessed the network with the command LANG=3DC git -c
> gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall cl=
one
> --bare --mirror https://gitlab.com/qemu-project/openbios.git
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.openbio=
s.git
> --progress
> DEBUG: Running export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; LANG=3DC git -c gc.autoDetach=3Dfalse -c
> core.pager=3Dcat -c safe.bareRepository=3Dall clone --bare --mirror
> https://gitlab.com/qemu-project/openbios.git
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.openbio=
s.git
> --progress
> Cloning into bare repository
> '/home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.openbi=
os.git'...
>=20
> remote: Enumerating objects: 15049, done.
> remote: Counting objects: 100% (36/36), done.
> remote: Compressing objects: 100% (34/34), done.
> remote: Total 15049 (delta 1), reused 36 (delta 1), pack-reused 15013
> (from 1)
> Receiving objects: 100% (15049/15049), 3.00 MiB | 54.84 MiB/s, done.
> Resolving deltas: 100% (11131/11131), done.
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall log --pretty=3Doneline -n 1
> af97fd7af5e7c18f591a7b987291d3db4ffb28b5 -- 2> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.openbio=
s.git
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall log --pretty=3Doneline -n 1
> af97fd7af5e7c18f591a7b987291d3db4ffb28b5 -- 2> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.openbio=
s.git
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall log --pretty=3Doneline -n 1
> af97fd7af5e7c18f591a7b987291d3db4ffb28b5 -- 2> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.openbio=
s.git
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall log --pretty=3Doneline -n 1
> af97fd7af5e7c18f591a7b987291d3db4ffb28b5 -- 2> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.openbio=
s.git
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall log --pretty=3Doneline -n 1
> af97fd7af5e7c18f591a7b987291d3db4ffb28b5 -- 2> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.openbio=
s.git
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall show
> af97fd7af5e7c18f591a7b987291d3db4ffb28b5:.gitmodules' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.openbio=
s.git
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall show
> af97fd7af5e7c18f591a7b987291d3db4ffb28b5:.gitmodules' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.openbio=
s.git
>=20
> DEBUG: Trying PREMIRRORS
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/qemu-palcode.git',
> '', '', OrderedDict([('protocol', 'https'), ('name', 'roms/qemu-palcode')=
,
> ('subpath', 'roms/qemu-palcode'), ('nobranch', '1'), ('lfs', 'True'),
> ('bareclone', '1')])] comparing ['git', 'sourceware.org',
> '/git/glibc.git', '', '', OrderedDict()] to ['https',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/qemu-palcode.git',
> '', '', OrderedDict([('protocol', 'https'), ('name', 'roms/qemu-palcode')=
,
> ('subpath', 'roms/qemu-palcode'), ('nobranch', '1'), ('lfs', 'True'),
> ('bareclone', '1')])] comparing ['git', 'sourceware.org',
> '/git/binutils-gdb.git', '', '', OrderedDict()] to ['https',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: Trying Upstream
> DEBUG: Fetcher accessed the network with the command LANG=3DC git -c
> gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall cl=
one
> --bare --mirror https://gitlab.com/qemu-project/qemu-palcode.git
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.qemu-pa=
lcode.git
> --progress
> DEBUG: Running export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; LANG=3DC git -c gc.autoDetach=3Dfalse -c
> core.pager=3Dcat -c safe.bareRepository=3Dall clone --bare --mirror
> https://gitlab.com/qemu-project/qemu-palcode.git
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.qemu-pa=
lcode.git
> --progress
> Cloning into bare repository
> '/home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.qemu-p=
alcode.git'...
>=20
> remote: Enumerating objects: 323, done.
> remote: Total 323 (delta 0), reused 0 (delta 0), pack-reused 323 (from 1)
> Receiving objects: 100% (323/323), 155.85 KiB | 22.26 MiB/s, done.
> Resolving deltas: 100% (207/207), done.
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall log --pretty=3Doneline -n 1
> 99d9b4dcf27d7fbcbadab71bdc88ef6531baf6bf -- 2> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.qemu-pa=
lcode.git
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall log --pretty=3Doneline -n 1
> 99d9b4dcf27d7fbcbadab71bdc88ef6531baf6bf -- 2> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.qemu-pa=
lcode.git
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall log --pretty=3Doneline -n 1
> 99d9b4dcf27d7fbcbadab71bdc88ef6531baf6bf -- 2> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.qemu-pa=
lcode.git
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall log --pretty=3Doneline -n 1
> 99d9b4dcf27d7fbcbadab71bdc88ef6531baf6bf -- 2> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.qemu-pa=
lcode.git
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall log --pretty=3Doneline -n 1
> 99d9b4dcf27d7fbcbadab71bdc88ef6531baf6bf -- 2> /dev/null | wc -l' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.qemu-pa=
lcode.git
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall show
> 99d9b4dcf27d7fbcbadab71bdc88ef6531baf6bf:.gitmodules' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.qemu-pa=
lcode.git
>=20
> DEBUG: Running 'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dc=
at -c
> safe.bareRepository=3Dall show
> 99d9b4dcf27d7fbcbadab71bdc88ef6531baf6bf:.gitmodules' in
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.qemu-pa=
lcode.git
>=20
> DEBUG: Trying PREMIRRORS
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['git', 'sourceware.org', '/git/glibc.git', '', '',
> OrderedDict()] to ['https', 'downloads.yoctoproject.org',
> '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['git', 'sourceware.org', '/git/binutils-gdb.git', '', '',
> OrderedDict()] to ['https', 'downloads.yoctoproject.org',
> '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: Trying Upstream
> DEBUG: Fetcher accessed the network with the command LANG=3DC git -c
> gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall cl=
one
> --bare --mirror https://gitlab.com/qemu-project/u-boot.git
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.u-boot.=
git
> --progress
> DEBUG: Running export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; LANG=3DC git -c gc.autoDetach=3Dfalse -c
> core.pager=3Dcat -c safe.bareRepository=3Dall clone --bare --mirror
> https://gitlab.com/qemu-project/u-boot.git
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.u-boot.=
git
> --progress
> Cloning into bare repository
> '/home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.u-boot=
.git'...
>=20
> fatal: could not read Username for 'https://gitlab.com': No such device o=
r
> address
> WARNING: Failed to fetch URL
> gitsm://gitlab.com/qemu-project/u-boot.git;protocol=3Dhttps;name=3Droms/u=
-boot;subpath=3Droms/u-boot;nobranch=3D1;lfs=3DTrue;bareclone=3D1;nobranch=
=3D1,
> attempting MIRRORS if available
> DEBUG: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; LANG=3DC git -c gc.autoDetach=3Dfalse
> -c core.pager=3Dcat -c safe.bareRepository=3Dall clone --bare --mirror
> https://gitlab.com/qemu-project/u-boot.git
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.u-boot.=
git
> --progress failed with exit code 128, see logfile for output
> DEBUG: Trying MIRRORS
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'snapshot.debian.org',
> '/archive/debian/20180310T215105Z/pool', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'snapshot.debian.org',
> '/archive/debian-archive/20120328T092752Z/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'snapshot.debian.org',
> '/archive/debian-archive/20110127T084257Z/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'snapshot.debian.org',
> '/archive/debian-archive/20090802T004153Z/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.de.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.au.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.cl.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.hr.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.fi.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.hk.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.hu.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.ie.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.it.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.jp.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.no.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.pl.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.ro.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.si.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.es.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.se.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.tr.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['https', 'ftp.gnu.org', '/gnu', '', '', OrderedDict()] to
> ['https', 'mirrors.kernel.org', '/gnu', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['https', 'cdn.kernel.org', '/pub', '', '', OrderedDict()] to
> ['http', 'www.kernel.org', '/pub', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '', OrderedDict()=
]
> to ['ftp', 'ftp.gnupg.org', '/gcrypt', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '', OrderedDict()=
]
> to ['ftp', 'ftp.franken.de', '/pub/crypt/mirror/ftp.gnupg.org/gcrypt', ''=
,
> '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '', OrderedDict()=
]
> to ['ftp', 'mirrors.dotsrc.org', '/gcrypt', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', '', OrderedDict()=
]
> to ['ftp', 'ftp.fu-berlin.de', '/tex/CTAN', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', '', OrderedDict()=
]
> to ['http', 'sunsite.sut.ac.jp', '/pub/archives/ctan/', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', '', OrderedDict()=
]
> to ['http', 'ctan.unsw.edu.au', '/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['ftp', 'ftp.gnutls.org', '/gcrypt/gnutls', '', '',
> OrderedDict()] to ['https', 'www.gnupg.org', '/ftp/gcrypt/gnutls', '', ''=
,
> OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['http', 'ftp.info-zip.org', '/pub/infozip/src/', '', '',
> OrderedDict()] to ['ftp', 'sunsite.icm.edu.pl',
> '/pub/unix/archiving/info-zip/src/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['http', 'www.mirrorservice.org',
> '/sites/lsof.itap.purdue.edu/pub/tools/unix/lsof/', '', '', OrderedDict()=
]
> to ['http', 'www.mirrorservice.org',
> '/sites/lsof.itap.purdue.edu/pub/tools/unix/lsof/OLD/', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['https', 'archive.apache.org', '/dist', '', '', OrderedDict()]
> to ['http', 'www.us.apache.org', '/dist', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['https', 'archive.apache.org', '/dist', '', '', OrderedDict()]
> to ['http', 'archive.apache.org', '/dist', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['http', 'downloads.sourceforge.net', '/watchdog/', '', '',
> OrderedDict()] to ['http', 'fossies.org', '/linux/misc/', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['https', 'download.savannah.gnu.org', '/releases', '', '',
> OrderedDict()] to ['http', 'download-mirror.savannah.gnu.org',
> '/releases', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['https', 'download.savannah.nongnu.org', '/releases', '', '',
> OrderedDict()] to ['http', 'download-mirror.savannah.nongnu.org',
> '/releases', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['ftp', 'sourceware.org', '/pub', '', '', OrderedDict()] to
> ['http', 'mirrors.kernel.org', '/sourceware', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['ftp', 'sourceware.org', '/pub', '', '', OrderedDict()] to
> ['http', 'gd.tuwien.ac.at', '/gnu/sourceware', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['ftp', 'sourceware.org', '/pub', '', '', OrderedDict()] to
> ['http', 'ftp.gwdg.de', '/pub/linux/sources.redhat.com/sourceware', '',
> '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['gitsm', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url
> gitsm://gitlab.com/qemu-project/u-boot.git;protocol=3Dhttps;name=3Droms/u=
-boot;subpath=3Droms/u-boot;nobranch=3D1;lfs=3DTrue;bareclone=3D1;nobranch=
=3D1
> returning
> http://downloads.yoctoproject.org/mirror/sources/git2_gitlab.com.qemu-pro=
ject.u-boot.git.tar.gz
>=20
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'snapshot.debian.org',
> '/archive/debian/20180310T215105Z/pool', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'snapshot.debian.org',
> '/archive/debian-archive/20120328T092752Z/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'snapshot.debian.org',
> '/archive/debian-archive/20110127T084257Z/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'snapshot.debian.org',
> '/archive/debian-archive/20090802T004153Z/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.de.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.au.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.cl.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.hr.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.fi.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.hk.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.hu.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.ie.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.it.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.jp.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.no.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.pl.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.ro.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.si.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.es.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.se.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.tr.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'ftp.gnu.org', '/gnu', '', '',
> OrderedDict()] to ['https', 'mirrors.kernel.org', '/gnu', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'cdn.kernel.org', '/pub', '', '',
> OrderedDict()] to ['http', 'www.kernel.org', '/pub', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', ''=
,
> OrderedDict()] to ['ftp', 'ftp.gnupg.org', '/gcrypt', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', ''=
,
> OrderedDict()] to ['ftp', 'ftp.franken.de',
> '/pub/crypt/mirror/ftp.gnupg.org/gcrypt', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', ''=
,
> OrderedDict()] to ['ftp', 'mirrors.dotsrc.org', '/gcrypt', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', ''=
,
> OrderedDict()] to ['ftp', 'ftp.fu-berlin.de', '/tex/CTAN', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', ''=
,
> OrderedDict()] to ['http', 'sunsite.sut.ac.jp', '/pub/archives/ctan/', ''=
,
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', ''=
,
> OrderedDict()] to ['http', 'ctan.unsw.edu.au', '/', '', '', OrderedDict()=
]
>=20
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', 'ftp.gnutls.org', '/gcrypt/gnutls', '',
> '', OrderedDict()] to ['https', 'www.gnupg.org', '/ftp/gcrypt/gnutls', ''=
,
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.info-zip.org', '/pub/infozip/src/'=
,
> '', '', OrderedDict()] to ['ftp', 'sunsite.icm.edu.pl',
> '/pub/unix/archiving/info-zip/src/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'www.mirrorservice.org',
> '/sites/lsof.itap.purdue.edu/pub/tools/unix/lsof/', '',
> '', OrderedDict()] to ['http', 'www.mirrorservice.org',
> '/sites/lsof.itap.purdue.edu/pub/tools/unix/lsof/OLD/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'archive.apache.org', '/dist', '', '',
> OrderedDict()] to ['http', 'www.us.apache.org', '/dist', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'archive.apache.org', '/dist', '', '',
> OrderedDict()] to ['http', 'archive.apache.org', '/dist', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'downloads.sourceforge.net',
> '/watchdog/', '', '', OrderedDict()] to ['http', 'fossies.org',
> '/linux/misc/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'download.savannah.gnu.org',
> '/releases', '', '', OrderedDict()] to ['http',
> 'download-mirror.savannah.gnu.org', '/releases', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'download.savannah.nongnu.org',
> '/releases', '', '', OrderedDict()] to ['http',
> 'download-mirror.savannah.nongnu.org', '/releases', '', '', OrderedDict()=
]
>=20
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', 'sourceware.org', '/pub', '', '',
> OrderedDict()] to ['http', 'mirrors.kernel.org', '/sourceware', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', 'sourceware.org', '/pub', '', '',
> OrderedDict()] to ['http', 'gd.tuwien.ac.at', '/gnu/sourceware', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', 'sourceware.org', '/pub', '', '',
> OrderedDict()] to ['http', 'ftp.gwdg.de',
> '/pub/linux/sources.redhat.com/sourceware', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['git', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['https?', '.*', '/.*', '', '', OrderedDict()] t=
o
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['npm', '.*', '/?.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['git', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['gitsm', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['https?', '.*', '/.*', '', '', OrderedDict()] t=
o
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url
> http://downloads.yoctoproject.org/mirror/sources/git2_gitlab.com.qemu-pro=
ject.u-boot.git.tar.gz
> returning
> http://sources.openembedded.org/git2_gitlab.com.qemu-project.u-boot.git.t=
ar.gz
>=20
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'snapshot.debian.org',
> '/archive/debian/20180310T215105Z/pool', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'snapshot.debian.org',
> '/archive/debian-archive/20120328T092752Z/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'snapshot.debian.org',
> '/archive/debian-archive/20110127T084257Z/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'snapshot.debian.org',
> '/archive/debian-archive/20090802T004153Z/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.de.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.au.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.cl.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.hr.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.fi.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.hk.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.hu.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.ie.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.it.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.jp.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.no.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.pl.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.ro.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.si.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.es.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.se.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.tr.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['https', 'ftp.gnu.org', '/gnu', '', '', OrderedDict()] to
> ['https', 'mirrors.kernel.org', '/gnu', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['https', 'cdn.kernel.org', '/pub', '', '', OrderedDict()] to
> ['http', 'www.kernel.org', '/pub', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '', OrderedDict()=
]
> to ['ftp', 'ftp.gnupg.org', '/gcrypt', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '', OrderedDict()=
]
> to ['ftp', 'ftp.franken.de', '/pub/crypt/mirror/ftp.gnupg.org/gcrypt', ''=
,
> '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '', OrderedDict()=
]
> to ['ftp', 'mirrors.dotsrc.org', '/gcrypt', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', '', OrderedDict()=
]
> to ['ftp', 'ftp.fu-berlin.de', '/tex/CTAN', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', '', OrderedDict()=
]
> to ['http', 'sunsite.sut.ac.jp', '/pub/archives/ctan/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', '', OrderedDict()=
]
> to ['http', 'ctan.unsw.edu.au', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['ftp', 'ftp.gnutls.org', '/gcrypt/gnutls', '', '',
> OrderedDict()] to ['https', 'www.gnupg.org', '/ftp/gcrypt/gnutls', '', ''=
,
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.info-zip.org', '/pub/infozip/src/', '', '',
> OrderedDict()] to ['ftp', 'sunsite.icm.edu.pl',
> '/pub/unix/archiving/info-zip/src/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'www.mirrorservice.org',
> '/sites/lsof.itap.purdue.edu/pub/tools/unix/lsof/', '', '', OrderedDict()=
]
> to ['http', 'www.mirrorservice.org',
> '/sites/lsof.itap.purdue.edu/pub/tools/unix/lsof/OLD/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['https', 'archive.apache.org', '/dist', '', '', OrderedDict()]
> to ['http', 'www.us.apache.org', '/dist', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['https', 'archive.apache.org', '/dist', '', '', OrderedDict()]
> to ['http', 'archive.apache.org', '/dist',
> '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'downloads.sourceforge.net', '/watchdog/', '', '',
> OrderedDict()] to ['http', 'fossies.org', '/linux/misc/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['https', 'download.savannah.gnu.org', '/releases', '', '',
> OrderedDict()] to ['http', 'download-mirror.savannah.gnu.org',
> '/releases', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['https', 'download.savannah.nongnu.org', '/releases', '', '',
> OrderedDict()] to ['http', 'download-mirror.savannah.nongnu.org',
> '/releases', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['ftp', 'sourceware.org', '/pub', '', '', OrderedDict()] to
> ['http', 'mirrors.kernel.org', '/sourceware', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['ftp', 'sourceware.org', '/pub', '', '', OrderedDict()] to
> ['http', 'gd.tuwien.ac.at', '/gnu/sourceware',
> '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['ftp', 'sourceware.org', '/pub', '', '', OrderedDict()] to
> ['http', 'ftp.gwdg.de', '/pub/linux/sources.redhat.com/sourceware', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['https?', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url
> http://sources.openembedded.org/git2_gitlab.com.qemu-project.u-boot.git.t=
ar.gz
> returning
> http://downloads.yoctoproject.org/mirror/sources/git2_gitlab.com.qemu-pro=
ject.u-boot.git.tar.gz
>=20
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['npm', '.*', '/?.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/',
> '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['gitsm', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['npm', '.*', '/?.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['https', 'search.cpan.org', '/CPAN', '', '', OrderedDict()] to
> ['https', 'cpan.metacpan.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['https?', 'downloads.yoctoproject.org', '/releases/uninative/'=
,
> '', '', OrderedDict()] to ['https', 'mirrors.kernel.org',
> '/yocto/uninative/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['https?', 'downloads.yoctoproject.org', '/mirror/sources/', ''=
,
> '', OrderedDict()] to ['https', 'mirrors.kernel.org', '/yocto-sources/',
> '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['git', 'salsa.debian.org', '/.*', '', '', OrderedDict()] to
> ['git', 'salsa.debian.org', '/PATH', '', '', OrderedDict([('protocol',
> 'https')])]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['git', 'git.gnome.org', '/.*', '', '', OrderedDict()] to
> ['git', 'gitlab.gnome.org', '/GNOME/PATH', '', '',
> OrderedDict([('protocol', 'https')])]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['git', 'git.infradead.org', '/.*', '', '', OrderedDict()] to
> ['git', 'git.infraroot.at', '/PATH', '', '',
> OrderedDict([('protocol', 'https')])]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['git', 'HOST',
> '/PATH', '', '', OrderedDict([('protocol', 'https')])]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]
> comparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['git', 'HOST',
> '/git/PATH', '', '', OrderedDict([('protocol', 'https')])]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['npm', '.*', '/?.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/',
> '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'search.cpan.org', '/CPAN', '', '',
> OrderedDict()] to ['https', 'cpan.metacpan.org', '/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['https?', 'downloads.yoctoproject.org',
> '/releases/uninative/', '', '', OrderedDict()] to ['https',
> 'mirrors.kernel.org', '/yocto/uninative/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['https?', 'downloads.yoctoproject.org',
> '/mirror/sources/', '', '', OrderedDict()] to ['https',
> 'mirrors.kernel.org', '/yocto-sources/', '', '', OrderedDict()]
> DEBUG: For url
> http://downloads.yoctoproject.org/mirror/sources/git2_gitlab.com.qemu-pro=
ject.u-boot.git.tar.gz
> returning
> https://mirrors.kernel.org/yocto-sources/git2_gitlab.com.qemu-project.u-b=
oot.git.tar.gz
>=20
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'snapshot.debian.org',
> '/archive/debian/20180310T215105Z/pool', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'snapshot.debian.org',
> '/archive/debian-archive/20120328T092752Z/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'snapshot.debian.org',
> '/archive/debian-archive/20110127T084257Z/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'snapshot.debian.org',
> '/archive/debian-archive/20090802T004153Z/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.de.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.au.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.cl.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.hr.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.fi.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.hk.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.hu.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.ie.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.it.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.jp.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.no.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.pl.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.ro.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.si.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.es.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.se.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.tr.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'ftp.gnu.org', '/gnu', '', '',
> OrderedDict()] to ['https', 'mirrors.kernel.org', '/gnu', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'cdn.kernel.org', '/pub', '', '',
> OrderedDict()] to ['http', 'www.kernel.org', '/pub', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', ''=
,
> OrderedDict()] to ['ftp', 'ftp.gnupg.org', '/gcrypt', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', ''=
,
> OrderedDict()] to ['ftp', 'ftp.franken.de',
> '/pub/crypt/mirror/ftp.gnupg.org/gcrypt', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', ''=
,
> OrderedDict()] to ['ftp', 'mirrors.dotsrc.org',
> '/gcrypt', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', ''=
,
> OrderedDict()] to ['ftp', 'ftp.fu-berlin.de', '/tex/CTAN', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', ''=
,
> OrderedDict()] to ['http', 'sunsite.sut.ac.jp',
> '/pub/archives/ctan/', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', ''=
,
> OrderedDict()] to ['http', 'ctan.unsw.edu.au', '/', '', '', OrderedDict()=
]
>=20
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', 'ftp.gnutls.org', '/gcrypt/gnutls', '',
> '', OrderedDict()] to ['https', 'www.gnupg.org', '/ftp/gcrypt/gnutls', ''=
,
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.info-zip.org', '/pub/infozip/src/'=
,
> '', '', OrderedDict()] to ['ftp', 'sunsite.icm.edu.pl',
> '/pub/unix/archiving/info-zip/src/', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'www.mirrorservice.org',
> '/sites/lsof.itap.purdue.edu/pub/tools/unix/lsof/', '', '', OrderedDict()=
]
> to ['http', 'www.mirrorservice.org',
> '/sites/lsof.itap.purdue.edu/pub/tools/unix/lsof/OLD/', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'archive.apache.org', '/dist', '', '',
> OrderedDict()] to ['http', 'www.us.apache.org', '/dist', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'archive.apache.org', '/dist', '', '',
> OrderedDict()] to ['http', 'archive.apache.org',
> '/dist', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'downloads.sourceforge.net',
> '/watchdog/', '', '', OrderedDict()] to ['http', 'fossies.org',
> '/linux/misc/', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'download.savannah.gnu.org',
> '/releases', '', '', OrderedDict()] to ['http',
> 'download-mirror.savannah.gnu.org', '/releases', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'download.savannah.nongnu.org',
> '/releases', '', '', OrderedDict()] to ['http',
> 'download-mirror.savannah.nongnu.org', '/releases', '', '', OrderedDict()=
]
>=20
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', 'sourceware.org', '/pub', '', '',
> OrderedDict()] to ['http', 'mirrors.kernel.org', '/sourceware', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', 'sourceware.org', '/pub', '', '',
> OrderedDict()] to ['http', 'gd.tuwien.ac.at', '/gnu/sourceware', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', 'sourceware.org', '/pub', '', '',
> OrderedDict()] to ['http', 'ftp.gwdg.de',
> '/pub/linux/sources.redhat.com/sourceware', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['git', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['https?', '.*', '/.*', '', '', OrderedDict()] t=
o
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url
> https://mirrors.kernel.org/yocto-sources/git2_gitlab.com.qemu-project.u-b=
oot.git.tar.gz
> returning
> http://downloads.yoctoproject.org/mirror/sources/git2_gitlab.com.qemu-pro=
ject.u-boot.git.tar.gz
>=20
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['npm', '.*', '/?.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['git', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['gitsm', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['https?', '.*', '/.*', '', '', OrderedDict()] t=
o
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url
> https://mirrors.kernel.org/yocto-sources/git2_gitlab.com.qemu-project.u-b=
oot.git.tar.gz
> returning
> http://sources.openembedded.org/git2_gitlab.com.qemu-project.u-boot.git.t=
ar.gz
>=20
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['npm', '.*', '/?.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'search.cpan.org', '/CPAN', '', '',
> OrderedDict()] to ['https', 'cpan.metacpan.org', '/', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['https?', 'downloads.yoctoproject.org',
> '/releases/uninative/', '', '', OrderedDict()] to ['https',
> 'mirrors.kernel.org', '/yocto/uninative/', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['git', 'salsa.debian.org', '/.*', '', '',
> OrderedDict()] to ['git', 'salsa.debian.org', '/PATH',
> '', '', OrderedDict([('protocol', 'https')])]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['git', 'git.gnome.org', '/.*', '', '',
> OrderedDict()] to ['git', 'gitlab.gnome.org', '/GNOME/PATH', '', '',
> OrderedDict([('protocol', 'https')])]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['git', 'git.infradead.org', '/.*', '', '',
> OrderedDict()] to ['git', 'git.infraroot.at', '/PATH', '', '',
> OrderedDict([('protocol', 'https')])]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['git', '.*', '/.*', '', '', OrderedDict()] to
> ['git', 'HOST', '/PATH', '', '', OrderedDict([('protocol', 'https')])]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['git', '.*', '/.*', '', '', OrderedDict()] to
> ['git', 'HOST', '/git/PATH', '', '', OrderedDict([('protocol', 'https')])=
]
>=20
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['git', 'salsa.debian.org', '/.*', '', '',
> OrderedDict()] to ['git', 'salsa.debian.org', '/PATH', '', '',
> OrderedDict([('protocol', 'https')])]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['git', 'git.gnome.org', '/.*', '', '',
> OrderedDict()] to ['git', 'gitlab.gnome.org', '/GNOME/PATH', '', '',
> OrderedDict([('protocol', 'https')])]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['git', 'git.infradead.org', '/.*', '', '',
> OrderedDict()] to ['git', 'git.infraroot.at',
> '/PATH', '', '', OrderedDict([('protocol', 'https')])]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['git', '.*', '/.*', '', '', OrderedDict()] to
> ['git', 'HOST', '/PATH', '', '', OrderedDict([('protocol', 'https')])]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',
> OrderedDict()] comparing ['git', '.*', '/.*', '', '', OrderedDict()] to
> ['git', 'HOST', '/git/PATH', '', '', OrderedDict([('protocol', 'https')])=
]
>=20
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['https?',
> '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['npm', '.*', '/?.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['gitsm', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url
> gitsm://gitlab.com/qemu-project/u-boot.git;protocol=3Dhttps;name=3Droms/u=
-boot;subpath=3Droms/u-boot;nobranch=3D1;lfs=3DTrue;bareclone=3D1;nobranch=
=3D1
> returning
> http://sources.openembedded.org/git2_gitlab.com.qemu-project.u-boot.git.t=
ar.gz
>=20
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['https?',
> '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['npm', '.*', '/?.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['https', 'search.cpan.org', '/CPAN', '', '', OrderedDict()] to
> ['https', 'cpan.metacpan.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['https?',
> 'downloads.yoctoproject.org', '/releases/uninative/', '', '',
> OrderedDict()] to ['https', 'mirrors.kernel.org', '/yocto/uninative/', ''=
,
> '', OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['https?',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> to ['https', 'mirrors.kernel.org', '/yocto-sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['git', 'salsa.debian.org', '/.*', '', '', OrderedDict()] to
> ['git', 'salsa.debian.org', '/PATH', '', '', OrderedDict([('protocol',
> 'https')])]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['git', 'git.gnome.org', '/.*', '', '', OrderedDict()] to
> ['git', 'gitlab.gnome.org', '/GNOME/PATH', '', '',
> OrderedDict([('protocol', 'https')])]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['git', 'git.infradead.org', '/.*', '', '', OrderedDict()] to
> ['git', 'git.infraroot.at', '/PATH', '', '', OrderedDict([('protocol',
> 'https')])]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['git', 'HOST',
> '/PATH', '', '', OrderedDict([('protocol', 'https')])]
> DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
,
> OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',
> 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]
> comparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['git', 'HOST',
> '/git/PATH', '', '', OrderedDict([('protocol', 'https')])]
> DEBUG: Fetching
> http://downloads.yoctoproject.org/mirror/sources/git2_gitlab.com.qemu-pro=
ject.u-boot.git.tar.gz
> using command '/usr/bin/env wget -t 2 -T 100 -O
> /home/nic/ocs-app/Os/build/downloads/git2_gitlab.com.qemu-project.u-boot.=
git.tar.gz.tmp
> -P /home/nic/ocs-app/Os/build/downloads
> 'http://downloads.yoctoproject.org/mirror/sources/git2_gitlab.com.qemu-pr=
oject.u-boot.git.tar.gz''
>=20
> DEBUG: Fetcher accessed the network with the command /usr/bin/env wget -t
> 2 -T 100 -O
> /home/nic/ocs-app/Os/build/downloads/git2_gitlab.com.qemu-project.u-boot.=
git.tar.gz.tmp
> -P /home/nic/ocs-app/Os/build/downloads
> 'http://downloads.yoctoproject.org/mirror/sources/git2_gitlab.com.qemu-pr=
oject.u-boot.git.tar.gz'
>=20
> DEBUG: Running export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; /usr/bin/env wget -t 2 -T 100 -O
> /home/nic/ocs-app/Os/build/downloads/git2_gitlab.com.qemu-project.u-boot.=
git.tar.gz.tmp
> -P /home/nic/ocs-app/Os/build/downloads
> 'http://downloads.yoctoproject.org/mirror/sources/git2_gitlab.com.qemu-pr=
oject.u-boot.git.tar.gz'
> --progress=3Ddot -v
> --2025-09-29 09:34:57--=20
> http://downloads.yoctoproject.org/mirror/sources/git2_gitlab.com.qemu-pro=
ject.u-boot.git.tar.gz
>=20
> Resolving downloads.yoctoproject.org (downloads.yoctoproject.org)...
> 37.27.135.249, 2a01:4f9:3070:3985::2
> Connecting to downloads.yoctoproject.org
> (downloads.yoctoproject.org)|37.27.135.249|:80... connected.
> HTTP request sent, awaiting response... 404 Not Found
> 2025-09-29 09:34:57 ERROR 404: Not Found.
> DEBUG: Mirror fetch failure for url
> http://downloads.yoctoproject.org/mirror/sources/git2_gitlab.com.qemu-pro=
ject.u-boot.git.tar.gz
> (original url:
> gitsm://gitlab.com/qemu-project/u-boot.git;protocol=3Dhttps;name=3Droms/u=
-boot;subpath=3Droms/u-boot;nobranch=3D1;lfs=3DTrue;bareclone=3D1;nobranch=
=3D1)
>=20
> DEBUG: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; /usr/bin/env wget -t 2 -T 100 -O
> /home/nic/ocs-app/Os/build/downloads/git2_gitlab.com.qemu-project.u-boot.=
git.tar.gz.tmp
> -P /home/nic/ocs-app/Os/build/downloads
> 'http://downloads.yoctoproject.org/mirror/sources/git2_gitlab.com.qemu-pr=
oject.u-boot.git.tar.gz'
> --progress=3Ddot -v
> failed with exit code 8, see logfile for output
> DEBUG: Fetching
> http://sources.openembedded.org/git2_gitlab.com.qemu-project.u-boot.git.t=
ar.gz
> using command '/usr/bin/env wget -t 2 -T 100 -O
> /home/nic/ocs-app/Os/build/downloads/git2_gitlab.com.qemu-project.u-boot.=
git.tar.gz.tmp
> -P /home/nic/ocs-app/Os/build/downloads
> 'http://sources.openembedded.org/git2_gitlab.com.qemu-project.u-boot.git.=
tar.gz''
>=20
> DEBUG: Fetcher accessed the network with the command /usr/bin/env wget -t
> 2 -T 100 -O
> /home/nic/ocs-app/Os/build/downloads/git2_gitlab.com.qemu-project.u-boot.=
git.tar.gz.tmp
> -P /home/nic/ocs-app/Os/build/downloads
> 'http://sources.openembedded.org/git2_gitlab.com.qemu-project.u-boot.git.=
tar.gz'
>=20
> DEBUG: Running export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; /usr/bin/env wget -t 2 -T 100 -O
> /home/nic/ocs-app/Os/build/downloads/git2_gitlab.com.qemu-project.u-boot.=
git.tar.gz.tmp
> -P /home/nic/ocs-app/Os/build/downloads
> 'http://sources.openembedded.org/git2_gitlab.com.qemu-project.u-boot.git.=
tar.gz'
> --progress=3Ddot -v
> --2025-09-29 09:34:57--=20
> http://sources.openembedded.org/git2_gitlab.com.qemu-project.u-boot.git.t=
ar.gz
>=20
> Resolving sources.openembedded.org (sources.openembedded.org)... failed:
> No address associated with hostname.
> wget: unable to resolve host address =E2=80=98sources.openembedded.org=E2=
=80=99
> DEBUG: Mirror fetch failure for url
> http://sources.openembedded.org/git2_gitlab.com.qemu-project.u-boot.git.t=
ar.gz
> (original url:
> gitsm://gitlab.com/qemu-project/u-boot.git;protocol=3Dhttps;name=3Droms/u=
-boot;subpath=3Droms/u-boot;nobranch=3D1;lfs=3DTrue;bareclone=3D1;nobranch=
=3D1)
>=20
> DEBUG: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; /usr/bin/env wget -t 2 -T 100 -O
> /home/nic/ocs-app/Os/build/downloads/git2_gitlab.com.qemu-project.u-boot.=
git.tar.gz.tmp
> -P /home/nic/ocs-app/Os/build/downloads
> 'http://sources.openembedded.org/git2_gitlab.com.qemu-project.u-boot.git.=
tar.gz'
> --progress=3Ddot -v failed with exit
> code 4, see logfile for output
> DEBUG: Fetching
> https://mirrors.kernel.org/yocto-sources/git2_gitlab.com.qemu-project.u-b=
oot.git.tar.gz
> using command '/usr/bin/env wget -t 2 -T 100 -O
> /home/nic/ocs-app/Os/build/downloads/git2_gitlab.com.qemu-project.u-boot.=
git.tar.gz.tmp
> -P
> /home/nic/ocs-app/Os/build/downloads
> 'https://mirrors.kernel.org/yocto-sources/git2_gitlab.com.qemu-project.u-=
boot.git.tar.gz''
>=20
> DEBUG: Fetcher accessed the network with the command /usr/bin/env wget -t
> 2 -T 100 -O
> /home/nic/ocs-app/Os/build/downloads/git2_gitlab.com.qemu-project.u-boot.=
git.tar.gz.tmp
> -P /home/nic/ocs-app/Os/build/downloads
> 'https://mirrors.kernel.org/yocto-sources/git2_gitlab.com.qemu-project.u-=
boot.git.tar.gz'
>=20
> DEBUG: Running export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; /usr/bin/env wget -t 2 -T 100 -O
> /home/nic/ocs-app/Os/build/downloads/git2_gitlab.com.qemu-project.u-boot.=
git.tar.gz.tmp
> -P /home/nic/ocs-app/Os/build/downloads
> 'https://mirrors.kernel.org/yocto-sources/git2_gitlab.com.qemu-project.u-=
boot.git.tar.gz'
> --progress=3Ddot -v
> --2025-09-29 09:34:57--=20
> https://mirrors.kernel.org/yocto-sources/git2_gitlab.com.qemu-project.u-b=
oot.git.tar.gz
>=20
> Resolving mirrors.kernel.org (mirrors.kernel.org)... 139.178.88.99,
> 2604:1380:45e3:2400::1
> Connecting to mirrors.kernel.org
> (mirrors.kernel.org)|139.178.88.99|:443... connected.
> HTTP request sent, awaiting response... 404 Not Found
> 2025-09-29 09:34:58 ERROR 404: Not Found.
> DEBUG: Mirror fetch failure for url
> https://mirrors.kernel.org/yocto-sources/git2_gitlab.com.qemu-project.u-b=
oot.git.tar.gz
> (original url:
> gitsm://gitlab.com/qemu-project/u-boot.git;protocol=3Dhttps;name=3Droms/u=
-boot;subpath=3Droms/u-boot;nobranch=3D1;lfs=3DTrue;bareclone=3D1;nobranch=
=3D1)
>=20
> DEBUG: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; /usr/bin/env wget -t 2 -T 100 -O
> /home/nic/ocs-app/Os/build/downloads/git2_gitlab.com.qemu-project.u-boot.=
git.tar.gz.tmp
> -P /home/nic/ocs-app/Os/build/downloads
> 'https://mirrors.kernel.org/yocto-sources/git2_gitlab.com.qemu-project.u-=
boot.git.tar.gz'
> --progress=3Ddot -v failed with exit code 8, see logfile for output
> ERROR: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; LANG=3DC git -c gc.autoDetach=3Dfalse
> -c core.pager=3Dcat -c safe.bareRepository=3Dall clone --bare --mirror
> https://gitlab.com/qemu-project/u-boot.git
> /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.u-boot.=
git
> --progress failed with exit code 128, see logfile for output
> ERROR: gitsm: submodule download failed: FetchError Fetcher failure for
> URL:
> 'gitsm://gitlab.com/qemu-project/u-boot.git;protocol=3Dhttps;name=3Droms/=
u-boot;subpath=3Droms/u-boot;nobranch=3D1;lfs=3DTrue;bareclone=3D1;nobranch=
=3D1'.
> Unable to fetch URL from
> any source.
> WARNING: Failed to fetch URL
> gitsm://github.com/Xilinx/qemu.git;protocol=3Dhttps;branch=3Dxlnx_rel_v20=
25.1;name=3Dqemu,
> attempting MIRRORS if available
> DEBUG: Fetcher failure for URL:
> 'gitsm://gitlab.com/qemu-project/u-boot.git;protocol=3Dhttps;name=3Droms/=
u-boot;subpath=3Droms/u-boot;nobranch=3D1;lfs=3DTrue;bareclone=3D1;nobranch=
=3D1'.
> Unable to fetch URL from any source.
> DEBUG: Trying MIRRORS
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['http', 'ftp.debian.org', '/debian/pool',
> '', '', OrderedDict()] to ['http',
> 'snapshot.debian.org', '/archive/debian/20180310T215105Z/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['http', 'ftp.debian.org', '/debian/pool',
> '', '', OrderedDict()] to ['http',
> 'snapshot.debian.org',
> '/archive/debian-archive/20120328T092752Z/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['http', 'ftp.debian.org', '/debian/pool',
> '', '', OrderedDict()] to ['http',
> 'snapshot.debian.org',
> '/archive/debian-archive/20110127T084257Z/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['http', 'ftp.debian.org', '/debian/pool',
> '', '', OrderedDict()] to ['http',
> 'snapshot.debian.org',
> '/archive/debian-archive/20090802T004153Z/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['http', 'ftp.debian.org', '/debian/pool',
> '', '', OrderedDict()] to ['http',
> 'ftp.de.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['http', 'ftp.debian.org', '/debian/pool',
> '', '', OrderedDict()] to ['http',
> 'ftp.au.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['http', 'ftp.debian.org', '/debian/pool',
> '', '', OrderedDict()] to ['http',
> 'ftp.cl.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['http', 'ftp.debian.org', '/debian/pool',
> '', '', OrderedDict()] to ['http',
> 'ftp.hr.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['http', 'ftp.debian.org', '/debian/pool',
> '', '', OrderedDict()] to ['http',
> 'ftp.fi.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['http', 'ftp.debian.org', '/debian/pool',
> '', '', OrderedDict()] to ['http',
> 'ftp.hk.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['http', 'ftp.debian.org', '/debian/pool',
> '', '', OrderedDict()] to ['http',
> 'ftp.hu.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['http', 'ftp.debian.org', '/debian/pool',
> '', '', OrderedDict()] to ['http',
> 'ftp.ie.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['http', 'ftp.debian.org', '/debian/pool',
> '', '', OrderedDict()] to ['http',
> 'ftp.it.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['http', 'ftp.debian.org', '/debian/pool',
> '', '', OrderedDict()] to ['http',
> 'ftp.jp.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['http', 'ftp.debian.org', '/debian/pool',
> '', '', OrderedDict()] to ['http',
> 'ftp.no.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['http', 'ftp.debian.org', '/debian/pool',
> '', '', OrderedDict()] to ['http',
> 'ftp.pl.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['http', 'ftp.debian.org', '/debian/pool',
> '', '', OrderedDict()] to ['http',
> 'ftp.ro.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['http', 'ftp.debian.org', '/debian/pool',
> '', '', OrderedDict()] to ['http',
> 'ftp.si.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['http', 'ftp.debian.org', '/debian/pool',
> '', '', OrderedDict()] to ['http',
> 'ftp.es.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['http', 'ftp.debian.org', '/debian/pool',
> '', '', OrderedDict()] to ['http',
> 'ftp.se.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['http', 'ftp.debian.org', '/debian/pool',
> '', '', OrderedDict()] to ['http',
> 'ftp.tr.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['https', 'ftp.gnu.org', '/gnu', '', '',
> OrderedDict()] to ['https', 'mirrors.kernel.org', '/gnu', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['https', 'cdn.kernel.org', '/pub', '', '',
> OrderedDict()] to ['http', 'www.kernel.org', '/pub', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['https', 'www.gnupg.org', '/ftp/gcrypt',
> '', '', OrderedDict()] to ['ftp', 'ftp.gnupg.org', '/gcrypt', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['https', 'www.gnupg.org', '/ftp/gcrypt',
> '', '', OrderedDict()] to ['ftp', 'ftp.franken.de',
> '/pub/crypt/mirror/ftp.gnupg.org/gcrypt', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['https', 'www.gnupg.org', '/ftp/gcrypt',
> '', '', OrderedDict()] to ['ftp', 'mirrors.dotsrc.org', '/gcrypt', '', ''=
,
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['ftp', 'dante.ctan.org', '/tex-archive',
> '', '', OrderedDict()] to ['ftp', 'ftp.fu-berlin.de', '/tex/CTAN', '', ''=
,
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['ftp', 'dante.ctan.org', '/tex-archive',
> '', '', OrderedDict()] to ['http', 'sunsite.sut.ac.jp',
> '/pub/archives/ctan/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['ftp', 'dante.ctan.org', '/tex-archive',
> '', '', OrderedDict()] to ['http', 'ctan.unsw.edu.au', '/', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['ftp', 'ftp.gnutls.org', '/gcrypt/gnutls',
> '', '', OrderedDict()] to ['https', 'www.gnupg.org', '/ftp/gcrypt/gnutls'=
,
> '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['http', 'ftp.info-zip.org',
> '/pub/infozip/src/', '', '', OrderedDict()] to ['ftp',
> 'sunsite.icm.edu.pl', '/pub/unix/archiving/info-zip/src/', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['http', 'www.mirrorservice.org',
> '/sites/lsof.itap.purdue.edu/pub/tools/unix/lsof/', '', '', OrderedDict()=
]
> to ['http', 'www.mirrorservice.org',
> '/sites/lsof.itap.purdue.edu/pub/tools/unix/lsof/OLD/', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['https', 'archive.apache.org', '/dist', ''=
,
> '', OrderedDict()] to ['http', 'www.us.apache.org', '/dist', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['https', 'archive.apache.org', '/dist', ''=
,
> '', OrderedDict()] to ['http', 'archive.apache.org', '/dist', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['http', 'downloads.sourceforge.net',
> '/watchdog/', '', '', OrderedDict()] to
> ['http', 'fossies.org', '/linux/misc/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['https', 'download.savannah.gnu.org',
> '/releases', '', '', OrderedDict()] to
> ['http', 'download-mirror.savannah.gnu.org', '/releases', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['https', 'download.savannah.nongnu.org',
> '/releases', '', '', OrderedDict()]
> to ['http', 'download-mirror.savannah.nongnu.org', '/releases', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['ftp', 'sourceware.org', '/pub', '', '',
> OrderedDict()] to ['http', 'mirrors.kernel.org', '/sourceware', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['ftp', 'sourceware.org', '/pub', '', '',
> OrderedDict()] to ['http', 'gd.tuwien.ac.at', '/gnu/sourceware', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['ftp', 'sourceware.org', '/pub', '', '',
> OrderedDict()] to ['http', 'ftp.gwdg.de',
> '/pub/linux/sources.redhat.com/sourceware', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['cvs', '.*', '/.*', '', '', OrderedDict()]
> to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['svn', '.*', '/.*', '', '', OrderedDict()]
> to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['git', '.*', '/.*', '', '', OrderedDict()]
> to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['gitsm', '.*', '/.*', '', '',
> OrderedDict()] to ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url
> gitsm://github.com/Xilinx/qemu.git;protocol=3Dhttps;branch=3Dxlnx_rel_v20=
25.1;name=3Dqemu
> returning
> http://downloads.yoctoproject.org/mirror/sources/git2_github.com.Xilinx.q=
emu.git.tar.gz
>=20
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'snapshot.debian.org',
> '/archive/debian/20180310T215105Z/pool', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'snapshot.debian.org',
> '/archive/debian-archive/20120328T092752Z/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'snapshot.debian.org',
> '/archive/debian-archive/20110127T084257Z/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'snapshot.debian.org',
> '/archive/debian-archive/20090802T004153Z/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.de.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.au.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.cl.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.hr.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.fi.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.hk.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.hu.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.ie.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.it.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.jp.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.no.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.pl.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.ro.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.si.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.es.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.se.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.tr.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'ftp.gnu.org', '/gnu', '', '',
> OrderedDict()] to ['https', 'mirrors.kernel.org', '/gnu', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'cdn.kernel.org', '/pub', '', '',
> OrderedDict()] to ['http', 'www.kernel.org', '/pub', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', ''=
,
> OrderedDict()] to ['ftp', 'ftp.gnupg.org', '/gcrypt', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', ''=
,
> OrderedDict()] to ['ftp', 'ftp.franken.de',
> '/pub/crypt/mirror/ftp.gnupg.org/gcrypt', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', ''=
,
> OrderedDict()] to ['ftp', 'mirrors.dotsrc.org',
> '/gcrypt', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', ''=
,
> OrderedDict()] to ['ftp', 'ftp.fu-berlin.de', '/tex/CTAN', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', ''=
,
> OrderedDict()] to ['http', 'sunsite.sut.ac.jp',
> '/pub/archives/ctan/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', ''=
,
> OrderedDict()] to ['http', 'ctan.unsw.edu.au', '/', '', '', OrderedDict()=
]
>=20
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', 'ftp.gnutls.org', '/gcrypt/gnutls', '',
> '', OrderedDict()] to ['https', 'www.gnupg.org', '/ftp/gcrypt/gnutls', ''=
,
> '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.info-zip.org', '/pub/infozip/src/'=
,
> '', '', OrderedDict()] to ['ftp', 'sunsite.icm.edu.pl',
> '/pub/unix/archiving/info-zip/src/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'www.mirrorservice.org',
> '/sites/lsof.itap.purdue.edu/pub/tools/unix/lsof/', '', '', OrderedDict()=
]
> to ['http', 'www.mirrorservice.org',
> '/sites/lsof.itap.purdue.edu/pub/tools/unix/lsof/OLD/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'archive.apache.org', '/dist', '', '',
> OrderedDict()] to ['http', 'www.us.apache.org', '/dist', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'archive.apache.org', '/dist', '', '',
> OrderedDict()] to ['http', 'archive.apache.org',
> '/dist', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'downloads.sourceforge.net',
> '/watchdog/', '', '', OrderedDict()] to ['http', 'fossies.org',
> '/linux/misc/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'download.savannah.gnu.org',
> '/releases', '', '', OrderedDict()] to ['http',
> 'download-mirror.savannah.gnu.org', '/releases', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'download.savannah.nongnu.org',
> '/releases', '', '', OrderedDict()] to ['http',
> 'download-mirror.savannah.nongnu.org', '/releases', '', '', OrderedDict()=
]
>=20
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', 'sourceware.org', '/pub', '', '',
> OrderedDict()] to ['http', 'mirrors.kernel.org', '/sourceware', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', 'sourceware.org', '/pub', '', '',
> OrderedDict()] to ['http', 'gd.tuwien.ac.at', '/gnu/sourceware', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', 'sourceware.org', '/pub', '', '',
> OrderedDict()] to ['http', 'ftp.gwdg.de',
> '/pub/linux/sources.redhat.com/sourceware', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['git', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['https?', '.*', '/.*', '', '', OrderedDict()] t=
o
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['npm', '.*', '/?.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['git', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['gitsm', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['https?', '.*', '/.*', '', '', OrderedDict()] t=
o
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url
> http://downloads.yoctoproject.org/mirror/sources/git2_github.com.Xilinx.q=
emu.git.tar.gz
> returning
> http://sources.openembedded.org/git2_github.com.Xilinx.qemu.git.tar.gz
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'snapshot.debian.org',
> '/archive/debian/20180310T215105Z/pool', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'snapshot.debian.org',
> '/archive/debian-archive/20120328T092752Z/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'snapshot.debian.org',
> '/archive/debian-archive/20110127T084257Z/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'snapshot.debian.org',
> '/archive/debian-archive/20090802T004153Z/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.de.debian.org', '/debian/pool',
> '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.au.debian.org', '/debian/pool',
> '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.cl.debian.org', '/debian/pool',
> '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.hr.debian.org', '/debian/pool',
> '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.fi.debian.org', '/debian/pool',
> '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.hk.debian.org', '/debian/pool',
> '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.hu.debian.org', '/debian/pool',
> '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.ie.debian.org', '/debian/pool',
> '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.it.debian.org', '/debian/pool',
> '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.jp.debian.org', '/debian/pool',
> '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.no.debian.org', '/debian/pool',
> '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.pl.debian.org', '/debian/pool',
> '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.ro.debian.org', '/debian/pool',
> '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.si.debian.org', '/debian/pool',
> '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.es.debian.org', '/debian/pool',
> '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.se.debian.org', '/debian/pool',
> '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> OrderedDict()] to ['http', 'ftp.tr.debian.org', '/debian/pool',
> '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['https', 'ftp.gnu.org', '/gnu', '', '', OrderedDict()] to
> ['https', 'mirrors.kernel.org', '/gnu', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['https', 'cdn.kernel.org', '/pub', '', '', OrderedDict()] to
> ['http', 'www.kernel.org', '/pub', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '', OrderedDict()=
]
> to ['ftp', 'ftp.gnupg.org', '/gcrypt', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '', OrderedDict()=
]
> to ['ftp', 'ftp.franken.de', '/pub/crypt/mirror/ftp.gnupg.org/gcrypt', ''=
,
> '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '', OrderedDict()=
]
> to ['ftp', 'mirrors.dotsrc.org', '/gcrypt', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', '', OrderedDict()=
]
> to ['ftp', 'ftp.fu-berlin.de', '/tex/CTAN', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', '', OrderedDict()=
]
> to ['http', 'sunsite.sut.ac.jp', '/pub/archives/ctan/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', '', OrderedDict()=
]
> to ['http', 'ctan.unsw.edu.au', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['ftp', 'ftp.gnutls.org', '/gcrypt/gnutls', '', '',
> OrderedDict()] to ['https', 'www.gnupg.org', '/ftp/gcrypt/gnutls', '', ''=
,
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'ftp.info-zip.org', '/pub/infozip/src/', '', '',
> OrderedDict()] to ['ftp', 'sunsite.icm.edu.pl',
> '/pub/unix/archiving/info-zip/src/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'www.mirrorservice.org',
> '/sites/lsof.itap.purdue.edu/pub/tools/unix/lsof/', '', '', OrderedDict()=
]
> to ['http', 'www.mirrorservice.org',
> '/sites/lsof.itap.purdue.edu/pub/tools/unix/lsof/OLD/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['https', 'archive.apache.org', '/dist', '', '', OrderedDict()]
> to ['http', 'www.us.apache.org', '/dist', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['https', 'archive.apache.org', '/dist', '', '', OrderedDict()]
> to ['http', 'archive.apache.org', '/dist', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['http', 'downloads.sourceforge.net', '/watchdog/', '', '',
> OrderedDict()] to ['http', 'fossies.org', '/linux/misc/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['https', 'download.savannah.gnu.org', '/releases', '', '',
> OrderedDict()] to ['http', 'download-mirror.savannah.gnu.org',
> '/releases', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['https', 'download.savannah.nongnu.org', '/releases', '', '',
> OrderedDict()] to ['http', 'download-mirror.savannah.nongnu.org',
> '/releases', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['ftp', 'sourceware.org', '/pub', '', '', OrderedDict()] to
> ['http', 'mirrors.kernel.org', '/sourceware', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['ftp', 'sourceware.org', '/pub', '', '', OrderedDict()] to
> ['http', 'gd.tuwien.ac.at', '/gnu/sourceware', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['ftp', 'sourceware.org', '/pub', '', '', OrderedDict()] to
> ['http', 'ftp.gwdg.de', '/pub/linux/sources.redhat.com/sourceware', '',
> '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['https?', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url
> http://sources.openembedded.org/git2_github.com.Xilinx.qemu.git.tar.gz
> returning
> http://downloads.yoctoproject.org/mirror/sources/git2_github.com.Xilinx.q=
emu.git.tar.gz
>=20
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['npm', '.*', '/?.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['gitsm', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['npm', '.*', '/?.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['https', 'search.cpan.org', '/CPAN', '', '', OrderedDict()] to
> ['https', 'cpan.metacpan.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['https?', 'downloads.yoctoproject.org', '/releases/uninative/'=
,
> '', '', OrderedDict()] to ['https', 'mirrors.kernel.org',
> '/yocto/uninative/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['https?', 'downloads.yoctoproject.org', '/mirror/sources/', ''=
,
> '', OrderedDict()] to ['https', 'mirrors.kernel.org', '/yocto-sources/',
> '', '', OrderedDict()]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['git', 'salsa.debian.org', '/.*', '', '', OrderedDict()] to
> ['git', 'salsa.debian.org', '/PATH', '', '', OrderedDict([('protocol',
> 'https')])]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['git', 'git.gnome.org', '/.*', '', '', OrderedDict()] to
> ['git', 'gitlab.gnome.org', '/GNOME/PATH', '', '',
> OrderedDict([('protocol', 'https')])]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['git', 'git.infradead.org', '/.*', '', '', OrderedDict()] to
> ['git', 'git.infraroot.at', '/PATH', '', '', OrderedDict([('protocol',
> 'https')])]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['git', 'HOST',
> '/PATH', '', '', OrderedDict([('protocol', 'https')])]
> DEBUG: For url ['http', 'sources.openembedded.org',
> '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]
> comparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['git', 'HOST',
> '/git/PATH', '', '', OrderedDict([('protocol', 'https')])]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['npm', '.*', '/?.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'search.cpan.org', '/CPAN', '', '',
> OrderedDict()] to ['https', 'cpan.metacpan.org', '/', '', '',
> OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['https?', 'downloads.yoctoproject.org',
> '/releases/uninative/', '', '', OrderedDict()] to ['https',
> 'mirrors.kernel.org', '/yocto/uninative/', '', '', OrderedDict()]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['https?', 'downloads.yoctoproject.org',
> '/mirror/sources/', '', '', OrderedDict()] to ['https',
> 'mirrors.kernel.org', '/yocto-sources/', '', '', OrderedDict()]
> DEBUG: For url
> http://downloads.yoctoproject.org/mirror/sources/git2_github.com.Xilinx.q=
emu.git.tar.gz
> returning
> https://mirrors.kernel.org/yocto-sources/git2_github.com.Xilinx.qemu.git.=
tar.gz
>=20
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'snapshot.debian.org',
> '/archive/debian/20180310T215105Z/pool', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'snapshot.debian.org',
> '/archive/debian-archive/20120328T092752Z/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'snapshot.debian.org',
> '/archive/debian-archive/20110127T084257Z/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'snapshot.debian.org',
> '/archive/debian-archive/20090802T004153Z/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.de.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.au.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.cl.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.hr.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.fi.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.hk.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.hu.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.ie.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.it.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.jp.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.no.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.pl.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.ro.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.si.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.es.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.se.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '',
> '', OrderedDict()] to ['http', 'ftp.tr.debian.org', '/debian/pool', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'ftp.gnu.org', '/gnu', '', '',
> OrderedDict()] to ['https', 'mirrors.kernel.org', '/gnu', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'cdn.kernel.org', '/pub', '', '',
> OrderedDict()] to ['http', 'www.kernel.org', '/pub', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', ''=
,
> OrderedDict()] to ['ftp', 'ftp.gnupg.org', '/gcrypt', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', ''=
,
> OrderedDict()] to ['ftp', 'ftp.franken.de',
> '/pub/crypt/mirror/ftp.gnupg.org/gcrypt', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', ''=
,
> OrderedDict()] to ['ftp', 'mirrors.dotsrc.org', '/gcrypt', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', ''=
,
> OrderedDict()] to ['ftp', 'ftp.fu-berlin.de', '/tex/CTAN', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', ''=
,
> OrderedDict()] to ['http', 'sunsite.sut.ac.jp', '/pub/archives/ctan/', ''=
,
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', ''=
,
> OrderedDict()] to ['http', 'ctan.unsw.edu.au', '/', '',
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', 'ftp.gnutls.org', '/gcrypt/gnutls', '',
> '', OrderedDict()] to ['https', 'www.gnupg.org', '/ftp/gcrypt/gnutls', ''=
,
> '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'ftp.info-zip.org', '/pub/infozip/src/'=
,
> '', '', OrderedDict()] to ['ftp', 'sunsite.icm.edu.pl',
> '/pub/unix/archiving/info-zip/src/', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'www.mirrorservice.org',
> '/sites/lsof.itap.purdue.edu/pub/tools/unix/lsof/', '', '', OrderedDict()=
]
> to ['http', 'www.mirrorservice.org',
> '/sites/lsof.itap.purdue.edu/pub/tools/unix/lsof/OLD/', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'archive.apache.org', '/dist', '', '',
> OrderedDict()] to ['http', 'www.us.apache.org', '/dist',
> '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'archive.apache.org', '/dist', '', '',
> OrderedDict()] to ['http', 'archive.apache.org', '/dist', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['http', 'downloads.sourceforge.net',
> '/watchdog/', '', '', OrderedDict()] to ['http', 'fossies.org',
> '/linux/misc/', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'download.savannah.gnu.org',
> '/releases', '', '', OrderedDict()] to ['http',
> 'download-mirror.savannah.gnu.org', '/releases', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'download.savannah.nongnu.org',
> '/releases', '', '', OrderedDict()] to ['http',
> 'download-mirror.savannah.nongnu.org', '/releases', '', '', OrderedDict()=
]
>=20
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', 'sourceware.org', '/pub', '', '',
> OrderedDict()] to ['http', 'mirrors.kernel.org', '/sourceware',
> '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', 'sourceware.org', '/pub', '', '',
> OrderedDict()] to ['http', 'gd.tuwien.ac.at', '/gnu/sourceware', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', 'sourceware.org', '/pub', '', '',
> OrderedDict()] to ['http', 'ftp.gwdg.de',
> '/pub/linux/sources.redhat.com/sourceware', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/',
> '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/',
> '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['git', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/',
> '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/',
> '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/',
> '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['https?', '.*', '/.*', '', '', OrderedDict()] t=
o
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url
> https://mirrors.kernel.org/yocto-sources/git2_github.com.Xilinx.qemu.git.=
tar.gz
> returning
> http://downloads.yoctoproject.org/mirror/sources/git2_github.com.Xilinx.q=
emu.git.tar.gz
>=20
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/',
> '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['npm', '.*', '/?.*', '', '', OrderedDict()] to
> ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['git', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['gitsm', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['https?', '.*', '/.*', '', '', OrderedDict()] t=
o
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url
> https://mirrors.kernel.org/yocto-sources/git2_github.com.Xilinx.qemu.git.=
tar.gz
> returning
> http://sources.openembedded.org/git2_github.com.Xilinx.qemu.git.tar.gz
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['npm', '.*', '/?.*', '', '', OrderedDict()] to
> ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['https', 'search.cpan.org', '/CPAN', '', '',
> OrderedDict()] to ['https', 'cpan.metacpan.org', '/', '', '',
> OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['https?', 'downloads.yoctoproject.org',
> '/releases/uninative/', '', '', OrderedDict()] to ['https',
> 'mirrors.kernel.org', '/yocto/uninative/', '', '', OrderedDict()]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['git', 'salsa.debian.org', '/.*', '', '',
> OrderedDict()] to ['git', 'salsa.debian.org', '/PATH', '', '',
> OrderedDict([('protocol', 'https')])]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['git', 'git.gnome.org', '/.*', '', '',
> OrderedDict()] to ['git', 'gitlab.gnome.org', '/GNOME/PATH', '', '',
> OrderedDict([('protocol', 'https')])]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['git', 'git.infradead.org', '/.*', '', '',
> OrderedDict()] to ['git', 'git.infraroot.at', '/PATH', '', '',
> OrderedDict([('protocol', 'https')])]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['git', '.*', '/.*', '', '', OrderedDict()] to
> ['git', 'HOST', '/PATH', '', '', OrderedDict([('protocol',
> 'https')])]
> DEBUG: For url ['https', 'mirrors.kernel.org',
> '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['git', '.*', '/.*', '', '', OrderedDict()] to
> ['git', 'HOST', '/git/PATH', '', '', OrderedDict([('protocol', 'https')])=
]
>=20
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['git', 'salsa.debian.org', '/.*', '', '',
> OrderedDict()] to ['git', 'salsa.debian.org', '/PATH',
> '', '', OrderedDict([('protocol', 'https')])]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['git', 'git.gnome.org', '/.*', '', '',
> OrderedDict()] to ['git', 'gitlab.gnome.org', '/GNOME/PATH', '', '',
> OrderedDict([('protocol', 'https')])]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['git', 'git.infradead.org', '/.*', '', '',
> OrderedDict()] to ['git', 'git.infraroot.at', '/PATH', '', '',
> OrderedDict([('protocol', 'https')])]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['git', '.*', '/.*', '', '', OrderedDict()] to
> ['git', 'HOST', '/PATH', '', '', OrderedDict([('protocol', 'https')])]
> DEBUG: For url ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',
> OrderedDict()] comparing ['git', '.*', '/.*', '', '', OrderedDict()] to
> ['git', 'HOST', '/git/PATH', '', '', OrderedDict([('protocol', 'https')])=
]
>=20
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['hg', '.*', '/.*', '', '', OrderedDict()]
> to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['bzr', '.*', '/.*', '', '', OrderedDict()]
> to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['p4', '.*', '/.*', '', '', OrderedDict()]
> to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['osc', '.*', '/.*', '', '', OrderedDict()]
> to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['https?', '.*', '/.*', '', '',
> OrderedDict()] to ['http', 'downloads.yoctoproject.org',
> '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['ftp', '.*', '/.*', '', '', OrderedDict()]
> to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['npm', '.*', '/?.*', '', '', OrderedDict()=
]
> to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['cvs', '.*', '/.*', '', '', OrderedDict()]
> to ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['svn', '.*', '/.*', '', '', OrderedDict()]
> to ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['git', '.*', '/.*', '', '', OrderedDict()]
> to ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['gitsm', '.*', '/.*', '', '',
> OrderedDict()] to ['http', 'sources.openembedded.org', '/', '', '',
> OrderedDict()]
> DEBUG: For url
> gitsm://github.com/Xilinx/qemu.git;protocol=3Dhttps;branch=3Dxlnx_rel_v20=
25.1;name=3Dqemu
> returning
> http://sources.openembedded.org/git2_github.com.Xilinx.qemu.git.tar.gz
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['hg', '.*', '/.*', '', '', OrderedDict()]
> to ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['bzr', '.*', '/.*', '', '', OrderedDict()]
> to ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['p4', '.*', '/.*', '', '', OrderedDict()]
> to ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['osc', '.*', '/.*', '', '', OrderedDict()]
> to ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['https?', '.*', '/.*', '', '',
> OrderedDict()] to ['http', 'sources.openembedded.org', '/', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['ftp', '.*', '/.*', '', '', OrderedDict()]
> to ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['npm', '.*', '/?.*', '', '', OrderedDict()=
]
> to ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['https', 'search.cpan.org', '/CPAN', '',
> '', OrderedDict()] to ['https', 'cpan.metacpan.org', '/', '', '',
> OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['https?', 'downloads.yoctoproject.org',
> '/releases/uninative/', '', '', OrderedDict()] to ['https',
> 'mirrors.kernel.org', '/yocto/uninative/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['https?', 'downloads.yoctoproject.org',
> '/mirror/sources/', '', '', OrderedDict()] to ['https',
> 'mirrors.kernel.org', '/yocto-sources/', '', '', OrderedDict()]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['git', 'salsa.debian.org', '/.*', '', '',
> OrderedDict()] to ['git', 'salsa.debian.org', '/PATH', '', '',
> OrderedDict([('protocol', 'https')])]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['git', 'git.gnome.org', '/.*', '', '',
> OrderedDict()] to ['git', 'gitlab.gnome.org', '/GNOME/PATH', '', '',
> OrderedDict([('protocol', 'https')])]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['git', 'git.infradead.org', '/.*', '', '',
> OrderedDict()] to ['git', 'git.infraroot.at', '/PATH', '', '',
> OrderedDict([('protocol', 'https')])]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['git', '.*', '/.*', '', '', OrderedDict()]
> to ['git', 'HOST', '/PATH', '', '', OrderedDict([('protocol', 'https')])]
> DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',
> OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),
> ('name', 'qemu')])] comparing ['git', '.*', '/.*', '', '', OrderedDict()]
> to ['git', 'HOST', '/git/PATH', '', '', OrderedDict([('protocol',
> 'https')])]
> DEBUG: Fetching
> http://downloads.yoctoproject.org/mirror/sources/git2_github.com.Xilinx.q=
emu.git.tar.gz
> using command '/usr/bin/env wget -t 2 -T 100 -O
> /home/nic/ocs-app/Os/build/downloads/git2_github.com.Xilinx.qemu.git.tar.=
gz.tmp
> -P /home/nic/ocs-app/Os/build/downloads
> 'http://downloads.yoctoproject.org/mirror/sources/git2_github.com.Xilinx.=
qemu.git.tar.gz''
>=20
> DEBUG: Fetcher accessed the network with the command /usr/bin/env wget -t
> 2 -T 100 -O
> /home/nic/ocs-app/Os/build/downloads/git2_github.com.Xilinx.qemu.git.tar.=
gz.tmp
> -P /home/nic/ocs-app/Os/build/downloads
> 'http://downloads.yoctoproject.org/mirror/sources/git2_github.com.Xilinx.=
qemu.git.tar.gz'
>=20
> DEBUG: Running export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; /usr/bin/env wget -t 2 -T 100 -O
> /home/nic/ocs-app/Os/build/downloads/git2_github.com.Xilinx.qemu.git.tar.=
gz.tmp
> -P /home/nic/ocs-app/Os/build/downloads
> 'http://downloads.yoctoproject.org/mirror/sources/git2_github.com.Xilinx.=
qemu.git.tar.gz'
> --progress=3Ddot -v
> --2025-09-29 09:34:58--=20
> http://downloads.yoctoproject.org/mirror/sources/git2_github.com.Xilinx.q=
emu.git.tar.gz
>=20
> Resolving downloads.yoctoproject.org (downloads.yoctoproject.org)...
> 37.27.135.249, 2a01:4f9:3070:3985::2
> Connecting to downloads.yoctoproject.org
> (downloads.yoctoproject.org)|37.27.135.249|:80... connected.
> HTTP request sent, awaiting response... 404 Not Found
> 2025-09-29 09:34:58 ERROR 404: Not Found.
> DEBUG: Mirror fetch failure for url
> http://downloads.yoctoproject.org/mirror/sources/git2_github.com.Xilinx.q=
emu.git.tar.gz
> (original url:
> gitsm://github.com/Xilinx/qemu.git;protocol=3Dhttps;branch=3Dxlnx_rel_v20=
25.1;name=3Dqemu)
>=20
> DEBUG: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; /usr/bin/env wget -t 2 -T 100 -O
> /home/nic/ocs-app/Os/build/downloads/git2_github.com.Xilinx.qemu.git.tar.=
gz.tmp
> -P /home/nic/ocs-app/Os/build/downloads
> 'http://downloads.yoctoproject.org/mirror/sources/git2_github.com.Xilinx.=
qemu.git.tar.gz'
> --progress=3Ddot -v failed with exit code 8, see logfile for output
> DEBUG: Fetching
> http://sources.openembedded.org/git2_github.com.Xilinx.qemu.git.tar.gz
> using command '/usr/bin/env wget -t 2 -T 100 -O
> /home/nic/ocs-app/Os/build/downloads/git2_github.com.Xilinx.qemu.git.tar.=
gz.tmp
> -P /home/nic/ocs-app/Os/build/downloads
> 'http://sources.openembedded.org/git2_github.com.Xilinx.qemu.git.tar.gz''
> DEBUG: Fetcher accessed the network with the command /usr/bin/env wget -t
> 2 -T 100 -O
> /home/nic/ocs-app/Os/build/downloads/git2_github.com.Xilinx.qemu.git.tar.=
gz.tmp
> -P /home/nic/ocs-app/Os/build/downloads
> 'http://sources.openembedded.org/git2_github.com.Xilinx.qemu.git.tar.gz'
> DEBUG: Running export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; /usr/bin/env wget -t 2 -T 100 -O
> /home/nic/ocs-app/Os/build/downloads/git2_github.com.Xilinx.qemu.git.tar.=
gz.tmp
> -P /home/nic/ocs-app/Os/build/downloads
> 'http://sources.openembedded.org/git2_github.com.Xilinx.qemu.git.tar.gz'
> --progress=3Ddot -v
> --2025-09-29 09:34:58--=20
> http://sources.openembedded.org/git2_github.com.Xilinx.qemu.git.tar.gz
> Resolving sources.openembedded.org (sources.openembedded.org)... failed:
> No address associated with hostname.
> wget: unable to resolve host address =E2=80=98sources.openembedded.org=E2=
=80=99
> DEBUG: Mirror fetch failure for url
> http://sources.openembedded.org/git2_github.com.Xilinx.qemu.git.tar.gz
> (original url:
> gitsm://github.com/Xilinx/qemu.git;protocol=3Dhttps;branch=3Dxlnx_rel_v20=
25.1;name=3Dqemu)
>=20
> DEBUG: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; /usr/bin/env wget -t 2 -T 100 -O
> /home/nic/ocs-app/Os/build/downloads/git2_github.com.Xilinx.qemu.git.tar.=
gz.tmp
> -P /home/nic/ocs-app/Os/build/downloads
> 'http://sources.openembedded.org/git2_github.com.Xilinx.qemu.git.tar.gz'
> --progress=3Ddot -v failed with exit code 4, see logfile for output
> DEBUG: Fetching
> https://mirrors.kernel.org/yocto-sources/git2_github.com.Xilinx.qemu.git.=
tar.gz
> using command '/usr/bin/env wget -t 2 -T 100 -O
> /home/nic/ocs-app/Os/build/downloads/git2_github.com.Xilinx.qemu.git.tar.=
gz.tmp
> -P /home/nic/ocs-app/Os/build/downloads
> 'https://mirrors.kernel.org/yocto-sources/git2_github.com.Xilinx.qemu.git=
.tar.gz''
>=20
> DEBUG: Fetcher accessed the network with the command /usr/bin/env wget -t
> 2 -T 100 -O
> /home/nic/ocs-app/Os/build/downloads/git2_github.com.Xilinx.qemu.git.tar.=
gz.tmp
> -P /home/nic/ocs-app/Os/build/downloads
> 'https://mirrors.kernel.org/yocto-sources/git2_github.com.Xilinx.qemu.git=
.tar.gz'
>=20
> DEBUG: Running export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; /usr/bin/env wget -t 2 -T 100 -O
> /home/nic/ocs-app/Os/build/downloads/git2_github.com.Xilinx.qemu.git.tar.=
gz.tmp
> -P /home/nic/ocs-app/Os/build/downloads
> 'https://mirrors.kernel.org/yocto-sources/git2_github.com.Xilinx.qemu.git=
.tar.gz'
> --progress=3Ddot -v
> --2025-09-29 09:34:58--=20
> https://mirrors.kernel.org/yocto-sources/git2_github.com.Xilinx.qemu.git.=
tar.gz
>=20
> Resolving mirrors.kernel.org (mirrors.kernel.org)... 139.178.88.99,
> 2604:1380:45e3:2400::1
> Connecting to mirrors.kernel.org
> (mirrors.kernel.org)|139.178.88.99|:443... connected.
> HTTP request sent, awaiting response... 404 Not Found
> 2025-09-29 09:34:59 ERROR 404: Not Found.
> DEBUG: Mirror fetch failure for url
> https://mirrors.kernel.org/yocto-sources/git2_github.com.Xilinx.qemu.git.=
tar.gz
> (original url:
> gitsm://github.com/Xilinx/qemu.git;protocol=3Dhttps;branch=3Dxlnx_rel_v20=
25.1;name=3Dqemu)
>=20
> DEBUG: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export
> PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";
> export HOME=3D"/home/nic"; /usr/bin/env wget -t 2 -T 100 -O
> /home/nic/ocs-app/Os/build/downloads/git2_github.com.Xilinx.qemu.git.tar.=
gz.tmp
> -P /home/nic/ocs-app/Os/build/downloads
> 'https://mirrors.kernel.org/yocto-sources/git2_github.com.Xilinx.qemu.git=
.tar.gz'
> --progress=3Ddot -v failed with exit code 8, see logfile for output
> ERROR: Fetcher failure for URL:
> 'gitsm://gitlab.com/qemu-project/u-boot.git;protocol=3Dhttps;name=3Droms/=
u-boot;subpath=3Droms/u-boot;nobranch=3D1;lfs=3DTrue;bareclone=3D1;nobranch=
=3D1'.
> Unable to fetch URL from any source.
> ERROR: Bitbake Fetcher Error: FetchError('Unable to fetch URL from any
> source.',
> 'gitsm://github.com/Xilinx/qemu.git;protocol=3Dhttps;branch=3Dxlnx_rel_v2=
025.1;name=3Dqemu')
>=20
> DEBUG: Python function base_do_fetch finished
> DEBUG: Python function do_fetch finished
>

--ZSF6v5aH36q0KnMjrSIi
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Full log:<br /><br /></div>
<blockquote>
<div>
<div>NOTE: Direct dependencies are []<br />NOTE: Installed into sysroot: []=
<br />NOTE: Skipping as already exists in sysroot: []<br />DEBUG: Python fu=
nction extend_recipe_sysroot finished<br />DEBUG: Executing python function=
 fetcher_hashes_dummyfunc<br />DEBUG: Python function fetcher_hashes_dummyf=
unc finished<br />DEBUG: Executing python function do_fetch<br />DEBUG: Exe=
cuting python function base_do_fetch<br />DEBUG: Trying PREMIRRORS<br />DEB=
UG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '', OrderedDict=
([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])=
] comparing ['git', 'sourceware.org', '/git/glibc.git', '', '', OrderedDict=
()] to ['https', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', =
OrderedDict()]<br />DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.gi=
t', '', '', OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.=
1'), ('name', 'qemu')])] comparing ['git', 'sourceware.org', '/git/binutils=
-gdb.git', '', '', OrderedDict()] to ['https', 'downloads.yoctoproject.org'=
, '/mirror/sources/', '', '', OrderedDict()]<br />DEBUG: Trying Upstream<br=
 />DEBUG: Fetcher accessed the network with the command LANG=3DC git -c gc.=
autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall clone -=
-bare --mirror https://github.com/Xilinx/qemu.git /home/nic/ocs-app/Os/buil=
d/downloads/git2/github.com.Xilinx.qemu.git --progress<br />DEBUG: Running =
export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D=
/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/nativ=
e-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/=
usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native=
/8.2.7+git/recipe-sysroot-native/usr/bin/python3-native:/home/nic/ocs-app/O=
s/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-=
app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysr=
oot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xi=
linx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/b=
uild/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-nati=
ve/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nat=
ive/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/wor=
k/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home=
/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";=
 export HOME=3D"/home/nic"; LANG=3DC git -c gc.autoDetach=3Dfalse -c core.p=
ager=3Dcat -c safe.bareRepository=3Dall clone --bare --mirror https://githu=
b.com/Xilinx/qemu.git /home/nic/ocs-app/Os/build/downloads/git2/github.com.=
Xilinx.qemu.git --progress<br />Cloning into bare repository '/home/nic/ocs=
-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git'...<br />remote: En=
umerating objects: 750297, done.<br />remote: Counting objects: 100% (9632/=
9632), done.<br />remote: Compressing objects: 100% (224/224), done.<br />r=
emote: Total 750297 (delta 9491), reused 9432 (delta 9407), pack-reused 740=
665 (from 2)<br />Receiving objects: 100% (750297/750297), 358.33 MiB | 12.=
99 MiB/s, done.<br />Resolving deltas: 100% (619519/619519), done.<br />DEB=
UG: Running 'export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D=
"unix:path=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/=
scripts/native-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/=
x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-=
xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/python3-native:/home/=
nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linu=
x/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/=
home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+gi=
t/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-=
linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic=
/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe=
-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qe=
mu-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/=
build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-nat=
ive/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tm=
p/hosttools"; export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c co=
re.pager=3Dcat -c safe.bareRepository=3Dall branch --contains b05c9752662eb=
4b8120a57454a323445d78d1463 --list xlnx_rel_v2025.1 2&gt; /dev/null | wc -l=
' in /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git<b=
r />DEBUG: Running 'export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADD=
RESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/O=
s/poky/scripts/native-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uni=
native/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linu=
x/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/python3-native=
:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-=
linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8=
.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/=
x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/h=
ome/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git=
/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-l=
inux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-=
app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysr=
oot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/b=
uild/tmp/hosttools"; export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfals=
e -c core.pager=3Dcat -c safe.bareRepository=3Dall branch --contains b05c97=
52662eb4b8120a57454a323445d78d1463 --list xlnx_rel_v2025.1 2&gt; /dev/null =
| wc -l' in /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qem=
u.git<br />DEBUG: Running 'export PSEUDO_DISABLED=3D1; export DBUS_SESSION_=
BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"/home/nic/oc=
s-app/Os/poky/scripts/native-intercept:/home/nic/ocs-app/Os/build/tmp/sysro=
ots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/python3=
-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/wo=
rk/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/=
x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-n=
ative/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tm=
p/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/=
sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.=
2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x=
86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-a=
pp/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"; git -c gc.autoDetach=
=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall branch --contains=
 b05c9752662eb4b8120a57454a323445d78d1463 --list xlnx_rel_v2025.1 2&gt; /de=
v/null | wc -l' in /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xil=
inx.qemu.git<br />DEBUG: Running 'export PSEUDO_DISABLED=3D1; export DBUS_S=
ESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"/home=
/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-app/Os/build/tm=
p/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/wo=
rk/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/=
python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build=
/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/u=
sr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-x=
ilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/b=
uild/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-nati=
ve/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-na=
tive/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp=
/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:=
/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+g=
it/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/ni=
c/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"; git -c gc.aut=
oDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall grep lfs x=
lnx_rel_v2025.1:.gitattributes | wc -l' in /home/nic/ocs-app/Os/build/downl=
oads/git2/github.com.Xilinx.qemu.git<br />DEBUG: Running 'export PSEUDO_DIS=
ABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bu=
s"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home=
/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic=
/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe=
-sysroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/h=
ome/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git=
/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/=
work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bi=
n:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7=
+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86=
_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/=
nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/rec=
ipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qe=
mu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/p=
oky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/=
home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRep=
ository=3Dall branch --contains b05c9752662eb4b8120a57454a323445d78d1463 --=
list xlnx_rel_v2025.1 2&gt; /dev/null | wc -l' in /home/nic/ocs-app/Os/buil=
d/downloads/git2/github.com.Xilinx.qemu.git<br />DEBUG: Running 'export PSE=
UDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/=
1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercep=
t:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/h=
ome/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git=
/recipe-sysroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scr=
ipts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.=
2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/bui=
ld/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native=
/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nativ=
e/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/w=
ork/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin=
:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+=
git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-l=
inux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-a=
pp/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HO=
ME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.=
bareRepository=3Dall branch --contains b05c9752662eb4b8120a57454a323445d78d=
1463 --list xlnx_rel_v2025.1 2&gt; /dev/null | wc -l' in /home/nic/ocs-app/=
Os/build/downloads/git2/github.com.Xilinx.qemu.git<br />DEBUG: Running 'exp=
ort PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/ru=
n/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-i=
ntercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr=
/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.=
2.7+git/recipe-sysroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/p=
oky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-na=
tive/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app=
/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot=
-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilin=
x-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/buil=
d/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/=
usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native=
/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x=
86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/ni=
c/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; ex=
port HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -=
c safe.bareRepository=3Dall grep lfs xlnx_rel_v2025.1:.gitattributes | wc -=
l' in /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git<=
br />DEBUG: Running 'export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_AD=
DRESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/=
Os/poky/scripts/native-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-un=
inative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-lin=
ux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/python3-nativ=
e:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86=
_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64=
-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/=
8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work=
/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/=
home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+gi=
t/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-=
linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs=
-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sys=
root-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/=
build/tmp/hosttools"; export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfal=
se -c core.pager=3Dcat -c safe.bareRepository=3Dall show b05c9752662eb4b812=
0a57454a323445d78d1463:.gitmodules' in /home/nic/ocs-app/Os/build/downloads=
/git2/github.com.Xilinx.qemu.git<br />DEBUG: Running 'export PSEUDO_DISABLE=
D=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; =
export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic=
/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs=
-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sys=
root-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/=
nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/rec=
ipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work=
/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/h=
ome/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git=
/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-=
linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/=
ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-=
sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-x=
ilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/=
bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/home=
/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareReposit=
ory=3Dall ls-tree -z -d b05c9752662eb4b8120a57454a323445d78d1463 roms/seabi=
os' in /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git=
<br />DEBUG: Running 'export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_A=
DDRESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app=
/Os/poky/scripts/native-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-u=
ninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-li=
nux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/python3-nati=
ve:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x8=
6_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_6=
4-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native=
/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/wor=
k/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:=
/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+g=
it/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64=
-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/oc=
s-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sy=
sroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os=
/build/tmp/hosttools"; export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfa=
lse -c core.pager=3Dcat -c safe.bareRepository=3Dall ls-tree -z -d b05c9752=
662eb4b8120a57454a323445d78d1463 roms/SLOF' in /home/nic/ocs-app/Os/build/d=
ownloads/git2/github.com.Xilinx.qemu.git<br />DEBUG: Running 'export PSEUDO=
_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/100=
2/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/=
home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home=
/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/re=
cipe-sysroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/script=
s:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7=
+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/=
tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/us=
r/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8=
.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work=
/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/h=
ome/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git=
/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linu=
x/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/=
Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=
=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.ba=
reRepository=3Dall ls-tree -z -d b05c9752662eb4b8120a57454a323445d78d1463 r=
oms/ipxe' in /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qe=
mu.git<br />DEBUG: Running 'export PSEUDO_DISABLED=3D1; export DBUS_SESSION=
_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"/home/nic/o=
cs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-app/Os/build/tmp/sysr=
oots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86=
_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/python=
3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/w=
ork/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin=
/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-=
native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/t=
mp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr=
/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8=
.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/=
x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/home/=
nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/rec=
ipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-=
app/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"; git -c gc.autoDetac=
h=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall ls-tree -z -d b0=
5c9752662eb4b8120a57454a323445d78d1463 roms/openbios' in /home/nic/ocs-app/=
Os/build/downloads/git2/github.com.Xilinx.qemu.git<br />DEBUG: Running 'exp=
ort PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/ru=
n/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-i=
ntercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr=
/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.=
2.7+git/recipe-sysroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/p=
oky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-na=
tive/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app=
/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot=
-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilin=
x-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/buil=
d/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/=
usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native=
/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x=
86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/ni=
c/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; ex=
port HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -=
c safe.bareRepository=3Dall ls-tree -z -d b05c9752662eb4b8120a57454a323445d=
78d1463 roms/qemu-palcode' in /home/nic/ocs-app/Os/build/downloads/git2/git=
hub.com.Xilinx.qemu.git<br />DEBUG: Running 'export PSEUDO_DISABLED=3D1; ex=
port DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export PA=
TH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-app/=
Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/b=
uild/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-nati=
ve/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-l=
inux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qem=
u-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/O=
s/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-n=
ative/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nat=
ive/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/b=
in:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"; gi=
t -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall=
 ls-tree -z -d b05c9752662eb4b8120a57454a323445d78d1463 roms/u-boot' in /ho=
me/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git<br />DEBU=
G: Running 'export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"=
unix:path=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/s=
cripts/native-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x=
86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-x=
ilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/python3-native:/home/n=
ic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/h=
ome/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git=
/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-l=
inux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/=
ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-=
sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qem=
u-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/b=
uild/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-nati=
ve/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp=
/hosttools"; export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c cor=
e.pager=3Dcat -c safe.bareRepository=3Dall ls-tree -z -d b05c9752662eb4b812=
0a57454a323445d78d1463 roms/skiboot' in /home/nic/ocs-app/Os/build/download=
s/git2/github.com.Xilinx.qemu.git<br />DEBUG: Running 'export PSEUDO_DISABL=
ED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus";=
 export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/ni=
c/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/oc=
s-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sy=
sroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home=
/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/re=
cipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/wor=
k/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/=
home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+gi=
t/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64=
-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic=
/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe=
-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-=
xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky=
/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/hom=
e/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareReposi=
tory=3Dall ls-tree -z -d b05c9752662eb4b8120a57454a323445d78d1463 roms/Qemu=
MacDrivers' in /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.=
qemu.git<br />DEBUG: Running 'export PSEUDO_DISABLED=3D1; export DBUS_SESSI=
ON_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"/home/nic=
/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-app/Os/build/tmp/sy=
sroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x=
86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/pyth=
on3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp=
/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/b=
in/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilin=
x-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build=
/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/u=
sr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native=
/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/wor=
k/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/hom=
e/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/r=
ecipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/oc=
s-app/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"; git -c gc.autoDet=
ach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall ls-tree -z -d =
b05c9752662eb4b8120a57454a323445d78d1463 roms/seabios-hppa' in /home/nic/oc=
s-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git<br />DEBUG: Runnin=
g 'export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=
=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/na=
tive-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-lin=
ux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nat=
ive/8.2.7+git/recipe-sysroot-native/usr/bin/python3-native:/home/nic/ocs-ap=
p/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xil=
inx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu=
-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/O=
s/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-n=
ative/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-=
native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/=
work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/h=
ome/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttool=
s"; export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=
=3Dcat -c safe.bareRepository=3Dall ls-tree -z -d b05c9752662eb4b8120a57454=
a323445d78d1463 roms/u-boot-sam460ex' in /home/nic/ocs-app/Os/build/downloa=
ds/git2/github.com.Xilinx.qemu.git<br />DEBUG: Running 'export PSEUDO_DISAB=
LED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"=
; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/n=
ic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/hom=
e/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/r=
ecipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/wo=
rk/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:=
/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+g=
it/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_6=
4-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/ni=
c/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recip=
e-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu=
-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/pok=
y/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/ho=
me/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepos=
itory=3Dall ls-tree -z -d b05c9752662eb4b8120a57454a323445d78d1463 roms/edk=
2' in /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git<=
br />DEBUG: Running 'export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_AD=
DRESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/=
Os/poky/scripts/native-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-un=
inative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-lin=
ux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/python3-nativ=
e:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86=
_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64=
-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/=
8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work=
/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/=
home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+gi=
t/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-=
linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs=
-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sys=
root-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/=
build/tmp/hosttools"; export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfal=
se -c core.pager=3Dcat -c safe.bareRepository=3Dall ls-tree -z -d b05c97526=
62eb4b8120a57454a323445d78d1463 roms/opensbi' in /home/nic/ocs-app/Os/build=
/downloads/git2/github.com.Xilinx.qemu.git<br />DEBUG: Running 'export PSEU=
DO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1=
002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept=
:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/ho=
me/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/=
recipe-sysroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scri=
pts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2=
.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/buil=
d/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/=
usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native=
/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/wo=
rk/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:=
/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+g=
it/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-li=
nux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-ap=
p/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOM=
E=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.b=
areRepository=3Dall ls-tree -z -d b05c9752662eb4b8120a57454a323445d78d1463 =
roms/qboot' in /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.=
qemu.git<br />DEBUG: Running 'export PSEUDO_DISABLED=3D1; export DBUS_SESSI=
ON_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"/home/nic=
/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-app/Os/build/tmp/sy=
sroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x=
86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/pyth=
on3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp=
/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/b=
in/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilin=
x-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build=
/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/u=
sr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native=
/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/wor=
k/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/hom=
e/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/r=
ecipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/oc=
s-app/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"; git -c gc.autoDet=
ach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall ls-tree -z -d =
b05c9752662eb4b8120a57454a323445d78d1463 roms/vbootrom' in /home/nic/ocs-ap=
p/Os/build/downloads/git2/github.com.Xilinx.qemu.git<br />DEBUG: Running 'e=
xport PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/=
run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native=
-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/u=
sr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/=
8.2.7+git/recipe-sysroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os=
/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-=
native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xil=
inx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/bu=
ild/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-nativ=
e/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nati=
ve/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work=
/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/=
nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; =
export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat=
 -c safe.bareRepository=3Dall ls-tree -z -d b05c9752662eb4b8120a57454a32344=
5d78d1463 tests/lcitool/libvirt-ci' in /home/nic/ocs-app/Os/build/downloads=
/git2/github.com.Xilinx.qemu.git<br />DEBUG: gitsm: Submodules requiring up=
date: roms/seabios roms/SLOF roms/ipxe roms/openbios roms/qemu-palcode roms=
/u-boot roms/skiboot roms/QemuMacDrivers roms/seabios-hppa roms/u-boot-sam4=
60ex roms/edk2 roms/opensbi roms/qboot roms/vbootrom tests/lcitool/libvirt-=
ci<br />DEBUG: Running 'export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS=
_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-a=
pp/Os/poky/scripts/native-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots=
-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-=
linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/python3-na=
tive:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/=
x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86=
_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nati=
ve/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/w=
ork/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sbi=
n:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7=
+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/=
ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-=
sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/=
Os/build/tmp/hosttools"; export HOME=3D"/home/nic"; git -c gc.autoDetach=3D=
false -c core.pager=3Dcat -c safe.bareRepository=3Dall show b05c9752662eb4b=
8120a57454a323445d78d1463:.gitmodules' in /home/nic/ocs-app/Os/build/downlo=
ads/git2/github.com.Xilinx.qemu.git<br />DEBUG: Running 'export PSEUDO_DISA=
BLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus=
"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/=
nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/=
ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-=
sysroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/ho=
me/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/=
recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/w=
ork/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin=
:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+=
git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qem=
u-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/po=
ky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/h=
ome/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepo=
sitory=3Dall ls-tree -z -d b05c9752662eb4b8120a57454a323445d78d1463 roms/se=
abios' in /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.=
git<br />DEBUG: Running 'export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BU=
S_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-=
app/Os/poky/scripts/native-intercept:/home/nic/ocs-app/Os/build/tmp/sysroot=
s-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64=
-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/python3-n=
ative:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work=
/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x8=
6_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nat=
ive/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/=
work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sb=
in:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.=
7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86=
_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic=
/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe=
-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app=
/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"; git -c gc.autoDetach=
=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall ls-tree -z -d b05=
c9752662eb4b8120a57454a323445d78d1463 roms/SLOF' in /home/nic/ocs-app/Os/bu=
ild/downloads/git2/github.com.Xilinx.qemu.git<br />DEBUG: Running 'export P=
SEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/use=
r/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-interc=
ept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:=
/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+g=
it/recipe-sysroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/s=
cripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/=
8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/b=
uild/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-nati=
ve/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nat=
ive/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp=
/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/b=
in:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.=
7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64=
-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs=
-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export =
HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c saf=
e.bareRepository=3Dall ls-tree -z -d b05c9752662eb4b8120a57454a323445d78d14=
63 roms/ipxe' in /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilin=
x.qemu.git<br />DEBUG: Running 'export PSEUDO_DISABLED=3D1; export DBUS_SES=
SION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"/home/n=
ic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-app/Os/build/tmp/=
sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work=
/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/py=
thon3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/t=
mp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr=
/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xil=
inx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/bui=
ld/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native=
/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nati=
ve/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/w=
ork/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/h=
ome/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git=
/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/=
ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"; git -c gc.autoD=
etach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall ls-tree -z -=
d b05c9752662eb4b8120a57454a323445d78d1463 roms/openbios' in /home/nic/ocs-=
app/Os/build/downloads/git2/github.com.Xilinx.qemu.git<br />DEBUG: Running =
'export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=
=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/na=
tive-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-lin=
ux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nat=
ive/8.2.7+git/recipe-sysroot-native/usr/bin/python3-native:/home/nic/ocs-ap=
p/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xil=
inx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu=
-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/O=
s/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-n=
ative/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-=
native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/=
work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/h=
ome/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttool=
s"; export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=
=3Dcat -c safe.bareRepository=3Dall ls-tree -z -d b05c9752662eb4b8120a57454=
a323445d78d1463 roms/qemu-palcode' in /home/nic/ocs-app/Os/build/downloads/=
git2/github.com.Xilinx.qemu.git<br />DEBUG: Running 'export PSEUDO_DISABLED=
=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; e=
xport PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/=
ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-=
app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysr=
oot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/=
x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/ho=
me/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/=
recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-l=
inux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xi=
linx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/b=
itbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/home/=
nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareReposito=
ry=3Dall ls-tree -z -d b05c9752662eb4b8120a57454a323445d78d1463 roms/u-boot=
' in /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git<b=
r />DEBUG: Running 'export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADD=
RESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/O=
s/poky/scripts/native-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uni=
native/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linu=
x/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/python3-native=
:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-=
linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8=
.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/=
x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/h=
ome/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git=
/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-l=
inux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-=
app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysr=
oot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/b=
uild/tmp/hosttools"; export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfals=
e -c core.pager=3Dcat -c safe.bareRepository=3Dall ls-tree -z -d b05c975266=
2eb4b8120a57454a323445d78d1463 roms/skiboot' in /home/nic/ocs-app/Os/build/=
downloads/git2/github.com.Xilinx.qemu.git<br />DEBUG: Running 'export PSEUD=
O_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/10=
02/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:=
/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/hom=
e/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/r=
ecipe-sysroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scrip=
ts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.=
7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build=
/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/u=
sr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/=
8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/wor=
k/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/=
home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+gi=
t/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-lin=
ux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app=
/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=
=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.ba=
reRepository=3Dall ls-tree -z -d b05c9752662eb4b8120a57454a323445d78d1463 r=
oms/QemuMacDrivers' in /home/nic/ocs-app/Os/build/downloads/git2/github.com=
.Xilinx.qemu.git<br />DEBUG: Running 'export PSEUDO_DISABLED=3D1; export DB=
US_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"/=
home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-app/Os/buil=
d/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tm=
p/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/=
bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/b=
uild/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-nati=
ve/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qe=
mu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilin=
x-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build=
/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/s=
bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2=
.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/hom=
e/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"; git -c gc=
.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall ls-tre=
e -z -d b05c9752662eb4b8120a57454a323445d78d1463 roms/seabios-hppa' in /hom=
e/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git<br />DEBUG=
: Running 'export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"u=
nix:path=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/sc=
ripts/native-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x8=
6_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xi=
linx-native/8.2.7+git/recipe-sysroot-native/usr/bin/python3-native:/home/ni=
c/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/=
qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/ho=
me/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/=
recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-li=
nux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu=
-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/bu=
ild/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-nativ=
e/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/=
hosttools"; export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core=
.pager=3Dcat -c safe.bareRepository=3Dall ls-tree -z -d b05c9752662eb4b8120=
a57454a323445d78d1463 roms/u-boot-sam460ex' in /home/nic/ocs-app/Os/build/d=
ownloads/git2/github.com.Xilinx.qemu.git<br />DEBUG: Running 'export PSEUDO=
_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/100=
2/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/=
home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home=
/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/re=
cipe-sysroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/script=
s:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7=
+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/=
tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/us=
r/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8=
.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work=
/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/h=
ome/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git=
/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linu=
x/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/=
Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=
=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.ba=
reRepository=3Dall ls-tree -z -d b05c9752662eb4b8120a57454a323445d78d1463 r=
oms/edk2' in /home/nic/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qe=
mu.git<br />DEBUG: Running 'export PSEUDO_DISABLED=3D1; export DBUS_SESSION=
_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"/home/nic/o=
cs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-app/Os/build/tmp/sysr=
oots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86=
_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/python=
3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/w=
ork/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin=
/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-=
native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/t=
mp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr=
/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8=
.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/=
x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/home/=
nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/rec=
ipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-=
app/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"; git -c gc.autoDetac=
h=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall ls-tree -z -d b0=
5c9752662eb4b8120a57454a323445d78d1463 roms/opensbi' in /home/nic/ocs-app/O=
s/build/downloads/git2/github.com.Xilinx.qemu.git<br />DEBUG: Running 'expo=
rt PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run=
/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-in=
tercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/=
bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2=
.7+git/recipe-sysroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/po=
ky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nat=
ive/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build=
/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/u=
sr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/=
8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x8=
6_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic=
/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; exp=
ort HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c=
 safe.bareRepository=3Dall ls-tree -z -d b05c9752662eb4b8120a57454a323445d7=
8d1463 roms/qboot' in /home/nic/ocs-app/Os/build/downloads/git2/github.com.=
Xilinx.qemu.git<br />DEBUG: Running 'export PSEUDO_DISABLED=3D1; export DBU=
S_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"/h=
ome/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-app/Os/build=
/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp=
/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/b=
in/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/bu=
ild/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-nativ=
e/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qem=
u-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/O=
s/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-n=
ative/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/=
tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/sb=
in:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.=
7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home=
/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"; git -c gc.=
autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall ls-tree=
 -z -d b05c9752662eb4b8120a57454a323445d78d1463 roms/vbootrom' in /home/nic=
/ocs-app/Os/build/downloads/git2/github.com.Xilinx.qemu.git<br />DEBUG: Run=
ning 'export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:p=
ath=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts=
/native-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-=
linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-=
native/8.2.7+git/recipe-sysroot-native/usr/bin/python3-native:/home/nic/ocs=
-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-=
xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/ni=
c/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recip=
e-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/q=
emu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-ap=
p/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroo=
t-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xili=
nx-native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/t=
mp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin=
:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hostt=
ools"; export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.page=
r=3Dcat -c safe.bareRepository=3Dall ls-tree -z -d b05c9752662eb4b8120a5745=
4a323445d78d1463 tests/lcitool/libvirt-ci' in /home/nic/ocs-app/Os/build/do=
wnloads/git2/github.com.Xilinx.qemu.git<br />DEBUG: Trying PREMIRRORS<br />=
DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/seabios.git/', '', ''=
, OrderedDict([('protocol', 'https'), ('name', 'roms/seabios'), ('subpath',=
 'roms/seabios'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]=
 comparing ['git', 'sourceware.org', '/git/glibc.git', '', '', OrderedDict(=
)] to ['https', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', O=
rderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/se=
abios.git/', '', '', OrderedDict([('protocol', 'https'), ('name', 'roms/sea=
bios'), ('subpath', 'roms/seabios'), ('nobranch', '1'), ('lfs', 'True'), ('=
bareclone', '1')])] comparing ['git', 'sourceware.org', '/git/binutils-gdb.=
git', '', '', OrderedDict()] to ['https', 'downloads.yoctoproject.org', '/m=
irror/sources/', '', '', OrderedDict()]<br />DEBUG: Trying Upstream<br />DE=
BUG: Fetcher accessed the network with the command LANG=3DC git -c gc.autoD=
etach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall clone --bare=
 --mirror https://gitlab.com/qemu-project/seabios.git/ /home/nic/ocs-app/Os=
/build/downloads/git2/gitlab.com.qemu-project.seabios.git. --progress<br />=
DEBUG: Running export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=
=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/po=
ky/scripts/native-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninati=
ve/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qe=
mu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/python3-native:/ho=
me/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-l=
inux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linu=
x:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7=
+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/=
nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/rec=
ipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build=
/tmp/hosttools"; export HOME=3D"/home/nic"; LANG=3DC git -c gc.autoDetach=
=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall clone --bare --mi=
rror https://gitlab.com/qemu-project/seabios.git/ /home/nic/ocs-app/Os/buil=
d/downloads/git2/gitlab.com.qemu-project.seabios.git. --progress<br />Cloni=
ng into bare repository '/home/nic/ocs-app/Os/build/downloads/git2/gitlab.c=
om.qemu-project.seabios.git.'...<br />remote: Enumerating objects: 16657, d=
one.<br />remote: Counting objects: 100% (76/76), done.<br />remote: Compre=
ssing objects: 100% (48/48), done.<br />remote: Total 16657 (delta 28), reu=
sed 76 (delta 28), pack-reused 16581 (from 1)<br />Receiving objects: 100% =
(16657/16657), 3.69 MiB | 18.87 MiB/s, done.<br />Resolving deltas: 100% (1=
3225/13225), done.<br />DEBUG: Running 'export PSEUDO_DISABLED=3D1; export =
DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D=
"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-app/Os/bu=
ild/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/=
tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/us=
r/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os=
/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-na=
tive/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/=
qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-ap=
p/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroo=
t-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xil=
inx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/bui=
ld/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native=
/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8=
.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/h=
ome/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"; git -c =
gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall log =
--pretty=3Doneline -n 1 a6ed6b701f0a57db0569ab98b0661c12a6ec3ff8 -- 2&gt; /=
dev/null | wc -l' in /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.q=
emu-project.seabios.git.<br />DEBUG: Running 'export PSEUDO_DISABLED=3D1; e=
xport DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export P=
ATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-app=
/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/=
build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-nat=
ive/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-=
app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysr=
oot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-=
linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/=
ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-=
sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qe=
mu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-na=
tive/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/=
bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"; g=
it -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dal=
l log --pretty=3Doneline -n 1 a6ed6b701f0a57db0569ab98b0661c12a6ec3ff8 -- 2=
&gt; /dev/null | wc -l' in /home/nic/ocs-app/Os/build/downloads/git2/gitlab=
.com.qemu-project.seabios.git.<br />DEBUG: Running 'export PSEUDO_DISABLED=
=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; e=
xport PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/=
ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-=
app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysr=
oot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/=
x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/ho=
me/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/=
recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-l=
inux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xi=
linx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/b=
itbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/home/=
nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareReposito=
ry=3Dall log --pretty=3Doneline -n 1 a6ed6b701f0a57db0569ab98b0661c12a6ec3f=
f8 -- 2&gt; /dev/null | wc -l' in /home/nic/ocs-app/Os/build/downloads/git2=
/gitlab.com.qemu-project.seabios.git.<br />DEBUG: Running 'export PSEUDO_DI=
SABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/b=
us"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/hom=
e/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/ni=
c/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recip=
e-sysroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/=
home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+gi=
t/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp=
/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/b=
in:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.=
7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x8=
6_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home=
/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/re=
cipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/q=
emu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/=
poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"=
/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRe=
pository=3Dall log --pretty=3Doneline -n 1 a6ed6b701f0a57db0569ab98b0661c12=
a6ec3ff8 -- 2&gt; /dev/null | wc -l' in /home/nic/ocs-app/Os/build/download=
s/git2/gitlab.com.qemu-project.seabios.git.<br />DEBUG: Running 'export PSE=
UDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/=
1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercep=
t:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/h=
ome/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git=
/recipe-sysroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scr=
ipts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.=
2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/bui=
ld/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native=
/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nativ=
e/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/w=
ork/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin=
:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+=
git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-l=
inux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-a=
pp/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HO=
ME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.=
bareRepository=3Dall log --pretty=3Doneline -n 1 a6ed6b701f0a57db0569ab98b0=
661c12a6ec3ff8 -- 2&gt; /dev/null | wc -l' in /home/nic/ocs-app/Os/build/do=
wnloads/git2/gitlab.com.qemu-project.seabios.git.<br />DEBUG: Running 'expo=
rt PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run=
/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-in=
tercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/=
bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2=
.7+git/recipe-sysroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/po=
ky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nat=
ive/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build=
/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/u=
sr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/=
8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x8=
6_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic=
/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; exp=
ort HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c=
 safe.bareRepository=3Dall show a6ed6b701f0a57db0569ab98b0661c12a6ec3ff8:.g=
itmodules' in /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-pro=
ject.seabios.git.<br />DEBUG: Running 'export PSEUDO_DISABLED=3D1; export D=
BUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"=
/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-app/Os/bui=
ld/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/t=
mp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr=
/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/=
build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-nat=
ive/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/q=
emu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app=
/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot=
-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xili=
nx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/buil=
d/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/=
sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.=
2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/ho=
me/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"; git -c g=
c.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall show =
a6ed6b701f0a57db0569ab98b0661c12a6ec3ff8:.gitmodules' in /home/nic/ocs-app/=
Os/build/downloads/git2/gitlab.com.qemu-project.seabios.git.<br />DEBUG: Tr=
ying PREMIRRORS<br />DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/=
SLOF.git', '', '', OrderedDict([('protocol', 'https'), ('name', 'roms/SLOF'=
), ('subpath', 'roms/SLOF'), ('nobranch', '1'), ('lfs', 'True'), ('bareclon=
e', '1')])] comparing ['git', 'sourceware.org', '/git/glibc.git', '', '', O=
rderedDict()] to ['https', 'downloads.yoctoproject.org', '/mirror/sources/'=
, '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com', '/qemu=
-project/SLOF.git', '', '', OrderedDict([('protocol', 'https'), ('name', 'r=
oms/SLOF'), ('subpath', 'roms/SLOF'), ('nobranch', '1'), ('lfs', 'True'), (=
'bareclone', '1')])] comparing ['git', 'sourceware.org', '/git/binutils-gdb=
.git', '', '', OrderedDict()] to ['https', 'downloads.yoctoproject.org', '/=
mirror/sources/', '', '', OrderedDict()]<br />DEBUG: Trying Upstream<br />D=
EBUG: Fetcher accessed the network with the command LANG=3DC git -c gc.auto=
Detach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall clone --bar=
e --mirror https://gitlab.com/qemu-project/SLOF.git /home/nic/ocs-app/Os/bu=
ild/downloads/git2/gitlab.com.qemu-project.SLOF.git --progress<br />DEBUG: =
Running export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix=
:path=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scrip=
ts/native-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_6=
4-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilin=
x-native/8.2.7+git/recipe-sysroot-native/usr/bin/python3-native:/home/nic/o=
cs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qem=
u-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/=
nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/rec=
ipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-=
app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysr=
oot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xi=
linx-native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build=
/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/b=
in:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hos=
ttools"; export HOME=3D"/home/nic"; LANG=3DC git -c gc.autoDetach=3Dfalse -=
c core.pager=3Dcat -c safe.bareRepository=3Dall clone --bare --mirror https=
://gitlab.com/qemu-project/SLOF.git /home/nic/ocs-app/Os/build/downloads/gi=
t2/gitlab.com.qemu-project.SLOF.git --progress<br />Cloning into bare repos=
itory '/home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.SL=
OF.git'...<br />remote: Enumerating objects: 8003, done.<br />remote: Count=
ing objects: 100% (3/3), done.<br />remote: Compressing objects: 100% (3/3)=
, done.<br />remote: Total 8003 (delta 0), reused 3 (delta 0), pack-reused =
8000 (from 1)<br />Receiving objects: 100% (8003/8003), 2.70 MiB | 29.36 Mi=
B/s, done.<br />Resolving deltas: 100% (5893/5893), done.<br />DEBUG: Runni=
ng 'export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:pat=
h=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/n=
ative-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-li=
nux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-na=
tive/8.2.7+git/recipe-sysroot-native/usr/bin/python3-native:/home/nic/ocs-a=
pp/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xi=
linx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/=
ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-=
sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qem=
u-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp=
/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/=
home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttoo=
ls"; export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=
=3Dcat -c safe.bareRepository=3Dall log --pretty=3Doneline -n 1 3a259df2449=
fc4a4e43ab5f33f0b2c66484b4bc3 -- 2&gt; /dev/null | wc -l' in /home/nic/ocs-=
app/Os/build/downloads/git2/gitlab.com.qemu-project.SLOF.git<br />DEBUG: Ru=
nning 'export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:=
path=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/script=
s/native-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64=
-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/usr/bin/python3-native:/home/nic/oc=
s-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu=
-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/=
qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xil=
inx-native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/=
tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bi=
n:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/host=
tools"; export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pag=
er=3Dcat -c safe.bareRepository=3Dall log --pretty=3Doneline -n 1 3a259df24=
49fc4a4e43ab5f33f0b2c66484b4bc3 -- 2&gt; /dev/null | wc -l' in /home/nic/oc=
s-app/Os/build/downloads/git2/gitlab.com.qemu-project.SLOF.git<br />DEBUG: =
Running 'export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"uni=
x:path=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scri=
pts/native-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_=
64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xili=
nx-native/8.2.7+git/recipe-sysroot-native/usr/bin/python3-native:/home/nic/=
ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qe=
mu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home=
/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/re=
cipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linu=
x/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs=
-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sys=
root-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-x=
ilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/buil=
d/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/=
bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/ho=
sttools"; export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.p=
ager=3Dcat -c safe.bareRepository=3Dall log --pretty=3Doneline -n 1 3a259df=
2449fc4a4e43ab5f33f0b2c66484b4bc3 -- 2&gt; /dev/null | wc -l' in /home/nic/=
ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.SLOF.git<br />DEBUG=
: Running 'export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"u=
nix:path=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/sc=
ripts/native-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x8=
6_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xi=
linx-native/8.2.7+git/recipe-sysroot-native/usr/bin/python3-native:/home/ni=
c/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/=
qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/ho=
me/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/=
recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-li=
nux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu=
-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/bu=
ild/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-nativ=
e/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/=
hosttools"; export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core=
.pager=3Dcat -c safe.bareRepository=3Dall log --pretty=3Doneline -n 1 3a259=
df2449fc4a4e43ab5f33f0b2c66484b4bc3 -- 2&gt; /dev/null | wc -l' in /home/ni=
c/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.SLOF.git<br />DEB=
UG: Running 'export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D=
"unix:path=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/=
scripts/native-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/=
x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-=
xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/python3-native:/home/=
nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linu=
x/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/=
home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+gi=
t/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-=
linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic=
/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe=
-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qe=
mu-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/=
build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-nat=
ive/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tm=
p/hosttools"; export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c co=
re.pager=3Dcat -c safe.bareRepository=3Dall log --pretty=3Doneline -n 1 3a2=
59df2449fc4a4e43ab5f33f0b2c66484b4bc3 -- 2&gt; /dev/null | wc -l' in /home/=
nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.SLOF.git<br />D=
EBUG: Running 'export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=
=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/po=
ky/scripts/native-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninati=
ve/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qe=
mu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/python3-native:/ho=
me/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-l=
inux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linu=
x:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7=
+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/=
nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/rec=
ipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build=
/tmp/hosttools"; export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c=
 core.pager=3Dcat -c safe.bareRepository=3Dall show 3a259df2449fc4a4e43ab5f=
33f0b2c66484b4bc3:.gitmodules' in /home/nic/ocs-app/Os/build/downloads/git2=
/gitlab.com.qemu-project.SLOF.git<br />DEBUG: Running 'export PSEUDO_DISABL=
ED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus";=
 export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/ni=
c/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/oc=
s-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sy=
sroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home=
/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/re=
cipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/wor=
k/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/=
home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+gi=
t/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64=
-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic=
/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe=
-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-=
xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky=
/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/hom=
e/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareReposi=
tory=3Dall show 3a259df2449fc4a4e43ab5f33f0b2c66484b4bc3:.gitmodules' in /h=
ome/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.SLOF.git<br=
 />DEBUG: Trying PREMIRRORS<br />DEBUG: For url ['gitsm', 'gitlab.com', '/q=
emu-project/ipxe.git', '', '', OrderedDict([('protocol', 'https'), ('name',=
 'roms/ipxe'), ('subpath', 'roms/ipxe'), ('nobranch', '1'), ('lfs', 'True')=
, ('bareclone', '1')])] comparing ['git', 'sourceware.org', '/git/glibc.git=
', '', '', OrderedDict()] to ['https', 'downloads.yoctoproject.org', '/mirr=
or/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.=
com', '/qemu-project/ipxe.git', '', '', OrderedDict([('protocol', 'https'),=
 ('name', 'roms/ipxe'), ('subpath', 'roms/ipxe'), ('nobranch', '1'), ('lfs'=
, 'True'), ('bareclone', '1')])] comparing ['git', 'sourceware.org', '/git/=
binutils-gdb.git', '', '', OrderedDict()] to ['https', 'downloads.yoctoproj=
ect.org', '/mirror/sources/', '', '', OrderedDict()]<br />DEBUG: Trying Ups=
tream<br />DEBUG: Fetcher accessed the network with the command LANG=3DC gi=
t -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall=
 clone --bare --mirror https://gitlab.com/qemu-project/ipxe.git /home/nic/o=
cs-app/Os/build/downloads/git2/gitlab.com.qemu-project.ipxe.git --progress<=
br />DEBUG: Running export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADD=
RESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/O=
s/poky/scripts/native-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uni=
native/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linu=
x/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/python3-native=
:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-=
linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8=
.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/=
x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/h=
ome/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git=
/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-l=
inux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-=
app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysr=
oot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/b=
uild/tmp/hosttools"; export HOME=3D"/home/nic"; LANG=3DC git -c gc.autoDeta=
ch=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall clone --bare --=
mirror https://gitlab.com/qemu-project/ipxe.git /home/nic/ocs-app/Os/build/=
downloads/git2/gitlab.com.qemu-project.ipxe.git --progress<br />Cloning int=
o bare repository '/home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qem=
u-project.ipxe.git'...<br />remote: Enumerating objects: 62594, done.<br />=
remote: Counting objects: 100% (356/356), done.<br />remote: Compressing ob=
jects: 100% (147/147), done.<br />remote: Total 62594 (delta 208), reused 3=
56 (delta 208), pack-reused 62238 (from 1)<br />Receiving objects: 100% (62=
594/62594), 18.79 MiB | 52.43 MiB/s, done.<br />Resolving deltas: 100% (474=
93/47493), done.<br />DEBUG: Running 'export PSEUDO_DISABLED=3D1; export DB=
US_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"/=
home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-app/Os/buil=
d/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tm=
p/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/=
bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/b=
uild/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-nati=
ve/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qe=
mu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilin=
x-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build=
/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/s=
bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2=
.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/hom=
e/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"; git -c gc=
.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall log --=
pretty=3Doneline -n 1 4bd064de239dab2426b31c9789a1f4d78087dc63 -- 2&gt; /de=
v/null | wc -l' in /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qem=
u-project.ipxe.git<br />DEBUG: Running 'export PSEUDO_DISABLED=3D1; export =
DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D=
"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-app/Os/bu=
ild/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/=
tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/us=
r/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os=
/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-na=
tive/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/=
qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-ap=
p/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroo=
t-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xil=
inx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/bui=
ld/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native=
/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8=
.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/h=
ome/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"; git -c =
gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall log =
--pretty=3Doneline -n 1 4bd064de239dab2426b31c9789a1f4d78087dc63 -- 2&gt; /=
dev/null | wc -l' in /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.q=
emu-project.ipxe.git<br />DEBUG: Running 'export PSEUDO_DISABLED=3D1; expor=
t DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=
=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-app/Os=
/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/bui=
ld/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native=
/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app=
/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot=
-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-lin=
ux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs=
-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sys=
root-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-=
xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/=
build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-nat=
ive/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nativ=
e/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin=
:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"; git =
-c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall l=
og --pretty=3Doneline -n 1 4bd064de239dab2426b31c9789a1f4d78087dc63 -- 2&gt=
; /dev/null | wc -l' in /home/nic/ocs-app/Os/build/downloads/git2/gitlab.co=
m.qemu-project.ipxe.git<br />DEBUG: Running 'export PSEUDO_DISABLED=3D1; ex=
port DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export PA=
TH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-app/=
Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/b=
uild/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-nati=
ve/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-l=
inux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qem=
u-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/O=
s/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-n=
ative/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nat=
ive/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/b=
in:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"; gi=
t -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall=
 log --pretty=3Doneline -n 1 4bd064de239dab2426b31c9789a1f4d78087dc63 -- 2&=
gt; /dev/null | wc -l' in /home/nic/ocs-app/Os/build/downloads/git2/gitlab.=
com.qemu-project.ipxe.git<br />DEBUG: Running 'export PSEUDO_DISABLED=3D1; =
export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export =
PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-ap=
p/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os=
/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-na=
tive/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs=
-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sys=
root-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64=
-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic=
/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe=
-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/q=
emu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app=
/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot=
-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-n=
ative/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake=
/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"; =
git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Da=
ll log --pretty=3Doneline -n 1 4bd064de239dab2426b31c9789a1f4d78087dc63 -- =
2&gt; /dev/null | wc -l' in /home/nic/ocs-app/Os/build/downloads/git2/gitla=
b.com.qemu-project.ipxe.git<br />DEBUG: Running 'export PSEUDO_DISABLED=3D1=
; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; expor=
t PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"=
; git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=
=3Dall show 4bd064de239dab2426b31c9789a1f4d78087dc63:.gitmodules' in /home/=
nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.ipxe.git<br />D=
EBUG: Running 'export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=
=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/po=
ky/scripts/native-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninati=
ve/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qe=
mu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/python3-native:/ho=
me/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-l=
inux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linu=
x:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7=
+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/=
nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/rec=
ipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build=
/tmp/hosttools"; export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c=
 core.pager=3Dcat -c safe.bareRepository=3Dall show 4bd064de239dab2426b31c9=
789a1f4d78087dc63:.gitmodules' in /home/nic/ocs-app/Os/build/downloads/git2=
/gitlab.com.qemu-project.ipxe.git<br />DEBUG: Trying PREMIRRORS<br />DEBUG:=
 For url ['gitsm', 'gitlab.com', '/qemu-project/openbios.git', '', '', Orde=
redDict([('protocol', 'https'), ('name', 'roms/openbios'), ('subpath', 'rom=
s/openbios'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])] com=
paring ['git', 'sourceware.org', '/git/glibc.git', '', '', OrderedDict()] t=
o ['https', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', Order=
edDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/openbi=
os.git', '', '', OrderedDict([('protocol', 'https'), ('name', 'roms/openbio=
s'), ('subpath', 'roms/openbios'), ('nobranch', '1'), ('lfs', 'True'), ('ba=
reclone', '1')])] comparing ['git', 'sourceware.org', '/git/binutils-gdb.gi=
t', '', '', OrderedDict()] to ['https', 'downloads.yoctoproject.org', '/mir=
ror/sources/', '', '', OrderedDict()]<br />DEBUG: Trying Upstream<br />DEBU=
G: Fetcher accessed the network with the command LANG=3DC git -c gc.autoDet=
ach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall clone --bare -=
-mirror https://gitlab.com/qemu-project/openbios.git /home/nic/ocs-app/Os/b=
uild/downloads/git2/gitlab.com.qemu-project.openbios.git --progress<br />DE=
BUG: Running export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D=
"unix:path=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/=
scripts/native-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/=
x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-=
xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/python3-native:/home/=
nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linu=
x/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/=
home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+gi=
t/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-=
linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic=
/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe=
-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qe=
mu-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/=
build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-nat=
ive/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tm=
p/hosttools"; export HOME=3D"/home/nic"; LANG=3DC git -c gc.autoDetach=3Dfa=
lse -c core.pager=3Dcat -c safe.bareRepository=3Dall clone --bare --mirror =
https://gitlab.com/qemu-project/openbios.git /home/nic/ocs-app/Os/build/dow=
nloads/git2/gitlab.com.qemu-project.openbios.git --progress<br />Cloning in=
to bare repository '/home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qe=
mu-project.openbios.git'...<br />remote: Enumerating objects: 15049, done.<=
br />remote: Counting objects: 100% (36/36), done.<br />remote: Compressing=
 objects: 100% (34/34), done.<br />remote: Total 15049 (delta 1), reused 36=
 (delta 1), pack-reused 15013 (from 1)<br />Receiving objects: 100% (15049/=
15049), 3.00 MiB | 54.84 MiB/s, done.<br />Resolving deltas: 100% (11131/11=
131), done.<br />DEBUG: Running 'export PSEUDO_DISABLED=3D1; export DBUS_SE=
SSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"/home/=
nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-app/Os/build/tmp=
/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/wor=
k/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/p=
ython3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/=
tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/us=
r/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xi=
linx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/bu=
ild/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-nativ=
e/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nat=
ive/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/=
work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/=
home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+gi=
t/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic=
/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"; git -c gc.auto=
Detach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall log --prett=
y=3Doneline -n 1 af97fd7af5e7c18f591a7b987291d3db4ffb28b5 -- 2&gt; /dev/nul=
l | wc -l' in /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-pro=
ject.openbios.git<br />DEBUG: Running 'export PSEUDO_DISABLED=3D1; export D=
BUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"=
/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-app/Os/bui=
ld/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/t=
mp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr=
/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/=
build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-nat=
ive/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/q=
emu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app=
/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot=
-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xili=
nx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/buil=
d/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/=
sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.=
2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/ho=
me/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"; git -c g=
c.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall log -=
-pretty=3Doneline -n 1 af97fd7af5e7c18f591a7b987291d3db4ffb28b5 -- 2&gt; /d=
ev/null | wc -l' in /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qe=
mu-project.openbios.git<br />DEBUG: Running 'export PSEUDO_DISABLED=3D1; ex=
port DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export PA=
TH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-app/=
Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/b=
uild/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-nati=
ve/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-l=
inux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qem=
u-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/O=
s/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-n=
ative/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nat=
ive/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/b=
in:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"; gi=
t -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall=
 log --pretty=3Doneline -n 1 af97fd7af5e7c18f591a7b987291d3db4ffb28b5 -- 2&=
gt; /dev/null | wc -l' in /home/nic/ocs-app/Os/build/downloads/git2/gitlab.=
com.qemu-project.openbios.git<br />DEBUG: Running 'export PSEUDO_DISABLED=
=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; e=
xport PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/=
ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-=
app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysr=
oot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/=
x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/ho=
me/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/=
recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-l=
inux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xi=
linx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/b=
itbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/home/=
nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareReposito=
ry=3Dall log --pretty=3Doneline -n 1 af97fd7af5e7c18f591a7b987291d3db4ffb28=
b5 -- 2&gt; /dev/null | wc -l' in /home/nic/ocs-app/Os/build/downloads/git2=
/gitlab.com.qemu-project.openbios.git<br />DEBUG: Running 'export PSEUDO_DI=
SABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/b=
us"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/hom=
e/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/ni=
c/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recip=
e-sysroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/=
home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+gi=
t/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp=
/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/b=
in:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.=
7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x8=
6_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home=
/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/re=
cipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/q=
emu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/=
poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"=
/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRe=
pository=3Dall log --pretty=3Doneline -n 1 af97fd7af5e7c18f591a7b987291d3db=
4ffb28b5 -- 2&gt; /dev/null | wc -l' in /home/nic/ocs-app/Os/build/download=
s/git2/gitlab.com.qemu-project.openbios.git<br />DEBUG: Running 'export PSE=
UDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/=
1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercep=
t:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/h=
ome/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git=
/recipe-sysroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scr=
ipts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.=
2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/bui=
ld/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native=
/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nativ=
e/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/w=
ork/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin=
:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+=
git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-l=
inux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-a=
pp/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HO=
ME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.=
bareRepository=3Dall show af97fd7af5e7c18f591a7b987291d3db4ffb28b5:.gitmodu=
les' in /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.o=
penbios.git<br />DEBUG: Running 'export PSEUDO_DISABLED=3D1; export DBUS_SE=
SSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"/home/=
nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-app/Os/build/tmp=
/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/wor=
k/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/p=
ython3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/=
tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/us=
r/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xi=
linx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/bu=
ild/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-nativ=
e/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nat=
ive/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/=
work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/=
home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+gi=
t/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic=
/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"; git -c gc.auto=
Detach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall show af97fd=
7af5e7c18f591a7b987291d3db4ffb28b5:.gitmodules' in /home/nic/ocs-app/Os/bui=
ld/downloads/git2/gitlab.com.qemu-project.openbios.git<br />DEBUG: Trying P=
REMIRRORS<br />DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/qemu-p=
alcode.git', '', '', OrderedDict([('protocol', 'https'), ('name', 'roms/qem=
u-palcode'), ('subpath', 'roms/qemu-palcode'), ('nobranch', '1'), ('lfs', '=
True'), ('bareclone', '1')])] comparing ['git', 'sourceware.org', '/git/gli=
bc.git', '', '', OrderedDict()] to ['https', 'downloads.yoctoproject.org', =
'/mirror/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'g=
itlab.com', '/qemu-project/qemu-palcode.git', '', '', OrderedDict([('protoc=
ol', 'https'), ('name', 'roms/qemu-palcode'), ('subpath', 'roms/qemu-palcod=
e'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])] comparing ['=
git', 'sourceware.org', '/git/binutils-gdb.git', '', '', OrderedDict()] to =
['https', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', Ordered=
Dict()]<br />DEBUG: Trying Upstream<br />DEBUG: Fetcher accessed the networ=
k with the command LANG=3DC git -c gc.autoDetach=3Dfalse -c core.pager=3Dca=
t -c safe.bareRepository=3Dall clone --bare --mirror https://gitlab.com/qem=
u-project/qemu-palcode.git /home/nic/ocs-app/Os/build/downloads/git2/gitlab=
.com.qemu-project.qemu-palcode.git --progress<br />DEBUG: Running export PS=
EUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user=
/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-interce=
pt:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/=
home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+gi=
t/recipe-sysroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/sc=
ripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8=
.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/bu=
ild/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-nativ=
e/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nati=
ve/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/=
work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bi=
n:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7=
+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-=
linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-=
app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export H=
OME=3D"/home/nic"; LANG=3DC git -c gc.autoDetach=3Dfalse -c core.pager=3Dca=
t -c safe.bareRepository=3Dall clone --bare --mirror https://gitlab.com/qem=
u-project/qemu-palcode.git /home/nic/ocs-app/Os/build/downloads/git2/gitlab=
.com.qemu-project.qemu-palcode.git --progress<br />Cloning into bare reposi=
tory '/home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.qem=
u-palcode.git'...<br />remote: Enumerating objects: 323, done.<br />remote:=
 Total 323 (delta 0), reused 0 (delta 0), pack-reused 323 (from 1)<br />Rec=
eiving objects: 100% (323/323), 155.85 KiB | 22.26 MiB/s, done.<br />Resolv=
ing deltas: 100% (207/207), done.<br />DEBUG: Running 'export PSEUDO_DISABL=
ED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus";=
 export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/ni=
c/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/oc=
s-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sy=
sroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home=
/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/re=
cipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/wor=
k/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/=
home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+gi=
t/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64=
-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic=
/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe=
-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-=
xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky=
/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/hom=
e/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareReposi=
tory=3Dall log --pretty=3Doneline -n 1 99d9b4dcf27d7fbcbadab71bdc88ef6531ba=
f6bf -- 2&gt; /dev/null | wc -l' in /home/nic/ocs-app/Os/build/downloads/gi=
t2/gitlab.com.qemu-project.qemu-palcode.git<br />DEBUG: Running 'export PSE=
UDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/=
1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercep=
t:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/h=
ome/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git=
/recipe-sysroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scr=
ipts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.=
2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/bui=
ld/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native=
/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nativ=
e/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/w=
ork/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin=
:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+=
git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-l=
inux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-a=
pp/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HO=
ME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.=
bareRepository=3Dall log --pretty=3Doneline -n 1 99d9b4dcf27d7fbcbadab71bdc=
88ef6531baf6bf -- 2&gt; /dev/null | wc -l' in /home/nic/ocs-app/Os/build/do=
wnloads/git2/gitlab.com.qemu-project.qemu-palcode.git<br />DEBUG: Running '=
export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D=
/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/nativ=
e-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/=
usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native=
/8.2.7+git/recipe-sysroot-native/usr/bin/python3-native:/home/nic/ocs-app/O=
s/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-=
app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysr=
oot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xi=
linx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/b=
uild/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-nati=
ve/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nat=
ive/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/wor=
k/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home=
/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools";=
 export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=3Dca=
t -c safe.bareRepository=3Dall log --pretty=3Doneline -n 1 99d9b4dcf27d7fbc=
badab71bdc88ef6531baf6bf -- 2&gt; /dev/null | wc -l' in /home/nic/ocs-app/O=
s/build/downloads/git2/gitlab.com.qemu-project.qemu-palcode.git<br />DEBUG:=
 Running 'export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"un=
ix:path=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scr=
ipts/native-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86=
_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xil=
inx-native/8.2.7+git/recipe-sysroot-native/usr/bin/python3-native:/home/nic=
/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/q=
emu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/hom=
e/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/r=
ecipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-lin=
ux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/oc=
s-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sy=
sroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-=
xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/bui=
ld/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native=
/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/h=
osttools"; export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.=
pager=3Dcat -c safe.bareRepository=3Dall log --pretty=3Doneline -n 1 99d9b4=
dcf27d7fbcbadab71bdc88ef6531baf6bf -- 2&gt; /dev/null | wc -l' in /home/nic=
/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.qemu-palcode.git<b=
r />DEBUG: Running 'export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADD=
RESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/O=
s/poky/scripts/native-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uni=
native/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linu=
x/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/python3-native=
:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-=
linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8=
.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/=
x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/h=
ome/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git=
/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-l=
inux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-=
app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysr=
oot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/b=
uild/tmp/hosttools"; export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfals=
e -c core.pager=3Dcat -c safe.bareRepository=3Dall log --pretty=3Doneline -=
n 1 99d9b4dcf27d7fbcbadab71bdc88ef6531baf6bf -- 2&gt; /dev/null | wc -l' in=
 /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.qemu-pal=
code.git<br />DEBUG: Running 'export PSEUDO_DISABLED=3D1; export DBUS_SESSI=
ON_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"/home/nic=
/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-app/Os/build/tmp/sy=
sroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x=
86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/pyth=
on3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp=
/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/b=
in/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilin=
x-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build=
/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/u=
sr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native=
/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/wor=
k/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/hom=
e/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/r=
ecipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/oc=
s-app/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"; git -c gc.autoDet=
ach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall show 99d9b4dcf=
27d7fbcbadab71bdc88ef6531baf6bf:.gitmodules' in /home/nic/ocs-app/Os/build/=
downloads/git2/gitlab.com.qemu-project.qemu-palcode.git<br />DEBUG: Running=
 'export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=
=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/na=
tive-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-lin=
ux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nat=
ive/8.2.7+git/recipe-sysroot-native/usr/bin/python3-native:/home/nic/ocs-ap=
p/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xil=
inx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu=
-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/O=
s/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-n=
ative/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-=
native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/=
work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/h=
ome/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttool=
s"; export HOME=3D"/home/nic"; git -c gc.autoDetach=3Dfalse -c core.pager=
=3Dcat -c safe.bareRepository=3Dall show 99d9b4dcf27d7fbcbadab71bdc88ef6531=
baf6bf:.gitmodules' in /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com=
.qemu-project.qemu-palcode.git<br />DEBUG: Trying PREMIRRORS<br />DEBUG: Fo=
r url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', '', OrderedDi=
ct([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath', 'roms/u-boo=
t'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])] comparing ['=
git', 'sourceware.org', '/git/glibc.git', '', '', OrderedDict()] to ['https=
', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]=
<br />DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', ''=
, '', OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpat=
h', 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')]=
)] comparing ['git', 'sourceware.org', '/git/binutils-gdb.git', '', '', Ord=
eredDict()] to ['https', 'downloads.yoctoproject.org', '/mirror/sources/', =
'', '', OrderedDict()]<br />DEBUG: Trying Upstream<br />DEBUG: Fetcher acce=
ssed the network with the command LANG=3DC git -c gc.autoDetach=3Dfalse -c =
core.pager=3Dcat -c safe.bareRepository=3Dall clone --bare --mirror https:/=
/gitlab.com/qemu-project/u-boot.git /home/nic/ocs-app/Os/build/downloads/gi=
t2/gitlab.com.qemu-project.u-boot.git --progress<br />DEBUG: Running export=
 PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/u=
ser/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-inte=
rcept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bi=
n:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7=
+git/recipe-sysroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky=
/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nativ=
e/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os=
/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-na=
tive/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-n=
ative/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/t=
mp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr=
/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.=
2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/o=
cs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; expor=
t HOME=3D"/home/nic"; LANG=3DC git -c gc.autoDetach=3Dfalse -c core.pager=
=3Dcat -c safe.bareRepository=3Dall clone --bare --mirror https://gitlab.co=
m/qemu-project/u-boot.git /home/nic/ocs-app/Os/build/downloads/git2/gitlab.=
com.qemu-project.u-boot.git --progress<br />Cloning into bare repository '/=
home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-project.u-boot.git=
'...<br />fatal: could not read Username for 'https://gitlab.com': No such =
device or address<br />WARNING: Failed to fetch URL gitsm://gitlab.com/qemu=
-project/u-boot.git;protocol=3Dhttps;name=3Droms/u-boot;subpath=3Droms/u-bo=
ot;nobranch=3D1;lfs=3DTrue;bareclone=3D1;nobranch=3D1, attempting MIRRORS i=
f available<br />DEBUG: Fetcher failure: Fetch command export PSEUDO_DISABL=
ED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus";=
 export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/ni=
c/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/oc=
s-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sy=
sroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home=
/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/re=
cipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/wor=
k/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/=
home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+gi=
t/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64=
-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic=
/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe=
-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-=
xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky=
/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/hom=
e/nic"; LANG=3DC git -c gc.autoDetach=3Dfalse<br />-c core.pager=3Dcat -c s=
afe.bareRepository=3Dall clone --bare --mirror https://gitlab.com/qemu-proj=
ect/u-boot.git /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-pr=
oject.u-boot.git --progress failed with exit code 128, see logfile for outp=
ut<br />DEBUG: Trying MIRRORS<br />DEBUG: For url ['gitsm', 'gitlab.com', '=
/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'), ('na=
me', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lfs',=
 'True'), ('bareclone', '1')])] comparing ['http', 'ftp.debian.org', '/debi=
an/pool', '', '', OrderedDict()] to ['http', 'snapshot.debian.org', '/archi=
ve/debian/20180310T215105Z/pool', '', '', OrderedDict()]<br />DEBUG: For ur=
l ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', '', OrderedDict([=
('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath', 'roms/u-boot'),=
 ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])] comparing ['http=
', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'sn=
apshot.debian.org', '/archive/debian-archive/20120328T092752Z/debian/pool',=
 '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-=
project/u-boot.git', '', '', OrderedDict([('protocol', 'https'), ('name', '=
roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True=
'), ('bareclone', '1')])] comparing ['http', 'ftp.debian.org', '/debian/poo=
l', '', '', OrderedDict()] to ['http', 'snapshot.debian.org', '/archive/deb=
ian-archive/20110127T084257Z/debian/pool', '', '', OrderedDict()]<br />DEBU=
G: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', '', Orde=
redDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath', 'roms/=
u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])] compari=
ng ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['h=
ttp', 'snapshot.debian.org', '/archive/debian-archive/20090802T004153Z/debi=
an/pool', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com'=
, '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'), (=
'name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lf=
s', 'True'), ('bareclone', '1')])] comparing ['http', 'ftp.debian.org', '/d=
ebian/pool', '', '', OrderedDict()] to ['http', 'ftp.de.debian.org', '/debi=
an/pool', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com'=
, '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'), (=
'name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lf=
s', 'True'), ('bareclone', '1')])] comparing ['http', 'ftp.debian.org', '/d=
ebian/pool', '', '', OrderedDict()] to ['http', 'ftp.au.debian.org', '/debi=
an/pool', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com'=
, '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'), (=
'name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lf=
s', 'True'), ('bareclone', '1')])] comparing ['http', 'ftp.debian.org', '/d=
ebian/pool', '', '', OrderedDict()] to ['http', 'ftp.cl.debian.org', '/debi=
an/pool', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com'=
, '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'), (=
'name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lf=
s', 'True'), ('bareclone', '1')])] comparing ['http', 'ftp.debian.org', '/d=
ebian/pool', '', '', OrderedDict()] to ['http', 'ftp.hr.debian.org', '/debi=
an/pool', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com'=
, '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'), (=
'name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lf=
s', 'True'), ('bareclone', '1')])] comparing ['http', 'ftp.debian.org', '/d=
ebian/pool', '', '', OrderedDict()] to ['http', 'ftp.fi.debian.org', '/debi=
an/pool', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com'=
, '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'), (=
'name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lf=
s', 'True'), ('bareclone', '1')])] comparing ['http', 'ftp.debian.org', '/d=
ebian/pool', '', '', OrderedDict()] to ['http', 'ftp.hk.debian.org', '/debi=
an/pool', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com'=
, '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'), (=
'name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lf=
s', 'True'), ('bareclone', '1')])] comparing ['http', 'ftp.debian.org', '/d=
ebian/pool', '', '', OrderedDict()] to ['http', 'ftp.hu.debian.org', '/debi=
an/pool', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com'=
, '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'), (=
'name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lf=
s', 'True'), ('bareclone', '1')])] comparing ['http', 'ftp.debian.org', '/d=
ebian/pool', '', '', OrderedDict()] to ['http', 'ftp.ie.debian.org', '/debi=
an/pool', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com'=
, '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'), (=
'name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lf=
s', 'True'), ('bareclone', '1')])] comparing ['http', 'ftp.debian.org', '/d=
ebian/pool', '', '', OrderedDict()] to ['http', 'ftp.it.debian.org', '/debi=
an/pool', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com'=
, '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'), (=
'name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lf=
s', 'True'), ('bareclone', '1')])] comparing ['http', 'ftp.debian.org', '/d=
ebian/pool', '', '', OrderedDict()] to ['http', 'ftp.jp.debian.org', '/debi=
an/pool', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com'=
, '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'), (=
'name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lf=
s', 'True'), ('bareclone', '1')])] comparing ['http', 'ftp.debian.org', '/d=
ebian/pool', '', '', OrderedDict()] to ['http', 'ftp.no.debian.org', '/debi=
an/pool', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com'=
, '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'), (=
'name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lf=
s', 'True'), ('bareclone', '1')])] comparing ['http', 'ftp.debian.org', '/d=
ebian/pool', '', '', OrderedDict()] to ['http', 'ftp.pl.debian.org', '/debi=
an/pool', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com'=
, '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'), (=
'name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lf=
s', 'True'), ('bareclone', '1')])] comparing ['http', 'ftp.debian.org', '/d=
ebian/pool', '', '', OrderedDict()] to ['http', 'ftp.ro.debian.org', '/debi=
an/pool', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com'=
, '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'), (=
'name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lf=
s', 'True'), ('bareclone', '1')])] comparing ['http', 'ftp.debian.org', '/d=
ebian/pool', '', '', OrderedDict()] to ['http', 'ftp.si.debian.org', '/debi=
an/pool', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com'=
, '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'), (=
'name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lf=
s', 'True'), ('bareclone', '1')])] comparing ['http', 'ftp.debian.org', '/d=
ebian/pool', '', '', OrderedDict()] to ['http', 'ftp.es.debian.org', '/debi=
an/pool', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com'=
, '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'), (=
'name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lf=
s', 'True'), ('bareclone', '1')])] comparing ['http', 'ftp.debian.org', '/d=
ebian/pool', '', '', OrderedDict()] to ['http', 'ftp.se.debian.org', '/debi=
an/pool', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com'=
, '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'), (=
'name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lf=
s', 'True'), ('bareclone', '1')])] comparing ['http', 'ftp.debian.org', '/d=
ebian/pool', '', '', OrderedDict()] to ['http', 'ftp.tr.debian.org', '/debi=
an/pool', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com'=
, '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'), (=
'name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lf=
s', 'True'), ('bareclone', '1')])] comparing ['https', 'ftp.gnu.org', '/gnu=
', '', '', OrderedDict()] to ['https', 'mirrors.kernel.org', '/gnu', '', ''=
, OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project=
/u-boot.git', '', '', OrderedDict([('protocol', 'https'), ('name', 'roms/u-=
boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('b=
areclone', '1')])] comparing ['https', 'cdn.kernel.org', '/pub', '', '', Or=
deredDict()] to ['http', 'www.kernel.org', '/pub', '', '', OrderedDict()]<b=
r />DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', =
'', OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath'=
, 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])]=
 comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '', OrderedDict()]=
 to ['ftp', 'ftp.gnupg.org', '/gcrypt', '', '', OrderedDict()]<br />DEBUG: =
For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', '', Ordered=
Dict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath', 'roms/u-b=
oot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])] comparing =
['https', 'www.gnupg.org', '/ftp/gcrypt', '', '', OrderedDict()] to ['ftp',=
 'ftp.franken.de', '/pub/crypt/mirror/ftp.gnupg.org/gcrypt', '', '', Ordere=
dDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.=
git', '', '', OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), =
('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone=
', '1')])] comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '', Orde=
redDict()] to ['ftp', 'mirrors.dotsrc.org', '/gcrypt', '', '', OrderedDict(=
)]<br />DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', =
'', '', OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subp=
ath', 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1'=
)])] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', '', OrderedDic=
t()] to ['ftp', 'ftp.fu-berlin.de', '/tex/CTAN', '', '', OrderedDict()]<br =
/>DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', ''=
, OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath', =
'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])] c=
omparing ['ftp', 'dante.ctan.org', '/tex-archive', '', '', OrderedDict()] t=
o ['http', 'sunsite.sut.ac.jp', '/pub/archives/ctan/', '', '', OrderedDict(=
)]<br />DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', =
'', '', OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subp=
ath', 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1'=
)])] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', '', OrderedDic=
t()] to ['http', 'ctan.unsw.edu.au', '/', '', '', OrderedDict()]<br />DEBUG=
: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', '', Order=
edDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath', 'roms/u=
-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])] comparin=
g ['ftp', 'ftp.gnutls.org', '/gcrypt/gnutls', '', '', OrderedDict()] to ['h=
ttps', 'www.gnupg.org', '/ftp/gcrypt/gnutls', '', '', OrderedDict()]<br />D=
EBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', '', O=
rderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath', 'ro=
ms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])] comp=
aring ['http', 'ftp.info-zip.org', '/pub/infozip/src/', '', '', OrderedDict=
()] to ['ftp', 'sunsite.icm.edu.pl', '/pub/unix/archiving/info-zip/src/', '=
', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-pr=
oject/u-boot.git', '', '', OrderedDict([('protocol', 'https'), ('name', 'ro=
ms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True')=
, ('bareclone', '1')])] comparing ['http', 'www.mirrorservice.org', '/sites=
/lsof.itap.purdue.edu/pub/tools/unix/lsof/', '', '', OrderedDict()] to ['ht=
tp', 'www.mirrorservice.org', '/sites/lsof.itap.purdue.edu/pub/tools/unix/l=
sof/OLD/', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com=
', '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'), =
('name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('l=
fs', 'True'), ('bareclone', '1')])] comparing ['https', 'archive.apache.org=
', '/dist', '', '', OrderedDict()] to ['http', 'www.us.apache.org', '/dist'=
, '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com', '/qemu=
-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'), ('name', =
'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'Tru=
e'), ('bareclone', '1')])] comparing ['https', 'archive.apache.org', '/dist=
', '', '', OrderedDict()] to ['http', 'archive.apache.org', '/dist', '', ''=
, OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project=
/u-boot.git', '', '', OrderedDict([('protocol', 'https'), ('name', 'roms/u-=
boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('b=
areclone', '1')])] comparing ['http', 'downloads.sourceforge.net', '/watchd=
og/', '', '', OrderedDict()] to ['http', 'fossies.org', '/linux/misc/', '',=
 '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-proj=
ect/u-boot.git', '', '', OrderedDict([('protocol', 'https'), ('name', 'roms=
/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), =
('bareclone', '1')])] comparing ['https', 'download.savannah.gnu.org', '/re=
leases', '', '', OrderedDict()] to ['http', 'download-mirror.savannah.gnu.o=
rg', '/releases', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'git=
lab.com', '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'ht=
tps'), ('name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1=
'), ('lfs', 'True'), ('bareclone', '1')])] comparing ['https', 'download.sa=
vannah.nongnu.org', '/releases', '', '', OrderedDict()] to ['http', 'downlo=
ad-mirror.savannah.nongnu.org', '/releases', '', '', OrderedDict()]<br />DE=
BUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', '', Or=
deredDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath', 'rom=
s/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])] compa=
ring ['ftp', 'sourceware.org', '/pub', '', '', OrderedDict()] to ['http', '=
mirrors.kernel.org', '/sourceware', '', '', OrderedDict()]<br />DEBUG: For =
url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', '', OrderedDict=
([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath', 'roms/u-boot'=
), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])] comparing ['ft=
p', 'sourceware.org', '/pub', '', '', OrderedDict()] to ['http', 'gd.tuwien=
.ac.at', '/gnu/sourceware', '', '', OrderedDict()]<br />DEBUG: For url ['gi=
tsm', 'gitlab.com', '/qemu-project/u-boot.git', '', '', OrderedDict([('prot=
ocol', 'https'), ('name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nob=
ranch', '1'), ('lfs', 'True'), ('bareclone', '1')])] comparing ['ftp', 'sou=
rceware.org', '/pub', '', '', OrderedDict()] to ['http', 'ftp.gwdg.de', '/p=
ub/linux/sources.redhat.com/sourceware', '', '', OrderedDict()]<br />DEBUG:=
 For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', '', Ordere=
dDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath', 'roms/u-=
boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])] comparing=
 ['cvs', '.*', '/.*', '', '', OrderedDict()] to ['http', 'downloads.yoctopr=
oject.org', '/mirror/sources/', '', '', OrderedDict()]<br />DEBUG: For url =
['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', '', OrderedDict([('=
protocol', 'https'), ('name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), (=
'nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])] comparing ['svn', =
'.*', '/.*', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org=
', '/mirror/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm',=
 'gitlab.com', '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol'=
, 'https'), ('name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch=
', '1'), ('lfs', 'True'), ('bareclone', '1')])] comparing ['git', '.*', '/.=
*', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org', '/mirr=
or/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.=
com', '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'=
), ('name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), =
('lfs', 'True'), ('bareclone', '1')])] comparing ['gitsm', '.*', '/.*', '',=
 '', OrderedDict()] to ['http', 'downloads.yoctoproject.org', '/mirror/sour=
ces/', '', '', OrderedDict()]<br />DEBUG: For url gitsm://gitlab.com/qemu-p=
roject/u-boot.git;protocol=3Dhttps;name=3Droms/u-boot;subpath=3Droms/u-boot=
;nobranch=3D1;lfs=3DTrue;bareclone=3D1;nobranch=3D1 returning http://downlo=
ads.yoctoproject.org/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git=
.tar.gz<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirror=
/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDi=
ct()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedD=
ict()] to ['http', 'snapshot.debian.org', '/archive/debian/20180310T215105Z=
/pool', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoct=
oproject.org', '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar=
.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/=
pool', '', '', OrderedDict()] to ['http', 'snapshot.debian.org', '/archive/=
debian-archive/20120328T092752Z/debian/pool', '', '', OrderedDict()]<br />D=
EBUG: For url ['http', 'downloads.yoctoproject.org', '/mirror/sources/git2_=
gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparin=
g ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['ht=
tp', 'snapshot.debian.org', '/archive/debian-archive/20110127T084257Z/debia=
n/pool', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoc=
toproject.org', '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.ta=
r.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian=
/pool', '', '', OrderedDict()] to ['http', 'snapshot.debian.org', '/archive=
/debian-archive/20090802T004153Z/debian/pool', '', '', OrderedDict()]<br />=
DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirror/sources/git2=
_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] compari=
ng ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['h=
ttp', 'ftp.de.debian.org', '/debian/pool', '', '', OrderedDict()]<br />DEBU=
G: For url ['http', 'downloads.yoctoproject.org', '/mirror/sources/git2_git=
lab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing [=
'http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http'=
, 'ftp.au.debian.org', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: F=
or url ['http', 'downloads.yoctoproject.org', '/mirror/sources/git2_gitlab.=
com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['htt=
p', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'f=
tp.cl.debian.org', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For u=
rl ['http', 'downloads.yoctoproject.org', '/mirror/sources/git2_gitlab.com.=
qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['http', =
'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.h=
r.debian.org', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url [=
'http', 'downloads.yoctoproject.org', '/mirror/sources/git2_gitlab.com.qemu=
-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp=
.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.fi.de=
bian.org', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['htt=
p', 'downloads.yoctoproject.org', '/mirror/sources/git2_gitlab.com.qemu-pro=
ject.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.deb=
ian.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.hk.debian=
.org', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['http', =
'downloads.yoctoproject.org', '/mirror/sources/git2_gitlab.com.qemu-project=
.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.=
org', '/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.hu.debian.org=
', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'dow=
nloads.yoctoproject.org', '/mirror/sources/git2_gitlab.com.qemu-project.u-b=
oot.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org'=
, '/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.ie.debian.org', '=
/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloa=
ds.yoctoproject.org', '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.=
git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/=
debian/pool', '', '', OrderedDict()] to ['http', 'ftp.it.debian.org', '/deb=
ian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.y=
octoproject.org', '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.=
tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/debi=
an/pool', '', '', OrderedDict()] to ['http', 'ftp.jp.debian.org', '/debian/=
pool', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yocto=
project.org', '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.=
gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/p=
ool', '', '', OrderedDict()] to ['http', 'ftp.no.debian.org', '/debian/pool=
', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproj=
ect.org', '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz',=
 '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool'=
, '', '', OrderedDict()] to ['http', 'ftp.pl.debian.org', '/debian/pool', '=
', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.=
org', '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '',=
 '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', ''=
, '', OrderedDict()] to ['http', 'ftp.ro.debian.org', '/debian/pool', '', '=
', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org'=
, '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',=
 OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', ''=
, OrderedDict()] to ['http', 'ftp.si.debian.org', '/debian/pool', '', '', O=
rderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/=
mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', Ord=
eredDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', Or=
deredDict()] to ['http', 'ftp.es.debian.org', '/debian/pool', '', '', Order=
edDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirr=
or/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', Ordered=
Dict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', Ordere=
dDict()] to ['http', 'ftp.se.debian.org', '/debian/pool', '', '', OrderedDi=
ct()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirror/s=
ources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict=
()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDic=
t()] to ['http', 'ftp.tr.debian.org', '/debian/pool', '', '', OrderedDict()=
]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirror/sourc=
es/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] =
comparing ['https', 'ftp.gnu.org', '/gnu', '', '', OrderedDict()] to ['http=
s', 'mirrors.kernel.org', '/gnu', '', '', OrderedDict()]<br />DEBUG: For ur=
l ['http', 'downloads.yoctoproject.org', '/mirror/sources/git2_gitlab.com.q=
emu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['https', =
'cdn.kernel.org', '/pub', '', '', OrderedDict()] to ['http', 'www.kernel.or=
g', '/pub', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.=
yoctoproject.org', '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git=
.tar.gz', '', '', OrderedDict()] comparing ['https', 'www.gnupg.org', '/ftp=
/gcrypt', '', '', OrderedDict()] to ['ftp', 'ftp.gnupg.org', '/gcrypt', '',=
 '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.or=
g', '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '=
', OrderedDict()] comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '=
', OrderedDict()] to ['ftp', 'ftp.franken.de', '/pub/crypt/mirror/ftp.gnupg=
.org/gcrypt', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'download=
s.yoctoproject.org', '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.g=
it.tar.gz', '', '', OrderedDict()] comparing ['https', 'www.gnupg.org', '/f=
tp/gcrypt', '', '', OrderedDict()] to ['ftp', 'mirrors.dotsrc.org', '/gcryp=
t', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctopro=
ject.org', '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz'=
, '', '', OrderedDict()] comparing ['ftp', 'dante.ctan.org', '/tex-archive'=
, '', '', OrderedDict()] to ['ftp', 'ftp.fu-berlin.de', '/tex/CTAN', '', ''=
, OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org',=
 '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', =
OrderedDict()] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', '', =
OrderedDict()] to ['http', 'sunsite.sut.ac.jp', '/pub/archives/ctan/', '', =
'', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org=
', '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', ''=
, OrderedDict()] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', ''=
, OrderedDict()] to ['http', 'ctan.unsw.edu.au', '/', '', '', OrderedDict()=
]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirror/sourc=
es/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] =
comparing ['ftp', 'ftp.gnutls.org', '/gcrypt/gnutls', '', '', OrderedDict()=
] to ['https', 'www.gnupg.org', '/ftp/gcrypt/gnutls', '', '', OrderedDict()=
]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirror/sourc=
es/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] =
comparing ['http', 'ftp.info-zip.org', '/pub/infozip/src/', '', '', Ordered=
Dict()] to ['ftp', 'sunsite.icm.edu.pl', '/pub/unix/archiving/info-zip/src/=
', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproj=
ect.org', '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz',=
 '', '', OrderedDict()] comparing ['http', 'www.mirrorservice.org', '/sites=
/lsof.itap.purdue.edu/pub/tools/unix/lsof/', '',<br />'', OrderedDict()] to=
 ['http', 'www.mirrorservice.org', '/sites/lsof.itap.purdue.edu/pub/tools/u=
nix/lsof/OLD/', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downlo=
ads.yoctoproject.org', '/mirror/sources/git2_gitlab.com.qemu-project.u-boot=
.git.tar.gz', '', '', OrderedDict()] comparing ['https', 'archive.apache.or=
g', '/dist', '', '', OrderedDict()] to ['http', 'www.us.apache.org', '/dist=
', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproj=
ect.org', '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz',=
 '', '', OrderedDict()] comparing ['https', 'archive.apache.org', '/dist', =
'', '', OrderedDict()] to ['http', 'archive.apache.org', '/dist', '', '', O=
rderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/=
mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', Ord=
eredDict()] comparing ['http', 'downloads.sourceforge.net', '/watchdog/', '=
', '', OrderedDict()] to ['http', 'fossies.org', '/linux/misc/', '', '', Or=
deredDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/m=
irror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', Orde=
redDict()] comparing ['https', 'download.savannah.gnu.org', '/releases', ''=
, '', OrderedDict()] to ['http', 'download-mirror.savannah.gnu.org', '/rele=
ases', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yocto=
project.org', '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.=
gz', '', '', OrderedDict()] comparing ['https', 'download.savannah.nongnu.o=
rg', '/releases', '', '', OrderedDict()] to ['http',<br />'download-mirror.=
savannah.nongnu.org', '/releases', '', '', OrderedDict()]<br />DEBUG: For u=
rl ['http', 'downloads.yoctoproject.org', '/mirror/sources/git2_gitlab.com.=
qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['ftp', '=
sourceware.org', '/pub', '', '', OrderedDict()] to ['http', 'mirrors.kernel=
.org', '/sourceware', '', '', OrderedDict()]<br />DEBUG: For url ['http', '=
downloads.yoctoproject.org', '/mirror/sources/git2_gitlab.com.qemu-project.=
u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['ftp', 'sourceware.or=
g', '/pub', '', '', OrderedDict()] to ['http', 'gd.tuwien.ac.at', '/gnu/sou=
rceware', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yo=
ctoproject.org', '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.t=
ar.gz', '', '', OrderedDict()] comparing ['ftp', 'sourceware.org', '/pub', =
'', '', OrderedDict()] to ['http', 'ftp.gwdg.de', '/pub/linux/sources.redha=
t.com/sourceware', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'dow=
nloads.yoctoproject.org', '/mirror/sources/git2_gitlab.com.qemu-project.u-b=
oot.git.tar.gz', '', '', OrderedDict()] comparing ['cvs', '.*', '/.*', '', =
'', OrderedDict()] to ['http', 'downloads.yoctoproject.org', '/mirror/sourc=
es/', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctop=
roject.org', '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.g=
z', '', '', OrderedDict()] comparing ['svn', '.*', '/.*', '', '', OrderedDi=
ct()] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',=
 OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', =
'/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', O=
rderedDict()] comparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['ht=
tp', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict(=
)]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirror/sour=
ces/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]=
 comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to ['http', 'download=
s.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]<br />DEBUG:=
 For url ['http', 'downloads.yoctoproject.org', '/mirror/sources/git2_gitla=
b.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['b=
zr', '.*', '/.*', '', '', OrderedDict()] to ['http', 'downloads.yoctoprojec=
t.org', '/mirror/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['ht=
tp', 'downloads.yoctoproject.org', '/mirror/sources/git2_gitlab.com.qemu-pr=
oject.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['p4', '.*', '/.=
*', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org', '/mirr=
or/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'download=
s.yoctoproject.org', '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.g=
it.tar.gz', '', '', OrderedDict()] comparing ['osc', '.*', '/.*', '', '', O=
rderedDict()] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/',=
 '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoprojec=
t.org', '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '=
', '', OrderedDict()] comparing ['https?', '.*', '/.*', '', '', OrderedDict=
()] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', O=
rderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/=
mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', Ord=
eredDict()] comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to ['http=
', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]=
<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirror/source=
s/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] c=
omparing ['npm', '.*', '/?.*', '', '', OrderedDict()] to ['http', 'download=
s.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]<br />DEBUG:=
 For url ['http', 'downloads.yoctoproject.org', '/mirror/sources/git2_gitla=
b.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['c=
vs', '.*', '/.*', '', '', OrderedDict()] to ['http', 'sources.openembedded.=
org', '/', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.y=
octoproject.org', '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.=
tar.gz', '', '', OrderedDict()] comparing ['svn', '.*', '/.*', '', '', Orde=
redDict()] to ['http', 'sources.openembedded.org', '/', '', '', OrderedDict=
()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirror/sou=
rces/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()=
] comparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['http', 'source=
s.openembedded.org', '/', '', '', OrderedDict()]<br />DEBUG: For url ['http=
', 'downloads.yoctoproject.org', '/mirror/sources/git2_gitlab.com.qemu-proj=
ect.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['gitsm', '.*', '/=
.*', '', '', OrderedDict()] to ['http', 'sources.openembedded.org', '/', ''=
, '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.o=
rg', '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', =
'', OrderedDict()] comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to =
['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]<br />DEBUG=
: For url ['http', 'downloads.yoctoproject.org', '/mirror/sources/git2_gitl=
ab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['=
bzr', '.*', '/.*', '', '', OrderedDict()] to ['http', 'sources.openembedded=
.org', '/', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.=
yoctoproject.org', '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git=
.tar.gz', '', '', OrderedDict()] comparing ['p4', '.*', '/.*', '', '', Orde=
redDict()] to ['http', 'sources.openembedded.org', '/', '', '', OrderedDict=
()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirror/sou=
rces/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()=
] comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to ['http', 'source=
s.openembedded.org', '/', '', '', OrderedDict()]<br />DEBUG: For url ['http=
', 'downloads.yoctoproject.org', '/mirror/sources/git2_gitlab.com.qemu-proj=
ect.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['https?', '.*', '=
/.*', '', '', OrderedDict()] to ['http', 'sources.openembedded.org', '/', '=
', '', OrderedDict()]<br />DEBUG: For url http://downloads.yoctoproject.org=
/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz returning ht=
tp://sources.openembedded.org/git2_gitlab.com.qemu-project.u-boot.git.tar.g=
z<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_gitlab.co=
m.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['http'=
, 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'sna=
pshot.debian.org', '/archive/debian/20180310T215105Z/pool', '', '', Ordered=
Dict()]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_git=
lab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing [=
'http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http'=
, 'snapshot.debian.org', '/archive/debian-archive/20120328T092752Z/debian/p=
ool', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'sources.openembe=
dded.org', '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', Order=
edDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', Orde=
redDict()] to ['http', 'snapshot.debian.org', '/archive/debian-archive/2011=
0127T084257Z/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['htt=
p', 'sources.openembedded.org', '/git2_gitlab.com.qemu-project.u-boot.git.t=
ar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/debia=
n/pool', '', '', OrderedDict()] to ['http', 'snapshot.debian.org', '/archiv=
e/debian-archive/20090802T004153Z/debian/pool', '', '', OrderedDict()]<br /=
>DEBUG: For url ['http', 'sources.openembedded.org', '/git2_gitlab.com.qemu=
-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp=
.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.de.de=
bian.org', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['htt=
p', 'sources.openembedded.org', '/git2_gitlab.com.qemu-project.u-boot.git.t=
ar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/debia=
n/pool', '', '', OrderedDict()] to ['http', 'ftp.au.debian.org', '/debian/p=
ool', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'sources.openembe=
dded.org', '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', Order=
edDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', Orde=
redDict()] to ['http', 'ftp.cl.debian.org', '/debian/pool', '', '', Ordered=
Dict()]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_git=
lab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing [=
'http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http'=
, 'ftp.hr.debian.org', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: F=
or url ['http', 'sources.openembedded.org', '/git2_gitlab.com.qemu-project.=
u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.o=
rg', '/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.fi.debian.org'=
, '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'sour=
ces.openembedded.org', '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '=
', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', =
'', '', OrderedDict()] to ['http', 'ftp.hk.debian.org', '/debian/pool', '',=
 '', OrderedDict()]<br />DEBUG: For url ['http', 'sources.openembedded.org'=
, '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()]=
 comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()=
] to ['http', 'ftp.hu.debian.org', '/debian/pool', '', '', OrderedDict()]<b=
r />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_gitlab.com.q=
emu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['http', '=
ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.ie=
.debian.org', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['=
http', 'sources.openembedded.org', '/git2_gitlab.com.qemu-project.u-boot.gi=
t.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/de=
bian/pool', '', '', OrderedDict()] to ['http', 'ftp.it.debian.org', '/debia=
n/pool', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'sources.opene=
mbedded.org', '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', Or=
deredDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', O=
rderedDict()] to ['http', 'ftp.jp.debian.org', '/debian/pool', '', '', Orde=
redDict()]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_=
gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparin=
g ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['ht=
tp', 'ftp.no.debian.org', '/debian/pool', '', '', OrderedDict()]<br />DEBUG=
: For url ['http', 'sources.openembedded.org', '/git2_gitlab.com.qemu-proje=
ct.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debia=
n.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.pl.debian.o=
rg', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['http', 's=
ources.openembedded.org', '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz'=
, '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool=
', '', '', OrderedDict()] to ['http', 'ftp.ro.debian.org', '/debian/pool', =
'', '', OrderedDict()]<br />DEBUG: For url ['http', 'sources.openembedded.o=
rg', '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict=
()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDic=
t()] to ['http', 'ftp.si.debian.org', '/debian/pool', '', '', OrderedDict()=
]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_gitlab.co=
m.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['http'=
, 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'ftp=
.es.debian.org', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url=
 ['http', 'sources.openembedded.org', '/git2_gitlab.com.qemu-project.u-boot=
.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '=
/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.se.debian.org', '/de=
bian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'sources.op=
enembedded.org', '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',=
 OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', ''=
, OrderedDict()] to ['http', 'ftp.tr.debian.org', '/debian/pool', '', '', O=
rderedDict()]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/gi=
t2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] compa=
ring ['https', 'ftp.gnu.org', '/gnu', '', '', OrderedDict()] to ['https', '=
mirrors.kernel.org', '/gnu', '', '',<br />OrderedDict()]<br />DEBUG: For ur=
l ['http', 'sources.openembedded.org', '/git2_gitlab.com.qemu-project.u-boo=
t.git.tar.gz', '', '', OrderedDict()] comparing ['https', 'cdn.kernel.org',=
 '/pub', '', '', OrderedDict()] to ['http', 'www.kernel.org', '/pub', '', '=
', OrderedDict()]<br />DEBUG: For url ['http', 'sources.openembedded.org', =
'/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] c=
omparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '', OrderedDict()] t=
o ['ftp', 'ftp.gnupg.org', '/gcrypt', '', '', OrderedDict()]<br />DEBUG: Fo=
r url ['http', 'sources.openembedded.org', '/git2_gitlab.com.qemu-project.u=
-boot.git.tar.gz', '', '', OrderedDict()] comparing ['https', 'www.gnupg.or=
g', '/ftp/gcrypt', '', '', OrderedDict()] to ['ftp', 'ftp.franken.de', '/pu=
b/crypt/mirror/ftp.gnupg.org/gcrypt', '', '', OrderedDict()]<br />DEBUG: Fo=
r url ['http', 'sources.openembedded.org', '/git2_gitlab.com.qemu-project.u=
-boot.git.tar.gz', '', '', OrderedDict()] comparing ['https', 'www.gnupg.or=
g', '/ftp/gcrypt', '', '', OrderedDict()] to ['ftp', 'mirrors.dotsrc.org', =
'/gcrypt', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'sources.ope=
nembedded.org', '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', =
OrderedDict()] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', '', =
OrderedDict()] to ['ftp', 'ftp.fu-berlin.de', '/tex/CTAN', '', '', OrderedD=
ict()]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_gitl=
ab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['=
ftp', 'dante.ctan.org', '/tex-archive', '', '', OrderedDict()] to ['http', =
'sunsite.sut.ac.jp', '/pub/archives/ctan/', '', '', OrderedDict()]<br />DEB=
UG: For url ['http', 'sources.openembedded.org', '/git2_gitlab.com.qemu-pro=
ject.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['ftp', 'dante.ct=
an.org', '/tex-archive', '', '', OrderedDict()] to ['http', 'ctan.unsw.edu.=
au', '/', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'sources.open=
embedded.org', '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', O=
rderedDict()] comparing ['ftp', 'ftp.gnutls.org', '/gcrypt/gnutls', '', '',=
 OrderedDict()] to ['https', 'www.gnupg.org', '/ftp/gcrypt/gnutls', '', '',=
 OrderedDict()]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/=
git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] com=
paring ['http', 'ftp.info-zip.org', '/pub/infozip/src/', '', '', OrderedDic=
t()] to ['ftp', 'sunsite.icm.edu.pl', '/pub/unix/archiving/info-zip/src/', =
'', '', OrderedDict()]<br />DEBUG: For url ['http', 'sources.openembedded.o=
rg', '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict=
()] comparing ['http', 'www.mirrorservice.org', '/sites/lsof.itap.purdue.ed=
u/pub/tools/unix/lsof/', '', '', OrderedDict()] to ['http', 'www.mirrorserv=
ice.org', '/sites/lsof.itap.purdue.edu/pub/tools/unix/lsof/OLD/', '', '', O=
rderedDict()]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/gi=
t2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] compa=
ring ['https', 'archive.apache.org', '/dist', '', '', OrderedDict()] to ['h=
ttp', 'www.us.apache.org', '/dist', '', '', OrderedDict()]<br />DEBUG: For =
url ['http', 'sources.openembedded.org', '/git2_gitlab.com.qemu-project.u-b=
oot.git.tar.gz', '', '', OrderedDict()] comparing ['https', 'archive.apache=
.org', '/dist', '', '', OrderedDict()] to ['http', 'archive.apache.org', '/=
dist',<br />'', '', OrderedDict()]<br />DEBUG: For url ['http', 'sources.op=
enembedded.org', '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',=
 OrderedDict()] comparing ['http', 'downloads.sourceforge.net', '/watchdog/=
', '', '', OrderedDict()] to ['http', 'fossies.org', '/linux/misc/', '', ''=
, OrderedDict()]<br />DEBUG: For url ['http', 'sources.openembedded.org', '=
/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] co=
mparing ['https', 'download.savannah.gnu.org', '/releases', '', '', Ordered=
Dict()] to ['http', 'download-mirror.savannah.gnu.org', '/releases', '', ''=
, OrderedDict()]<br />DEBUG: For url ['http', 'sources.openembedded.org', '=
/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] co=
mparing ['https', 'download.savannah.nongnu.org', '/releases', '', '', Orde=
redDict()] to ['http', 'download-mirror.savannah.nongnu.org', '/releases', =
'', '', OrderedDict()]<br />DEBUG: For url ['http', 'sources.openembedded.o=
rg', '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict=
()] comparing ['ftp', 'sourceware.org', '/pub', '', '', OrderedDict()] to [=
'http', 'mirrors.kernel.org', '/sourceware', '', '', OrderedDict()]<br />DE=
BUG: For url ['http', 'sources.openembedded.org', '/git2_gitlab.com.qemu-pr=
oject.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['ftp', 'sourcew=
are.org', '/pub', '', '', OrderedDict()] to ['http', 'gd.tuwien.ac.at', '/g=
nu/sourceware',<br />'', '', OrderedDict()]<br />DEBUG: For url ['http', 's=
ources.openembedded.org', '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz'=
, '', '', OrderedDict()] comparing ['ftp', 'sourceware.org', '/pub', '', ''=
, OrderedDict()] to ['http', 'ftp.gwdg.de', '/pub/linux/sources.redhat.com/=
sourceware', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'sources.o=
penembedded.org', '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', ''=
, OrderedDict()] comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to [=
'http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDi=
ct()]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_gitla=
b.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['s=
vn', '.*', '/.*', '', '', OrderedDict()] to ['http', 'downloads.yoctoprojec=
t.org', '/mirror/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['ht=
tp', 'sources.openembedded.org', '/git2_gitlab.com.qemu-project.u-boot.git.=
tar.gz', '', '', OrderedDict()] comparing ['git', '.*', '/.*', '', '', Orde=
redDict()] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', ''=
, '', OrderedDict()]<br />DEBUG: For url ['http', 'sources.openembedded.org=
', '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()=
] comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to ['http', 'downloa=
ds.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]<br />DEBUG=
: For url ['http', 'sources.openembedded.org', '/git2_gitlab.com.qemu-proje=
ct.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['bzr', '.*', '/.*'=
, '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org', '/mirror=
/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'sources.op=
enembedded.org', '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',=
 OrderedDict()] comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to ['h=
ttp', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict=
()]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_gitlab.=
com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['osc=
', '.*', '/.*', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.=
org', '/mirror/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['http=
', 'sources.openembedded.org', '/git2_gitlab.com.qemu-project.u-boot.git.ta=
r.gz', '', '', OrderedDict()] comparing ['https?', '.*', '/.*', '', '', Ord=
eredDict()] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '=
', '', OrderedDict()]<br />DEBUG: For url http://sources.openembedded.org/g=
it2_gitlab.com.qemu-project.u-boot.git.tar.gz returning http://downloads.yo=
ctoproject.org/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.g=
z<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_gitlab.co=
m.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['ftp',=
 '.*', '/.*', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.or=
g', '/mirror/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['http',=
 'sources.openembedded.org', '/git2_gitlab.com.qemu-project.u-boot.git.tar.=
gz', '', '', OrderedDict()] comparing ['npm', '.*', '/?.*', '', '', Ordered=
Dict()] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/',<br />=
'', '', OrderedDict()]<br />DEBUG: For url ['http', 'sources.openembedded.o=
rg', '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict=
()] comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to ['http', 'sour=
ces.openembedded.org', '/', '', '', OrderedDict()]<br />DEBUG: For url ['ht=
tp', 'sources.openembedded.org', '/git2_gitlab.com.qemu-project.u-boot.git.=
tar.gz', '', '', OrderedDict()] comparing ['svn', '.*', '/.*', '', '', Orde=
redDict()] to ['http', 'sources.openembedded.org', '/', '', '', OrderedDict=
()]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_gitlab.=
com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['git=
', '.*', '/.*', '', '', OrderedDict()] to ['http', 'sources.openembedded.or=
g', '/', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'sources.opene=
mbedded.org', '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', Or=
deredDict()] comparing ['gitsm', '.*', '/.*', '', '', OrderedDict()] to ['h=
ttp', 'sources.openembedded.org', '/', '', '', OrderedDict()]<br />DEBUG: F=
or url ['http', 'sources.openembedded.org', '/git2_gitlab.com.qemu-project.=
u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['hg', '.*', '/.*', ''=
, '', OrderedDict()] to ['http', 'sources.openembedded.org', '/', '', '', O=
rderedDict()]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/gi=
t2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] compa=
ring ['bzr', '.*', '/.*', '', '', OrderedDict()] to ['http', 'sources.opene=
mbedded.org', '/', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'sou=
rces.openembedded.org', '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', =
'', '', OrderedDict()] comparing ['p4', '.*', '/.*', '', '', OrderedDict()]=
 to ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]<br />D=
EBUG: For url ['http', 'sources.openembedded.org', '/git2_gitlab.com.qemu-p=
roject.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['osc', '.*', '=
/.*', '', '', OrderedDict()] to ['http', 'sources.openembedded.org', '/', '=
', '', OrderedDict()]<br />DEBUG: For url ['http', 'sources.openembedded.or=
g', '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict(=
)] comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to ['http', 'sourc=
es.openembedded.org', '/', '', '', OrderedDict()]<br />DEBUG: For url ['htt=
p', 'sources.openembedded.org', '/git2_gitlab.com.qemu-project.u-boot.git.t=
ar.gz', '', '', OrderedDict()] comparing ['npm', '.*', '/?.*', '', '', Orde=
redDict()] to ['http', 'sources.openembedded.org', '/', '', '', OrderedDict=
()]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_gitlab.=
com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['htt=
ps', 'search.cpan.org', '/CPAN', '', '', OrderedDict()] to ['https', 'cpan.=
metacpan.org', '/', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'so=
urces.openembedded.org', '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz',=
 '', '', OrderedDict()] comparing ['https?', 'downloads.yoctoproject.org', =
'/releases/uninative/', '', '', OrderedDict()] to ['https', 'mirrors.kernel=
.org', '/yocto/uninative/', '', '', OrderedDict()]<br />DEBUG: For url ['ht=
tp', 'sources.openembedded.org', '/git2_gitlab.com.qemu-project.u-boot.git.=
tar.gz', '', '', OrderedDict()] comparing ['https?', 'downloads.yoctoprojec=
t.org', '/mirror/sources/', '', '', OrderedDict()] to ['https', 'mirrors.ke=
rnel.org', '/yocto-sources/', '', '', OrderedDict()]<br />DEBUG: For url ['=
http', 'sources.openembedded.org', '/git2_gitlab.com.qemu-project.u-boot.gi=
t.tar.gz', '', '', OrderedDict()] comparing ['git', 'salsa.debian.org', '/.=
*', '', '', OrderedDict()] to ['git', 'salsa.debian.org', '/PATH', '', '', =
OrderedDict([('protocol', 'https')])]<br />DEBUG: For url ['http', 'sources=
.openembedded.org', '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', =
'', OrderedDict()] comparing ['git', 'git.gnome.org', '/.*', '', '', Ordere=
dDict()] to ['git', 'gitlab.gnome.org', '/GNOME/PATH', '', '', OrderedDict(=
[('protocol', 'https')])]<br />DEBUG: For url ['http', 'sources.openembedde=
d.org', '/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedD=
ict()] comparing ['git', 'git.infradead.org', '/.*', '', '', OrderedDict()]=
 to ['git', 'git.infraroot.at', '/PATH', '', '',<br />OrderedDict([('protoc=
ol', 'https')])]<br />DEBUG: For url ['http', 'sources.openembedded.org', '=
/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] co=
mparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['git', 'HOST', '/PA=
TH', '', '', OrderedDict([('protocol', 'https')])]<br />DEBUG: For url ['ht=
tp', 'sources.openembedded.org', '/git2_gitlab.com.qemu-project.u-boot.git.=
tar.gz', '', '', OrderedDict()] comparing ['git', '.*', '/.*', '', '', Orde=
redDict()] to ['git', 'HOST', '/git/PATH', '', '', OrderedDict([('protocol'=
, 'https')])]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/=
mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', Ord=
eredDict()] comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to ['http=
', 'sources.openembedded.org', '/', '', '', OrderedDict()]<br />DEBUG: For =
url ['http', 'downloads.yoctoproject.org', '/mirror/sources/git2_gitlab.com=
.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['npm', =
'.*', '/?.*', '', '', OrderedDict()] to ['http', 'sources.openembedded.org'=
, '/',<br />'', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.=
yoctoproject.org', '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git=
.tar.gz', '', '', OrderedDict()] comparing ['https', 'search.cpan.org', '/C=
PAN', '', '', OrderedDict()] to ['https', 'cpan.metacpan.org', '/', '', '',=
 OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', =
'/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', O=
rderedDict()] comparing ['https?', 'downloads.yoctoproject.org', '/releases=
/uninative/', '', '', OrderedDict()] to ['https', 'mirrors.kernel.org', '/y=
octo/uninative/', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'down=
loads.yoctoproject.org', '/mirror/sources/git2_gitlab.com.qemu-project.u-bo=
ot.git.tar.gz', '', '', OrderedDict()] comparing ['https?', 'downloads.yoct=
oproject.org', '/mirror/sources/', '', '', OrderedDict()] to ['https', 'mir=
rors.kernel.org', '/yocto-sources/', '', '', OrderedDict()]<br />DEBUG: For=
 url http://downloads.yoctoproject.org/mirror/sources/git2_gitlab.com.qemu-=
project.u-boot.git.tar.gz returning https://mirrors.kernel.org/yocto-source=
s/git2_gitlab.com.qemu-project.u-boot.git.tar.gz<br />DEBUG: For url ['http=
s', 'mirrors.kernel.org', '/yocto-sources/git2_gitlab.com.qemu-project.u-bo=
ot.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org',=
 '/debian/pool', '', '', OrderedDict()] to ['http', 'snapshot.debian.org', =
'/archive/debian/20180310T215105Z/pool', '', '', OrderedDict()]<br />DEBUG:=
 For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_gitlab.com.qe=
mu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'f=
tp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'snapsho=
t.debian.org', '/archive/debian-archive/20120328T092752Z/debian/pool', '', =
'', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yo=
cto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', Ordere=
dDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', Order=
edDict()] to ['http', 'snapshot.debian.org', '/archive/debian-archive/20110=
127T084257Z/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['http=
s', 'mirrors.kernel.org', '/yocto-sources/git2_gitlab.com.qemu-project.u-bo=
ot.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org',=
 '/debian/pool', '', '', OrderedDict()] to ['http', 'snapshot.debian.org', =
'/archive/debian-archive/20090802T004153Z/debian/pool', '', '', OrderedDict=
()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git=
2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] compar=
ing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['=
http', 'ftp.de.debian.org', '/debian/pool', '', '', OrderedDict()]<br />DEB=
UG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_gitlab.com=
.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['http',=
 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.=
au.debian.org', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url =
['https', 'mirrors.kernel.org', '/yocto-sources/git2_gitlab.com.qemu-projec=
t.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian=
.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.cl.debian.or=
g', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['https', 'm=
irrors.kernel.org', '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git=
.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/deb=
ian/pool', '', '', OrderedDict()] to ['http', 'ftp.hr.debian.org', '/debian=
/pool', '', '', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kerne=
l.org', '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', ''=
, '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '=
', '', OrderedDict()] to ['http', 'ftp.fi.debian.org', '/debian/pool', '', =
'', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yo=
cto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', Ordere=
dDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', Order=
edDict()] to ['http', 'ftp.hk.debian.org', '/debian/pool', '', '', OrderedD=
ict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/=
git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] com=
paring ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to=
 ['http', 'ftp.hu.debian.org', '/debian/pool', '', '', OrderedDict()]<br />=
DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_gitlab.=
com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['htt=
p', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'f=
tp.ie.debian.org', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For u=
rl ['https', 'mirrors.kernel.org', '/yocto-sources/git2_gitlab.com.qemu-pro=
ject.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.deb=
ian.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.it.debian=
.org', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['https',=
 'mirrors.kernel.org', '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.=
git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/=
debian/pool', '', '', OrderedDict()] to ['http', 'ftp.jp.debian.org', '/deb=
ian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.ke=
rnel.org', '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz',=
 '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool'=
, '', '', OrderedDict()] to ['http', 'ftp.no.debian.org', '/debian/pool', '=
', '', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '=
/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', Ord=
eredDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', Or=
deredDict()] to ['http', 'ftp.pl.debian.org', '/debian/pool', '', '', Order=
edDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sourc=
es/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] =
comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()]=
 to ['http', 'ftp.ro.debian.org', '/debian/pool', '', '', OrderedDict()]<br=
 />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_gitl=
ab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['=
http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http',=
 'ftp.si.debian.org', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: Fo=
r url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_gitlab.com.qemu-=
project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.=
debian.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.es.deb=
ian.org', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['http=
s', 'mirrors.kernel.org', '/yocto-sources/git2_gitlab.com.qemu-project.u-bo=
ot.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org',=
 '/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.se.debian.org', '/=
debian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors=
.kernel.org', '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.g=
z', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/po=
ol', '', '', OrderedDict()] to ['http', 'ftp.tr.debian.org', '/debian/pool'=
, '', '', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org'=
, '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', =
OrderedDict()] comparing ['https', 'ftp.gnu.org', '/gnu', '', '', OrderedDi=
ct()] to ['https', 'mirrors.kernel.org', '/gnu', '', '', OrderedDict()]<br =
/>DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_gitla=
b.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['h=
ttps', 'cdn.kernel.org', '/pub', '', '', OrderedDict()] to ['http', 'www.ke=
rnel.org', '/pub', '', '', OrderedDict()]<br />DEBUG: For url ['https', 'mi=
rrors.kernel.org', '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.=
tar.gz', '', '', OrderedDict()] comparing ['https', 'www.gnupg.org', '/ftp/=
gcrypt', '', '', OrderedDict()] to ['ftp', 'ftp.gnupg.org', '/gcrypt', '', =
'', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yo=
cto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', Ordere=
dDict()] comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '', Ordere=
dDict()] to ['ftp', 'ftp.franken.de', '/pub/crypt/mirror/ftp.gnupg.org/gcry=
pt', '', '', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.o=
rg', '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '=
', OrderedDict()] comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '=
', OrderedDict()] to ['ftp', 'mirrors.dotsrc.org',<br />'/gcrypt', '', '', =
OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-=
sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDic=
t()] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', '', OrderedDic=
t()] to ['ftp', 'ftp.fu-berlin.de', '/tex/CTAN', '', '', OrderedDict()]<br =
/>DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_gitla=
b.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['f=
tp', 'dante.ctan.org', '/tex-archive', '', '', OrderedDict()] to ['http', '=
sunsite.sut.ac.jp',<br />'/pub/archives/ctan/', '', '', OrderedDict()]<br /=
>DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_gitlab=
.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['ft=
p', 'dante.ctan.org', '/tex-archive', '', '', OrderedDict()] to ['http', 'c=
tan.unsw.edu.au', '/', '', '', OrderedDict()]<br />DEBUG: For url ['https',=
 'mirrors.kernel.org', '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.=
git.tar.gz', '', '', OrderedDict()] comparing ['ftp', 'ftp.gnutls.org', '/g=
crypt/gnutls', '', '', OrderedDict()] to ['https', 'www.gnupg.org', '/ftp/g=
crypt/gnutls', '', '', OrderedDict()]<br />DEBUG: For url ['https', 'mirror=
s.kernel.org', '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.=
gz', '', '', OrderedDict()] comparing ['http', 'ftp.info-zip.org', '/pub/in=
fozip/src/', '', '', OrderedDict()] to ['ftp', 'sunsite.icm.edu.pl', '/pub/=
unix/archiving/info-zip/src/', '', '', OrderedDict()]<br />DEBUG: For url [=
'https', 'mirrors.kernel.org', '/yocto-sources/git2_gitlab.com.qemu-project=
.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'www.mirrors=
ervice.org', '/sites/lsof.itap.purdue.edu/pub/tools/unix/lsof/', '', '', Or=
deredDict()] to ['http', 'www.mirrorservice.org', '/sites/lsof.itap.purdue.=
edu/pub/tools/unix/lsof/OLD/', '', '', OrderedDict()]<br />DEBUG: For url [=
'https', 'mirrors.kernel.org', '/yocto-sources/git2_gitlab.com.qemu-project=
.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['https', 'archive.ap=
ache.org', '/dist', '', '', OrderedDict()] to ['http', 'www.us.apache.org',=
 '/dist', '', '', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.ker=
nel.org', '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', =
'', '', OrderedDict()] comparing ['https', 'archive.apache.org', '/dist', '=
', '', OrderedDict()] to ['http', 'archive.apache.org',<br />'/dist', '', '=
', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yoc=
to-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', Ordered=
Dict()] comparing ['http', 'downloads.sourceforge.net', '/watchdog/', '', '=
', OrderedDict()] to ['http', 'fossies.org', '/linux/misc/', '', '', Ordere=
dDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-source=
s/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] c=
omparing ['https', 'download.savannah.gnu.org', '/releases', '', '', Ordere=
dDict()] to ['http', 'download-mirror.savannah.gnu.org', '/releases', '', '=
', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yoc=
to-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', Ordered=
Dict()] comparing ['https', 'download.savannah.nongnu.org', '/releases', ''=
, '', OrderedDict()] to ['http', 'download-mirror.savannah.nongnu.org', '/r=
eleases', '', '', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.ker=
nel.org', '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', =
'', '', OrderedDict()] comparing ['ftp', 'sourceware.org', '/pub', '', '', =
OrderedDict()] to ['http', 'mirrors.kernel.org', '/sourceware', '', '', Ord=
eredDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sou=
rces/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()=
] comparing ['ftp', 'sourceware.org', '/pub', '', '', OrderedDict()] to ['h=
ttp', 'gd.tuwien.ac.at', '/gnu/sourceware', '', '', OrderedDict()]<br />DEB=
UG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_gitlab.com=
.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['ftp', =
'sourceware.org', '/pub', '', '', OrderedDict()] to ['http', 'ftp.gwdg.de',=
 '/pub/linux/sources.redhat.com/sourceware', '', '', OrderedDict()]<br />DE=
BUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_gitlab.co=
m.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['cvs',=
 '.*', '/.*', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.or=
g', '/mirror/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['https'=
, 'mirrors.kernel.org', '/yocto-sources/git2_gitlab.com.qemu-project.u-boot=
.git.tar.gz', '', '', OrderedDict()] comparing ['svn', '.*', '/.*', '', '',=
 OrderedDict()] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/=
', '', '', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org=
', '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '',=
 OrderedDict()] comparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['=
http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDic=
t()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/gi=
t2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] compa=
ring ['hg', '.*', '/.*', '', '', OrderedDict()] to ['http', 'downloads.yoct=
oproject.org', '/mirror/sources/', '', '', OrderedDict()]<br />DEBUG: For u=
rl ['https', 'mirrors.kernel.org', '/yocto-sources/git2_gitlab.com.qemu-pro=
ject.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['bzr', '.*', '/.=
*', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org', '/mirr=
or/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors=
.kernel.org', '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.g=
z', '', '', OrderedDict()] comparing ['p4', '.*', '/.*', '', '', OrderedDic=
t()] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', =
OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-=
sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDic=
t()] comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to ['http', 'dow=
nloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]<br />D=
EBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_gitlab.c=
om.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['http=
s?', '.*', '/.*', '', '', OrderedDict()] to ['http', 'downloads.yoctoprojec=
t.org', '/mirror/sources/', '', '', OrderedDict()]<br />DEBUG: For url http=
s://mirrors.kernel.org/yocto-sources/git2_gitlab.com.qemu-project.u-boot.gi=
t.tar.gz returning http://downloads.yoctoproject.org/mirror/sources/git2_gi=
tlab.com.qemu-project.u-boot.git.tar.gz<br />DEBUG: For url ['https', 'mirr=
ors.kernel.org', '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.ta=
r.gz', '', '', OrderedDict()] comparing ['ftp', '.*', '/.*', '', '', Ordere=
dDict()] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', =
'', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yo=
cto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', Ordere=
dDict()] comparing ['npm', '.*', '/?.*', '', '', OrderedDict()] to ['http',=
 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]<b=
r />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_git=
lab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing [=
'cvs', '.*', '/.*', '', '', OrderedDict()] to ['http', 'sources.openembedde=
d.org', '/', '', '', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.=
kernel.org', '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz=
', '', '', OrderedDict()] comparing ['svn', '.*', '/.*', '', '', OrderedDic=
t()] to ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]<br=
 />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_gitl=
ab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['=
git', '.*', '/.*', '', '', OrderedDict()] to ['http', 'sources.openembedded=
.org', '/', '', '', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.k=
ernel.org', '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz'=
, '', '', OrderedDict()] comparing ['gitsm', '.*', '/.*', '', '', OrderedDi=
ct()] to ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]<b=
r />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_git=
lab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing [=
'hg', '.*', '/.*', '', '', OrderedDict()] to ['http', 'sources.openembedded=
.org', '/', '', '', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.k=
ernel.org', '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz'=
, '', '', OrderedDict()] comparing ['bzr', '.*', '/.*', '', '', OrderedDict=
()] to ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]<br =
/>DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_gitla=
b.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['p=
4', '.*', '/.*', '', '', OrderedDict()] to ['http', 'sources.openembedded.o=
rg', '/', '', '', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.ker=
nel.org', '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', =
'', '', OrderedDict()] comparing ['osc', '.*', '/.*', '', '', OrderedDict()=
] to ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]<br />=
DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_gitlab.=
com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['htt=
ps?', '.*', '/.*', '', '', OrderedDict()] to ['http', 'sources.openembedded=
.org', '/', '', '', OrderedDict()]<br />DEBUG: For url https://mirrors.kern=
el.org/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz returni=
ng http://sources.openembedded.org/git2_gitlab.com.qemu-project.u-boot.git.=
tar.gz<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/=
git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] com=
paring ['ftp', '.*', '/.*', '', '', OrderedDict()] to ['http', 'sources.ope=
nembedded.org', '/', '', '', OrderedDict()]<br />DEBUG: For url ['https', '=
mirrors.kernel.org', '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.gi=
t.tar.gz', '', '', OrderedDict()] comparing ['npm', '.*', '/?.*', '', '', O=
rderedDict()] to ['http', 'sources.openembedded.org', '/', '', '',<br />Ord=
eredDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sou=
rces/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()=
] comparing ['https', 'search.cpan.org', '/CPAN', '', '', OrderedDict()] to=
 ['https', 'cpan.metacpan.org', '/', '', '', OrderedDict()]<br />DEBUG: For=
 url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_gitlab.com.qemu-p=
roject.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['https?', 'dow=
nloads.yoctoproject.org', '/releases/uninative/', '', '', OrderedDict()] to=
 ['https', 'mirrors.kernel.org', '/yocto/uninative/', '', '', OrderedDict()=
]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_=
gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparin=
g ['git', 'salsa.debian.org', '/.*', '', '', OrderedDict()] to ['git', 'sal=
sa.debian.org', '/PATH',<br />'', '', OrderedDict([('protocol', 'https')])]=
<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_g=
itlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing=
 ['git', 'git.gnome.org', '/.*', '', '', OrderedDict()] to ['git', 'gitlab.=
gnome.org', '/GNOME/PATH', '', '', OrderedDict([('protocol', 'https')])]<br=
 />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_gitl=
ab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['=
git', 'git.infradead.org', '/.*', '', '', OrderedDict()] to ['git', 'git.in=
fraroot.at', '/PATH', '', '', OrderedDict([('protocol', 'https')])]<br />DE=
BUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_gitlab.co=
m.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] comparing ['git',=
 '.*', '/.*', '', '', OrderedDict()] to ['git', 'HOST', '/PATH', '', '', Or=
deredDict([('protocol', 'https')])]<br />DEBUG: For url ['https', 'mirrors.=
kernel.org', '/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz=
', '', '', OrderedDict()] comparing ['git', '.*', '/.*', '', '', OrderedDic=
t()] to ['git', 'HOST', '/git/PATH', '', '', OrderedDict([('protocol', 'htt=
ps')])]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirror=
/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDi=
ct()] comparing ['git', 'salsa.debian.org', '/.*', '', '', OrderedDict()] t=
o ['git', 'salsa.debian.org', '/PATH', '', '', OrderedDict([('protocol', 'h=
ttps')])]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirr=
or/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', Ordered=
Dict()] comparing ['git', 'git.gnome.org', '/.*', '', '', OrderedDict()] to=
 ['git', 'gitlab.gnome.org', '/GNOME/PATH', '', '', OrderedDict([('protocol=
', 'https')])]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '=
/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', Or=
deredDict()] comparing ['git', 'git.infradead.org', '/.*', '', '', OrderedD=
ict()] to ['git', 'git.infraroot.at',<br />'/PATH', '', '', OrderedDict([('=
protocol', 'https')])]<br />DEBUG: For url ['http', 'downloads.yoctoproject=
.org', '/mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz', ''=
, '', OrderedDict()] comparing ['git', '.*', '/.*', '', '', OrderedDict()] =
to ['git', 'HOST', '/PATH', '', '', OrderedDict([('protocol', 'https')])]<b=
r />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirror/sources/=
git2_gitlab.com.qemu-project.u-boot.git.tar.gz', '', '', OrderedDict()] com=
paring ['git', '.*', '/.*', '', '', OrderedDict()] to ['git', 'HOST', '/git=
/PATH', '', '', OrderedDict([('protocol', 'https')])]<br />DEBUG: For url [=
'gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', '', OrderedDict([('p=
rotocol', 'https'), ('name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('=
nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])] comparing ['hg', '.=
*', '/.*', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org',=
 '/mirror/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', '=
gitlab.com', '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', =
'https'), ('name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch',=
 '1'), ('lfs', 'True'), ('bareclone', '1')])] comparing ['bzr', '.*', '/.*'=
, '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org', '/mirror=
/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.co=
m', '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'),=
 ('name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('=
lfs', 'True'), ('bareclone', '1')])] comparing ['p4', '.*', '/.*', '', '', =
OrderedDict()] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/'=
, '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com', '/qemu=
-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'), ('name', =
'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'Tru=
e'), ('bareclone', '1')])] comparing ['osc', '.*', '/.*', '', '', OrderedDi=
ct()] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',=
 OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/=
u-boot.git', '', '', OrderedDict([('protocol', 'https'), ('name', 'roms/u-b=
oot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('ba=
reclone', '1')])] comparing ['https?',<br />'.*', '/.*', '', '', OrderedDic=
t()] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', =
OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u=
-boot.git', '', '', OrderedDict([('protocol', 'https'), ('name', 'roms/u-bo=
ot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bar=
eclone', '1')])] comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to [=
'http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDi=
ct()]<br />DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git=
', '', '', OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('s=
ubpath', 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', =
'1')])] comparing ['npm', '.*', '/?.*', '', '', OrderedDict()] to ['http', =
'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]<br=
 />DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', '=
', OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath',=
 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])] =
comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to ['http', 'sources.=
openembedded.org', '/', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm'=
, 'gitlab.com', '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol=
', 'https'), ('name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranc=
h', '1'), ('lfs', 'True'), ('bareclone', '1')])] comparing ['svn', '.*', '/=
.*', '', '', OrderedDict()] to ['http', 'sources.openembedded.org', '/', ''=
, '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-pro=
ject/u-boot.git', '', '', OrderedDict([('protocol', 'https'), ('name', 'rom=
s/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'),=
 ('bareclone', '1')])] comparing ['git', '.*', '/.*', '', '', OrderedDict()=
] to ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]<br />=
DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', '', =
OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath', 'r=
oms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])] com=
paring ['gitsm', '.*', '/.*', '', '', OrderedDict()] to ['http', 'sources.o=
penembedded.org', '/', '', '', OrderedDict()]<br />DEBUG: For url gitsm://g=
itlab.com/qemu-project/u-boot.git;protocol=3Dhttps;name=3Droms/u-boot;subpa=
th=3Droms/u-boot;nobranch=3D1;lfs=3DTrue;bareclone=3D1;nobranch=3D1 returni=
ng http://sources.openembedded.org/git2_gitlab.com.qemu-project.u-boot.git.=
tar.gz<br />DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.gi=
t', '', '', OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('=
subpath', 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone',=
 '1')])] comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to ['http', '=
sources.openembedded.org', '/', '', '', OrderedDict()]<br />DEBUG: For url =
['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', '', OrderedDict([('=
protocol', 'https'), ('name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), (=
'nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])] comparing ['bzr', =
'.*', '/.*', '', '', OrderedDict()] to ['http', 'sources.openembedded.org',=
 '/', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com', '/=
qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'), ('nam=
e', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lfs', =
'True'), ('bareclone', '1')])] comparing ['p4', '.*', '/.*', '', '', Ordere=
dDict()] to ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()=
]<br />DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '=
', '', OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpa=
th', 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')=
])] comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to ['http', 'sour=
ces.openembedded.org', '/', '', '', OrderedDict()]<br />DEBUG: For url ['gi=
tsm', 'gitlab.com', '/qemu-project/u-boot.git', '', '', OrderedDict([('prot=
ocol', 'https'), ('name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nob=
ranch', '1'), ('lfs', 'True'), ('bareclone', '1')])] comparing ['https?',<b=
r />'.*', '/.*', '', '', OrderedDict()] to ['http', 'sources.openembedded.o=
rg', '/', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com'=
, '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'), (=
'name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lf=
s', 'True'), ('bareclone', '1')])] comparing ['ftp', '.*', '/.*', '', '', O=
rderedDict()] to ['http', 'sources.openembedded.org', '/', '', '', OrderedD=
ict()]<br />DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.gi=
t', '', '', OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('=
subpath', 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone',=
 '1')])] comparing ['npm', '.*', '/?.*', '', '', OrderedDict()] to ['http',=
 'sources.openembedded.org', '/', '', '', OrderedDict()]<br />DEBUG: For ur=
l ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', '', '', OrderedDict([=
('protocol', 'https'), ('name', 'roms/u-boot'), ('subpath', 'roms/u-boot'),=
 ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')])] comparing ['http=
s', 'search.cpan.org', '/CPAN', '', '', OrderedDict()] to ['https', 'cpan.m=
etacpan.org', '/', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gi=
tlab.com', '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'h=
ttps'), ('name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '=
1'), ('lfs', 'True'), ('bareclone', '1')])] comparing ['https?',<br />'down=
loads.yoctoproject.org', '/releases/uninative/', '', '', OrderedDict()] to =
['https', 'mirrors.kernel.org', '/yocto/uninative/', '', '', OrderedDict()]=
<br />DEBUG: For url ['gitsm', 'gitlab.com', '/qemu-project/u-boot.git', ''=
, '', OrderedDict([('protocol', 'https'), ('name', 'roms/u-boot'), ('subpat=
h', 'roms/u-boot'), ('nobranch', '1'), ('lfs', 'True'), ('bareclone', '1')]=
)] comparing ['https?',<br />'downloads.yoctoproject.org', '/mirror/sources=
/', '', '', OrderedDict()] to ['https', 'mirrors.kernel.org', '/yocto-sourc=
es/', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gitlab.com', '/=
qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'), ('nam=
e', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lfs', =
'True'), ('bareclone', '1')])] comparing ['git', 'salsa.debian.org', '/.*',=
 '', '', OrderedDict()] to ['git', 'salsa.debian.org', '/PATH', '', '', Ord=
eredDict([('protocol', 'https')])]<br />DEBUG: For url ['gitsm', 'gitlab.co=
m', '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'),=
 ('name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('=
lfs', 'True'), ('bareclone', '1')])] comparing ['git', 'git.gnome.org', '/.=
*', '', '', OrderedDict()] to ['git', 'gitlab.gnome.org', '/GNOME/PATH', ''=
, '', OrderedDict([('protocol', 'https')])]<br />DEBUG: For url ['gitsm', '=
gitlab.com', '/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', =
'https'), ('name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch',=
 '1'), ('lfs', 'True'), ('bareclone', '1')])] comparing ['git', 'git.infrad=
ead.org', '/.*', '', '', OrderedDict()] to ['git', 'git.infraroot.at', '/PA=
TH', '', '', OrderedDict([('protocol', 'https')])]<br />DEBUG: For url ['gi=
tsm', 'gitlab.com', '/qemu-project/u-boot.git', '', '', OrderedDict([('prot=
ocol', 'https'), ('name', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nob=
ranch', '1'), ('lfs', 'True'), ('bareclone', '1')])] comparing ['git', '.*'=
, '/.*', '', '', OrderedDict()] to ['git', 'HOST', '/PATH', '', '', Ordered=
Dict([('protocol', 'https')])]<br />DEBUG: For url ['gitsm', 'gitlab.com', =
'/qemu-project/u-boot.git', '', '', OrderedDict([('protocol', 'https'), ('n=
ame', 'roms/u-boot'), ('subpath', 'roms/u-boot'), ('nobranch', '1'), ('lfs'=
, 'True'), ('bareclone', '1')])] comparing ['git', '.*', '/.*', '', '', Ord=
eredDict()] to ['git', 'HOST', '/git/PATH', '', '', OrderedDict([('protocol=
', 'https')])]<br />DEBUG: Fetching http://downloads.yoctoproject.org/mirro=
r/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz using command '/us=
r/bin/env wget -t 2 -T 100 -O /home/nic/ocs-app/Os/build/downloads/git2_git=
lab.com.qemu-project.u-boot.git.tar.gz.tmp -P /home/nic/ocs-app/Os/build/do=
wnloads 'http://downloads.yoctoproject.org/mirror/sources/git2_gitlab.com.q=
emu-project.u-boot.git.tar.gz''<br />DEBUG: Fetcher accessed the network wi=
th the command /usr/bin/env wget -t 2 -T 100 -O /home/nic/ocs-app/Os/build/=
downloads/git2_gitlab.com.qemu-project.u-boot.git.tar.gz.tmp -P /home/nic/o=
cs-app/Os/build/downloads 'http://downloads.yoctoproject.org/mirror/sources=
/git2_gitlab.com.qemu-project.u-boot.git.tar.gz'<br />DEBUG: Running export=
 PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/u=
ser/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-inte=
rcept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bi=
n:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7=
+git/recipe-sysroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky=
/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nativ=
e/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os=
/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-na=
tive/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-n=
ative/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/t=
mp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr=
/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.=
2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/o=
cs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; expor=
t HOME=3D"/home/nic"; /usr/bin/env wget -t 2 -T 100 -O /home/nic/ocs-app/Os=
/build/downloads/git2_gitlab.com.qemu-project.u-boot.git.tar.gz.tmp -P /hom=
e/nic/ocs-app/Os/build/downloads 'http://downloads.yoctoproject.org/mirror/=
sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz' --progress=3Ddot -v=
<br />--2025-09-29 09:34:57-- &nbsp;http://downloads.yoctoproject.org/mirro=
r/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz<br />Resolving dow=
nloads.yoctoproject.org (downloads.yoctoproject.org)... 37.27.135.249, 2a01=
:4f9:3070:3985::2<br />Connecting to downloads.yoctoproject.org (downloads.=
yoctoproject.org)|37.27.135.249|:80... connected.<br />HTTP request sent, a=
waiting response... 404 Not Found<br />2025-09-29 09:34:57 ERROR 404: Not F=
ound.</div>
<div>DEBUG: Mirror fetch failure for url http://downloads.yoctoproject.org/=
mirror/sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz (original url=
: gitsm://gitlab.com/qemu-project/u-boot.git;protocol=3Dhttps;name=3Droms/u=
-boot;subpath=3Droms/u-boot;nobranch=3D1;lfs=3DTrue;bareclone=3D1;nobranch=
=3D1)<br />DEBUG: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1=
; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; expor=
t PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-=
app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_=
64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux=
/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitba=
ke/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"=
; /usr/bin/env wget -t 2 -T 100 -O /home/nic/ocs-app/Os/build/downloads/git=
2_gitlab.com.qemu-project.u-boot.git.tar.gz.tmp -P /home/nic/ocs-app/Os/bui=
ld/downloads 'http://downloads.yoctoproject.org/mirror/sources/git2_gitlab.=
com.qemu-project.u-boot.git.tar.gz' --progress=3Ddot -v<br />failed with ex=
it code 8, see logfile for output<br />DEBUG: Fetching http://sources.opene=
mbedded.org/git2_gitlab.com.qemu-project.u-boot.git.tar.gz using command '/=
usr/bin/env wget -t 2 -T 100 -O /home/nic/ocs-app/Os/build/downloads/git2_g=
itlab.com.qemu-project.u-boot.git.tar.gz.tmp -P /home/nic/ocs-app/Os/build/=
downloads 'http://sources.openembedded.org/git2_gitlab.com.qemu-project.u-b=
oot.git.tar.gz''<br />DEBUG: Fetcher accessed the network with the command =
/usr/bin/env wget -t 2 -T 100 -O /home/nic/ocs-app/Os/build/downloads/git2_=
gitlab.com.qemu-project.u-boot.git.tar.gz.tmp -P /home/nic/ocs-app/Os/build=
/downloads 'http://sources.openembedded.org/git2_gitlab.com.qemu-project.u-=
boot.git.tar.gz'<br />DEBUG: Running export PSEUDO_DISABLED=3D1; export DBU=
S_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"/h=
ome/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-app/Os/build=
/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp=
/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/b=
in/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/bu=
ild/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-nativ=
e/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qem=
u-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/O=
s/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-n=
ative/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/=
tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/sb=
in:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.=
7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home=
/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"; /usr/bin/e=
nv wget -t 2 -T 100 -O /home/nic/ocs-app/Os/build/downloads/git2_gitlab.com=
.qemu-project.u-boot.git.tar.gz.tmp -P /home/nic/ocs-app/Os/build/downloads=
 'http://sources.openembedded.org/git2_gitlab.com.qemu-project.u-boot.git.t=
ar.gz' --progress=3Ddot -v<br />--2025-09-29 09:34:57-- &nbsp;http://source=
s.openembedded.org/git2_gitlab.com.qemu-project.u-boot.git.tar.gz<br />Reso=
lving sources.openembedded.org (sources.openembedded.org)... failed: No add=
ress associated with hostname.<br />wget: unable to resolve host address &l=
squo;sources.openembedded.org&rsquo;<br />DEBUG: Mirror fetch failure for u=
rl http://sources.openembedded.org/git2_gitlab.com.qemu-project.u-boot.git.=
tar.gz (original url: gitsm://gitlab.com/qemu-project/u-boot.git;protocol=
=3Dhttps;name=3Droms/u-boot;subpath=3Droms/u-boot;nobranch=3D1;lfs=3DTrue;b=
areclone=3D1;nobranch=3D1)<br />DEBUG: Fetcher failure: Fetch command expor=
t PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/=
user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-int=
ercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/b=
in:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.=
7+git/recipe-sysroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/pok=
y/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nati=
ve/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/O=
s/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-n=
ative/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-=
native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/=
tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/us=
r/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8=
.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86=
_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/=
ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; expo=
rt HOME=3D"/home/nic"; /usr/bin/env wget -t 2 -T 100 -O /home/nic/ocs-app/O=
s/build/downloads/git2_gitlab.com.qemu-project.u-boot.git.tar.gz.tmp -P /ho=
me/nic/ocs-app/Os/build/downloads 'http://sources.openembedded.org/git2_git=
lab.com.qemu-project.u-boot.git.tar.gz' --progress=3Ddot -v failed with exi=
t<br />code 4, see logfile for output<br />DEBUG: Fetching https://mirrors.=
kernel.org/yocto-sources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz usi=
ng command '/usr/bin/env wget -t 2 -T 100 -O /home/nic/ocs-app/Os/build/dow=
nloads/git2_gitlab.com.qemu-project.u-boot.git.tar.gz.tmp -P<br />/home/nic=
/ocs-app/Os/build/downloads 'https://mirrors.kernel.org/yocto-sources/git2_=
gitlab.com.qemu-project.u-boot.git.tar.gz''<br />DEBUG: Fetcher accessed th=
e network with the command /usr/bin/env wget -t 2 -T 100 -O /home/nic/ocs-a=
pp/Os/build/downloads/git2_gitlab.com.qemu-project.u-boot.git.tar.gz.tmp -P=
 /home/nic/ocs-app/Os/build/downloads 'https://mirrors.kernel.org/yocto-sou=
rces/git2_gitlab.com.qemu-project.u-boot.git.tar.gz'<br />DEBUG: Running ex=
port PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/r=
un/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-=
intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/us=
r/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8=
.2.7+git/recipe-sysroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/=
poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-n=
ative/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-ap=
p/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroo=
t-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xili=
nx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/bui=
ld/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native=
/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nativ=
e/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/=
x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/n=
ic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; e=
xport HOME=3D"/home/nic"; /usr/bin/env wget -t 2 -T 100 -O /home/nic/ocs-ap=
p/Os/build/downloads/git2_gitlab.com.qemu-project.u-boot.git.tar.gz.tmp -P =
/home/nic/ocs-app/Os/build/downloads 'https://mirrors.kernel.org/yocto-sour=
ces/git2_gitlab.com.qemu-project.u-boot.git.tar.gz' --progress=3Ddot -v<br =
/>--2025-09-29 09:34:57-- &nbsp;https://mirrors.kernel.org/yocto-sources/gi=
t2_gitlab.com.qemu-project.u-boot.git.tar.gz<br />Resolving mirrors.kernel.=
org (mirrors.kernel.org)... 139.178.88.99, 2604:1380:45e3:2400::1<br />Conn=
ecting to mirrors.kernel.org (mirrors.kernel.org)|139.178.88.99|:443... con=
nected.<br />HTTP request sent, awaiting response... 404 Not Found<br />202=
5-09-29 09:34:58 ERROR 404: Not Found.</div>
<div>DEBUG: Mirror fetch failure for url https://mirrors.kernel.org/yocto-s=
ources/git2_gitlab.com.qemu-project.u-boot.git.tar.gz (original url: gitsm:=
//gitlab.com/qemu-project/u-boot.git;protocol=3Dhttps;name=3Droms/u-boot;su=
bpath=3Droms/u-boot;nobranch=3D1;lfs=3DTrue;bareclone=3D1;nobranch=3D1)<br =
/>DEBUG: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export =
DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D=
"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-app/Os/bu=
ild/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/=
tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/us=
r/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os=
/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-na=
tive/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/=
qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-ap=
p/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroo=
t-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xil=
inx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/bui=
ld/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native=
/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8=
.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/h=
ome/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"; /usr/bi=
n/env wget -t 2 -T 100 -O /home/nic/ocs-app/Os/build/downloads/git2_gitlab.=
com.qemu-project.u-boot.git.tar.gz.tmp -P /home/nic/ocs-app/Os/build/downlo=
ads 'https://mirrors.kernel.org/yocto-sources/git2_gitlab.com.qemu-project.=
u-boot.git.tar.gz' --progress=3Ddot -v failed with exit code 8, see logfile=
 for output<br />ERROR: Fetcher failure: Fetch command export PSEUDO_DISABL=
ED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus";=
 export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/ni=
c/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/oc=
s-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sy=
sroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home=
/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/re=
cipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/wor=
k/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/=
home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+gi=
t/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64=
-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic=
/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe=
-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-=
xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky=
/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/hom=
e/nic"; LANG=3DC git -c gc.autoDetach=3Dfalse<br />-c core.pager=3Dcat -c s=
afe.bareRepository=3Dall clone --bare --mirror https://gitlab.com/qemu-proj=
ect/u-boot.git /home/nic/ocs-app/Os/build/downloads/git2/gitlab.com.qemu-pr=
oject.u-boot.git --progress failed with exit code 128, see logfile for outp=
ut<br />ERROR: gitsm: submodule download failed: FetchError Fetcher failure=
 for URL: 'gitsm://gitlab.com/qemu-project/u-boot.git;protocol=3Dhttps;name=
=3Droms/u-boot;subpath=3Droms/u-boot;nobranch=3D1;lfs=3DTrue;bareclone=3D1;=
nobranch=3D1'. Unable to fetch URL from<br />any source.<br />WARNING: Fail=
ed to fetch URL gitsm://github.com/Xilinx/qemu.git;protocol=3Dhttps;branch=
=3Dxlnx_rel_v2025.1;name=3Dqemu, attempting MIRRORS if available<br />DEBUG=
: Fetcher failure for URL: 'gitsm://gitlab.com/qemu-project/u-boot.git;prot=
ocol=3Dhttps;name=3Droms/u-boot;subpath=3Droms/u-boot;nobranch=3D1;lfs=3DTr=
ue;bareclone=3D1;nobranch=3D1'. Unable to fetch URL from any source.<br />D=
EBUG: Trying MIRRORS<br />DEBUG: For url ['gitsm', 'github.com', '/Xilinx/q=
emu.git', '', '', OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_=
v2025.1'), ('name', 'qemu')])] comparing ['http', 'ftp.debian.org', '/debia=
n/pool', '', '', OrderedDict()] to ['http',<br />'snapshot.debian.org', '/a=
rchive/debian/20180310T215105Z/pool', '', '', OrderedDict()]<br />DEBUG: Fo=
r url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '', OrderedDict([('pr=
otocol', 'https'), ('branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] comp=
aring ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to =
['http',<br />'snapshot.debian.org', '/archive/debian-archive/20120328T0927=
52Z/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'git=
hub.com', '/Xilinx/qemu.git', '', '', OrderedDict([('protocol', 'https'), (=
'branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing ['http', 'ftp.=
debian.org', '/debian/pool', '', '', OrderedDict()] to ['http',<br />'snaps=
hot.debian.org', '/archive/debian-archive/20110127T084257Z/debian/pool', ''=
, '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'github.com', '/Xilinx/q=
emu.git', '', '', OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_=
v2025.1'), ('name', 'qemu')])] comparing ['http', 'ftp.debian.org', '/debia=
n/pool', '', '', OrderedDict()] to ['http',<br />'snapshot.debian.org', '/a=
rchive/debian-archive/20090802T004153Z/debian/pool', '', '', OrderedDict()]=
<br />DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '', Or=
deredDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'), ('name', =
'qemu')])] comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', Ord=
eredDict()] to ['http',<br />'ftp.de.debian.org', '/debian/pool', '', '', O=
rderedDict()]<br />DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git=
', '', '', OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1=
'), ('name', 'qemu')])] comparing ['http', 'ftp.debian.org', '/debian/pool'=
, '', '', OrderedDict()] to ['http',<br />'ftp.au.debian.org', '/debian/poo=
l', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'github.com', '/Xi=
linx/qemu.git', '', '', OrderedDict([('protocol', 'https'), ('branch', 'xln=
x_rel_v2025.1'), ('name', 'qemu')])] comparing ['http', 'ftp.debian.org', '=
/debian/pool', '', '', OrderedDict()] to ['http',<br />'ftp.cl.debian.org',=
 '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gith=
ub.com', '/Xilinx/qemu.git', '', '', OrderedDict([('protocol', 'https'), ('=
branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing ['http', 'ftp.d=
ebian.org', '/debian/pool', '', '', OrderedDict()] to ['http',<br />'ftp.hr=
.debian.org', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['=
gitsm', 'github.com', '/Xilinx/qemu.git', '', '', OrderedDict([('protocol',=
 'https'), ('branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing ['=
http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http',=
<br />'ftp.fi.debian.org', '/debian/pool', '', '', OrderedDict()]<br />DEBU=
G: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '', OrderedDict(=
[('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])]=
 comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()=
] to ['http',<br />'ftp.hk.debian.org', '/debian/pool', '', '', OrderedDict=
()]<br />DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '',=
 OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'), ('name=
', 'qemu')])] comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', =
OrderedDict()] to ['http',<br />'ftp.hu.debian.org', '/debian/pool', '', ''=
, OrderedDict()]<br />DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.=
git', '', '', OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v202=
5.1'), ('name', 'qemu')])] comparing ['http', 'ftp.debian.org', '/debian/po=
ol', '', '', OrderedDict()] to ['http',<br />'ftp.ie.debian.org', '/debian/=
pool', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'github.com', '=
/Xilinx/qemu.git', '', '', OrderedDict([('protocol', 'https'), ('branch', '=
xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing ['http', 'ftp.debian.org'=
, '/debian/pool', '', '', OrderedDict()] to ['http',<br />'ftp.it.debian.or=
g', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'g=
ithub.com', '/Xilinx/qemu.git', '', '', OrderedDict([('protocol', 'https'),=
 ('branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing ['http', 'ft=
p.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http',<br />'ftp=
.jp.debian.org', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url=
 ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '', OrderedDict([('protoco=
l', 'https'), ('branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing=
 ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['htt=
p',<br />'ftp.no.debian.org', '/debian/pool', '', '', OrderedDict()]<br />D=
EBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '', OrderedDi=
ct([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')=
])] comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDic=
t()] to ['http',<br />'ftp.pl.debian.org', '/debian/pool', '', '', OrderedD=
ict()]<br />DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', =
'', OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'), ('n=
ame', 'qemu')])] comparing ['http', 'ftp.debian.org', '/debian/pool', '', '=
', OrderedDict()] to ['http',<br />'ftp.ro.debian.org', '/debian/pool', '',=
 '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qe=
mu.git', '', '', OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v=
2025.1'), ('name', 'qemu')])] comparing ['http', 'ftp.debian.org', '/debian=
/pool', '', '', OrderedDict()] to ['http',<br />'ftp.si.debian.org', '/debi=
an/pool', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'github.com'=
, '/Xilinx/qemu.git', '', '', OrderedDict([('protocol', 'https'), ('branch'=
, 'xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing ['http', 'ftp.debian.o=
rg', '/debian/pool', '', '', OrderedDict()] to ['http',<br />'ftp.es.debian=
.org', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm',=
 'github.com', '/Xilinx/qemu.git', '', '', OrderedDict([('protocol', 'https=
'), ('branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing ['http', =
'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http',<br />'=
ftp.se.debian.org', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For =
url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '', OrderedDict([('prot=
ocol', 'https'), ('branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] compar=
ing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['=
http',<br />'ftp.tr.debian.org', '/debian/pool', '', '', OrderedDict()]<br =
/>DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '', Ordere=
dDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'), ('name', 'qem=
u')])] comparing ['https', 'ftp.gnu.org', '/gnu', '', '', OrderedDict()] to=
 ['https', 'mirrors.kernel.org', '/gnu', '', '', OrderedDict()]<br />DEBUG:=
 For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '', OrderedDict([(=
'protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] c=
omparing ['https', 'cdn.kernel.org', '/pub', '', '', OrderedDict()] to ['ht=
tp', 'www.kernel.org', '/pub', '', '', OrderedDict()]<br />DEBUG: For url [=
'gitsm', 'github.com', '/Xilinx/qemu.git', '', '', OrderedDict([('protocol'=
, 'https'), ('branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing [=
'https', 'www.gnupg.org', '/ftp/gcrypt', '', '', OrderedDict()] to ['ftp', =
'ftp.gnupg.org', '/gcrypt', '', '', OrderedDict()]<br />DEBUG: For url ['gi=
tsm', 'github.com', '/Xilinx/qemu.git', '', '', OrderedDict([('protocol', '=
https'), ('branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing ['ht=
tps', 'www.gnupg.org', '/ftp/gcrypt', '', '', OrderedDict()] to ['ftp', 'ft=
p.franken.de', '/pub/crypt/mirror/ftp.gnupg.org/gcrypt', '', '', OrderedDic=
t()]<br />DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', ''=
, OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'), ('nam=
e', 'qemu')])] comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '', =
OrderedDict()] to ['ftp', 'mirrors.dotsrc.org', '/gcrypt', '', '', OrderedD=
ict()]<br />DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', =
'', OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'), ('n=
ame', 'qemu')])] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', ''=
, OrderedDict()] to ['ftp', 'ftp.fu-berlin.de', '/tex/CTAN', '', '', Ordere=
dDict()]<br />DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', ''=
, '', OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'), (=
'name', 'qemu')])] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', =
'', OrderedDict()] to ['http', 'sunsite.sut.ac.jp', '/pub/archives/ctan/', =
'', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'github.com', '/Xilinx=
/qemu.git', '', '', OrderedDict([('protocol', 'https'), ('branch', 'xlnx_re=
l_v2025.1'), ('name', 'qemu')])] comparing ['ftp', 'dante.ctan.org', '/tex-=
archive', '', '', OrderedDict()] to ['http', 'ctan.unsw.edu.au', '/', '', '=
', OrderedDict()]<br />DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu=
.git', '', '', OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v20=
25.1'), ('name', 'qemu')])] comparing ['ftp', 'ftp.gnutls.org', '/gcrypt/gn=
utls', '', '', OrderedDict()] to ['https', 'www.gnupg.org', '/ftp/gcrypt/gn=
utls', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'github.com', '=
/Xilinx/qemu.git', '', '', OrderedDict([('protocol', 'https'), ('branch', '=
xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing ['http', 'ftp.info-zip.or=
g', '/pub/infozip/src/', '', '', OrderedDict()] to ['ftp', 'sunsite.icm.edu=
.pl', '/pub/unix/archiving/info-zip/src/', '', '', OrderedDict()]<br />DEBU=
G: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '', OrderedDict(=
[('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])]=
 comparing ['http', 'www.mirrorservice.org', '/sites/lsof.itap.purdue.edu/p=
ub/tools/unix/lsof/', '', '', OrderedDict()] to ['http', 'www.mirrorservice=
.org', '/sites/lsof.itap.purdue.edu/pub/tools/unix/lsof/OLD/', '', '', Orde=
redDict()]<br />DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', =
'', '', OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'),=
 ('name', 'qemu')])] comparing ['https', 'archive.apache.org', '/dist', '',=
 '', OrderedDict()] to ['http', 'www.us.apache.org', '/dist', '', '', Order=
edDict()]<br />DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '=
', '', OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'), =
('name', 'qemu')])] comparing ['https', 'archive.apache.org', '/dist', '', =
'', OrderedDict()] to ['http', 'archive.apache.org', '/dist', '', '', Order=
edDict()]<br />DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '=
', '', OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'), =
('name', 'qemu')])] comparing ['http', 'downloads.sourceforge.net', '/watch=
dog/', '', '', OrderedDict()] to<br />['http', 'fossies.org', '/linux/misc/=
', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'github.com', '/Xil=
inx/qemu.git', '', '', OrderedDict([('protocol', 'https'), ('branch', 'xlnx=
_rel_v2025.1'), ('name', 'qemu')])] comparing ['https', 'download.savannah.=
gnu.org', '/releases', '', '', OrderedDict()] to<br />['http', 'download-mi=
rror.savannah.gnu.org', '/releases', '', '', OrderedDict()]<br />DEBUG: For=
 url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '', OrderedDict([('pro=
tocol', 'https'), ('branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] compa=
ring ['https', 'download.savannah.nongnu.org', '/releases', '', '', Ordered=
Dict()]<br />to ['http', 'download-mirror.savannah.nongnu.org', '/releases'=
, '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'github.com', '/Xili=
nx/qemu.git', '', '', OrderedDict([('protocol', 'https'), ('branch', 'xlnx_=
rel_v2025.1'), ('name', 'qemu')])] comparing ['ftp', 'sourceware.org', '/pu=
b', '', '', OrderedDict()] to ['http', 'mirrors.kernel.org', '/sourceware',=
 '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'github.com', '/Xilin=
x/qemu.git', '', '', OrderedDict([('protocol', 'https'), ('branch', 'xlnx_r=
el_v2025.1'), ('name', 'qemu')])] comparing ['ftp', 'sourceware.org', '/pub=
', '', '', OrderedDict()] to ['http', 'gd.tuwien.ac.at', '/gnu/sourceware',=
 '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'github.com', '/Xilin=
x/qemu.git', '', '', OrderedDict([('protocol', 'https'), ('branch', 'xlnx_r=
el_v2025.1'), ('name', 'qemu')])] comparing ['ftp', 'sourceware.org', '/pub=
', '', '', OrderedDict()] to ['http', 'ftp.gwdg.de', '/pub/linux/sources.re=
dhat.com/sourceware', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', =
'github.com', '/Xilinx/qemu.git', '', '', OrderedDict([('protocol', 'https'=
), ('branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing ['cvs', '.=
*', '/.*', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org',=
 '/mirror/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', '=
github.com', '/Xilinx/qemu.git', '', '', OrderedDict([('protocol', 'https')=
, ('branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing ['svn', '.*=
', '/.*', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org', =
'/mirror/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'g=
ithub.com', '/Xilinx/qemu.git', '', '', OrderedDict([('protocol', 'https'),=
 ('branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing ['git', '.*'=
, '/.*', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org', '=
/mirror/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gi=
thub.com', '/Xilinx/qemu.git', '', '', OrderedDict([('protocol', 'https'), =
('branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing ['gitsm', '.*=
', '/.*', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org', =
'/mirror/sources/', '', '', OrderedDict()]<br />DEBUG: For url gitsm://gith=
ub.com/Xilinx/qemu.git;protocol=3Dhttps;branch=3Dxlnx_rel_v2025.1;name=3Dqe=
mu returning http://downloads.yoctoproject.org/mirror/sources/git2_github.c=
om.Xilinx.qemu.git.tar.gz<br />DEBUG: For url ['http', 'downloads.yoctoproj=
ect.org', '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',=
 OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', ''=
, OrderedDict()] to ['http', 'snapshot.debian.org', '/archive/debian/201803=
10T215105Z/pool', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'down=
loads.yoctoproject.org', '/mirror/sources/git2_github.com.Xilinx.qemu.git.t=
ar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/debia=
n/pool', '', '', OrderedDict()] to ['http', 'snapshot.debian.org', '/archiv=
e/debian-archive/20120328T092752Z/debian/pool', '', '', OrderedDict()]<br /=
>DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirror/sources/git=
2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['ht=
tp', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http', '=
snapshot.debian.org', '/archive/debian-archive/20110127T084257Z/debian/pool=
', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproj=
ect.org', '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',=
 OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', ''=
, OrderedDict()] to ['http', 'snapshot.debian.org', '/archive/debian-archiv=
e/20090802T004153Z/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url=
 ['http', 'downloads.yoctoproject.org', '/mirror/sources/git2_github.com.Xi=
linx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debia=
n.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.de.debian.o=
rg', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'd=
ownloads.yoctoproject.org', '/mirror/sources/git2_github.com.Xilinx.qemu.gi=
t.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/de=
bian/pool', '', '', OrderedDict()] to ['http', 'ftp.au.debian.org', '/debia=
n/pool', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoc=
toproject.org', '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '=
', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', =
'', '', OrderedDict()] to ['http', 'ftp.cl.debian.org', '/debian/pool', '',=
 '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.or=
g', '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', Order=
edDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', Orde=
redDict()] to ['http', 'ftp.hr.debian.org', '/debian/pool', '', '', Ordered=
Dict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirror=
/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] co=
mparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] t=
o ['http', 'ftp.fi.debian.org', '/debian/pool', '', '', OrderedDict()]<br /=
>DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirror/sources/git=
2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['ht=
tp', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http', '=
ftp.hk.debian.org', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For =
url ['http', 'downloads.yoctoproject.org', '/mirror/sources/git2_github.com=
.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.de=
bian.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.hu.debia=
n.org', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['http',=
 'downloads.yoctoproject.org', '/mirror/sources/git2_github.com.Xilinx.qemu=
.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '=
/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.ie.debian.org', '/de=
bian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.=
yoctoproject.org', '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz'=
, '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool=
', '', '', OrderedDict()] to ['http', 'ftp.it.debian.org', '/debian/pool', =
'', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject=
.org', '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', Or=
deredDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', O=
rderedDict()] to ['http', 'ftp.jp.debian.org', '/debian/pool', '', '', Orde=
redDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mir=
ror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()]=
 comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()=
] to ['http', 'ftp.no.debian.org', '/debian/pool', '', '', OrderedDict()]<b=
r />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirror/sources/=
git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing [=
'http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http'=
, 'ftp.pl.debian.org', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: F=
or url ['http', 'downloads.yoctoproject.org', '/mirror/sources/git2_github.=
com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp=
.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.ro.de=
bian.org', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['htt=
p', 'downloads.yoctoproject.org', '/mirror/sources/git2_github.com.Xilinx.q=
emu.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org'=
, '/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.si.debian.org', '=
/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloa=
ds.yoctoproject.org', '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.=
gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/p=
ool', '', '', OrderedDict()] to ['http', 'ftp.es.debian.org', '/debian/pool=
', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproj=
ect.org', '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',=
 OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', ''=
, OrderedDict()] to ['http', 'ftp.se.debian.org', '/debian/pool', '', '', O=
rderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/=
mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict=
()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDic=
t()] to ['http', 'ftp.tr.debian.org', '/debian/pool', '', '', OrderedDict()=
]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirror/sourc=
es/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparin=
g ['https', 'ftp.gnu.org', '/gnu', '', '', OrderedDict()] to ['https', 'mir=
rors.kernel.org', '/gnu', '', '', OrderedDict()]<br />DEBUG: For url ['http=
', 'downloads.yoctoproject.org', '/mirror/sources/git2_github.com.Xilinx.qe=
mu.git.tar.gz', '', '', OrderedDict()] comparing ['https', 'cdn.kernel.org'=
, '/pub', '', '', OrderedDict()] to ['http', 'www.kernel.org', '/pub', '', =
'', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org=
', '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', Ordere=
dDict()] comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '', Ordere=
dDict()] to ['ftp', 'ftp.gnupg.org', '/gcrypt', '', '', OrderedDict()]<br /=
>DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirror/sources/git=
2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['ht=
tps', 'www.gnupg.org', '/ftp/gcrypt', '', '', OrderedDict()] to ['ftp', 'ft=
p.franken.de', '/pub/crypt/mirror/ftp.gnupg.org/gcrypt', '', '', OrderedDic=
t()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirror/so=
urces/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] compa=
ring ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '', OrderedDict()] to ['=
ftp', 'mirrors.dotsrc.org',<br />'/gcrypt', '', '', OrderedDict()]<br />DEB=
UG: For url ['http', 'downloads.yoctoproject.org', '/mirror/sources/git2_gi=
thub.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['ftp', =
'dante.ctan.org', '/tex-archive', '', '', OrderedDict()] to ['ftp', 'ftp.fu=
-berlin.de', '/tex/CTAN', '', '', OrderedDict()]<br />DEBUG: For url ['http=
', 'downloads.yoctoproject.org', '/mirror/sources/git2_github.com.Xilinx.qe=
mu.git.tar.gz', '', '', OrderedDict()] comparing ['ftp', 'dante.ctan.org', =
'/tex-archive', '', '', OrderedDict()] to ['http', 'sunsite.sut.ac.jp',<br =
/>'/pub/archives/ctan/', '', '', OrderedDict()]<br />DEBUG: For url ['http'=
, 'downloads.yoctoproject.org', '/mirror/sources/git2_github.com.Xilinx.qem=
u.git.tar.gz', '', '', OrderedDict()] comparing ['ftp', 'dante.ctan.org', '=
/tex-archive', '', '', OrderedDict()] to ['http', 'ctan.unsw.edu.au', '/', =
'', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject=
.org', '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', Or=
deredDict()] comparing ['ftp', 'ftp.gnutls.org', '/gcrypt/gnutls', '', '', =
OrderedDict()] to ['https', 'www.gnupg.org', '/ftp/gcrypt/gnutls', '', '', =
OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '=
/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDic=
t()] comparing ['http', 'ftp.info-zip.org', '/pub/infozip/src/', '', '', Or=
deredDict()] to ['ftp', 'sunsite.icm.edu.pl', '/pub/unix/archiving/info-zip=
/src/', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoct=
oproject.org', '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', ''=
, '', OrderedDict()] comparing ['http', 'www.mirrorservice.org', '/sites/ls=
of.itap.purdue.edu/pub/tools/unix/lsof/', '', '', OrderedDict()] to ['http'=
, 'www.mirrorservice.org', '/sites/lsof.itap.purdue.edu/pub/tools/unix/lsof=
/OLD/', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoct=
oproject.org', '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', ''=
, '', OrderedDict()] comparing ['https', 'archive.apache.org', '/dist', '',=
 '', OrderedDict()] to ['http', 'www.us.apache.org', '/dist', '', '', Order=
edDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirr=
or/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] =
comparing ['https', 'archive.apache.org', '/dist', '', '', OrderedDict()] t=
o ['http', 'archive.apache.org',<br />'/dist', '', '', OrderedDict()]<br />=
DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirror/sources/git2=
_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['htt=
p', 'downloads.sourceforge.net', '/watchdog/', '', '', OrderedDict()] to ['=
http', 'fossies.org', '/linux/misc/', '', '', OrderedDict()]<br />DEBUG: Fo=
r url ['http', 'downloads.yoctoproject.org', '/mirror/sources/git2_github.c=
om.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['https', 'dow=
nload.savannah.gnu.org', '/releases', '', '', OrderedDict()] to ['http', 'd=
ownload-mirror.savannah.gnu.org', '/releases', '', '', OrderedDict()]<br />=
DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirror/sources/git2=
_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['htt=
ps', 'download.savannah.nongnu.org', '/releases', '', '', OrderedDict()] to=
 ['http', 'download-mirror.savannah.nongnu.org', '/releases', '', '', Order=
edDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirr=
or/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] =
comparing ['ftp', 'sourceware.org', '/pub', '', '', OrderedDict()] to ['htt=
p', 'mirrors.kernel.org', '/sourceware', '', '', OrderedDict()]<br />DEBUG:=
 For url ['http', 'downloads.yoctoproject.org', '/mirror/sources/git2_githu=
b.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['ftp', 'so=
urceware.org', '/pub', '', '', OrderedDict()] to ['http', 'gd.tuwien.ac.at'=
, '/gnu/sourceware', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'd=
ownloads.yoctoproject.org', '/mirror/sources/git2_github.com.Xilinx.qemu.gi=
t.tar.gz', '', '', OrderedDict()] comparing ['ftp', 'sourceware.org', '/pub=
', '', '', OrderedDict()] to ['http', 'ftp.gwdg.de', '/pub/linux/sources.re=
dhat.com/sourceware', '', '', OrderedDict()]<br />DEBUG: For url ['http', '=
downloads.yoctoproject.org', '/mirror/sources/git2_github.com.Xilinx.qemu.g=
it.tar.gz', '', '', OrderedDict()] comparing ['cvs', '.*', '/.*', '', '', O=
rderedDict()] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/',=
 '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoprojec=
t.org', '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', O=
rderedDict()] comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to ['ht=
tp', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict(=
)]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirror/sour=
ces/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] compari=
ng ['git', '.*', '/.*', '', '', OrderedDict()] to ['http', 'downloads.yocto=
project.org', '/mirror/sources/', '', '', OrderedDict()]<br />DEBUG: For ur=
l ['http', 'downloads.yoctoproject.org', '/mirror/sources/git2_github.com.X=
ilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['hg', '.*', '/.*'=
, '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org', '/mirror=
/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.=
yoctoproject.org', '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz'=
, '', '', OrderedDict()] comparing ['bzr', '.*', '/.*', '', '', OrderedDict=
()] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', O=
rderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/=
mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict=
()] comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to ['http', 'downl=
oads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]<br />DEB=
UG: For url ['http', 'downloads.yoctoproject.org', '/mirror/sources/git2_gi=
thub.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['osc', =
'.*', '/.*', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org=
', '/mirror/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['http', =
'downloads.yoctoproject.org', '/mirror/sources/git2_github.com.Xilinx.qemu.=
git.tar.gz', '', '', OrderedDict()] comparing ['https?', '.*', '/.*', '', '=
', OrderedDict()] to ['http', 'downloads.yoctoproject.org', '/mirror/source=
s/', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctopr=
oject.org', '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '=
', OrderedDict()] comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to =
['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedD=
ict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirror/=
sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] com=
paring ['npm', '.*', '/?.*', '', '', OrderedDict()] to ['http', 'downloads.=
yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]<br />DEBUG: F=
or url ['http', 'downloads.yoctoproject.org', '/mirror/sources/git2_github.=
com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['cvs', '.*',=
 '/.*', '', '', OrderedDict()] to ['http', 'sources.openembedded.org', '/',=
 '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoprojec=
t.org', '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', O=
rderedDict()] comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to ['ht=
tp', 'sources.openembedded.org', '/', '', '', OrderedDict()]<br />DEBUG: Fo=
r url ['http', 'downloads.yoctoproject.org', '/mirror/sources/git2_github.c=
om.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['git', '.*', =
'/.*', '', '', OrderedDict()] to ['http', 'sources.openembedded.org', '/', =
'', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject=
.org', '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', Or=
deredDict()] comparing ['gitsm', '.*', '/.*', '', '', OrderedDict()] to ['h=
ttp', 'sources.openembedded.org', '/', '', '', OrderedDict()]<br />DEBUG: F=
or url ['http', 'downloads.yoctoproject.org', '/mirror/sources/git2_github.=
com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['hg', '.*', =
'/.*', '', '', OrderedDict()] to ['http', 'sources.openembedded.org', '/', =
'', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject=
.org', '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', Or=
deredDict()] comparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to ['htt=
p', 'sources.openembedded.org', '/', '', '', OrderedDict()]<br />DEBUG: For=
 url ['http', 'downloads.yoctoproject.org', '/mirror/sources/git2_github.co=
m.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['p4', '.*', '/=
.*', '', '', OrderedDict()] to ['http', 'sources.openembedded.org', '/', ''=
, '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.o=
rg', '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', Orde=
redDict()] comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to ['http'=
, 'sources.openembedded.org', '/', '', '', OrderedDict()]<br />DEBUG: For u=
rl ['http', 'downloads.yoctoproject.org', '/mirror/sources/git2_github.com.=
Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['https?', '.*', =
'/.*', '', '', OrderedDict()] to ['http', 'sources.openembedded.org', '/', =
'', '', OrderedDict()]<br />DEBUG: For url http://downloads.yoctoproject.or=
g/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz returning http://so=
urces.openembedded.org/git2_github.com.Xilinx.qemu.git.tar.gz<br />DEBUG: F=
or url ['http', 'sources.openembedded.org', '/git2_github.com.Xilinx.qemu.g=
it.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/d=
ebian/pool', '', '', OrderedDict()] to ['http', 'snapshot.debian.org', '/ar=
chive/debian/20180310T215105Z/pool', '', '', OrderedDict()]<br />DEBUG: For=
 url ['http', 'sources.openembedded.org', '/git2_github.com.Xilinx.qemu.git=
.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/deb=
ian/pool', '', '', OrderedDict()] to ['http', 'snapshot.debian.org', '/arch=
ive/debian-archive/20120328T092752Z/debian/pool', '', '', OrderedDict()]<br=
 />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_github.com.Xi=
linx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debia=
n.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'snapshot.debian=
.org', '/archive/debian-archive/20110127T084257Z/debian/pool', '', '', Orde=
redDict()]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_=
github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['http=
', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'sn=
apshot.debian.org', '/archive/debian-archive/20090802T004153Z/debian/pool',=
 '', '', OrderedDict()]<br />DEBUG: For url ['http', 'sources.openembedded.=
org', '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] com=
paring ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to=
 ['http', 'ftp.de.debian.org', '/debian/pool',<br />'', '', OrderedDict()]<=
br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_github.com.=
Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.deb=
ian.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.au.debian=
.org', '/debian/pool',<br />'', '', OrderedDict()]<br />DEBUG: For url ['ht=
tp', 'sources.openembedded.org', '/git2_github.com.Xilinx.qemu.git.tar.gz',=
 '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool'=
, '', '', OrderedDict()] to ['http', 'ftp.cl.debian.org', '/debian/pool',<b=
r />'', '', OrderedDict()]<br />DEBUG: For url ['http', 'sources.openembedd=
ed.org', '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] =
comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()]=
 to ['http', 'ftp.hr.debian.org', '/debian/pool',<br />'', '', OrderedDict(=
)]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_github.c=
om.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.=
debian.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.fi.deb=
ian.org', '/debian/pool',<br />'', '', OrderedDict()]<br />DEBUG: For url [=
'http', 'sources.openembedded.org', '/git2_github.com.Xilinx.qemu.git.tar.g=
z', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/po=
ol', '', '', OrderedDict()] to ['http', 'ftp.hk.debian.org', '/debian/pool'=
,<br />'', '', OrderedDict()]<br />DEBUG: For url ['http', 'sources.openemb=
edded.org', '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict(=
)] comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict=
()] to ['http', 'ftp.hu.debian.org', '/debian/pool',<br />'', '', OrderedDi=
ct()]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_githu=
b.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'f=
tp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.ie.=
debian.org', '/debian/pool',<br />'', '', OrderedDict()]<br />DEBUG: For ur=
l ['http', 'sources.openembedded.org', '/git2_github.com.Xilinx.qemu.git.ta=
r.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian=
/pool', '', '', OrderedDict()] to ['http', 'ftp.it.debian.org', '/debian/po=
ol',<br />'', '', OrderedDict()]<br />DEBUG: For url ['http', 'sources.open=
embedded.org', '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDi=
ct()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedD=
ict()] to ['http', 'ftp.jp.debian.org', '/debian/pool',<br />'', '', Ordere=
dDict()]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_gi=
thub.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['http',=
 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.=
no.debian.org', '/debian/pool',<br />'', '', OrderedDict()]<br />DEBUG: For=
 url ['http', 'sources.openembedded.org', '/git2_github.com.Xilinx.qemu.git=
.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/deb=
ian/pool', '', '', OrderedDict()] to ['http', 'ftp.pl.debian.org', '/debian=
/pool',<br />'', '', OrderedDict()]<br />DEBUG: For url ['http', 'sources.o=
penembedded.org', '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', Ordere=
dDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', Order=
edDict()] to ['http', 'ftp.ro.debian.org', '/debian/pool',<br />'', '', Ord=
eredDict()]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2=
_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['htt=
p', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'f=
tp.si.debian.org', '/debian/pool',<br />'', '', OrderedDict()]<br />DEBUG: =
For url ['http', 'sources.openembedded.org', '/git2_github.com.Xilinx.qemu.=
git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/=
debian/pool', '', '', OrderedDict()] to ['http', 'ftp.es.debian.org', '/deb=
ian/pool',<br />'', '', OrderedDict()]<br />DEBUG: For url ['http', 'source=
s.openembedded.org', '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', Ord=
eredDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', Or=
deredDict()] to ['http', 'ftp.se.debian.org', '/debian/pool',<br />'', '', =
OrderedDict()]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/g=
it2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['=
http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http',=
 'ftp.tr.debian.org', '/debian/pool',<br />'', '', OrderedDict()]<br />DEBU=
G: For url ['http', 'sources.openembedded.org', '/git2_github.com.Xilinx.qe=
mu.git.tar.gz', '', '', OrderedDict()] comparing ['https', 'ftp.gnu.org', '=
/gnu', '', '', OrderedDict()] to ['https', 'mirrors.kernel.org', '/gnu', ''=
, '', OrderedDict()]<br />DEBUG: For url ['http', 'sources.openembedded.org=
', '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] compar=
ing ['https', 'cdn.kernel.org', '/pub', '', '', OrderedDict()] to ['http', =
'www.kernel.org', '/pub', '', '', OrderedDict()]<br />DEBUG: For url ['http=
', 'sources.openembedded.org', '/git2_github.com.Xilinx.qemu.git.tar.gz', '=
', '', OrderedDict()] comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '=
', '', OrderedDict()] to ['ftp', 'ftp.gnupg.org', '/gcrypt', '', '', Ordere=
dDict()]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_gi=
thub.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['https'=
, 'www.gnupg.org', '/ftp/gcrypt', '', '', OrderedDict()] to ['ftp', 'ftp.fr=
anken.de', '/pub/crypt/mirror/ftp.gnupg.org/gcrypt', '', '', OrderedDict()]=
<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_github.com=
.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['https', 'www.g=
nupg.org', '/ftp/gcrypt', '', '', OrderedDict()] to ['ftp', 'mirrors.dotsrc=
.org', '/gcrypt', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'sour=
ces.openembedded.org', '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', O=
rderedDict()] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', '', O=
rderedDict()] to ['ftp', 'ftp.fu-berlin.de', '/tex/CTAN', '', '', OrderedDi=
ct()]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_githu=
b.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['ftp', 'da=
nte.ctan.org', '/tex-archive', '', '', OrderedDict()] to ['http', 'sunsite.=
sut.ac.jp', '/pub/archives/ctan/', '', '', OrderedDict()]<br />DEBUG: For u=
rl ['http', 'sources.openembedded.org', '/git2_github.com.Xilinx.qemu.git.t=
ar.gz', '', '', OrderedDict()] comparing ['ftp', 'dante.ctan.org', '/tex-ar=
chive', '', '', OrderedDict()] to ['http', 'ctan.unsw.edu.au', '/', '', '',=
 OrderedDict()]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/=
git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing [=
'ftp', 'ftp.gnutls.org', '/gcrypt/gnutls', '', '', OrderedDict()] to ['http=
s', 'www.gnupg.org', '/ftp/gcrypt/gnutls', '', '', OrderedDict()]<br />DEBU=
G: For url ['http', 'sources.openembedded.org', '/git2_github.com.Xilinx.qe=
mu.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.info-zip.org=
', '/pub/infozip/src/', '', '', OrderedDict()] to ['ftp', 'sunsite.icm.edu.=
pl', '/pub/unix/archiving/info-zip/src/', '', '', OrderedDict()]<br />DEBUG=
: For url ['http', 'sources.openembedded.org', '/git2_github.com.Xilinx.qem=
u.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'www.mirrorservice=
.org', '/sites/lsof.itap.purdue.edu/pub/tools/unix/lsof/', '', '', OrderedD=
ict()] to ['http', 'www.mirrorservice.org', '/sites/lsof.itap.purdue.edu/pu=
b/tools/unix/lsof/OLD/', '', '', OrderedDict()]<br />DEBUG: For url ['http'=
, 'sources.openembedded.org', '/git2_github.com.Xilinx.qemu.git.tar.gz', ''=
, '', OrderedDict()] comparing ['https', 'archive.apache.org', '/dist', '',=
 '', OrderedDict()] to ['http', 'www.us.apache.org', '/dist', '', '', Order=
edDict()]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_g=
ithub.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['https=
', 'archive.apache.org', '/dist', '', '', OrderedDict()] to ['http', 'archi=
ve.apache.org', '/dist', '', '',<br />OrderedDict()]<br />DEBUG: For url ['=
http', 'sources.openembedded.org', '/git2_github.com.Xilinx.qemu.git.tar.gz=
', '', '', OrderedDict()] comparing ['http', 'downloads.sourceforge.net', '=
/watchdog/', '', '', OrderedDict()] to ['http', 'fossies.org', '/linux/misc=
/', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'sources.openembedd=
ed.org', '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] =
comparing ['https', 'download.savannah.gnu.org', '/releases', '', '', Order=
edDict()] to ['http', 'download-mirror.savannah.gnu.org', '/releases', '', =
'', OrderedDict()]<br />DEBUG: For url ['http', 'sources.openembedded.org',=
 '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparin=
g ['https', 'download.savannah.nongnu.org', '/releases', '', '', OrderedDic=
t()] to ['http', 'download-mirror.savannah.nongnu.org', '/releases', '', ''=
, OrderedDict()]<br />DEBUG: For url ['http', 'sources.openembedded.org', '=
/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing =
['ftp', 'sourceware.org', '/pub', '', '', OrderedDict()] to ['http', 'mirro=
rs.kernel.org', '/sourceware', '', '', OrderedDict()]<br />DEBUG: For url [=
'http', 'sources.openembedded.org', '/git2_github.com.Xilinx.qemu.git.tar.g=
z', '', '', OrderedDict()] comparing ['ftp', 'sourceware.org', '/pub', '', =
'', OrderedDict()] to ['http', 'gd.tuwien.ac.at', '/gnu/sourceware', '', ''=
,<br />OrderedDict()]<br />DEBUG: For url ['http', 'sources.openembedded.or=
g', '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] compa=
ring ['ftp', 'sourceware.org', '/pub', '', '', OrderedDict()] to ['http', '=
ftp.gwdg.de', '/pub/linux/sources.redhat.com/sourceware', '', '', OrderedDi=
ct()]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_githu=
b.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['cvs', '.*=
', '/.*', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org', =
'/mirror/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'so=
urces.openembedded.org', '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '',=
 OrderedDict()] comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to ['=
http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDic=
t()]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_github=
.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['git', '.*'=
, '/.*', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org', '=
/mirror/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'sou=
rces.openembedded.org', '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', =
OrderedDict()] comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to ['ht=
tp', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict(=
)]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_github.c=
om.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['bzr', '.*', =
'/.*', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org', '/m=
irror/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'sourc=
es.openembedded.org', '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', Or=
deredDict()] comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to ['http=
', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]=
<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_github.com=
.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['osc', '.*', '/=
.*', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org', '/mir=
ror/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'sources=
.openembedded.org', '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', Orde=
redDict()] comparing ['https?', '.*', '/.*', '', '', OrderedDict()] to ['ht=
tp', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict(=
)]<br />DEBUG: For url http://sources.openembedded.org/git2_github.com.Xili=
nx.qemu.git.tar.gz returning http://downloads.yoctoproject.org/mirror/sourc=
es/git2_github.com.Xilinx.qemu.git.tar.gz<br />DEBUG: For url ['http', 'sou=
rces.openembedded.org', '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', =
OrderedDict()] comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to ['h=
ttp', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict=
()]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_github.=
com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['npm', '.*',=
 '/?.*', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org', '=
/mirror/sources/', '', '',<br />OrderedDict()]<br />DEBUG: For url ['http',=
 'sources.openembedded.org', '/git2_github.com.Xilinx.qemu.git.tar.gz', '',=
 '', OrderedDict()] comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] t=
o ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]<br />DEB=
UG: For url ['http', 'sources.openembedded.org', '/git2_github.com.Xilinx.q=
emu.git.tar.gz', '', '', OrderedDict()] comparing ['svn', '.*', '/.*', '', =
'', OrderedDict()] to ['http', 'sources.openembedded.org', '/', '', '', Ord=
eredDict()]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2=
_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['git=
', '.*', '/.*', '', '', OrderedDict()] to ['http', 'sources.openembedded.or=
g', '/', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'sources.opene=
mbedded.org', '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDic=
t()] comparing ['gitsm', '.*', '/.*', '', '', OrderedDict()] to ['http', 's=
ources.openembedded.org', '/', '', '', OrderedDict()]<br />DEBUG: For url [=
'http', 'sources.openembedded.org', '/git2_github.com.Xilinx.qemu.git.tar.g=
z', '', '', OrderedDict()] comparing ['hg', '.*', '/.*', '', '', OrderedDic=
t()] to ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]<br=
 />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_github.com.Xi=
linx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['bzr', '.*', '/.*'=
, '', '', OrderedDict()] to ['http', 'sources.openembedded.org', '/', '', '=
', OrderedDict()]<br />DEBUG: For url ['http', 'sources.openembedded.org', =
'/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing=
 ['p4', '.*', '/.*', '', '', OrderedDict()] to ['http', 'sources.openembedd=
ed.org', '/', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'sources.=
openembedded.org', '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', Order=
edDict()] comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to ['http',=
 'sources.openembedded.org', '/', '', '', OrderedDict()]<br />DEBUG: For ur=
l ['http', 'sources.openembedded.org', '/git2_github.com.Xilinx.qemu.git.ta=
r.gz', '', '', OrderedDict()] comparing ['ftp', '.*', '/.*', '', '', Ordere=
dDict()] to ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()=
]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_github.co=
m.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['npm', '.*', '=
/?.*', '', '', OrderedDict()] to ['http', 'sources.openembedded.org', '/', =
'', '', OrderedDict()]<br />DEBUG: For url ['http', 'sources.openembedded.o=
rg', '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comp=
aring ['https', 'search.cpan.org', '/CPAN', '', '', OrderedDict()] to ['htt=
ps', 'cpan.metacpan.org', '/', '', '', OrderedDict()]<br />DEBUG: For url [=
'http', 'sources.openembedded.org', '/git2_github.com.Xilinx.qemu.git.tar.g=
z', '', '', OrderedDict()] comparing ['https?', 'downloads.yoctoproject.org=
', '/releases/uninative/', '', '', OrderedDict()] to ['https', 'mirrors.ker=
nel.org', '/yocto/uninative/', '', '', OrderedDict()]<br />DEBUG: For url [=
'http', 'sources.openembedded.org', '/git2_github.com.Xilinx.qemu.git.tar.g=
z', '', '', OrderedDict()] comparing ['https?', 'downloads.yoctoproject.org=
', '/mirror/sources/', '', '', OrderedDict()] to ['https', 'mirrors.kernel.=
org', '/yocto-sources/', '', '', OrderedDict()]<br />DEBUG: For url ['http'=
, 'sources.openembedded.org', '/git2_github.com.Xilinx.qemu.git.tar.gz', ''=
, '', OrderedDict()] comparing ['git', 'salsa.debian.org', '/.*', '', '', O=
rderedDict()] to ['git', 'salsa.debian.org', '/PATH', '', '', OrderedDict([=
('protocol', 'https')])]<br />DEBUG: For url ['http', 'sources.openembedded=
.org', '/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] co=
mparing ['git', 'git.gnome.org', '/.*', '', '', OrderedDict()] to ['git', '=
gitlab.gnome.org', '/GNOME/PATH', '', '', OrderedDict([('protocol', 'https'=
)])]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_github=
.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['git', 'git=
.infradead.org', '/.*', '', '', OrderedDict()] to ['git', 'git.infraroot.at=
', '/PATH', '', '', OrderedDict([('protocol', 'https')])]<br />DEBUG: For u=
rl ['http', 'sources.openembedded.org', '/git2_github.com.Xilinx.qemu.git.t=
ar.gz', '', '', OrderedDict()] comparing ['git', '.*', '/.*', '', '', Order=
edDict()] to ['git', 'HOST', '/PATH', '', '', OrderedDict([('protocol', 'ht=
tps')])]<br />DEBUG: For url ['http', 'sources.openembedded.org', '/git2_gi=
thub.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['git', =
'.*', '/.*', '', '', OrderedDict()] to ['git', 'HOST', '/git/PATH', '', '',=
 OrderedDict([('protocol', 'https')])]<br />DEBUG: For url ['http', 'downlo=
ads.yoctoproject.org', '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar=
.gz', '', '', OrderedDict()] comparing ['ftp', '.*', '/.*', '', '', Ordered=
Dict()] to ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]=
<br />DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirror/source=
s/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing=
 ['npm', '.*', '/?.*', '', '', OrderedDict()] to ['http', 'sources.openembe=
dded.org', '/', '', '',<br />OrderedDict()]<br />DEBUG: For url ['http', 'd=
ownloads.yoctoproject.org', '/mirror/sources/git2_github.com.Xilinx.qemu.gi=
t.tar.gz', '', '', OrderedDict()] comparing ['https', 'search.cpan.org', '/=
CPAN', '', '', OrderedDict()] to ['https', 'cpan.metacpan.org', '/', '', ''=
, OrderedDict()]<br />DEBUG: For url ['http', 'downloads.yoctoproject.org',=
 '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedD=
ict()] comparing ['https?', 'downloads.yoctoproject.org', '/releases/uninat=
ive/', '', '', OrderedDict()] to ['https', 'mirrors.kernel.org', '/yocto/un=
inative/', '', '', OrderedDict()]<br />DEBUG: For url ['http', 'downloads.y=
octoproject.org', '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz',=
 '', '', OrderedDict()] comparing ['https?', 'downloads.yoctoproject.org', =
'/mirror/sources/', '', '', OrderedDict()] to ['https', 'mirrors.kernel.org=
', '/yocto-sources/', '', '', OrderedDict()]<br />DEBUG: For url http://dow=
nloads.yoctoproject.org/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.=
gz returning https://mirrors.kernel.org/yocto-sources/git2_github.com.Xilin=
x.qemu.git.tar.gz<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yoc=
to-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] =
comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()]=
 to ['http', 'snapshot.debian.org', '/archive/debian/20180310T215105Z/pool'=
, '', '', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org'=
, '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedD=
ict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', Ordered=
Dict()] to ['http', 'snapshot.debian.org', '/archive/debian-archive/2012032=
8T092752Z/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['https'=
, 'mirrors.kernel.org', '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar=
.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/=
pool', '', '', OrderedDict()] to ['http', 'snapshot.debian.org', '/archive/=
debian-archive/20110127T084257Z/debian/pool', '', '', OrderedDict()]<br />D=
EBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_github.c=
om.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.=
debian.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'snapshot.d=
ebian.org', '/archive/debian-archive/20090802T004153Z/debian/pool', '', '',=
 OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto=
-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] co=
mparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] t=
o ['http', 'ftp.de.debian.org', '/debian/pool', '', '', OrderedDict()]<br /=
>DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_github=
.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ft=
p.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.au.d=
ebian.org', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['ht=
tps', 'mirrors.kernel.org', '/yocto-sources/git2_github.com.Xilinx.qemu.git=
.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/deb=
ian/pool', '', '', OrderedDict()] to ['http', 'ftp.cl.debian.org', '/debian=
/pool', '', '', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kerne=
l.org', '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', Or=
deredDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', O=
rderedDict()] to ['http', 'ftp.hr.debian.org', '/debian/pool', '', '', Orde=
redDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sour=
ces/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] compari=
ng ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['h=
ttp', 'ftp.fi.debian.org', '/debian/pool', '', '', OrderedDict()]<br />DEBU=
G: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_github.com.=
Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.deb=
ian.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.hk.debian=
.org', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['https',=
 'mirrors.kernel.org', '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.=
gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/p=
ool', '', '', OrderedDict()] to ['http', 'ftp.hu.debian.org', '/debian/pool=
', '', '', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org=
', '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', Ordered=
Dict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', Ordere=
dDict()] to ['http', 'ftp.ie.debian.org', '/debian/pool', '', '', OrderedDi=
ct()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/g=
it2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['=
http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http',=
 'ftp.it.debian.org', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: Fo=
r url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_github.com.Xilin=
x.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.o=
rg', '/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.jp.debian.org'=
, '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['https', 'mir=
rors.kernel.org', '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', =
'', '', OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool',=
 '', '', OrderedDict()] to ['http', 'ftp.no.debian.org', '/debian/pool', ''=
, '', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/=
yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict(=
)] comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict=
()] to ['http', 'ftp.pl.debian.org', '/debian/pool', '', '', OrderedDict()]=
<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_g=
ithub.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['http'=
, 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'ftp=
.ro.debian.org', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url=
 ['https', 'mirrors.kernel.org', '/yocto-sources/git2_github.com.Xilinx.qem=
u.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.debian.org', =
'/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.si.debian.org', '/d=
ebian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.=
kernel.org', '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '=
', OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', =
'', OrderedDict()] to ['http', 'ftp.es.debian.org', '/debian/pool', '', '',=
 OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto=
-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] co=
mparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()] t=
o ['http', 'ftp.se.debian.org', '/debian/pool', '', '', OrderedDict()]<br /=
>DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_github=
.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ft=
p.debian.org', '/debian/pool', '', '', OrderedDict()] to ['http', 'ftp.tr.d=
ebian.org', '/debian/pool', '', '', OrderedDict()]<br />DEBUG: For url ['ht=
tps', 'mirrors.kernel.org', '/yocto-sources/git2_github.com.Xilinx.qemu.git=
.tar.gz', '', '', OrderedDict()] comparing ['https', 'ftp.gnu.org', '/gnu',=
 '', '', OrderedDict()] to ['https', 'mirrors.kernel.org', '/gnu', '', '', =
OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-=
sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] com=
paring ['https', 'cdn.kernel.org', '/pub', '', '', OrderedDict()] to ['http=
', 'www.kernel.org', '/pub', '', '', OrderedDict()]<br />DEBUG: For url ['h=
ttps', 'mirrors.kernel.org', '/yocto-sources/git2_github.com.Xilinx.qemu.gi=
t.tar.gz', '', '', OrderedDict()] comparing ['https', 'www.gnupg.org', '/ft=
p/gcrypt', '', '', OrderedDict()] to ['ftp', 'ftp.gnupg.org', '/gcrypt', ''=
, '', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/=
yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict(=
)] comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '', OrderedDict(=
)] to ['ftp', 'ftp.franken.de', '/pub/crypt/mirror/ftp.gnupg.org/gcrypt', '=
', '', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '=
/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict=
()] comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '', OrderedDict=
()] to ['ftp', 'mirrors.dotsrc.org', '/gcrypt', '', '', OrderedDict()]<br /=
>DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_github=
.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['ftp', 'dan=
te.ctan.org', '/tex-archive', '', '', OrderedDict()] to ['ftp', 'ftp.fu-ber=
lin.de', '/tex/CTAN', '', '', OrderedDict()]<br />DEBUG: For url ['https', =
'mirrors.kernel.org', '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.g=
z', '', '', OrderedDict()] comparing ['ftp', 'dante.ctan.org', '/tex-archiv=
e', '', '', OrderedDict()] to ['http', 'sunsite.sut.ac.jp', '/pub/archives/=
ctan/', '', '', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kerne=
l.org', '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', Or=
deredDict()] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', '', Or=
deredDict()] to ['http', 'ctan.unsw.edu.au', '/', '',<br />'', OrderedDict(=
)]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2=
_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['ftp=
', 'ftp.gnutls.org', '/gcrypt/gnutls', '', '', OrderedDict()] to ['https', =
'www.gnupg.org', '/ftp/gcrypt/gnutls', '', '', OrderedDict()]<br />DEBUG: F=
or url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_github.com.Xili=
nx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['http', 'ftp.info-zi=
p.org', '/pub/infozip/src/', '', '', OrderedDict()] to ['ftp', 'sunsite.icm=
.edu.pl',<br />'/pub/unix/archiving/info-zip/src/', '', '', OrderedDict()]<=
br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_gi=
thub.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['http',=
 'www.mirrorservice.org', '/sites/lsof.itap.purdue.edu/pub/tools/unix/lsof/=
', '', '', OrderedDict()] to ['http', 'www.mirrorservice.org', '/sites/lsof=
.itap.purdue.edu/pub/tools/unix/lsof/OLD/', '', '', OrderedDict()]<br />DEB=
UG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_github.com=
.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['https', 'archi=
ve.apache.org', '/dist', '', '', OrderedDict()] to ['http', 'www.us.apache.=
org', '/dist',<br />'', '', OrderedDict()]<br />DEBUG: For url ['https', 'm=
irrors.kernel.org', '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz'=
, '', '', OrderedDict()] comparing ['https', 'archive.apache.org', '/dist',=
 '', '', OrderedDict()] to ['http', 'archive.apache.org', '/dist', '', '', =
OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-=
sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] com=
paring ['http', 'downloads.sourceforge.net', '/watchdog/', '', '', OrderedD=
ict()] to ['http', 'fossies.org', '/linux/misc/', '', '', OrderedDict()]<br=
 />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_gith=
ub.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['https', =
'download.savannah.gnu.org', '/releases', '', '', OrderedDict()] to ['http'=
, 'download-mirror.savannah.gnu.org', '/releases', '', '', OrderedDict()]<b=
r />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_git=
hub.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['https',=
 'download.savannah.nongnu.org', '/releases', '', '', OrderedDict()] to ['h=
ttp', 'download-mirror.savannah.nongnu.org', '/releases', '', '', OrderedDi=
ct()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/g=
it2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['=
ftp', 'sourceware.org', '/pub', '', '', OrderedDict()] to ['http', 'mirrors=
.kernel.org', '/sourceware',<br />'', '', OrderedDict()]<br />DEBUG: For ur=
l ['https', 'mirrors.kernel.org', '/yocto-sources/git2_github.com.Xilinx.qe=
mu.git.tar.gz', '', '', OrderedDict()] comparing ['ftp', 'sourceware.org', =
'/pub', '', '', OrderedDict()] to ['http', 'gd.tuwien.ac.at', '/gnu/sourcew=
are', '', '', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.=
org', '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', Orde=
redDict()] comparing ['ftp', 'sourceware.org', '/pub', '', '', OrderedDict(=
)] to ['http', 'ftp.gwdg.de', '/pub/linux/sources.redhat.com/sourceware', '=
', '', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '=
/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict=
()] comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to ['http', 'down=
loads.yoctoproject.org', '/mirror/sources/',<br />'', '', OrderedDict()]<br=
 />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_gith=
ub.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['svn', '.=
*', '/.*', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org',=
 '/mirror/sources/',<br />'', '', OrderedDict()]<br />DEBUG: For url ['http=
s', 'mirrors.kernel.org', '/yocto-sources/git2_github.com.Xilinx.qemu.git.t=
ar.gz', '', '', OrderedDict()] comparing ['git', '.*', '/.*', '', '', Order=
edDict()] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/',<br =
/>'', '', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org'=
, '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedD=
ict()] comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to ['http', 'do=
wnloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]<br />=
DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_github.=
com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['bzr', '.*',=
 '/.*', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org', '/=
mirror/sources/',<br />'', '', OrderedDict()]<br />DEBUG: For url ['https',=
 'mirrors.kernel.org', '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.=
gz', '', '', OrderedDict()] comparing ['p4', '.*', '/.*', '', '', OrderedDi=
ct()] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '',=
 OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto=
-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] co=
mparing ['osc', '.*', '/.*', '', '', OrderedDict()] to ['http', 'downloads.=
yoctoproject.org', '/mirror/sources/',<br />'', '', OrderedDict()]<br />DEB=
UG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_github.com=
.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['https?', '.*',=
 '/.*', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org', '/=
mirror/sources/', '', '', OrderedDict()]<br />DEBUG: For url https://mirror=
s.kernel.org/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz returning=
 http://downloads.yoctoproject.org/mirror/sources/git2_github.com.Xilinx.qe=
mu.git.tar.gz<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-s=
ources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comp=
aring ['ftp', '.*', '/.*', '', '', OrderedDict()] to ['http', 'downloads.yo=
ctoproject.org', '/mirror/sources/',<br />'', '', OrderedDict()]<br />DEBUG=
: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_github.com.X=
ilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['npm', '.*', '/?.=
*', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org', '/mirr=
or/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors=
.kernel.org', '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', =
'', OrderedDict()] comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to=
 ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]<br />DEBU=
G: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_github.com.=
Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['svn', '.*', '/.=
*', '', '', OrderedDict()] to ['http', 'sources.openembedded.org', '/', '',=
 '', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/y=
octo-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()=
] comparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['http', 'source=
s.openembedded.org', '/', '', '', OrderedDict()]<br />DEBUG: For url ['http=
s', 'mirrors.kernel.org', '/yocto-sources/git2_github.com.Xilinx.qemu.git.t=
ar.gz', '', '', OrderedDict()] comparing ['gitsm', '.*', '/.*', '', '', Ord=
eredDict()] to ['http', 'sources.openembedded.org', '/', '', '', OrderedDic=
t()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/gi=
t2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['h=
g', '.*', '/.*', '', '', OrderedDict()] to ['http', 'sources.openembedded.o=
rg', '/', '', '', OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.ker=
nel.org', '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', =
OrderedDict()] comparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to ['h=
ttp', 'sources.openembedded.org', '/', '', '', OrderedDict()]<br />DEBUG: F=
or url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_github.com.Xili=
nx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['p4', '.*', '/.*', '=
', '', OrderedDict()] to ['http', 'sources.openembedded.org', '/', '', '', =
OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-=
sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] com=
paring ['osc', '.*', '/.*', '', '', OrderedDict()] to ['http', 'sources.ope=
nembedded.org', '/', '', '', OrderedDict()]<br />DEBUG: For url ['https', '=
mirrors.kernel.org', '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz=
', '', '', OrderedDict()] comparing ['https?', '.*', '/.*', '', '', Ordered=
Dict()] to ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]=
<br />DEBUG: For url https://mirrors.kernel.org/yocto-sources/git2_github.c=
om.Xilinx.qemu.git.tar.gz returning http://sources.openembedded.org/git2_gi=
thub.com.Xilinx.qemu.git.tar.gz<br />DEBUG: For url ['https', 'mirrors.kern=
el.org', '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', O=
rderedDict()] comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to ['ht=
tp', 'sources.openembedded.org', '/', '', '', OrderedDict()]<br />DEBUG: Fo=
r url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_github.com.Xilin=
x.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['npm', '.*', '/?.*', =
'', '', OrderedDict()] to ['http', 'sources.openembedded.org', '/', '', '',=
 OrderedDict()]<br />DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto=
-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] co=
mparing ['https', 'search.cpan.org', '/CPAN', '', '', OrderedDict()] to ['h=
ttps', 'cpan.metacpan.org', '/', '', '', OrderedDict()]<br />DEBUG: For url=
 ['https', 'mirrors.kernel.org', '/yocto-sources/git2_github.com.Xilinx.qem=
u.git.tar.gz', '', '', OrderedDict()] comparing ['https?', 'downloads.yocto=
project.org', '/releases/uninative/', '', '', OrderedDict()] to ['https', '=
mirrors.kernel.org', '/yocto/uninative/', '', '', OrderedDict()]<br />DEBUG=
: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_github.com.X=
ilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['git', 'salsa.deb=
ian.org', '/.*', '', '', OrderedDict()] to ['git', 'salsa.debian.org', '/PA=
TH', '', '',<br />OrderedDict([('protocol', 'https')])]<br />DEBUG: For url=
 ['https', 'mirrors.kernel.org', '/yocto-sources/git2_github.com.Xilinx.qem=
u.git.tar.gz', '', '', OrderedDict()] comparing ['git', 'git.gnome.org', '/=
.*', '', '', OrderedDict()] to ['git', 'gitlab.gnome.org', '/GNOME/PATH', '=
', '', OrderedDict([('protocol', 'https')])]<br />DEBUG: For url ['https', =
'mirrors.kernel.org', '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.g=
z', '', '', OrderedDict()] comparing ['git', 'git.infradead.org', '/.*', ''=
, '', OrderedDict()] to ['git', 'git.infraroot.at', '/PATH', '', '', Ordere=
dDict([('protocol', 'https')])]<br />DEBUG: For url ['https', 'mirrors.kern=
el.org', '/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', '', O=
rderedDict()] comparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['gi=
t', 'HOST', '/PATH', '', '', OrderedDict([('protocol',<br />'https')])]<br =
/>DEBUG: For url ['https', 'mirrors.kernel.org', '/yocto-sources/git2_githu=
b.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['git', '.*=
', '/.*', '', '', OrderedDict()] to ['git', 'HOST', '/git/PATH', '', '', Or=
deredDict([('protocol', 'https')])]<br />DEBUG: For url ['http', 'downloads=
.yoctoproject.org', '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz=
', '', '', OrderedDict()] comparing ['git', 'salsa.debian.org', '/.*', '', =
'', OrderedDict()] to ['git', 'salsa.debian.org', '/PATH',<br />'', '', Ord=
eredDict([('protocol', 'https')])]<br />DEBUG: For url ['http', 'downloads.=
yoctoproject.org', '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz'=
, '', '', OrderedDict()] comparing ['git', 'git.gnome.org', '/.*', '', '', =
OrderedDict()] to ['git', 'gitlab.gnome.org', '/GNOME/PATH', '', '', Ordere=
dDict([('protocol', 'https')])]<br />DEBUG: For url ['http', 'downloads.yoc=
toproject.org', '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '=
', '', OrderedDict()] comparing ['git', 'git.infradead.org', '/.*', '', '',=
 OrderedDict()] to ['git', 'git.infraroot.at', '/PATH', '', '', OrderedDict=
([('protocol', 'https')])]<br />DEBUG: For url ['http', 'downloads.yoctopro=
ject.org', '/mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz', '', ''=
, OrderedDict()] comparing ['git', '.*', '/.*', '', '', OrderedDict()] to [=
'git', 'HOST', '/PATH', '', '', OrderedDict([('protocol', 'https')])]<br />=
DEBUG: For url ['http', 'downloads.yoctoproject.org', '/mirror/sources/git2=
_github.com.Xilinx.qemu.git.tar.gz', '', '', OrderedDict()] comparing ['git=
', '.*', '/.*', '', '', OrderedDict()] to ['git', 'HOST', '/git/PATH', '', =
'', OrderedDict([('protocol', 'https')])]<br />DEBUG: For url ['gitsm', 'gi=
thub.com', '/Xilinx/qemu.git', '', '', OrderedDict([('protocol', 'https'), =
('branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing ['hg', '.*', =
'/.*', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org', '/m=
irror/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'gith=
ub.com', '/Xilinx/qemu.git', '', '', OrderedDict([('protocol', 'https'), ('=
branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing ['bzr', '.*', '=
/.*', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org', '/mi=
rror/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'githu=
b.com', '/Xilinx/qemu.git', '', '', OrderedDict([('protocol', 'https'), ('b=
ranch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing ['p4', '.*', '/.=
*', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org', '/mirr=
or/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'github.=
com', '/Xilinx/qemu.git', '', '', OrderedDict([('protocol', 'https'), ('bra=
nch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing ['osc', '.*', '/.*=
', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org', '/mirro=
r/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'github.c=
om', '/Xilinx/qemu.git', '', '', OrderedDict([('protocol', 'https'), ('bran=
ch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing ['https?', '.*', '/=
.*', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org', '/mir=
ror/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'github=
.com', '/Xilinx/qemu.git', '', '', OrderedDict([('protocol', 'https'), ('br=
anch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing ['ftp', '.*', '/.=
*', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org', '/mirr=
or/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'github.=
com', '/Xilinx/qemu.git', '', '', OrderedDict([('protocol', 'https'), ('bra=
nch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing ['npm', '.*', '/?.=
*', '', '', OrderedDict()] to ['http', 'downloads.yoctoproject.org', '/mirr=
or/sources/', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'github.=
com', '/Xilinx/qemu.git', '', '', OrderedDict([('protocol', 'https'), ('bra=
nch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing ['cvs', '.*', '/.*=
', '', '', OrderedDict()] to ['http', 'sources.openembedded.org', '/', '', =
'', OrderedDict()]<br />DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qem=
u.git', '', '', OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2=
025.1'), ('name', 'qemu')])] comparing ['svn', '.*', '/.*', '', '', Ordered=
Dict()] to ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]=
<br />DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '', Or=
deredDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'), ('name', =
'qemu')])] comparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['http'=
, 'sources.openembedded.org', '/', '', '', OrderedDict()]<br />DEBUG: For u=
rl ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '', OrderedDict([('proto=
col', 'https'), ('branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] compari=
ng ['gitsm', '.*', '/.*', '', '', OrderedDict()] to ['http', 'sources.opene=
mbedded.org', '/', '', '', OrderedDict()]<br />DEBUG: For url gitsm://githu=
b.com/Xilinx/qemu.git;protocol=3Dhttps;branch=3Dxlnx_rel_v2025.1;name=3Dqem=
u returning http://sources.openembedded.org/git2_github.com.Xilinx.qemu.git=
.tar.gz<br />DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '',=
 '', OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'), ('=
name', 'qemu')])] comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to [=
'http', 'sources.openembedded.org', '/', '', '', OrderedDict()]<br />DEBUG:=
 For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '', OrderedDict([(=
'protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] c=
omparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to ['http', 'sources.o=
penembedded.org', '/', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm',=
 'github.com', '/Xilinx/qemu.git', '', '', OrderedDict([('protocol', 'https=
'), ('branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing ['p4', '.=
*', '/.*', '', '', OrderedDict()] to ['http', 'sources.openembedded.org', '=
/', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'github.com', '/Xi=
linx/qemu.git', '', '', OrderedDict([('protocol', 'https'), ('branch', 'xln=
x_rel_v2025.1'), ('name', 'qemu')])] comparing ['osc', '.*', '/.*', '', '',=
 OrderedDict()] to ['http', 'sources.openembedded.org', '/', '', '', Ordere=
dDict()]<br />DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', ''=
, '', OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'), (=
'name', 'qemu')])] comparing ['https?', '.*', '/.*', '', '', OrderedDict()]=
 to ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]<br />D=
EBUG: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '', OrderedDi=
ct([('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')=
])] comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to ['http', 'sour=
ces.openembedded.org', '/', '', '', OrderedDict()]<br />DEBUG: For url ['gi=
tsm', 'github.com', '/Xilinx/qemu.git', '', '', OrderedDict([('protocol', '=
https'), ('branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing ['np=
m', '.*', '/?.*', '', '', OrderedDict()] to ['http', 'sources.openembedded.=
org', '/', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'github.com=
', '/Xilinx/qemu.git', '', '', OrderedDict([('protocol', 'https'), ('branch=
', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing ['https', 'search.cpa=
n.org', '/CPAN', '', '', OrderedDict()] to ['https', 'cpan.metacpan.org', '=
/', '', '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'github.com', '/Xi=
linx/qemu.git', '', '', OrderedDict([('protocol', 'https'), ('branch', 'xln=
x_rel_v2025.1'), ('name', 'qemu')])] comparing ['https?', 'downloads.yoctop=
roject.org', '/releases/uninative/', '', '', OrderedDict()] to ['https', 'm=
irrors.kernel.org', '/yocto/uninative/', '', '', OrderedDict()]<br />DEBUG:=
 For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '', OrderedDict([(=
'protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] c=
omparing ['https?', 'downloads.yoctoproject.org', '/mirror/sources/', '', '=
', OrderedDict()] to ['https', 'mirrors.kernel.org', '/yocto-sources/', '',=
 '', OrderedDict()]<br />DEBUG: For url ['gitsm', 'github.com', '/Xilinx/qe=
mu.git', '', '', OrderedDict([('protocol', 'https'), ('branch', 'xlnx_rel_v=
2025.1'), ('name', 'qemu')])] comparing ['git', 'salsa.debian.org', '/.*', =
'', '', OrderedDict()] to ['git', 'salsa.debian.org', '/PATH', '', '', Orde=
redDict([('protocol', 'https')])]<br />DEBUG: For url ['gitsm', 'github.com=
', '/Xilinx/qemu.git', '', '', OrderedDict([('protocol', 'https'), ('branch=
', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing ['git', 'git.gnome.or=
g', '/.*', '', '', OrderedDict()] to ['git', 'gitlab.gnome.org', '/GNOME/PA=
TH', '', '', OrderedDict([('protocol', 'https')])]<br />DEBUG: For url ['gi=
tsm', 'github.com', '/Xilinx/qemu.git', '', '', OrderedDict([('protocol', '=
https'), ('branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing ['gi=
t', 'git.infradead.org', '/.*', '', '', OrderedDict()] to ['git', 'git.infr=
aroot.at', '/PATH', '', '', OrderedDict([('protocol', 'https')])]<br />DEBU=
G: For url ['gitsm', 'github.com', '/Xilinx/qemu.git', '', '', OrderedDict(=
[('protocol', 'https'), ('branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])]=
 comparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['git', 'HOST', '=
/PATH', '', '', OrderedDict([('protocol', 'https')])]<br />DEBUG: For url [=
'gitsm', 'github.com', '/Xilinx/qemu.git', '', '', OrderedDict([('protocol'=
, 'https'), ('branch', 'xlnx_rel_v2025.1'), ('name', 'qemu')])] comparing [=
'git', '.*', '/.*', '', '', OrderedDict()] to ['git', 'HOST', '/git/PATH', =
'', '', OrderedDict([('protocol', 'https')])]<br />DEBUG: Fetching http://d=
ownloads.yoctoproject.org/mirror/sources/git2_github.com.Xilinx.qemu.git.ta=
r.gz using command '/usr/bin/env wget -t 2 -T 100 -O /home/nic/ocs-app/Os/b=
uild/downloads/git2_github.com.Xilinx.qemu.git.tar.gz.tmp -P /home/nic/ocs-=
app/Os/build/downloads 'http://downloads.yoctoproject.org/mirror/sources/gi=
t2_github.com.Xilinx.qemu.git.tar.gz''<br />DEBUG: Fetcher accessed the net=
work with the command /usr/bin/env wget -t 2 -T 100 -O /home/nic/ocs-app/Os=
/build/downloads/git2_github.com.Xilinx.qemu.git.tar.gz.tmp -P /home/nic/oc=
s-app/Os/build/downloads 'http://downloads.yoctoproject.org/mirror/sources/=
git2_github.com.Xilinx.qemu.git.tar.gz'<br />DEBUG: Running export PSEUDO_D=
ISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/=
bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/ho=
me/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:=
/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+g=
it/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tm=
p/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/=
bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2=
.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x=
86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/hom=
e/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/r=
ecipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/=
qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os=
/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D=
"/home/nic"; /usr/bin/env wget -t 2 -T 100 -O /home/nic/ocs-app/Os/build/do=
wnloads/git2_github.com.Xilinx.qemu.git.tar.gz.tmp -P /home/nic/ocs-app/Os/=
build/downloads 'http://downloads.yoctoproject.org/mirror/sources/git2_gith=
ub.com.Xilinx.qemu.git.tar.gz' --progress=3Ddot -v<br />--2025-09-29 09:34:=
58-- &nbsp;http://downloads.yoctoproject.org/mirror/sources/git2_github.com=
.Xilinx.qemu.git.tar.gz<br />Resolving downloads.yoctoproject.org (download=
s.yoctoproject.org)... 37.27.135.249, 2a01:4f9:3070:3985::2<br />Connecting=
 to downloads.yoctoproject.org (downloads.yoctoproject.org)|37.27.135.249|:=
80... connected.<br />HTTP request sent, awaiting response... 404 Not Found=
<br />2025-09-29 09:34:58 ERROR 404: Not Found.</div>
<div>DEBUG: Mirror fetch failure for url http://downloads.yoctoproject.org/=
mirror/sources/git2_github.com.Xilinx.qemu.git.tar.gz (original url: gitsm:=
//github.com/Xilinx/qemu.git;protocol=3Dhttps;branch=3Dxlnx_rel_v2025.1;nam=
e=3Dqemu)<br />DEBUG: Fetcher failure: Fetch command export PSEUDO_DISABLED=
=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; e=
xport PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/=
ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-=
app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysr=
oot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/n=
ic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/reci=
pe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/=
x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/ho=
me/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/=
recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-l=
inux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xi=
linx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/b=
itbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/home/=
nic"; /usr/bin/env wget -t 2 -T 100 -O /home/nic/ocs-app/Os/build/downloads=
/git2_github.com.Xilinx.qemu.git.tar.gz.tmp -P /home/nic/ocs-app/Os/build/d=
ownloads 'http://downloads.yoctoproject.org/mirror/sources/git2_github.com.=
Xilinx.qemu.git.tar.gz' --progress=3Ddot -v failed with exit code 8, see lo=
gfile for output<br />DEBUG: Fetching http://sources.openembedded.org/git2_=
github.com.Xilinx.qemu.git.tar.gz using command '/usr/bin/env wget -t 2 -T =
100 -O /home/nic/ocs-app/Os/build/downloads/git2_github.com.Xilinx.qemu.git=
.tar.gz.tmp -P /home/nic/ocs-app/Os/build/downloads 'http://sources.openemb=
edded.org/git2_github.com.Xilinx.qemu.git.tar.gz''<br />DEBUG: Fetcher acce=
ssed the network with the command /usr/bin/env wget -t 2 -T 100 -O /home/ni=
c/ocs-app/Os/build/downloads/git2_github.com.Xilinx.qemu.git.tar.gz.tmp -P =
/home/nic/ocs-app/Os/build/downloads 'http://sources.openembedded.org/git2_=
github.com.Xilinx.qemu.git.tar.gz'<br />DEBUG: Running export PSEUDO_DISABL=
ED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus";=
 export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/ni=
c/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/oc=
s-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sy=
sroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home=
/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/re=
cipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/wor=
k/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/=
home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+gi=
t/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64=
-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic=
/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe=
-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-=
xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky=
/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/hom=
e/nic"; /usr/bin/env wget -t 2 -T 100 -O /home/nic/ocs-app/Os/build/downloa=
ds/git2_github.com.Xilinx.qemu.git.tar.gz.tmp -P /home/nic/ocs-app/Os/build=
/downloads 'http://sources.openembedded.org/git2_github.com.Xilinx.qemu.git=
.tar.gz' --progress=3Ddot -v<br />--2025-09-29 09:34:58-- &nbsp;http://sour=
ces.openembedded.org/git2_github.com.Xilinx.qemu.git.tar.gz<br />Resolving =
sources.openembedded.org (sources.openembedded.org)... failed: No address a=
ssociated with hostname.<br />wget: unable to resolve host address &lsquo;s=
ources.openembedded.org&rsquo;<br />DEBUG: Mirror fetch failure for url htt=
p://sources.openembedded.org/git2_github.com.Xilinx.qemu.git.tar.gz (origin=
al url: gitsm://github.com/Xilinx/qemu.git;protocol=3Dhttps;branch=3Dxlnx_r=
el_v2025.1;name=3Dqemu)<br />DEBUG: Fetcher failure: Fetch command export P=
SEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/use=
r/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/native-interc=
ept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:=
/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+g=
it/recipe-sysroot-native/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/s=
cripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/=
8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/b=
uild/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-nati=
ve/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nat=
ive/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp=
/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/b=
in:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.=
7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64=
-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs=
-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttools"; export =
HOME=3D"/home/nic"; /usr/bin/env wget -t 2 -T 100 -O /home/nic/ocs-app/Os/b=
uild/downloads/git2_github.com.Xilinx.qemu.git.tar.gz.tmp -P /home/nic/ocs-=
app/Os/build/downloads 'http://sources.openembedded.org/git2_github.com.Xil=
inx.qemu.git.tar.gz' --progress=3Ddot -v failed with exit code 4, see logfi=
le for output<br />DEBUG: Fetching https://mirrors.kernel.org/yocto-sources=
/git2_github.com.Xilinx.qemu.git.tar.gz using command '/usr/bin/env wget -t=
 2 -T 100 -O /home/nic/ocs-app/Os/build/downloads/git2_github.com.Xilinx.qe=
mu.git.tar.gz.tmp -P /home/nic/ocs-app/Os/build/downloads 'https://mirrors.=
kernel.org/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz''<br />DEBU=
G: Fetcher accessed the network with the command /usr/bin/env wget -t 2 -T =
100 -O /home/nic/ocs-app/Os/build/downloads/git2_github.com.Xilinx.qemu.git=
.tar.gz.tmp -P /home/nic/ocs-app/Os/build/downloads 'https://mirrors.kernel=
.org/yocto-sources/git2_github.com.Xilinx.qemu.git.tar.gz'<br />DEBUG: Runn=
ing export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:pat=
h=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/poky/scripts/n=
ative-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninative/x86_64-li=
nux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-na=
tive/8.2.7+git/recipe-sysroot-native/usr/bin/python3-native:/home/nic/ocs-a=
pp/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xi=
linx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-linux:/home/nic/=
ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-=
sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qem=
u-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home/nic/ocs-app/=
Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-=
native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx=
-native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app/Os/build/tmp=
/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/bin:/=
home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/build/tmp/hosttoo=
ls"; export HOME=3D"/home/nic"; /usr/bin/env wget -t 2 -T 100 -O /home/nic/=
ocs-app/Os/build/downloads/git2_github.com.Xilinx.qemu.git.tar.gz.tmp -P /h=
ome/nic/ocs-app/Os/build/downloads 'https://mirrors.kernel.org/yocto-source=
s/git2_github.com.Xilinx.qemu.git.tar.gz' --progress=3Ddot -v<br />--2025-0=
9-29 09:34:58-- &nbsp;https://mirrors.kernel.org/yocto-sources/git2_github.=
com.Xilinx.qemu.git.tar.gz<br />Resolving mirrors.kernel.org (mirrors.kerne=
l.org)... 139.178.88.99, 2604:1380:45e3:2400::1<br />Connecting to mirrors.=
kernel.org (mirrors.kernel.org)|139.178.88.99|:443... connected.<br />HTTP =
request sent, awaiting response... 404 Not Found<br />2025-09-29 09:34:59 E=
RROR 404: Not Found.</div>
<div>DEBUG: Mirror fetch failure for url https://mirrors.kernel.org/yocto-s=
ources/git2_github.com.Xilinx.qemu.git.tar.gz (original url: gitsm://github=
.com/Xilinx/qemu.git;protocol=3Dhttps;branch=3Dxlnx_rel_v2025.1;name=3Dqemu=
)<br />DEBUG: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; ex=
port DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export PA=
TH=3D"/home/nic/ocs-app/Os/poky/scripts/native-intercept:/home/nic/ocs-app/=
Os/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/b=
uild/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-nati=
ve/usr/bin/python3-native:/home/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-a=
pp/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysro=
ot-native/usr/bin/x86_64-linux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-l=
inux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/o=
cs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-s=
ysroot-native/usr/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qem=
u-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/O=
s/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-n=
ative/sbin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-nat=
ive/8.2.7+git/recipe-sysroot-native/bin:/home/nic/ocs-app/Os/poky/bitbake/b=
in:/home/nic/ocs-app/Os/build/tmp/hosttools"; export HOME=3D"/home/nic"; /u=
sr/bin/env wget -t 2 -T 100 -O /home/nic/ocs-app/Os/build/downloads/git2_gi=
thub.com.Xilinx.qemu.git.tar.gz.tmp -P /home/nic/ocs-app/Os/build/downloads=
 'https://mirrors.kernel.org/yocto-sources/git2_github.com.Xilinx.qemu.git.=
tar.gz' --progress=3Ddot -v failed with exit code 8, see logfile for output=
<br />ERROR: Fetcher failure for URL: 'gitsm://gitlab.com/qemu-project/u-bo=
ot.git;protocol=3Dhttps;name=3Droms/u-boot;subpath=3Droms/u-boot;nobranch=
=3D1;lfs=3DTrue;bareclone=3D1;nobranch=3D1'. Unable to fetch URL from any s=
ource.<br />ERROR: Bitbake Fetcher Error: FetchError('Unable to fetch URL f=
rom any source.', 'gitsm://github.com/Xilinx/qemu.git;protocol=3Dhttps;bran=
ch=3Dxlnx_rel_v2025.1;name=3Dqemu')<br />DEBUG: Python function base_do_fet=
ch finished<br />DEBUG: Python function do_fetch finished</div>
</div>
</blockquote>

--ZSF6v5aH36q0KnMjrSIi--

