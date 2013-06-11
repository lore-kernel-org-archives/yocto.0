Return-Path: <javiroman@kernel-labs.org>
Received: from paris.hostgo.com (unknown [64.71.164.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24696E01506
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 07:18:53 -0700 (PDT)
Received: from mail-pa0-f45.google.com ([209.85.220.45]:65156)
	by paris.hostgo.com with esmtpsa (TLSv1:RC4-SHA:128) (Exim 4.80.1)
	(envelope-from <javiroman@kernel-labs.org>) id 1UmPPQ-0004p6-6S
	for yocto@yoctoproject.org; Tue, 11 Jun 2013 10:18:52 -0400
Received: by mail-pa0-f45.google.com with SMTP id bi5so5552448pad.4
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 07:18:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=O9WS7WxOxrfDOLuveXno4N4gv9iUm6FRbLj3BEmrn94=;
	b=WtfEAiRwi4lN07YtHkIgQCR051XsMgncIdXoyPPRw/Um0cbs2QZ26QXiXLxbeRHAp+
	wjAjjhAlVOhc9lCcsayToX/Z3IizBaKGt3X3/k2mRqJSrSUE7GKHgj2DHAwO2yjeeSb0
	Js+PE/X8sHQVHo9lQZvJIXVDjyYUSmlblA1CALWVyDydRvKDT/54XyZgPCqpOc+C1tKx
	8CV+ZsU949EX8ewrpqdaAsa7N7wU2jC97WC+Wb4ZNcs5CWdsFo7NDv4KCuLlZ/JygVT4
	BEjPThPnJXhTDkaXhsN7NZq5PGIsIGeunfFZJ5g4Q9siDTnJgmYi+SKW35WZzdGXAHeN
	cOoQ==
X-Received: by 10.68.56.231 with SMTP id d7mr14879315pbq.49.1370960332430;
	Tue, 11 Jun 2013 07:18:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.252.134 with HTTP; Tue, 11 Jun 2013 07:18:12 -0700 (PDT)
From: Javi Roman <javiroman@kernel-labs.org>
Date: Tue, 11 Jun 2013 16:18:12 +0200
Message-ID: <CACWQdqCvEU3x0ctvUUrMhCAcoxnU0=SpVuW4E7Zo-ret9vidcA@mail.gmail.com>
To: yocto@yoctoproject.org
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - paris.hostgo.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - kernel-labs.org
X-Get-Message-Sender-Via: paris.hostgo.com: authenticated_id:
	javiroman@kernel-labs.org
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Custom kernel in Yocto/dylan branch.
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
X-List-Received-Date: Tue, 11 Jun 2013 14:18:54 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi!


I few years ago I used to work with OpenEmbedded (the classical
branch). The addition of new kernel recipes was easy for me,
nevertheless I'm unable to do similar things with the current
Yocto-dylan branch.

The current Yocto-dylan is based on Linux kernel 3.x branches, all the
documentation regarding add custom kernels or new kernel features are
based on those 3.x branches. However, I would like to use a 2.6.32
Linux kernel (it's a constraint for my project).

I'm using the following kernel recipe in my bsp:

linux/
      linux-yocto-abacus/
                 defconfig
       linux-yocto-abacus_2.6.32.bb

#####  linux-yocto-abacus_2.6.32.bb ####

inherit kernel
require recipes-kernel/linux/linux-yocto.inc

INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1"

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
SRC_URI_append =3D "file://defconfig"

PROVIDES =3D "virtual/kernel"

SRC_URI =3D "git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.g=
it;protocol=3Dgit;nocheckout=3D1"

LINUX_VERSION =3D "2.6.32"
LINUX_VERSION_EXTENSION =3D "-abacus"

# tag: v3.4    76e10d158efb6d4516018846f60c2ab5501900bc
# tag: v2.6.32 459b3d520991ec1b8e5ba68fbc4b206d602fee6e
SRCREV=3D"459b3d520991ec1b8e5ba68fbc4b206d602fee6e"

PR =3D "r1"
PV =3D "${LINUX_VERSION}+git${SRCPV}"

COMPATIBLE_MACHINE =3D "romley"

############ end ###################

When I build the kernel with:

# bitbake virtual/kernel

The kernel is downloaded from kernel.org, with the correct git tag
(v2.6.32) and is built with success. Nevertheless, the "defconfig" is
not properly added in the kernel configuration. If I run:

# bitbake virtual/kernel -c menuconfig

The ncurses menuconfig is not using the "defconfig" added by me.

The "defconfig" with all kernel configurations is a deprecated feature?
Which is the correct way to add a new kernel recipe?

Many thanks!
Javi Roman

