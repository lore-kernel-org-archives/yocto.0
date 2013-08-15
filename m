Return-Path: <lschwab@xeralux.com>
Received: from mail-ea0-f182.google.com (mail-ea0-f182.google.com
	[209.85.215.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 227A6E01440
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2013 11:15:29 -0700 (PDT)
Received: by mail-ea0-f182.google.com with SMTP id o10so522782eaj.41
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2013 11:15:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=bl/Xm2PguyxwQFvdFnj9D0Xr5ENYw8j1w0ArRLjv0bY=;
	b=BbiszOay2PCF33NlY4uFHrzMJlMjSPjIpwscWNAPy4BHEBAmqayZvHlyG4j166HP1i
	4McoDThGsWDIiAdfZRZfSl23WRUMz6DDdKgyO7RYoTuqLzGO8kJ3NlZbEiNAz5KnzScQ
	p+R9ZYCX/jcBqXkt6lrlPPZwVOpTlc/8b2TOfrFbKhjggDIwPwBneAzQikvQBDwf4s5b
	KskqwEfDAUUhjVS9cad8CDqTiJRyy8rCgsJFUN4p0JRLHfPspr2KHz3Xwsus11POgkVO
	4oBfnf4joB4pXc7/2xq5F7svtAnQzh8/QPjH0BU+ZVq6cW0z+fgF9/xhIvfdGyP8OblP
	vb7Q==
X-Gm-Message-State: ALoCoQmLQcGF+va/xwsBLoW1vmffPIlNicOLWKbWuFimCMtgC0j7CuwvKoi5qoTs/nNG8Bvae6Or
MIME-Version: 1.0
X-Received: by 10.14.198.73 with SMTP id u49mr24653479een.13.1376590527881;
	Thu, 15 Aug 2013 11:15:27 -0700 (PDT)
Received: by 10.14.139.65 with HTTP; Thu, 15 Aug 2013 11:15:27 -0700 (PDT)
Date: Thu, 15 Aug 2013 11:15:27 -0700
Message-ID: <CALb224_XTEf-9eX9d9ERZpHv7RRm_hGM8N8N6d+x-oSswrH-qA@mail.gmail.com>
From: Leo Schwab <lschwab@sensity.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 15 Aug 2013 11:22:22 -0700
Subject: How Does Yocto Fill In UBOOT_MACHINE?
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
X-List-Received-Date: Thu, 15 Aug 2013 18:15:30 -0000
Content-Type: text/plain; charset=UTF-8

Two months ago I never heard of Yocto -- now I are one.  I'm
attempting to create a layer and pile of recipes that will allow us to
adapt Freescale's i.MX support to our custom board.  Right now we're
starting out with one of their evaluation boards, but will eventually
transition to our own.  In anticipation of arriving hardware, I
created a new config for u-boot by copying an existing config and
renaming it.  The new config builds properly, but I don't know why.
Grepping through the Yocto sources hasn't been very enlightening, and
I was hoping I could get some insights into what's going on.

I will try to be as succinct as I can (some of the names have been
changed to protect the innocent).  We initially started by using the
Freescale-furnished build targets directly.  I created a new layer
(we'll call it meta-belis3), and in it created this
conf/machine/ourboard.conf (apologies in advance for inappropriate
line wrapping; GMail offers no control over this):

----
#@TYPE: Machine
#@NAME: ourboard
#@DESCRIPTION: Based on machine configuration for Freescale i.MX6DL SABRE SD

include conf/machine/include/imx-base.inc
include conf/machine/include/tune-cortexa9.inc

SOC_FAMILY = "mx6:mx6dl"

PREFERRED_PROVIDER_u-boot = "u-boot-imx"

UBOOT_MACHINE = "mx6dl_sabresd_config"
UBOOT_SUFFIX = "bin"
UBOOT_PADDING = "2"

SERIAL_CONSOLE = "115200 ttymxc0"

MACHINE_FEATURES += " pci wifi"
----

This is basically a copy of Freescale's
meta-fsl-arm/conf/machine/imx6dlsabresd.conf file, with trivial
changes.  Inside the build directory's conf/local.conf, I set MACHINE
to 'ourboard'.  This has worked for several weeks now.

Yesterday, following Freescale's docs, I started making mods to u-boot
to create a separate build target for our board.  The result is that I
now have a working u-boot build target named 'mx6_ourboard_config".
With that done, I created a .bbappend file to make the target
available (in a file named
meta-belis3/recipes-bsp/u-boot/u-boot-imx_2009.08.bbappend):

----
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append_ourboard = "file://u-boot-ourboard.patch"

UBOOT_MACHINE_ourboard = "mx6_ourboard_config"
----

I then ran 'bitbake u-boot', and was rewarded with a u-boot image
built for 'ourboard' -- the logs confirm it was built using the target
mx6_ourboard_config.

...Except I never told it to build 'ourboard'; I haven't modified
conf/machine/ourboard.conf yet.  It should still be building
mx6dl_sabresd_config.  So UBOOT_MACHINE is magically picking up a
different value.  If I remove my .bbappend file, then it resumes using
the target mx6dl_sabresd_config.

So:  What are the rules governing how UBOOT_MACHINE acquires its final
value?  What did I neglect to consider?  Is my .bbappend bogus?  Is
there some magic setting buried somewhere else I need to be aware of?
Thank you in advance for all suggestions.

Schwab

