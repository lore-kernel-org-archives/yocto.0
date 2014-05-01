Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 041C8E00997; Thu,  1 May 2014 02:51:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
X-Greylist: delayed 516 seconds by postgrey-1.32 at yocto-www;
	Thu, 01 May 2014 02:51:54 PDT
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29156E00985
	for <yocto@yoctoproject.org>; Thu,  1 May 2014 02:51:54 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id B07AF27E016
	for <yocto@yoctoproject.org>; Thu,  1 May 2014 09:43:15 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id WS43Rm_awuZI for <yocto@yoctoproject.org>;
	Thu,  1 May 2014 09:42:55 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id E58AD27E006
	for <yocto@yoctoproject.org>; Thu,  1 May 2014 09:42:54 +0000 (UTC)
Message-ID: <5362171B.8010000@dynamicdevices.co.uk>
Date: Thu, 01 May 2014 10:42:51 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Yocto <yocto@yoctoproject.org>
X-Enigmail-Version: 1.6
Subject: Undefining a variable in a recipe?
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
X-List-Received-Date: Thu, 01 May 2014 09:51:59 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I have an issue with the build of an old u-boot (2009.08) which is
failing a check in poky as both UBOOT_CONFIG and UBOOT_MACHINE are being
defined for some reason.

poky/meta/classes/uboot-config.bbclass

 ubootmachine = d.getVar("UBOOT_MACHINE", True)
 ubootconfigflags = d.getVarFlags('UBOOT_CONFIG')

..

 if ubootmachine and ubootconfigflags:
       raise bb.parse.SkipPackage("You cannot use UBOOT_MACHINE and
UBOOT_CONFIG at the same time.")


I have a .bbappend on the original u-boot recipe and could solve the
problem by undefining UBOOT_MACHINE if I could work out how to do this
in the .bbappend

I've tried setting it to None or an empty string, and I tried an
anonymous python function but those approaches didn't help,

e.g. (in the .bbappend

UBOOT_MACHINE = ""

or

UBOOT_MACHINE = None

or

python __anonymous () {
  bb.data.delVar('UBOOT_MACHINE_imx6qsabresd')
}

I could just copy the original recipe from metal-fsl-arm into my own
layer and change it there I guess but I'd like to understand how to
achieve this with a .bbappend if it is possible as it seems cleaner.

Many thanks,

Alex


