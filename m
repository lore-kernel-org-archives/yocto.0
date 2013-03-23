Return-Path: <insop.song@gmail.com>
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D046AE0141C
	for <yocto@yoctoproject.org>; Sat, 23 Mar 2013 14:59:27 -0700 (PDT)
Received: by mail-wi0-f180.google.com with SMTP id c10so878639wiw.1
	for <yocto@yoctoproject.org>; Sat, 23 Mar 2013 14:59:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:references:in-reply-to:mime-version:from:date:message-id
	:subject:to:cc:content-type;
	bh=N+HAjbuy5Okv2JPzZ9mmV+spXaZ8aD6D4JTsI25jsl8=;
	b=p+vaROkpm92f+8Lq4nhOUUQCT6A4GjAXUatvecfqCNArqTgUBleAzLOkvVbKXAq0hK
	WmD2XzNOakOrxfiL5GcivZ6+/yL8tivstJJa3ChpNlzsSBChfWxQndnIiFTnbPt+HFru
	HwyjLTVsFJwxHDna6yl/18Fg58/dmysmUU+meiRpK7EAW76BuG40LE65wfTwXweDV3NS
	zgkqdHUxTfM2+BWv4MthBflwJ0/mTKu1GbTLm3k0lT/5mUkPbAWBuPGEXc2IKojFbKRY
	z/XFoSlHsmstoaG4gu1twHCokFvauiLuSfLTRs6C60i77wxxR1g/obrCE5gKqabaoZV+
	siZA==
X-Received: by 10.180.13.197 with SMTP id j5mr9938420wic.21.1364075966420;
	Sat, 23 Mar 2013 14:59:26 -0700 (PDT)
References: <CACzyEJ_vQfDNho=ZxGc1YwAsT5UqdX3dHpVFFBmaynK_CZ=mtQ@mail.gmail.com>
	<F8358AF0-D35A-496C-A53F-877F6280D19E@gmail.com>
	<CACzyEJ9pcwrYKfJGqMux79sUmPnSOA_9LaLNcz5jWi4ZCanGHA@mail.gmail.com>
	<2E4EF49C-C7A5-425A-9328-AAF7763EDE82@gmail.com>
In-Reply-To: <2E4EF49C-C7A5-425A-9328-AAF7763EDE82@gmail.com>
Mime-Version: 1.0 (1.0)
From: Insop Song <insop.song@gmail.com>
Date: Sat, 23 Mar 2013 14:59:26 -0700
Message-ID: <-5529104746749651878@unknownmsgid>
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
X-List-Received-Date: Sat, 23 Mar 2013 21:59:28 -0000
Content-Type: text/plain; charset=ISO-8859-1

Thank you.
Works, I can log in without password

Insop



