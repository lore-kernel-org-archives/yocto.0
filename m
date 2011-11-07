Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B03AE00307
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2011 08:01:20 -0800 (PST)
Received: from [128.224.252.2] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1RNRdO-0000x9-W2
	for yocto@yoctoproject.org; Mon, 07 Nov 2011 11:01:19 -0500
Date: Mon, 7 Nov 2011 11:01:13 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1111071058550.1246@localhost6.localdomain6>
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
Subject: do all recipes really need LIC_FILES_CHKSUM?
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
X-List-Received-Date: Mon, 07 Nov 2011 16:01:21 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  current poky ref manual seems pretty adamant about need for
LIC_FILES_CHKSUM:

"Note that this variable is mandatory for all recipes, unless the
LICENSE variable is set to "CLOSED".

but there's at least one counter-example,
meta-demoapps/recipes-graphics/pong-clock/pong-clock_1.0.bb:

=====

DESCRIPTION = "A clock combined with a game of pong"
LICENSE = "GPLv2+"
DEPENDS = "virtual/libx11 xdmcp xau"

SRC_URI = "file://pong-clock-no-flicker.c"

S = "${WORKDIR}"

do_compile () {
        ${CC} -o pong-clock pong-clock-no-flicker.c `pkg-config --cflags --libs x11 xau xdmcp`
}

do_install () {
        install -d ${D}${bindir}
        install -m 0755 pong-clock ${D}${bindir}
}

=====

so what's the story here?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

