Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57A88E00F6F; Thu,  1 Mar 2018 21:55:40 -0800 (PST)
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
	*      [209.85.192.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f174.google.com (mail-pf0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC596E00EE7
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2018 21:55:37 -0800 (PST)
Received: by mail-pf0-f174.google.com with SMTP id j20so3547120pfi.1
	for <yocto@yoctoproject.org>; Thu, 01 Mar 2018 21:55:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=MF5aUIZebkPr5dSjcIR0D1vqefRafIrYfCDF/GeypOA=;
	b=eZzFF3szyJrvqvV/rn+YsUqjLnHAp/BsKNVNxtz/K7NuMLBNviDDRrcwmpFN2fyjYZ
	BW052W1wRsoMSSRhD9iNOC5eMWMcRtyFPJSELGRz8uuSS/uJhCb+ehwMD4cwdNTcKbcO
	5KNXEx+UUXsbXROz4BmofkDz/R8AyKTVdMCEnnwKjn9TMb77+lDpIqKC4/vXYXwKIXzt
	lHqi/3qtVia4QAutbgAvIuopYew4KxNQmxj7QrI/vZ9AV3rhb1ojUMDkEE1dBUUftgvx
	EaFxGUbx/mVcPOy7gXm4tUFgFHHCAXxiltzwlrG0ns21e8ml+qcmjLF2wOm9oBdX1th2
	ku+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=MF5aUIZebkPr5dSjcIR0D1vqefRafIrYfCDF/GeypOA=;
	b=NpfSK5ZGkVojrrpEGaEdifv0iG6px5mST9jEWzxNPvqooqFR+QvSrSp+Etba0MJlxS
	KtrzLBBpnLYEUQMquDB8UcB0YN0jPudUDawy0C7KqFmHUufdJkmlBSjA3N8TaPDWRObw
	T034eRjE36TZViWbOxV/k+ijS5pIM0Hon7uTClP4y8x3z6vnN2nyVWme0KPJ1aObnGlw
	fJeHYTg7MVu2hHhEgFzeGGDarNg5lgUyKG/1eKLf/Ibx6f6yqGKz4CxBUQHOdA9G0RR8
	3sUxttzqiYE2hpjXSbBdiuk7CG/t+hvs81mSY+mclSp9CpTCF+O1z7fJ2oaKYSdabO1g
	Skpg==
X-Gm-Message-State: APf1xPACz2eRpUe3IFzrtx68uTB2L8ug3lcaPu3H9KacKJOCHOSkq4/J
	9Lj/q8E52JP9xVPWedG9n6Ewn92s
X-Google-Smtp-Source: AG47ELt2qA4J4P9C3Pc6mRkET3tSiRrz13h9SD5r8BPJiphrGAwJUJPchOq7nX3lyGLsv1U3So1MtA==
X-Received: by 10.99.43.88 with SMTP id r85mr3623151pgr.276.1519970136527;
	Thu, 01 Mar 2018 21:55:36 -0800 (PST)
Received: from hermes.local ([2601:646:8880:466c:b139:7d65:a2c3:de0a])
	by smtp.gmail.com with ESMTPSA id
	c67sm12196144pfl.106.2018.03.01.21.55.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 01 Mar 2018 21:55:35 -0800 (PST)
To: Abhishekh Awanti <abhishekh@relysys.co.in>, yocto@yoctoproject.org
References: <CANPqCWLBrSwCRbKXePqdmGv2exou5smjq-R9D5yvB6MjQZPqKg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <ee3a3b96-27a3-a679-2c23-3090890113d8@gmail.com>
Date: Thu, 1 Mar 2018 21:55:33 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0)
	Gecko/20100101 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <CANPqCWLBrSwCRbKXePqdmGv2exou5smjq-R9D5yvB6MjQZPqKg@mail.gmail.com>
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
X-List-Received-Date: Fri, 02 Mar 2018 05:55:40 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 3/1/18 2:21 AM, Abhishekh Awanti wrote:
> Hi,
> 
> I am trying to build the package "/harfbuzz-1.3.0" , /but i am getting 
> the following configure error

your build seems to be a bit mixed, the baseline seems to be daisy based 
( 1.6 ) but you are building harfbuzz which is introduced in morty ( 2.2 
) release. Doe the original version work ?

> 
> /Build Configuration:/
> /BB_VERSION        = "1.22.0"/
> /BUILD_SYS         = "x86_64-linux"/
> /NATIVELSBSTRING   = "Ubuntu-14.04"/
> /TARGET_SYS        = "arm-poky-linux-gnueabi"/
> /MACHINE           = "iwg21m"/
> /DISTRO            = "poky"/
> /DISTRO_VERSION    = "1.6.1"/
> /TUNE_FEATURES     = "armv7a vfp neon callconvention-hard cortexa15"/
> /TARGET_FPU        = "vfp-neon"/
> /meta /
> /meta-yocto /
> /meta-yocto-bsp    = "hmi_tmp:9febda430a88ba23b539394e5d54b59ae87405f6"/
> /meta-renesas /
> /meta-rzg1         = "master:2ea602f03b9c2378c1d7dc28675a675d18edb0e3"/
> /meta-oe /
> /meta-multimedia /
> /meta-networking   = "hmi_tmp:dca466c074c9a35bc0133e7e0d65cca0731e2acf"/
> /meta-linaro-toolchain = 
> "hmi_build:8a0601723c06fdb75e62aa0f0cf15fc9d7d90167"/
> /common /
> /hmi-demo          = "master:2cdb73bb902ecd4462cd0a4a66d5d116d0f7c113"/
> /meta-ndvr         = "<unknown>:<unknown>"/
> /
> /
> /NOTE: Preparing runqueue/
> /NOTE: Executing SetScene Tasks/
> /NOTE: Executing RunQueue Tasks/
> /ERROR: Function failed: do_configure (log file is located at 
> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/temp/log.do_configure.451)/
> /ERROR: Logfile of failure stored in: 
> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/temp/log.do_configure.451/
> /Log data follows:/
> /| DEBUG: Executing python function sysroot_cleansstate/
> /| DEBUG: Python function sysroot_cleansstate finished/
> /| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 
> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']/
> /| DEBUG: Executing shell function autotools_preconfigure/
> /| DEBUG: Shell function autotools_preconfigure finished/
> /| DEBUG: Executing python function autotools_copy_aclocals/
> /| DEBUG: Python function autotools_copy_aclocals finished/
> /| DEBUG: Executing shell function do_configure/
> /| automake (GNU automake) 1.14/
> /| Copyright (C) 2013 Free Software Foundation, Inc./
> /| License GPLv2+: GNU GPL version 2 or later 
> <http://gnu.org/licenses/gpl-2.0.html 
> <http://gnu.org/licenses/gpl-2.0.html>>/
> /| This is free software: you are free to change and redistribute it./
> /| There is NO WARRANTY, to the extent permitted by law./
> /| /
> /| Written by Tom Tromey <tromey@redhat.com <mailto:tromey@redhat.com>>/
> /|        and Alexandre Duret-Lutz <adl@gnu.org <mailto:adl@gnu.org>>./
> /| AUTOV is 1/
> /| NOTE: Executing ACLOCAL="aclocal 
> --system-acdir=/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/build/aclocal-copy/" 
> autoreconf --verbose --install --force --exclude=autopoint -I 
> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/harfbuzz-1.3.0/m4//
> /| autoreconf: Entering directory `.'/
> /| autoreconf:configure.ac <http://configure.ac/>: not using Gettext/
> /| autoreconf: running: aclocal 
> --system-acdir=/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/build/aclocal-copy/ 
> -I 
> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/harfbuzz-1.3.0/m4/ 
> -I 
> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/harfbuzz-1.3.0/m4/ 
> --force -I m4/
> /| autoreconf:configure.ac <http://configure.ac/>: tracing/
> /| autoreconf: running: libtoolize --copy --force/
> /| libtoolize: putting auxiliary files in `.'./
> /| libtoolize: copying file `./ltmain.sh'/
> /| libtoolize: putting macros in AC_CONFIG_MACRO_DIR, `m4'./
> /| libtoolize: copying file `m4/libtool.m4'/
> /| libtoolize: copying file `m4/ltoptions.m4'/
> /| libtoolize: copying file `m4/ltsugar.m4'/
> /| libtoolize: copying file `m4/ltversion.m4'/
> /| libtoolize: copying file `m4/lt~obsolete.m4'/
> /| autoreconf: running: 
> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/sysroots/x86_64-linux/usr/bin/autoconf 
> --include=/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/harfbuzz-1.3.0/m4/ 
> --force/
> /| configure:17934: error: possibly undefined macro: PKG_CONFIG_SYSROOT_DIR/
> /|       If this token and others are legitimate, please use 
> m4_pattern_allow./
> /|       See the Autoconf documentation./
> /| autoreconf: 
> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/sysroots/x86_64-linux/usr/bin/autoconf 
> failed with exit status: 1/
> /| ERROR: autoreconf execution failed./
> /| WARNING: exit code 1 from a shell command./
> /| ERROR: Function failed: do_configure (log file is located at 
> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/temp/log.do_configure.451)/
> /ERROR: Task 5 
> (/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/../poky/meta/recipes-graphics/harfbuzz/harfbuzz_1.3.0.bb 
> <http://harfbuzz_1.3.0.bb/>, do_configure) failed with exit code '1'/
> 
> Any help will be appreciated.
> 
> 

