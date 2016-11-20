Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78EC9E00C40; Sun, 20 Nov 2016 00:00:58 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25653E008E3
	for <yocto@yoctoproject.org>; Sun, 20 Nov 2016 00:00:50 -0800 (PST)
Received: from nbhjo (111-82-100-69.EMOME-IP.hinet.net [111.82.100.69])
	by msfrf2614.sfr.fr (SMTP Server) with ESMTP id 2D89C1C000406;
	Sun, 20 Nov 2016 09:00:49 +0100 (CET)
Received: from nbhjo (111-82-100-69.EMOME-IP.hinet.net [111.82.100.69])	(using
	TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2614.sfr.fr (SMTP Server) with ESMTPSA;
	Sun, 20 Nov 2016 09:00:46 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Khem Raj' <raj.khem@gmail.com>, 'Trevor Woerner' <twoerner@gmail.com>
Date: Sun, 20 Nov 2016 09:00:37 +0100
Message-ID: <002d01d24304$32aa08a0$97fe19e0$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
thread-index: AdJC6UakvbaDK4XBT+uFXjShg8qSdQ==
X-sfr-mailing: LEGIT
Cc: yocto@yoctoproject.org
Subject: Re: [raspberrypi] raspi3 vs raspi2
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
X-List-Received-Date: Sun, 20 Nov 2016 08:00:58 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Language: fr

Hi Khem, Trevor,

I've submitted part of it yesterday, the rest should come out today
hopefully.
The 2 machine types - raspberrypi3 and raspberrypi3-64 - have been submitted
to yocto/meta-raspberrypi.
They will need tune-cortexa53.inc - I've sent a version to oe-core, but I
got it wrong again, so I will resend it hopefully again, along with a
modified version of arch-armv8.inc.

I have some patches to support 64bits on Raspberrypi3 that should be pushed
-hopefully - today. They're on 4.7.10, though.

Herve

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Khem Raj
Sent: samedi 19 novembre 2016 18:30
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@yoctoproject.org
Subject: ***SPAM*** Re: [yocto] [raspberrypi] raspi3 vs raspi2

On Fri, Nov 18, 2016 at 1:20 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> Hi,
>
> I was wondering if there were any plans to create a 
> MACHINE=raspberrypi3 that treats the raspi3 like the CortexA53 that it 
> is instead of generating images that are backwards compatible with the
CortexA7 that is the raspi2?

Thats a good question. I know few folks who have done 64bit port of OE on
rpi3 so I would be interested in such patches where we add rpi3-64 machine
type.
do you have patches to submit ? Please do

>
> Best regards,
>         Trevor
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


