Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 187AAE008D2; Thu, 14 Sep 2017 16:21:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.44 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.44 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f44.google.com (mail-pg0-f44.google.com [74.125.83.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1ABBE0078E
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 16:21:24 -0700 (PDT)
Received: by mail-pg0-f44.google.com with SMTP id i130so501961pgc.3
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 16:21:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=2BcpyNq1ggnuOZMUUpYAExSJOVHxQoHjcIStKI66mro=;
	b=feLeO9BPp+jRLoOZZqSDYjfNpM+LTgDNE5ddjDk57d+zdM8w/XcsB6wxXXIKajr+ns
	Yb1BCDYoTf8FSBFGLEslU0+dgaDd4i/Jbz04j5Esp4lAEb0darga2dBqBLiBYf4xosYo
	D8x/oFZTbjFZM5c3DogibgSWyI4WE+437iArcoD56cnT3fy9qXzWVkGpJVum9yKRLiFy
	2C3UZZNzE/Q5xomSqW2xR43o75SCp0jrJuNsaW2KotQfTjIzO2upJ9qrZD7Q7xslXc6r
	5ob0kj3Dlt4c0kcxbzLHT6LamOIoD4i55VF7Mwk/xJj9Dn8CzjeU5QrWCm/MCjbIGHNr
	wrSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=2BcpyNq1ggnuOZMUUpYAExSJOVHxQoHjcIStKI66mro=;
	b=gp3a9wqcBtUrFCzFipVRG1Hj3xYTHkfmVit237J+gsDou3AP9qq625h6sggbDfabUI
	RWLsiVlO4lUU2HB5rVVknOM+mecv9hkCvvIAHjfHXP2c045sF1k54w7ReQ1xg51JR0uG
	3wlrjwiwj4aa65x8aLKXvzuJF3xM/dL251kvpIT0eRGERqkVvP/MSS9xC5TSDKs/Br+k
	HyzqM5flxoaJbIPqY01BmKO10Q4su5N2HML+Jfoqq/9KUHITC+7me/kcgKRpVfrnKpDD
	tICDYNFcdfB5D34koV89l+0Zcz5sCb04+xA99TfhQ/V4WCKFRGZ1PFlQwa6rrXcG73NG
	UCzw==
X-Gm-Message-State: AHPjjUjUn4OgZuP445bpuCYYWDXDjpQd6O9/3LiJIwxo3KWpIPEv6VMF
	RZyVZeAPlFM9lIjY4Za0TwyktLiEA3wBeuloN90=
X-Google-Smtp-Source: ADKCNb7sCXgoXsVl9nAD/EsIzbtRF0X0yOzGo2GvjtnZgrp5y6z5nBS5uub3prJzmFQpSgSECQ+MPoqJA/mKl/fM+lY=
X-Received: by 10.84.218.199 with SMTP id g7mr26282330plm.215.1505431283889;
	Thu, 14 Sep 2017 16:21:23 -0700 (PDT)
MIME-Version: 1.0
References: <CABFXn3EX5-upvpAHh10c402Z1gmh1g2G0j=D=ubC7oYC3GEXhw@mail.gmail.com>
	<CABFXn3G5LewuTHZb7cJRb1PpNVYpi4hT7nRP0DmgLz91qp6m6Q@mail.gmail.com>
	<CABFXn3GzZm+FoAwchfBhneRFqaOf+EfKazEg0WsUjMW7h4Gj2Q@mail.gmail.com>
In-Reply-To: <CABFXn3GzZm+FoAwchfBhneRFqaOf+EfKazEg0WsUjMW7h4Gj2Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 14 Sep 2017 23:21:12 +0000
Message-ID: <CAMKF1spLot-etNEV1Kupr=r1dPOdSBf8ak2oJSJg6TEAK1_Yng@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>,
	yahia farghaly <yahiafarghaly@gmail.com>
Cc: krirobo@gmail.com
Subject: Re: [meta-ros] festival-2.3-r0 do_compile: oe_runmake failed
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 14 Sep 2017 23:21:27 -0000
Content-Type: multipart/alternative; boundary="f403045d1532e8f93805592e88d3"

--f403045d1532e8f93805592e88d3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 14, 2017 at 10:39 AM yahia farghaly <yahiafarghaly@gmail.com>
wrote:

>
> When i just do this IMAGE_INSTALL_append =3D " festival" . it promotes me
> with error of
> *do_compile: oe_runmake failed* and* No GNU_HASH in the elf binary *
>

This means linker flags set by oe are not passed to link step  so you might
fix this By
Fixing the linker rules in makefiles

Secondly it might be ignoring the environment flags completely in this case
again you can fix this in makefiles by removing hard assignments and using
+=3D or weaker fallbacks using ?=3D

>
> here is the log:
>
>>
>> *Build Configuration:*
>> *BB_VERSION        =3D "1.34.0"*
>> *BUILD_SYS         =3D "x86_64-linux"*
>> *NATIVELSBSTRING   =3D "universal"*
>> *TARGET_SYS        =3D "arm-poky-linux-gnueabi"*
>> *MACHINE           =3D "raspberrypi3"*
>> *DISTRO            =3D "poky"*
>> *DISTRO_VERSION    =3D "2.3.2"*
>> *TUNE_FEATURES     =3D "arm armv7ve vfp thumb neon vfpv4
>> callconvention-hard cortexa7"*
>> *TARGET_FPU        =3D "hard"*
>> *meta              *
>> *meta-poky         *
>> *meta-yocto-bsp    =3D "pyro:ce26a57e04ad65c02087629701d96448a44e73d5"*
>> *meta-oe           *
>> *meta-python       *
>> *meta-multimedia   *
>> *meta-networking   =3D "pyro:5e82995148a2844c6f483ae5ddd1438d87ea9fb7"*
>> *meta-raspberrypi  =3D "pyro:c981f01a2cdb3299eb57920cffbb5dfd4248209a"*
>> *meta-ros          =3D "master:3ff83184bd16a9ef13660dd5df08687a6c17a458"=
**meta-mylayer
>>      =3D "pyro:ce26a57e04ad65c02087629701d96448a44e73d5"*
>>
>
>> *Initialising tasks: 100%
>> |#######################################################################=
#####################################################|
>> Time: 0:00:05*
>
>
>> *NOTE: Executing SetScene Tasks*
>> *NOTE: Executing RunQueue Tasks*
>> *ERROR: festival-2.3-r0 do_compile: oe_runmake failed*
>
>
>> *ERROR: festival-2.3-r0 do_compile: Function failed: do_compile (log fil=
e
>> is located at
>> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/fest=
ival/2.3-r0/temp/log.do_compile.111086)*
>> *ERROR: Logfile of failure stored in:
>> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/fest=
ival/2.3-r0/temp/log.do_compile.111086*
>
>
>> *Log data follows:*
>> *| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32',
>> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'commo=
n']*
>> *| DEBUG: Executing shell function do_compile*
>> *| NOTE: make*
>> *| ERROR: oe_runmake failed*
>> *| config/config:43:
>> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/fest=
ival/2.3-r0/recipe-sysroot/usr/share/speech-tools/config/config:
>> No such file or directory*
>> *| config/common_make_rules:67:
>> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/fest=
ival/2.3-r0/recipe-sysroot/usr/share/speech-tools/config/rules/common_make_=
rules.mak:
>> No such file or directory*
>> *| Makefile:84:
>> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/fest=
ival/2.3-r0/recipe-sysroot/usr/share/speech-tools/config/rules/top_level.ma=
k:
>> No such file or directory*
>> *| Makefile:85:
>> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/fest=
ival/2.3-r0/recipe-sysroot/usr/share/speech-tools/config/rules/install.mak:
>> No such file or directory*
>> *| make: *** No rule to make target
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/fes=
tival/2.3-r0/recipe-sysroot/usr/share/speech-tools/config/rules/install.mak=
'.
>> Stop.*
>
>
>> *| ERROR: Function failed: do_compile (log file is located at
>> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/fest=
ival/2.3-r0/temp/log.do_compile.111086)*
>
>
>> *ERROR: Task
>> (/yocto/poky/meta-ros/recipes-extended/festival/festival_2.3.bb:do_compi=
le)
>> failed with exit code '1'*
>
>
>> *ERROR: speech-tools-2.3-r0 do_package_qa: QA Issue: No GNU_HASH in the
>> elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/pda'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/design_filter'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/sigfilter'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/ols_test'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/ch_utt'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/sig2fv'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/siod'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/ngram_test'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/ch_wave'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/dp'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/wagon_test'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/ngram_build'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/fringe_client'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/viterbi'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/scfg_parse'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/wfst_train'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/scfg_test'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/pitchmark'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/na_play'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/ch_lab'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/ols'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/na_record'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/spectgen'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/wfst_run'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/scfg_train'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/xml_parser'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/align'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/bcat'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/tilt_analysis'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/ch_track'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/wagon'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/scfg_make'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/tilt_synthesis'*
>> *No GNU_HASH in the elf binary:
>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/wfst_build'
>> [ldflags]*
>> *ERROR: speech-tools-2.3-r0 do_package_qa: QA run found fatal errors.
>> Please consider fixing them.*
>> *ERROR: speech-tools-2.3-r0 do_package_qa: Function failed: do_package_q=
a*
>> *ERROR: Logfile of failure stored in:
>> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/temp/log.do_package_qa.111098*
>> *ERROR: Task
>> (/yocto/poky/meta-ros/recipes-extended/speech-tools/speech-tools_2.3.bb:=
do_package_qa)
>> failed with exit code '1'**NOTE: Tasks Summary: Attempted 2083 tasks of
>> which 2081 didn't need to be rerun and 2 failed.*
>>
>> *Summary: 2 tasks failed:*
>> *
>> /yocto/poky/meta-ros/recipes-extended/festival/festival_2.3.bb:do_compil=
e*
>> *
>> /yocto/poky/meta-ros/recipes-extended/speech-tools/speech-tools_2.3.bb:d=
o_package_qa**Summary:
>> There were 5 ERROR messages shown, returning a non-zero exit code.*
>
>
>
> =E2=80=8C
>
> On 13 September 2017 at 18:15, yahia farghaly <yahiafarghaly@gmail.com>
> wrote:
>
>> i just did IMAGE_INSTALL_append =3D " speech-tools festival"
>>
>> error log details:
>>
>> Build Configuration:
>>> BB_VERSION        =3D "1.34.0"
>>> BUILD_SYS         =3D "x86_64-linux"
>>> NATIVELSBSTRING   =3D "universal"
>>> TARGET_SYS        =3D "arm-poky-linux-gnueabi"
>>> MACHINE           =3D "raspberrypi3"
>>> DISTRO            =3D "poky"
>>> DISTRO_VERSION    =3D "2.3.2"
>>> TUNE_FEATURES     =3D "arm armv7ve vfp thumb neon vfpv4
>>> callconvention-hard cortexa7"
>>> TARGET_FPU        =3D "hard"
>>> meta
>>> meta-poky
>>> meta-yocto-bsp    =3D "pyro:ce26a57e04ad65c02087629701d96448a44e73d5"
>>> meta-oe
>>> meta-python
>>> meta-multimedia
>>> meta-networking   =3D "pyro:5e82995148a2844c6f483ae5ddd1438d87ea9fb7"
>>> meta-raspberrypi  =3D "pyro:c981f01a2cdb3299eb57920cffbb5dfd4248209a"
>>> meta-ros          =3D "master:3ff83184bd16a9ef13660dd5df08687a6c17a458"
>>> meta-mylayer      =3D "pyro:ce26a57e04ad65c02087629701d96448a44e73d5"
>>> Initialising tasks: 100%
>>> |######################################################################=
######################################################|
>>> Time: 0:00:07
>>> NOTE: Executing SetScene Tasks
>>> NOTE: Executing RunQueue Tasks
>>> ERROR: festival-2.3-r0 do_compile: oe_runmake failed
>>> ERROR: festival-2.3-r0 do_compile: Function failed: do_compile (log fil=
e
>>> is located at
>>> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/fes=
tival/2.3-r0/temp/log.do_compile.49956)
>>> ERROR: Logfile of failure stored in:
>>> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/fes=
tival/2.3-r0/temp/log.do_compile.49956
>>> Log data follows:
>>> | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32',
>>> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'comm=
on']
>>> | DEBUG: Executing shell function do_compile
>>> | NOTE: make
>>> | ERROR: oe_runmake failed
>>> | config/config:43:
>>> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/fes=
tival/2.3-r0/recipe-sysroot/usr/share/speech-tools/config/config:
>>> No such file or directory
>>> | config/common_make_rules:67:
>>> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/fes=
tival/2.3-r0/recipe-sysroot/usr/share/speech-tools/config/rules/common_make=
_rules.mak:
>>> No such file or directory
>>> | Makefile:84:
>>> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/fes=
tival/2.3-r0/recipe-sysroot/usr/share/speech-tools/config/rules/top_level.m=
ak:
>>> No such file or directory
>>> | Makefile:85:
>>> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/fes=
tival/2.3-r0/recipe-sysroot/usr/share/speech-tools/config/rules/install.mak=
:
>>> No such file or directory
>>> | make: *** No rule to make target
>>> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/fe=
stival/2.3-r0/recipe-sysroot/usr/share/speech-tools/config/rules/install.ma=
k'.
>>> Stop.
>>> | ERROR: Function failed: do_compile (log file is located at
>>> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/fes=
tival/2.3-r0/temp/log.do_compile.49956)
>>> ERROR: Task
>>> (/yocto/poky/meta-ros/recipes-extended/festival/festival_2.3.bb:do_comp=
ile)
>>> failed with exit code '1'
>>> NOTE: Tasks Summary: Attempted 2392 tasks of which 2390 didn't need to
>>> be rerun and 1 failed.
>>> Summary: 1 task failed:
>>>   /yocto/poky/meta-ros/recipes-extended/festival/festival_2.3.bb:
>>> do_compile
>>> Summary: There were 2 ERROR messages shown, returning a non-zero exit
>>> code
>>
>>
>>
>> =E2=80=8C
>>
>> On 13 September 2017 at 08:42, yahia farghaly <yahiafarghaly@gmail.com>
>> wrote:
>>
>>> i want to install festival on the target image,
>>> it gives me this error *"ERROR: festival-2.3-r0 do_compile: oe_runmake
>>> failed"*
>>> i have added the meta-oe to bblayer also .
>>>
>>> how to solve this error ?
>>>
>>> --
>>> Yahia Farghaly
>>> Graduated from Faculty of Engineering - Electronics and Communications
>>> Department at Cairo University.
>>> Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
>>> <https://github.com/yahiafarghaly>
>>>
>>>
>>>
>>> =E2=80=8C
>>>
>>
>>
>>
>> --
>> Yahia Farghaly
>> Graduated from Faculty of Engineering - Electronics and Communications
>> Department at Cairo University.
>> Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
>> <https://github.com/yahiafarghaly>
>>
>
>
>
> --
> Yahia Farghaly
> Graduated from Faculty of Engineering - Electronics and Communications
> Department at Cairo University.
> Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
> <https://github.com/yahiafarghaly>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f403045d1532e8f93805592e88d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div dir=3D"auto">On Thu, Sep 14, 2017 =
at 10:39 AM yahia farghaly &lt;<a href=3D"mailto:yahiafarghaly@gmail.com">y=
ahiafarghaly@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><div><img width=3D"0" height=3D"0" class=3D"m_-3454651465628566282mailtr=
ack-img" alt=3D"" style=3D"display:flex" src=3D"https://mailtrack.io/trace/=
mail/f092214945efde2adf5b5ed6eee822e0ae915d47.png?u=3D1822760"><br>When i j=
ust do this IMAGE_INSTALL_append =3D &quot; festival&quot; . it promotes me=
 with error of=C2=A0<div><b>do_compile: oe_runmake failed</b> and<b>=C2=A0N=
o GNU_HASH in the elf binary </b>=C2=A0<br></div><div></div></div></blockqu=
ote><div dir=3D"auto"><br></div><div dir=3D"auto">This means linker flags s=
et by oe are not passed to link step =C2=A0so you might fix this By</div><d=
iv dir=3D"auto">Fixing the linker rules in makefiles=C2=A0</div><div dir=3D=
"auto"><br></div><div dir=3D"auto">Secondly it might be ignoring the enviro=
nment flags completely in this case again you can fix this in makefiles by =
removing hard assignments and using +=3D or weaker fallbacks using ?=3D</di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex"><div><div><br></div><div>here is the log:=
=C2=A0</div><div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"></blockq=
uote></div></div><div><div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><i>Build Configuration:<br></i><i>BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;1.34.0&quot;<br></i><i>BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D =
&quot;x86_64-linux&quot;<br></i><i>NATIVELSBSTRING =C2=A0 =3D &quot;univers=
al&quot;<br></i><i>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;arm-poky=
-linux-gnueabi&quot;<br></i><i>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=3D &quot;raspberrypi3&quot;<br></i><i>DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=3D &quot;poky&quot;<br></i><i>DISTRO_VERSION =C2=A0 =C2=A0=3D=
 &quot;2.3.2&quot;<br></i><i>TUNE_FEATURES =C2=A0 =C2=A0 =3D &quot;arm armv=
7ve vfp thumb neon vfpv4 callconvention-hard cortexa7&quot;<br></i><i>TARGE=
T_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;hard&quot;<br></i><i>meta =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br></i><i>meta-poky =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=C2=A0<br></i><i>meta-yocto-bsp =C2=A0 =C2=A0=3D &quot;pyr=
o:ce26a57e04ad65c02087629701d96448a44e73d5&quot;<br></i><i>meta-oe =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<br></i><i>meta-python =C2=A0 =C2=A0 =C2=
=A0=C2=A0<br></i><i>meta-multimedia =C2=A0=C2=A0<br></i><i>meta-networking =
=C2=A0 =3D &quot;pyro:5e82995148a2844c6f483ae5ddd1438d87ea9fb7&quot;<br></i=
><i>meta-raspberrypi =C2=A0=3D &quot;pyro:c981f01a2cdb3299eb57920cffbb5dfd4=
248209a&quot;<br></i><i>meta-ros =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quo=
t;master:3ff83184bd16a9ef13660dd5df08687a6c17a458&quot;<br></i><i>meta-myla=
yer =C2=A0 =C2=A0 =C2=A0=3D &quot;pyro:ce26a57e04ad65c02087629701d96448a44e=
73d5&quot;</i><i><br></i></blockquote></div></div><div><div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><i>Initialising tasks: 100% |###########=
###########################################################################=
######################################| Time: 0:00:05<br></i></blockquote><=
/div></div><div><div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><i>N=
OTE: Executing SetScene Tasks<br></i><i>NOTE: Executing RunQueue Tasks<br><=
/i><i>ERROR: festival-2.3-r0 do_compile: oe_runmake failed<br></i></blockqu=
ote></div></div><div><div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><i>ERROR: festival-2.3-r0 do_compile: Function failed: do_compile (log fil=
e is located at /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux=
-gnueabi/festival/2.3-r0/temp/log.do_compile.111086)<br></i><i>ERROR: Logfi=
le of failure stored in: /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-p=
oky-linux-gnueabi/festival/2.3-r0/temp/log.do_compile.111086<br></i></block=
quote></div></div><div><div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><i>Log data follows:<br></i><i>| DEBUG: SITE files [&#39;endian-little&#=
39;, &#39;bit-32&#39;, &#39;arm-common&#39;, &#39;arm-32&#39;, &#39;common-=
linux&#39;, &#39;common-glibc&#39;, &#39;arm-linux&#39;, &#39;arm-linux-gnu=
eabi&#39;, &#39;common&#39;]<br></i><i>| DEBUG: Executing shell function do=
_compile<br></i><i>| NOTE: make<br></i><i>| ERROR: oe_runmake failed<br></i=
><i>| config/config:43: /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-po=
ky-linux-gnueabi/festival/2.3-r0/recipe-sysroot/usr/share/speech-tools/conf=
ig/config: No such file or directory<br></i><i>| config/common_make_rules:6=
7: /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/fest=
ival/2.3-r0/recipe-sysroot/usr/share/speech-tools/config/rules/common_make_=
rules.mak: No such file or directory<br></i><i>| Makefile:84: /yocto/poky/b=
uild/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festival/2.3-r0/reci=
pe-sysroot/usr/share/speech-tools/config/rules/top_level.mak: No such file =
or directory<br></i><i>| Makefile:85: /yocto/poky/build/tmp/work/cortexa7hf=
-neon-vfpv4-poky-linux-gnueabi/festival/2.3-r0/recipe-sysroot/usr/share/spe=
ech-tools/config/rules/install.mak: No such file or directory<br></i><i>| m=
ake: *** No rule to make target &#39;/yocto/poky/build/tmp/work/cortexa7hf-=
neon-vfpv4-poky-linux-gnueabi/festival/2.3-r0/recipe-sysroot/usr/share/spee=
ch-tools/config/rules/install.mak&#39;.=C2=A0 Stop.<br></i></blockquote></d=
iv></div><div><div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><i>| E=
RROR: Function failed: do_compile (log file is located at /yocto/poky/build=
/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festival/2.3-r0/temp/log=
.do_compile.111086)<br></i></blockquote></div></div><div><div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><i>ERROR: Task (/yocto/poky/meta-ros/r=
ecipes-extended/festival/festival_2.3.bb:do_compile) failed with exit code =
&#39;1&#39;<br></i></blockquote></div></div><div><div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><i>ERROR: speech-tools-2.3-r0 do_package_qa: Q=
A Issue: No GNU_HASH in the elf binary: &#39;/yocto/poky/build/tmp/work/cor=
texa7hf-neon-vfpv4-poky-linux-gnueabi/speech-tools/2.3-r0/packages-split/sp=
eech-tools/usr/bin/pda&#39;<br></i><i>No GNU_HASH in the elf binary: &#39;/=
yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/speech-t=
ools/2.3-r0/packages-split/speech-tools/usr/bin/design_filter&#39;<br></i><=
i>No GNU_HASH in the elf binary: &#39;/yocto/poky/build/tmp/work/cortexa7hf=
-neon-vfpv4-poky-linux-gnueabi/speech-tools/2.3-r0/packages-split/speech-to=
ols/usr/bin/sigfilter&#39;<br></i><i>No GNU_HASH in the elf binary: &#39;/y=
octo/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/speech-to=
ols/2.3-r0/packages-split/speech-tools/usr/bin/ols_test&#39;<br></i><i>No G=
NU_HASH in the elf binary: &#39;/yocto/poky/build/tmp/work/cortexa7hf-neon-=
vfpv4-poky-linux-gnueabi/speech-tools/2.3-r0/packages-split/speech-tools/us=
r/bin/ch_utt&#39;<br></i><i>No GNU_HASH in the elf binary: &#39;/yocto/poky=
/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/speech-tools/2.3-r=
0/packages-split/speech-tools/usr/bin/sig2fv&#39;<br></i><i>No GNU_HASH in =
the elf binary: &#39;/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-=
linux-gnueabi/speech-tools/2.3-r0/packages-split/speech-tools/usr/bin/siod&=
#39;<br></i><i>No GNU_HASH in the elf binary: &#39;/yocto/poky/build/tmp/wo=
rk/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/speech-tools/2.3-r0/packages-sp=
lit/speech-tools/usr/bin/ngram_test&#39;<br></i><i>No GNU_HASH in the elf b=
inary: &#39;/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnu=
eabi/speech-tools/2.3-r0/packages-split/speech-tools/usr/bin/ch_wave&#39;<b=
r></i><i>No GNU_HASH in the elf binary: &#39;/yocto/poky/build/tmp/work/cor=
texa7hf-neon-vfpv4-poky-linux-gnueabi/speech-tools/2.3-r0/packages-split/sp=
eech-tools/usr/bin/dp&#39;<br></i><i>No GNU_HASH in the elf binary: &#39;/y=
octo/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/speech-to=
ols/2.3-r0/packages-split/speech-tools/usr/bin/wagon_test&#39;<br></i><i>No=
 GNU_HASH in the elf binary: &#39;/yocto/poky/build/tmp/work/cortexa7hf-neo=
n-vfpv4-poky-linux-gnueabi/speech-tools/2.3-r0/packages-split/speech-tools/=
usr/bin/ngram_build&#39;<br></i><i>No GNU_HASH in the elf binary: &#39;/yoc=
to/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/speech-tool=
s/2.3-r0/packages-split/speech-tools/usr/bin/fringe_client&#39;<br></i><i>N=
o GNU_HASH in the elf binary: &#39;/yocto/poky/build/tmp/work/cortexa7hf-ne=
on-vfpv4-poky-linux-gnueabi/speech-tools/2.3-r0/packages-split/speech-tools=
/usr/bin/viterbi&#39;<br></i><i>No GNU_HASH in the elf binary: &#39;/yocto/=
poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/speech-tools/2=
.3-r0/packages-split/speech-tools/usr/bin/scfg_parse&#39;<br></i><i>No GNU_=
HASH in the elf binary: &#39;/yocto/poky/build/tmp/work/cortexa7hf-neon-vfp=
v4-poky-linux-gnueabi/speech-tools/2.3-r0/packages-split/speech-tools/usr/b=
in/wfst_train&#39;<br></i><i>No GNU_HASH in the elf binary: &#39;/yocto/pok=
y/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/speech-tools/2.3-=
r0/packages-split/speech-tools/usr/bin/scfg_test&#39;<br></i><i>No GNU_HASH=
 in the elf binary: &#39;/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-p=
oky-linux-gnueabi/speech-tools/2.3-r0/packages-split/speech-tools/usr/bin/p=
itchmark&#39;<br></i><i>No GNU_HASH in the elf binary: &#39;/yocto/poky/bui=
ld/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/speech-tools/2.3-r0/pa=
ckages-split/speech-tools/usr/bin/na_play&#39;<br></i><i>No GNU_HASH in the=
 elf binary: &#39;/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-lin=
ux-gnueabi/speech-tools/2.3-r0/packages-split/speech-tools/usr/bin/ch_lab&#=
39;<br></i><i>No GNU_HASH in the elf binary: &#39;/yocto/poky/build/tmp/wor=
k/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/speech-tools/2.3-r0/packages-spl=
it/speech-tools/usr/bin/ols&#39;<br></i><i>No GNU_HASH in the elf binary: &=
#39;/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/na_record&#39;<br></i>=
<i>No GNU_HASH in the elf binary: &#39;/yocto/poky/build/tmp/work/cortexa7h=
f-neon-vfpv4-poky-linux-gnueabi/speech-tools/2.3-r0/packages-split/speech-t=
ools/usr/bin/spectgen&#39;<br></i><i>No GNU_HASH in the elf binary: &#39;/y=
octo/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/speech-to=
ols/2.3-r0/packages-split/speech-tools/usr/bin/wfst_run&#39;<br></i><i>No G=
NU_HASH in the elf binary: &#39;/yocto/poky/build/tmp/work/cortexa7hf-neon-=
vfpv4-poky-linux-gnueabi/speech-tools/2.3-r0/packages-split/speech-tools/us=
r/bin/scfg_train&#39;<br></i><i>No GNU_HASH in the elf binary: &#39;/yocto/=
poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/speech-tools/2=
.3-r0/packages-split/speech-tools/usr/bin/xml_parser&#39;<br></i><i>No GNU_=
HASH in the elf binary: &#39;/yocto/poky/build/tmp/work/cortexa7hf-neon-vfp=
v4-poky-linux-gnueabi/speech-tools/2.3-r0/packages-split/speech-tools/usr/b=
in/align&#39;<br></i><i>No GNU_HASH in the elf binary: &#39;/yocto/poky/bui=
ld/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/speech-tools/2.3-r0/pa=
ckages-split/speech-tools/usr/bin/bcat&#39;<br></i><i>No GNU_HASH in the el=
f binary: &#39;/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-=
gnueabi/speech-tools/2.3-r0/packages-split/speech-tools/usr/bin/tilt_analys=
is&#39;<br></i><i>No GNU_HASH in the elf binary: &#39;/yocto/poky/build/tmp=
/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/speech-tools/2.3-r0/packages=
-split/speech-tools/usr/bin/ch_track&#39;<br></i><i>No GNU_HASH in the elf =
binary: &#39;/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gn=
ueabi/speech-tools/2.3-r0/packages-split/speech-tools/usr/bin/wagon&#39;<br=
></i><i>No GNU_HASH in the elf binary: &#39;/yocto/poky/build/tmp/work/cort=
exa7hf-neon-vfpv4-poky-linux-gnueabi/speech-tools/2.3-r0/packages-split/spe=
ech-tools/usr/bin/scfg_make&#39;<br></i><i>No GNU_HASH in the elf binary: &=
#39;/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spe=
ech-tools/2.3-r0/packages-split/speech-tools/usr/bin/tilt_synthesis&#39;<br=
></i><i>No GNU_HASH in the elf binary: &#39;/yocto/poky/build/tmp/work/cort=
exa7hf-neon-vfpv4-poky-linux-gnueabi/speech-tools/2.3-r0/packages-split/spe=
ech-tools/usr/bin/wfst_build&#39; [ldflags]<br></i><i>ERROR: speech-tools-2=
.3-r0 do_package_qa: QA run found fatal errors. Please consider fixing them=
.<br></i><i>ERROR: speech-tools-2.3-r0 do_package_qa: Function failed: do_p=
ackage_qa<br></i><i>ERROR: Logfile of failure stored in: /yocto/poky/build/=
tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/speech-tools/2.3-r0/temp/=
log.do_package_qa.111098<br></i><i>ERROR: Task (/yocto/poky/meta-ros/recipe=
s-extended/speech-tools/speech-tools_2.3.bb:do_package_qa) failed with exit=
 code &#39;1&#39;<br></i><i>NOTE: Tasks Summary: Attempted 2083 tasks of wh=
ich 2081 didn&#39;t need to be rerun and 2 failed.</i><i><br></i><i>Summary=
: 2 tasks failed:<br></i><i>=C2=A0 /yocto/poky/meta-ros/recipes-extended/fe=
stival/festival_2.3.bb:do_compile<br></i><i>=C2=A0 /yocto/poky/meta-ros/rec=
ipes-extended/speech-tools/speech-tools_2.3.bb:do_package_qa<br></i><i>Summ=
ary: There were 5 ERROR messages shown, returning a non-zero exit code.</i>=
</blockquote><br><br>=E2=80=8C</div></div><div class=3D"gmail_extra"><br><d=
iv class=3D"gmail_quote">On 13 September 2017 at 18:15, yahia farghaly <spa=
n>&lt;<a href=3D"mailto:yahiafarghaly@gmail.com" target=3D"_blank">yahiafar=
ghaly@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><di=
v><img width=3D"0" height=3D"0" class=3D"m_-3454651465628566282m_7888351445=
474827525mailtrack-img" alt=3D"" style=3D"display:flex"><div>i just did IMA=
GE_INSTALL_append =3D &quot; speech-tools festival&quot;</div><div><br></di=
v>error log details:<div><br></div><div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">Build Configuration:<br>BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=3D &quot;1.34.0&quot;<br>BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quo=
t;x86_64-linux&quot;<br>NATIVELSBSTRING =C2=A0 =3D &quot;universal&quot;<br=
>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;arm-poky-linux-gnueabi&quo=
t;<br>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;raspberrypi3&quo=
t;<br>DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;<=
br>DISTRO_VERSION =C2=A0 =C2=A0=3D &quot;2.3.2&quot;<br>TUNE_FEATURES =C2=
=A0 =C2=A0 =3D &quot;arm armv7ve vfp thumb neon vfpv4 callconvention-hard c=
ortexa7&quot;<br>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;hard&quot;=
<br>meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>meta-poky =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<br>meta-yocto-bsp =C2=A0 =C2=A0=3D &quot;pyr=
o:ce26a57e04ad65c02087629701d96448a44e73d5&quot;<br>meta-oe =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0=C2=A0<br>meta-python =C2=A0 =C2=A0 =C2=A0=C2=A0<br>met=
a-multimedia =C2=A0=C2=A0<br>meta-networking =C2=A0 =3D &quot;pyro:5e829951=
48a2844c6f483ae5ddd1438d87ea9fb7&quot;<br>meta-raspberrypi =C2=A0=3D &quot;=
pyro:c981f01a2cdb3299eb57920cffbb5dfd4248209a&quot;<br>meta-ros =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;master:3ff83184bd16a9ef13660dd5df08687a6c=
17a458&quot;<br>meta-mylayer =C2=A0 =C2=A0 =C2=A0=3D &quot;pyro:ce26a57e04a=
d65c02087629701d96448a44e73d5&quot;<br>Initialising tasks: 100% |##########=
###########################################################################=
#######################################| Time: 0:00:07<br>NOTE: Executing S=
etScene Tasks<br>NOTE: Executing RunQueue Tasks<span><br>ERROR: festival-2.=
3-r0 do_compile: oe_runmake failed<br></span>ERROR: festival-2.3-r0 do_comp=
ile: Function failed: do_compile (log file is located at /yocto/poky/build/=
tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festival/2.3-r0/temp/log.=
do_compile.49956)<br>ERROR: Logfile of failure stored in: /yocto/poky/build=
/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festival/2.3-r0/temp/log=
.do_compile.49956<br>Log data follows:<br>| DEBUG: SITE files [&#39;endian-=
little&#39;, &#39;bit-32&#39;, &#39;arm-common&#39;, &#39;arm-32&#39;, &#39=
;common-linux&#39;, &#39;common-glibc&#39;, &#39;arm-linux&#39;, &#39;arm-l=
inux-gnueabi&#39;, &#39;common&#39;]<br>| DEBUG: Executing shell function d=
o_compile<br>| NOTE: make<br>| ERROR: oe_runmake failed<br>| config/config:=
43: /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/fes=
tival/2.3-r0/recipe-sysroot/usr/share/speech-tools/config/config: No such f=
ile or directory<br>| config/common_make_rules:67: /yocto/poky/build/tmp/wo=
rk/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festival/2.3-r0/recipe-sysroot/=
usr/share/speech-tools/config/rules/common_make_rules.mak: No such file or =
directory<br>| Makefile:84: /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv=
4-poky-linux-gnueabi/festival/2.3-r0/recipe-sysroot/usr/share/speech-tools/=
config/rules/top_level.mak: No such file or directory<br>| Makefile:85: /yo=
cto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festival/2=
.3-r0/recipe-sysroot/usr/share/speech-tools/config/rules/install.mak: No su=
ch file or directory<br>| make: *** No rule to make target &#39;/yocto/poky=
/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festival/2.3-r0/re=
cipe-sysroot/usr/share/speech-tools/config/rules/install.mak&#39;.=C2=A0 St=
op.<br>| ERROR: Function failed: do_compile (log file is located at /yocto/=
poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festival/2.3-r=
0/temp/log.do_compile.49956)<br>ERROR: Task (/yocto/poky/meta-ros/recipes-e=
xtended/festival/festival_2.3.bb:do_compile) failed with exit code &#39;1&#=
39;<br>NOTE: Tasks Summary: Attempted 2392 tasks of which 2390 didn&#39;t n=
eed to be rerun and 1 failed.<br>Summary: 1 task failed:<br>=C2=A0 /yocto/p=
oky/meta-ros/recipes-extended/festival/festival_2.3.bb:do_compile<br>Summar=
y: There were 2 ERROR messages shown, returning a non-zero exit code</block=
quote><br><br>=E2=80=8C</div></div><div class=3D"m_-3454651465628566282HOEn=
Zb"><div class=3D"m_-3454651465628566282h5"><div class=3D"gmail_extra"><br>=
<div class=3D"gmail_quote">On 13 September 2017 at 08:42, yahia farghaly <s=
pan>&lt;<a href=3D"mailto:yahiafarghaly@gmail.com" target=3D"_blank">yahiaf=
arghaly@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><=
div><img width=3D"0" height=3D"0" class=3D"m_-3454651465628566282m_78883514=
45474827525m_-453825925628096124mailtrack-img" alt=3D"" style=3D"display:fl=
ex">i want to install festival on the target image,=C2=A0<div>it gives me t=
his error <i>&quot;ERROR: festival-2.3-r0 do_compile: oe_runmake failed&quo=
t;</i><br clear=3D"all"><div>i have added the meta-oe to bblayer also .</di=
v><div><br></div><div>how to solve this error ?=C2=A0</div><span class=3D"m=
_-3454651465628566282m_7888351445474827525HOEnZb"><font color=3D"#888888"><=
div><br></div>-- <br><div class=3D"m_-3454651465628566282m_7888351445474827=
525m_-453825925628096124gmail_signature"><div><div><div><font size=3D"1" co=
lor=3D"#777777" style=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFon=
t"><span style=3D"font-size:13px">Yahia Farghaly=C2=A0</span></font><span s=
tyle=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif,ser=
if,EmojiFont;font-size:16px"></span><div><font color=3D"#777777" face=3D"Ta=
homa, sans-serif, Arial, serif, EmojiFont"><span style=3D"font-size:13px">G=
raduated from Faculty of Engineering - Electronics and Communications Depar=
tment at Cairo University.</span></font><br></div><div style=3D"color:rgb(0=
,0,0);font-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-s=
ize:16px"><div><a href=3D"https://linkedin.com/in/yahiafarghaly" rel=3D"noo=
pener noreferrer" target=3D"_blank"><font size=3D"1" style=3D"font-family:T=
ahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px">Link=
edin</span></font></a><font size=3D"1" color=3D"#777777" style=3D"font-fami=
ly:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px">=
=C2=A0-=C2=A0</span></font><a href=3D"https://github.com/yahiafarghaly" rel=
=3D"noopener noreferrer" target=3D"_blank"><font size=3D"1" style=3D"font-f=
amily:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13p=
x">GitHub</span></font></a></div></div></div></div></div></div>
<br><br><br>=E2=80=8C</font></span></div></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"m_-3454651465628566282m_7888351445474827525gmail_signature" data-smartm=
ail=3D"gmail_signature"><div><div><div><font size=3D"1" color=3D"#777777" s=
tyle=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D=
"font-size:13px">Yahia Farghaly=C2=A0</span></font><span style=3D"color:rgb=
(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px"></span><div><font color=3D"#777777" face=3D"Tahoma, sans-serif,=
 Arial, serif, EmojiFont"><span style=3D"font-size:13px">Graduated from Fac=
ulty of Engineering - Electronics and Communications Department at Cairo Un=
iversity.</span></font><br></div><div style=3D"color:rgb(0,0,0);font-family=
:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-size:16px"><div><a=
 href=3D"https://linkedin.com/in/yahiafarghaly" rel=3D"noopener noreferrer"=
 target=3D"_blank"><font size=3D"1" style=3D"font-family:Tahoma,sans-serif,=
Arial,serif,EmojiFont"><span style=3D"font-size:13px">Linkedin</span></font=
></a><font size=3D"1" color=3D"#777777" style=3D"font-family:Tahoma,sans-se=
rif,Arial,serif,EmojiFont"><span style=3D"font-size:13px">=C2=A0-=C2=A0</sp=
an></font><a href=3D"https://github.com/yahiafarghaly" rel=3D"noopener nore=
ferrer" target=3D"_blank"><font size=3D"1" style=3D"font-family:Tahoma,sans=
-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px">GitHub</span><=
/font></a></div></div></div></div></div></div>
</div>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div class=3D"m_-3454651465628566282gmail_signature" data-smartmail=3D"gmai=
l_signature"><div><div><div><font size=3D"1" color=3D"#777777" style=3D"fon=
t-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:=
13px">Yahia Farghaly=C2=A0</span></font><span style=3D"color:rgb(0,0,0);fon=
t-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-size:16px"=
></span><div><font color=3D"#777777" face=3D"Tahoma, sans-serif, Arial, ser=
if, EmojiFont"><span style=3D"font-size:13px">Graduated from Faculty of Eng=
ineering - Electronics and Communications Department at Cairo University.</=
span></font><br></div><div style=3D"color:rgb(0,0,0);font-family:Calibri,Ar=
ial,Helvetica,sans-serif,serif,EmojiFont;font-size:16px"><div><a href=3D"ht=
tps://linkedin.com/in/yahiafarghaly" rel=3D"noopener noreferrer" target=3D"=
_blank"><font size=3D"1" style=3D"font-family:Tahoma,sans-serif,Arial,serif=
,EmojiFont"><span style=3D"font-size:13px">Linkedin</span></font></a><font =
size=3D"1" color=3D"#777777" style=3D"font-family:Tahoma,sans-serif,Arial,s=
erif,EmojiFont"><span style=3D"font-size:13px">=C2=A0-=C2=A0</span></font><=
a href=3D"https://github.com/yahiafarghaly" rel=3D"noopener noreferrer" tar=
get=3D"_blank"><font size=3D"1" style=3D"font-family:Tahoma,sans-serif,Aria=
l,serif,EmojiFont"><span style=3D"font-size:13px">GitHub</span></font></a><=
/div></div></div></div></div></div>
</div>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--f403045d1532e8f93805592e88d3--
