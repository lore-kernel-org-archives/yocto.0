Return-Path: <insop.song@gmail.com>
Received: from mail-we0-f169.google.com (mail-we0-f169.google.com
	[74.125.82.169]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 5C066E0146F
	for <yocto@yoctoproject.org>; Mon,  4 Mar 2013 22:55:19 -0800 (PST)
Received: by mail-we0-f169.google.com with SMTP id t11so5670916wey.0
	for <yocto@yoctoproject.org>; Mon, 04 Mar 2013 22:55:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:content-type;
	bh=rFHJvcpBvIQSFwQ9Tl9FI4wFLQAqEq7/HYSd1SP0R1I=;
	b=ojC8o0DijAt3wWNwzWFJWT8BHxTjHsPvZlQQNnwvvaLkKb7YAA4xbMsN2ary8ucbOR
	Lo9KDpEfsq6K/eHPUDTyQ4ezD8ec0mS7ZquCEBKRjq4sBMW3k7rQE/u2wDUr5eBc0WHi
	oCxr+t/9N4oMXFuXiArBsrT57JhSSphpKLCM4Iqeor8tXC/YpFtVo6XUyjhqt8KG9I5l
	HnThI6BJjN+wW3loEewOke32bvXoCMpsmNM4h0Xa/rUAANwFyhowcDqHj8hrAh9G8tP7
	FVYlVMJbysfz6x/OewCtO57AZ4/AKKyTEMLaWZtaLGH3gGl7yifSxt6Eo4goyY1qCIul
	xmlQ==
X-Received: by 10.180.82.70 with SMTP id g6mr15985120wiy.21.1362466517227;
	Mon, 04 Mar 2013 22:55:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Mon, 4 Mar 2013 22:54:57 -0800 (PST)
In-Reply-To: <CACzyEJ_3BRjn4s7ADey9uuQpGhgWKeuuyxGVL09HuLAzJ3LqTQ@mail.gmail.com>
References: <CACzyEJ_3BRjn4s7ADey9uuQpGhgWKeuuyxGVL09HuLAzJ3LqTQ@mail.gmail.com>
From: Insop Song <insop.song@gmail.com>
Date: Mon, 4 Mar 2013 22:54:57 -0800
Message-ID: <CACzyEJ_uHp7JQQG=Ufec5ipXdb5aEyWrp38jJFhF+qofsGkZ+Q@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Wed, 06 Mar 2013 18:09:18 -0800
Subject: A question on adding a new program to a new meta layer
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
X-List-Received-Date: Tue, 05 Mar 2013 06:55:19 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am preparing a new meta layer for testing and promoting a
sched_deadline scheduler, called "meta-dl". I am planning to add
scheduler testing tools and different kernel versions as well.
- http://insop.github.com/meta-dl/

With the help of hands-on kernel lab (thank you Tom and Darren), I am
able to make kernel with sched_deadline enabled.


Now, I am having some trouble of adding testing tools to this meta-dl,
and hope I can get some help from you.

- problem: adding a new software into my meta-dl layer

- symtom and questions?
1. bitbake core-image-minimal (normal image build) won't include the
additional program that I listed in .bb file below
2. If I do "bitbake schedtool-dl -c install" it builds and install,
but at "i586" location instead of my machine staging rootfs
(dl-qemux86)



- Here is my .bb file that pulls an additional program.
https://github.com/insop/meta-dl/blob/sched-dl-V7/recipes-tools/schedtool-dl/schedtool-dl.bb
===
DESCRIPTION = "schedtool-dl (scheduler test tool) for deadline scheduler"
HOMEPAGE = "https://github.com/insop/schedtool-dl"
SECTION = "base"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM =
"file://Makefile;endline=55;md5=e4b4e8ed9c2132e1d727a1bb5e3bd984"
PR = "r1"

SRC_URI = "git://github.com/insop/schedtool-dl.git;protocol=git"
SRCREV = "${AUTOREV}"

S = "${WORKDIR}/git"

do_compile() {
        oe_runmake
}

do_install() {
        oe_runmake install DESTDIR=${D}
}

PARALLEL_MAKE = ""

BBCLASSEXTEND = "native"

COMPATIBLE_MACHINE_dl-qemux86 = "dl-qemux86"
====


- I've updated my conf/layer.conf file to include above file
https://github.com/insop/meta-dl/blob/sched-dl-V7/conf/layer.conf
====
# We have a conf and classes directory, add to BBPATH
BBPATH := "${BBPATH}:${LAYERDIR}"

# We have a recipes directory, add to BBFILES
BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
        ${LAYERDIR}/recipes-*/*/*.bbappend"

BBFILE_COLLECTIONS += "dl-qemux86"
BBFILE_PATTERN_dl-qemux86 := "^${LAYERDIR}/"
BBFILE_PRIORITY_dl-qemux86 = "6"
=====



Thank you.

Regards,

Insop


- ref:
1. sched_deadline:
https://events.linuxfoundation.org/events/linuxcon-europe/song
2. sched_deadline:
http://events.linuxfoundation.org/images/stories/slides/elc2013_kobayashi.pdf?a

