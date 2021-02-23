Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web12.96.1614103399500958886
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Feb 2021 10:03:22 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=iwj9VyQJ;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1614103399; x=1771783399;
  h=from:to:subject:date:mime-version;
  bh=M9rmBQ9fVKvuwFDmsaeFQ87+R2tQM5NYVXlAVuZZi4E=;
  b=iwj9VyQJ78amiBhfNBmLg1+6H3nkdzZn3x+fWRPbdYQy2Yxlm6kT+MuH
   KiN/2M87z802z4DQmh4tcMCv93bxxD1Yq4L6dFBa2IGyoaJKs476gXsd/
   TakmWuCP6pZtHTRgRt1uA3xdY8XUzpnN7W+axftw6e/0vJlHZS+o2RPon
   g=;
IronPort-PHdr: =?us-ascii?q?9a23=3AOE2fUhbCzMxGV8rkS0oaSsj/LSx+4OfEezUN459i?=
 =?us-ascii?q?sYplN5qZrsS+bnLW6fgltlLVR4KTs6sC17OH9fC8EjVaud6oizMrSNR0TRgLiM?=
 =?us-ascii?q?EbzUQLIfWuLgnFFsPsdDEwB89YVVVorDmROElRH9viNRWJ+iXhpTEdFQ/iOgVr?=
 =?us-ascii?q?O+/7BpDdj9it1+C15pbffxhEiCCybL9vKBi6twbcu8YZjYd/NKo91gbCr2dVde?=
 =?us-ascii?q?hR2W5mP0+YkQzm5se38p5j8iBQtOwk+sVdT6j0fLk2QKJBAjg+PG87+MPktR/Y?=
 =?us-ascii?q?TQuS/XQcSXkZkgBJAwfe8h73WIr6vzbguep83CmaOtD2TawxVD+/4apnVAPkhS?=
 =?us-ascii?q?EaPDM/7WrZiNF/jLhDrRyhuRJx3pLUbo+WOvp/YqzScsgXSnBdUsZTTSFNHp+w?=
 =?us-ascii?q?Y5UJAuEcPehYtY79p14WoBewAgesA+XvyiRWiXDoxq02y/kqHxza3AM+AdIBrn?=
 =?us-ascii?q?LUp8jrOawPVey6wrTGwTDNY/hL3jr985TIfQ4/of6SW7J8a8/RyU4pFwPekFqf?=
 =?us-ascii?q?t5flMiiO2esXrWeb9OphVfmzi2E5rgFxuSKjydsrionMn48YzE3P+iplzogvP9?=
 =?us-ascii?q?K4VFJ7bsC+EJtWryyUOYV7T98jTmxquSs21KAKtIC4cSUKzJkqyBHSZ+GJfYWI?=
 =?us-ascii?q?7RzvSeKcLDV4iX9qeb+zmgi//Eyjx+D/S8S4zVlEoyxYmdfPrnAAzwHf5tSdRv?=
 =?us-ascii?q?Zz/EqtwyiD2x7T5+1eIE05lbLXJ4M9zrIqmZcevl7PEyDslEnrjKKbcFgv9PKy?=
 =?us-ascii?q?5OT9eLrmo4eRN4pzig7jLKsjgte/AeEkMggWWGib5Pi82KXj/ULnRLVKieU7kr?=
 =?us-ascii?q?XWsZ/AI8Qbo7W5DgtJ3oo/9xqzEi2q0NICknUdN11KYgyIj5PpOlHVPPD3E/K/?=
 =?us-ascii?q?g0+2nDh3wPDGO6XtApTLLnfdjLfsZatx51JGxAc9z91T/YxYBq8BLf7pW0L8tM?=
 =?us-ascii?q?TUDhojPAy1x+bnBs991oQbWW+XGa+ZLL3dsUGW6eIpOeWMYYgVuDDmK/c7+fHu?=
 =?us-ascii?q?lmQ0lkQHcqa3xpsWaGu4Huh4LEWcenrgmMsOEWAPvgYmVuzllEWCUSJPZ3a1R6?=
 =?us-ascii?q?895jY7B566DYfEXY2thL2B3DynHp1NfGxHCleMHmv0d4WDQ/cMciWSIs1/nTMY?=
 =?us-ascii?q?SbitUYgh1QuhtFyy970yZPvT8TEfnZbiz8RuofzUng017SZzDcmWzyeKVW4+1j?=
 =?us-ascii?q?cZQDQq24h7oFdh0RGS1qNkhORCEt5e7O8PVR01Y83y1et/XprXXQTac9qSDB6d?=
 =?us-ascii?q?Xti4DDd5ZZpx/uRPKQ4pAMmvkB3FmS+tBaQYmqejDpU56bPHw3X0PIB2zHOQh/?=
 =?us-ascii?q?pptEUvXsYabT7uvaV47QWGX4M=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AqBACwQjVg/0HhJQpaCB0BAQEBCQESA?=
 =?us-ascii?q?QUFAUCBT4EjgX6BQQqWD4EIm0ULAQEBAQEBAQEBCAEoDAQBAYZGJjgTAhABAQY?=
 =?us-ascii?q?BAQEBAQYEAYZSDII4IoQLEx4BPwFAQCYBBBuCZIF+gRevd4E0hBIBLAEDA4ESh?=
 =?us-ascii?q?HQJAYEuhnyISkCBEYIcSYUKhhwEgl0nOAYJOxsCUVg8m32eGgcDgnuJPpJRK6N?=
 =?us-ascii?q?FlEqdSCKEJAIEAgQFAhaBa4F6cIM5CUcXAg2cZ3MCNgIGCgEBAwmLBIEPAQE?=
