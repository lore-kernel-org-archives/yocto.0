Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EB81E00BAB; Mon, 22 Feb 2016 10:00:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC106E00B70
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 10:00:39 -0800 (PST)
Received: by mail-qg0-f41.google.com with SMTP id b35so116947602qge.0
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 10:00:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=G+JozWvB34LaTB8WKBeYmE+NPON7DRgiLSL+h6KiwkI=;
	b=lL1ce64h1l45tE8R3kwp7gHA2vJp7tWAdGV+gafKkn6JKEio+LpNuskTX2NtgfiQJ6
	6fDexIra93ShskMWb23KSs05RRheOnR7OmZM12p7LoZoWM/v0TN9yTmFqW4yEyGheISb
	UU68+rHdK40as8Q4DdSRr0LMBIK8VOC/it1mxLHGSVFg7iCRBAWHW9pWLgUdeOonqVQJ
	eq+Vf4UDdCRGyWi82X+bJAHz3pqpOLv8ceOwl8kAhT3oAIvDPxHv0NIQMxGcp5Q1Anqc
	hN0aKnKb50hkMw2HALevIyBIZXYpBpn6IDZ8U+x3HTFbLbGlrImcWZnjI0Rl4pMANJK4
	Vexg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=G+JozWvB34LaTB8WKBeYmE+NPON7DRgiLSL+h6KiwkI=;
	b=KC0JK78vu1zI2iP5FGA2WQRPJ3E34jQSv+5MHVPztzTbnlmybSd6FVHYagsfv2EV08
	rdLmrPgagKW5uoI8dtc94Qgkk3B/6eRO9mbl1giZEiMCVhahgeO4SKJ45giQxc8ZMgHQ
	MVm5lk4zVU313YB3aly8Pwfc951lrgiFT49kZQ7+DqriBdLpmV3D7r0T1qSXU5bPkFBP
	9QZ5wg5UoNMbkrL0n04aQEAxbhWi2K+cVD4aZ34fd3zoIM4weE69OtzHB2G9JZ18KkQ5
	OhDa+gp624P1xqwSBhGtj0Jdt8fzkDtmDFbK2if+KPsJ7Zfm1/ZeaGxLG+WblJccS5xM
	ObZg==
X-Gm-Message-State: AG10YOSJxt/+ktmf+GW0lqEXoAc2sfJwnLX93ElPch4Y5++wciGWRxVb7qYgg/KkwUHi5UK/QdwTzyuJpfE1/g==
X-Received: by 10.140.241.5 with SMTP id m5mr20705523qhc.98.1456164038592;
	Mon, 22 Feb 2016 10:00:38 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Mon, 22 Feb 2016 10:00:09 -0800 (PST)
In-Reply-To: <CAP2S6e7-SK2RwXsFjiAch8Rpiv56C7ziD_WpiiKquXiAESKpUg@mail.gmail.com>
References: <1455985559-6341-1-git-send-email-valentin.lebescond@gmail.com>
	<CAMKF1soimB54aRBbDjxG=jfk5H0aThNAONqnxxzBujnxrE84mQ@mail.gmail.com>
	<CAP2S6e7-SK2RwXsFjiAch8Rpiv56C7ziD_WpiiKquXiAESKpUg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 22 Feb 2016 10:00:09 -0800
Message-ID: <CAMKF1sqzf81Yu3p+RR43Cq2eyRDFR58Z8AENVVxbUZRdRV=pbg@mail.gmail.com>
To: Valentin Le bescond <valentin.lebescond@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-chip][PATCH] added md5 for ntc's modified u-boot Licences/README file.
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
X-List-Received-Date: Mon, 22 Feb 2016 18:00:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, Feb 21, 2016 at 4:30 AM, Valentin Le bescond
<valentin.lebescond@gmail.com> wrote:
> Hi, sorry it was my first (tiny) try at a contribution ... Should I have
> explained more in the title ?
>
> Next Thing Co changed the Licences/README file in their repo.
> And in the u-boot.inc file used by u-boot-chip, this file is chekced with
> LIC_FILES_CHKSUM. And so it doesn't build without a modification of the m=
d5.
> That's it !
>

hmmm ok.

>
> Le sam. 20 f=C3=A9vr. 2016 =C3=A0 20:09, Khem Raj <raj.khem@gmail.com> a =
=C3=A9crit :
>>
>> On Sat, Feb 20, 2016 at 8:25 AM, Valentin LE BESCOND
>> <valentin.lebescond@gmail.com> wrote:
>> > From: Nitnelav <valentin.lebescond@gmail.com>
>> >
>> > Signed-off-by: Nitnelav <valentin.lebescond@gmail.com>
>> > ---
>> >  recipes-bsp/u-boot/u-boot-chip_git.bb | 2 ++
>> >  1 file changed, 2 insertions(+)
>> >
>> > diff --git a/recipes-bsp/u-boot/u-boot-chip_git.bb
>> > b/recipes-bsp/u-boot/u-boot-chip_git.bb
>> > index 2342478..0b9032f 100644
>> > --- a/recipes-bsp/u-boot/u-boot-chip_git.bb
>> > +++ b/recipes-bsp/u-boot/u-boot-chip_git.bb
>> > @@ -8,6 +8,8 @@ PROVIDES +=3D "u-boot"
>> >  UBOOT_VERSION ?=3D "2015.07"
>> >  PV =3D "${UBOOT_VERSION}+git${SRCPV}"
>> >
>> > +LIC_FILES_CHKSUM =3D
>> > "file://Licenses/README;md5=3D0507cd7da8e7ad6d6701926ec9b84c95"
>> > +
>>
>> while checksumming more is merrier, it would be good to know why we
>> should check for this one ?
>>
>> >  SRCREV ?=3D "854d5fcc641d8d8914c03a69d7172815d5b81a99"
>> >  BRANCH ?=3D "chip/stable"
>> >  SRC_URI =3D
>> > "git://github.com/NextThingCo/CHIP-u-boot.git;branch=3D${BRANCH}"
>> > --
>> > 1.9.1
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto

