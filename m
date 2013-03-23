Return-Path: <insop.song@gmail.com>
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6C39E01471
	for <yocto@yoctoproject.org>; Fri, 22 Mar 2013 23:54:00 -0700 (PDT)
Received: by mail-wi0-f179.google.com with SMTP id hn17so2426103wib.0
	for <yocto@yoctoproject.org>; Fri, 22 Mar 2013 23:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=SLOcaxMVfbpn2hwJdrK3Akv48f2MB8lGuri74KUtG8k=;
	b=PTyjux+VxPxPSbtROTuODdGf0MxijOok8j+9KgLI5//ibjG+jkHZBGZ3odv2l/NDJb
	Jp4PadXUUqwvNkunkCQApACcPJzOwutpebzsFCr48+Alv6vG1MmZopO8GD4X6vb6yhib
	zz/VvFvp5jGnYDYa2mOWh4SBQKLHn6ous6B9Huq/2zq3AKOI8grVqpcLFifupFZdtDbX
	UQ9/gByj1GMujRDkCUQYUtUw42xfvIo1iMcZ1lX0l/WiqGoQV7fWgz2ogs1aFNl/FfZR
	siBQipXV3qDL/O6cD7JRi0raioRHWKJnu+BoN6iDSkpRtwzuABGonHKw/Cq/aodcu187
	TLdQ==
X-Received: by 10.180.108.97 with SMTP id hj1mr990797wib.16.1364021639590;
	Fri, 22 Mar 2013 23:53:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Fri, 22 Mar 2013 23:53:39 -0700 (PDT)
In-Reply-To: <F8358AF0-D35A-496C-A53F-877F6280D19E@gmail.com>
References: <CACzyEJ_vQfDNho=ZxGc1YwAsT5UqdX3dHpVFFBmaynK_CZ=mtQ@mail.gmail.com>
	<F8358AF0-D35A-496C-A53F-877F6280D19E@gmail.com>
From: Insop Song <insop.song@gmail.com>
Date: Fri, 22 Mar 2013 23:53:39 -0700
Message-ID: <CACzyEJ9pcwrYKfJGqMux79sUmPnSOA_9LaLNcz5jWi4ZCanGHA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: custom hddimg failure (mkdosfs: seek failed)
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
X-List-Received-Date: Sat, 23 Mar 2013 06:54:01 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Khem,

Thank you for the reply.

I've tried and it worked only if I use "tools-sdk" like below:

However, this image asks me the paaswrd, do you know?

Thank you,

Insop

=========================================
DEPENDS = "linux-yocto"

IMAGE_FEATURES += "package-management ssh-server-dropbear"
EXTRA_IMAGE_FEATURES = "tools-sdk tools-profile"

IMAGE_INSTALL = "\
	${CORE_IMAGE_BASE_INSTALL} \
	rt-app \
	schedtool-dl \

=========================================