X-IPAS-Result: =?us-ascii?q?A2AqBACwQjVg/0HhJQpaCB0BAQEBCQESAQUFAUCBT4EjgX6?=
 =?us-ascii?q?BQQqWD4EIm0ULAQEBAQEBAQEBCAEoDAQBAYZGJjgTAhABAQYBAQEBAQYEAYZSD?=
 =?us-ascii?q?II4IoQLEx4BPwFAQCYBBBuCZIF+gRevd4E0hBIBLAEDA4EShHQJAYEuhnyISkC?=
 =?us-ascii?q?BEYIcSYUKhhwEgl0nOAYJOxsCUVg8m32eGgcDgnuJPpJRK6NFlEqdSCKEJAIEA?=
 =?us-ascii?q?gQFAhaBa4F6cIM5CUcXAg2cZ3MCNgIGCgEBAwmLBIEPAQE?=
X-IronPort-AV: E=Sophos;i="5.81,200,1610409600"; 
   d="scan'208,217";a="487952569"
X-IronPort-AV: E=Sophos;i="5.81,200,1610409600"; 
   d="scan'208,217";a="99641332"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto #sdk
Thread-Topic: #yocto #sdk
Thread-Index: AdcKDS/7ogHC+51HQKytODgwbmJmnQ==
Date: Tue, 23 Feb 2021 18:02:57 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.1666727E0BA4548E.19263@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7f148d516a184985a795fa8cdd4dcb50baesystemscom_"

--_000_7f148d516a184985a795fa8cdd4dcb50baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I am trying to understand the warnings/error as seen below...

Building for zeus...

Built kernel image clean updated my SSTATE_MIRRORS directory with the state=
_cache generated.
Rebuilt my image clean again using SSTATE_MIRRORS
Image builds clean and behaves correctly when booted...

I then build the SDK, my SSTATE_MIRRORS is defined in sdk-extra.conf, and d=
oes properly show up in local.conf (checked after failure)
Building extended SDK has no issues.

But on install I see the following warnings and the error at the end...
I am not sure what is causing the issue here...

What would cause issues like this ?, and why ?

WARNING: The initscripts:do_install sig is computed to be 375d3c24b574b83fb=
04dc079fb52dd5e3a0ac31ed265acece2bb689f72f9adfa, but the sig is locked to 4=
0f5d2ac4affab9c60691714590ca00f30130ad2f5dc79f53aaf774957e1d927 in SIGGEN_L=
OCKEDSIGS_t-corei7-64

There isn't much in the documentation on this or SIGGEN...
What would be the best/proper approach to resolve issues like this ?

Thanks,
Steve

10:44 smonsees@yix490016 /disk0/scratch/smonsees/yocto/workspace_3/builds/s=
bcb-default> bitbake sbcb-defaultfs-full -c populate_sdk_ext
Loading cache: 100% |######################################################=
################################| Time: 0:00:00
Loaded 3645 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           =3D "1.44.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "rhel-7.9"
TARGET_SYS           =3D "x86_64-poky-linux"
MACHINE              =3D "sbcb-default"
DISTRO               =3D "limws"
DISTRO_VERSION       =3D "3.0.4"
TUNE_FEATURES        =3D "m64 corei7"
TARGET_FPU           =3D ""
meta
meta-poky            =3D "my_yocto_3.0.4:f2eb22a8783f1eecf99bd4042695bab920=
eed00e"
meta-perl
meta-python
meta-filesystems
meta-networking
meta-initramfs
meta-oe              =3D "zeus:2b5dd1eb81cd08bc065bc76125f2856e9383e98b"
meta                 =3D "master:a32ddd2b2a51b26c011fa50e441df39304651503"
meta-intel           =3D "zeus:d9942d4c3a710406b051852de7232db03c297f4e"
meta-intel           =3D "v2019.02:f635a364c55f1fb12519aff54924a0a5b947091e=
"

