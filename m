Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
 by mx.groups.io with SMTP id smtpd.web12.3749.1616706944669823332
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 14:15:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dGAmBVV8;
 spf=pass (domain: gmail.com, ip: 209.85.222.169, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f169.google.com with SMTP id g15so3301191qkl.4
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 14:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wmyLjmbWpqRUuperpNbzEN193K98H+7EpaPPjKZhR1g=;
        b=dGAmBVV8uDvGfXVgeQcU0HO8P7WC9vILcCYvo6i4WHppl7zF8PjkRdZutDmyeAmfpa
         H8VPPeLgFD2OYmi6KxP2u3v8peM6YioGPBekT12mzpbNivs1jVnVx2RyBbgnlVqQizou
         Ir8UcMGdqLEkNeDf81EmcNsM2ETu4y2KkVF3VVUVNW0sT5Mx8NjtDdotyQgRXH6wosTE
         gtL+z13e4MxVlXDShX/9yzHT3RXJC5MD6zopqgfc+DfzN8FPQH+Q8mIxdNlowkjy6X2b
         8kZ4P/s+bpQtwmZnrcBobQqq1MeU4ezWlBiAAlAGWN12T4SKcxu8Lmva2ggQdQ6hsI2B
         u+PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wmyLjmbWpqRUuperpNbzEN193K98H+7EpaPPjKZhR1g=;
        b=YVg6hMmAUSGHWcSMlM+6Kpcgx8X51NbhuiHdXlBM012h7Y1gUaXJjD2OIZ2peG7UoR
         n+NlvoVLvyydhCpgu72YLXc1sbNFghwC+8tcmtebxClsxk1C/CHZ7SoDjfQSiLOvRrer
         rg+sanfmECgk3yRfHggt3wPSaMtisf6MXsHaAZr3Ik3kmHjsDWCX8DtGKb6fANVMseIQ
         Nyg8tfYlpFiXR5Uj1AgaS2APLKAMy6I3IrjY2JFTXcGvOhmhPWdc/qwuiXvopaCbMzpR
         u4fN2yEyPjsK4BPOHVdK2rzZdktO78gfjgUENJaeOjxsn+XOJwCSoBiD12qvPjME5xKm
         iqDQ==
X-Gm-Message-State: AOAM532bIFlquDTI35KXlduQ3DrFDR+TigTqRdNPJLIpxBKXWg8mwJpA
	J2JqR5XeTJzzjinmupZ8Qurf2HVARRh0R0FsxYM=
X-Google-Smtp-Source: ABdhPJyQjsknQaaoyFnonSChpepSWd0nmDz2nokQ4jd2c5sSYeS5DSHUlwe2kh/lZuqILmcXpao80fxJTX0ZO22MoRg=
X-Received: by 2002:a05:620a:124f:: with SMTP id a15mr10030516qkl.125.1616706943434;
 Thu, 25 Mar 2021 14:15:43 -0700 (PDT)
MIME-Version: 1.0
References: <MADEUP.166FAE525502E206.26840@lists.yoctoproject.org>
In-Reply-To: <MADEUP.166FAE525502E206.26840@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 25 Mar 2021 14:15:30 -0700
Message-ID: <CAMKF1soy_Hy5z0Q_3yqPVZbNpavB+nu9w3FOaJoMNixGyiJE4Q@mail.gmail.com>
Subject: Re: [yocto] #yocto #sdk
To: steven.monsees@baesystems.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000011c56805be62eb79"

--00000000000011c56805be62eb79
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 25, 2021 at 1:01 PM Monsees, Steven C (US) via
lists.yoctoproject.org <steven.monsees=3Dbaesystems.com@lists.yoctoproject=
.org>
wrote:

>
> I've been looking at this but still find it odd that they are all "
> virtual:native"/ "poky/meta"/=E2=80=9Cdo_populate_sysroot=E2=80=9D relat=
ed...
>
> It is a "minimum" plus "toolset" build... and  it builds clean, yet fail=
s
> on the install...
>
> The error:  "> ERROR: Task quilt-native.do_fetch attempted to execute
> unexpectedly"
>
> How do you determine unexpected execution ?
>
> Any suggestions on how I should approach this ?
>

Perhaps get into install  env and do signatures check for this task

>
> Thanks,
> Steve
>
> -----Original Message-----
> From: Monsees, Steven C (US)
> Sent: Wednesday, March 24, 2021 2:43 PM
> To: 'Khem Raj' <raj.khem@gmail.com>
> Cc: yocto@lists.yoctoproject.org
> Subject: RE: [yocto] #yocto #sdk
>
>
> The output  you see is from setting:
>
> SDK_EXT_TYPE =3D "minimal"
> SDK_INCLUDE_TOOLCHAIN =3D "1"
>
> When building minimal only, there are no errors/warnings (and no tools..=
.)
>
>
> -----Original Message-----
> From: Khem Raj <raj.khem@gmail.com>
> Sent: Wednesday, March 24, 2021 2:35 PM
> To: Monsees, Steven C (US) <steven.monsees@baesystems.com>
> Cc: yocto@lists.yoctoproject.org
> Subject: Re: [yocto] #yocto #sdk
>
> External Email Alert
>
> This email has been sent from an account outside of the BAE Systems
> network.
>
> Please treat the email with caution, especially if you are requested to
> click on a link, decrypt/open an attachment, or enable macros.  For furt=
her
> information on how to spot phishing, access =E2=80=9CCybersecurity OneSp=
ace Page=E2=80=9D
> and report phishing by clicking the button =E2=80=9CReport Phishing=E2=
=80=9D on the Outlook
> toolbar.
>
>
> I think there still are signature differences. perhaps try to add
> incremntally on top of minimal sdk and see where it breaks.
>
> On 3/24/21 9:18 AM, Monsees, Steven C (US) via lists.yoctoproject.org
> wrote:
> > I corrected for the sig warnings, but still have an issue with the
> > extended SDK installing correctly
> >
> > (though I think I am close=E2=80=A6)
> >
> > *Note: The only issue now appears to be around the =E2=80=9C=E2=80=A6/=
poky/meta=E2=80=9D
> > layer=E2=80=A6 and all with regards to =E2=80=9Cdo_populate_sysroot=E2=
=
=80=9D task=E2=80=A6*
> >
> > I am building my kernel clean, and update the MIRRORS after=E2=80=A6
> >
> > The unihash & taskhash values are identical with respect to each
> > component below=E2=80=A6
> >
> > I am building =E2=80=9Cuninative=E2=80=9D support into the EXT SDK onl=
y=E2=80=A6
> >
> > *None of the poky/meta references below are being modified by
> > bbappends=E2=80=A6 should be a straight build*=E2=80=A6
> >
> > The EXT SDK local.conf appears to be setup correctly for my build env=
=E2=80=A6
> >
> > Am I missing something, a required variable setting, an additional
> > support component ? *- seems odd it is all centered around the one
> > unmodified layer=E2=80=A6*
> >
> > I am able to build and install the =E2=80=9Cminimum=E2=80=9D EXT SDK c=
orrectly, but I
> > of course need the toolset=E2=80=A6
> >
> > I would appreciate any advice on how I might resolve this issue.
> >
> > Install Output:
> >
> > 10:50 smonsees@yix490016
> > /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/dep
> > loy/sdk>ls
> >
> > limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.host.mani
> > fest
> >
> > limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.sh
> >
> > limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.target.ma
> > nifest
> >
> > limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.testdata.
> > json
> >
> > x86_64-buildtools-nativesdk-standalone-3.0.4.host.manifest
> >
> > x86_64-buildtools-nativesdk-standalone-3.0.4.sh
> >
> > x86_64-buildtools-nativesdk-standalone-3.0.4.target.manifest
> >
> > x86_64-buildtools-nativesdk-standalone-3.0.4.testdata.json
> >
> > 10:50 smonsees@yix490016
> > /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/dep
> > loy/sdk>
> > ./limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.sh
> >
> > LIMWS (BAE LIMWS base distro) Extensible SDK installer version 3.0.4
> >
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >
> > Enter target directory for SDK (default: ~/limws_sdk):
> > /disk0/scratch/smonsees/sbcbSDK_EXT
> >
> > You are about to install the SDK to
> > "/disk0/scratch/smonsees/sbcbSDK_EXT". Proceed [Y/n]? Y
> >
> > Extracting SDK...............done
> >
> > Setting it up...
> >
> > Extracting buildtools...
> >
> > Preparing build system...
> >
> > Parsing recipes: 100%
> > |#####################################################################
> > |########################|
> > Time: 0:01:33
> >
> > Initialising tasks: 100%
> > |#####################################################################
> > |#####################|
> > Time: 0:00:00
> >
> > Checking sstate mirror object availability: 100%
> > |##################################################################|
> > Time: 0:00:00
> >
> > ERROR: Task quilt-native.do_fetch attempted to execute unexpectedly
> >
> > Task
> > /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/
> > gcc/libgcc_9.2.bb:do_populate_sysroot,
> > unihash
> > d5a9dff48660903403f33fe67d6d43e03c97c03232c6d8f0ed71f99a94670bce,
> > taskhash
> > d5a9dff48660903403f33fe67d6d43e03c97c03232c6d8f0ed71f99a94670bce
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-support/gmp/gmp_6.1.2.bb:do_populate_sysroot,
> > unihash
> > cde9ef4fc769ee9a2733a1023534c15bfe199009270bcebb6c24c638729194dc,
> > taskhash
> > cde9ef4fc769ee9a2733a1023534c15bfe199009270bcebb6c24c638729194dc
> >
> > Task
> > /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/
> > libtool/libtool-native_2.4.6.bb:do_populate_sysroot,
> > unihash
> > a1def57d3e655defdf1f85eec749be672ffe52a0a3c247585da9d6c57617cca2,
> > taskhash
> > a1def57d3e655defdf1f85eec749be672ffe52a0a3c247585da9d6c57617cca2
> >
> > Task
> > /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/
> > gcc/gcc-cross_9.2.bb:do_populate_sysroot,
> > unihash
> > 5f0f3533314c754b184e6f63f11ef2b570c7a5d47bc18fee2b4217aa294f08eb,
> > taskhash
> > 5f0f3533314c754b184e6f63f11ef2b570c7a5d47bc18fee2b4217aa294f08eb
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-connectivity/openssl/openssl_1.1.1g.bb:do_populate_sysroot,
> > unihash
> > d5e6bedb0cfb876a2925ea2e7f3bd00b090326b1cebf1182a6322974a6f055a3,
> > taskhash
> > d5e6bedb0cfb876a2925ea2e7f3bd00b090326b1cebf1182a6322974a6f055a3
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-devtools/python/python3_3.7.8.bb:do_populate_sysroot,
> > unihash
> > 8ee0c0eafd3b1c3f774a26f59659fc0c563816b6badfa57d9fa9097a182b1de5,
> > taskhash
> > 8ee0c0eafd3b1c3f774a26f59659fc0c563816b6badfa57d9fa9097a182b1de5
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-gnome/gtk-doc/gtk-doc_1.31.bb:do_populate_sysroot,
> > unihash
> > fbc7421c8a324ed0cbca81f98430f509ce4cf6593b0961cad8109d467df9e35e,
> > taskhash
> > fbc7421c8a324ed0cbca81f98430f509ce4cf6593b0961cad8109d467df9e35e
> >
> > Task
> > /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/meta
> > /meta-extsdk-toolchain.bb:do_populate_sysroot,
> > unihash
> > b9d46f79061ad82c4630a3db00aefe484f743a84a526e8afb24d953d04752276,
> > taskhash
> > b9d46f79061ad82c4630a3db00aefe484f743a84a526e8afb24d953d04752276
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-support/attr/attr_2.4.47.bb:do_populate_sysroot,
> > unihash
> > 3a6c84cf03e3103e46c02b01aed446fc31617f348b40d9e51b5b2ee8c2f3d0ee,
> > taskhash
> > 3a6c84cf03e3103e46c02b01aed446fc31617f348b40d9e51b5b2ee8c2f3d0ee
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-support/libmpc/libmpc_1.1.0.bb:do_populate_sysroot,
> > unihash
> > 39109487309272ea510afb753a0dd84775625c73f7a261b9d0078fe0ea718f17,
> > taskhash
> > 39109487309272ea510afb753a0dd84775625c73f7a261b9d0078fe0ea718f17
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-core/util-linux/util-linux_2.34.bb:do_populate_sysroot,
> > unihash
> > 51964ba6ff2cd62ad6d9077e9fddfe53be566eb23beca10e9c882a1eee20aa5d,
> > taskhash
> > 51964ba6ff2cd62ad6d9077e9fddfe53be566eb23beca10e9c882a1eee20aa5d
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-multimedia/libpng/libpng_1.6.37.bb:do_populate_sysroot,
> > unihash
> > 6d92093db77054a96cd23e00ca2bf3468a9ae8ebddc191a59e1a0136778d6be1,
> > taskhash
> > 6d92093db77054a96cd23e00ca2bf3468a9ae8ebddc191a59e1a0136778d6be1
> >
> > Task
> > /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/
> > gcc/gcc-cross_9.2.bb:do_gcc_stash_builddir,
> > unihash
> > 62ba54c4db5ba11db400ba0277892d92f665f35b5c334c17f8e6ad9ded9c16b1,
> > taskhash
> > 62ba54c4db5ba11db400ba0277892d92f665f35b5c334c17f8e6ad9ded9c16b1
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-extended/xz/xz_5.2.4.bb:do_populate_sysroot,
> > unihash
> > 01723d04843fdbeec3fabd109c34281bd49c0979e09c722b2c189335cb6c957a,
> > taskhash
> > 01723d04843fdbeec3fabd109c34281bd49c0979e09c722b2c189335cb6c957a
> >
> > Task
> > /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/
> > m4/m4-native_1.4.18.bb:do_populate_sysroot,
> > unihash
> > 19b266239a8f93f5273ac6213d0f58a73bfc1ecbe84c5cfd273f5351b0740ca1,
> > taskhash
> > 19b266239a8f93f5273ac6213d0f58a73bfc1ecbe84c5cfd273f5351b0740ca1
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-graphics/xorg-lib/pixman_0.38.4.bb:do_populate_sysroot,
> > unihash
> > 66cca6669fc3fdc571970b1ccabb7a8b334139013df8b71c8b033d15705ec5a7,
> > taskhash
> > 66cca6669fc3fdc571970b1ccabb7a8b334139013df8b71c8b033d15705ec5a7
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-devtools/unfs3/unfs3_git.bb:do_populate_sysroot,
> > unihash
> > 46e3dd7e07935b77a618c4587f5bc8dbaaff1ba030e779683e2bf2679f57c8fb,
> > taskhash
> > 46e3dd7e07935b77a618c4587f5bc8dbaaff1ba030e779683e2bf2679f57c8fb
> >
> > Task
> > /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/
> > gcc/gcc-runtime_9.2.bb:do_populate_sysroot,
> > unihash
> > 7200138112d31332099cf647ee83441c6739d6f276f2ba859bd440b7a4eed9fb,
> > taskhash
> > 7200138112d31332099cf647ee83441c6739d6f276f2ba859bd440b7a4eed9fb
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-devtools/meson/meson_0.51.2.bb:do_populate_sysroot,
> > unihash
> > ac801ce28f4bf45c7c08e2721a765872a1bd6561f783c570ed47dad7e9642901,
> > taskhash
> > ac801ce28f4bf45c7c08e2721a765872a1bd6561f783c570ed47dad7e9642901
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-core/expat/expat_2.2.8.bb:do_populate_sysroot,
> > unihash
> > c47a5a2b37341edbfeab516b931c8f0015b52d6159f251e70f57e086a6502fe1,
> > taskhash
> > c47a5a2b37341edbfeab516b931c8f0015b52d6159f251e70f57e086a6502fe1
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-devtools/bison/bison_3.4.1.bb:do_populate_sysroot,
> > unihash
> > f8fb4d2026cb4192c03bc75c357f9890dcb4f7593d23407f9a60c32d383d7c57,
> > taskhash
> > f8fb4d2026cb4192c03bc75c357f9890dcb4f7593d23407f9a60c32d383d7c57
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-kernel/dtc/dtc_1.5.1.bb:do_populate_sysroot,
> > unihash
> > 8ee1e9314ae7a6235f2ec876f7d30336d6e65d7879ac17cd1044ac3f20f969ec,
> > taskhash
> > 8ee1e9314ae7a6235f2ec876f7d30336d6e65d7879ac17cd1044ac3f20f969ec
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-devtools/autoconf-archive/autoconf-archive_2019.01.06.bb:do_popu
> > late_sysroot,
> > unihash
> > 7aaaf6c0cf3a9c104029683b93a62b965e91827c487ee707a23c84560aea1d3e,
> > taskhash
> > 7aaaf6c0cf3a9c104029683b93a62b965e91827c487ee707a23c84560aea1d3e
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-extended/bzip2/bzip2_1.0.8.bb:do_populate_sysroot,
> > unihash
> > 66c8139add58f12cae0334108b226f4f91f1fdb34fd34822c9ff9612d6c11b64,
> > taskhash
> > 66c8139add58f12cae0334108b226f4f91f1fdb34fd34822c9ff9612d6c11b64
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-graphics/xorg-util/util-macros_1.19.2.bb:do_populate_sysroot,
> > unihash
> > 070d343bb7de5e6402f4190283e6d40ca33031eac71601d7ab92a92ef0e175d0,
> > taskhash
> > 070d343bb7de5e6402f4190283e6d40ca33031eac71601d7ab92a92ef0e175d0
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-devtools/python/python3-setuptools_41.2.0.bb:do_populate_sysroot
> > ,
> > unihash
> > e8771b3e23f0d5c3e799b093dd9657a2fd863abf459fa500399930111a8fd388,
> > taskhash
> > e8771b3e23f0d5c3e799b093dd9657a2fd863abf459fa500399930111a8fd388
> >
> > Task
> > /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/
> > qemu/qemu-system-native_4.1.0.bb:do_populate_sysroot,
> > unihash
> > 33ac287a8d8aded61eb77dd21cb3c54986126430c78a243f706a5917ef0a0183,
> > taskhash
> > 33ac287a8d8aded61eb77dd21cb3c54986126430c78a243f706a5917ef0a0183
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-support/mpfr/mpfr_4.0.2.bb:do_populate_sysroot,
> > unihash
> > 25d61942ed599e037b2e75a5b722ce5ff251005c2a4ee23e9faef34c9e54777b,
> > taskhash
> > 25d61942ed599e037b2e75a5b722ce5ff251005c2a4ee23e9faef34c9e54777b
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-support/re2c/re2c_1.0.1.bb:do_populate_sysroot,
> > unihash
> > 6ebe8680a921a8927ef6cd0061b2b50667bb787be010c8ee4ca6ccc3593024b7,
> > taskhash
> > 6ebe8680a921a8927ef6cd0061b2b50667bb787be010c8ee4ca6ccc3593024b7
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot,
> > unihash
> > 28e64747a95953ec8626d3027958e12d1fd854a7615bc69cf5adbbc3d49c323a,
> > taskhash
> > 28e64747a95953ec8626d3027958e12d1fd854a7615bc69cf5adbbc3d49c323a
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-extended/libtirpc/libtirpc_1.1.4.bb:do_populate_sysroot,
> > unihash
> > 147f1ca7d20e89f2786b48fcda4ebaf36c1c3d941b53b0b8b56c42beb9220c1d,
> > taskhash
> > 147f1ca7d20e89f2786b48fcda4ebaf36c1c3d941b53b0b8b56c42beb9220c1d
> >
> > Task
> > /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/
> > qemu/qemu-native_4.1.0.bb:do_populate_sysroot,
> > unihash
> > 00651d4d53b4b7b10e44770326d5f0a1f5482c1262671621523ba12c21508977,
> > taskhash
> > 00651d4d53b4b7b10e44770326d5f0a1f5482c1262671621523ba12c21508977
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-core/gettext/gettext_0.19.8.1.bb:do_populate_sysroot,
> > unihash
> > bf9b767f8e30be92fa06079f2e7350aa304648b0d113829d315e6cb64bad0565,
> > taskhash
> > bf9b767f8e30be92fa06079f2e7350aa304648b0d113829d315e6cb64bad0565
> >
> > Task
> > /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/glib
> > c/glibc_2.30.bb:do_stash_locale,
> > unihash
> > d64e054d019028151912ffface31585789df48f4de7e3a66b201cd614c2f4aca,
> > taskhash
> > d64e054d019028151912ffface31585789df48f4de7e3a66b201cd614c2f4aca
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-devtools/ninja/ninja_1.9.0.bb:do_populate_sysroot,
> > unihash
> > ab3ecdf2561adc51338d36576f60eab1e05fc09ed69bb6444075d7adbeb57b9e,
> > taskhash
> > ab3ecdf2561adc51338d36576f60eab1e05fc09ed69bb6444075d7adbeb57b9e
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-support/sqlite/sqlite3_3.29.0.bb:do_populate_sysroot,
> > unihash
> > c1a988a16d4368098e178f7fe5f0e2e5f8adf4fa485a7b79c4c093a38005264e,
> > taskhash
> > c1a988a16d4368098e178f7fe5f0e2e5f8adf4fa485a7b79c4c093a38005264e
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-devtools/automake/automake_1.16.1.bb:do_populate_sysroot,
> > unihash
> > ad223f3318940531fa279bd74480cd6410abc46644f8fe98f7399a71cfe09179,
> > taskhash
> > ad223f3318940531fa279bd74480cd6410abc46644f8fe98f7399a71cfe09179
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-devtools/patch/patch_2.7.6.bb:do_populate_sysroot,
> > unihash
> > be5aa9a356c12c9b4220c3d3d6dfe16c737e9be88e7d331c0511b275e4d603c4,
> > taskhash
> > be5aa9a356c12c9b4220c3d3d6dfe16c737e9be88e7d331c0511b275e4d603c4
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-devtools/flex/flex_2.6.0.bb:do_populate_sysroot,
> > unihash
> > 9c37027658f2832321efe3657d91f29d1bf286ad1fda0c9916b256adfa246455,
> > taskhash
> > 9c37027658f2832321efe3657d91f29d1bf286ad1fda0c9916b256adfa246455
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-core/readline/readline_8.0.bb:do_populate_sysroot,
> > unihash
> > 3d909d0d6de7cf72b631aa1805efc1147459bef5bddca5f60ff07022ba777e0e,
> > taskhash
> > 3d909d0d6de7cf72b631aa1805efc1147459bef5bddca5f60ff07022ba777e0e
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-extended/libnsl/libnsl2_git.bb:do_populate_sysroot,
> > unihash
> > 19357ca137093c4e1e063d14a0d3844f889dce933a4eebdc34acf0c321d707ec,
> > taskhash
> > 19357ca137093c4e1e063d14a0d3844f889dce933a4eebdc34acf0c321d707ec
> >
> > Task
> > /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/glib
> > c/glibc_2.30.bb:do_populate_sysroot,
> > unihash
> > df6ecc8017c1a3fa278fc743c85fa6049465da674f169777b9a544eb423b84b5,
> > taskhash
> > df6ecc8017c1a3fa278fc743c85fa6049465da674f169777b9a544eb423b84b5
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-support/gdbm/gdbm_1.18.1.bb:do_populate_sysroot,
> > unihash
> > 8b0d7a859afc0cc39a32d26b8d5c79b5c1b8970a8e5d566098ff59fc916335f5,
> > taskhash
> > 8b0d7a859afc0cc39a32d26b8d5c79b5c1b8970a8e5d566098ff59fc916335f5
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-support/libcap-ng/libcap-ng_0.7.9.bb:do_populate_sysroot,
> > unihash
> > 784e3c4b04d227379d94e85251233a568fb9e9f841d737584882d0da0b009d5c,
> > taskhash
> > 784e3c4b04d227379d94e85251233a568fb9e9f841d737584882d0da0b009d5c
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-core/zlib/zlib_1.2.11.bb:do_populate_sysroot,
> > unihash
> > 770d0b4be83a17d65464ade3adc3c6be443a9f8fffbe53d303c5765674a274d7,
> > taskhash
> > 770d0b4be83a17d65464ade3adc3c6be443a9f8fffbe53d303c5765674a274d7
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-extended/unzip/unzip_6.0.bb:do_populate_sysroot,
> > unihash
> > 82d365cde8a3375461fb47f650aa3fd7c8aa029b0cd2f23ccd38b6f73a9902d9,
> > taskhash
> > 82d365cde8a3375461fb47f650aa3fd7c8aa029b0cd2f23ccd38b6f73a9902d9
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-devtools/pkgconfig/pkgconfig_git.bb:do_populate_sysroot,
> > unihash
> > de3b4482bf2a0878b99c904fecac19e917d374838da4c9df62929bb14d1282d1,
> > taskhash
> > de3b4482bf2a0878b99c904fecac19e917d374838da4c9df62929bb14d1282d1
> >
> > Task
> > /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/
> > binutils/binutils-cross_2.32.bb:do_populate_sysroot,
> > unihash
> > 50ce76092848b0214480dd7a4f0fcc7e5927f4f8071601bc094847d20d2c879d,
> > taskhash
> > 50ce76092848b0214480dd7a4f0fcc7e5927f4f8071601bc094847d20d2c879d
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-devtools/gnu-config/gnu-config_git.bb:do_populate_sysroot,
> > unihash
> > 90db72e6ab74de51a86e0b14980b2c204076fc3ef8297a374b660d8645853cac,
> > taskhash
> > 90db72e6ab74de51a86e0b14980b2c204076fc3ef8297a374b660d8645853cac
> >
> > Task
> > /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-kernel/li
> > nux-libc-headers/linux-libc-headers_5.2.bb:do_populate_sysroot,
> > unihash
> > 7b6f6e59c3431987b308c78d6f72e5aefae1b9afbf158a47540f0db5e04ebdb0,
> > taskhash
> > 7b6f6e59c3431987b308c78d6f72e5aefae1b9afbf158a47540f0db5e04ebdb0
> >
> > Task
> > /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/
> > gdb/gdb-cross_8.3.1.bb:do_populate_sysroot,
> > unihash
> > c623832386a7201b2a59b170e7c9015edfffbfb21dbec6ab44e81662d1d7c504,
> > taskhash
> > c623832386a7201b2a59b170e7c9015edfffbfb21dbec6ab44e81662d1d7c504
> >
> > Task
> > /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/
> > quilt/quilt-native_0.66.bb:do_populate_sysroot,
> > unihash
> > 23290d029e88d49579ce286326ba82d42ad77874a2cd0e05e71166b964190822,
> > taskhash
> > 23290d029e88d49579ce286326ba82d42ad77874a2cd0e05e71166b964190822
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-support/libffi/libffi_3.3~rc0.bb:do_populate_sysroot,
> > unihash
> > 5be2fdefd4b14100290247d24d2df8da234ea32cb91e4508ffd793aabc06d30e,
> > taskhash
> > 5be2fdefd4b14100290247d24d2df8da234ea32cb91e4508ffd793aabc06d30e
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-devtools/make/make_4.2.1.bb:do_populate_sysroot,
> > unihash
> > 7a82e867fd7be399f5d92200e43de6e7d9d42ad98e5f771a6e54a0975053ae2e,
> > taskhash
> > 7a82e867fd7be399f5d92200e43de6e7d9d42ad98e5f771a6e54a0975053ae2e
> >
> > Task
> > /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-extended/
> > texinfo-dummy-native/texinfo-dummy-native.bb:do_populate_sysroot,
> > unihash
> > 2d20a98fe86b071366643317507293df9594c15528ef49f3fbeeffe4af532501,
> > taskhash
> > 2d20a98fe86b071366643317507293df9594c15528ef49f3fbeeffe4af532501
> >
> > Task
> > /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/gett
> > ext/gettext-minimal-native_0.19.8.1.bb:do_populate_sysroot,
> > unihash
> > d579308c5efa4cef283785d540731bf0f02dffeef6ea677b0fa7cec6332e7902,
> > taskhash
> > d579308c5efa4cef283785d540731bf0f02dffeef6ea677b0fa7cec6332e7902
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-core/glib-2.0/glib-2.0_2.60.7.bb:do_populate_sysroot,
> > unihash
> > b7ff5dcd7278fab62aa716be6cf652bcc1d463d884738fb3232297fe6f81880a,
> > taskhash
> > b7ff5dcd7278fab62aa716be6cf652bcc1d463d884738fb3232297fe6f81880a
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-extended/gperf/gperf_3.1.bb:do_populate_sysroot,
> > unihash
> > 6765ae416e5360039914d6216c0d02541c5afc070545804303d75d1016b7b460,
> > taskhash
> > 6765ae416e5360039914d6216c0d02541c5afc070545804303d75d1016b7b460
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-core/ncurses/ncurses_6.1+20190803.bb:do_populate_sysroot,
> > unihash
> > f468831b3be537588a35b7fdf2e1a46dc52d1737fbf168c0e83ff0f162a99cf9,
> > taskhash
> > f468831b3be537588a35b7fdf2e1a46dc52d1737fbf168c0e83ff0f162a99cf9
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-multimedia/alsa/alsa-lib_1.1.9.bb:do_populate_sysroot,
> > unihash
> > 39d5b05d5ec0e2b2abbb710c7c31f17d3047a255f5a11deb121d7323e06fb900,
> > taskhash
> > 39d5b05d5ec0e2b2abbb710c7c31f17d3047a255f5a11deb121d7323e06fb900
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-support/libpcre/libpcre_8.43.bb:do_populate_sysroot,
> > unihash
> > 3eed4e011c853b98bf31e1c1b2eee2073aeb4ef0546c9bd230f2bfcc3ac05088,
> > taskhash
> > 3eed4e011c853b98bf31e1c1b2eee2073aeb4ef0546c9bd230f2bfcc3ac05088
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-devtools/autoconf/autoconf_2.69.bb:do_populate_sysroot,
> > unihash
> > 373490cc20455b0913b69b35ab9cc61340356d7b27f7ecb6cf51a3ad9459a068,
> > taskhash
> > 373490cc20455b0913b69b35ab9cc61340356d7b27f7ecb6cf51a3ad9459a068
> >
> > Task
> > virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/re
> > cipes-devtools/unifdef/unifdef_2.11.bb:do_populate_sysroot,
> > unihash
> > 3e6814932d42ab266096948b4b81f9c1fbdbb26f7b990963ca4322a718e13170,
> > taskhash
> > 3e6814932d42ab266096948b4b81f9c1fbdbb26f7b990963ca4322a718e13170
> >
> > Task
> > /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/
> > gcc/libgcc-initial_9.2.bb:do_populate_sysroot,
> > unihash
> > 07136816c5d9bb085d8dab671c1689d08254d92b7e0edbb4a23abb3ae2628bea,
> > taskhash
> > 07136816c5d9bb085d8dab671c1689d08254d92b7e0edbb4a23abb3ae2628bea
> >
> > Task
> > /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/
> > qemu/qemu-helper-native_1.0.bb:do_populate_sysroot,
> > unihash
> > 4ba7e532221d903e4c3556460d09d7bf7eabc9c4ca73f6a481849be0eaba23a3,
> > taskhash
> > 4ba7e532221d903e4c3556460d09d7bf7eabc9c4ca73f6a481849be0eaba23a3
> >
> > This is usually due to missing setscene tasks. Those missing in this
> > build were:
> > {'/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/ge
> > ttext/gettext-minimal-native_0.19.8.1.bb:do_populate_sysroot',
> >
> > '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/gli
> > bc/glibc_2.30.bb:do_populate_sysroot',
> >
> > '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/gli
> > bc/glibc_2.30.bb:do_stash_locale',
> >
> > '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/met
> > a/meta-extsdk-toolchain.bb:do_populate_sysroot',
> >
> > '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools
> > /binutils/binutils-cross_2.32.bb:do_populate_sysroot',
> >
> > '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools
> > /gcc/gcc-cross_9.2.bb:do_gcc_stash_builddir',
> >
> > '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools
> > /gcc/gcc-cross_9.2.bb:do_populate_sysroot',
> >
> > '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools
> > /gcc/gcc-runtime_9.2.bb:do_populate_sysroot',
> >
> > '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools
> > /gcc/libgcc-initial_9.2.bb:do_populate_sysroot',
> >
> > '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools
> > /gcc/libgcc_9.2.bb:do_populate_sysroot',
> >
> > '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools
> > /gdb/gdb-cross_8.3.1.bb:do_populate_sysroot',
> >
> > '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools
> > /libtool/libtool-native_2.4.6.bb:do_populate_sysroot',
> >
> > '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools
> > /m4/m4-native_1.4.18.bb:do_populate_sysroot',
> >
> > '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools
> > /qemu/qemu-helper-native_1.0.bb:do_populate_sysroot',
> >
> > '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools
> > /qemu/qemu-native_4.1.0.bb:do_populate_sysroot',
> >
> > '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools
> > /qemu/qemu-system-native_4.1.0.bb:do_populate_sysroot',
> >
> > '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools
> > /quilt/quilt-native_0.66.bb:do_populate_sysroot',
> >
> > '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-extended
> > /texinfo-dummy-native/texinfo-dummy-native.bb:do_populate_sysroot',
> >
> > '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-kernel/l
> > inux-libc-headers/linux-libc-headers_5.2.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-connectivity/openssl/openssl_1.1.1g.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-core/expat/expat_2.2.8.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-core/gettext/gettext_0.19.8.1.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-core/glib-2.0/glib-2.0_2.60.7.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-core/ncurses/ncurses_6.1+20190803.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-core/readline/readline_8.0.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-core/util-linux/util-linux_2.34.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-core/zlib/zlib_1.2.11.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-devtools/autoconf-archive/autoconf-archive_2019.01.06.bb:do_pop
> > ulate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-devtools/autoconf/autoconf_2.69.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-devtools/automake/automake_1.16.1.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-devtools/bison/bison_3.4.1.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-devtools/flex/flex_2.6.0.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-devtools/gnu-config/gnu-config_git.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-devtools/make/make_4.2.1.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-devtools/meson/meson_0.51.2.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-devtools/ninja/ninja_1.9.0.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-devtools/patch/patch_2.7.6.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-devtools/pkgconfig/pkgconfig_git.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-devtools/python/python3-setuptools_41.2.0.bb:do_populate_sysroo
> > t',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-devtools/python/python3_3.7.8.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-devtools/unfs3/unfs3_git.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-devtools/unifdef/unifdef_2.11.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-extended/bzip2/bzip2_1.0.8.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-extended/gperf/gperf_3.1.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-extended/libnsl/libnsl2_git.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-extended/libtirpc/libtirpc_1.1.4.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-extended/unzip/unzip_6.0.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-extended/xz/xz_5.2.4.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-gnome/gtk-doc/gtk-doc_1.31.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-graphics/xorg-lib/pixman_0.38.4.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-graphics/xorg-util/util-macros_1.19.2.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-kernel/dtc/dtc_1.5.1.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-multimedia/alsa/alsa-lib_1.1.9.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-multimedia/libpng/libpng_1.6.37.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-support/attr/attr_2.4.47.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-support/gdbm/gdbm_1.18.1.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-support/gmp/gmp_6.1.2.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-support/libcap-ng/libcap-ng_0.7.9.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-support/libffi/libffi_3.3~rc0.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-support/libmpc/libmpc_1.1.0.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-support/libpcre/libpcre_8.43.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-support/mpfr/mpfr_4.0.2.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-support/re2c/re2c_1.0.1.bb:do_populate_sysroot',
> >
> > 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r
> > ecipes-support/sqlite/sqlite3_3.29.0.bb:do_populate_sysroot'}
> >
> > ERROR: Task
> > (/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools
> > /quilt/quilt-native_0.66.bb:do_fetch)
> > failed with exit code 'setscene whitelist'
> >
> > ERROR: SDK preparation failed: error log written to
> > /disk0/scratch/smonsees/sbcbSDK_EXT/preparing_build_system.log
> >
> > 10:52 smonsees@yix490016
> > /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/dep
> > loy/sdk>
> >
> > *From:*Khem Raj <raj.khem@gmail.com>
> > *Sent:* Thursday, March 4, 2021 1:22 PM
> > *To:* Monsees, Steven C (US) <steven.monsees@baesystems.com>
> > *Cc:* yocto@lists.yoctoproject.org
> > *Subject:* Re: [yocto] #yocto #sdk
> >
> > *_External Email Alert_*
> >
> > *This email has been sent from an account outside of the BAE Systems
> > network.*
> >
> > Please treat the email with caution, especially if you are requested
> > to click on a link, decrypt/open an attachment, or enable macros.  For
> > further information on how to spot phishing, access =E2=80=9CCybersecu=
rity
> > OneSpace Page=E2=80=9D and report phishing by clicking the button =E2=
=80=9CReport
> > Phishing=E2=80=9D on the Outlook toolbar.
> >
> > right, the change seems to be happening in task checksums and that
> > happens if some of bitbake variables change when SDK is built built
> > and when it is being installed ( when it will run parse again )
> > perhaps the workspace under the hood is still accessible and you can
> > use bitbake-diffsigs to narrow it down the variable that is changing
> >
> > On Thu, Mar 4, 2021 at 9:38 AM Monsees, Steven C (US) via
> > lists.yoctoproject.org <http://lists.yoctoproject.org>
> > <steven.monsees=3Dbaesystems.com@lists.yoctoproject.org
> > <mailto:baesystems.com@lists.yoctoproject.org>> wrote:
> >
> >     I am seeing similar issues on line  for my eSDK install issue, but
> >     no resolutions=E2=80=A6
> >
> >     Can someone advise on best course of action to debug this ?
> >
> >     11:10 smonsees@yix490016
> >
>  /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/depl=
oy/sdk>
> >     ./limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.sh
> >
> > <http://limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.s
> > h>
> >
> >     LIMWS (BAE LIMWS base distro) Extensible SDK installer version
> > 3.0.4
> >
> >
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >
> >     Enter target directory for SDK (default: ~/limws_sdk):
> >     /disk0/scratch/smonsees/testSDK
> >
> >     You are about to install the SDK to
> >     "/disk0/scratch/smonsees/testSDK". Proceed [Y/n]? Y
> >
> >     Extracting
> >
> > SDK...................................................................
> > ...........done
> >
> >     Setting it up...
> >
> >     Extracting buildtools...
> >
> >     Preparing build system...
> >
> >     Parsing recipes: 100%
> >
>  |######################################################################=
####################|
> >     Time: 0:01:36
> >
> >     Initialising tasks: 100%
> >
>  |######################################################################=
#################|
> >     Time: 0:00:04
> >
> >     Checking sstate mirror object availability: 100%
> >     |###############################################################|
> >     Time: 0:00:02
> >
> >     WARNING: The efitools:do_compile sig is computed to be
> >     5851605e22907038837428950427053e22ea655641a08b5dafa39d6d6e1c5e15,
> >     but the sig is locked to
> >     b81a26e3591c71acd3d22212bfdb70a15a0df49af72e7634e6a39851f16e18b5 i=
n
> >     SIGGEN_LOCKEDSIGS_t-corei7-64
> >
> >     The monkeysphere:do_install sig is computed to be
> >     13a65b26dfff91f2432a8064d98003559eafffa214d81c3c6ea112c2dfba0391,
> >     but the sig is locked to
> >     2058fc9032b0e7f5c1ea358de4fa8d25ccec7204b73ebc636e79222d8cc00469 i=
n
> >     SIGGEN_LOCKEDSIGS_t-corei7-64
> >
> >     The signature:do_compile sig is computed to be
> >     ac0c5c19cdbe7484046657ccb7b768c02fbbabb43166befa93b71a85d5fcf55b,
> >     but the sig is locked to
> >     cf5c3f72489f447b1199aafe4b4148988ff91cecd970422352f2238afb127683 i=
n
> >     SIGGEN_LOCKEDSIGS_t-corei7-64
> >
> >     The grub-efi-native:do_clean_grub sig is computed to be
> >     4e16b100c32e9428126eb10864508038527cec795c5e4391208d96a55735c90a,
> >     but the sig is locked to
> >     a2bd26be0297624af53d6f8cf657d79740fb229db821c446d564c5ee9dc80ea3 i=
n
> >     SIGGEN_LOCKEDSIGS_t-x86-64
> >
> >     The grub-efi-native:do_compile sig is computed to be
> >     630cc346f7ececf98c54f9134e8fee546e85c92f1e3c6ac3c258a1cdf24d4565,
> >     but the sig is locked to
> >     802bba0874ce26169a9e16dcdb440795e8fa904977b036d637d6c4086ce72de8 i=
n
> >     SIGGEN_LOCKEDSIGS_t-x86-64
> >
> >     The grub-efi:do_clean_grub sig is computed to be
> >     faf0ae3c9159ef3ebb13d2521ecf51dfeeac0c2c47691cd0aaa80de91187af3c,
> >     but the sig is locked to
> >     0075bbd34297bfbc62685ff5477feec11d0dd2bcda6787a151cfb7927a7f39c2 i=
n
> >     SIGGEN_LOCKEDSIGS_t-corei7-64
> >
> >     The grub-efi:do_compile sig is computed to be
> >     30c09f3e8db4059b7e1ff23823f208be94d0e622904fc43eda497027be095a71,
> >     but the sig is locked to
> >     a9e8ddd9ecac11e67c66d9fccbabe23b6eb4a19c5996baef8ff960dfcdc898ed i=
n
> >     SIGGEN_LOCKEDSIGS_t-corei7-64
> >
> >     ERROR: Task quilt-native.do_fetch attempted to execute
> > unexpectedly
> >
> >     Task
> >
>  /disk0/scratch/smonsees/testSDK/layers/poky/meta/recipes-support/db/db_=
5.3.28.bb:
> do_populate_sysroot,
> >     unihash
> >     dcfb179ae99ac73583d33eec1357ff5d06fb58f160e5d7285061b6e1c9c3a9c0,
> >     taskhash
> >     dcfb179ae99ac73583d33eec1357ff5d06fb58f160e5d7285061b6e1c9c3a9c0
> >
> >     Task
> >
>  /disk0/scratch/smonsees/testSDK/layers/poky/meta/recipes-extended/sed/s=
ed_4.2.2.bb:
> do_package_write_ipk,
> >     unihash
> >     a37dc1cc0064749d1f6de69d0a9b8eab9ff6ef4089eff28a76e1851f8f8f8fe3,
> >     taskhash
> >     a37dc1cc0064749d1f6de69d0a9b8eab9ff6ef4089eff28a76e1851f8f8f8fe3
> >
> >     Task
> >
>  /disk0/scratch/smonsees/testSDK/layers/poky/meta/recipes-support/libato=
mic-ops/libatomic-ops_7.6.10.bb:
> do_package_qa,
> >     unihash
> >     2b17b70b3e1568840e3b39488b9e6470c89d5ffd502f02b2c129331d7609add8,
> >     taskhash
> >     2b17b70b3e1568840e3b39488b9e6470c89d5ffd502f02b2c129331d7609add8
> >
> >     Task
> >
>  /disk0/scratch/smonsees/testSDK/layers/poky/meta/recipes-connectivity/o=
penssh/openssh_8.0p1.bb:
> do_package_qa,
> >     unihash
> >     87a24567344a646de9ab6fba50b398e41711ff4d1bca749ebe02d84359c2a155,
> >     taskhash
> >     87a24567344a646de9ab6fba50b398e41711ff4d1bca749ebe02d84359c2a155
> >
> >     .
> >
> >     .
> >
> >
> > https://www.mail-archive.com/search?l=3Dyocto@yoctoproject.org&q=3Dsub=
ject
> > :%22Re%5C%3A+%5C%5Byocto%5C%5D+eSDK+install+script+failure%22&o=3Dnewe=
st
> > &f=3D1
> >
> > <https://www.mail-archive.com/search?l=3Dyocto@yoctoproject.org&q=3Dsu=
bjec
> > t:%22Re%5C%3A+%5C%5Byocto%5C%5D+eSDK+install+script+failure%22&o=3Dnew=
es
> > t&f=3D1>
> >
> >
> > https://www.yoctoproject.org/pipermail/yocto/2017-August/037359.html
> >
> > <https://www.yoctoproject.org/pipermail/yocto/2017-August/037359.html>
> >
> >     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12344
> >     <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12344>
> >
> >     *From:* yocto@lists.yoctoproject.org
> >     <mailto:yocto@lists.yoctoproject.org> <yocto@lists.yoctoproject.or=
g
> >     <mailto:yocto@lists.yoctoproject.org>> *On Behalf Of *Monsees,
> >     Steven C (US) via lists.yoctoproject.org <
> http://lists.yoctoproject.org>
> >     *Sent:* Thursday, March 4, 2021 8:13 AM
> >     *To:* Monsees, Steven C (US) <steven.monsees@baesystems.com
> >     <mailto:steven.monsees@baesystems.com>>;
> >     yocto@lists.yoctoproject.org <mailto:yocto@lists.yoctoproject.org>
> >     *Subject:* Re: [yocto] #yocto #sdk
> >
> >     *_External Email Alert_*
> >
> >     *This email has been sent from an account outside of the BAE Syste=
ms
> >     network.*
> >
> >     Please treat the email with caution, especially if you are request=
ed
> >     to click on a link, decrypt/open an attachment, or enable macros.
> >     For further information on how to spot phishing, access
> >     =E2=80=9CCybersecurity OneSpace Page=E2=80=9D and report phishing =
by clicking the
> >     button =E2=80=9CReport Phishing=E2=80=9D on the Outlook toolbar.
> >
> >     Is there a list of certain classes that might interfere with the
> >     ability of the eSDK to lock down the configuratiuon ?
> >
> >     Thanks,
> >
> >     Steve
> >
> >     *From:* yocto@lists.yoctoproject.org
> >     <mailto:yocto@lists.yoctoproject.org> <yocto@lists.yoctoproject.or=
g
> >     <mailto:yocto@lists.yoctoproject.org>> *On Behalf Of *Monsees,
> >     Steven C (US) via lists.yoctoproject.org <
> http://lists.yoctoproject.org>
> >     *Sent:* Tuesday, March 2, 2021 3:26 PM
> >     *To:* yocto@lists.yoctoproject.org <mailto:
> yocto@lists.yoctoproject.org>
> >     *Subject:* [yocto] #yocto #sdk
> >
> >     *_External Email Alert_*
> >
> >     *This email has been sent from an account outside of the BAE Syste=
ms
> >     network.*
> >
> >     Please treat the email with caution, especially if you are request=
ed
> >     to click on a link, decrypt/open an attachment, or enable macros.
> >     For further information on how to spot phishing, access
> >     =E2=80=9CCybersecurity OneSpace Page=E2=80=9D and report phishing =
by clicking the
> >     button =E2=80=9CReport Phishing=E2=80=9D on the Outlook toolbar.
> >
> >     I still appear to be having an issue with the SXT SDK install=E2=
=80=A6
> >
> >     Building for zeus/x86_64 Intel based platform=E2=80=A6
> >
> >     I build my kernel image clean, fully functional=E2=80=A6
> >
> >     Standard SDK builds clean and appears functional=E2=80=A6
> >
> >     Ext SDK builds clean, but on install I am still seeing Error
> > below=E2=80=A6
> >
> >     (1)What is it comparing  between unhash/task hash ?, more sig issu=
es
> ?
> >
> >     (2)What is meant by =E2=80=9CThis is usually due to missing setsce=
ne tasks=E2=80=9D ?
> >
> >     (3)In the local.conf under the SDK they set :
> >
> >     SSTATE_MIRRORS +=3D " file://universal/(.*) <file://universal/(.*)=
>
> >     file://universal-4.9/\1 <file://universal-4.9/1>
> >     file://universal-4.9/(.*) <file://universal-4.9/(.*)>
> >     file://universal-4.8/\1 <file://universal-4.8/1>"
> >
> >     Under sdk-extra.conf I set :
> >
> >     SSTATE_MIRRORS +=3D file://.* <file://.*>
> >     file:///ede/tms/yocto/zeus/sstate_cache/PATH
> >     <file:///ede/tms/yocto/zeus/sstate_cache/PATH>
> >
> >     My SSTATE_MIRRIOR is based off the clean builds I mentioned above,
> >     is this the correct procedure ?
> >
> >     I am trying to figure out how best to debug this issue, it is
> >     occurring on the post install, and everything pretty much appears =
in
> >     place.
> >
> >     Steve
> >
> >     14:43 smonsees@yix490038
> >
> > /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/dep
> > loy/sdk>./limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4
> > .sh
> >
> > <http://limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.s
> > h>
> >
> >     LIMWS (BAE LIMWS base distro) Extensible SDK installer version
> > 3.0.4
> >
> >
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >
> >     Enter target directory for SDK (default: ~/limws_sdk):
> >     /disk0/scratch/smonsees/testSDK
> >
> >     You are about to install the SDK to
> >     "/disk0/scratch/smonsees/testSDK". Proceed [Y/n]? Y
> >
> >     Extracting
> >
> > SDK...................................................................
> > ...........done
> >
> >     Setting it up...
> >
> >     Extracting buildtools...
> >
> >     Preparing build system...
> >
> >     Parsing recipes: 100%
> >
>  |######################################################################=
#####################|
> >     Time: 0:01:32
> >
> >     Initialising tasks: 100%
> >
>  |######################################################################=
##################|
> >     Time: 0:00:04
> >
> >     Checking sstate mirror object availability: 100%
> >     |################################################################|
> >     Time: 0:00:03
> >
> >     ERROR: Task quilt-native.do_fetch attempted to execute
> > unexpectedly
> >
> >     Task
> >
>  /disk0/scratch/smonsees/testSDK/layers/poky/meta/recipes-support/liburc=
u/liburcu_0.11.1.bb:
> do_populate_sysroot,
> >     unihash
> >     cdb08644b85fa162bd9f88cb00113fe3193cc347e39e33e8f405f9c23f60c601,
> >     taskhash
> >     cdb08644b85fa162bd9f88cb00113fe3193cc347e39e33e8f405f9c23f60c601
> >
> >     Task
> >
>  /disk0/scratch/smonsees/testSDK/layers/poky/meta/recipes-devtools/pytho=
n/python3_3.7.8.bb:
> do_packagedata,
> >     unihash
> >     925a72cbe872aad09bd3fbbe74ed1c944e9c19a732e120feae5c4784e6330d4f,
> >     taskhash
> >     925a72cbe872aad09bd3fbbe74ed1c944e9c19a732e120feae5c4784e6330d4f
> >
> >     .
> >
> >     .
> >
> >     .
> >
> >     This is usually due to missing setscene tasks. Those missing in th=
is
> >     build were:
> >
> >     <<appears to list every recipe under ./testSDK/layers directory
> > here>>
> >
> >
> >
> >
> >
> >
>
>=20
>
>

--00000000000011c56805be62eb79
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Mar 25, 2021 at 1:01 PM Monsees, Steven C (US) via=
 <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;s=
teven.monsees=3D<a href=3D"mailto:baesystems.com@lists.yoctoproject.org">ba=
esystems.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><br>
I&#39;ve been looking at this but still find it odd that they are all &quo=
t; virtual:native&quot;/ &quot;poky/meta&quot;/=E2=80=9Cdo_populate_sysroot=
=
=E2=80=9D related...<br>
<br>
It is a &quot;minimum&quot; plus &quot;toolset&quot; build... and=C2=A0 it=
 builds clean, yet fails on the install...<br>
<br>
The error:=C2=A0 &quot;&gt; ERROR: Task quilt-native.do_fetch attempted to=
 execute unexpectedly&quot;<br>
<br>
How do you determine unexpected execution ?<br>
<br>
Any suggestions on how I should approach this ?<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Perhaps get int=
o install =C2=A0env and do signatures check for this task</div><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex"><br>
Thanks,<br>
Steve<br>
<br>
-----Original Message-----<br>
From: Monsees, Steven C (US) <br>
Sent: Wednesday, March 24, 2021 2:43 PM<br>
To: &#39;Khem Raj&#39; &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D=
"_blank">raj.khem@gmail.com</a>&gt;<br>
Cc: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yoct=
o@lists.yoctoproject.org</a><br>
Subject: RE: [yocto] #yocto #sdk<br>
<br>
<br>
The output=C2=A0 you see is from setting:<br>
<br>
SDK_EXT_TYPE =3D &quot;minimal&quot;<br>
SDK_INCLUDE_TOOLCHAIN =3D &quot;1&quot;<br>
<br>
When building minimal only, there are no errors/warnings (and no tools...)=
<br>
<br>
<br>
-----Original Message-----<br>
From: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank"=
>raj.khem@gmail.com</a>&gt;<br>
Sent: Wednesday, March 24, 2021 2:35 PM<br>
To: Monsees, Steven C (US) &lt;<a href=3D"mailto:steven.monsees@baesystems=
.com" target=3D"_blank">steven.monsees@baesystems.com</a>&gt;<br>
Cc: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yoct=
o@lists.yoctoproject.org</a><br>
Subject: Re: [yocto] #yocto #sdk<br>
<br>
External Email Alert<br>
<br>
This email has been sent from an account outside of the BAE Systems networ=
k.<br>
<br>
Please treat the email with caution, especially if you are requested to cl=
ick on a link, decrypt/open an attachment, or enable macros.=C2=A0 For furt=
her information on how to spot phishing, access =E2=80=9CCybersecurity OneS=
pace Page=E2=80=9D and report phishing by clicking the button =E2=80=9CRepo=
rt Phishing=E2=80=9D on the Outlook toolbar.<br>
<br>
<br>
I think there still are signature differences. perhaps try to add incremnt=
ally on top of minimal sdk and see where it breaks.<br>
<br>
On 3/24/21 9:18 AM, Monsees, Steven C (US) via <a href=3D"http://lists.yoc=
toproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org<=
/a> wrote:<br>
&gt; I corrected for the sig warnings, but still have an issue with the <b=
r>
&gt; extended SDK installing correctly<br>
&gt; <br>
&gt; (though I think I am close=E2=80=A6)<br>
&gt; <br>
&gt; *Note: The only issue now appears to be around the =E2=80=9C=E2=80=A6=
/poky/meta=E2=80=9D <br>
&gt; layer=E2=80=A6 and all with regards to =E2=80=9Cdo_populate_sysroot=
=E2=80=9D task=E2=80=A6*<br>
&gt; <br>
&gt; I am building my kernel clean, and update the MIRRORS after=E2=80=A6<=
br>
&gt; <br>
&gt; The unihash &amp; taskhash values are identical with respect to each =
<br>
&gt; component below=E2=80=A6<br>
&gt; <br>
&gt; I am building =E2=80=9Cuninative=E2=80=9D support into the EXT SDK on=
ly=E2=80=A6<br>
&gt; <br>
&gt; *None of the poky/meta references below are being modified by <br>
&gt; bbappends=E2=80=A6 should be a straight build*=E2=80=A6<br>
&gt; <br>
&gt; The EXT SDK local.conf appears to be setup correctly for my build env=
=
=E2=80=A6<br>
&gt; <br>
&gt; Am I missing something, a required variable setting, an additional <b=
r>
&gt; support component ? *- seems odd it is all centered around the one <b=
r>
&gt; unmodified layer=E2=80=A6*<br>
&gt; <br>
&gt; I am able to build and install the =E2=80=9Cminimum=E2=80=9D EXT SDK =
correctly, but I <br>
&gt; of course need the toolset=E2=80=A6<br>
&gt; <br>
&gt; I would appreciate any advice on how I might resolve this issue.<br>
&gt; <br>
&gt; Install Output:<br>
&gt; <br>
&gt; 10:50 smonsees@yix490016<br>
&gt; /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/de=
p<br>
&gt; loy/sdk&gt;ls<br>
&gt; <br>
&gt; limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.host.man=
i<br>
&gt; fest<br>
&gt; <br>
&gt; <a href=3D"http://limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-=
ext-3.0.4.sh" rel=3D"noreferrer" target=3D"_blank">limws-glibc-x86_64-aiox_=
orange-corei7-64-toolchain-ext-3.0.4.sh</a><br>
&gt; <br>
&gt; <a href=3D"http://limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-=
ext-3.0.4.target.ma" rel=3D"noreferrer" target=3D"_blank">limws-glibc-x86_6=
4-aiox_orange-corei7-64-toolchain-ext-3.0.4.target.ma</a><br>
&gt; nifest<br>
&gt; <br>
&gt; limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.testdata=
.<br>
&gt; json<br>
&gt; <br>
&gt; x86_64-buildtools-nativesdk-standalone-3.0.4.host.manifest<br>
&gt; <br>
&gt; <a href=3D"http://x86_64-buildtools-nativesdk-standalone-3.0.4.sh" re=
l=3D"noreferrer" target=3D"_blank">x86_64-buildtools-nativesdk-standalone-3=
.0.4.sh</a><br>
&gt; <br>
&gt; x86_64-buildtools-nativesdk-standalone-3.0.4.target.manifest<br>
&gt; <br>
&gt; x86_64-buildtools-nativesdk-standalone-3.0.4.testdata.json<br>
&gt; <br>
&gt; 10:50 smonsees@yix490016<br>
&gt; /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/de=
p<br>
&gt; loy/sdk&gt;<br>
&gt; ./<a href=3D"http://limws-glibc-x86_64-aiox_orange-corei7-64-toolchai=
n-ext-3.0.4.sh" rel=3D"noreferrer" target=3D"_blank">limws-glibc-x86_64-aio=
x_orange-corei7-64-toolchain-ext-3.0.4.sh</a><br>
&gt; <br>
&gt; LIMWS (BAE LIMWS base distro) Extensible SDK installer version 3.0.4<=
br>
&gt; <br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt; <br>
&gt; Enter target directory for SDK (default: ~/limws_sdk):=C2=A0 <br>
&gt; /disk0/scratch/smonsees/sbcbSDK_EXT<br>
&gt; <br>
&gt; You are about to install the SDK to<br>
&gt; &quot;/disk0/scratch/smonsees/sbcbSDK_EXT&quot;. Proceed [Y/n]? Y<br>
&gt; <br>
&gt; Extracting SDK...............done<br>
&gt; <br>
&gt; Setting it up...<br>
&gt; <br>
&gt; Extracting buildtools...<br>
&gt; <br>
&gt; Preparing build system...<br>
&gt; <br>
&gt; Parsing recipes: 100%<br>
&gt; |####################################################################=
#<br>
&gt; |########################|<br>
&gt; Time: 0:01:33<br>
&gt; <br>
&gt; Initialising tasks: 100%<br>
&gt; |####################################################################=
#<br>
&gt; |#####################|<br>
&gt; Time: 0:00:00<br>
&gt; <br>
&gt; Checking sstate mirror object availability: 100%<br>
&gt; |##################################################################|<=
br>
&gt; Time: 0:00:00<br>
&gt; <br>
&gt; ERROR: Task quilt-native.do_fetch attempted to execute unexpectedly<b=
r>
&gt; <br>
&gt; Task<br>
&gt; /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools=
/<br>
&gt; gcc/libgcc_9.2.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; d5a9dff48660903403f33fe67d6d43e03c97c03232c6d8f0ed71f99a94670bce,<br>
&gt; taskhash<br>
&gt; d5a9dff48660903403f33fe67d6d43e03c97c03232c6d8f0ed71f99a94670bce<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-support/gmp/gmp_6.1.2.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; cde9ef4fc769ee9a2733a1023534c15bfe199009270bcebb6c24c638729194dc,<br>
&gt; taskhash<br>
&gt; cde9ef4fc769ee9a2733a1023534c15bfe199009270bcebb6c24c638729194dc<br>
&gt; <br>
&gt; Task<br>
&gt; /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools=
/<br>
&gt; libtool/libtool-native_2.4.6.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; a1def57d3e655defdf1f85eec749be672ffe52a0a3c247585da9d6c57617cca2,<br>
&gt; taskhash<br>
&gt; a1def57d3e655defdf1f85eec749be672ffe52a0a3c247585da9d6c57617cca2<br>
&gt; <br>
&gt; Task<br>
&gt; /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools=
/<br>
&gt; gcc/gcc-cross_9.2.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 5f0f3533314c754b184e6f63f11ef2b570c7a5d47bc18fee2b4217aa294f08eb,<br>
&gt; taskhash<br>
&gt; 5f0f3533314c754b184e6f63f11ef2b570c7a5d47bc18fee2b4217aa294f08eb<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-connectivity/openssl/openssl_1.1.1g.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; d5e6bedb0cfb876a2925ea2e7f3bd00b090326b1cebf1182a6322974a6f055a3,<br>
&gt; taskhash<br>
&gt; d5e6bedb0cfb876a2925ea2e7f3bd00b090326b1cebf1182a6322974a6f055a3<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-devtools/python/python3_3.7.8.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 8ee0c0eafd3b1c3f774a26f59659fc0c563816b6badfa57d9fa9097a182b1de5,<br>
&gt; taskhash<br>
&gt; 8ee0c0eafd3b1c3f774a26f59659fc0c563816b6badfa57d9fa9097a182b1de5<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-gnome/gtk-doc/gtk-doc_1.31.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; fbc7421c8a324ed0cbca81f98430f509ce4cf6593b0961cad8109d467df9e35e,<br>
&gt; taskhash<br>
&gt; fbc7421c8a324ed0cbca81f98430f509ce4cf6593b0961cad8109d467df9e35e<br>
&gt; <br>
&gt; Task<br>
&gt; /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/met=
a<br>
&gt; /meta-extsdk-toolchain.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; b9d46f79061ad82c4630a3db00aefe484f743a84a526e8afb24d953d04752276,<br>
&gt; taskhash<br>
&gt; b9d46f79061ad82c4630a3db00aefe484f743a84a526e8afb24d953d04752276<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-support/attr/attr_2.4.47.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 3a6c84cf03e3103e46c02b01aed446fc31617f348b40d9e51b5b2ee8c2f3d0ee,<br>
&gt; taskhash<br>
&gt; 3a6c84cf03e3103e46c02b01aed446fc31617f348b40d9e51b5b2ee8c2f3d0ee<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-support/libmpc/libmpc_1.1.0.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 39109487309272ea510afb753a0dd84775625c73f7a261b9d0078fe0ea718f17,<br>
&gt; taskhash<br>
&gt; 39109487309272ea510afb753a0dd84775625c73f7a261b9d0078fe0ea718f17<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-core/util-linux/util-linux_2.34.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 51964ba6ff2cd62ad6d9077e9fddfe53be566eb23beca10e9c882a1eee20aa5d,<br>
&gt; taskhash<br>
&gt; 51964ba6ff2cd62ad6d9077e9fddfe53be566eb23beca10e9c882a1eee20aa5d<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-multimedia/libpng/libpng_1.6.37.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 6d92093db77054a96cd23e00ca2bf3468a9ae8ebddc191a59e1a0136778d6be1,<br>
&gt; taskhash<br>
&gt; 6d92093db77054a96cd23e00ca2bf3468a9ae8ebddc191a59e1a0136778d6be1<br>
&gt; <br>
&gt; Task<br>
&gt; /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools=
/<br>
&gt; gcc/gcc-cross_9.2.bb:do_gcc_stash_builddir,<br>
&gt; unihash<br>
&gt; 62ba54c4db5ba11db400ba0277892d92f665f35b5c334c17f8e6ad9ded9c16b1,<br>
&gt; taskhash<br>
&gt; 62ba54c4db5ba11db400ba0277892d92f665f35b5c334c17f8e6ad9ded9c16b1<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-extended/xz/<a href=3D"http://xz_5.2.4.bb" target=3D"_blank">xz=
_5.2.4.bb</a>:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 01723d04843fdbeec3fabd109c34281bd49c0979e09c722b2c189335cb6c957a,<br>
&gt; taskhash<br>
&gt; 01723d04843fdbeec3fabd109c34281bd49c0979e09c722b2c189335cb6c957a<br>
&gt; <br>
&gt; Task<br>
&gt; /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools=
/<br>
&gt; m4/m4-native_1.4.18.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 19b266239a8f93f5273ac6213d0f58a73bfc1ecbe84c5cfd273f5351b0740ca1,<br>
&gt; taskhash<br>
&gt; 19b266239a8f93f5273ac6213d0f58a73bfc1ecbe84c5cfd273f5351b0740ca1<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-graphics/xorg-lib/pixman_0.38.4.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 66cca6669fc3fdc571970b1ccabb7a8b334139013df8b71c8b033d15705ec5a7,<br>
&gt; taskhash<br>
&gt; 66cca6669fc3fdc571970b1ccabb7a8b334139013df8b71c8b033d15705ec5a7<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-devtools/unfs3/unfs3_git.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 46e3dd7e07935b77a618c4587f5bc8dbaaff1ba030e779683e2bf2679f57c8fb,<br>
&gt; taskhash<br>
&gt; 46e3dd7e07935b77a618c4587f5bc8dbaaff1ba030e779683e2bf2679f57c8fb<br>
&gt; <br>
&gt; Task<br>
&gt; /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools=
/<br>
&gt; gcc/gcc-runtime_9.2.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 7200138112d31332099cf647ee83441c6739d6f276f2ba859bd440b7a4eed9fb,<br>
&gt; taskhash<br>
&gt; 7200138112d31332099cf647ee83441c6739d6f276f2ba859bd440b7a4eed9fb<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-devtools/meson/meson_0.51.2.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; ac801ce28f4bf45c7c08e2721a765872a1bd6561f783c570ed47dad7e9642901,<br>
&gt; taskhash<br>
&gt; ac801ce28f4bf45c7c08e2721a765872a1bd6561f783c570ed47dad7e9642901<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-core/expat/expat_2.2.8.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; c47a5a2b37341edbfeab516b931c8f0015b52d6159f251e70f57e086a6502fe1,<br>
&gt; taskhash<br>
&gt; c47a5a2b37341edbfeab516b931c8f0015b52d6159f251e70f57e086a6502fe1<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-devtools/bison/bison_3.4.1.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; f8fb4d2026cb4192c03bc75c357f9890dcb4f7593d23407f9a60c32d383d7c57,<br>
&gt; taskhash<br>
&gt; f8fb4d2026cb4192c03bc75c357f9890dcb4f7593d23407f9a60c32d383d7c57<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-kernel/dtc/<a href=3D"http://dtc_1.5.1.bb" target=3D"_blank">dt=
c_1.5.1.bb</a>:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 8ee1e9314ae7a6235f2ec876f7d30336d6e65d7879ac17cd1044ac3f20f969ec,<br>
&gt; taskhash<br>
&gt; 8ee1e9314ae7a6235f2ec876f7d30336d6e65d7879ac17cd1044ac3f20f969ec<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-devtools/autoconf-archive/autoconf-archive_2019.01.06.bb:do_pop=
u<br>
&gt; late_sysroot,<br>
&gt; unihash<br>
&gt; 7aaaf6c0cf3a9c104029683b93a62b965e91827c487ee707a23c84560aea1d3e,<br>
&gt; taskhash<br>
&gt; 7aaaf6c0cf3a9c104029683b93a62b965e91827c487ee707a23c84560aea1d3e<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-extended/bzip2/bzip2_1.0.8.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 66c8139add58f12cae0334108b226f4f91f1fdb34fd34822c9ff9612d6c11b64,<br>
&gt; taskhash<br>
&gt; 66c8139add58f12cae0334108b226f4f91f1fdb34fd34822c9ff9612d6c11b64<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-graphics/xorg-util/util-macros_1.19.2.bb:do_populate_sysroot,<b=
r>
&gt; unihash<br>
&gt; 070d343bb7de5e6402f4190283e6d40ca33031eac71601d7ab92a92ef0e175d0,<br>
&gt; taskhash<br>
&gt; 070d343bb7de5e6402f4190283e6d40ca33031eac71601d7ab92a92ef0e175d0<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-devtools/python/python3-setuptools_41.2.0.bb:do_populate_sysroo=
t<br>
&gt; ,<br>
&gt; unihash<br>
&gt; e8771b3e23f0d5c3e799b093dd9657a2fd863abf459fa500399930111a8fd388,<br>
&gt; taskhash<br>
&gt; e8771b3e23f0d5c3e799b093dd9657a2fd863abf459fa500399930111a8fd388<br>
&gt; <br>
&gt; Task<br>
&gt; /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools=
/<br>
&gt; qemu/qemu-system-native_4.1.0.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 33ac287a8d8aded61eb77dd21cb3c54986126430c78a243f706a5917ef0a0183,<br>
&gt; taskhash<br>
&gt; 33ac287a8d8aded61eb77dd21cb3c54986126430c78a243f706a5917ef0a0183<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-support/mpfr/mpfr_4.0.2.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 25d61942ed599e037b2e75a5b722ce5ff251005c2a4ee23e9faef34c9e54777b,<br>
&gt; taskhash<br>
&gt; 25d61942ed599e037b2e75a5b722ce5ff251005c2a4ee23e9faef34c9e54777b<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-support/re2c/re2c_1.0.1.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 6ebe8680a921a8927ef6cd0061b2b50667bb787be010c8ee4ca6ccc3593024b7,<br>
&gt; taskhash<br>
&gt; 6ebe8680a921a8927ef6cd0061b2b50667bb787be010c8ee4ca6ccc3593024b7<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 28e64747a95953ec8626d3027958e12d1fd854a7615bc69cf5adbbc3d49c323a,<br>
&gt; taskhash<br>
&gt; 28e64747a95953ec8626d3027958e12d1fd854a7615bc69cf5adbbc3d49c323a<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-extended/libtirpc/libtirpc_1.1.4.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 147f1ca7d20e89f2786b48fcda4ebaf36c1c3d941b53b0b8b56c42beb9220c1d,<br>
&gt; taskhash<br>
&gt; 147f1ca7d20e89f2786b48fcda4ebaf36c1c3d941b53b0b8b56c42beb9220c1d<br>
&gt; <br>
&gt; Task<br>
&gt; /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools=
/<br>
&gt; qemu/qemu-native_4.1.0.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 00651d4d53b4b7b10e44770326d5f0a1f5482c1262671621523ba12c21508977,<br>
&gt; taskhash<br>
&gt; 00651d4d53b4b7b10e44770326d5f0a1f5482c1262671621523ba12c21508977<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-core/gettext/gettext_0.19.8.1.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; bf9b767f8e30be92fa06079f2e7350aa304648b0d113829d315e6cb64bad0565,<br>
&gt; taskhash<br>
&gt; bf9b767f8e30be92fa06079f2e7350aa304648b0d113829d315e6cb64bad0565<br>
&gt; <br>
&gt; Task<br>
&gt; /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/gli=
b<br>
&gt; c/glibc_2.30.bb:do_stash_locale,<br>
&gt; unihash<br>
&gt; d64e054d019028151912ffface31585789df48f4de7e3a66b201cd614c2f4aca,<br>
&gt; taskhash<br>
&gt; d64e054d019028151912ffface31585789df48f4de7e3a66b201cd614c2f4aca<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-devtools/ninja/ninja_1.9.0.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; ab3ecdf2561adc51338d36576f60eab1e05fc09ed69bb6444075d7adbeb57b9e,<br>
&gt; taskhash<br>
&gt; ab3ecdf2561adc51338d36576f60eab1e05fc09ed69bb6444075d7adbeb57b9e<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-support/sqlite/sqlite3_3.29.0.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; c1a988a16d4368098e178f7fe5f0e2e5f8adf4fa485a7b79c4c093a38005264e,<br>
&gt; taskhash<br>
&gt; c1a988a16d4368098e178f7fe5f0e2e5f8adf4fa485a7b79c4c093a38005264e<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-devtools/automake/automake_1.16.1.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; ad223f3318940531fa279bd74480cd6410abc46644f8fe98f7399a71cfe09179,<br>
&gt; taskhash<br>
&gt; ad223f3318940531fa279bd74480cd6410abc46644f8fe98f7399a71cfe09179<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-devtools/patch/patch_2.7.6.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; be5aa9a356c12c9b4220c3d3d6dfe16c737e9be88e7d331c0511b275e4d603c4,<br>
&gt; taskhash<br>
&gt; be5aa9a356c12c9b4220c3d3d6dfe16c737e9be88e7d331c0511b275e4d603c4<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-devtools/flex/flex_2.6.0.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 9c37027658f2832321efe3657d91f29d1bf286ad1fda0c9916b256adfa246455,<br>
&gt; taskhash<br>
&gt; 9c37027658f2832321efe3657d91f29d1bf286ad1fda0c9916b256adfa246455<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-core/readline/readline_8.0.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 3d909d0d6de7cf72b631aa1805efc1147459bef5bddca5f60ff07022ba777e0e,<br>
&gt; taskhash<br>
&gt; 3d909d0d6de7cf72b631aa1805efc1147459bef5bddca5f60ff07022ba777e0e<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-extended/libnsl/libnsl2_git.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 19357ca137093c4e1e063d14a0d3844f889dce933a4eebdc34acf0c321d707ec,<br>
&gt; taskhash<br>
&gt; 19357ca137093c4e1e063d14a0d3844f889dce933a4eebdc34acf0c321d707ec<br>
&gt; <br>
&gt; Task<br>
&gt; /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/gli=
b<br>
&gt; c/glibc_2.30.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; df6ecc8017c1a3fa278fc743c85fa6049465da674f169777b9a544eb423b84b5,<br>
&gt; taskhash<br>
&gt; df6ecc8017c1a3fa278fc743c85fa6049465da674f169777b9a544eb423b84b5<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-support/gdbm/gdbm_1.18.1.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 8b0d7a859afc0cc39a32d26b8d5c79b5c1b8970a8e5d566098ff59fc916335f5,<br>
&gt; taskhash<br>
&gt; 8b0d7a859afc0cc39a32d26b8d5c79b5c1b8970a8e5d566098ff59fc916335f5<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-support/libcap-ng/libcap-ng_0.7.9.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 784e3c4b04d227379d94e85251233a568fb9e9f841d737584882d0da0b009d5c,<br>
&gt; taskhash<br>
&gt; 784e3c4b04d227379d94e85251233a568fb9e9f841d737584882d0da0b009d5c<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-core/zlib/zlib_1.2.11.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 770d0b4be83a17d65464ade3adc3c6be443a9f8fffbe53d303c5765674a274d7,<br>
&gt; taskhash<br>
&gt; 770d0b4be83a17d65464ade3adc3c6be443a9f8fffbe53d303c5765674a274d7<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-extended/unzip/unzip_6.0.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 82d365cde8a3375461fb47f650aa3fd7c8aa029b0cd2f23ccd38b6f73a9902d9,<br>
&gt; taskhash<br>
&gt; 82d365cde8a3375461fb47f650aa3fd7c8aa029b0cd2f23ccd38b6f73a9902d9<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-devtools/pkgconfig/pkgconfig_git.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; de3b4482bf2a0878b99c904fecac19e917d374838da4c9df62929bb14d1282d1,<br>
&gt; taskhash<br>
&gt; de3b4482bf2a0878b99c904fecac19e917d374838da4c9df62929bb14d1282d1<br>
&gt; <br>
&gt; Task<br>
&gt; /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools=
/<br>
&gt; binutils/binutils-cross_2.32.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 50ce76092848b0214480dd7a4f0fcc7e5927f4f8071601bc094847d20d2c879d,<br>
&gt; taskhash<br>
&gt; 50ce76092848b0214480dd7a4f0fcc7e5927f4f8071601bc094847d20d2c879d<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-devtools/gnu-config/gnu-config_git.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 90db72e6ab74de51a86e0b14980b2c204076fc3ef8297a374b660d8645853cac,<br>
&gt; taskhash<br>
&gt; 90db72e6ab74de51a86e0b14980b2c204076fc3ef8297a374b660d8645853cac<br>
&gt; <br>
&gt; Task<br>
&gt; /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-kernel/l=
i<br>
&gt; nux-libc-headers/linux-libc-headers_5.2.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 7b6f6e59c3431987b308c78d6f72e5aefae1b9afbf158a47540f0db5e04ebdb0,<br>
&gt; taskhash<br>
&gt; 7b6f6e59c3431987b308c78d6f72e5aefae1b9afbf158a47540f0db5e04ebdb0<br>
&gt; <br>
&gt; Task<br>
&gt; /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools=
/<br>
&gt; gdb/gdb-cross_8.3.1.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; c623832386a7201b2a59b170e7c9015edfffbfb21dbec6ab44e81662d1d7c504,<br>
&gt; taskhash<br>
&gt; c623832386a7201b2a59b170e7c9015edfffbfb21dbec6ab44e81662d1d7c504<br>
&gt; <br>
&gt; Task<br>
&gt; /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools=
/<br>
&gt; quilt/quilt-native_0.66.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 23290d029e88d49579ce286326ba82d42ad77874a2cd0e05e71166b964190822,<br>
&gt; taskhash<br>
&gt; 23290d029e88d49579ce286326ba82d42ad77874a2cd0e05e71166b964190822<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-support/libffi/libffi_3.3~rc0.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 5be2fdefd4b14100290247d24d2df8da234ea32cb91e4508ffd793aabc06d30e,<br>
&gt; taskhash<br>
&gt; 5be2fdefd4b14100290247d24d2df8da234ea32cb91e4508ffd793aabc06d30e<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-devtools/make/make_4.2.1.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 7a82e867fd7be399f5d92200e43de6e7d9d42ad98e5f771a6e54a0975053ae2e,<br>
&gt; taskhash<br>
&gt; 7a82e867fd7be399f5d92200e43de6e7d9d42ad98e5f771a6e54a0975053ae2e<br>
&gt; <br>
&gt; Task<br>
&gt; /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-extended=
/<br>
&gt; texinfo-dummy-native/texinfo-dummy-native.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 2d20a98fe86b071366643317507293df9594c15528ef49f3fbeeffe4af532501,<br>
&gt; taskhash<br>
&gt; 2d20a98fe86b071366643317507293df9594c15528ef49f3fbeeffe4af532501<br>
&gt; <br>
&gt; Task<br>
&gt; /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/get=
t<br>
&gt; ext/gettext-minimal-native_0.19.8.1.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; d579308c5efa4cef283785d540731bf0f02dffeef6ea677b0fa7cec6332e7902,<br>
&gt; taskhash<br>
&gt; d579308c5efa4cef283785d540731bf0f02dffeef6ea677b0fa7cec6332e7902<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-core/glib-2.0/glib-2.0_2.60.7.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; b7ff5dcd7278fab62aa716be6cf652bcc1d463d884738fb3232297fe6f81880a,<br>
&gt; taskhash<br>
&gt; b7ff5dcd7278fab62aa716be6cf652bcc1d463d884738fb3232297fe6f81880a<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-extended/gperf/gperf_3.1.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 6765ae416e5360039914d6216c0d02541c5afc070545804303d75d1016b7b460,<br>
&gt; taskhash<br>
&gt; 6765ae416e5360039914d6216c0d02541c5afc070545804303d75d1016b7b460<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-core/ncurses/ncurses_6.1+20190803.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; f468831b3be537588a35b7fdf2e1a46dc52d1737fbf168c0e83ff0f162a99cf9,<br>
&gt; taskhash<br>
&gt; f468831b3be537588a35b7fdf2e1a46dc52d1737fbf168c0e83ff0f162a99cf9<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-multimedia/alsa/alsa-lib_1.1.9.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 39d5b05d5ec0e2b2abbb710c7c31f17d3047a255f5a11deb121d7323e06fb900,<br>
&gt; taskhash<br>
&gt; 39d5b05d5ec0e2b2abbb710c7c31f17d3047a255f5a11deb121d7323e06fb900<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-support/libpcre/libpcre_8.43.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 3eed4e011c853b98bf31e1c1b2eee2073aeb4ef0546c9bd230f2bfcc3ac05088,<br>
&gt; taskhash<br>
&gt; 3eed4e011c853b98bf31e1c1b2eee2073aeb4ef0546c9bd230f2bfcc3ac05088<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-devtools/autoconf/autoconf_2.69.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 373490cc20455b0913b69b35ab9cc61340356d7b27f7ecb6cf51a3ad9459a068,<br>
&gt; taskhash<br>
&gt; 373490cc20455b0913b69b35ab9cc61340356d7b27f7ecb6cf51a3ad9459a068<br>
&gt; <br>
&gt; Task<br>
&gt; virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/r=
e<br>
&gt; cipes-devtools/unifdef/unifdef_2.11.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 3e6814932d42ab266096948b4b81f9c1fbdbb26f7b990963ca4322a718e13170,<br>
&gt; taskhash<br>
&gt; 3e6814932d42ab266096948b4b81f9c1fbdbb26f7b990963ca4322a718e13170<br>
&gt; <br>
&gt; Task<br>
&gt; /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools=
/<br>
&gt; gcc/libgcc-initial_9.2.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 07136816c5d9bb085d8dab671c1689d08254d92b7e0edbb4a23abb3ae2628bea,<br>
&gt; taskhash<br>
&gt; 07136816c5d9bb085d8dab671c1689d08254d92b7e0edbb4a23abb3ae2628bea<br>
&gt; <br>
&gt; Task<br>
&gt; /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools=
/<br>
&gt; qemu/qemu-helper-native_1.0.bb:do_populate_sysroot,<br>
&gt; unihash<br>
&gt; 4ba7e532221d903e4c3556460d09d7bf7eabc9c4ca73f6a481849be0eaba23a3,<br>
&gt; taskhash<br>
&gt; 4ba7e532221d903e4c3556460d09d7bf7eabc9c4ca73f6a481849be0eaba23a3<br>
&gt; <br>
&gt; This is usually due to missing setscene tasks. Those missing in this =
<br>
&gt; build were:<br>
&gt; {&#39;/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-co=
re/ge<br>
&gt; ttext/gettext-minimal-native_0.19.8.1.bb:do_populate_sysroot&#39;,<br=
>
&gt; <br>
&gt; &#39;/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-cor=
e/gli<br>
&gt; bc/glibc_2.30.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-cor=
e/gli<br>
&gt; bc/glibc_2.30.bb:do_stash_locale&#39;,<br>
&gt; <br>
&gt; &#39;/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-cor=
e/met<br>
&gt; a/meta-extsdk-toolchain.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-dev=
tools<br>
&gt; /binutils/binutils-cross_2.32.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-dev=
tools<br>
&gt; /gcc/gcc-cross_9.2.bb:do_gcc_stash_builddir&#39;,<br>
&gt; <br>
&gt; &#39;/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-dev=
tools<br>
&gt; /gcc/gcc-cross_9.2.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-dev=
tools<br>
&gt; /gcc/gcc-runtime_9.2.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-dev=
tools<br>
&gt; /gcc/libgcc-initial_9.2.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-dev=
tools<br>
&gt; /gcc/libgcc_9.2.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-dev=
tools<br>
&gt; /gdb/gdb-cross_8.3.1.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-dev=
tools<br>
&gt; /libtool/libtool-native_2.4.6.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-dev=
tools<br>
&gt; /m4/m4-native_1.4.18.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-dev=
tools<br>
&gt; /qemu/qemu-helper-native_1.0.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-dev=
tools<br>
&gt; /qemu/qemu-native_4.1.0.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-dev=
tools<br>
&gt; /qemu/qemu-system-native_4.1.0.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-dev=
tools<br>
&gt; /quilt/quilt-native_0.66.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-ext=
ended<br>
&gt; /texinfo-dummy-native/texinfo-dummy-native.bb:do_populate_sysroot&#39=
;,<br>
&gt; <br>
&gt; &#39;/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-ker=
nel/l<br>
&gt; inux-libc-headers/linux-libc-headers_5.2.bb:do_populate_sysroot&#39;,=
<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-connectivity/openssl/openssl_1.1.1g.bb:do_populate_sysroot&#39=
;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-core/expat/expat_2.2.8.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-core/gettext/gettext_0.19.8.1.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-core/glib-2.0/glib-2.0_2.60.7.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-core/ncurses/ncurses_6.1+20190803.bb:do_populate_sysroot&#39;,=
<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-core/readline/readline_8.0.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-core/util-linux/util-linux_2.34.bb:do_populate_sysroot&#39;,<b=
r>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-core/zlib/zlib_1.2.11.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-devtools/autoconf-archive/autoconf-archive_2019.01.06.bb:do_po=
p<br>
&gt; ulate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-devtools/autoconf/autoconf_2.69.bb:do_populate_sysroot&#39;,<b=
r>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-devtools/automake/automake_1.16.1.bb:do_populate_sysroot&#39;,=
<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-devtools/bison/bison_3.4.1.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-devtools/flex/flex_2.6.0.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-devtools/gnu-config/gnu-config_git.bb:do_populate_sysroot&#39;=
,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-devtools/make/make_4.2.1.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-devtools/meson/meson_0.51.2.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-devtools/ninja/ninja_1.9.0.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-devtools/patch/patch_2.7.6.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-devtools/pkgconfig/pkgconfig_git.bb:do_populate_sysroot&#39;,<=
br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-devtools/python/python3-setuptools_41.2.0.bb:do_populate_sysro=
o<br>
&gt; t&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-devtools/python/python3_3.7.8.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-devtools/unfs3/unfs3_git.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-devtools/unifdef/unifdef_2.11.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-extended/bzip2/bzip2_1.0.8.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-extended/gperf/gperf_3.1.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-extended/libnsl/libnsl2_git.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-extended/libtirpc/libtirpc_1.1.4.bb:do_populate_sysroot&#39;,<=
br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-extended/unzip/unzip_6.0.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-extended/xz/xz_5.2.4.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-gnome/gtk-doc/gtk-doc_1.31.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-graphics/xorg-lib/pixman_0.38.4.bb:do_populate_sysroot&#39;,<b=
r>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-graphics/xorg-util/util-macros_1.19.2.bb:do_populate_sysroot&#=
39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-kernel/dtc/dtc_1.5.1.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-multimedia/alsa/alsa-lib_1.1.9.bb:do_populate_sysroot&#39;,<br=
>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-multimedia/libpng/libpng_1.6.37.bb:do_populate_sysroot&#39;,<b=
r>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-support/attr/attr_2.4.47.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-support/gdbm/gdbm_1.18.1.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-support/gmp/gmp_6.1.2.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-support/libcap-ng/libcap-ng_0.7.9.bb:do_populate_sysroot&#39;,=
<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-support/libffi/libffi_3.3~rc0.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-support/libmpc/libmpc_1.1.0.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-support/libpcre/libpcre_8.43.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-support/mpfr/mpfr_4.0.2.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-support/re2c/re2c_1.0.1.bb:do_populate_sysroot&#39;,<br>
&gt; <br>
&gt; &#39;virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/m=
eta/r<br>
&gt; ecipes-support/sqlite/sqlite3_3.29.0.bb:do_populate_sysroot&#39;}<br>
&gt; <br>
&gt; ERROR: Task<br>
&gt; (/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtool=
s<br>
&gt; /quilt/quilt-native_0.66.bb:do_fetch)<br>
&gt; failed with exit code &#39;setscene whitelist&#39;<br>
&gt; <br>
&gt; ERROR: SDK preparation failed: error log written to <br>
&gt; /disk0/scratch/smonsees/sbcbSDK_EXT/preparing_build_system.log<br>
&gt; <br>
&gt; 10:52 smonsees@yix490016<br>
&gt; /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/de=
p<br>
&gt; loy/sdk&gt;<br>
&gt; <br>
&gt; *From:*Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_=
blank">raj.khem@gmail.com</a>&gt;<br>
&gt; *Sent:* Thursday, March 4, 2021 1:22 PM<br>
&gt; *To:* Monsees, Steven C (US) &lt;<a href=3D"mailto:steven.monsees@bae=
systems.com" target=3D"_blank">steven.monsees@baesystems.com</a>&gt;<br>
&gt; *Cc:* <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blan=
k">yocto@lists.yoctoproject.org</a><br>
&gt; *Subject:* Re: [yocto] #yocto #sdk<br>
&gt; <br>
&gt; *_External Email Alert_*<br>
&gt; <br>
&gt; *This email has been sent from an account outside of the BAE Systems<=
br>
&gt; network.*<br>
&gt; <br>
&gt; Please treat the email with caution, especially if you are requested =
<br>
&gt; to click on a link, decrypt/open an attachment, or enable macros.=C2=
=A0 For <br>
&gt; further information on how to spot phishing, access =E2=80=9CCybersec=
urity <br>
&gt; OneSpace Page=E2=80=9D and report phishing by clicking the button =E2=
=
=80=9CReport <br>
&gt; Phishing=E2=80=9D on the Outlook toolbar.<br>
&gt; <br>
&gt; right, the change seems to be happening in task checksums and that <b=
r>
&gt; happens if some of bitbake variables change when=C2=A0SDK is built bu=
ilt <br>
&gt; and when it is being installed ( when it will run parse again ) <br>
&gt; perhaps the workspace under the hood is still accessible and you can =
<br>
&gt; use bitbake-diffsigs to narrow it down the variable that is changing<=
br>
&gt; <br>
&gt; On Thu, Mar 4, 2021 at 9:38 AM Monsees, Steven C (US) via <br>
&gt; <a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=
=3D"_blank">lists.yoctoproject.org</a> &lt;<a href=3D"http://lists.yoctopr=
oject.org" rel=3D"noreferrer" target=3D"_blank">http://lists.yoctoproject.o=
rg</a>&gt; <br>
&gt; &lt;steven.monsees=3D<a href=3D"mailto:baesystems.com@lists.yoctoproj=
ect.org" target=3D"_blank">baesystems.com@lists.yoctoproject.org</a><br>
&gt; &lt;mailto:<a href=3D"mailto:baesystems.com@lists.yoctoproject.org" t=
arget=3D"_blank">baesystems.com@lists.yoctoproject.org</a>&gt;&gt; wrote:<b=
r>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0I am seeing similar issues on line =C2=A0for my eS=
DK install issue, but<br>
&gt;=C2=A0 =C2=A0 =C2=A0no resolutions=E2=80=A6<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Can someone advise on best course of action to deb=
ug this ?<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A011:10 smonsees@yix490016<br>
&gt;=C2=A0 =C2=A0 =C2=A0/disk0/scratch/smonsees/yocto/workspace_3/builds2/=
sbcb-default/tmp/deploy/sdk&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0./<a href=3D"http://limws-glibc-x86_64-aiox_orange=
-corei7-64-toolchain-ext-3.0.4.sh" rel=3D"noreferrer" target=3D"_blank">lim=
ws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.sh</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0<br>
&gt; &lt;<a href=3D"http://limws-glibc-x86_64-aiox_orange-corei7-64-toolch=
ain-ext-3.0.4.s" rel=3D"noreferrer" target=3D"_blank">http://limws-glibc-x8=
6_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.s</a><br>
&gt; h&gt;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0LIMWS (BAE LIMWS base distro) Extensible SDK insta=
ller version<br>
&gt; 3.0.4<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0<br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Enter target directory for SDK (default: ~/limws_s=
dk):<br>
&gt;=C2=A0 =C2=A0 =C2=A0/disk0/scratch/smonsees/testSDK<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0You are about to install the SDK to<br>
&gt;=C2=A0 =C2=A0 =C2=A0&quot;/disk0/scratch/smonsees/testSDK&quot;. Proce=
ed [Y/n]? Y<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Extracting<br>
&gt;=C2=A0 =C2=A0 =C2=A0<br>
&gt; SDK..................................................................=
.<br>
&gt; ...........done<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Setting it up...<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Extracting buildtools...<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Preparing build system...<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Parsing recipes: 100%<br>
&gt;=C2=A0 =C2=A0 =C2=A0|#################################################=
#########################################|<br>
&gt;=C2=A0 =C2=A0 =C2=A0Time: 0:01:36<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Initialising tasks: 100%<br>
&gt;=C2=A0 =C2=A0 =C2=A0|#################################################=
######################################|<br>
&gt;=C2=A0 =C2=A0 =C2=A0Time: 0:00:04<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Checking sstate mirror object availability: 100%<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0|#################################################=
##############|<br>
&gt;=C2=A0 =C2=A0 =C2=A0Time: 0:00:02<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0WARNING: The efitools:do_compile sig is computed t=
o be<br>
&gt;=C2=A0 =C2=A0 =C2=A05851605e22907038837428950427053e22ea655641a08b5daf=
a39d6d6e1c5e15,<br>
&gt;=C2=A0 =C2=A0 =C2=A0but the sig is locked to<br>
&gt;=C2=A0 =C2=A0 =C2=A0b81a26e3591c71acd3d22212bfdb70a15a0df49af72e7634e6=
a39851f16e18b5 in<br>
&gt;=C2=A0 =C2=A0 =C2=A0SIGGEN_LOCKEDSIGS_t-corei7-64<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0The monkeysphere:do_install sig is computed to be<=
br>
&gt;=C2=A0 =C2=A0 =C2=A013a65b26dfff91f2432a8064d98003559eafffa214d81c3c6e=
a112c2dfba0391,<br>
&gt;=C2=A0 =C2=A0 =C2=A0but the sig is locked to<br>
&gt;=C2=A0 =C2=A0 =C2=A02058fc9032b0e7f5c1ea358de4fa8d25ccec7204b73ebc636e=
79222d8cc00469 in<br>
&gt;=C2=A0 =C2=A0 =C2=A0SIGGEN_LOCKEDSIGS_t-corei7-64<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0The signature:do_compile sig is computed to be<br>
&gt;=C2=A0 =C2=A0 =C2=A0ac0c5c19cdbe7484046657ccb7b768c02fbbabb43166befa93=
b71a85d5fcf55b,<br>
&gt;=C2=A0 =C2=A0 =C2=A0but the sig is locked to<br>
&gt;=C2=A0 =C2=A0 =C2=A0cf5c3f72489f447b1199aafe4b4148988ff91cecd970422352=
f2238afb127683 in<br>
&gt;=C2=A0 =C2=A0 =C2=A0SIGGEN_LOCKEDSIGS_t-corei7-64<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0The grub-efi-native:do_clean_grub sig is computed =
to be<br>
&gt;=C2=A0 =C2=A0 =C2=A04e16b100c32e9428126eb10864508038527cec795c5e439120=
8d96a55735c90a,<br>
&gt;=C2=A0 =C2=A0 =C2=A0but the sig is locked to<br>
&gt;=C2=A0 =C2=A0 =C2=A0a2bd26be0297624af53d6f8cf657d79740fb229db821c446d5=
64c5ee9dc80ea3 in<br>
&gt;=C2=A0 =C2=A0 =C2=A0SIGGEN_LOCKEDSIGS_t-x86-64<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0The grub-efi-native:do_compile sig is computed to =
be<br>
&gt;=C2=A0 =C2=A0 =C2=A0630cc346f7ececf98c54f9134e8fee546e85c92f1e3c6ac3c2=
58a1cdf24d4565,<br>
&gt;=C2=A0 =C2=A0 =C2=A0but the sig is locked to<br>
&gt;=C2=A0 =C2=A0 =C2=A0802bba0874ce26169a9e16dcdb440795e8fa904977b036d637=
d6c4086ce72de8 in<br>
&gt;=C2=A0 =C2=A0 =C2=A0SIGGEN_LOCKEDSIGS_t-x86-64<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0The grub-efi:do_clean_grub sig is computed to be<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0faf0ae3c9159ef3ebb13d2521ecf51dfeeac0c2c47691cd0aa=
a80de91187af3c,<br>
&gt;=C2=A0 =C2=A0 =C2=A0but the sig is locked to<br>
&gt;=C2=A0 =C2=A0 =C2=A00075bbd34297bfbc62685ff5477feec11d0dd2bcda6787a151=
cfb7927a7f39c2 in<br>
&gt;=C2=A0 =C2=A0 =C2=A0SIGGEN_LOCKEDSIGS_t-corei7-64<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0The grub-efi:do_compile sig is computed to be<br>
&gt;=C2=A0 =C2=A0 =C2=A030c09f3e8db4059b7e1ff23823f208be94d0e622904fc43eda=
497027be095a71,<br>
&gt;=C2=A0 =C2=A0 =C2=A0but the sig is locked to<br>
&gt;=C2=A0 =C2=A0 =C2=A0a9e8ddd9ecac11e67c66d9fccbabe23b6eb4a19c5996baef8f=
f960dfcdc898ed in<br>
&gt;=C2=A0 =C2=A0 =C2=A0SIGGEN_LOCKEDSIGS_t-corei7-64<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0ERROR: Task quilt-native.do_fetch attempted to exe=
cute <br>
&gt; unexpectedly<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Task<br>
&gt;=C2=A0 =C2=A0 =C2=A0/disk0/scratch/smonsees/testSDK/layers/poky/meta/r=
ecipes-support/db/db_5.3.28.bb:do_populate_sysroot,<br>
&gt;=C2=A0 =C2=A0 =C2=A0unihash<br>
&gt;=C2=A0 =C2=A0 =C2=A0dcfb179ae99ac73583d33eec1357ff5d06fb58f160e5d72850=
61b6e1c9c3a9c0,<br>
&gt;=C2=A0 =C2=A0 =C2=A0taskhash<br>
&gt;=C2=A0 =C2=A0 =C2=A0dcfb179ae99ac73583d33eec1357ff5d06fb58f160e5d72850=
61b6e1c9c3a9c0<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Task<br>
&gt;=C2=A0 =C2=A0 =C2=A0/disk0/scratch/smonsees/testSDK/layers/poky/meta/r=
ecipes-extended/sed/sed_4.2.2.bb:do_package_write_ipk,<br>
&gt;=C2=A0 =C2=A0 =C2=A0unihash<br>
&gt;=C2=A0 =C2=A0 =C2=A0a37dc1cc0064749d1f6de69d0a9b8eab9ff6ef4089eff28a76=
e1851f8f8f8fe3,<br>
&gt;=C2=A0 =C2=A0 =C2=A0taskhash<br>
&gt;=C2=A0 =C2=A0 =C2=A0a37dc1cc0064749d1f6de69d0a9b8eab9ff6ef4089eff28a76=
e1851f8f8f8fe3<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Task<br>
&gt;=C2=A0 =C2=A0 =C2=A0/disk0/scratch/smonsees/testSDK/layers/poky/meta/r=
ecipes-support/libatomic-ops/libatomic-ops_7.6.10.bb:do_package_qa,<br>
&gt;=C2=A0 =C2=A0 =C2=A0unihash<br>
&gt;=C2=A0 =C2=A0 =C2=A02b17b70b3e1568840e3b39488b9e6470c89d5ffd502f02b2c1=
29331d7609add8,<br>
&gt;=C2=A0 =C2=A0 =C2=A0taskhash<br>
&gt;=C2=A0 =C2=A0 =C2=A02b17b70b3e1568840e3b39488b9e6470c89d5ffd502f02b2c1=
29331d7609add8<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Task<br>
&gt;=C2=A0 =C2=A0 =C2=A0/disk0/scratch/smonsees/testSDK/layers/poky/meta/r=
ecipes-connectivity/openssh/openssh_8.0p1.bb:do_package_qa,<br>
&gt;=C2=A0 =C2=A0 =C2=A0unihash<br>
&gt;=C2=A0 =C2=A0 =C2=A087a24567344a646de9ab6fba50b398e41711ff4d1bca749ebe=
02d84359c2a155,<br>
&gt;=C2=A0 =C2=A0 =C2=A0taskhash<br>
&gt;=C2=A0 =C2=A0 =C2=A087a24567344a646de9ab6fba50b398e41711ff4d1bca749ebe=
02d84359c2a155<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0<br>
&gt; <a href=3D"https://www.mail-archive.com/search?l=3Dyocto@yoctoproject=
.org&amp;q=3Dsubject" rel=3D"noreferrer" target=3D"_blank">https://www.mail=
-archive.com/search?l=3Dyocto@yoctoproject.org&amp;q=3Dsubject</a><br>
&gt; :%22Re%5C%3A+%5C%5Byocto%5C%5D+eSDK+install+script+failure%22&amp;o=
=3Dnewest<br>
&gt; &amp;f=3D1<br>
&gt;=C2=A0 =C2=A0 =C2=A0<br>
&gt; &lt;<a href=3D"https://www.mail-archive.com/search?l=3Dyocto@yoctopro=
ject.org&amp;q=3Dsubjec" rel=3D"noreferrer" target=3D"_blank">https://www.m=
ail-archive.com/search?l=3Dyocto@yoctoproject.org&amp;q=3Dsubjec</a><br>
&gt; t:%22Re%5C%3A+%5C%5Byocto%5C%5D+eSDK+install+script+failure%22&amp;o=
=3Dnewes<br>
&gt; t&amp;f=3D1&gt;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0<br>
&gt; <a href=3D"https://www.yoctoproject.org/pipermail/yocto/2017-August/0=
37359.html" rel=3D"noreferrer" target=3D"_blank">https://www.yoctoproject.o=
rg/pipermail/yocto/2017-August/037359.html</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0<br>
&gt; &lt;<a href=3D"https://www.yoctoproject.org/pipermail/yocto/2017-Augu=
st/037359.html" rel=3D"noreferrer" target=3D"_blank">https://www.yoctoproje=
ct.org/pipermail/yocto/2017-August/037359.html</a>&gt;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D12344" rel=3D"noreferrer" target=3D"_blank">https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D12344</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://bugzilla.yoctoproject.org/s=
how_bug.cgi?id=3D12344" rel=3D"noreferrer" target=3D"_blank">https://bugzil=
la.yoctoproject.org/show_bug.cgi?id=3D12344</a>&gt;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0*From:* <a href=3D"mailto:yocto@lists.yoctoproject=
.org" target=3D"_blank">yocto@lists.yoctoproject.org</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:yocto@lists.yoctoproj=
ect.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt; &lt;<a href=
=
=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lists.yoc=
toproject.org</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:yocto@lists.yoctoproj=
ect.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;&gt; *On Beh=
alf Of *Monsees,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Steven C (US) via <a href=3D"http://lists.yoctopro=
ject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> &=
lt;<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_=
blank">http://lists.yoctoproject.org</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0*Sent:* Thursday, March 4, 2021 8:13 AM<br>
&gt;=C2=A0 =C2=A0 =C2=A0*To:* Monsees, Steven C (US) &lt;<a href=3D"mailto=
:steven.monsees@baesystems.com" target=3D"_blank">steven.monsees@baesystems=
.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:steven.monsees@baesys=
tems.com" target=3D"_blank">steven.monsees@baesystems.com</a>&gt;&gt;;<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:yocto@lists.yoctoproject.org" ta=
rget=3D"_blank">yocto@lists.yoctoproject.org</a> &lt;mailto:<a href=3D"mail=
to:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lists.yoctoproject=
.org</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0*Subject:* Re: [yocto] #yocto #sdk<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0*_External Email Alert_*<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0*This email has been sent from an account outside =
of the BAE Systems<br>
&gt;=C2=A0 =C2=A0 =C2=A0network.*<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Please treat the email with caution, especially if=
 you are requested<br>
&gt;=C2=A0 =C2=A0 =C2=A0to click on a link, decrypt/open an attachment, or=
 enable macros. <br>
&gt;=C2=A0 =C2=A0 =C2=A0For further information on how to spot phishing, a=
ccess<br>
&gt;=C2=A0 =C2=A0 =C2=A0=E2=80=9CCybersecurity OneSpace Page=E2=80=9D and =
report phishing by clicking the<br>
&gt;=C2=A0 =C2=A0 =C2=A0button =E2=80=9CReport Phishing=E2=80=9D on the Ou=
tlook toolbar.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Is there a list of certain classes that might inte=
rfere with the<br>
&gt;=C2=A0 =C2=A0 =C2=A0ability of the eSDK to lock down the configuratiuo=
n ?<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Thanks,<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Steve<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0*From:* <a href=3D"mailto:yocto@lists.yoctoproject=
.org" target=3D"_blank">yocto@lists.yoctoproject.org</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:yocto@lists.yoctoproj=
ect.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt; &lt;<a href=
=
=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lists.yoc=
toproject.org</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:yocto@lists.yoctoproj=
ect.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;&gt; *On Beh=
alf Of *Monsees,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Steven C (US) via <a href=3D"http://lists.yoctopro=
ject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> &=
lt;<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_=
blank">http://lists.yoctoproject.org</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0*Sent:* Tuesday, March 2, 2021 3:26 PM<br>
&gt;=C2=A0 =C2=A0 =C2=A0*To:* <a href=3D"mailto:yocto@lists.yoctoproject.o=
rg" target=3D"_blank">yocto@lists.yoctoproject.org</a> &lt;mailto:<a href=
=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lists.yoc=
toproject.org</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0*Subject:* [yocto] #yocto #sdk<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0*_External Email Alert_*<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0*This email has been sent from an account outside =
of the BAE Systems<br>
&gt;=C2=A0 =C2=A0 =C2=A0network.*<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Please treat the email with caution, especially if=
 you are requested<br>
&gt;=C2=A0 =C2=A0 =C2=A0to click on a link, decrypt/open an attachment, or=
 enable macros. <br>
&gt;=C2=A0 =C2=A0 =C2=A0For further information on how to spot phishing, a=
ccess<br>
&gt;=C2=A0 =C2=A0 =C2=A0=E2=80=9CCybersecurity OneSpace Page=E2=80=9D and =
report phishing by clicking the<br>
&gt;=C2=A0 =C2=A0 =C2=A0button =E2=80=9CReport Phishing=E2=80=9D on the Ou=
tlook toolbar.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0I still appear to be having an issue with the SXT =
SDK install=E2=80=A6<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Building for zeus/x86_64 Intel based platform=E2=
=80=A6<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0I build my kernel image clean, fully functional=E2=
=
=80=A6<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Standard SDK builds clean and appears functional=
=E2=80=A6<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Ext SDK builds clean, but on install I am still se=
eing Error <br>
&gt; below=E2=80=A6<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0(1)What is it comparing=C2=A0 between unhash/task =
hash ?, more sig issues ?<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0(2)What is meant by =E2=80=9CThis is usually due t=
o missing setscene tasks=E2=80=9D ?<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0(3)In the local.conf under the SDK they set :<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0SSTATE_MIRRORS +=3D &quot; file://universal/(.*) &=
lt;file://universal/(.*)&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0file://universal-4.9/\1 &lt;file://universal-4.9/1=
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0file://universal-4.9/(.*) &lt;file://universal-4.9=
/(.*)&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0file://universal-4.8/\1 &lt;file://universal-4.8/1=
&gt;&quot;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Under sdk-extra.conf I set :<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0SSTATE_MIRRORS +=3D file://.* &lt;file://.*&gt;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0file:///ede/tms/yocto/zeus/sstate_cache/PATH<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;file:///ede/tms/yocto/zeus/sstate_cache/PATH&g=
t;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0My SSTATE_MIRRIOR is based off the clean builds I =
mentioned above,<br>
&gt;=C2=A0 =C2=A0 =C2=A0is this the correct procedure ?<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0I am trying to figure out how best to debug this i=
ssue, it is<br>
&gt;=C2=A0 =C2=A0 =C2=A0occurring on the post install, and everything pret=
ty much appears in<br>
&gt;=C2=A0 =C2=A0 =C2=A0place.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Steve<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A014:43 smonsees@yix490038<br>
&gt;=C2=A0 =C2=A0 =C2=A0<br>
&gt; /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/de=
p<br>
&gt; loy/sdk&gt;./limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3=
.0.4<br>
&gt; .sh<br>
&gt;=C2=A0 =C2=A0 =C2=A0<br>
&gt; &lt;<a href=3D"http://limws-glibc-x86_64-aiox_orange-corei7-64-toolch=
ain-ext-3.0.4.s" rel=3D"noreferrer" target=3D"_blank">http://limws-glibc-x8=
6_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.s</a><br>
&gt; h&gt;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0LIMWS (BAE LIMWS base distro) Extensible SDK insta=
ller version<br>
&gt; 3.0.4<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0<br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Enter target directory for SDK (default: ~/limws_s=
dk):<br>
&gt;=C2=A0 =C2=A0 =C2=A0/disk0/scratch/smonsees/testSDK<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0You are about to install the SDK to<br>
&gt;=C2=A0 =C2=A0 =C2=A0&quot;/disk0/scratch/smonsees/testSDK&quot;. Proce=
ed [Y/n]? Y<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Extracting<br>
&gt;=C2=A0 =C2=A0 =C2=A0<br>
&gt; SDK..................................................................=
.<br>
&gt; ...........done<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Setting it up...<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Extracting buildtools...<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Preparing build system...<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Parsing recipes: 100%<br>
&gt;=C2=A0 =C2=A0 =C2=A0|#################################################=
##########################################|<br>
&gt;=C2=A0 =C2=A0 =C2=A0Time: 0:01:32<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Initialising tasks: 100%<br>
&gt;=C2=A0 =C2=A0 =C2=A0|#################################################=
#######################################|<br>
&gt;=C2=A0 =C2=A0 =C2=A0Time: 0:00:04<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Checking sstate mirror object availability: 100%<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0|#################################################=
###############|<br>
&gt;=C2=A0 =C2=A0 =C2=A0Time: 0:00:03<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0ERROR: Task quilt-native.do_fetch attempted to exe=
cute <br>
&gt; unexpectedly<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Task<br>
&gt;=C2=A0 =C2=A0 =C2=A0/disk0/scratch/smonsees/testSDK/layers/poky/meta/r=
ecipes-support/liburcu/liburcu_0.11.1.bb:do_populate_sysroot,<br>
&gt;=C2=A0 =C2=A0 =C2=A0unihash<br>
&gt;=C2=A0 =C2=A0 =C2=A0cdb08644b85fa162bd9f88cb00113fe3193cc347e39e33e8f4=
05f9c23f60c601,<br>
&gt;=C2=A0 =C2=A0 =C2=A0taskhash<br>
&gt;=C2=A0 =C2=A0 =C2=A0cdb08644b85fa162bd9f88cb00113fe3193cc347e39e33e8f4=
05f9c23f60c601<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Task<br>
&gt;=C2=A0 =C2=A0 =C2=A0/disk0/scratch/smonsees/testSDK/layers/poky/meta/r=
ecipes-devtools/python/python3_3.7.8.bb:do_packagedata,<br>
&gt;=C2=A0 =C2=A0 =C2=A0unihash<br>
&gt;=C2=A0 =C2=A0 =C2=A0925a72cbe872aad09bd3fbbe74ed1c944e9c19a732e120feae=
5c4784e6330d4f,<br>
&gt;=C2=A0 =C2=A0 =C2=A0taskhash<br>
&gt;=C2=A0 =C2=A0 =C2=A0925a72cbe872aad09bd3fbbe74ed1c944e9c19a732e120feae=
5c4784e6330d4f<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0This is usually due to missing setscene tasks. Tho=
se missing in this<br>
&gt;=C2=A0 =C2=A0 =C2=A0build were:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;&lt;appears to list every recipe under ./testS=
DK/layers directory<br>
&gt; here&gt;&gt;<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
<br>
<br>
</blockquote></div></div>

--00000000000011c56805be62eb79--
