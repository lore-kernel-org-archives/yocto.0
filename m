Return-Path: <clay@montgomery1.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29164E0135A; Fri, 13 Jul 2018 21:11:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [69.89.20.226 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 2401 seconds by postgrey-1.32 at yocto-www;
	Fri, 13 Jul 2018 21:11:16 PDT
Received: from gproxy10-pub.mail.unifiedlayer.com
	(gproxy10-pub.mail.unifiedlayer.com [69.89.20.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D723EE0084E
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2018 21:11:16 -0700 (PDT)
Received: from cmgw14.unifiedlayer.com (unknown [10.9.0.14])
	by gproxy10.mail.unifiedlayer.com (Postfix) with ESMTP id EEBD5140D13
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2018 21:18:04 -0600 (MDT)
Received: from box858.bluehost.com ([69.195.124.58]) by cmsmtp with ESMTP
	id eB4OfVvjHvdTueB4Of5kaD; Fri, 13 Jul 2018 21:18:04 -0600
X-Authority-Reason: nr=8
Received: from cpe-97-99-239-0.tx.res.rr.com ([97.99.239.0]:51892
	helo=[192.168.0.21]) by box858.bluehost.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.91)
	(envelope-from <clay@montgomery1.com>) id 1feB4O-0008RM-D7
	for yocto@yoctoproject.org; Fri, 13 Jul 2018 21:18:04 -0600
From: "Clay D. Montgomery" <clay@montgomery1.com>
Organization: Montgomery One
To: yocto@yoctoproject.org
Message-ID: <5B496B75.8020408@montgomery1.com>
Date: Fri, 13 Jul 2018 22:18:13 -0500
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.0.1
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - box858.bluehost.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - montgomery1.com
X-BWhitelist: no
X-Source-IP: 97.99.239.0
X-Source-L: No
X-Exim-ID: 1feB4O-0008RM-D7
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: cpe-97-99-239-0.tx.res.rr.com ([192.168.0.21])
	[97.99.239.0]:51892
X-Source-Auth: clay@montgomery1.com
X-Email-Count: 1
X-Source-Cap: bW9udGdvcjA7bW9udGdvcjA7Ym94ODU4LmJsdWVob3N0LmNvbQ==
X-Local-Domain: yes
Subject: Out-of-tree kernel module is unbuildable
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
X-List-Received-Date: Sat, 14 Jul 2018 04:11:19 -0000
X-Groupsio-MsgNum: 41791
Content-Type: multipart/mixed; boundary="------------030300040007060500090908"

--------------030300040007060500090908
Content-Type: multipart/alternative;
 boundary="------------030403050409010408080203"

--------------030403050409010408080203
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

    I'm trying to add an external kernel module to my layer by following 
this guide in the Yocto Kernel Development Manual and using the 
recommended template:


      2.10.2. Incorporating Out-of-Tree
      Modules<https://www.yoctoproject.org/docs/current/kernel-dev/kernel-dev.html#incorporating-out-of-tree-modules>

     poky/meta-skeleton/recipes-kernel/hello-mod/hello-mod_0.1.bb


However, bitbake always reports that my "Runtime target 
'lightwing-camera' is unbuildable, removing..."
I would appreciate if someone could help me isolate this problem.
This is my new recipe for the module:

SUMMARY = "External kernel module for OV5645 MIPI camera"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e"

inherit module

SRC_URI = "file://Makefile \
            file://ov5645_mipi.c \
            file://COPYING \
           "

S = "${WORKDIR}"

RPROVIDES_lightwing-camera = "lightwing-camera"



And this is my makefile:



obj-m := ov5645_mipi.o

SRC := $(shell pwd)

all:
     $(MAKE) -C $(KERNEL_SRC) M=$(SRC)

modules_install:
     $(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install

clean:
     rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c
     rm -f Module.markers Module.symvers modules.order
     rm -rf .tmp_versions Modules.symvers


Thank you, Clay Montgomery

--------------030403050409010408080203
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hello,<br>
    <br>
       I'm trying to add an external kernel module to my layer by
    following this guide in the Yocto Kernel Development Manual and
    using the recommended template:<br>
    <h3 class="title">2.10.2. Incorporating Out-of-Tree Modules<span
        class="permalink"><a alt="Permalink" title="Permalink"
href="https://www.yoctoproject.org/docs/current/kernel-dev/kernel-dev.html#incorporating-out-of-tree-modules"></a></span></h3>
        poky/meta-skeleton/recipes-kernel/hello-mod/hello-mod_0.1.bb <br>
    <br>
    <br>
    However, bitbake always reports that my "Runtime target
    'lightwing-camera' is unbuildable, removing..."<br>
    I would appreciate if someone could help me isolate this problem.<br>
    This is my new recipe for the module:<br>
    <br>
    <div class="moz-signature">SUMMARY = "External kernel module for
      OV5645 MIPI camera"<br>
      LICENSE = "GPLv2"<br>
      LIC_FILES_CHKSUM =
      <a class="moz-txt-link-rfc2396E" href="file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e">"file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e"</a><br>
      <br>
      inherit module<br>
      <br>
      SRC_URI = "<a class="moz-txt-link-freetext" href="file://Makefile">file://Makefile</a> \<br>
                 <a class="moz-txt-link-freetext" href="file://ov5645_mipi.c">file://ov5645_mipi.c</a> \<br>
                 <a class="moz-txt-link-freetext" href="file://COPYING">file://COPYING</a> \<br>
                "<br>
      <br>
      S = "${WORKDIR}"<br>
      <br>
      RPROVIDES_lightwing-camera = "lightwing-camera"<br>
      <br>
      <br>
      <br>
      And this is my makefile:<br>
      <br>
      <br>
      <br>
      obj-m := ov5645_mipi.o<br>
      <br>
      SRC := $(shell pwd)<br>
      <br>
      all:<br>
          $(MAKE) -C $(KERNEL_SRC) M=$(SRC)<br>
      <br>
      modules_install:<br>
          $(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install<br>
      <br>
      clean:<br>
          rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c<br>
          rm -f Module.markers Module.symvers modules.order<br>
          rm -rf .tmp_versions Modules.symvers<br>
      <br>
      <br>
      Thank you, Clay Montgomery<br>
    </div>
  </body>
</html>

--------------030403050409010408080203--

--------------030300040007060500090908
Content-Type: text/x-vcard; charset=utf-8;
 name="clay.vcf"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="clay.vcf"

begin:vcard
fn:Clay D. Montgomery
n:Montgomery;Clay
org:Montgomery One
adr:;;;;Texas;;USA
email;internet:clay@montgomery1.com
title:Freelance Software Developer
tel;cell:580-490-6676
x-mozilla-html:TRUE
url:http://montgomery1.com/contact/
version:2.1
end:vcard


--------------030300040007060500090908--