Initialising tasks: 100% |#################################################=
################################| Time: 0:00:04
Checking sstate mirror object availability: 100% |#########################=
################################| Time: 0:00:00
Sstate summary: Wanted 566 Found 298 Missed 268 Current 1794 (52% match, 88=
% complete)
NOTE: Executing Tasks
NOTE: Setscene tasks completed
NOTE: Tasks Summary: Attempted 6669 tasks of which 5861 didn't need to be r=
erun and all succeeded.
11:59 smonsees@yix490016 /disk0/scratch/smonsees/yocto/workspace_3/builds/s=
bcb-default> cd /disk0/scratch/smonsees/yocto/workspace_3/builds/sbcb-defau=
lt/tmp/deploy/sdk
11:59 smonsees@yix490016 /disk0/scratch/smonsees/yocto/workspace_3/builds/s=
bcb-default/tmp/deploy/sdk>ls
limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.host.manifest
limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.sh
limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.target.manifes=
t
limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.testdata.json
x86_64-buildtools-nativesdk-standalone-3.0.4.host.manifest
x86_64-buildtools-nativesdk-standalone-3.0.4.sh
x86_64-buildtools-nativesdk-standalone-3.0.4.target.manifest
x86_64-buildtools-nativesdk-standalone-3.0.4.testdata.json
11:59 smonsees@yix490016 /disk0/scratch/smonsees/yocto/workspace_3/builds/s=
bcb-default/tmp/deploy/sdk>./limws-glibc-x86_64-aiox_orange-corei7-64-toolc=
hain-ext-3.0.4.sh
LIMWS (BAE LIMWS base distro) Extensible SDK installer version 3.0.4
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Enter target directory for SDK (default: ~/limws_sdk): /disk0/scratch/smons=
ees/testSDK
You are about to install the SDK to "/disk0/scratch/smonsees/testSDK". Proc=
eed [Y/n]? Y
Extracting SDK.............................................................=
.................done
Setting it up...
Extracting buildtools...
Preparing build system...
Parsing recipes: 100% |####################################################=
################################| Time: 0:01:32
Initialising tasks: 100% |#################################################=
################################| Time: 0:00:04
Checking sstate mirror object availability: 100% |#########################=
################################| Time: 0:00:03
WARNING: The initscripts:do_install sig is computed to be 375d3c24b574b83fb=
04dc079fb52dd5e3a0ac31ed265acece2bb689f72f9adfa, but the sig is locked to 4=
0f5d2ac4affab9c60691714590ca00f30130ad2f5dc79f53aaf774957e1d927 in SIGGEN_L=
OCKEDSIGS_t-corei7-64
The linux-intel:do_compile sig is computed to be 9898137f78ba37d2fcf7df5a7b=
7a5dd0e5ddcbc7ce7ade89905bf5132a005a99, but the sig is locked to 06c0838700=
9f9808044e03144d1fa0b984be9f4ad64251e688503c2dabdf5b7c in SIGGEN_LOCKEDSIGS=
_t-corei7-64-intel-common
The imagerecv:do_compile sig is computed to be 644b002b181f27a407c33cc69cfc=
790201f1b48c4d7783c062d53c247d5704a5, but the sig is locked to a74b10cfc4ba=
d050ca98549b3df41fcd0fa986e08c14e05db44b0227d0b90a0a in SIGGEN_LOCKEDSIGS_t=
-sbcb-default
The tpm2-tss:do_configure sig is computed to be 04cf4c8e1424a46467a43620214=
fc3a5304863f5cbb662b5b26a5b82d792586f, but the sig is locked to ec4b02e1e3b=
1796883093be2aca63ec5e51df3dc14b9179be6f86f2675b3fa53 in SIGGEN_LOCKEDSIGS_=
t-corei7-64
The efitools:do_compile sig is computed to be c2e6dc60a7b8b2414b3761fe4966e=
031901144e3d32eed60bd580cc46e9b5358, but the sig is locked to 327fbae2aa4a4=
19554ede6847fcc7c367da018e5e9d907a0051e68df5a5a2063 in SIGGEN_LOCKEDSIGS_t-=
corei7-64
The monkeysphere:do_configure sig is computed to be 8a5cfb349fa84ca524bf680=
a922d0e1781f5dc9e0b5e0f6e0b135ea88e3f8fa1, but the sig is locked to 8d2bf2e=
dd3194e44de0143088e68703c02a88032bb089ef0a4600f7528695362 in SIGGEN_LOCKEDS=
IGS_t-corei7-64
The monkeysphere:do_compile sig is computed to be 819f7700a7f611335b8a5e4f8=
243623c4f01b187f197aa19cd034383af17b41b, but the sig is locked to 822db6964=
00b5a788fbcc0e80f1fe242bd58cab992ff196efac191444d7b3b99 in SIGGEN_LOCKEDSIG=
S_t-corei7-64
The monkeysphere:do_install sig is computed to be f2f8cb58b07a350eefd41af13=
e1156abd85659b1865dc278238277d9230e2e3f, but the sig is locked to 9e1ca795d=
f7d73347f0efeeac54c24f1004d59011b97262207e1055f771ee95c in SIGGEN_LOCKEDSIG=
S_t-corei7-64
The monkeysphere:do_populate_sysroot sig is computed to be ca8fe144be00929f=
3c42cb36b809a06b85d70c4f9fa1c0f6fd67b07af84d17a1, but the sig is locked to =
2a41afd838cdac669dd99deefdc530c5d503329fb1fae2fb3641b490a2bbec8a in SIGGEN_=
LOCKEDSIGS_t-corei7-64
The monkeysphere:do_package sig is computed to be 29a5daea524a219c5216b5d76=
447160d006e7db633e38c7d1ade6b599eb6c2ab, but the sig is locked to 2b2cef367=
c44399221b07f14facff9b1ae598ccc272c4b98ddfc4b08009fc090 in SIGGEN_LOCKEDSIG=
S_t-corei7-64
The signature:do_configure sig is computed to be 613844241ce15b245abe2fb930=
6415616c72553e943183307b3496f85637345e, but the sig is locked to 68a818acd3=
281e28bd57efcd449a0bac0ffaa2733fcb02f6b28b2fe31d36e835 in SIGGEN_LOCKEDSIGS=
_t-corei7-64
The signature:do_compile sig is computed to be 8b37e4a0e6ec0068b7dda0eccd1e=
32577daedf248f1c3e71f82f6454d3e4338d, but the sig is locked to 6f291a0f9ba5=
9f355d9a88d646f72bf99a001f862b310e5e435e8b406632b6b4 in SIGGEN_LOCKEDSIGS_t=
-corei7-64
The signature:do_install sig is computed to be 3a20f56cc04551f13378e9e596da=
a5eebc385ca965ebdf18adacfa7ef94c9018, but the sig is locked to 8fc761f8bf02=
15ea2fb9609037a5df0c7e2ad6dd9253555ea5f492b7068e7bff in SIGGEN_LOCKEDSIGS_t=
-corei7-64
The signature:do_populate_sysroot sig is computed to be 97d2f34ef4b40fe8e32=
4c04346ad0cdf22cde6cc774f336400797cb6a483d08c, but the sig is locked to 937=
00035bc1a42b4f7e5f05ef30d4bc6fdf2abc0dd1f707b2e745ceed25d5770 in SIGGEN_LOC=
KEDSIGS_t-corei7-64
The signature:do_package sig is computed to be f59f3584026d4acf71d4300a18ff=
4bf05c0f3e3b42c2d5264af9be63820a0386, but the sig is locked to bdc6003bbd7a=
42a83e9a6a7ebe691e93a9744ae96c664d8656907a15af84be1c in SIGGEN_LOCKEDSIGS_t=
-corei7-64
The grub-efi-native:do_clean_grub sig is computed to be 17c62b3df5a57ee4cbd=
0e7abf1284a5d499ba4c814aaded564a24085b9fd326c, but the sig is locked to c88=
35ffb27e0d97b332dddad3fb83bdb849a267a8a0fa7142e66a76696c910ff in SIGGEN_LOC=
KEDSIGS_t-x86-64
The grub-efi-native:do_configure sig is computed to be a6dfb6cd633432b36b81=
8b63fd6e06e086d189b62cd7fc6370c4e66e9668fa1d, but the sig is locked to 1946=
02954bb4993b85397aeb06557d10ff14b15d52a321389cdbb0139d2ce34c in SIGGEN_LOCK=
EDSIGS_t-x86-64
The grub-efi-native:do_compile sig is computed to be 583800a58ca2e602d50b4e=
23485774e8b681f79bf48a1a854b71264a0ddcb733, but the sig is locked to e642b6=
c931bda1d51bc5394596cdacce7099875d1e873b39849607e03972c5b9 in SIGGEN_LOCKED=
SIGS_t-x86-64
The grub-efi-native:do_mkimage sig is computed to be 87a6528cb8624851708b1f=
4d3fa26beb96f71f1a3cb0c4d48fe0aaf9255fb244, but the sig is locked to bc04f7=
9c9988122be8297c3ea2e7aa13fbe18444b1151a547332112616e11480 in SIGGEN_LOCKED=
SIGS_t-x86-64
The grub-efi-native:do_install sig is computed to be 6e8a988562949ae845beb0=
150acf7702a360094db56096b6e2bbb65820bbb3f0, but the sig is locked to 38427f=
f1c0bfa569a27a6c5acf51bb3483d882b18a1fa0bfbfaa371822df7837 in SIGGEN_LOCKED=
SIGS_t-x86-64
The grub-efi-native:do_populate_sysroot sig is computed to be 3ba3744800732=
b69e71d33ea0db797a78bb2340727fc54f211bd0f7c1325374c, but the sig is locked =
to fcd9daa126de91d4d1de701ed1ff1c2774c3e42207e1fff85b86109eb54b290c in SIGG=
EN_LOCKEDSIGS_t-x86-64
The grub-efi:do_clean_grub sig is computed to be 928fbd9c1d534333f18a6f751a=
d705c03f083ff00374a781b02e1aee47b92bee, but the sig is locked to 67a039367c=
0593803d8c70207f079fd8be28dbc6c548b13837fa7eb177b156e0 in SIGGEN_LOCKEDSIGS=
_t-corei7-64
The grub-efi-native:do_deploy sig is computed to be 4875f4b51c38f31140775a2=
a4457839eabef2529791cccbb9ed656eef63892fc, but the sig is locked to 6576c95=
aa5c0c7b505ca2cc02fdde3f678f2b039c2f0b57810b17694b6070a46 in SIGGEN_LOCKEDS=
IGS_t-x86-64
The grub-efi:do_configure sig is computed to be 84ab069273c4b2703ca4fa200d5=
fb66adcaffa39b8f36138339d4837b9281a9d, but the sig is locked to e8900241347=
d4616468e7a4a4c37b8496a1167c2b3d58f7bb55332da645bd7e0 in SIGGEN_LOCKEDSIGS_=
t-corei7-64
The grub-efi:do_compile sig is computed to be 619bdca4f1a6df8c8c2c7ad49b728=
9af3477e3c76c00b84229584793f23fb115, but the sig is locked to 56ca563b3bcb6=
6b72f53f51562f41dd0cf9af878335836e8fd6b6a07e32fa8bc in SIGGEN_LOCKEDSIGS_t-=
corei7-64
The grub-efi:do_mkimage sig is computed to be f212bd74eb95f4d413c9867f85317=
1747fe4fe86912138a0ac79234fe4be73b7, but the sig is locked to 80e9256f12e30=
70737c81f76310cc408473b92b877b23494cd1b4c2abdffd56d in SIGGEN_LOCKEDSIGS_t-=
corei7-64
The grub-efi:do_install sig is computed to be 45753f50a553391bd80cf679039cc=
cf879ef1eaca90e1dcfefb432621dfc0000, but the sig is locked to 3910d27330229=
314b793a94c7085c231a56c1073d7e79d4cceade5a373600252 in SIGGEN_LOCKEDSIGS_t-=
corei7-64
The grub-efi:do_populate_sysroot sig is computed to be 3437833e837748a59e00=
2f95773a8f61a715bb56c0f20671fa39a71556ad6d5d, but the sig is locked to d0d6=
0bc1d9bf488c7568e592b3b1aeeb2e2796c9994f83fe1b781e0d006e432b in SIGGEN_LOCK=
EDSIGS_t-corei7-64
The grub-efi:do_package sig is computed to be 81fa6cf23920cea4139ed3cefd6c9=
4a3878580f6a45925279c7d75e3c487f162, but the sig is locked to d7ec82448f34e=
c8c0169f613fdd14237cebb1951efa3d35d53dc71d24f220cb8 in SIGGEN_LOCKEDSIGS_t-=
corei7-64
The grub-efi:do_deploy sig is computed to be f7831a1a7e1d8683e1c0c86fd32486=
ec8d9e5e713d63e39984aa36f50bff7f91, but the sig is locked to 1c781659fad7fb=
174716d05aa5727f68e710ad7c6593dc178f40866d6e868f19 in SIGGEN_LOCKEDSIGS_t-c=
orei7-64
The tpm2-tools:do_configure sig is computed to be 10fa6cf0c4fa307a427978392=
ecf60d7a8853e11ca1747ea5ad8743fd42280f3, but the sig is locked to 5e6a2caa2=
7901f95518467ca35b68043fee7802dfa8be39ae51e61c9eedf9a8d in SIGGEN_LOCKEDSIG=
S_t-corei7-64
The wolfssl:do_configure sig is computed to be 5569ddf9b10e2df9f5de456ca35b=
9baeb34a1f67617357d5e1a9264baf3d1e0e, but the sig is locked to eaf1b3802107=
18071d8962eeccbd97efad180fabc750b18f4e98661de06ae11f in SIGGEN_LOCKEDSIGS_t=
-corei7-64
The crush:do_configure sig is computed to be f034116fd9598a09aa975e94dd4896=
4e0d49deecf63d96c436bd4cccc7b68298, but the sig is locked to 64dfc5ff4a9ee2=
9e9a20f1166ec2ee6fe20ffcd93e7618eabd02435c29f219ed in SIGGEN_LOCKEDSIGS_t-c=
orei7-64
ERROR: Task quilt-native.do_fetch attempted to execute unexpectedly






