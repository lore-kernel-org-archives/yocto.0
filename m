Return-Path: <mike.looijmans@topic.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7412DE00830; Sun, 16 Nov 2014 23:26:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp103.mer-nm.internl.net (smtp103.mer-nm.internl.net
	[217.149.192.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 069B6E0080C
	for <yocto@yoctoproject.org>; Sun, 16 Nov 2014 23:25:51 -0800 (PST)
Received: from amavisd-new (mailscanner06.wrt-nm.internl.net [217.149.192.58])
	by smtp103.mer-nm.internl.net (Postfix) with ESMTP id 932293F825;
	Mon, 17 Nov 2014 08:25:49 +0100 (CET)
Received: from smtp103.mer-nm.internl.net ([217.149.192.139])
	by amavisd-new (mailscanner06.wrt-nm.internl.net [217.149.192.160])
	(amavisd-new, port 10024)
	with ESMTP; Mon, 17 Nov 2014 08:25:48 +0100 (CET)
Received: from TOP-EX01.TOPIC.LOCAL (mail.topic.nl [82.204.13.182])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp103.mer-nm.internl.net (Postfix) with ESMTPS;
	Mon, 17 Nov 2014 08:25:47 +0100 (CET)
Received: from [192.168.80.45] (192.168.80.45) by TOP-EX01.TOPIC.LOCAL
	(192.168.10.102) with Microsoft SMTP Server (TLS) id 14.3.181.6;
	Mon, 17 Nov 2014 08:26:02 +0100
Message-ID: <5469A2FA.6020004@topic.nl>
Date: Mon, 17 Nov 2014 08:25:46 +0100
From: Mike Looijmans <mike.looijmans@topic.nl>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Michael Gloff <mgloff@emacinc.com>, "Burton, Ross" <ross.burton@intel.com>
References: <5464AB4D.8020409@topic.nl>	<CAJTo0Lb35s=8_JkTwxtkOskW0c+WX3U7pz5erBKSvYXVxE3riw@mail.gmail.com>	<5464ADD9.1090604@topic.nl>	<5464AFCC.5010709@topic.nl>	<CAJTo0LbFLKJ304sCbSGZW0w9rpEe5oN5Ao3bAr8a-yLjNrRKkQ@mail.gmail.com>
	<CALXw4G6V7CWLx5HJvvHg7WRkALHpqZji4EXq8x0f_coxQD3AFQ@mail.gmail.com>
In-Reply-To: <CALXw4G6V7CWLx5HJvvHg7WRkALHpqZji4EXq8x0f_coxQD3AFQ@mail.gmail.com>
X-Originating-IP: [192.168.80.45]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Sato image touchscreen calibration is borked
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
X-List-Received-Date: Mon, 17 Nov 2014 07:26:01 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 11/13/2014 06:58 PM, Michael Gloff wrote:
> On Thu, Nov 13, 2014 at 7:28 AM, Burton, Ross <ross.burton@intel.com
> <mailto:ross.burton@intel.com>> wrote:
>
>     Hi,
>
>     On 13 November 2014 13:19, Mike Looijmans <mike.looijmans@topic.nl
>     <mailto:mike.looijmans@topic.nl>> wrote:
>
>         I've been using "ts_calibrate" in the past, and that worked just =
fine
>         on this board.
>
>
>     Modern X servers don't use tslib, so this won't work since we stopped
>     using kdrive about two years ago.
>
> BTW, you can use tslib with xorg. This is what I have set up as I find
> ts_calibrate easier to work with.

Interesting option, can you elaborate on that (in particular, in combinatio=
n=20
with Yocto builds)?





Met vriendelijke groet / kind regards,

Mike Looijmans
System Expert


TOPIC Embedded Systems
Eindhovenseweg 32-C, NL-5683 KH Best
Postbus 440, NL-5680 AK Best
Telefoon: (+31) (0) 499 33 69 79
Telefax:  (+31) (0) 499 33 69 70
E-mail: mike.looijmans@topic.nl
Website: www.topic.nl

Please consider the environment before printing this e-mail

Visit us at Bits & Chips Smart Systems 20th November, 1931 Congrescentum Br=
abanthallen 's-Hertogenbosch, stand number 34
http://bc-smartsystems.nl


