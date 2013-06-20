Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-mealy.atl.sa.earthlink.net
	(elasmtp-mealy.atl.sa.earthlink.net [209.86.89.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D44E0E00348
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 15:08:52 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=QgpdYlben9HCpGUDFKH4NFEZmVaPUxhaRLSHrcZgwVZ5vqYLxLrkrNHt7SJjku03;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-mealy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1Upn2B-00039E-E0
	for yocto@yoctoproject.org; Thu, 20 Jun 2013 18:08:51 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Thu, 20 Jun 2013 15:08:57 -0700
Message-ID: <8DA5A3FB8F6D4E29B99BD61C40AF9442@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac5uAsJvkpOJSvcoQnKNp1XKpasTbg==
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688265dc522cb29954fda31964111ec7c4c350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Compiling a simple command
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
X-List-Received-Date: Thu, 20 Jun 2013 22:08:55 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I've tried to add a single small executable to my image, based on what it
says in 5.3.1. of the Project Development Manual, and while the image gets
built with no error messages, it never compiles my executable. I'm not doing
_exactly_ what it says, so I assume some difference is accounting for this
failure. What I'm doing different:

1) Since I'm only adding one tiny little program to an otherwise default
image, I'm not creating a separate .bb file for it, but placing it in the
top-level .bb file that I invoke with the bitbake command.

2) Since I only have one .bb file, I'm sticking it in the layer directory,
not two levels down, and adding ${LAYERDIR}/*.bb to BBFILES.

It's finding the recipe okay, because the image is being built, but it's
never executing do_compile or do_install. The recipe looks like this:

-- 
require recipes-core/images/core-image-base.bb

DESCRIPTION = "A basic image with a realtime kernel."
DEPENDS = "linux-yocto-rt"
LICENSE = "MIT"
PR = "r0"

SRC_URI = "file://fastuart.cpp"

S = "${WORKDIR}"

do_compile() {
    ${CC} fastuart.cpp -o fastuart
}

do_install() {
    install -d ${D}${bindir}
    install -m 0755 fastuart ${D}${bindir}
}
-- 

The source is one level down from the recipe file, in files/fastuart.cpp. Is
there some reason that one can't do a compilation from a top-level recipe
that makes an image? Or is it because of the location of the .bb file in the
tree? Or am I doing something else wrong?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 
 


