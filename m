Return-Path: <mohammedaqdam@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BFEEE00C9D; Thu, 17 Aug 2017 22:24:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mohammedaqdam[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.181 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f181.google.com (mail-yw0-f181.google.com
	[209.85.161.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C3FEE00CCB
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 22:24:04 -0700 (PDT)
Received: by mail-yw0-f181.google.com with SMTP id p68so53125239ywg.0
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 22:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=mxgG5MIEUsdbNpmEzbU8LxwfZMBtMUuMgB8FfysnRbo=;
	b=ppW8T04w9PBRjq1h6I8RtPx36SktbJtR/M18bfqQNa+N6bW95B2XImOUeM3kN6xH4s
	H9x1ZYgcFtxZxmPYylEtT9MDqAB6lP5vbsB5qq670TT6ZhPcFFzLsg4zkoNwglVwwczm
	FchLR6NAYYNuz+IJwlmxlrf4OTm0L5EI4pD6y0fBAfAj20MSBfFn0flXVRJA9QrBG1qn
	Xad+SXOB3mnCvY0FMtzUry2oz7CU9OVxic5icZUx1nzFCI1XzqNj/e3KFh0WM/PXih6A
	TmSN0EC9hVsUOXJgADvngPC26eZb5IOBsv4/qTHjAGxUeY7254D7CMSBeivWUfaLgROF
	GJuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=mxgG5MIEUsdbNpmEzbU8LxwfZMBtMUuMgB8FfysnRbo=;
	b=pEocc2+B+xzMZNrMB9xS86R/dsOyLhhDBvmD9iTmbqKMTJDJv9FCHnr6M6D+yl+jBA
	5dQfnrUCHMg04qg8Nu0QU7nlcBQsdTnvTaQQkmjjfd4GJwcQL0OImErFb/PapJbxek4U
	fMgrb7xXRfa7FoQMBkwGlXpKCXZiiVZl3U/Eh0CQfHlDL1sv4UxV8xXSoZ+L3M3HwzqE
	fU0oMgBGkJADUOZdQMagrUvbuMuVQZ/XJSl2fU9CNOO557xWOShw+ryjexObk0TpTFyy
	THj6VFRUE4jZ0OeJk6lmO/u/8wKcVulGUB1j/rsZRIJHe3M9JuEvbjGjVcaO0/MYjOWV
	ljSg==
X-Gm-Message-State: AHYfb5gFYS6oPJMCrwK/umm9sx191CDtz45nMx+FtdmyLNMOFX+eZiDF
	FJnUwx2+cxHp6pxdyEV27mj52m8Tcw==
X-Received: by 10.129.197.73 with SMTP id o9mr6168320ywj.183.1503033844047;
	Thu, 17 Aug 2017 22:24:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.121.77 with HTTP; Thu, 17 Aug 2017 22:24:03 -0700 (PDT)
From: mohammed aqdam <mohammedaqdam@gmail.com>
Date: Fri, 18 Aug 2017 10:54:03 +0530
Message-ID: <CAGsrAHeCnGRMgkMH5oqqHQoVqYQzKVxXb93PKkL3-4tALv_05Q@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: why do we get do_configure() fuction fail
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
X-List-Received-Date: Fri, 18 Aug 2017 05:24:07 -0000
Content-Type: text/plain; charset="UTF-8"

root@pcz-ee207837-2:/u/my_poky/poky-2/poky/build# bitbake -k rpi-basic-image
Loading cache: 100%
|#####################################################################################################################################|
Time: 0:00:01
Loaded 2716 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.34.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal-4.8"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "raspberrypi3"
DISTRO            = "poky"
DISTRO_VERSION    = "2.3.1"
TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4
callconvention-hard cortexa7"
TARGET_FPU        = "hard"
meta
meta-poky
meta-yocto-bsp    = "pyro:4a39979c8d1e560fa54240e99734a651dfbaa63a"
meta-raspberrypi  = "pyro:8ba2d6fc80b31c87d25c87c863e2a77752b07c3c"
meta-oe
meta-multimedia
meta-networking
meta-python       = "pyro:5e82995148a2844c6f483ae5ddd1438d87ea9fb7"

NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 2876 of 4136
(virtual:native:/u/my_poky/poky-2/poky/meta/recipes-core/coreutils/coreutils_8.26.bb:do_configure)
NOTE: recipe coreutils-native-8.26-r0: task do_configure: Started
ERROR: coreutils-native-8.26-r0 do_configure: configure failed
ERROR: coreutils-native-8.26-r0 do_configure: Function failed:
do_configure (log file is located at
/u/my_poky/poky-2/poky/build/tmp/work/x86_64-linux/coreutils-native/8.26-r0/temp/log.do_configure.5008)
ERROR: Logfile of failure stored in:
/u/my_poky/poky-2/poky/build/tmp/work/x86_64-linux/coreutils-native/8.26-r0/temp/log.do_configure.5008
NOTE: recipe coreutils-native-8.26-r0: task do_configure: Failed
ERROR: Task (virtual:native:/u/my_poky/poky-2/poky/meta/recipes-core/coreutils/coreutils_8.26.bb:do_configure)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 4114 tasks of which 4113 didn't need to
be rerun and 1 failed.

why i'm getting this error?
and how to solve this?

