Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C88CE009C8; Thu,  4 Jun 2015 03:48:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (auslands-kv[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52757E007B6
	for <yocto@yoctoproject.org>; Thu,  4 Jun 2015 03:48:10 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Z0Sgn-00065y-QT
	for yocto@yoctoproject.org; Thu, 04 Jun 2015 12:47:57 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 04 Jun 2015 12:47:57 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 04 Jun 2015 12:47:57 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Thu, 04 Jun 2015 12:47:44 +0200
Message-ID: <55702CD0.5030909@gmx.de>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
Subject: Kernel config fragments are no longer applied after update to Fido
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
X-List-Received-Date: Thu, 04 Jun 2015 10:48:15 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello

I have the following kernel recipe, which is based on some help from
Bruce Ashfield last year:

-------------------------------------------------------------
inherit kernel
require recipes-kernel/linux/linux-yocto.inc

SUMMARY = "Linaro Kernel 3.14 with additional machine specific patches"

SRCREV = "91d5e90284ee69d219872e3ae42ae0eac417f7e9"
LOCALVERSION = "-cubox-i+linux4kix+${SRCPV}"

DEPENDS += "lzop-native bc-native"

FILESEXTRAPATHS_prepend := "${THISDIR}/linux-cubox-i:"

SRC_URI = "file://defconfig \
           file://videoin.cfg \
           file://dvb.cfg \
           file://networking.cfg \
           file://wlan.cfg \
           file://dm-crypt.cfg \
           file://no-caam.cfg \
           file://leds.cfg \
           file://mod-to-builtin.cfg \
           file://watchdog-nowayout.cfg \
           file://brcmfmac4330-sdio.bin \
           file://brcmfmac4330-sdio.txt \
"

SRC_URI +=
"git://github.com/linux4kix/linux-linaro-stable-mx6.git;branch=${SRCBRANCH}"
SRCBRANCH ?= "linux-linaro-lsk-v3.14-mx6"

COMPATIBLE_MACHINE = "(cubox-i)"

KERNEL_IMAGETYPE_cubox-i = "zImage"

SRCREV_machine = "${SRCREV}"
--------------------------------------------------------------


This worked nicely under yocto daisy. Now, after I migrated my recipes
to yocto fido, the recipe no longer seems to include the kernel
fragments, i.e. everything runs without errors, but the fragments are
not applied. (They are, however, copied to the build directory.)

Any idea, what the problem is or how to debug/solve it?

Thanks in advance

Michael


