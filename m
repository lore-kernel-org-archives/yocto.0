Return-Path: <wpdster@gmail.com>
Received: from mail-pb0-f41.google.com (mail-pb0-f41.google.com
	[209.85.160.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFC92E00BE0
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 08:55:39 -0700 (PDT)
Received: by mail-pb0-f41.google.com with SMTP id jt11so4119027pbb.14
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 08:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=rltk4UW4C5Fe/F5gRdfJ2sICm54SDS2ALuDitVWYoWo=;
	b=mwYBYaSXQtR3RpkXMwywo7hkOOQU7F58ABsJSi3w1DMSKSJWbJoM64xJ7uPcxx7m/Z
	60XYdORniHFTpfhy1Q0xGx1SYzgey9Zt0UNgBrziMgLsw3KDLysRTdgeoE+Pt52FZ0EY
	NQhRV8mEinIi1I+qlp8ntxkTf20SFiauGmJDSSAcMIxpqPzyQXqGoPpV52IjUTYZSJyM
	X4iC7/MCJQ0PaZKYHt5Gg6hj/wLOQNhoCyBqMi9YXyAlyAhkMFaYXpfkYkpDg7+IgPs+
	cZcgqtHjUlr0duWP4cID2D4Iljp5VAptj1ILlr1k08GUV1jzB/rLk1npIr8QOoW0OvuT
	FRTA==
X-Received: by 10.66.141.144 with SMTP id ro16mr20388543pab.131.1397145338815; 
	Thu, 10 Apr 2014 08:55:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.70.32.161 with HTTP; Thu, 10 Apr 2014 08:55:08 -0700 (PDT)
From: Patrick Doyle <wpdster@gmail.com>
Date: Thu, 10 Apr 2014 11:55:08 -0400
Message-ID: <CAF_dkJABdHQcftHoPJ1EO_bdjahyYJ84HZL5V+mErqzQaTKJSQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Why increment PRINC by 2?
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
X-List-Received-Date: Thu, 10 Apr 2014 15:55:39 -0000
Content-Type: text/plain; charset=ISO-8859-1

The BSP guide gives the following helpful tip for installing a custom
/etc/network/interfaces file (see
https://www.yoctoproject.org/docs/current/bsp-guide/bsp-guide.html#customizing-a-recipe-for-a-bsp
-- and thank you, BTW -- that addressed a specific problem I needed to
solve):

1. Edit the init-ifupdown_1.0.bbappend file so that it contains the following:

     FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
     PRINC := "${@int(PRINC) + 2}"


The append file needs to be in the meta-xyz/recipes-core/init-ifupdown
directory.

2. Create and place the new interfaces configuration file in the BSP's
layer here:

     meta-xyz/recipes-core/init-ifupdown/files/xyz/interfaces

In my continuing attempt to understand the mindset of Yocto
practitioners, I would appreciate any light folks can shed on this... it
opens up so many questions to me...

1) Why does FILESEXTRAPATHS exist?  The documentation says, "You can
extend FILESPATH variable by using FILESEXTRAPATHS."  Errr, can't one
extend FILESPATH with

FILESPATH = "blah:" + $FILESPATH

or
FILESPATH_prepend = "blah:"

I see that the documentation for FILESPATH specifically states:

"Do not hand-edit the FILESPATH variable. If you want the build system
to look in directories other than the defaults, extend the FILESPATH
variable by using the FILESEXTRAPATHS variable."

but that doesn't help me understand why this method is preferred for
extending FILESPATH.

2) Why does PRINC exist?  The documentation says that PRINC "causes
the PR variable of .bbappend files to dynamically increment" and that
"This increment minimizes the impact of layer ordering."  I guess that
means that the init-ifupdown_1.0.bb file has some revision (which I
think is "1.0") and that, when my .bbappend file is appended to it,
causes the recipe to effectively be "3.0".  Why do I care?  If there
is an "init-ifupdown_5.0.bb" file someplace in my search path, won't I
get that one anyway?  How does this minimize the impact of layer
ordering?

Oh yeah, and why increment by 2?  Why not 1, or pi?

I guess I only had 2 questions... but 1,000,000 subquestions :-)

Thanks for any tips you can give me.

--wpd

