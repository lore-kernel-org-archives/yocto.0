Return-Path: <evadeflow@gmail.com>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A72EDE0027E
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2012 12:42:32 -0700 (PDT)
Received: by oagh2 with SMTP id h2so2915026oag.35
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2012 12:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=gTjbs/84/bG+WWlk/WPTDKy8hdXkgqp/16ohN4KLZXU=;
	b=trLwaUSeQbn8zIysnwIfeLULwAfji7c3x1K+snRftE7bgjZgYq9EFzVfXqMPPCHdOP
	mVoUEweOaeFkFZEtr7mGLS8/xpHQaLgdM64q6+WkaKHa/YOwlC+NXifIqEGnC8KGR9pn
	qKNmXtB8PUFk1tE1UWieYlaQnar1uxQSrKXQKZQLOIwZDT4pdQZEEHNqfHGJVdKg/BpE
	n3xdmq/b6vemhjzBM/QlIXKqeCeawZk7SJML15QpbH/R8bHLrSutpUF+8Df9aV0usjxF
	/bpcik4xFKCkKLrb1OdvtW0NX/pXHxaUMw7LDdLQmVTLARsR+iyTXQdmeSj2wMZFc3rC
	Qkxw==
MIME-Version: 1.0
Received: by 10.60.172.236 with SMTP id bf12mr4040001oec.23.1348774949761;
	Thu, 27 Sep 2012 12:42:29 -0700 (PDT)
Received: by 10.76.153.198 with HTTP; Thu, 27 Sep 2012 12:42:29 -0700 (PDT)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A70CC9@FMSMSX151.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A70CC9@FMSMSX151.amr.corp.intel.com>
Date: Thu, 27 Sep 2012 15:42:29 -0400
Message-ID: <CAMAb8ZN-0h8Smf6F0D7MGbh6=gJKbCAFhiijmN-+T8PHeNL2kw@mail.gmail.com>
From: Evade Flow <evadeflow@gmail.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: build failure on current
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 27 Sep 2012 19:42:32 -0000
Content-Type: text/plain; charset=ISO-8859-1

I'm new to Yocto, but I've seen similar errors that seem to be due to
differences in the version of tar on the build server.  Everything's
fine on this machine:

good% tar --version
tar (GNU tar) 1.26

but I get CRC errors sometimes on this one:

bad% otp-mmes-build% tar --version
tar (GNU tar) 1.22

The specific recipe I was having problems with was, I think,
perl-native. I couldn't untar/uncompress the perl archive in
build/downloads with tar 1.22, but it worked fine with tar 1.26. (I
don't have a solution, sorry. Around the same time I noticed this, I
found out that the image I was building was supposed to be built on
the denzil branch, so I just switched over to denzil and the problem
went away.)


On Thu, Sep 27, 2012 at 3:20 PM, Rifenbark, Scott M
<scott.m.rifenbark@intel.com> wrote:
> I am running through the build example for the QS and  hit a failure when
> trying to access git://git.yoctoproject.org/libowl;protocol=git.  I started
> with the tarball here:  http://autobuilder.yoctoproject.org/nightly/CURRENT
>
>
>


