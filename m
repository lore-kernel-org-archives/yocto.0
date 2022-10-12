Return-Path: <ilies.chergui@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6B1C4332F
	for <webhook@archiver.kernel.org>; Wed, 12 Oct 2022 16:24:27 +0000 (UTC)
Subject: #kirkstone efivar build failed 
To: yocto@lists.yoctoproject.org
From: "Ilies CHERGUI" <ilies.chergui@gmail.com>
X-Originating-Location: London, England, GB (152.37.70.64)
X-Originating-Platform: Linux Chrome 106
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 12 Oct 2022 09:24:20 -0700
Message-ID: <5Wkm.1665591860856831686.iN0k@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="bPRoe5PD1dvCcOJcGvJZ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Oct 2022 16:24:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58326

--bPRoe5PD1dvCcOJcGvJZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello guys,

I'm trying to use `QT6` and `Boot2QT` meta layer and I noticed that ` ld-is=
-gold` is used in ` DISTRO_FEATURES`
This build of efivar failed. Please see the logs below.

gcc -isystem/home/ichergui/projects/oe4t/tegra-bsp-platform/build-tegrademo=
/tmp/work/armv8a-oe4t-linux/efivar/38-r0/recipe-sysroot-native/usr/include =
-O2 -pipe -L. -L/home/ichergui/projects/oe4t/tegra-bsp-platform/build-tegra=
demo/tmp/work/armv8a-oe4t-linux/efivar/38-r0/recipe-sysroot-native/usr/lib =
                        -L/home/ichergui/projects/oe4t/tegra-bsp-platform/b=
uild-tegrademo/tmp/work/armv8a-oe4t-linux/efivar/38-r0/recipe-sysroot-nativ=
e/lib                         -Wl,--enable-new-dtags                       =
  -Wl,-rpath-link,/home/ichergui/projects/oe4t/tegra-bsp-platform/build-teg=
rademo/tmp/work/armv8a-oe4t-linux/efivar/38-r0/recipe-sysroot-native/usr/li=
b                         -Wl,-rpath-link,/home/ichergui/projects/oe4t/tegr=
a-bsp-platform/build-tegrademo/tmp/work/armv8a-oe4t-linux/efivar/38-r0/reci=
pe-sysroot-native/lib                         -Wl,-rpath,/home/ichergui/pro=
jects/oe4t/tegra-bsp-platform/build-tegrademo/tmp/work/armv8a-oe4t-linux/ef=
ivar/38-r0/recipe-sysroot-native/usr/lib                         -Wl,-rpath=
,/home/ichergui/projects/oe4t/tegra-bsp-platform/build-tegrademo/tmp/work/a=
rmv8a-oe4t-linux/efivar/38-r0/recipe-sysroot-native/lib                    =
     -Wl,-O1 -Wl,--allow-shlib-undefined -Wl,--dynamic-linker=3D/home/icher=
gui/projects/oe4t/tegra-bsp-platform/build-tegrademo/tmp/sysroots-uninative=
/x86_64-linux/lib/ld-linux-x86-64.so.2  -Wl,--add-needed -Wl,--build-id -Wl=
,--no-allow-shlib-undefined -Wl,-z,now -Wl,-z,muldefs -Wl,--no-undefined-ve=
rsion    -DLIBEFIVAR_VERSION=3D38 -D_GNU_SOURCE -I/home/ichergui/projects/o=
e4t/tegra-bsp-platform/build-tegrademo/tmp/work/armv8a-oe4t-linux/efivar/38=
-r0/git/src/include/ -DLIBEFIVAR_VERSION=3D38 -D_GNU_SOURCE -I/home/ichergu=
i/projects/oe4t/tegra-bsp-platform/build-tegrademo/tmp/work/armv8a-oe4t-lin=
ux/efivar/38-r0/git/src/include/ -DEFIVAR_BUILD_ENVIRONMENT -march=3Dnative=
 -o makeguids makeguids.o util-makeguids.o -ldl=20
./makeguids Your linker is not supported guids.txt guid-symbols.c include/e=
fivar/efivar-guids.h guids.lds
makeguids: Too many arguments.

./makeguids Your linker is not supported guids.txt guid-symbols.c include/e=
fivar/efivar-guids.h guids.lds
makeguids: Too many arguments.

ERROR: oe_runmake failed

Any help would be appreciated
Best regards,
Ilies

--bPRoe5PD1dvCcOJcGvJZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello guys,&nbsp;<br /><br />I'm trying to use `QT6` and `Boot2QT` meta lay=
er and I noticed that `<span style=3D"background-color: transparent; color:=
 inherit; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; f=
