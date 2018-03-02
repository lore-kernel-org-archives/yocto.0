Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 427AAE00DF0; Fri,  2 Mar 2018 07:22:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f46.google.com (mail-pg0-f46.google.com [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAAE0E007E1
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2018 07:22:54 -0800 (PST)
Received: by mail-pg0-f46.google.com with SMTP id e9so3890041pgs.10
	for <yocto@yoctoproject.org>; Fri, 02 Mar 2018 07:22:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=LMGj6G2peM9NbphPAlhHU8zoaDqz76bqsSB0eSDUAZ0=;
	b=oFBEXg4Szj+n8uoewweQnuCzQr2onBwRO6iabHybWrBqzissRktr3gfSokuNSkwUX5
	HvF1phvTsYZLcZRlD3R+WLuCAw4vUHutqIEu2jgZ5x2EeV4ITMDLn0SxmR+DTIJ965pX
	87zDTuDMLF8gR38mdiA5elGSalyNbDX1tp8WpmJUH5mS5cKHZmzD+Pg2TR+2R6I1b6/r
	DPPMQoleuHmipaByXv2NIf58OzG30iFUQIJMdoVdsevkR3g3aNMoMB6i+Vs+XtzE0Ml3
	QKBOTznl7U5dqFQbtMDFgu+7FXbFBHJy21ckUUzM9/IQLZFUy/P2d/KeOmw/enh/4nsS
	i4jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=LMGj6G2peM9NbphPAlhHU8zoaDqz76bqsSB0eSDUAZ0=;
	b=J0pyRCnnNN+dlbGETLyZGHqJ299+IceK4xOe3kJS+pKrDLpvlWvSKyBSCIJPQwFDnz
	W05dtAglNK5v/ZUmTpJu476XspuFy++Zw8Ojg3xck/TUU+o6i5NRHc8Sgc2zcarlDzsh
	IrdNzZMFFrJTRI1qt2LxgHdeKQevU2EUK5yykpQEeeaBSvlM/lpvYC4l3xD+QIIX8V3h
	IrxxlCKCEww7LG+gTBqysSbVh41z7eTu+K+ap+vgVEomp16A0+q4hz2Bx0OIrRA5s/V3
	XCpj79G5UH47JW71kJtU9+IooTf0aKgTf1LvVK3Q5mzspQ5L1SJB13k0NYtIi4y6pRGc
	C05w==
X-Gm-Message-State: APf1xPAkHhOSjK5N3OX3Mz4UUxId9nCDl8olUZlbRCf2IOnbcin+snDB
	/bBQ4gH+L3FIJqMtBpya7qh+XUh4bSb1fAa3YVU=
X-Google-Smtp-Source: AG47ELvVWgwBEl+DZ3WwPY8bImvKR99jB0HZlTMEiU/pF7irpx+aknKKHKDhQbjGTTgOrbbWOVrVT/G+tzccCh9E5wg=
X-Received: by 10.99.125.25 with SMTP id y25mr4846359pgc.227.1520004173908;
	Fri, 02 Mar 2018 07:22:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.170.69 with HTTP; Fri, 2 Mar 2018 07:22:23 -0800 (PST)
In-Reply-To: <CANPqCW+NHgZiDRkyti3TToWoJqruqhtMyMtS=pRembyMimVaEw@mail.gmail.com>
References: <CANPqCWLBrSwCRbKXePqdmGv2exou5smjq-R9D5yvB6MjQZPqKg@mail.gmail.com>
	<ee3a3b96-27a3-a679-2c23-3090890113d8@gmail.com>
	<CANPqCW+NHgZiDRkyti3TToWoJqruqhtMyMtS=pRembyMimVaEw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 2 Mar 2018 07:22:23 -0800
Message-ID: <CAMKF1srWQj0_xsDsdX4eT_iGo5SBRy0A-z71o=an-1aSSVt-Hw@mail.gmail.com>
To: Abhishekh Awanti <abhishekh@relysys.co.in>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: error: possibly undefined macro: PKG_CONFIG_SYSROOT_DIR
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
X-List-Received-Date: Fri, 02 Mar 2018 15:22:58 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 2, 2018 at 4:38 AM, Abhishekh Awanti
<abhishekh@relysys.co.in> wrote:
> Hi,
> Before i was trying to build the baseline version only, due to this error i
> moved to latest version.
> As Ross said i deleted tmp/ and now the package can able to build
> successfully.
> Should i move to original version only?
>

if you have no pressing need to upgrade
staying with original version is better since thats the tested set.

> On Fri, Mar 2, 2018 at 11:25 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>>
>>
>> On 3/1/18 2:21 AM, Abhishekh Awanti wrote:
>>>
>>> Hi,
>>>
>>> I am trying to build the package "/harfbuzz-1.3.0" , /but i am getting
>>> the following configure error
>>
>>
>> your build seems to be a bit mixed, the baseline seems to be daisy based (
>> 1.6 ) but you are building harfbuzz which is introduced in morty ( 2.2 )
>> release. Doe the original version work ?
>>
>>>
>>> /Build Configuration:/
>>> /BB_VERSION        = "1.22.0"/
>>> /BUILD_SYS         = "x86_64-linux"/
>>> /NATIVELSBSTRING   = "Ubuntu-14.04"/
>>> /TARGET_SYS        = "arm-poky-linux-gnueabi"/
>>> /MACHINE           = "iwg21m"/
>>> /DISTRO            = "poky"/
>>> /DISTRO_VERSION    = "1.6.1"/
>>> /TUNE_FEATURES     = "armv7a vfp neon callconvention-hard cortexa15"/
>>> /TARGET_FPU        = "vfp-neon"/
>>> /meta /
>>> /meta-yocto /
>>> /meta-yocto-bsp    = "hmi_tmp:9febda430a88ba23b539394e5d54b59ae87405f6"/
>>> /meta-renesas /
>>> /meta-rzg1         = "master:2ea602f03b9c2378c1d7dc28675a675d18edb0e3"/
>>> /meta-oe /
>>> /meta-multimedia /
>>> /meta-networking   = "hmi_tmp:dca466c074c9a35bc0133e7e0d65cca0731e2acf"/
>>> /meta-linaro-toolchain =
>>> "hmi_build:8a0601723c06fdb75e62aa0f0cf15fc9d7d90167"/
>>> /common /
>>> /hmi-demo          = "master:2cdb73bb902ecd4462cd0a4a66d5d116d0f7c113"/
>>> /meta-ndvr         = "<unknown>:<unknown>"/
>>> /
>>> /
>>> /NOTE: Preparing runqueue/
>>> /NOTE: Executing SetScene Tasks/
>>> /NOTE: Executing RunQueue Tasks/
>>> /ERROR: Function failed: do_configure (log file is located at
>>> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/temp/log.do_configure.451)/
>>> /ERROR: Logfile of failure stored in:
>>> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/temp/log.do_configure.451/
>>> /Log data follows:/
>>> /| DEBUG: Executing python function sysroot_cleansstate/
>>> /| DEBUG: Python function sysroot_cleansstate finished/
>>> /| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
>>> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']/
>>> /| DEBUG: Executing shell function autotools_preconfigure/
>>> /| DEBUG: Shell function autotools_preconfigure finished/
>>> /| DEBUG: Executing python function autotools_copy_aclocals/
>>> /| DEBUG: Python function autotools_copy_aclocals finished/
>>> /| DEBUG: Executing shell function do_configure/
>>> /| automake (GNU automake) 1.14/
>>> /| Copyright (C) 2013 Free Software Foundation, Inc./
>>> /| License GPLv2+: GNU GPL version 2 or later
>>> <http://gnu.org/licenses/gpl-2.0.html
>>> <http://gnu.org/licenses/gpl-2.0.html>>/
>>> /| This is free software: you are free to change and redistribute it./
>>> /| There is NO WARRANTY, to the extent permitted by law./
>>> /| /
>>> /| Written by Tom Tromey <tromey@redhat.com <mailto:tromey@redhat.com>>/
>>> /|        and Alexandre Duret-Lutz <adl@gnu.org <mailto:adl@gnu.org>>./
>>> /| AUTOV is 1/
>>> /| NOTE: Executing ACLOCAL="aclocal
>>> --system-acdir=/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/build/aclocal-copy/"
>>> autoreconf --verbose --install --force --exclude=autopoint -I
>>> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/harfbuzz-1.3.0/m4//
>>> /| autoreconf: Entering directory `.'/
>>> /| autoreconf:configure.ac <http://configure.ac/>: not using Gettext/
>>> /| autoreconf: running: aclocal
>>> --system-acdir=/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/build/aclocal-copy/
>>> -I
>>> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/harfbuzz-1.3.0/m4/
>>> -I
>>> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/harfbuzz-1.3.0/m4/
>>> --force -I m4/
>>> /| autoreconf:configure.ac <http://configure.ac/>: tracing/
>>> /| autoreconf: running: libtoolize --copy --force/
>>> /| libtoolize: putting auxiliary files in `.'./
>>> /| libtoolize: copying file `./ltmain.sh'/
>>> /| libtoolize: putting macros in AC_CONFIG_MACRO_DIR, `m4'./
>>> /| libtoolize: copying file `m4/libtool.m4'/
>>> /| libtoolize: copying file `m4/ltoptions.m4'/
>>> /| libtoolize: copying file `m4/ltsugar.m4'/
>>> /| libtoolize: copying file `m4/ltversion.m4'/
>>> /| libtoolize: copying file `m4/lt~obsolete.m4'/
>>> /| autoreconf: running:
>>> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/sysroots/x86_64-linux/usr/bin/autoconf
>>> --include=/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/harfbuzz-1.3.0/m4/
>>> --force/
>>> /| configure:17934: error: possibly undefined macro:
>>> PKG_CONFIG_SYSROOT_DIR/
>>> /|       If this token and others are legitimate, please use
>>> m4_pattern_allow./
>>> /|       See the Autoconf documentation./
>>> /| autoreconf:
>>> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/sysroots/x86_64-linux/usr/bin/autoconf
>>> failed with exit status: 1/
>>> /| ERROR: autoreconf execution failed./
>>> /| WARNING: exit code 1 from a shell command./
>>> /| ERROR: Function failed: do_configure (log file is located at
>>> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/temp/log.do_configure.451)/
>>> /ERROR: Task 5
>>> (/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/../poky/meta/recipes-graphics/harfbuzz/harfbuzz_1.3.0.bb
>>> <http://harfbuzz_1.3.0.bb/>, do_configure) failed with exit code '1'/
>>>
>>> Any help will be appreciated.
>>>
>>>
>

