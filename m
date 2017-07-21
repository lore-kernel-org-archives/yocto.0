Return-Path: <florian.doersch@iis.fraunhofer.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DEE2BE00A38; Thu, 20 Jul 2017 23:52:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [94.100.132.210 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 66 seconds by postgrey-1.32 at yocto-www;
	Thu, 20 Jul 2017 23:52:02 PDT
Received: from mx-relay10-hz1.antispameurope.com
	(mx-relay10-hz1.antispameurope.com [94.100.132.210])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 463B8E0090A
	for <yocto@yoctoproject.org>; Thu, 20 Jul 2017 23:52:02 -0700 (PDT)
Received: from mailgw1.iis.fraunhofer.de ([153.96.172.4]) by
	mx-relay10-hz1.antispameurope.com; Fri, 21 Jul 2017 08:50:54 +0200
Received: from mail.iis.fraunhofer.de (mail03.iis.fhg.de [153.96.171.212])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mailgw1.iis.fraunhofer.de (Postfix) with ESMTPS id 4E8012400081
	for <yocto@yoctoproject.org>; Fri, 21 Jul 2017 08:50:54 +0200 (CEST)
Received: from [10.12.71.18] (153.96.171.210) by mail03.iis.fhg.de
	(2001:638:a0a:1111:314f:f22c:4a37:b25a) with Microsoft SMTP Server
	(TLS) id 15.0.1263.5; Fri, 21 Jul 2017 08:50:54 +0200
To: <yocto@yoctoproject.org>
From: Florian Doersch <florian.doersch@iis.fraunhofer.de>
Message-ID: <5971A44E.9090106@iis.fraunhofer.de>
Date: Fri, 21 Jul 2017 08:50:54 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
X-Originating-IP: [153.96.171.210]
X-ClientProxiedBy: mail03.iis.fhg.de (2001:638:a0a:1111:314f:f22c:4a37:b25a)
	To mail03.iis.fhg.de (2001:638:a0a:1111:314f:f22c:4a37:b25a)
X-cloud-security-sender: florian.doersch@iis.fraunhofer.de
X-cloud-security-recipient: yocto@yoctoproject.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on
	mx-relay10-hz1.antispameurope.com with 70EF46200E5
X-cloud-security-connect: mailgw1.iis.fraunhofer.de[153.96.172.4], TLS=1,
	IP=153.96.172.4
X-cloud-security: scantime:.1085
Subject: correct approach to set up utf-8 locales?
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
X-List-Received-Date: Fri, 21 Jul 2017 06:52:04 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I recently trying to set up a raspberry pi with yocto.
The basic image with meta-raspberrypi works, but I cant get locales 
working correctly. I always only have "posix" keyboard.

I tried setting

GLIBC_GENERATE_LOCALES="de_DE.UTF-8"
IMAGE_LINGUAS="de-de"

I also installed the packages

glibc-utils locales localedef

into my image, but that seems not to change anything.

$ locale -a

does have a "de_DE" (but not the UTF-8 one ...)

but its still unset:

$ locale

always outputs "POSIX"

Also the (usb) keyboard layout does not change.

What do I have to set so the getty has the correct default language?

I also have yocto on a zynq board, where I also can't figure out how to 
set the correct locale.

Thank you very much

Florian

