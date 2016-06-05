Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9632E00D79; Sun,  5 Jun 2016 07:56:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FBD6E00CE8
	for <yocto@yoctoproject.org>; Sun,  5 Jun 2016 07:55:57 -0700 (PDT)
Received: from nbhjo (111-250-215-118.dynamic.hinet.net [111.250.215.118])
	by msfrf2614.sfr.fr (SMTP Server) with ESMTP id 705F11C000816;
	Sun,  5 Jun 2016 16:55:55 +0200 (CEST)
Received: from nbhjo (111-250-215-118.dynamic.hinet.net
	[111.250.215.118])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2614.sfr.fr (SMTP Server) with ESMTPSA;
	Sun,  5 Jun 2016 16:55:53 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Trevor Woerner' <twoerner@gmail.com>, 'Yocto Project'
	<yocto@yoctoproject.org>
References: <20160604230019.GA1506@openSUSE-i7.site>
	<CANwerB3L4J79WB4V18DtqZTj92fQXWgWyDKpUQ8cRStt08NNxg@mail.gmail.com>
	<20160605122132.2a8c70a1@nuc.betafive.co.uk>
	<013701d1bf23$d3fba520$7bf2ef60$@neuf.fr>
	<20160605125800.GA5652@openSUSE-i7.site>
In-Reply-To: <20160605125800.GA5652@openSUSE-i7.site>
Date: Sun, 5 Jun 2016 16:55:47 +0200
Message-ID: <013801d1bf3a$5bb10030$13130090$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIUeOAz+mr7ahbGdG58qpYOhyMJlwGHp9QIAbATLHECBC3m+gM4ff9jnxHfFQA=
X-sfr-mailing: LEGIT
Subject: Re: ***SPAM*** Re: gcc-6.1 and raspi
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
X-List-Received-Date: Sun, 05 Jun 2016 14:56:01 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Language: fr

Hi,

It seems like you are building the 4.1.21 kernel.
Did you set PREFERRED_VERSION_linux-raspberrypi = "4.4.%" in your
distro.conf or local.conf?

Herve

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Trevor Woerner
Sent: dimanche 5 juin 2016 14:58
To: 'Yocto Project' <yocto@yoctoproject.org>
Subject: ***SPAM*** Re: [yocto] gcc-6.1 and raspi

On Sun 2016-06-05 @ 02:14:29 PM, Herve Jourdain wrote:
> I'm using kernel 4.4, and it does build properly with gcc 6.1.
> But the build does fail on other packages later on, so I ended up 
> reverting to 5.3 for now.

Both the official meta-raspberrypi and Khem Raj's meta-raspberrypi layers
have recipes for the 4.4% kernel. I tried them but I keep getting:

	ERROR: linux-raspberrypi-1_4.1.21+gitAUTOINC+ff45bc0e89-r0
do_rpiboot_mkimage: Function failed: do_rpiboot_mkimage
	Log data follows:
	| DEBUG: Executing shell function do_rpiboot_mkimage
	| Usage: mkknlimg [--dtok] [--283x] <vmlinux|zImage|bzImage>
<outfile>
	| WARNING:
/z/layerindex-master/raspi2/tmp/work/raspberrypi2-poky-linux-gnueabi/linux-r
aspberrypi/1_4.1.21+gitAUTOINC+ff45bc0e89-r0/temp/run.do_rpiboot_mkimage.125
4:1 exit 1 from
'/z/layerindex-master/raspi2/tmp/sysroots/x86_64-linux/usr/bin/mkknlimg
--dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}'
	| ERROR: Function failed: do_rpiboot_mkimage (log file is located at
/z/layerindex-master/raspi2/tmp/work/raspberrypi2-poky-linux-gnueabi/linux-r
aspberrypi/1_4.1.21+gitAUTOINC+ff45bc0e89-r0/temp/log.do_rpiboot_mkimage.125
4)

So I'm not sure what's going on there.
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


