Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
 by mx.groups.io with SMTP id smtpd.web09.1434.1614108615515437943
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Feb 2021 11:30:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fCAb3ct9;
 spf=pass (domain: gmail.com, ip: 209.85.160.177, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f177.google.com with SMTP id v3so12761589qtw.4
        for <yocto@lists.yoctoproject.org>; Tue, 23 Feb 2021 11:30:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=VTGAaQDVmLnMOP/khdhR8vekm4vqXM16rKQCkeLTsV4=;
        b=fCAb3ct9YWtUALzXcrwga3oL/UyDyjTE7abeD1sMd6NEXmJvTUM5M6+cx/5mZnVVgF
         pH1Piq+pjAcTBrMRgxuRX0jutWAmUBkbgM134oxBcbZwsP0ysQveygyvdNyHOIGwiteF
         oOvSFKK8T8IjIxpBVU/TZujzy341QJrPKdt/iuwAqFly+sWIs34cQIq4Qtfcj8phMOLf
         0p0e7r7aLlp/OJ59ij+1z11sjoDfVAYaBNYTA2BtRkwpHbg+OH5RbjnWpnb2Y7QHlgSZ
         ur4cULbqXFgtlF4q2pWVuCuMjI97VUxfUhfIRTHPN7Qan/Px15p2N4Vujhzsy0bssEmJ
         vQEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=VTGAaQDVmLnMOP/khdhR8vekm4vqXM16rKQCkeLTsV4=;
        b=nj7zGSWyHhdftMy0J3NkgAQc7BjSwv68TDBAcn5qbjwF7/ajxhxbbkJhYyRAcJZCrZ
         u2ttdWV9IrmtWoH3FBjgz3EpnHuSGq2fQpGJo2jO6fbYN57ULl9EMGbfLLeuGdua/o4m
         Whf1oo3Y75r7TJChk4gjsczO1Ydit+f91ic5cvOgU0RRLXzOyLxNzoIwL1+wQIlct2zJ
         1DdicUmxcttglBsOD6B3C4/P0ZWqISoUZgc9J3sG2vZELzqi7ulHB58SWov4vovejG8a
         ne1yuxIl1DjWCRnIaY45f8wHnCpAryJWvqEhCMu43Vk3nlOc74KUcUPzct+6KL3SbsT9
         zvZQ==
X-Gm-Message-State: AOAM530rTgKUcP2GVrST/ZXz1Fr6U7ltGpODgRuHGQk+ZHTemQzkbI+i
	gDh12UUFYMW434VgU1VJQXcwPg9qQkM92cWizJs=
X-Google-Smtp-Source: ABdhPJxDGXZ7kCi1KB7y5U6jfY/oulfwVb4vdNJmwLxFzZr0MqOdZjoLAFpzG9TBAuhWNCXARp+L7hPWMbDmfSP2dBI=
X-Received: by 2002:ac8:745:: with SMTP id k5mr26042463qth.214.1614108614278;
 Tue, 23 Feb 2021 11:30:14 -0800 (PST)
MIME-Version: 1.0
References: <MADEUP.1666727E0BA4548E.19263@lists.yoctoproject.org>
In-Reply-To: <MADEUP.1666727E0BA4548E.19263@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 23 Feb 2021 11:29:48 -0800
Message-ID: <CAMKF1srNT25=KZzJccuzKQAoc0vRFd30rbZA2V7NAy1a1_iqww@mail.gmail.com>
Subject: Re: [yocto] #yocto #sdk
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

https://wiki.yoctoproject.org/wiki/TipsAndTricks/Understanding_what_changed=
_(diffsigs_etc)

On Tue, Feb 23, 2021 at 10:03 AM Monsees, Steven C (US) via
lists.yoctoproject.org
<steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
>
>
>
> I am trying to understand the warnings/error as seen below=E2=80=A6
>
>
>
> Building for zeus=E2=80=A6
>
>
>
> Built kernel image clean updated my SSTATE_MIRRORS directory with the st=
ate_cache generated.
>
> Rebuilt my image clean again using SSTATE_MIRRORS
>
> Image builds clean and behaves correctly when booted=E2=80=A6
>
>
>
> I then build the SDK, my SSTATE_MIRRORS is defined in sdk-extra.conf, an=
d does properly show up in local.conf (checked after failure)
>
> Building extended SDK has no issues.
>
>
>
> But on install I see the following warnings and the error at the end=E2=
=80=A6
>
> I am not sure what is causing the issue here=E2=80=A6
>
>
>
> What would cause issues like this ?, and why ?
>
>
>
> WARNING: The initscripts:do_install sig is computed to be 375d3c24b574b8=
3fb04dc079fb52dd5e3a0ac31ed265acece2bb689f72f9adfa, but the sig is locked t=
o 40f5d2ac4affab9c60691714590ca00f30130ad2f5dc79f53aaf774957e1d927 in SIGGE=
N_LOCKEDSIGS_t-corei7-64
>
>
>
> There isn=E2=80=99t much in the documentation on this or SIGGEN=E2=80=A6
>
> What would be the best/proper approach to resolve issues like this ?
>
>
>
> Thanks,
>
> Steve
>
>
>
> 10:44 smonsees@yix490016 /disk0/scratch/smonsees/yocto/workspace_3/build=
s/sbcb-default> bitbake sbcb-defaultfs-full -c populate_sdk_ext
>
> Loading cache: 100% |###################################################=
###################################| Time: 0:00:00
>
> Loaded 3645 entries from dependency cache.
>
> NOTE: Resolving any missing task queue dependencies
>
>
>
> Build Configuration:
>
> BB_VERSION           =3D "1.44.0"
>
> BUILD_SYS            =3D "x86_64-linux"
>
> NATIVELSBSTRING      =3D "rhel-7.9"
>
> TARGET_SYS           =3D "x86_64-poky-linux"
>
> MACHINE              =3D "sbcb-default"
>
> DISTRO               =3D "limws"
>
> DISTRO_VERSION       =3D "3.0.4"
>
> TUNE_FEATURES        =3D "m64 corei7"
>
> TARGET_FPU           =3D ""
>
> meta
>
> meta-poky            =3D "my_yocto_3.0.4:f2eb22a8783f1eecf99bd4042695bab=
920eed00e"
>
> meta-perl
>
> meta-python
>
> meta-filesystems
>
> meta-networking
>
> meta-initramfs
>
> meta-oe              =3D "zeus:2b5dd1eb81cd08bc065bc76125f2856e9383e98b"
>
> meta                 =3D "master:a32ddd2b2a51b26c011fa50e441df3930465150=
3"
>
> meta-intel           =3D "zeus:d9942d4c3a710406b051852de7232db03c297f4e"
>
> meta-intel           =3D "v2019.02:f635a364c55f1fb12519aff54924a0a5b9470=
91e"
>
>
>
> Initialising tasks: 100% |##############################################=
###################################| Time: 0:00:04
>
> Checking sstate mirror object availability: 100% |######################=
###################################| Time: 0:00:00
>
> Sstate summary: Wanted 566 Found 298 Missed 268 Current 1794 (52% match,=
 88% complete)
>
> NOTE: Executing Tasks
>
> NOTE: Setscene tasks completed
>
> NOTE: Tasks Summary: Attempted 6669 tasks of which 5861 didn't need to b=
e rerun and all succeeded.
>
> 11:59 smonsees@yix490016 /disk0/scratch/smonsees/yocto/workspace_3/build=
s/sbcb-default> cd /disk0/scratch/smonsees/yocto/workspace_3/builds/sbcb-de=
fault/tmp/deploy/sdk
>
> 11:59 smonsees@yix490016 /disk0/scratch/smonsees/yocto/workspace_3/build=
s/sbcb-default/tmp/deploy/sdk>ls
>
> limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.host.manife=
st
>
> limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.sh
>
> limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.target.mani=
fest
>
> limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.testdata.js=
on
>
> x86_64-buildtools-nativesdk-standalone-3.0.4.host.manifest
>
> x86_64-buildtools-nativesdk-standalone-3.0.4.sh
>
> x86_64-buildtools-nativesdk-standalone-3.0.4.target.manifest
>
> x86_64-buildtools-nativesdk-standalone-3.0.4.testdata.json
>
> 11:59 smonsees@yix490016 /disk0/scratch/smonsees/yocto/workspace_3/build=
s/sbcb-default/tmp/deploy/sdk>./limws-glibc-x86_64-aiox_orange-corei7-64-to=
olchain-ext-3.0.4.sh
>
> LIMWS (BAE LIMWS base distro) Extensible SDK installer version 3.0.4
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Enter target directory for SDK (default: ~/limws_sdk): /disk0/scratch/sm=
onsees/testSDK
>
> You are about to install the SDK to "/disk0/scratch/smonsees/testSDK". P=
roceed [Y/n]? Y
>
> Extracting SDK..........................................................=
....................done
>
> Setting it up...
>
> Extracting buildtools...
>
> Preparing build system...
>
> Parsing recipes: 100% |#################################################=
###################################| Time: 0:01:32
>
> Initialising tasks: 100% |##############################################=
###################################| Time: 0:00:04
>
> Checking sstate mirror object availability: 100% |######################=
###################################| Time: 0:00:03
>
> WARNING: The initscripts:do_install sig is computed to be 375d3c24b574b8=
3fb04dc079fb52dd5e3a0ac31ed265acece2bb689f72f9adfa, but the sig is locked t=
o 40f5d2ac4affab9c60691714590ca00f30130ad2f5dc79f53aaf774957e1d927 in SIGGE=
N_LOCKEDSIGS_t-corei7-64
>
> The linux-intel:do_compile sig is computed to be 9898137f78ba37d2fcf7df5=
a7b7a5dd0e5ddcbc7ce7ade89905bf5132a005a99, but the sig is locked to 06c0838=
7009f9808044e03144d1fa0b984be9f4ad64251e688503c2dabdf5b7c in SIGGEN_LOCKEDS=
IGS_t-corei7-64-intel-common
>
> The imagerecv:do_compile sig is computed to be 644b002b181f27a407c33cc69=
cfc790201f1b48c4d7783c062d53c247d5704a5, but the sig is locked to a74b10cfc=
4bad050ca98549b3df41fcd0fa986e08c14e05db44b0227d0b90a0a in SIGGEN_LOCKEDSIG=
S_t-sbcb-default
>
> The tpm2-tss:do_configure sig is computed to be 04cf4c8e1424a46467a43620=
214fc3a5304863f5cbb662b5b26a5b82d792586f, but the sig is locked to ec4b02e1=
e3b1796883093be2aca63ec5e51df3dc14b9179be6f86f2675b3fa53 in SIGGEN_LOCKEDSI=
GS_t-corei7-64
>
> The efitools:do_compile sig is computed to be c2e6dc60a7b8b2414b3761fe49=
66e031901144e3d32eed60bd580cc46e9b5358, but the sig is locked to 327fbae2aa=
4a419554ede6847fcc7c367da018e5e9d907a0051e68df5a5a2063 in SIGGEN_LOCKEDSIGS=
_t-corei7-64
>
> The monkeysphere:do_configure sig is computed to be 8a5cfb349fa84ca524bf=
680a922d0e1781f5dc9e0b5e0f6e0b135ea88e3f8fa1, but the sig is locked to 8d2b=
f2edd3194e44de0143088e68703c02a88032bb089ef0a4600f7528695362 in SIGGEN_LOCK=
EDSIGS_t-corei7-64
>
> The monkeysphere:do_compile sig is computed to be 819f7700a7f611335b8a5e=
4f8243623c4f01b187f197aa19cd034383af17b41b, but the sig is locked to 822db6=
96400b5a788fbcc0e80f1fe242bd58cab992ff196efac191444d7b3b99 in SIGGEN_LOCKED=
SIGS_t-corei7-64
>
> The monkeysphere:do_install sig is computed to be f2f8cb58b07a350eefd41a=
f13e1156abd85659b1865dc278238277d9230e2e3f, but the sig is locked to 9e1ca7=
95df7d73347f0efeeac54c24f1004d59011b97262207e1055f771ee95c in SIGGEN_LOCKED=
SIGS_t-corei7-64
>
> The monkeysphere:do_populate_sysroot sig is computed to be ca8fe144be009=
29f3c42cb36b809a06b85d70c4f9fa1c0f6fd67b07af84d17a1, but the sig is locked =
to 2a41afd838cdac669dd99deefdc530c5d503329fb1fae2fb3641b490a2bbec8a in SIGG=
EN_LOCKEDSIGS_t-corei7-64
>
> The monkeysphere:do_package sig is computed to be 29a5daea524a219c5216b5=
d76447160d006e7db633e38c7d1ade6b599eb6c2ab, but the sig is locked to 2b2cef=
367c44399221b07f14facff9b1ae598ccc272c4b98ddfc4b08009fc090 in SIGGEN_LOCKED=
SIGS_t-corei7-64
>
> The signature:do_configure sig is computed to be 613844241ce15b245abe2fb=
9306415616c72553e943183307b3496f85637345e, but the sig is locked to 68a818a=
cd3281e28bd57efcd449a0bac0ffaa2733fcb02f6b28b2fe31d36e835 in SIGGEN_LOCKEDS=
IGS_t-corei7-64
>
> The signature:do_compile sig is computed to be 8b37e4a0e6ec0068b7dda0ecc=
d1e32577daedf248f1c3e71f82f6454d3e4338d, but the sig is locked to 6f291a0f9=
ba59f355d9a88d646f72bf99a001f862b310e5e435e8b406632b6b4 in SIGGEN_LOCKEDSIG=
S_t-corei7-64
>
> The signature:do_install sig is computed to be 3a20f56cc04551f13378e9e59=
6daa5eebc385ca965ebdf18adacfa7ef94c9018, but the sig is locked to 8fc761f8b=
f0215ea2fb9609037a5df0c7e2ad6dd9253555ea5f492b7068e7bff in SIGGEN_LOCKEDSIG=
S_t-corei7-64
>
> The signature:do_populate_sysroot sig is computed to be 97d2f34ef4b40fe8=
e324c04346ad0cdf22cde6cc774f336400797cb6a483d08c, but the sig is locked to =
93700035bc1a42b4f7e5f05ef30d4bc6fdf2abc0dd1f707b2e745ceed25d5770 in SIGGEN_=
LOCKEDSIGS_t-corei7-64
>
> The signature:do_package sig is computed to be f59f3584026d4acf71d4300a1=
8ff4bf05c0f3e3b42c2d5264af9be63820a0386, but the sig is locked to bdc6003bb=
d7a42a83e9a6a7ebe691e93a9744ae96c664d8656907a15af84be1c in SIGGEN_LOCKEDSIG=
S_t-corei7-64
>
> The grub-efi-native:do_clean_grub sig is computed to be 17c62b3df5a57ee4=
cbd0e7abf1284a5d499ba4c814aaded564a24085b9fd326c, but the sig is locked to =
c8835ffb27e0d97b332dddad3fb83bdb849a267a8a0fa7142e66a76696c910ff in SIGGEN_=
LOCKEDSIGS_t-x86-64
>
> The grub-efi-native:do_configure sig is computed to be a6dfb6cd633432b36=
b818b63fd6e06e086d189b62cd7fc6370c4e66e9668fa1d, but the sig is locked to 1=
94602954bb4993b85397aeb06557d10ff14b15d52a321389cdbb0139d2ce34c in SIGGEN_L=
OCKEDSIGS_t-x86-64
>
> The grub-efi-native:do_compile sig is computed to be 583800a58ca2e602d50=
b4e23485774e8b681f79bf48a1a854b71264a0ddcb733, but the sig is locked to e64=
2b6c931bda1d51bc5394596cdacce7099875d1e873b39849607e03972c5b9 in SIGGEN_LOC=
KEDSIGS_t-x86-64
>
> The grub-efi-native:do_mkimage sig is computed to be 87a6528cb8624851708=
b1f4d3fa26beb96f71f1a3cb0c4d48fe0aaf9255fb244, but the sig is locked to bc0=
4f79c9988122be8297c3ea2e7aa13fbe18444b1151a547332112616e11480 in SIGGEN_LOC=
KEDSIGS_t-x86-64
>
> The grub-efi-native:do_install sig is computed to be 6e8a988562949ae845b=
eb0150acf7702a360094db56096b6e2bbb65820bbb3f0, but the sig is locked to 384=
27ff1c0bfa569a27a6c5acf51bb3483d882b18a1fa0bfbfaa371822df7837 in SIGGEN_LOC=
KEDSIGS_t-x86-64
>
> The grub-efi-native:do_populate_sysroot sig is computed to be 3ba3744800=
732b69e71d33ea0db797a78bb2340727fc54f211bd0f7c1325374c, but the sig is lock=
ed to fcd9daa126de91d4d1de701ed1ff1c2774c3e42207e1fff85b86109eb54b290c in S=
IGGEN_LOCKEDSIGS_t-x86-64
>
> The grub-efi:do_clean_grub sig is computed to be 928fbd9c1d534333f18a6f7=
51ad705c03f083ff00374a781b02e1aee47b92bee, but the sig is locked to 67a0393=
67c0593803d8c70207f079fd8be28dbc6c548b13837fa7eb177b156e0 in SIGGEN_LOCKEDS=
IGS_t-corei7-64
>
> The grub-efi-native:do_deploy sig is computed to be 4875f4b51c38f3114077=
5a2a4457839eabef2529791cccbb9ed656eef63892fc, but the sig is locked to 6576=
c95aa5c0c7b505ca2cc02fdde3f678f2b039c2f0b57810b17694b6070a46 in SIGGEN_LOCK=
EDSIGS_t-x86-64
>
> The grub-efi:do_configure sig is computed to be 84ab069273c4b2703ca4fa20=
0d5fb66adcaffa39b8f36138339d4837b9281a9d, but the sig is locked to e8900241=
347d4616468e7a4a4c37b8496a1167c2b3d58f7bb55332da645bd7e0 in SIGGEN_LOCKEDSI=
GS_t-corei7-64
>
> The grub-efi:do_compile sig is computed to be 619bdca4f1a6df8c8c2c7ad49b=
7289af3477e3c76c00b84229584793f23fb115, but the sig is locked to 56ca563b3b=
cb66b72f53f51562f41dd0cf9af878335836e8fd6b6a07e32fa8bc in SIGGEN_LOCKEDSIGS=
_t-corei7-64
>
> The grub-efi:do_mkimage sig is computed to be f212bd74eb95f4d413c9867f85=
3171747fe4fe86912138a0ac79234fe4be73b7, but the sig is locked to 80e9256f12=
e3070737c81f76310cc408473b92b877b23494cd1b4c2abdffd56d in SIGGEN_LOCKEDSIGS=
_t-corei7-64
>
> The grub-efi:do_install sig is computed to be 45753f50a553391bd80cf67903=
9cccf879ef1eaca90e1dcfefb432621dfc0000, but the sig is locked to 3910d27330=
229314b793a94c7085c231a56c1073d7e79d4cceade5a373600252 in SIGGEN_LOCKEDSIGS=
_t-corei7-64
>
> The grub-efi:do_populate_sysroot sig is computed to be 3437833e837748a59=
e002f95773a8f61a715bb56c0f20671fa39a71556ad6d5d, but the sig is locked to d=
0d60bc1d9bf488c7568e592b3b1aeeb2e2796c9994f83fe1b781e0d006e432b in SIGGEN_L=
OCKEDSIGS_t-corei7-64
>
> The grub-efi:do_package sig is computed to be 81fa6cf23920cea4139ed3cefd=
6c94a3878580f6a45925279c7d75e3c487f162, but the sig is locked to d7ec82448f=
34ec8c0169f613fdd14237cebb1951efa3d35d53dc71d24f220cb8 in SIGGEN_LOCKEDSIGS=
_t-corei7-64
>
> The grub-efi:do_deploy sig is computed to be f7831a1a7e1d8683e1c0c86fd32=
486ec8d9e5e713d63e39984aa36f50bff7f91, but the sig is locked to 1c781659fad=
7fb174716d05aa5727f68e710ad7c6593dc178f40866d6e868f19 in SIGGEN_LOCKEDSIGS_=
t-corei7-64
>
> The tpm2-tools:do_configure sig is computed to be 10fa6cf0c4fa307a427978=
392ecf60d7a8853e11ca1747ea5ad8743fd42280f3, but the sig is locked to 5e6a2c=
aa27901f95518467ca35b68043fee7802dfa8be39ae51e61c9eedf9a8d in SIGGEN_LOCKED=
SIGS_t-corei7-64
>
> The wolfssl:do_configure sig is computed to be 5569ddf9b10e2df9f5de456ca=
35b9baeb34a1f67617357d5e1a9264baf3d1e0e, but the sig is locked to eaf1b3802=
10718071d8962eeccbd97efad180fabc750b18f4e98661de06ae11f in SIGGEN_LOCKEDSIG=
S_t-corei7-64
>
> The crush:do_configure sig is computed to be f034116fd9598a09aa975e94dd4=
8964e0d49deecf63d96c436bd4cccc7b68298, but the sig is locked to 64dfc5ff4a9=
ee29e9a20f1166ec2ee6fe20ffcd93e7618eabd02435c29f219ed in SIGGEN_LOCKEDSIGS_=
t-corei7-64
>
> ERROR: Task quilt-native.do_fetch attempted to execute unexpectedly
>
>
>
>
>
>
>
>
>
>
>
>
>=20
>
