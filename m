Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90E62E009C8; Wed, 24 Jun 2015 01:02:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [93.17.128.21 listed in list.dnswl.org]
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: gherzan.ro]
Received: from smtp23.services.sfr.fr (smtp23.services.sfr.fr [93.17.128.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 307D3E00974
	for <yocto@yoctoproject.org>; Wed, 24 Jun 2015 01:02:07 -0700 (PDT)
Received: from filter.sfr.fr (localhost [86.71.202.125])
	by msfrf2313.sfr.fr (SMTP Server) with ESMTP id 56AC8700017D;
	Wed, 24 Jun 2015 10:02:05 +0200 (CEST)
Authentication-Results: sfrmc.priv.atos.fr; dkim=none (no signature);
	dkim-adsp=none (no policy) header.from=herve.jourdain@neuf.fr
Received: from hjo-pc (125.202.71.86.rev.sfr.net [86.71.202.125])	(using TLSv1
	with cipher AES128-SHA (128/128 bits))	(No client certificate
	requested)
	by msfrf2313.sfr.fr (SMTP Server) with ESMTP id B98D27000046;
	Wed, 24 Jun 2015 10:02:04 +0200 (CEST)
X-SFR-UUID: 20150624080204760.B98D27000046@msfrf2313.sfr.fr
Received: from hjopc
	by hjo-pc (PGP Universal service);  Wed, 24 Jun 2015 10:02:04 +0100
X-PGP-Universal: processed;	by hjo-pc on Wed, 24 Jun 2015 10:02:04 +0100
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Andrei Gherzan' <andrei@gherzan.ro>
References: <009101d0a8d9$c460eb40$4d22c1c0$@neuf.fr>
	<CAK18fxEc3T93vKFmRdxhRu5MHOZxM22xyBAfR+cAsnBiptwgUg@mail.gmail.com>
	<02ea01d0a99f$ec37d2c0$c4a77840$@neuf.fr>
	<CAK18fxG+HWcgNYmnspFVHdfi_Pzz5wK-vstJTAxti1pTz0943A@mail.gmail.com>
	<CAK18fxGtQ=bQZZKK2LyBVhmR1O-L_atYXZnAcVU2-9qf6hzxSA@mail.gmail.com>
In-Reply-To: <CAK18fxGtQ=bQZZKK2LyBVhmR1O-L_atYXZnAcVU2-9qf6hzxSA@mail.gmail.com>
Date: Wed, 24 Jun 2015 10:02:03 +0200
Message-ID: <000a01d0ae54$0efcd180$2cf67480$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQKKC9ddfvMg404D4wnsS7ZEixxZ4wG5h1mmAY+ntWkBd08PKgGqOEl7nBU6VyA=
Cc: 'Yocto Project' <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 24 Jun 2015 08:02:12 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi,

I used the master head, downloaded in may.
The last commit I see using "git log" is:
commit 6ef9d94a2c2588dcefe442577ef6ae5bbe722dec
Author: Petter Mab=C3=A4cker <petter@technux.se>
Date:   Fri May 8 23:49:05 2015 +0200

    linux-raspberrypi: Update 3.12 branch to latest
   =20
    Update linux-raspberrypi_3.12 to latest revision.
   =20
    Remove sl030raspberrypii2ckernel.patch since it will not apply =
anymore
    and its content seems to be obsolite after
    '558d0bf Fix grabbing lock from atomic context in i2c driver' was
    merged to 3.12.
   =20
    [Support #60]
   =20
    Signed-off-by: Petter Mab=C3=A4cker <petter@technux.se>
    Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>

Regards,

Herve

-----Original Message-----
From: Andrei Gherzan [mailto:andrei@gherzan.ro]=20
Sent: mardi 23 juin 2015 20:29
To: Herve Jourdain
Cc: Yocto Project
Subject: Re: [yocto] [meta-raspberrypi] [PATCH] ds1307-rtc-overlay.dtb =
has been removed from the kernel tree, and most overlays have been moved =
to the dts/overlays directory

Hi,

On Thu, Jun 18, 2015 at 10:33 AM, Andrei Gherzan <andrei@gherzan.ro> =
wrote:
> Hello,
>
> On 18 Jun 2015 10:22, "Herve Jourdain" <herve.jourdain@neuf.fr> wrote:
>>
>> Hi Andrei,
>>
>> Well, it seems that the current meta-raspberrypi is pulling the=20
>> kernel from github, and the kernel on github already has these =
"features" in.
>> Which is why I could compile fine with the current meta-raspberrypi=20
>> 2or 3 weeks ago, but it failed 2 days ago when I tried to do a fresh =
build...
>> Therefore, I believe the change in the meta-raspberrypi is already=20
>> needed for the 3.18.y branch, because the kernel already has it.
>
> This is interesting. I'll check it tonight.

I re-downloaded and recompiled kernel on the current meta-raspberrypi =
master HEAD and had no issues. What meta-raspberrypi revision are you =
using?



--
Andrei Gherzan
e: andrei@gherzan.ro
w: www.gherzan.ro