--_000_7f148d516a184985a795fa8cdd4dcb50baesystemscom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to understand the warnings/error as seen=
 below&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Building for zeus&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Built kernel image clean updated my SSTATE_MIRRORS d=
irectory with the state_cache generated.<o:p></o:p></p>
<p class=3D"MsoNormal">Rebuilt my image clean again using SSTATE_MIRRORS<o:=
p></o:p></p>
<p class=3D"MsoNormal">Image builds clean and behaves correctly when booted=
&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I then build the SDK, my SSTATE_MIRRORS is defined i=
n sdk-extra.conf, and does properly show up in local.conf (checked after fa=
ilure)<o:p></o:p></p>
<p class=3D"MsoNormal">Building extended SDK has no issues.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">But on install I see the following warnings and the =
error at the end&#8230;
<o:p></o:p></p>
<p class=3D"MsoNormal">I am not sure what is causing the issue here&#8230; =
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What would cause issues like this ?, and why ?<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>WARNING: The initscripts:do_install <span style=
=3D"color:red">
sig is computed to be </span>375d3c24b574b83fb04dc079fb52dd5e3a0ac31ed265ac=
ece2bb689f72f9adfa,
<span style=3D"color:red">but the sig is locked to </span>40f5d2ac4affab9c6=
0691714590ca00f30130ad2f5dc79f53aaf774957e1d927
<span style=3D"color:red">in SIGGEN_LOCKEDSIGS_t-corei7-64</span><o:p></o:p=
></b></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoNormal"><b>There isn&#8217;t much in the documentation on th=
is or SIGGEN&#8230;<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b><o:p></o:p></b></p>
<p class=3D"MsoNormal">What would be the best/proper approach to resolve is=
sues like this ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">10:44 smonsees@yix490016 /disk0/scratch/smonsees/yoc=
to/workspace_3/builds/sbcb-default&gt; bitbake sbcb-defaultfs-full -c popul=
ate_sdk_ext<o:p></o:p></p>
<p class=3D"MsoNormal">Loading cache: 100% |###############################=
#######################################################| Time: 0:00:00<o:p>=
</o:p></p>
<p class=3D"MsoNormal">Loaded 3645 entries from dependency cache.<o:p></o:p=
></p>
<p class=3D"MsoNormal">NOTE: Resolving any missing task queue dependencies<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Build Configuration:<o:p></o:p></p>
<p class=3D"MsoNormal">BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;1.44.0&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;x86_64-linux&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">NATIVELSBSTRING&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &q=
uot;rhel-7.9&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;x86_64-poky-linux&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;sbcb-default&quot;<o:p></o:p></=
p>
<p class=3D"MsoNormal">DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;limws&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">DISTRO_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;3.0.4&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; =3D &quot;m64 corei7&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">meta-poky&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;my_yocto_3.0.4:f2eb22a8783f1eecf99bd40426=
95bab920eed00e&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta-perl&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">meta-python&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">meta-filesystems&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p>=
</p>
<p class=3D"MsoNormal">meta-networking&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p><=
/o:p></p>
<p class=3D"MsoNormal">meta-initramfs&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <=
o:p></o:p></p>
<p class=3D"MsoNormal">meta-oe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;zeus:2b5dd1eb81cd08bc065bc76125=
f2856e9383e98b&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;master:a32ddd2b2=
a51b26c011fa50e441df39304651503&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta-intel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;zeus:d9942d4c3a710406b051852de7232db03c297f4e&=
quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta-intel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;v2019.02:f635a364c55f1fb12519aff54924a0a5b9470=
91e&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Initialising tasks: 100% |##########################=
#######################################################| Time: 0:00:04<o:p>=
</o:p></p>
<p class=3D"MsoNormal">Checking sstate mirror object availability: 100% |##=
#######################################################| Time: 0:00:00<o:p>=
</o:p></p>
<p class=3D"MsoNormal">Sstate summary: Wanted 566 Found 298 Missed 268 Curr=
ent 1794 (52% match, 88% complete)<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Executing Tasks<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Setscene tasks completed<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Tasks Summary: Attempted 6669 tasks of which 5=
861 didn't need to be rerun and all succeeded.<o:p></o:p></p>
<p class=3D"MsoNormal">11:59 smonsees@yix490016 /disk0/scratch/smonsees/yoc=
to/workspace_3/builds/sbcb-default&gt; cd /disk0/scratch/smonsees/yocto/wor=
kspace_3/builds/sbcb-default/tmp/deploy/sdk<o:p></o:p></p>
<p class=3D"MsoNormal">11:59 smonsees@yix490016 /disk0/scratch/smonsees/yoc=
to/workspace_3/builds/sbcb-default/tmp/deploy/sdk&gt;ls<o:p></o:p></p>
<p class=3D"MsoNormal">limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-e=
xt-3.0.4.host.manifest<o:p></o:p></p>
<p class=3D"MsoNormal">limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-e=
xt-3.0.4.sh<o:p></o:p></p>
<p class=3D"MsoNormal">limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-e=
xt-3.0.4.target.manifest<o:p></o:p></p>
<p class=3D"MsoNormal">limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-e=
xt-3.0.4.testdata.json<o:p></o:p></p>
<p class=3D"MsoNormal">x86_64-buildtools-nativesdk-standalone-3.0.4.host.ma=
nifest<o:p></o:p></p>
<p class=3D"MsoNormal">x86_64-buildtools-nativesdk-standalone-3.0.4.sh<o:p>=
</o:p></p>
<p class=3D"MsoNormal">x86_64-buildtools-nativesdk-standalone-3.0.4.target.=
manifest<o:p></o:p></p>
<p class=3D"MsoNormal">x86_64-buildtools-nativesdk-standalone-3.0.4.testdat=
a.json<o:p></o:p></p>
<p class=3D"MsoNormal">11:59 smonsees@yix490016 /disk0/scratch/smonsees/yoc=
to/workspace_3/builds/sbcb-default/tmp/deploy/sdk&gt;./limws-glibc-x86_64-a=
iox_orange-corei7-64-toolchain-ext-3.0.4.sh<o:p></o:p></p>
<p class=3D"MsoNormal">LIMWS (BAE LIMWS base distro) Extensible SDK install=
er version 3.0.4<o:p></o:p></p>
<p class=3D"MsoNormal">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<o:p></o:p></p>
<p class=3D"MsoNormal">Enter target directory for SDK (default: ~/limws_sdk=
): /disk0/scratch/smonsees/testSDK<o:p></o:p></p>
<p class=3D"MsoNormal">You are about to install the SDK to &quot;/disk0/scr=
atch/smonsees/testSDK&quot;. Proceed [Y/n]? Y<o:p></o:p></p>
<p class=3D"MsoNormal">Extracting SDK......................................=
........................................done<o:p></o:p></p>
<p class=3D"MsoNormal">Setting it up...<o:p></o:p></p>
<p class=3D"MsoNormal">Extracting buildtools...<o:p></o:p></p>
<p class=3D"MsoNormal">Preparing build system...<o:p></o:p></p>
<p class=3D"MsoNormal">Parsing recipes: 100% |#############################=
#######################################################| Time: 0:01:32<o:p>=
</o:p></p>
<p class=3D"MsoNormal">Initialising tasks: 100% |##########################=
#######################################################| Time: 0:00:04<o:p>=
</o:p></p>
<p class=3D"MsoNormal">Checking sstate mirror object availability: 100% |##=
#######################################################| Time: 0:00:03<o:p>=
</o:p></p>
<p class=3D"MsoNormal">WARNING: The initscripts:do_install sig is computed =
to be 375d3c24b574b83fb04dc079fb52dd5e3a0ac31ed265acece2bb689f72f9adfa, but=
 the sig is locked to 40f5d2ac4affab9c60691714590ca00f30130ad2f5dc79f53aaf7=
