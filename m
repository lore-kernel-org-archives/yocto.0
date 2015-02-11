Return-Path: <raghavendra.kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A809E008CC; Wed, 11 Feb 2015 02:00:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.inedasystems.com (mail.inedasystems.com [202.153.34.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF64DE00815
	for <yocto@yoctoproject.org>; Wed, 11 Feb 2015 02:00:23 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.inedasystems.com (Postfix) with ESMTP id 4E34E3E6E31;
	Wed, 11 Feb 2015 15:30:21 +0530 (IST)
Received: from mail.inedasystems.com ([127.0.0.1])
	by localhost (mail.inedasystems.com [127.0.0.1]) (amavisd-new,
	port 10032)
	with ESMTP id iWgjv_AVIFMV; Wed, 11 Feb 2015 15:30:20 +0530 (IST)
Received: from localhost (localhost [127.0.0.1])
	by mail.inedasystems.com (Postfix) with ESMTP id 6BFB73E6E2A;
	Wed, 11 Feb 2015 15:30:20 +0530 (IST)
X-Virus-Scanned: amavisd-new at inedasystems.com
Received: from mail.inedasystems.com ([127.0.0.1])
	by localhost (mail.inedasystems.com [127.0.0.1]) (amavisd-new,
	port 10026)
	with ESMTP id fUKAN6WrloX7; Wed, 11 Feb 2015 15:30:20 +0530 (IST)
Received: from mail.inedasystems.com (mail.inedasystems.com [192.168.24.225])
	by mail.inedasystems.com (Postfix) with ESMTP id 569D23E6DDE;
	Wed, 11 Feb 2015 15:30:20 +0530 (IST)
Date: Wed, 11 Feb 2015 15:30:17 +0530 (IST)
From: Raghavendra Kakarla <raghavendra.kakarla@inedasystems.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <26169231.54.1423648818817.JavaMail.kraghavendra@Raghavendra>
In-Reply-To: <74932485.zASdODCka1@peggleto-mobl5.ger.corp.intel.com>
References: <18041737.50.1422871220143.JavaMail.kraghavendra@Raghavendra>
	<1968954.yQ8YLUUWUl@peggleto-mobl5.ger.corp.intel.com>
	<26096207.41.1423630551583.JavaMail.kraghavendra@Raghavendra>
	<74932485.zASdODCka1@peggleto-mobl5.ger.corp.intel.com>
MIME-Version: 1.0
X-Originating-IP: [192.168.42.55]
X-Mailer: Zimbra 8.0.3_GA_5664 (Zimbra Desktop/7.2.5_12038_Linux)
Thread-Topic: Yocto-custom kernel build issue
Thread-Index: BB6B2BiTe1p7b5Nwg7+iSAYqj93cyQ==
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
Cc: yocto@yoctoproject.org
Subject: Re: Yocto-custom kernel build issue
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
X-List-Received-Date: Wed, 11 Feb 2015 10:00:34 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Thanks Paul,

I will make use of hostapd recipe present in the openembedded layer.

cheers,
Raghavendra.

----- Original Message -----
From: "Paul Eggleton" <paul.eggleton@linux.intel.com>
To: "Raghavendra Kakarla" <raghavendra.kakarla@inedasystems.com>
Cc: yocto@yoctoproject.org
Sent: Wednesday, February 11, 2015 3:00:57 PM
Subject: Re: [yocto] Yocto-custom kernel build issue

On Wednesday 11 February 2015 10:25:51 Raghavendra Kakarla wrote:
> Yes I extracted the files on to the SD card.

Right, and the lesson is you must do that as root, not as a normal user.

> I want to build some packages from openWRT which are not in YOCTO in yocto
> build system.
> 
> For this I download the package tar files from openwrt wrote the recipe for
> building this tar files. Building the tar files is completed without any
> errors but when installing this package in the image it give some error
> like following. ERROR: hostapd not found in the base feeds (dhruwa_ioe
> mips32r2el mips32el mipsel noarch any all).

My advice here is to use the recipe we already have in the community to build 
this:

http://layers.openembedded.org/layerindex/branch/master/recipes/?q=hostapd

In general the OE layer index is the best place to find layers providing 
recipes to build anything that isn't already supplied in Poky/OE-core by 
default.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

