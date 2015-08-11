Return-Path: <ac.rossi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB48CE00A9A; Tue, 11 Aug 2015 06:31:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.175 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ac.rossi[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FD7CE00A92
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 06:31:47 -0700 (PDT)
Received: by wibhh20 with SMTP id hh20so195983369wib.0
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 06:31:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=7l8XFlozkGuQrEQicLNIqKkA62urN2SPiiydr6tdWGM=;
	b=Lf3gcmwNN+8FalyriiDzPVckrQImsjcykNxMSKkm+wTupAas8hSSsavmohrhX8NugI
	Oe2Deft2IedQQgGDcixKLhkcbUD+sX0UF/ppiEXk1vj/a3ZPR0CTgcp7W+NdpPm32i8v
	eKSyUcHkwHcKqWaAyyxnA29LG8auEzon5DlcFBbLHsmjgXbjv69ZH2V9l23cM+/RVF15
	tlufQOSNPnv4El2dxbhz6pBK1wc6KMVOOxsQiEvj/07ZCFBwE2FEYLoi4LRDHxZLJPhO
	RtpbrULqONb+GB4CtfA1DXewgaNy4BLjj3pQLl5RyAAs2e8YfSZYmmZ8R4qAoeLBAqtL
	DZaQ==
MIME-Version: 1.0
X-Received: by 10.180.103.231 with SMTP id fz7mr17877209wib.91.1439299903741; 
	Tue, 11 Aug 2015 06:31:43 -0700 (PDT)
Received: by 10.27.56.5 with HTTP; Tue, 11 Aug 2015 06:31:43 -0700 (PDT)
Date: Tue, 11 Aug 2015 09:31:43 -0400
Message-ID: <CAPzboye4h_mF=aEOvFfyLuWBNc320KsffAC91y9NxGy4QGqAhQ@mail.gmail.com>
From: Adam Rossi <ac.rossi@gmail.com>
To: yocto@yoctoproject.org
Subject: Specifying location of DTB file
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
X-List-Received-Date: Tue, 11 Aug 2015 13:31:53 -0000
Content-Type: text/plain; charset=UTF-8

Howdy folks. I have had a devil of a time creating my own machine.conf
and getting it to boot, so I went back to using the stock
beaglebone.conf machine. I need to modify the DTB file that my
prototype loads, so I decompiled the yocto am335x-boneblack.dtb, added
some special sauce to the dts, and added the following to a
linux-yocto_3.19.bbappend recipe:

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI +="file://touchscreen.cfg \
 file://special-am335x-boneblack.dts"

do_install_prepend() {
        cp ${WORKDIR}/special-am335x-boneblack.dts ${S}/arch/${ARCH}/boot/dts/
}
KERNEL_DEVICETREE_beaglebone =  "special-am335x-boneblack.dtb"

This works, I get a special-am335x-boneblack.dtb in my image. However,
on booting the files on my beagle bone, I get an error that the system
cannot find the boot/am335x-boneblack.dtb file. Creating a symlink to
my special-am335x-boneblack.dtb solves the problem.

Where does the system configure the directions to look for
"am335x-boneblack.dtb"? I suspect this is because the stock
beaglebone.conf file also has a
KERNEL_DEVICETREE="am335x-boneblack.dtb". Perhaps my kernel recipe is
only partly overriding this?

Thanks for your continuing help. Regards, Adam