74957e1d927 in SIGGEN_LOCKEDSIGS_t-corei7-64<o:p></o:p></p>
<p class=3D"MsoNormal">The linux-intel:do_compile sig is computed to be 989=
8137f78ba37d2fcf7df5a7b7a5dd0e5ddcbc7ce7ade89905bf5132a005a99, but the sig =
is locked to 06c08387009f9808044e03144d1fa0b984be9f4ad64251e688503c2dabdf5b=
7c in SIGGEN_LOCKEDSIGS_t-corei7-64-intel-common<o:p></o:p></p>
<p class=3D"MsoNormal">The imagerecv:do_compile sig is computed to be 644b0=
02b181f27a407c33cc69cfc790201f1b48c4d7783c062d53c247d5704a5, but the sig is=
 locked to a74b10cfc4bad050ca98549b3df41fcd0fa986e08c14e05db44b0227d0b90a0a=
 in SIGGEN_LOCKEDSIGS_t-sbcb-default<o:p></o:p></p>
<p class=3D"MsoNormal">The tpm2-tss:do_configure sig is computed to be 04cf=
4c8e1424a46467a43620214fc3a5304863f5cbb662b5b26a5b82d792586f, but the sig i=
s locked to ec4b02e1e3b1796883093be2aca63ec5e51df3dc14b9179be6f86f2675b3fa5=
3 in SIGGEN_LOCKEDSIGS_t-corei7-64<o:p></o:p></p>
<p class=3D"MsoNormal">The efitools:do_compile sig is computed to be c2e6dc=
60a7b8b2414b3761fe4966e031901144e3d32eed60bd580cc46e9b5358, but the sig is =
locked to 327fbae2aa4a419554ede6847fcc7c367da018e5e9d907a0051e68df5a5a2063 =
in SIGGEN_LOCKEDSIGS_t-corei7-64<o:p></o:p></p>
<p class=3D"MsoNormal">The monkeysphere:do_configure sig is computed to be =
8a5cfb349fa84ca524bf680a922d0e1781f5dc9e0b5e0f6e0b135ea88e3f8fa1, but the s=
ig is locked to 8d2bf2edd3194e44de0143088e68703c02a88032bb089ef0a4600f75286=
95362 in SIGGEN_LOCKEDSIGS_t-corei7-64<o:p></o:p></p>
<p class=3D"MsoNormal">The monkeysphere:do_compile sig is computed to be 81=
9f7700a7f611335b8a5e4f8243623c4f01b187f197aa19cd034383af17b41b, but the sig=
 is locked to 822db696400b5a788fbcc0e80f1fe242bd58cab992ff196efac191444d7b3=
