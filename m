Return-Path: <insop.song@gmail.com>
Received: from mail-wg0-f46.google.com (mail-wg0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D026DE012F3
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 22:46:27 -0700 (PDT)
Received: by mail-wg0-f46.google.com with SMTP id fg15so3550768wgb.1
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 22:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=pw1ZKxj/OwF19aEnzdBbLnumOfbv4itKEaSc3YiDPnQ=;
	b=iy57AjLjoFTF0fNq8GbvhsGy0ztD2b+mNykofJPAFWOXnZMlG9Csb8kFIZbAtlIJCn
	B1yfab1OFyITXEDJTn35TpHCB9tBWX/SNrVjfp0mFpaNCsUSkwFs3n7B/uYnWQgc3Ph1
	7bsvyDnXQ6SOP2AgMSFqQwev4mR7ekDsMqILs4lBn8MEDvg9XzSNzGbMC7c72Bzy7nQs
	kNL7LC+HXO0Gm1wosoBu0zacl6kbFwSX6fo+oEmpWGb4WOxh8NLLk1w0EBq99r0Le7cq
	EEzAKsqwwuizpKjNDGAexqUntqOvSD8sEBq3c3xqDy/4M0OD3S+qKYTQElmI4xhyqYY8
	GLZQ==
X-Received: by 10.180.75.177 with SMTP id d17mr7093809wiw.16.1363412786880;
	Fri, 15 Mar 2013 22:46:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Fri, 15 Mar 2013 22:46:06 -0700 (PDT)
In-Reply-To: <CACzyEJ_Xuu8P+sFsahsFECHe1bo2NGn=1HdJjASnE4GOdRES4w@mail.gmail.com>
References: <CACzyEJ_Xuu8P+sFsahsFECHe1bo2NGn=1HdJjASnE4GOdRES4w@mail.gmail.com>
From: Insop Song <insop.song@gmail.com>
Date: Fri, 15 Mar 2013 22:46:06 -0700
Message-ID: <CACzyEJ8mbC5Jdr9DQS+eE7XV2Swnbg7nS7Uc7RO+NBtxTZAs0A@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [question] "icecc: improve interaction with sstate"
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
X-List-Received-Date: Sat, 16 Mar 2013 05:46:28 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

Sorry, I pressed "send" too quick.

Not the first commit, but after this commit I see the following error
in my first email.
Any one see this?

Author: Olivier Guiter <olivier.guiter@linux.intel.com>  2013-03-12 13:33:52
Committer: Richard Purdie <richard.purdie@linuxfoundation.org>
2013-03-14 18:53:04
Parent: e609afe4d747059480b406602cab90b7c36a0572 (qemu-native:fix
do_compile failed on SLED 11.2)
Child:  31c134bc2c5be925edcb13804f35651a7b325acc (inputproto: upgrade to 2.3)
Branch: remotes/origin/master
Follows: 1.4_M4.final, 1.4_M4.rc1
Precedes:

-----

Regards,

Insop

On Fri, Mar 15, 2013 at 10:37 PM, Insop Song <insop.song@gmail.com> wrote:
> Hi,
>
> I am using HEAD of master, and I have this error after I use commit
>
> "
> commit 1ceb13dda11645229053fc4840954333f8910ba4
> Author: Martin Jansa <martin.jansa@gmail.com>
> Date:   Wed Mar 13 20:04:51 2013 +0100
> "
>
> Could anyone know about this?
>
>
> - my config
>
> Build Configuration:
> BB_VERSION        = "1.17.1"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-12.04"
> TARGET_SYS        = "i586-poky-linux"
> MACHINE           = "qemux86"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.3+snapshot-20130316"
> TUNE_FEATURES     = "m32 i586"
> TARGET_FPU        = ""
> meta
> meta-yocto        = "master:1ceb13dda11645229053fc4840954333f8910ba4"
> meta-realtime     = "schedtool:a766d16a1cf4da3c2dd13b8c7e53f89775733187"
> meta-yocto-bsp    = "master:1ceb13dda11645229053fc4840954333f8910ba4"
>
>
> - error output:
> ERROR: Function failed: BUILDSPEC (see
> /home/insop/mybuilds/meta-realtime/tmp/work/i586-poky-linux/neard/0.9-gitAUTOINC+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1/temp/log.do_package_write_rpm.31563
> for further information)
> ERROR: Logfile of failure stored in:
> /home/insop/mybuilds/meta-realtime/tmp/work/i586-poky-linux/neard/0.9-gitAUTOINC+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1/temp/log.do_package_write_rpm.31563
>
>
>
> - full output:
>
> ~/mybuilds/meta-realtime $ time bitbake core-image-realtime
> Loading cache: 100%
> |################################################################################################|
> ETA:  00:00:00
> Loaded 1121 entries from dependency cache.
> Parsing recipes: 100%
> |##############################################################################################|
> Time: 00:00:00
> Parsing of 813 .bb files complete (812 cached, 1 parsed). 1121
> targets, 27 skipped, 0 masked, 0 errors.
>
> Build Configuration:
> BB_VERSION        = "1.17.1"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-12.04"
> TARGET_SYS        = "i586-poky-linux"
> MACHINE           = "qemux86"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.3+snapshot-20130316"
> TUNE_FEATURES     = "m32 i586"
> TARGET_FPU        = ""
> meta
> meta-yocto        = "master:1ceb13dda11645229053fc4840954333f8910ba4"
> meta-realtime     = "schedtool:a766d16a1cf4da3c2dd13b8c7e53f89775733187"
> meta-yocto-bsp    = "master:1ceb13dda11645229053fc4840954333f8910ba4"
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: Function failed: BUILDSPEC (see
> /home/insop/mybuilds/meta-realtime/tmp/work/i586-poky-linux/neard/0.9-gitAUTOINC+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1/temp/log.do_package_write_rpm.31563
> for further information)
> ERROR: Logfile of failure stored in:
> /home/insop/mybuilds/meta-realtime/tmp/work/i586-poky-linux/neard/0.9-gitAUTOINC+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1/temp/log.do_package_write_rpm.31563
> Log data follows:
> | DEBUG: Executing python function sstate_task_prefunc
> | DEBUG: Python function sstate_task_prefunc finished
> | DEBUG: Executing python function do_package_write_rpm
> | DEBUG: Executing python function read_subpackage_metadata
> | DEBUG: Python function read_subpackage_metadata finished
> | DEBUG: Executing python function do_package_rpm
> | DEBUG: Executing python function write_specfile
> | NOTE: Not creating empty RPM package for neard-tests
> | NOTE: Creating RPM package for neard-dbg
> | NOTE: Not creating empty RPM package for neard-staticdev
> | NOTE: Creating RPM package for neard-dev
> | NOTE: Not creating empty RPM package for neard-doc
> | NOTE: Not creating empty RPM package for neard-locale
> | NOTE: Creating RPM package for neard
> | NOTE: Creating RPM package for neard
> | DEBUG: Python function write_specfile finished
> | DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common',
> 'common-linux', 'common-glibc', 'i586-linux', 'common']
> | DEBUG: Executing shell function BUILDSPEC
> | error: line 152: Illegal char '-' in EVR: Suggests: neard =
> 0.9-git0+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1
> | error: Package has no %description: neard-dbg.i586
> | Building target platforms: i586-poky-linux
> | DEBUG: Python function do_package_rpm finished
> | DEBUG: Python function do_package_write_rpm finished
> | ERROR: Function failed: BUILDSPEC (see
> /home/insop/mybuilds/meta-realtime/tmp/work/i586-poky-linux/neard/0.9-gitAUTOINC+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1/temp/log.do_package_write_rpm.31563
> for further information)
> ERROR: Task 1370
> (/home/insop/poky/meta/recipes-connectivity/neard/neard_0.9.bb,
> do_package_write_rpm) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 3322 tasks of which 3281 didn't need to
> be rerun and 1 failed.
> Waiting for 0 running tasks to finish:
>
> Summary: 1 task failed:
>   /home/insop/poky/meta/recipes-connectivity/neard/neard_0.9.bb,
> do_package_write_rpm
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
> real    0m27.611s
> user    0m30.158s
> sys     0m4.900s