ont-size: inherit; white-space: pre-wrap;">ld-is-gold` is used in `</span><=
span style=3D"background-color: transparent; color: inherit; font-family: M=
enlo, Monaco, Consolas, 'Courier New', monospace; font-size: inherit; white=
-space: pre-wrap;">DISTRO_FEATURES`<br />This build of efivar failed. Pleas=
e see the logs below. <br /><br /></span>
<pre class=3D"c-mrkdwn__pre" style=3D"box-sizing: inherit; margin-top: 4px;=
 margin-bottom: 4px; padding: 8px; --saf-0: rgba(var(--sk_foreground_low,29=
,28,29),0.13); font-size: 12px; font-variant-ligatures: none; line-height: =
1.50001; tab-size: 4; white-space: pre-wrap; word-break: normal; background=
: rgba(var(--sk_foreground_min,29,28,29),0.04); border: 1px solid var(--saf=
-0); counter-reset: list-0 0 list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 l=
ist-6 0 list-7 0 list-8 0 list-9 0; color: #1d1c1d; font-family: Monaco, Me=
nlo, Consolas, 'Courier New', monospace !important;" data-stringify-type=3D=
"pre">gcc -isystem/home/ichergui/projects/oe4t/tegra-bsp-platform/build-teg=
rademo/tmp/work/armv8a-oe4t-linux/efivar/38-r0/recipe-sysroot-native/usr/in=
clude -O2 -pipe -L. -L/home/ichergui/projects/oe4t/tegra-bsp-platform/build=
-tegrademo/tmp/work/armv8a-oe4t-linux/efivar/38-r0/recipe-sysroot-native/us=
r/lib                         -L/home/ichergui/projects/oe4t/tegra-bsp-plat=
form/build-tegrademo/tmp/work/armv8a-oe4t-linux/efivar/38-r0/recipe-sysroot=
-native/lib                         -Wl,--enable-new-dtags                 =
        -Wl,-rpath-link,/home/ichergui/projects/oe4t/tegra-bsp-platform/bui=
ld-tegrademo/tmp/work/armv8a-oe4t-linux/efivar/38-r0/recipe-sysroot-native/=
usr/lib                         -Wl,-rpath-link,/home/ichergui/projects/oe4=
t/tegra-bsp-platform/build-tegrademo/tmp/work/armv8a-oe4t-linux/efivar/38-r=
0/recipe-sysroot-native/lib                         -Wl,-rpath,/home/icherg=
ui/projects/oe4t/tegra-bsp-platform/build-tegrademo/tmp/work/armv8a-oe4t-li=
nux/efivar/38-r0/recipe-sysroot-native/usr/lib                         -Wl,=
-rpath,/home/ichergui/projects/oe4t/tegra-bsp-platform/build-tegrademo/tmp/=
work/armv8a-oe4t-linux/efivar/38-r0/recipe-sysroot-native/lib              =
           -Wl,-O1 -Wl,--allow-shlib-undefined -Wl,--dynamic-linker=3D/home=
/ichergui/projects/oe4t/tegra-bsp-platform/build-tegrademo/tmp/sysroots-uni=
native/x86_64-linux/lib/ld-linux-x86-64.so.2  -Wl,--add-needed -Wl,--build-=
id -Wl,--no-allow-shlib-undefined -Wl,-z,now -Wl,-z,muldefs -Wl,--no-undefi=
ned-version    -DLIBEFIVAR_VERSION=3D38 -D_GNU_SOURCE -I/home/ichergui/proj=
ects/oe4t/tegra-bsp-platform/build-tegrademo/tmp/work/armv8a-oe4t-linux/efi=
var/38-r0/git/src/include/ -DLIBEFIVAR_VERSION=3D38 -D_GNU_SOURCE -I/home/i=
chergui/projects/oe4t/tegra-bsp-platform/build-tegrademo/tmp/work/armv8a-oe=
4t-linux/efivar/38-r0/git/src/include/ -DEFIVAR_BUILD_ENVIRONMENT -march=3D=
native -o makeguids makeguids.o util-makeguids.o -ldl=20
./makeguids Your linker is not supported guids.txt guid-symbols.c include/e=
fivar/efivar-guids.h guids.lds
makeguids: Too many arguments.

./makeguids Your linker is not supported guids.txt guid-symbols.c include/e=
fivar/efivar-guids.h guids.lds
makeguids: Too many arguments.

ERROR: oe_runmake failed</pre>
<span style=3D"background-color: transparent; color: inherit; font-family: =
Menlo, Monaco, Consolas, 'Courier New', monospace; font-size: inherit; whit=
e-space: pre-wrap;"><br /><br />Any help would be appreciated<br /></span><=
span style=3D"background-color: transparent; color: inherit; font-family: M=
enlo, Monaco, Consolas, 'Courier New', monospace; font-size: inherit; white=
-space: pre-wrap;">Best regards,<br />Ilies</span>

--bPRoe5PD1dvCcOJcGvJZ--