b99 in SIGGEN_LOCKEDSIGS_t-corei7-64<o:p></o:p></p>
<p class=3D"MsoNormal">The monkeysphere:do_install sig is computed to be f2=
f8cb58b07a350eefd41af13e1156abd85659b1865dc278238277d9230e2e3f, but the sig=
 is locked to 9e1ca795df7d73347f0efeeac54c24f1004d59011b97262207e1055f771ee=
95c in SIGGEN_LOCKEDSIGS_t-corei7-64<o:p></o:p></p>
<p class=3D"MsoNormal">The monkeysphere:do_populate_sysroot sig is computed=
 to be ca8fe144be00929f3c42cb36b809a06b85d70c4f9fa1c0f6fd67b07af84d17a1, bu=
t the sig is locked to 2a41afd838cdac669dd99deefdc530c5d503329fb1fae2fb3641=
b490a2bbec8a in SIGGEN_LOCKEDSIGS_t-corei7-64<o:p></o:p></p>
<p class=3D"MsoNormal">The monkeysphere:do_package sig is computed to be 29=
a5daea524a219c5216b5d76447160d006e7db633e38c7d1ade6b599eb6c2ab, but the sig=
 is locked to 2b2cef367c44399221b07f14facff9b1ae598ccc272c4b98ddfc4b08009fc=
