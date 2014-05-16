Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2ADC2E00B68; Fri, 16 May 2014 04:24:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,RDNS_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (auslands-kv[at]gmx.de)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from plane.gmane.org (unknown [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95FFEE00975
	for <yocto@yoctoproject.org>; Fri, 16 May 2014 04:23:59 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1WlGF3-0005d6-1C
	for yocto@yoctoproject.org; Fri, 16 May 2014 13:23:57 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 16 May 2014 13:23:57 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 16 May 2014 13:23:57 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Fri, 16 May 2014 13:23:45 +0200
Message-ID: <ll4sg1$jb0$1@ger.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
Subject: Help with building app recipe
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
X-List-Received-Date: Fri, 16 May 2014 11:24:03 -0000
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 7bit

Hello

I am trying to build a simple recipe for a package called "pyotherside".
It currently looks like this:

------------------------------------------------------------------------
SUMMARY = "Python3 bindings for Qt5"
DESCRIPTION = "New framework for including pyhton interpreter into Qt5 apps"
HOMEPAGE = "http://thp.io/2011/pyotherside/"
LICENSE = "MIT"
LIC_FILES_CHKSUM =
"file://${COMMON_LICENSE_DIR\}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

PV = "1.2+git${SRCPV}"

SRCREV = "87e5eaf4707261dfcb37d7daadef018266c83d5a"

SRC_URI = "git://github.com/thp/pyotherside.git;branch=master;protocol=git \
           "
S = "${WORKDIR}/git/"

DEPENDS = "qtdeclarative python3 python3-native"
RDEPENDS_${PN} = "qtdeclarative-qmlplugins"

require recipes-qt/qt5/qt5.inc
------------------------------------------------------------------------


It is WIP, so e.g. the license is stil wrong.

The package depends on Qt5 and Python3.

I am currently experiencing two (rather small) problems:

1.) the configure step does not find "python3-config". It is located in
tmp/sysroots/i686-linux/usr/bin/python3-native

If I do a devshell and edit run.do_configure, I can add this path to the
PATH env variable, and then everything works.

How can I modify my recipe, so that this path is automatically added?

2.) The "python3-config" script just uses "#!/usr/bin/env python" to
define its interpreter, so the system starts the script with python2. If
I change the script manually, it works.

What would be the correct way to change my receipt to make it work? Or
would I need to change the python3 recipe to patch this file?

Thanks for your help!

Michael

P.S.: Seems, pyotherside is working nicely...


