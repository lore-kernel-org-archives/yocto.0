Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 433CCE00CC6; Sat, 26 Aug 2017 00:42:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 342 seconds by postgrey-1.32 at yocto-www;
	Sat, 26 Aug 2017 00:42:48 PDT
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E90C5E00C95
	for <yocto@yoctoproject.org>; Sat, 26 Aug 2017 00:42:48 -0700 (PDT)
Received: from nbhjo (203-69-87-74.HINET-IP.hinet.net [203.69.87.74])
	by msfrf2623.sfr.fr (SMTP Server) with ESMTP id 1BE091C000412;
	Sat, 26 Aug 2017 09:37:05 +0200 (CEST)
Received: from nbhjo (203-69-87-74.HINET-IP.hinet.net [203.69.87.74])	(using
	TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2623.sfr.fr (SMTP Server) with ESMTPSA;
	Sat, 26 Aug 2017 09:37:03 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Khem Raj' <raj.khem@gmail.com>, 'Bill Jenkins' <bill@korgrd.com>,
	yocto@yoctoproject.org
Date: Sat, 26 Aug 2017 09:36:41 +0200
Message-ID: <001201d31e3e$12964540$37c2cfc0$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdMePeTARhlSp64tQLWrySM4eZyFFA==
X-sfr-mailing: LEGIT
Subject: Re: raspberrypi3-64 target not booting
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
X-List-Received-Date: Sat, 26 Aug 2017 07:42:50 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi,

Are you using vc4 as graphics, or are you using the default userland?
If you want graphics with 64 bits, you need to use vc4.

Cheers,
Herve

-----Original Message-----
From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Khem Raj
Sent: vendredi 25 ao=FBt 2017 19:28
To: Bill Jenkins <bill@korgrd.com>; yocto@yoctoproject.org
Subject: ***SPAM*** Re: [yocto] raspberrypi3-64 target not booting

On Fri, Aug 25, 2017 at 10:14 AM, Bill Jenkins <bill@korgrd.com> wrote:
>
> On Aug 25, 2017, at 9:42 AM, Khem Raj <raj.khem@gmail.com> wrote:
>
>
> On Fri, Aug 25, 2017 at 9:39 AM Bill Jenkins <bill@korgrd.com> wrote:
>>
>> I am trying to just get the simple 64-bit rpi-basic-image to work,=20
>> but the Raspberry Pi 3 seems to hang with the rainbow screen at =
startup.
>
>
> Can you plugin a serial cable and see if that worked or try to add ssh =

> daemon on target and try to ssh into pi
>>
>>
>
> That was a good call. I can login with the ssh daemon, so it does=20
> successfully boot. I just cannot access it from the HDMI port. (I do=20
> not have the hardware for a serial connection at the moment)
>
> Any ideas on how to get the HDMI port to function the same way as it=20
> does for the 32-bit case?
>

Readding the mailing list.

what you have is exactly what I had when I submitted the port to
meta-raspberrypi. Haven;t had a chance to revisit it. but this could
be related to device tree files we are using here. I have had reports
from other devs of having been able to boot into graphics using older
kernels but I never got
that far myself.
--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


