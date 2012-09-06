Return-Path: <evadeflow@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39E59E01509
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 12:22:49 -0700 (PDT)
Received: by dadz8 with SMTP id z8so1455300dad.35
	for <yocto@yoctoproject.org>; Thu, 06 Sep 2012 12:22:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=23CuHcABHHNwqFvJK8nDi6ssTIPRuRwlcrmDqtgzL1s=;
	b=rRGn7Z8NJsV5YhDnk2F741n3G5twCMeR1t2bV2PXg3JJkaxEgGKnJJUQCHAqd+W7zN
	xPHzzxDaWdiR2u7Obz565pweX863papXgGQtyNuhtoToYWJ9gUS2G9/jEO6KHmjCwWFz
	s7cLFAMtbvW0Xx8fCo/moSgSqGqipDKNDKkt7LLwIvrDOcSqDCYtj1LqOHiFqIDSyyx2
	Z0waQwP7qjD5/O8t/0pYwb56K7nPxpjjsYntQgdl5sllg/Ac/i21C8Z9rmDDWMEFxNLx
	5NpNANNgdXWbsuTKUFuygylmYn2DwtywIFWU7E/vveZietDI4BPFlki71NnQsUsF0P7+
	mV/A==
MIME-Version: 1.0
Received: by 10.66.85.70 with SMTP id f6mr4750330paz.7.1346959369042; Thu, 06
	Sep 2012 12:22:49 -0700 (PDT)
Received: by 10.66.90.42 with HTTP; Thu, 6 Sep 2012 12:22:48 -0700 (PDT)
Date: Thu, 6 Sep 2012 15:22:48 -0400
Message-ID: <CAMAb8ZNh8zUQnPuhMK8fkPT5QZuBdypDVYb8BudqT9Dc2TbT3g@mail.gmail.com>
From: Evade Flow <evadeflow@gmail.com>
To: yocto@yoctoproject.org
Cc: Florin Sarbu <florin.sarbu@windriver.com>
Subject: ERROR: Nothing RPROVIDES 'libsegfault'
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
X-List-Received-Date: Thu, 06 Sep 2012 19:22:49 -0000
Content-Type: text/plain; charset=ISO-8859-1

I'm seeing this error while trying to 'bitbake discovery-image' from the
meta-ivi layer, according to the instructions here:

  - http://git.yoctoproject.org/cgit/cgit.cgi/meta-ivi/tree/README.md

The complete output looks like this:

Loading cache...done.
Loaded 1162 entries from dependency cache.
Parsing recipes...done.
Parsing of 858 .bb files complete (857 cached, 1 parsed). 1159
targets, 39 skipped, 0 masked, 0 errors.

Build Configuration:
BB_VERSION        = "1.15.3"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "vexpressa9"
DISTRO            = "poky-ivi-systemd"
DISTRO_VERSION    = "E-0.2+snapshot-20120906"
TUNE_FEATURES     = "armv7a vfp neon cortexa9"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "master:0f55a5868457300a3defc7fa7451ef191d19e018"
meta-ivi          = "master:d2be84764e15003603f08e950308dae7d0ffa9a2"
meta-systemd      = "master:ff33e6271934c747396c307e51dc3e5a5a1f75b8"

NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'libsegfault' (but
/media/acme/remus/poky-git/meta/recipes-core/packagegroups/packagegroup-core-standalone-sdk-target.bb
RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'libsegfault' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['libsegfault']
NOTE: Runtime target 'packagegroup-core-standalone-sdk-target' is
unbuildable, removing...
Missing or unbuildable dependency chain was:
['packagegroup-core-standalone-sdk-target', 'libsegfault']
ERROR: Required build target 'discovery-image' has no buildable providers.
Missing or unbuildable dependency chain was: ['discovery-image',
'packagegroup-core-standalone-sdk-target', 'libsegfault']

Summary: There were 2 ERROR messages shown, returning a non-zero exit code.


Being fairly new to Yocto/bitbake, I'm not sure how to begin
troubleshooting this. Any suggestions?  (Note: this is from poky master
as of this morning. It may be that meta-ivi doesn't--and isn't intended
to--work with the bleeding edge poky sources. I'm just trying to get my
head around how to sort out conflicts like this...)