On Thu, Mar 21, 2013 at 10:58 AM, Khem Raj <raj.khem@gmail.com> wrote:
> EXTRA_IMAGE_FEATURES =  "tools-sdk"
>
> On Mar 21, 2013, at 1:44 AM, Insop Song <insop.song@gmail.com> wrote:
>
>> Hi,
>>
>> I am trying to add sdk (gcc ..) to meta-realtime
>> (http://git.yoctoproject.org/cgit/cgit.cgi/meta-realtime/).
>> Only difference between upstream meta-realtime is ""tools-sdk"
>>
>> -----
>> require recipes-core/images/core-image-minimal-dev.bb
>>
>> DESCRIPTION = "Image with meta-realtime and sdk"
>>
>> DEPENDS = "linux-yocto"
>>
>> IMAGE_FEATURES += "package-management ssh-server-dropbear"
>> IMAGE_FEATURES += "tools-sdk"
>> EXTRA_IMAGE_FEATURES = "tools-debug debug-tweaks tools-profile dbg-pkgs"
>>
>> IMAGE_INSTALL = "\
>>       ${CORE_IMAGE_BASE_INSTALL} \
>>       rt-app \
>>       schedtool-dl \
>>       "
>>
>> ----
>>
>> I am keep getting hddimg failure with this message "mkdosfs: seek failed"
>>
>> I appreciate if anyone know on this issue.
>>
>> Thank you,
>>
>> Insop
>>
>> ---
>> This is full output including error message.
>>
>> $ time bitbake core-image-realtime-sdk
>> Pseudo is not present but is required, building this first before the main build
>> Parsing recipes: 100%
>> |############################################################################################|
>> Time: 00:00:49
>> Parsing of 834 .bb files complete (0 cached, 834 parsed). 1144
>> targets, 29 skipped, 0 masked, 0 errors.
>>
>> Build Configuration:
>> BB_VERSION        = "1.17.1"
>> BUILD_SYS         = "i686-linux"
>> NATIVELSBSTRING   = "Ubuntu-12.10"
>> TARGET_SYS        = "i586-poky-linux"
>> MACHINE           = "fri2"
>> DISTRO            = "poky"
>> DISTRO_VERSION    = "1.3+snapshot-20130321"
>> TUNE_FEATURES     = "m32 core2"
>> TARGET_FPU        = ""
>> meta
>> meta-yocto
>> meta-yocto-bsp    = "master:9ffee9add2d0380f4025e7a678a166f25a7d659e"
>> meta-intel
>> meta-fri2         = "master:7a5e19e0c7d5967ef7b003ab775b7210c0ee16d7"
>> meta-realtime     = "image-sdk:6825219a33a4b4d140a01cee5165d805951d1d75"
>>
>> NOTE: Resolving any missing task queue dependencies
>> NOTE: Preparing runqueue
>> NOTE: Executing SetScene Tasks
>> NOTE: Executing RunQueue Tasks
>> NOTE: Tasks Summary: Attempted 63 tasks of which 63 didn't need to be
>> rerun and all succeeded.
>> No currently running tasks (2 of 9)
>> Loading cache: 100%
>> |##############################################################################################|
>> ETA:  00:00:00
>> Loaded 1145 entries from dependency cache.
>>
>> Build Configuration:
>> BB_VERSION        = "1.17.1"
>> BUILD_SYS         = "i686-linux"
>> NATIVELSBSTRING   = "Ubuntu-12.10"
>> TARGET_SYS        = "i586-poky-linux"
>> MACHINE           = "fri2"
>> DISTRO            = "poky"
>> DISTRO_VERSION    = "1.3+snapshot-20130321"
>> TUNE_FEATURES     = "m32 core2"
>> TARGET_FPU        = ""
>> meta
>> meta-yocto
>> meta-yocto-bsp    = "master:9ffee9add2d0380f4025e7a678a166f25a7d659e"
>> meta-intel
>> meta-fri2         = "master:7a5e19e0c7d5967ef7b003ab775b7210c0ee16d7"
>> meta-realtime     = "image-sdk:6825219a33a4b4d140a01cee5165d805951d1d75"
>>
>> NOTE: Resolving any missing task queue dependencies
>> NOTE: Preparing runqueue
>> NOTE: Executing SetScene Tasks
>> NOTE: Executing RunQueue Tasks
>> ERROR: Function failed: build_hddimg (see
>> /home/insop/mybuilds/fri2-1.4/tmp/work/fri2-poky-linux/core-image-realtime-sdk/1.0-r0/temp/log.do_bootimg.21803
>> for further information)
>> ERROR: Logfile of failure stored in:
>> /home/insop/mybuilds/fri2-1.4/tmp/work/fri2-poky-linux/core-image-realtime-sdk/1.0-r0/temp/log.do_bootimg.21803
>> Log data follows:
>> | DEBUG: Executing python function do_bootimg
>> | DEBUG: Executing python function build_syslinux_cfg
>> | DEBUG: Python function build_syslinux_cfg finished
>> | DEBUG: Executing python function build_grub_cfg
>> | DEBUG: Python function build_grub_cfg finished
>> | DEBUG: Executing shell function build_hddimg
>> | mkdosfs: seek failed
>> | mkdosfs 2.11 (12 Mar 2005)
>> | DEBUG: Python function do_bootimg finished
>> | ERROR: Function failed: build_hddimg (see
>> /home/insop/mybuilds/fri2-1.4/tmp/work/fri2-poky-linux/core-image-realtime-sdk/1.0-r0/temp/log.do_bootimg.21803
>> for further information)
>> ERROR: Task 8 (/home/insop/poky/meta-realtime/recipes-extended/images/core-image-realtime-sdk.bb,
>> do_bootimg) failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 4522 tasks of which 3799 didn't need to
>> be rerun and 1 failed.
>> No currently running tasks (4522 of 4523)
>>
>> Summary: 1 task failed:
>>  /home/insop/poky/meta-realtime/recipes-extended/images/core-image-realtime-sdk.bb,
>> do_bootimg
>> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>>
>> real  48m10.876s
>> user  55m35.948s
>> sys   9m36.128s
>> insop@chai ~/mybuilds/fri2-1.4 $
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>