090 in SIGGEN_LOCKEDSIGS_t-corei7-64<o:p></o:p></p>
<p class=3D"MsoNormal">The signature:do_configure sig is computed to be 613=
844241ce15b245abe2fb9306415616c72553e943183307b3496f85637345e, but the sig =
is locked to 68a818acd3281e28bd57efcd449a0bac0ffaa2733fcb02f6b28b2fe31d36e8=
35 in SIGGEN_LOCKEDSIGS_t-corei7-64<o:p></o:p></p>
<p class=3D"MsoNormal">The signature:do_compile sig is computed to be 8b37e=
4a0e6ec0068b7dda0eccd1e32577daedf248f1c3e71f82f6454d3e4338d, but the sig is=
 locked to 6f291a0f9ba59f355d9a88d646f72bf99a001f862b310e5e435e8b406632b6b4=
 in SIGGEN_LOCKEDSIGS_t-corei7-64<o:p></o:p></p>
<p class=3D"MsoNormal">The signature:do_install sig is computed to be 3a20f=
56cc04551f13378e9e596daa5eebc385ca965ebdf18adacfa7ef94c9018, but the sig is=
 locked to 8fc761f8bf0215ea2fb9609037a5df0c7e2ad6dd9253555ea5f492b7068e7bff=
 in SIGGEN_LOCKEDSIGS_t-corei7-64<o:p></o:p></p>
<p class=3D"MsoNormal">The signature:do_populate_sysroot sig is computed to=
 be 97d2f34ef4b40fe8e324c04346ad0cdf22cde6cc774f336400797cb6a483d08c, but t=
he sig is locked to 93700035bc1a42b4f7e5f05ef30d4bc6fdf2abc0dd1f707b2e745ce=
ed25d5770 in SIGGEN_LOCKEDSIGS_t-corei7-64<o:p></o:p></p>
<p class=3D"MsoNormal">The signature:do_package sig is computed to be f59f3=
584026d4acf71d4300a18ff4bf05c0f3e3b42c2d5264af9be63820a0386, but the sig is=
 locked to bdc6003bbd7a42a83e9a6a7ebe691e93a9744ae96c664d8656907a15af84be1c=
 in SIGGEN_LOCKEDSIGS_t-corei7-64<o:p></o:p></p>
<p class=3D"MsoNormal">The grub-efi-native:do_clean_grub sig is computed to=
 be 17c62b3df5a57ee4cbd0e7abf1284a5d499ba4c814aaded564a24085b9fd326c, but t=
he sig is locked to c8835ffb27e0d97b332dddad3fb83bdb849a267a8a0fa7142e66a76=
696c910ff in SIGGEN_LOCKEDSIGS_t-x86-64<o:p></o:p></p>
<p class=3D"MsoNormal">The grub-efi-native:do_configure sig is computed to =
be a6dfb6cd633432b36b818b63fd6e06e086d189b62cd7fc6370c4e66e9668fa1d, but th=
e sig is locked to 194602954bb4993b85397aeb06557d10ff14b15d52a321389cdbb013=
9d2ce34c in SIGGEN_LOCKEDSIGS_t-x86-64<o:p></o:p></p>
<p class=3D"MsoNormal">The grub-efi-native:do_compile sig is computed to be=
 583800a58ca2e602d50b4e23485774e8b681f79bf48a1a854b71264a0ddcb733, but the =
sig is locked to e642b6c931bda1d51bc5394596cdacce7099875d1e873b39849607e039=
72c5b9 in SIGGEN_LOCKEDSIGS_t-x86-64<o:p></o:p></p>
<p class=3D"MsoNormal">The grub-efi-native:do_mkimage sig is computed to be=
 87a6528cb8624851708b1f4d3fa26beb96f71f1a3cb0c4d48fe0aaf9255fb244, but the =
sig is locked to bc04f79c9988122be8297c3ea2e7aa13fbe18444b1151a547332112616=
e11480 in SIGGEN_LOCKEDSIGS_t-x86-64<o:p></o:p></p>
<p class=3D"MsoNormal">The grub-efi-native:do_install sig is computed to be=
 6e8a988562949ae845beb0150acf7702a360094db56096b6e2bbb65820bbb3f0, but the =