On Mar 23, 2013, at 0:04, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Mar 22, 2013, at 11:53 PM, Insop Song <insop.song@gmail.com> wrote:
>
>> Hi Khem,
>>
>> Thank you for the reply.
>>
>> I've tried and it worked only if I use "tools-sdk" like below:
>>
>> However, this image asks me the paaswrd, do you know?
>>
>> Thank you,
>>
>> Insop
>>
>> =========================================
>> DEPENDS = "linux-yocto"
>>
>> IMAGE_FEATURES += "package-management ssh-server-dropbear"
>> EXTRA_IMAGE_FEATURES = "tools-sdk tools-profile"
>
> add 'debug-tweaks' also to EXTRA_IMAGE_FEATURES
>
>
>>
>> IMAGE_INSTALL = "\
>>    ${CORE_IMAGE_BASE_INSTALL} \
>>    rt-app \
>>    schedtool-dl \
>>
>> =========================================
>>
>>
>>
>> On Thu, Mar 21, 2013 at 10:58 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>> EXTRA_IMAGE_FEATURES =  "tools-sdk"
>>>
>>> On Mar 21, 2013, at 1:44 AM, Insop Song <insop.song@gmail.com> wrote:
>>>
>>>> Hi,
>>>>
>>>> I am trying to add sdk (gcc ..) to meta-realtime
>>>> (http://git.yoctoproject.org/cgit/cgit.cgi/meta-realtime/).
>>>> Only difference between upstream meta-realtime is ""tools-sdk"
>>>>
>>>> -----
>>>> require recipes-core/images/core-image-minimal-dev.bb
>>>>
>>>> DESCRIPTION = "Image with meta-realtime and sdk"
>>>>
>>>> DEPENDS = "linux-yocto"
>>>>
>>>> IMAGE_FEATURES += "package-management ssh-server-dropbear"
>>>> IMAGE_FEATURES += "tools-sdk"
>>>> EXTRA_IMAGE_FEATURES = "tools-debug debug-tweaks tools-profile dbg-pkgs"
>>>>
>>>> IMAGE_INSTALL = "\
>>>>     ${CORE_IMAGE_BASE_INSTALL} \
>>>>     rt-app \
>>>>     schedtool-dl \
>>>>     "
>>>>
>>>> ----
>>>>
>>>> I am keep getting hddimg failure with this message "mkdosfs: seek failed"
>>>>
>>>> I appreciate if anyone know on this issue.
>>>>
>>>> Thank you,
>>>>
>>>> Insop
>>>>
>>>> ---
>>>> This is full output including error message.
>>>>
>>>> $ time bitbake core-image-realtime-sdk
>>>> Pseudo is not present but is required, building this first before the main build
>>>> Parsing recipes: 100%
>>>> |############################################################################################|
>>>> Time: 00:00:49
>>>> Parsing of 834 .bb files complete (0 cached, 834 parsed). 1144
>>>> targets, 29 skipped, 0 masked, 0 errors.
>>>>
>>>> Build Configuration:
>>>> BB_VERSION        = "1.17.1"
>>>> BUILD_SYS         = "i686-linux"
>>>> NATIVELSBSTRING   = "Ubuntu-12.10"
>>>> TARGET_SYS        = "i586-poky-linux"
>>>> MACHINE           = "fri2"
>>>> DISTRO            = "poky"
>>>> DISTRO_VERSION    = "1.3+snapshot-20130321"
>>>> TUNE_FEATURES     = "m32 core2"
>>>> TARGET_FPU        = ""
>>>> meta
>>>> meta-yocto
>>>> meta-yocto-bsp    = "master:9ffee9add2d0380f4025e7a678a166f25a7d659e"
>>>> meta-intel
>>>> meta-fri2         = "master:7a5e19e0c7d5967ef7b003ab775b7210c0ee16d7"
>>>> meta-realtime     = "image-sdk:6825219a33a4b4d140a01cee5165d805951d1d75"
>>>>
>>>> NOTE: Resolving any missing task queue dependencies
>>>> NOTE: Preparing runqueue
>>>> NOTE: Executing SetScene Tasks
>>>> NOTE: Executing RunQueue Tasks
>>>> NOTE: Tasks Summary: Attempted 63 tasks of which 63 didn't need to be
>>>> rerun and all succeeded.
>>>> No currently running tasks (2 of 9)
>>>> Loading cache: 100%
>>>> |##############################################################################################|
>>>> ETA:  00:00:00
>>>> Loaded 1145 entries from dependency cache.
>>>>
>>>> Build Configuration:
>>>> BB_VERSION        = "1.17.1"
>>>> BUILD_SYS         = "i686-linux"
>>>> NATIVELSBSTRING   = "Ubuntu-12.10"
>>>> TARGET_SYS        = "i586-poky-linux"
>>>> MACHINE           = "fri2"
>>>> DISTRO            = "poky"
>>>> DISTRO_VERSION    = "1.3+snapshot-20130321"
>>>> TUNE_FEATURES     = "m32 core2"
>>>> TARGET_FPU        = ""
>>>> meta
>>>> meta-yocto
>>>> meta-yocto-bsp    = "master:9ffee9add2d0380f4025e7a678a166f25a7d659e"
>>>> meta-intel
>>>> meta-fri2         = "master:7a5e19e0c7d5967ef7b003ab775b7210c0ee16d7"
>>>> meta-realtime     = "image-sdk:6825219a33a4b4d140a01cee5165d805951d1d75"
>>>>
>>>> NOTE: Resolving any missing task queue dependencies
>>>> NOTE: Preparing runqueue
>>>> NOTE: Executing SetScene Tasks
>>>> NOTE: Executing RunQueue Tasks
>>>> ERROR: Function failed: build_hddimg (see
>>>> /home/insop/mybuilds/fri2-1.4/tmp/work/fri2-poky-linux/core-image-realtime-sdk/1.0-r0/temp/log.do_bootimg.21803
>>>> for further information)
>>>> ERROR: Logfile of failure stored in:
>>>> /home/insop/mybuilds/fri2-1.4/tmp/work/fri2-poky-linux/core-image-realtime-sdk/1.0-r0/temp/log.do_bootimg.21803
>>>> Log data follows:
>>>> | DEBUG: Executing python function do_bootimg
>>>> | DEBUG: Executing python function build_syslinux_cfg
>>>> | DEBUG: Python function build_syslinux_cfg finished
>>>> | DEBUG: Executing python function build_grub_cfg
>>>> | DEBUG: Python function build_grub_cfg finished
>>>> | DEBUG: Executing shell function build_hddimg
>>>> | mkdosfs: seek failed
>>>> | mkdosfs 2.11 (12 Mar 2005)
>>>> | DEBUG: Python function do_bootimg finished
>>>> | ERROR: Function failed: build_hddimg (see
>>>> /home/insop/mybuilds/fri2-1.4/tmp/work/fri2-poky-linux/core-image-realtime-sdk/1.0-r0/temp/log.do_bootimg.21803
>>>> for further information)
>>>> ERROR: Task 8 (/home/insop/poky/meta-realtime/recipes-extended/images/core-image-realtime-sdk.bb,
>>>> do_bootimg) failed with exit code '1'
>>>> NOTE: Tasks Summary: Attempted 4522 tasks of which 3799 didn't need to
>>>> be rerun and 1 failed.
>>>> No currently running tasks (4522 of 4523)
>>>>
>>>> Summary: 1 task failed:
>>>> /home/insop/poky/meta-realtime/recipes-extended/images/core-image-realtime-sdk.bb,
>>>> do_bootimg
>>>> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>>>>
>>>> real  48m10.876s
>>>> user  55m35.948s
>>>> sys   9m36.128s
>>>> insop@chai ~/mybuilds/fri2-1.4 $
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>

