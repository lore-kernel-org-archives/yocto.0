Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D731E00294
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 12:13:08 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:45597 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Tisfz-000480-Lg
	for yocto@yoctoproject.org; Wed, 12 Dec 2012 15:13:07 -0500
Date: Wed, 12 Dec 2012 15:12:59 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1212121507090.13855@oneiric>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: SRC_URI and appending and a "style guide"?
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
X-List-Received-Date: Wed, 12 Dec 2012 20:13:08 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  it's a pedantry-laden day today so i'm going to continue to whine
about aesthetics.  what about a yocto style guide for coding style
recommendations?  for example, consider the variations:

poky/meta/recipes-support/libcroco/libcroco_0.6.3.bb:SRC_URI_append = " file://croco.patch;apply=yes \
poky/meta/recipes-support/attr/ea-acl.inc:SRC_URI += "file://relative-libdir.patch;striplevel=0 \
poky/meta/recipes-support/db/db_5.3.15.bb:SRC_URI += "file://arm-thumb-mutex_db5.patch;patchdir=.."
poky/meta/recipes-sato/leafpad/leafpad_0.8.18.1.bb:SRC_URI_append_poky = " file://owl-menu.patch;apply=yes "
poky/meta/recipes-sato/puzzles/oh-puzzles_git.bb:SRC_URI_append_poky = " file://oh-puzzles-owl-menu.patch;striplevel=0 "

  in the above, you have three different variations for appending to
SRC_URI.  i don't think it would be clear to a reader if there was any
difference between "+=" and "_append", other than that "_append"
forces you to add the space yourself while "+=" doesn't.  of course,
"_append_poky" is self-explanatory.

  so is there a *preferred* form for things like that?  is it written
down somewhere?  should it be?  just because it works for perl doesn't
always mean that "there's more than one way to do it" is a good idea.
:-)

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