sig is locked to 38427ff1c0bfa569a27a6c5acf51bb3483d882b18a1fa0bfbfaa371822=
df7837 in SIGGEN_LOCKEDSIGS_t-x86-64<o:p></o:p></p>
<p class=3D"MsoNormal">The grub-efi-native:do_populate_sysroot sig is compu=
ted to be 3ba3744800732b69e71d33ea0db797a78bb2340727fc54f211bd0f7c1325374c,=
 but the sig is locked to fcd9daa126de91d4d1de701ed1ff1c2774c3e42207e1fff85=
b86109eb54b290c in SIGGEN_LOCKEDSIGS_t-x86-64<o:p></o:p></p>
<p class=3D"MsoNormal">The grub-efi:do_clean_grub sig is computed to be 928=
fbd9c1d534333f18a6f751ad705c03f083ff00374a781b02e1aee47b92bee, but the sig =
is locked to 67a039367c0593803d8c70207f079fd8be28dbc6c548b13837fa7eb177b156=
e0 in SIGGEN_LOCKEDSIGS_t-corei7-64<o:p></o:p></p>
<p class=3D"MsoNormal">The grub-efi-native:do_deploy sig is computed to be =
4875f4b51c38f31140775a2a4457839eabef2529791cccbb9ed656eef63892fc, but the s=
ig is locked to 6576c95aa5c0c7b505ca2cc02fdde3f678f2b039c2f0b57810b17694b60=
70a46 in SIGGEN_LOCKEDSIGS_t-x86-64<o:p></o:p></p>
<p class=3D"MsoNormal">The grub-efi:do_configure sig is computed to be 84ab=
069273c4b2703ca4fa200d5fb66adcaffa39b8f36138339d4837b9281a9d, but the sig i=
s locked to e8900241347d4616468e7a4a4c37b8496a1167c2b3d58f7bb55332da645bd7e=
0 in SIGGEN_LOCKEDSIGS_t-corei7-64<o:p></o:p></p>
<p class=3D"MsoNormal">The grub-efi:do_compile sig is computed to be 619bdc=
a4f1a6df8c8c2c7ad49b7289af3477e3c76c00b84229584793f23fb115, but the sig is =
locked to 56ca563b3bcb66b72f53f51562f41dd0cf9af878335836e8fd6b6a07e32fa8bc =
in SIGGEN_LOCKEDSIGS_t-corei7-64<o:p></o:p></p>
<p class=3D"MsoNormal">The grub-efi:do_mkimage sig is computed to be f212bd=
74eb95f4d413c9867f853171747fe4fe86912138a0ac79234fe4be73b7, but the sig is =
locked to 80e9256f12e3070737c81f76310cc408473b92b877b23494cd1b4c2abdffd56d =
in SIGGEN_LOCKEDSIGS_t-corei7-64<o:p></o:p></p>
<p class=3D"MsoNormal">The grub-efi:do_install sig is computed to be 45753f=
50a553391bd80cf679039cccf879ef1eaca90e1dcfefb432621dfc0000, but the sig is =
locked to 3910d27330229314b793a94c7085c231a56c1073d7e79d4cceade5a373600252 =
in SIGGEN_LOCKEDSIGS_t-corei7-64<o:p></o:p></p>
<p class=3D"MsoNormal">The grub-efi:do_populate_sysroot sig is computed to =
be 3437833e837748a59e002f95773a8f61a715bb56c0f20671fa39a71556ad6d5d, but th=
e sig is locked to d0d60bc1d9bf488c7568e592b3b1aeeb2e2796c9994f83fe1b781e0d=
006e432b in SIGGEN_LOCKEDSIGS_t-corei7-64<o:p></o:p></p>
<p class=3D"MsoNormal">The grub-efi:do_package sig is computed to be 81fa6c=
f23920cea4139ed3cefd6c94a3878580f6a45925279c7d75e3c487f162, but the sig is =
locked to d7ec82448f34ec8c0169f613fdd14237cebb1951efa3d35d53dc71d24f220cb8 =
in SIGGEN_LOCKEDSIGS_t-corei7-64<o:p></o:p></p>
<p class=3D"MsoNormal">The grub-efi:do_deploy sig is computed to be f7831a1=
a7e1d8683e1c0c86fd32486ec8d9e5e713d63e39984aa36f50bff7f91, but the sig is l=
ocked to 1c781659fad7fb174716d05aa5727f68e710ad7c6593dc178f40866d6e868f19 i=
n SIGGEN_LOCKEDSIGS_t-corei7-64<o:p></o:p></p>
<p class=3D"MsoNormal">The tpm2-tools:do_configure sig is computed to be 10=
fa6cf0c4fa307a427978392ecf60d7a8853e11ca1747ea5ad8743fd42280f3, but the sig=
 is locked to 5e6a2caa27901f95518467ca35b68043fee7802dfa8be39ae51e61c9eedf9=
a8d in SIGGEN_LOCKEDSIGS_t-corei7-64<o:p></o:p></p>
<p class=3D"MsoNormal">The wolfssl:do_configure sig is computed to be 5569d=
df9b10e2df9f5de456ca35b9baeb34a1f67617357d5e1a9264baf3d1e0e, but the sig is=
 locked to eaf1b380210718071d8962eeccbd97efad180fabc750b18f4e98661de06ae11f=
 in SIGGEN_LOCKEDSIGS_t-corei7-64<o:p></o:p></p>
<p class=3D"MsoNormal">The crush:do_configure sig is computed to be f034116=
fd9598a09aa975e94dd48964e0d49deecf63d96c436bd4cccc7b68298, but the sig is l=
ocked to 64dfc5ff4a9ee29e9a20f1166ec2ee6fe20ffcd93e7618eabd02435c29f219ed i=
n SIGGEN_LOCKEDSIGS_t-corei7-64<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task quilt-native.do_fetch attempted to execu=
te unexpectedly<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_7f148d516a184985a795fa8cdd4dcb50baesystemscom_--
