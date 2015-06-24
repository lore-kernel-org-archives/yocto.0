Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA15DE00A21; Wed, 24 Jun 2015 08:33:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: gherzan.ro]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp21.services.sfr.fr (smtp21.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48853E009D2
	for <yocto@yoctoproject.org>; Wed, 24 Jun 2015 08:33:45 -0700 (PDT)
Received: from filter.sfr.fr (localhost [86.71.202.125])
	by msfrf2108.sfr.fr (SMTP Server) with ESMTP id A1E8D7000153;
	Wed, 24 Jun 2015 17:33:42 +0200 (CEST)
Authentication-Results: sfrmc.priv.atos.fr; dkim=none (no signature);
	dkim-adsp=none (no policy) header.from=herve.jourdain@neuf.fr
Received: from hjo-pc (125.202.71.86.rev.sfr.net [86.71.202.125])	(using TLSv1
	with cipher AES128-SHA (128/128 bits))	(No client certificate
	requested)
	by msfrf2108.sfr.fr (SMTP Server) with ESMTP id 0C8E47000152;
	Wed, 24 Jun 2015 17:33:41 +0200 (CEST)
X-SFR-UUID: 20150624153342515.0C8E47000152@msfrf2108.sfr.fr
Received: from hjopc
	by hjo-pc (PGP Universal service);  Wed, 24 Jun 2015 17:33:41 +0100
X-PGP-Universal: processed;	by hjo-pc on Wed, 24 Jun 2015 17:33:41 +0100
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Andrei Gherzan' <andrei@gherzan.ro>, 'Yocto Project'
	<yocto@yoctoproject.org>
References: <009101d0a8d9$c460eb40$4d22c1c0$@neuf.fr>
	<CAK18fxEc3T93vKFmRdxhRu5MHOZxM22xyBAfR+cAsnBiptwgUg@mail.gmail.com>
	<02ea01d0a99f$ec37d2c0$c4a77840$@neuf.fr>
	<CAK18fxG+HWcgNYmnspFVHdfi_Pzz5wK-vstJTAxti1pTz0943A@mail.gmail.com>
	<CAK18fxGtQ=bQZZKK2LyBVhmR1O-L_atYXZnAcVU2-9qf6hzxSA@mail.gmail.com>
	<000a01d0ae54$0efcd180$2cf67480$@neuf.fr>
	<CAK18fxHbB9+LaWVj6t46YUdO_Lay=_D9wo4nZv5aZjj5zq+FiQ@mail.gmail.com>
	<001301d0ae7a$995ebbb0$cc1c3310$@neuf.fr>
	<CAK18fxHYe4mMXRkgd+Gyw52M8_Hdin3vpSgcBrC9sCjsszKSfA@mail.gmail.com>
In-Reply-To: <CAK18fxHYe4mMXRkgd+Gyw52M8_Hdin3vpSgcBrC9sCjsszKSfA@mail.gmail.com>
Date: Wed, 24 Jun 2015 17:33:40 +0200
Message-ID: <001401d0ae93$26346d60$729d4820$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQKKC9ddfvMg404D4wnsS7ZEixxZ4wG5h1mmAY+ntWkBd08PKgGqOEl7AlCy4pgB4YBHvQGSbnmxAkcK7Byb1VtP0A==
Subject: Re: [meta-raspberrypi] [PATCH] ds1307-rtc-overlay.dtb has been removed from the kernel tree, and most overlays have been moved to the dts/overlays directory
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
X-List-Received-Date: Wed, 24 Jun 2015 15:33:48 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi Andrei, Petter,

If there is any way I can help, I'll be glad to do it.
Please let me know how best this can be achieved.

Regards,

Herve

-----Original Message-----
From: Andrei Gherzan [mailto:andrei@gherzan.ro]=20
Sent: mercredi 24 juin 2015 15:59
To: Herve Jourdain; Yocto Project
Cc: Petter Mab=C3=A4cker
Subject: Re: [yocto] [meta-raspberrypi] [PATCH] ds1307-rtc-overlay.dtb =
has been removed from the kernel tree, and most overlays have been moved =
to the dts/overlays directory

Hello,

Adding Yocto back in loop (sorry for this - it is my fault).

On Wed, Jun 24, 2015 at 2:37 PM, Herve Jourdain <herve.jourdain@neuf.fr> =
wrote:
> Hi Andrei,
>
> OK, not sure what happened, it seemed that when I tested it, it =
downloaded the latest version of the kernel on github.com/raspberrypi =
for the 3.18.y branch, instead of the version specified in the SRCREV... =
And I really don't know why...
> So after rechecking from scratch, when it pulls the correct version, =
then it still works like before.
>
> But this patch will be needed as soon as meta-raspberrypi moves to a =
more recent 3.18y version (739c586c87576fb8ef151b5843ebed76c43a5221 or =
later).

I understand that and checking the upstream code I can confirm this =
change. Thanks for informing and will definitely look into it when we =
will update the kernel. If you want, you can help Petter in getting the =
updates faster. I know he is already working on this (CCed).

> Regards,
>
> Herve
>
> -----Original Message-----
> From: Herve Jourdain [mailto:herve.jourdain@neuf.fr]
> Sent: mercredi 24 juin 2015 12:40
> To: 'Andrei Gherzan'
> Subject: RE: [yocto] [meta-raspberrypi] [PATCH] ds1307-rtc-overlay.dtb =

> has been removed from the kernel tree, and most overlays have been=20
> moved to the dts/overlays directory
>
> Hi,
>
> OK, I'm trying right now... I will need a little time, though, =
compilation is not really fast...
>
> Regards,
>
> Herve
>
> -----Original Message-----
> From: Andrei Gherzan [mailto:andrei@gherzan.ro]
> Sent: mercredi 24 juin 2015 11:21
> To: Herve Jourdain
> Subject: Re: [yocto] [meta-raspberrypi] [PATCH] ds1307-rtc-overlay.dtb =

> has been removed from the kernel tree, and most overlays have been=20
> moved to the dts/overlays directory
>
> Hello,
>
> On Wed, Jun 24, 2015 at 10:02 AM, Herve Jourdain =
<herve.jourdain@neuf.fr> wrote:
>> Hi,
>>
>> I used the master head, downloaded in may.
>> The last commit I see using "git log" is:
>> commit 6ef9d94a2c2588dcefe442577ef6ae5bbe722dec
>> Author: Petter Mab=C3=A4cker <petter@technux.se>
>> Date:   Fri May 8 23:49:05 2015 +0200
>
> Could you please use the current HEAD? I can't reproduce on current =
revision.
>
> --
> Andrei Gherzan
> e: andrei@gherzan.ro
> w: www.gherzan.ro

Regards,

--
Andrei Gherzan
e: andrei@gherzan.ro
w: www.gherzan.ro

