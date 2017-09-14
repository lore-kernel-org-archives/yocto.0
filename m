Return-Path: <yahiafarghaly@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09144E00C7B; Thu, 14 Sep 2017 10:37:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (yahiafarghaly[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.169 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFB30E00C3D
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 10:37:27 -0700 (PDT)
Received: by mail-io0-f169.google.com with SMTP id 21so2379078iof.6
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 10:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=PUTreBxyxuwC6yCcgGEe5iSifetKc7/1u+wqZbHy+mQ=;
	b=iTKwayjYal/Za5rjhLbtqGVa13Y6xH5Y4uGpnjq1ydz0iKj9mivPVcvCqY39RfwD4l
	NsgKrfqW7XT+B+BhL0d5rnwW78DWpT+Kkyk28oFt3PyO2qymyk0Ikh17kwt+k5pYEYQ1
	u6CO8d802e4A6ibkLhw6KQEpvaYaiVSxL3g7AeMKXopGGKWbFSpVQj8gv1JNZH1gZtyE
	9gv6pdz3J/s9DM82rciiupXr2D65EXjiHjuBHJ9hqHpMs5DnoeJ6J4I5+GVL/q9whHRp
	ZtKzmoHMk1lm0nybXApZB4CjvGRLJTpt+uR85AwQUabtkRQ/8u2i3y/Lwo4kU6ef8n7W
	eKuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=PUTreBxyxuwC6yCcgGEe5iSifetKc7/1u+wqZbHy+mQ=;
	b=WvxufQ44/iTg0uzpRH9V+zgwMaam5mP4gxU2lriZ0Rg+BPItJ/3QdagjH1HKDDN61G
	VII9gb8JKjMdOa/bj3lESIa1vvmdPoJvsyWa+Zuf8W/basg6rS8qemOitvXlb+wzEHa6
	se6dFCmIMvis96diMoYM7CMRlO0wc4eOmzdwbJMCPh/Ns4nOlvMZpyLlMKukjVCTtpMr
	eTr7d/HwJPm8ytp9c1aOyaFuqsvsGoDhJZjXZFD7otxsnoITV1NpcwYo/mh2EAV2BkAB
	6kf4kZq4QOu3IlABQfwC0+zp673X5qST+gEOAod6kjJVBxIIy1q9PhUKYwY3uFHjoPR6
	UMkg==
X-Gm-Message-State: AHPjjUgs8QPLn4mI+JJyg/K7yDR9idqmo/XcobzjaaiQUABnasWMrXAf
	LTE9cAZTpvCG3DDd2NQS9d+xpkp4Vy1UEUV04o4=
X-Google-Smtp-Source: AOwi7QBDUbuKmYonWVqv5l66k6VZjOvpNbL6mDlsBzczmryoL4dwQ5ZEDBNbmIkvs2VZ02LYqar74jRhw1fN9vXUsqk=
X-Received: by 10.202.175.137 with SMTP id y131mr21966247oie.114.1505410646419;
	Thu, 14 Sep 2017 10:37:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.13.234 with HTTP; Thu, 14 Sep 2017 10:37:25 -0700 (PDT)
In-Reply-To: <CABFXn3G5LewuTHZb7cJRb1PpNVYpi4hT7nRP0DmgLz91qp6m6Q@mail.gmail.com>
References: <CABFXn3EX5-upvpAHh10c402Z1gmh1g2G0j=D=ubC7oYC3GEXhw@mail.gmail.com>
	<CABFXn3G5LewuTHZb7cJRb1PpNVYpi4hT7nRP0DmgLz91qp6m6Q@mail.gmail.com>
From: yahia farghaly <yahiafarghaly@gmail.com>
Date: Thu, 14 Sep 2017 19:37:25 +0200
Message-ID: <CABFXn3GzZm+FoAwchfBhneRFqaOf+EfKazEg0WsUjMW7h4Gj2Q@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 14 Sep 2017 17:37:30 -0000
X-Groupsio-MsgNum: 37881
Content-Type: multipart/related; boundary="ATKFXtMfz1lOrAWPLpMN"

--ATKFXtMfz1lOrAWPLpMN
Content-Type: multipart/alternative; boundary="001a113cf64cd23047055929ba24"

--001a113cf64cd23047055929ba24
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

When i just do this IMAGE_INSTALL_append =3D " festival" . it promotes me
with error of
*do_compile: oe_runmake failed* and* No GNU_HASH in the elf binary *

here is the log:

>
> *Build Configuration:*
> *BB_VERSION        =3D "1.34.0"*
> *BUILD_SYS         =3D "x86_64-linux"*
> *NATIVELSBSTRING   =3D "universal"*
> *TARGET_SYS        =3D "arm-poky-linux-gnueabi"*
> *MACHINE           =3D "raspberrypi3"*
> *DISTRO            =3D "poky"*
> *DISTRO_VERSION    =3D "2.3.2"*
> *TUNE_FEATURES     =3D "arm armv7ve vfp thumb neon vfpv4 callconvention-h=
ard
> cortexa7"*
> *TARGET_FPU        =3D "hard"*
> *meta              *
> *meta-poky         *
> *meta-yocto-bsp    =3D "pyro:ce26a57e04ad65c02087629701d96448a44e73d5"*
> *meta-oe           *
> *meta-python       *
> *meta-multimedia   *
> *meta-networking   =3D "pyro:5e82995148a2844c6f483ae5ddd1438d87ea9fb7"*
> *meta-raspberrypi  =3D "pyro:c981f01a2cdb3299eb57920cffbb5dfd4248209a"*
> *meta-ros          =3D "master:3ff83184bd16a9ef13660dd5df08687a6c17a458"*=
*meta-mylayer
>      =3D "pyro:ce26a57e04ad65c02087629701d96448a44e73d5"*
>
> *Initialising tasks: 100%
> |########################################################################=
####################################################|
> Time: 0:00:05*
> *NOTE: Executing SetScene Tasks*
> *NOTE: Executing RunQueue Tasks*
> *ERROR: festival-2.3-r0 do_compile: oe_runmake failed*
> *ERROR: festival-2.3-r0 do_compile: Function failed: do_compile (log file
> is located at
> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festi=
val/2.3-r0/temp/log.do_compile.111086)*
> *ERROR: Logfile of failure stored in:
> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festi=
val/2.3-r0/temp/log.do_compile.111086*
> *Log data follows:*
> *| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32',
> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common=
']*
> *| DEBUG: Executing shell function do_compile*
> *| NOTE: make*
> *| ERROR: oe_runmake failed*
> *| config/config:43:
> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festi=
val/2.3-r0/recipe-sysroot/usr/share/speech-tools/config/config:
> No such file or directory*
> *| config/common_make_rules:67:
> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festi=
val/2.3-r0/recipe-sysroot/usr/share/speech-tools/config/rules/common_make_r=
ules.mak:
> No such file or directory*
> *| Makefile:84:
> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festi=
val/2.3-r0/recipe-sysroot/usr/share/speech-tools/config/rules/top_level.mak=
:
> No such file or directory*
> *| Makefile:85:
> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festi=
val/2.3-r0/recipe-sysroot/usr/share/speech-tools/config/rules/install.mak:
> No such file or directory*
> *| make: *** No rule to make target
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/fest=
ival/2.3-r0/recipe-sysroot/usr/share/speech-tools/config/rules/install.mak'=
.
> Stop.*
> *| ERROR: Function failed: do_compile (log file is located at
> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festi=
val/2.3-r0/temp/log.do_compile.111086)*
> *ERROR: Task
> (/yocto/poky/meta-ros/recipes-extended/festival/festival_2.3.bb:do_compil=
e)
> failed with exit code '1'*
> *ERROR: speech-tools-2.3-r0 do_package_qa: QA Issue: No GNU_HASH in the
> elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/pda'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/design_filter'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/sigfilter'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/ols_test'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/ch_utt'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/sig2fv'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/siod'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/ngram_test'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/ch_wave'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/dp'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/wagon_test'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/ngram_build'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/fringe_client'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/viterbi'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/scfg_parse'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/wfst_train'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/scfg_test'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/pitchmark'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/na_play'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/ch_lab'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/ols'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/na_record'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/spectgen'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/wfst_run'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/scfg_train'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/xml_parser'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/align'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/bcat'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/tilt_analysis'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/ch_track'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/wagon'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/scfg_make'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/tilt_synthesis'*
> *No GNU_HASH in the elf binary:
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/spee=
ch-tools/2.3-r0/packages-split/speech-tools/usr/bin/wfst_build'
> [ldflags]*
> *ERROR: speech-tools-2.3-r0 do_package_qa: QA run found fatal errors.
> Please consider fixing them.*
> *ERROR: speech-tools-2.3-r0 do_package_qa: Function failed: do_package_qa=
*
> *ERROR: Logfile of failure stored in:
> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/speec=
h-tools/2.3-r0/temp/log.do_package_qa.111098*
> *ERROR: Task
> (/yocto/poky/meta-ros/recipes-extended/speech-tools/speech-tools_2.3.bb:d=
o_package_qa)
> failed with exit code '1'**NOTE: Tasks Summary: Attempted 2083 tasks of
> which 2081 didn't need to be rerun and 2 failed.*
>
> *Summary: 2 tasks failed:*
> *
> /yocto/poky/meta-ros/recipes-extended/festival/festival_2.3.bb:do_compile=
*
> *
> /yocto/poky/meta-ros/recipes-extended/speech-tools/speech-tools_2.3.bb:do=
_package_qa**Summary:
> There were 5 ERROR messages shown, returning a non-zero exit code.*



=E2=80=8C

On 13 September 2017 at 18:15, yahia farghaly <yahiafarghaly@gmail.com>
wrote:

> i just did IMAGE_INSTALL_append =3D " speech-tools festival"
>
> error log details:
>
> Build Configuration:
>> BB_VERSION        =3D "1.34.0"
>> BUILD_SYS         =3D "x86_64-linux"
>> NATIVELSBSTRING   =3D "universal"
>> TARGET_SYS        =3D "arm-poky-linux-gnueabi"
>> MACHINE           =3D "raspberrypi3"
>> DISTRO            =3D "poky"
>> DISTRO_VERSION    =3D "2.3.2"
>> TUNE_FEATURES     =3D "arm armv7ve vfp thumb neon vfpv4 callconvention-h=
ard
>> cortexa7"
>> TARGET_FPU        =3D "hard"
>> meta
>> meta-poky
>> meta-yocto-bsp    =3D "pyro:ce26a57e04ad65c02087629701d96448a44e73d5"
>> meta-oe
>> meta-python
>> meta-multimedia
>> meta-networking   =3D "pyro:5e82995148a2844c6f483ae5ddd1438d87ea9fb7"
>> meta-raspberrypi  =3D "pyro:c981f01a2cdb3299eb57920cffbb5dfd4248209a"
>> meta-ros          =3D "master:3ff83184bd16a9ef13660dd5df08687a6c17a458"
>> meta-mylayer      =3D "pyro:ce26a57e04ad65c02087629701d96448a44e73d5"
>> Initialising tasks: 100% |#############################
>> ############################################################
>> ###################################| Time: 0:00:07
>> NOTE: Executing SetScene Tasks
>> NOTE: Executing RunQueue Tasks
>> ERROR: festival-2.3-r0 do_compile: oe_runmake failed
>> ERROR: festival-2.3-r0 do_compile: Function failed: do_compile (log file
>> is located at /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-
>> linux-gnueabi/festival/2.3-r0/temp/log.do_compile.49956)
>> ERROR: Logfile of failure stored in: /yocto/poky/build/tmp/work/
>> cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festival/2.3-r0/
>> temp/log.do_compile.49956
>> Log data follows:
>> | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32',
>> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'commo=
n']
>> | DEBUG: Executing shell function do_compile
>> | NOTE: make
>> | ERROR: oe_runmake failed
>> | config/config:43: /yocto/poky/build/tmp/work/
>> cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festival/2.3-r0/
>> recipe-sysroot/usr/share/speech-tools/config/config: No such file or
>> directory
>> | config/common_make_rules:67: /yocto/poky/build/tmp/work/
>> cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festival/2.3-r0/
>> recipe-sysroot/usr/share/speech-tools/config/rules/common_make_rules.mak=
:
>> No such file or directory
>> | Makefile:84: /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-
>> linux-gnueabi/festival/2.3-r0/recipe-sysroot/usr/share/
>> speech-tools/config/rules/top_level.mak: No such file or directory
>> | Makefile:85: /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-
>> linux-gnueabi/festival/2.3-r0/recipe-sysroot/usr/share/
>> speech-tools/config/rules/install.mak: No such file or directory
>> | make: *** No rule to make target '/yocto/poky/build/tmp/work/
>> cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festival/2.3-r0/
>> recipe-sysroot/usr/share/speech-tools/config/rules/install.mak'.  Stop.
>> | ERROR: Function failed: do_compile (log file is located at
>> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-
>> linux-gnueabi/festival/2.3-r0/temp/log.do_compile.49956)
>> ERROR: Task (/yocto/poky/meta-ros/recipes-extended/festival/festival_2.
>> 3.bb:do_compile) failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 2392 tasks of which 2390 didn't need to b=
e
>> rerun and 1 failed.
>> Summary: 1 task failed:
>>   /yocto/poky/meta-ros/recipes-extended/festival/festival_2.3.bb:
>> do_compile
>> Summary: There were 2 ERROR messages shown, returning a non-zero exit co=
de
>
>
>
> =E2=80=8C
>
> On 13 September 2017 at 08:42, yahia farghaly <yahiafarghaly@gmail.com>
> wrote:
>
>> i want to install festival on the target image,
>> it gives me this error *"ERROR: festival-2.3-r0 do_compile: oe_runmake
>> failed"*
>> i have added the meta-oe to bblayer also .
>>
>> how to solve this error ?
>>
>> --
>> Yahia Farghaly
>> Graduated from Faculty of Engineering - Electronics and Communications
>> Department at Cairo University.
>> Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
>> <https://github.com/yahiafarghaly>
>>
>>
>>
>> =E2=80=8C
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
>



--=20
Yahia Farghaly
Graduated from Faculty of Engineering - Electronics and Communications
Department at Cairo University.
Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
<https://github.com/yahiafarghaly>

--001a113cf64cd23047055929ba24
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div dir=3D"ltr"><img width=3D"0" height=3D"0" cla=
ss=3D"mailtrack-img" alt=3D"" style=3D"display:flex" src=3D"https://mailtra=
ck.io/trace/mail/f092214945efde2adf5b5ed6eee822e0ae915d47.png?u=3D1822760"/=
><br/>When i just do this IMAGE_INSTALL_append =3D &#34; festival&#34; . it=
 promotes me with error of=C2=A0<div><b>do_compile: oe_runmake failed</b> a=
nd<b>=C2=A0No GNU_HASH in the elf binary </b>=C2=A0<br/></div><div><br/></d=
iv><div>here is the log:=C2=A0</div><div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><i>Build Configuration:<br/></i><i>BB_VERSION =C2=A0 =C2=A0=
 =C2=A0 =C2=A0=3D &#34;1.34.0&#34;<br/></i><i>BUILD_SYS =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &#34;x86_64-linux&#34;<br/></i><i>NATIVELSBSTRING =C2=A0 =
=3D &#34;universal&#34;<br/></i><i>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &#34;arm-poky-linux-gnueabi&#34;<br/></i><i>MACHINE =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =3D &#34;raspberrypi3&#34;<br/></i><i>DISTRO =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &#34;poky&#34;<br/></i><i>DISTRO_VERSIO=
N =C2=A0 =C2=A0=3D &#34;2.3.2&#34;<br/></i><i>TUNE_FEATURES =C2=A0 =C2=A0 =
=3D &#34;arm armv7ve vfp thumb neon vfpv4 callconvention-hard cortexa7&#34=
;<br/></i><i>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &#34;hard&#34;<br/><=
/i><i>meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br/></i><i>meta=
-poky =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<br/></i><i>meta-yocto-bsp =C2=A0 =
=C2=A0=3D &#34;pyro:<wbr/>ce26a57e04ad65c02087629701d964<wbr/>48a44e73d5&#=
34;<br/></i><i>meta-oe =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<br/></i><i>=
meta-python =C2=A0 =C2=A0 =C2=A0=C2=A0<br/></i><i>meta-multimedia =C2=A0=C2=
=
=A0<br/></i><i>meta-networking =C2=A0 =3D &#34;pyro:<wbr/>5e82995148a2844c=
6f483ae5ddd143<wbr/>8d87ea9fb7&#34;<br/></i><i>meta-raspberrypi =C2=A0=3D &=
#34;pyro:<wbr/>c981f01a2cdb3299eb57920cffbb5d<wbr/>fd4248209a&#34;<br/></i>=
<i>meta-ros =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &#34;master:<wbr/>3ff8318=
4bd16a9ef13660dd5df0868<wbr/>7a6c17a458&#34;<br/></i><i>meta-mylayer =C2=A0=
 =C2=A0 =C2=A0=3D &#34;pyro:<wbr/>ce26a57e04ad65c02087629701d964<wbr/>48a44=
e73d5&#34;</i><i><br/></i><i>Initialising tasks: 100% |####################=
#########<wbr/>##############################<wbr/>########################=
######<wbr/>##############################<wbr/>#####| Time: 0:00:05<br/></=
i><i>NOTE: Executing SetScene Tasks<br/></i><i>NOTE: Executing RunQueue Tas=
ks<br/></i><i>ERROR: festival-2.3-r0 do_compile: oe_runmake failed<br/></i>=
<i>ERROR: festival-2.3-r0 do_compile: Function failed: do_compile (log file=
 is located at /yocto/poky/build/tmp/work/<wbr/>cortexa7hf-neon-vfpv4-poky-=
<wbr/>linux-gnueabi/festival/2.3-r0/<wbr/>temp/log.do_compile.111086)<br/><=
/i><i>ERROR: Logfile of failure stored in: /yocto/poky/build/tmp/work/<wbr/=
>cortexa7hf-neon-vfpv4-poky-<wbr/>linux-gnueabi/festival/2.3-r0/<wbr/>temp/=
log.do_compile.111086<br/></i><i>Log data follows:<br/></i><i>| DEBUG: SITE=
 files [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;arm-common&#39;, &#=
39;arm-32&#39;, &#39;common-linux&#39;, &#39;common-glibc&#39;, &#39;arm-li=
nux&#39;, &#39;arm-linux-gnueabi&#39;, &#39;common&#39;]<br/></i><i>| DEBUG=
: Executing shell function do_compile<br/></i><i>| NOTE: make<br/></i><i>| =
ERROR: oe_runmake failed<br/></i><i>| config/config:43: /yocto/poky/build/t=
mp/work/<wbr/>cortexa7hf-neon-vfpv4-poky-<wbr/>linux-gnueabi/festival/2.3-r=
0/<wbr/>recipe-sysroot/usr/share/<wbr/>speech-tools/config/config: No such =
file or directory<br/></i><i>| config/common_make_rules:67: /yocto/poky/bui=
ld/tmp/work/<wbr/>cortexa7hf-neon-vfpv4-poky-<wbr/>linux-gnueabi/festival/2=
.3-r0/<wbr/>recipe-sysroot/usr/share/<wbr/>speech-tools/config/rules/<wbr/>=
common_make_rules.mak: No such file or directory<br/></i><i>| Makefile:84: =
/yocto/poky/build/tmp/work/<wbr/>cortexa7hf-neon-vfpv4-poky-<wbr/>linux-gnu=
eabi/festival/2.3-r0/<wbr/>recipe-sysroot/usr/share/<wbr/>speech-tools/conf=
ig/rules/top_<wbr/>level.mak: No such file or directory<br/></i><i>| Makefi=
le:85: /yocto/poky/build/tmp/work/<wbr/>cortexa7hf-neon-vfpv4-poky-<wbr/>li=
nux-gnueabi/festival/2.3-r0/<wbr/>recipe-sysroot/usr/share/<wbr/>speech-too=
ls/config/rules/<wbr/>install.mak: No such file or directory<br/></i><i>| m=
ake: *** No rule to make target &#39;/yocto/poky/build/tmp/work/<wbr/>corte=
xa7hf-neon-vfpv4-poky-<wbr/>linux-gnueabi/festival/2.3-r0/<wbr/>recipe-sysr=
oot/usr/share/<wbr/>speech-tools/config/rules/<wbr/>install.mak&#39;.=C2=A0=
 Stop.<br/></i><i>| ERROR: Function failed: do_compile (log file is located=
 at /yocto/poky/build/tmp/work/<wbr/>cortexa7hf-neon-vfpv4-poky-<wbr/>linux=
-gnueabi/festival/2.3-r0/<wbr/>temp/log.do_compile.111086)<br/></i><i>ERROR=
: Task (/yocto/poky/meta-ros/recipes-<wbr/>extended/festival/festival_2.<wb=
r/>3.bb:do_compile) failed with exit code &#39;1&#39;<br/></i><i>ERROR: spe=
ech-tools-2.3-r0 do_package_qa: QA Issue: No GNU_HASH in the elf binary: &#=
39;/yocto/poky/build/tmp/work/<wbr/>cortexa7hf-neon-vfpv4-poky-<wbr/>linux-=
gnueabi/speech-tools/2.<wbr/>3-r0/packages-split/speech-<wbr/>tools/usr/bin=
/pda&#39;<br/></i><i>No GNU_HASH in the elf binary: &#39;/yocto/poky/build/=
tmp/work/<wbr/>cortexa7hf-neon-vfpv4-poky-<wbr/>linux-gnueabi/speech-tools/=
2.<wbr/>3-r0/packages-split/speech-<wbr/>tools/usr/bin/design_filter&#39;<b=
r/></i><i>No GNU_HASH in the elf binary: &#39;/yocto/poky/build/tmp/work/<w=
br/>cortexa7hf-neon-vfpv4-poky-<wbr/>linux-gnueabi/speech-tools/2.<wbr/>3-r=
0/packages-split/speech-<wbr/>tools/usr/bin/sigfilter&#39;<br/></i><i>No GN=
U_HASH in the elf binary: &#39;/yocto/poky/build/tmp/work/<wbr/>cortexa7hf-=
neon-vfpv4-poky-<wbr/>linux-gnueabi/speech-tools/2.<wbr/>3-r0/packages-spli=
t/speech-<wbr/>tools/usr/bin/ols_test&#39;<br/></i><i>No GNU_HASH in the el=
f binary: &#39;/yocto/poky/build/tmp/work/<wbr/>cortexa7hf-neon-vfpv4-poky-=
<wbr/>linux-gnueabi/speech-tools/2.<wbr/>3-r0/packages-split/speech-<wbr/>t=
ools/usr/bin/ch_utt&#39;<br/></i><i>No GNU_HASH in the elf binary: &#39;/yo=
cto/poky/build/tmp/work/<wbr/>cortexa7hf-neon-vfpv4-poky-<wbr/>linux-gnueab=
i/speech-tools/2.<wbr/>3-r0/packages-split/speech-<wbr/>tools/usr/bin/sig2f=
v&#39;<br/></i><i>No GNU_HASH in the elf binary: &#39;/yocto/poky/build/tmp=
/work/<wbr/>cortexa7hf-neon-vfpv4-poky-<wbr/>linux-gnueabi/speech-tools/2.<=
wbr/>3-r0/packages-split/speech-<wbr/>tools/usr/bin/siod&#39;<br/></i><i>No=
 GNU_HASH in the elf binary: &#39;/yocto/poky/build/tmp/work/<wbr/>cortexa7=
hf-neon-vfpv4-poky-<wbr/>linux-gnueabi/speech-tools/2.<wbr/>3-r0/packages-s=
plit/speech-<wbr/>tools/usr/bin/ngram_test&#39;<br/></i><i>No GNU_HASH in t=
he elf binary: &#39;/yocto/poky/build/tmp/work/<wbr/>cortexa7hf-neon-vfpv4-=
poky-<wbr/>linux-gnueabi/speech-tools/2.<wbr/>3-r0/packages-split/speech-<w=
br/>tools/usr/bin/ch_wave&#39;<br/></i><i>No GNU_HASH in the elf binary: &#=
39;/yocto/poky/build/tmp/work/<wbr/>cortexa7hf-neon-vfpv4-poky-<wbr/>linux-=
gnueabi/speech-tools/2.<wbr/>3-r0/packages-split/speech-<wbr/>tools/usr/bin=
/dp&#39;<br/></i><i>No GNU_HASH in the elf binary: &#39;/yocto/poky/build/t=
mp/work/<wbr/>cortexa7hf-neon-vfpv4-poky-<wbr/>linux-gnueabi/speech-tools/2=
.<wbr/>3-r0/packages-split/speech-<wbr/>tools/usr/bin/wagon_test&#39;<br/><=
/i><i>No GNU_HASH in the elf binary: &#39;/yocto/poky/build/tmp/work/<wbr/>=
cortexa7hf-neon-vfpv4-poky-<wbr/>linux-gnueabi/speech-tools/2.<wbr/>3-r0/pa=
ckages-split/speech-<wbr/>tools/usr/bin/ngram_build&#39;<br/></i><i>No GNU_=
HASH in the elf binary: &#39;/yocto/poky/build/tmp/work/<wbr/>cortexa7hf-ne=
on-vfpv4-poky-<wbr/>linux-gnueabi/speech-tools/2.<wbr/>3-r0/packages-split/=
speech-<wbr/>tools/usr/bin/fringe_client&#39;<br/></i><i>No GNU_HASH in the=
 elf binary: &#39;/yocto/poky/build/tmp/work/<wbr/>cortexa7hf-neon-vfpv4-po=
ky-<wbr/>linux-gnueabi/speech-tools/2.<wbr/>3-r0/packages-split/speech-<wbr=
/>tools/usr/bin/viterbi&#39;<br/></i><i>No GNU_HASH in the elf binary: &#39=
;/yocto/poky/build/tmp/work/<wbr/>cortexa7hf-neon-vfpv4-poky-<wbr/>linux-gn=
ueabi/speech-tools/2.<wbr/>3-r0/packages-split/speech-<wbr/>tools/usr/bin/s=
cfg_parse&#39;<br/></i><i>No GNU_HASH in the elf binary: &#39;/yocto/poky/b=
uild/tmp/work/<wbr/>cortexa7hf-neon-vfpv4-poky-<wbr/>linux-gnueabi/speech-t=
ools/2.<wbr/>3-r0/packages-split/speech-<wbr/>tools/usr/bin/wfst_train&#39;=
<br/></i><i>No GNU_HASH in the elf binary: &#39;/yocto/poky/build/tmp/work/=
<wbr/>cortexa7hf-neon-vfpv4-poky-<wbr/>linux-gnueabi/speech-tools/2.<wbr/>3=
-r0/packages-split/speech-<wbr/>tools/usr/bin/scfg_test&#39;<br/></i><i>No =
GNU_HASH in the elf binary: &#39;/yocto/poky/build/tmp/work/<wbr/>cortexa7h=
f-neon-vfpv4-poky-<wbr/>linux-gnueabi/speech-tools/2.<wbr/>3-r0/packages-sp=
lit/speech-<wbr/>tools/usr/bin/pitchmark&#39;<br/></i><i>No GNU_HASH in the=
 elf binary: &#39;/yocto/poky/build/tmp/work/<wbr/>cortexa7hf-neon-vfpv4-po=
ky-<wbr/>linux-gnueabi/speech-tools/2.<wbr/>3-r0/packages-split/speech-<wbr=
/>tools/usr/bin/na_play&#39;<br/></i><i>No GNU_HASH in the elf binary: &#39=
;/yocto/poky/build/tmp/work/<wbr/>cortexa7hf-neon-vfpv4-poky-<wbr/>linux-gn=
ueabi/speech-tools/2.<wbr/>3-r0/packages-split/speech-<wbr/>tools/usr/bin/c=
h_lab&#39;<br/></i><i>No GNU_HASH in the elf binary: &#39;/yocto/poky/build=
/tmp/work/<wbr/>cortexa7hf-neon-vfpv4-poky-<wbr/>linux-gnueabi/speech-tools=
/2.<wbr/>3-r0/packages-split/speech-<wbr/>tools/usr/bin/ols&#39;<br/></i><i=
>No GNU_HASH in the elf binary: &#39;/yocto/poky/build/tmp/work/<wbr/>corte=
xa7hf-neon-vfpv4-poky-<wbr/>linux-gnueabi/speech-tools/2.<wbr/>3-r0/package=
s-split/speech-<wbr/>tools/usr/bin/na_record&#39;<br/></i><i>No GNU_HASH in=
 the elf binary: &#39;/yocto/poky/build/tmp/work/<wbr/>cortexa7hf-neon-vfpv=
4-poky-<wbr/>linux-gnueabi/speech-tools/2.<wbr/>3-r0/packages-split/speech-=
<wbr/>tools/usr/bin/spectgen&#39;<br/></i><i>No GNU_HASH in the elf binary:=
 &#39;/yocto/poky/build/tmp/work/<wbr/>cortexa7hf-neon-vfpv4-poky-<wbr/>lin=
ux-gnueabi/speech-tools/2.<wbr/>3-r0/packages-split/speech-<wbr/>tools/usr/=
bin/wfst_run&#39;<br/></i><i>No GNU_HASH in the elf binary: &#39;/yocto/pok=
y/build/tmp/work/<wbr/>cortexa7hf-neon-vfpv4-poky-<wbr/>linux-gnueabi/speec=
h-tools/2.<wbr/>3-r0/packages-split/speech-<wbr/>tools/usr/bin/scfg_train&#=
39;<br/></i><i>No GNU_HASH in the elf binary: &#39;/yocto/poky/build/tmp/wo=
rk/<wbr/>cortexa7hf-neon-vfpv4-poky-<wbr/>linux-gnueabi/speech-tools/2.<wbr=
/>3-r0/packages-split/speech-<wbr/>tools/usr/bin/xml_parser&#39;<br/></i><i=
>No GNU_HASH in the elf binary: &#39;/yocto/poky/build/tmp/work/<wbr/>corte=
xa7hf-neon-vfpv4-poky-<wbr/>linux-gnueabi/speech-tools/2.<wbr/>3-r0/package=
s-split/speech-<wbr/>tools/usr/bin/align&#39;<br/></i><i>No GNU_HASH in the=
 elf binary: &#39;/yocto/poky/build/tmp/work/<wbr/>cortexa7hf-neon-vfpv4-po=
ky-<wbr/>linux-gnueabi/speech-tools/2.<wbr/>3-r0/packages-split/speech-<wbr=
/>tools/usr/bin/bcat&#39;<br/></i><i>No GNU_HASH in the elf binary: &#39;/y=
octo/poky/build/tmp/work/<wbr/>cortexa7hf-neon-vfpv4-poky-<wbr/>linux-gnuea=
bi/speech-tools/2.<wbr/>3-r0/packages-split/speech-<wbr/>tools/usr/bin/tilt=
_analysis&#39;<br/></i><i>No GNU_HASH in the elf binary: &#39;/yocto/poky/b=
uild/tmp/work/<wbr/>cortexa7hf-neon-vfpv4-poky-<wbr/>linux-gnueabi/speech-t=
ools/2.<wbr/>3-r0/packages-split/speech-<wbr/>tools/usr/bin/ch_track&#39;<b=
r/></i><i>No GNU_HASH in the elf binary: &#39;/yocto/poky/build/tmp/work/<w=
br/>cortexa7hf-neon-vfpv4-poky-<wbr/>linux-gnueabi/speech-tools/2.<wbr/>3-r=
0/packages-split/speech-<wbr/>tools/usr/bin/wagon&#39;<br/></i><i>No GNU_HA=
SH in the elf binary: &#39;/yocto/poky/build/tmp/work/<wbr/>cortexa7hf-neon=
-vfpv4-poky-<wbr/>linux-gnueabi/speech-tools/2.<wbr/>3-r0/packages-split/sp=
eech-<wbr/>tools/usr/bin/scfg_make&#39;<br/></i><i>No GNU_HASH in the elf b=
inary: &#39;/yocto/poky/build/tmp/work/<wbr/>cortexa7hf-neon-vfpv4-poky-<wb=
r/>linux-gnueabi/speech-tools/2.<wbr/>3-r0/packages-split/speech-<wbr/>tool=
s/usr/bin/tilt_synthesis&#39;<br/></i><i>No GNU_HASH in the elf binary: &#3=
9;/yocto/poky/build/tmp/work/<wbr/>cortexa7hf-neon-vfpv4-poky-<wbr/>linux-g=
nueabi/speech-tools/2.<wbr/>3-r0/packages-split/speech-<wbr/>tools/usr/bin/=
wfst_build&#39; [ldflags]<br/></i><i>ERROR: speech-tools-2.3-r0 do_package_=
qa: QA run found fatal errors. Please consider fixing them.<br/></i><i>ERRO=
R: speech-tools-2.3-r0 do_package_qa: Function failed: do_package_qa<br/></=
i><i>ERROR: Logfile of failure stored in: /yocto/poky/build/tmp/work/<wbr/>=
cortexa7hf-neon-vfpv4-poky-<wbr/>linux-gnueabi/speech-tools/2.<wbr/>3-r0/te=
mp/log.do_package_qa.<wbr/>111098<br/></i><i>ERROR: Task (/yocto/poky/meta-=
ros/recipes-<wbr/>extended/speech-tools/speech-<wbr/>tools_2.3.bb:do_packag=
e_qa) failed with exit code &#39;1&#39;<br/></i><i>NOTE: Tasks Summary: Att=
empted 2083 tasks of which 2081 didn&#39;t need to be rerun and 2 failed.</=
i><i><br/></i><i>Summary: 2 tasks failed:<br/></i><i>=C2=A0 /yocto/poky/met=
a-ros/recipes-<wbr/>extended/festival/festival_2.<wbr/>3.bb:do_compile<br/>=
</i><i>=C2=A0 /yocto/poky/meta-ros/recipes-<wbr/>extended/speech-tools/spee=
ch-<wbr/>tools_2.3.bb:do_package_qa<br/></i><i>Summary: There were 5 ERROR =
messages shown, returning a non-zero exit code.</i></blockquote><br/><br/>=
=E2=80=8C</div></div><div class=3D"gmail_extra"><br/><div class=3D"gmail_q=
uote">On 13 September 2017 at 18:15, yahia farghaly <span dir=3D"ltr">&lt;<=
a href=3D"mailto:yahiafarghaly@gmail.com" target=3D"_blank">yahiafarghaly@g=
mail.com</a>&gt;</span> wrote:<br/><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div di=
r=3D"ltr"><img width=3D"0" height=3D"0" class=3D"m_7888351445474827525mailt=
rack-img" alt=3D"" style=3D"display:flex" src=3D"cid:attach_0_15D95A7E725F7=
658_27608@groups.io"/><div>i just did IMAGE_INSTALL_append =3D &#34; speech=
-tools festival&#34;</div><div><br/></div>error log details:<div><br/></div=
><div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">Build Configuration=
:<br/>BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &#34;1.34.0&#34;<br/>BUILD_=
SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &#34;x86_64-linux&#34;<br/>NATIVELSBSTR=
ING =C2=A0 =3D &#34;universal&#34;<br/>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=3D &#34;arm-poky-linux-gnueabi&#34;<br/>MACHINE =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =3D &#34;raspberrypi3&#34;<br/>DISTRO =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0=3D &#34;poky&#34;<br/>DISTRO_VERSION =C2=A0 =C2=A0=3D=
 &#34;2.3.2&#34;<br/>TUNE_FEATURES =C2=A0 =C2=A0 =3D &#34;arm armv7ve vfp t=
humb neon vfpv4 callconvention-hard cortexa7&#34;<br/>TARGET_FPU =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0=3D &#34;hard&#34;<br/>meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0<br/>meta-poky =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<br/>m=
eta-yocto-bsp =C2=A0 =C2=A0=3D &#34;pyro:<wbr/>ce26a57e04ad65c02087629701d9=
64<wbr/>48a44e73d5&#34;<br/>meta-oe =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=
=A0<br/>meta-python =C2=A0 =C2=A0 =C2=A0=C2=A0<br/>meta-multimedia =C2=A0=
=C2=A0<br/>meta-networking =C2=A0 =3D &#34;pyro:<wbr/>5e82995148a2844c6f48=
3ae5ddd143<wbr/>8d87ea9fb7&#34;<br/>meta-raspberrypi =C2=A0=3D &#34;pyro:<w=
br/>c981f01a2cdb3299eb57920cffbb5d<wbr/>fd4248209a&#34;<br/>meta-ros =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &#34;master:<wbr/>3ff83184bd16a9ef13660dd5d=
f0868<wbr/>7a6c17a458&#34;<br/>meta-mylayer =C2=A0 =C2=A0 =C2=A0=3D &#34;py=
ro:<wbr/>ce26a57e04ad65c02087629701d964<wbr/>48a44e73d5&#34;<br/>Initialisi=
ng tasks: 100% |#############################<wbr/>########################=
######<wbr/>##############################<wbr/>###########################=
###<wbr/>#####| Time: 0:00:07<br/>NOTE: Executing SetScene Tasks<br/>NOTE: =
Executing RunQueue Tasks<span class=3D""><br/>ERROR: festival-2.3-r0 do_com=
pile: oe_runmake failed<br/></span>ERROR: festival-2.3-r0 do_compile: Funct=
ion failed: do_compile (log file is located at /yocto/poky/build/tmp/work/<=
wbr/>cortexa7hf-neon-vfpv4-poky-<wbr/>linux-gnueabi/festival/2.3-r0/<wbr/>t=
emp/log.do_compile.49956)<br/>ERROR: Logfile of failure stored in: /yocto/p=
oky/build/tmp/work/<wbr/>cortexa7hf-neon-vfpv4-poky-<wbr/>linux-gnueabi/fes=
tival/2.3-r0/<wbr/>temp/log.do_compile.49956<br/>Log data follows:<br/>| DE=
BUG: SITE files [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;arm-common=
&#39;, &#39;arm-32&#39;, &#39;common-linux&#39;, &#39;common-glibc&#39;, &#=
39;arm-linux&#39;, &#39;arm-linux-gnueabi&#39;, &#39;common&#39;]<br/>| DEB=
UG: Executing shell function do_compile<br/>| NOTE: make<br/>| ERROR: oe_ru=
nmake failed<br/>| config/config:43: /yocto/poky/build/tmp/work/<wbr/>corte=
xa7hf-neon-vfpv4-poky-<wbr/>linux-gnueabi/festival/2.3-r0/<wbr/>recipe-sysr=
oot/usr/share/<wbr/>speech-tools/config/config: No such file or directory<b=
r/>| config/common_make_rules:67: /yocto/poky/build/tmp/work/<wbr/>cortexa7=
hf-neon-vfpv4-poky-<wbr/>linux-gnueabi/festival/2.3-r0/<wbr/>recipe-sysroot=
/usr/share/<wbr/>speech-tools/config/rules/<wbr/>common_make_rules.mak: No =
such file or directory<br/>| Makefile:84: /yocto/poky/build/tmp/work/<wbr/>=
cortexa7hf-neon-vfpv4-poky-<wbr/>linux-gnueabi/festival/2.3-r0/<wbr/>recipe=
-sysroot/usr/share/<wbr/>speech-tools/config/rules/top_<wbr/>level.mak: No =
such file or directory<br/>| Makefile:85: /yocto/poky/build/tmp/work/<wbr/>=
cortexa7hf-neon-vfpv4-poky-<wbr/>linux-gnueabi/festival/2.3-r0/<wbr/>recipe=
-sysroot/usr/share/<wbr/>speech-tools/config/rules/<wbr/>install.mak: No su=
ch file or directory<br/>| make: *** No rule to make target &#39;/yocto/pok=
y/build/tmp/work/<wbr/>cortexa7hf-neon-vfpv4-poky-<wbr/>linux-gnueabi/festi=
val/2.3-r0/<wbr/>recipe-sysroot/usr/share/<wbr/>speech-tools/config/rules/<=
wbr/>install.mak&#39;.=C2=A0 Stop.<br/>| ERROR: Function failed: do_compile=
 (log file is located at /yocto/poky/build/tmp/work/<wbr/>cortexa7hf-neon-v=
fpv4-poky-<wbr/>linux-gnueabi/festival/2.3-r0/<wbr/>temp/log.do_compile.499=
56)<br/>ERROR: Task (/yocto/poky/meta-ros/recipes-<wbr/>extended/festival/f=
estival_2.<wbr/>3.bb:do_compile) failed with exit code &#39;1&#39;<br/>NOTE=
: Tasks Summary: Attempted 2392 tasks of which 2390 didn&#39;t need to be r=
erun and 1 failed.<br/>Summary: 1 task failed:<br/>=C2=A0 /yocto/poky/meta-=
ros/recipes-<wbr/>extended/festival/festival_2.<wbr/>3.bb:do_compile<br/>Su=
mmary: There were 2 ERROR messages shown, returning a non-zero exit code</b=
lockquote><br/><br/>=E2=80=8C</div></div><div class=3D"HOEnZb"><div class=
=3D"h5"><div class=3D"gmail_extra"><br/><div class=3D"gmail_quote">On 13 S=
eptember 2017 at 08:42, yahia farghaly <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:yahiafarghaly@gmail.com" target=3D"_blank">yahiafarghaly@gmail.com</a>&=
gt;</span> wrote:<br/><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><img =
width=3D"0" height=3D"0" class=3D"m_7888351445474827525m_-45382592562809612=
4mailtrack-img" alt=3D"" style=3D"display:flex" src=3D"cid:attach_1_15D95A7=
E7264B5F0_27608@groups.io"/>i want to install festival on the target image,=
=
=C2=A0<div>it gives me this error <i>&#34;ERROR: festival-2.3-r0 do_compil=
e: oe_runmake failed&#34;</i><br clear=3D"all"/><div>i have added the meta-=
oe to bblayer also .</div><div><br/></div><div>how to solve this error ?=C2=
=
=A0</div><span class=3D"m_7888351445474827525HOEnZb"><font color=3D"#88888=
8"><div><br/></div>-- <br/><div class=3D"m_7888351445474827525m_-4538259256=
28096124gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><font size=
=3D"1" color=3D"#777777" style=3D"font-family:Tahoma,sans-serif,Arial,seri=
f,EmojiFont"><span style=3D"font-size:13px">Yahia Farghaly=C2=A0</span></fo=
nt><span style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans=
-serif,serif,EmojiFont;font-size:16px"></span><div><font color=3D"#777777" =
face=3D"Tahoma, sans-serif, Arial, serif, EmojiFont"><span style=3D"font-si=
ze:13px">Graduated from Faculty of Engineering - Electronics and Communicat=
ions Department at Cairo University.</span></font><br/></div><div style=3D"=
color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif,serif,Emoji=
Font;font-size:16px"><div><a href=3D"https://linkedin.com/in/yahiafarghaly"=
 rel=3D"noopener noreferrer" target=3D"_blank"><font size=3D"1" style=3D"fo=
nt-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size=
:13px">Linkedin</span></font></a><font size=3D"1" color=3D"#777777" style=
=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"fo=
nt-size:13px">=C2=A0-=C2=A0</span></font><a href=3D"https://github.com/yahi=
afarghaly" rel=3D"noopener noreferrer" target=3D"_blank"><font size=3D"1" s=
tyle=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D=
"font-size:13px">GitHub</span></font></a></div></div></div></div></div></di=
v>
<br/><br/><br/>=E2=80=8C</font></span></div></div>
</blockquote></div><br/><br clear=3D"all"/><div><br/></div>-- <br/><div cl=
ass=3D"m_7888351445474827525gmail_signature" data-smartmail=3D"gmail_signat=
ure"><div dir=3D"ltr"><div><div dir=3D"ltr"><font size=3D"1" color=3D"#7777=
77" style=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span sty=
le=3D"font-size:13px">Yahia Farghaly=C2=A0</span></font><span style=3D"colo=
r:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont=
;font-size:16px"></span><div><font color=3D"#777777" face=3D"Tahoma, sans-s=
erif, Arial, serif, EmojiFont"><span style=3D"font-size:13px">Graduated fro=
m Faculty of Engineering - Electronics and Communications Department at Cai=
ro University.</span></font><br/></div><div style=3D"color:rgb(0,0,0);font-=
family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-size:16px"><=
div><a href=3D"https://linkedin.com/in/yahiafarghaly" rel=3D"noopener noref=
errer" target=3D"_blank"><font size=3D"1" style=3D"font-family:Tahoma,sans-=
serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px">Linkedin</span>=
</font></a><font size=3D"1" color=3D"#777777" style=3D"font-family:Tahoma,s=
ans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px">=C2=A0-=C2=
=A0</span></font><a href=3D"https://github.com/yahiafarghaly" rel=3D"noope=
ner noreferrer" target=3D"_blank"><font size=3D"1" style=3D"font-family:Tah=
oma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px">GitHub=
</span></font></a></div></div></div></div></div></div>
</div>
</div></div></blockquote></div><br/><br clear=3D"all"/><div><br/></div>-- =
<br/><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div=
 dir=3D"ltr"><div><div dir=3D"ltr"><font size=3D"1" color=3D"#777777" style=
=
=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"fo=
nt-size:13px">Yahia Farghaly=C2=A0</span></font><span style=3D"color:rgb(0,=
0,0);font-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-si=
ze:16px"></span><div><font color=3D"#777777" face=3D"Tahoma, sans-serif, Ar=
ial, serif, EmojiFont"><span style=3D"font-size:13px">Graduated from Facult=
y of Engineering - Electronics and Communications Department at Cairo Unive=
rsity.</span></font><br/></div><div style=3D"color:rgb(0,0,0);font-family:C=
alibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-size:16px"><div><a h=
ref=3D"https://linkedin.com/in/yahiafarghaly" rel=3D"noopener noreferrer" t=
arget=3D"_blank"><font size=3D"1" style=3D"font-family:Tahoma,sans-serif,Ar=
ial,serif,EmojiFont"><span style=3D"font-size:13px">Linkedin</span></font><=
/a><font size=3D"1" color=3D"#777777" style=3D"font-family:Tahoma,sans-seri=
f,Arial,serif,EmojiFont"><span style=3D"font-size:13px">=C2=A0-=C2=A0</span=
></font><a href=3D"https://github.com/yahiafarghaly" rel=3D"noopener norefe=
rrer" target=3D"_blank"><font size=3D"1" style=3D"font-family:Tahoma,sans-s=
erif,Arial,serif,EmojiFont"><span style=3D"font-size:13px">GitHub</span></f=
ont></a></div></div></div></div></div></div>
</div>
</body></html>

--001a113cf64cd23047055929ba24--

--ATKFXtMfz1lOrAWPLpMN
Content-Id: <attach_0_15D95A7E725F7658_27608@groups.io>
X-Attachment-Id: attach_0_15D95A7E725F7658_27608@groups.io
Content-Type: image/gif; name="dummyfile.0.part"
Content-Disposition: inline; filename="dummyfile.0.part"
Content-Transfer-Encoding: base64

R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7

--ATKFXtMfz1lOrAWPLpMN
Content-Id: <attach_1_15D95A7E7264B5F0_27608@groups.io>
X-Attachment-Id: attach_1_15D95A7E7264B5F0_27608@groups.io
Content-Type: image/gif; name="dummyfile.1.part"
Content-Disposition: inline; filename="dummyfile.1.part"
Content-Transfer-Encoding: base64

R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7

--ATKFXtMfz1lOrAWPLpMN--
