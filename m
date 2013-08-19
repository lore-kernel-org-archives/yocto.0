Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-dupuy.atl.sa.earthlink.net
	(elasmtp-dupuy.atl.sa.earthlink.net [209.86.89.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8392AE003E2
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2013 15:52:28 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=dl98tIx/m7IOEC3eZ7s2/5A3wgL0cXGaWACDD+MJA7mukF07Nhb+kI/74ZTsfDai;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-dupuy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1VBYJH-0005h8-1u
	for yocto@yoctoproject.org; Mon, 19 Aug 2013 18:52:27 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Mon, 19 Aug 2013 15:52:27 -0700
Message-ID: <A3D4719B266E4F519452EFCF893FEF4A@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac6dLsbKCQ2GaaqQR461DhdtRGSGuQ==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688ef98d54d2f197da3a7cc1ceec4d1ff45350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Trying to tweak a build with a setup.cfg file
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
X-List-Received-Date: Mon, 19 Aug 2013 22:52:29 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm trying to build python-matplotlib from the Danny branch of
meta-openembedded/meta-oe/recipes-devtools/python. I need to add a
setup.cfg file to tweak the build, but I don't know how to get it into the
right place.

I put the setup.cfg into a python-matplotlib subdirectory in my recipes
directory, and added a python-matplotlib_1.1.0.bbappend file which
contains the following lines:

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
PRINC := "${@int(PRINC) + 2}"
SRC_URI += "file://setup.cfg"

The file is being copied into
.../work/armv7a-vfp-neon-poky-linux-gnueabi/python-matplotlib-1.1.0-r3
rather than
.../work/armv7a-vfp-neon-poky-linux-gnueabi/python-matplotlib-1.1.0-r3/mat
plotlib-1.1.0 where it needs to be. How do I push it down a level?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 
 