> Full transcript.
>
>
>
> srifenbark@scottrif-desktop:~$ cd
> poky-0b09e50810162a07ef0aecee91ee32b4a36334a3
> srifenbark@scottrif-desktop:~/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3$
> source oe-init-build-env
> You had no conf/local.conf file. This configuration file has therefore been
> created for you with some default values. You may wish to edit it to use a
> different MACHINE (target hardware) or enable parallel build options to take
> advantage of multiple cores for example. See the file for more information
> as
> common configuration options are commented.
>
> The Yocto Project has extensive documentation about OE including a reference
> manual
> which can be found at:
>     http://yoctoproject.org/documentation
>
> For more information about OpenEmbedded see their website:
>     http://www.openembedded.org/
>
> You had no conf/bblayers.conf file. The configuration file has been created
> for
> you with some default values. To add additional metadata layers into your
> configuration please add entries to this file.
>
> The Yocto Project has extensive documentation about OE including a reference
> manual
> which can be found at:
>     http://yoctoproject.org/documentation
>
> For more information about OpenEmbedded see their website:
>     http://www.openembedded.org/
>
>
>
> ### Shell environment set up for builds. ###
>
> You can now run 'bitbake <target>'
>
> Common targets are:
>     core-image-minimal
>     core-image-sato
>     meta-toolchain
>     meta-toolchain-sdk
>     adt-installer
>     meta-ide-support
>
> You can also run generated qemu images with a command like 'runqemu qemux86'
>
> srifenbark@scottrif-desktop:~/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3/build$
> bitbake -k core-image-sato
> Pseudo is not present but is required, building this first before the main
> build
> Parsing recipes: 100% |#########################################| Time:
> 00:00:48
> Parsing of 825 .bb files complete (0 cached, 825 parsed). 1129 targets, 22
> skipped, 0 masked, 0 errors.
>
> Build Configuration:
> BB_VERSION        = "1.15.3"
> TARGET_ARCH       = "i586"
> TARGET_OS         = "linux"
> MACHINE           = "qemux86"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.2+snapshot-20120927"
> TUNE_FEATURES     = "m32 i586"
> TARGET_FPU        = ""
> meta
> meta-yocto
> meta-yocto-bsp    = "<unknown>:<unknown>"
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> NOTE: Tasks Summary: Attempted 63 tasks of which 0 didn't need to be rerun
> and all succeeded.
> Loading cache: 100% |###########################################| ETA:
> 00:00:00
> Loaded 1130 entries from dependency cache.
>
> Build Configuration:
> BB_VERSION        = "1.15.3"
> TARGET_ARCH       = "i586"
> TARGET_OS         = "linux"
> MACHINE           = "qemux86"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.2+snapshot-20120927"
> TUNE_FEATURES     = "m32 i586"
> TARGET_FPU        = ""
> meta
> meta-yocto
> meta-yocto-bsp    = "<unknown>:<unknown>"
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> NOTE: validating kernel configuration
>
> WARNING: The recipe is trying to install files into a shared area when those
> files already exist. Those files are:
>
> /home/scottrif/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3/build/tmp/sysroots/x86_64-linux/usr/share/sgml/openjade-1.3.2/catalog
> WARNING: The recipe is trying to install files into a shared area when those
> files already exist. Those files are:
>
> /home/scottrif/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3/build/tmp/sysroots/qemux86/usr/include/python2.7/pyconfig.h
>
> /home/scottrif/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3/build/tmp/sysroots/qemux86/usr/lib/libpython2.7.so
>
> /home/scottrif/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3/build/tmp/sysroots/qemux86/usr/lib/libpython2.7.so.1.0
>
> /home/scottrif/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3/build/tmp/sysroots/qemux86/usr/lib/python2.7/config/Makefile
> WARNING: Failed to fetch URL git://git.yoctoproject.org/libowl;protocol=git,
> attempting MIRRORS if available
> ERROR: Fetcher failure: Fetch command failed with exit code 2, output:
>
> gzip: stdin: invalid compressed data--crc error
>
> gzip: stdin: invalid compressed data--length error
> tar: Skipping to next header
> tar: Child returned status 1
> tar: Error is not recoverable: exiting now
>
> ERROR: Function failed: Fetcher failure for URL:
> 'git://git.yoctoproject.org/libowl;protocol=git'. Unable to fetch URL from
> any source.
> ERROR: Logfile of failure stored in:
> /home/scottrif/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3/build/tmp/work/i586-poky-linux/libowl-0.1+git1+6ebc8ac8f8575278dd40a535cadefa26374e44b1-r0/temp/log.do_fetch.1973
> ERROR: Task 2306
> (/home/scottrif/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3/meta/recipes-sato/libowl/libowl_git.bb,
> do_fetch) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 5560 tasks of which 339 didn't need to be
> rerun and 1 failed.
>
> Summary: 1 task failed:
>
> /home/scottrif/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3/meta/recipes-sato/libowl/libowl_git.bb,
> do_fetch
> Summary: There were 3 WARNING messages shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
> srifenbark@scottrif-desktop:~/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3/build$
>
>
>
>
>
> Scott Rifenbark
>
> Intel Corporation
>
> Yocto Project Documentation
>
> 503.712.2702
>
> 503.341.0418 (cell)
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

