Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12BC5E00BE9; Fri,  6 Jun 2014 04:17:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (auslands-kv[at]gmx.de)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA5EBE00B94
	for <yocto@yoctoproject.org>; Fri,  6 Jun 2014 04:17:10 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Wss8y-0003un-BP
	for yocto@yoctoproject.org; Fri, 06 Jun 2014 13:17:08 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 06 Jun 2014 13:17:08 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 06 Jun 2014 13:17:08 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Fri, 06 Jun 2014 13:16:56 +0200
Message-ID: <lms7v8$cp2$1@ger.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
Subject: Hmm, possible bug in poky?
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
X-List-Received-Date: Fri, 06 Jun 2014 11:17:16 -0000
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 7bit

I get the following error:

WARNING: Failed to fetch URL file://defconfig, attempting MIRRORS if
available
ERROR: Fetcher failure: Unable to find file file://defconfig anywhere.
The paths that were searched were:

/home/ubuntu/yocto/sources/meta-omnisonix/recipes-kernel/linux/linux-cubox-i-3.10.30/poky
...
    /home/ubuntu/yocto/sources/meta-omnisonix/recipes-kernel/linux/files/arm

/home/ubuntu/yocto/sources/meta-omnisonix/recipes-kernel/linux/linux-cubox-i-3.10.30/

/home/ubuntu/yocto/sources/meta-omnisonix/recipes-kernel/linux/linux-cubox-i-3.10.30-linux4kix/

/home/ubuntu/yocto/sources/meta-omnisonix/recipes-kernel/linux/linux-cubox-i/
    /home/ubuntu/yocto/sources/meta-omnisonix/recipes-kernel/linux/files/
    /home/ubuntu/yocto/downloads/
ERROR: Function failed: Fetcher failure for URL: 'file://defconfig'.
Unable to fetch URL from any source.


Now, the directory:


/home/ubuntu/yocto/sources/meta-omnisonix/recipes-kernel/linux/linux-cubox-i-3.10.30/

which is listed above, contains the "missing" file ("defconfig").

Hmm, strange...



Here are my recipes:

linux-cubox-i_3.10.30.inc:
------------------------------------
inherit kernel
require recipes-kernel/linux/linux-yocto.inc

SUMMARY = "Linaro Kernel 3.10.30 with additional machine specific patches"

SRCBRANCH ?= "linux-linaro-lsk-mx6"

FILESEXTRAPATHS_prepend += "${THISDIR}/${PN}-3.10.30:"

SRC_URI = "file://defconfig \
           file://videoin.cfg \
           file://networking.cfg \
           file://wlan.cfg \
           file://dm-crypt.cfg \
           file://no-caam.cfg \
           file://leds.cfg \
           file://mod-to-builtin.cfg \
           file://brcmfmac4330-sdio.bin \
           file://brcmfmac4330-sdio.txt \
"

do_configure_append () {
    cd ${S}
    mkdir firmware/brcm
    cp ../brcmfmac4330-sdio.bin ./firmware/brcm/
    cp ../brcmfmac4330-sdio.txt ./firmware/brcm/
}

COMPATIBLE_MACHINE = "(cubox-i)"

KERNEL_IMAGETYPE_cubox-i = "zImage"
KERNEL_DEVICETREE_cubox-i = "imx6dl-cubox-i.dtb imx6q-cubox-i.dtb"

SRCREV_machine = "${SRCREV}"
------------------------------------


linux-cubox-i_3.10.30.bb:
------------------------------------
include linux-cubox-i_3.10.30.inc

SRCREV = "592b2d941dc3ecb6335d6820757340ffb5a192c8"
#SRCREV = "860304ab6e749777523f3714d18c4c7d39b728fa"
LOCALVERSION = "-cubox-i+SolidRun+${SRCPV}"

SRC_URI +=
"git://github.com/SolidRun/linux-linaro-stable-mx6;branch=${SRCBRANCH}"
-------------------------------


linux-cubox-i_3.10.30-linux4kix.bb:
------------------------------------
include linux-cubox-i_3.10.30.inc

SRCREV = "a4ed70040f9dfdcdd6546a85c0477ecd1030e065"
LOCALVERSION = "-cubox-i+linux4kix+${SRCPV}"

SRC_URI +=
"git://github.com/linux4kix/linux-linaro-stable-mx6.git;branch=${SRCBRANCH}"
------------------------------------



