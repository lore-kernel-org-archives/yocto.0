Return-Path: <raghavendra.kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58136E008A7; Tue, 10 Feb 2015 20:56:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.inedasystems.com (mail.inedasystems.com [202.153.34.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8209BE00717
	for <yocto@yoctoproject.org>; Tue, 10 Feb 2015 20:55:54 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.inedasystems.com (Postfix) with ESMTP id 95BDF3E6E24;
	Wed, 11 Feb 2015 10:25:52 +0530 (IST)
Received: from mail.inedasystems.com ([127.0.0.1])
	by localhost (mail.inedasystems.com [127.0.0.1]) (amavisd-new,
	port 10032)
	with ESMTP id CjX1UOcmJFc7; Wed, 11 Feb 2015 10:25:52 +0530 (IST)
Received: from localhost (localhost [127.0.0.1])
	by mail.inedasystems.com (Postfix) with ESMTP id 1A6D63E6E06;
	Wed, 11 Feb 2015 10:25:52 +0530 (IST)
X-Virus-Scanned: amavisd-new at inedasystems.com
Received: from mail.inedasystems.com ([127.0.0.1])
	by localhost (mail.inedasystems.com [127.0.0.1]) (amavisd-new,
	port 10026)
	with ESMTP id YBWQbvmP4x1E; Wed, 11 Feb 2015 10:25:52 +0530 (IST)
Received: from mail.inedasystems.com (mail.inedasystems.com [192.168.24.225])
	by mail.inedasystems.com (Postfix) with ESMTP id 02C6B3E6CD8;
	Wed, 11 Feb 2015 10:25:52 +0530 (IST)
Date: Wed, 11 Feb 2015 10:25:51 +0530 (IST)
From: Raghavendra Kakarla <raghavendra.kakarla@inedasystems.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <26096207.41.1423630551583.JavaMail.kraghavendra@Raghavendra>
In-Reply-To: <1968954.yQ8YLUUWUl@peggleto-mobl5.ger.corp.intel.com>
References: <18041737.50.1422871220143.JavaMail.kraghavendra@Raghavendra>
	<3732014.yvI11M98F7@peggleto-mobl5.ger.corp.intel.com>
	<2974616.30.1423571125144.JavaMail.kraghavendra@Raghavendra>
	<1968954.yQ8YLUUWUl@peggleto-mobl5.ger.corp.intel.com>
MIME-Version: 1.0
X-Originating-IP: [192.168.42.55]
X-Mailer: Zimbra 8.0.3_GA_5664 (Zimbra Desktop/7.2.5_12038_Linux)
Thread-Topic: Yocto-custom kernel build issue
Thread-Index: 1BDQ815ulu0YFqAGBgLnsuhXKO0gqA==
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
X-List-Received-Date: Wed, 11 Feb 2015 04:56:04 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Yes I extracted the files on to the SD card.

I have one issue now.

I want to build some packages from openWRT which are not in YOCTO in yocto build system.

For this I download the package tar files from openwrt wrote the recipe for building this tar files. Building the tar files is completed without any errors but when installing this package in the image it give some error like following.
ERROR: hostapd not found in the base feeds (dhruwa_ioe mips32r2el mips32el mipsel noarch any all). 

Could you plese help in resolving this isssue.

Thanks and Regards,
Raghavendra.

----- Original Message -----
From: "Paul Eggleton" <paul.eggleton@linux.intel.com>
To: "Raghavendra Kakarla" <raghavendra.kakarla@inedasystems.com>, yocto@yoctoproject.org
Sent: Tuesday, February 10, 2015 7:06:37 PM
Subject: Re: [yocto] Yocto-custom kernel build issue

Please keep replies on the mailing list, thanks.

Is this perhaps because you extracted the files onto an SD card / other storage 
device as a non-root user?

Cheers,
Paul

On Tuesday 10 February 2015 17:55:25 Raghavendra Kakarla wrote:
> Hi Paul Eggleton,
> 
> Thank you for your response.
> 
> It is the rootfs permissions issue.
> 
> I give the "chown -R root rfs" to my rfs then it is working.
> 
> Thanks and Regards,
> 
> Raghavendra.
> 
> ----- Original Message -----
> From: "Paul Eggleton" <paul.eggleton@linux.intel.com>
> To: "Raghavendra Kakarla" <raghavendra.kakarla@inedasystems.com>
> Cc: yocto@yoctoproject.org
> Sent: Tuesday, February 10, 2015 4:30:19 PM
> Subject: Re: [yocto] Yocto-custom kernel build issue
> 
> On Tuesday 10 February 2015 13:47:45 Raghavendra Kakarla wrote:
> > I am built the yocto for my custom machine. After booting a login prompt
> > was came. For that I tried the "root" as user name but it did not take
> > it.
> > 
> > Could please tell me where i can get the login and password details for
> > yocto rootfs.
> 
> The default is root with no password. If that doesn't work, do you have
> "debug-tweaks" in your EXTRA_IMAGE_FEATURES? It should be there by default.
> 
> Cheers,
> Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

