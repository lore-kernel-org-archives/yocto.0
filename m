Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11E03E00D7F; Wed, 20 Dec 2017 02:39:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B508FE00C0F
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 02:39:54 -0800 (PST)
Received: by mail-io0-f175.google.com with SMTP id w127so16842689iow.11
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 02:39:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Gi8vGIIXlYyCJjo1WMp9IDTsEB0qKfTMwyzNmkzcw2g=;
	b=SP9qA0I15QzDmHDXs2YIHuyteJLRLT2cbG7Zau7pf1B+gLfTAHC2gzmBlV3U+evMRx
	WtzT3Bhr9mnYcGVveHvqcHTBuZimv0e9FOMsCrxGo0PgXm/gCeODMVaBratq+MXoPOD4
	g8wp4t2irvqnkEVeJMeh+iJKERRvISAFjqJYUfCc4+PaOKeYQ0wMabAGesd446bd5rh3
	0pMMvZf5sCKvXv2mpTa/QmX8kgk+uBjOQ5tASUuv6mgHjC+EFQHBTEFrbxYxcGtsHicP
	C7xYxJiK37YfLFxazDlIkfJsZRtpNpFSfeGAj+dSQ88hEOlNMBy17EN1/UsKGC/Nz3ui
	mdDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Gi8vGIIXlYyCJjo1WMp9IDTsEB0qKfTMwyzNmkzcw2g=;
	b=CUN9ItMcTHbNspIOVKIjJMC4sXK5ftnfhzYdgmINTxfMnBVdBhKVylUvderDJfomHf
	rclc7h/K7DwYqMbnNiUTdGnM27F8bkQ8uGVbxHnbTbTiNGUPueBrzm75X+/yavrvFu2N
	/qlHHxM2FEQt3MbM2T7sIRRNCT4ZylK59i+FhrkSDf7VzmnDaVOAQXc+uvlt6QP8dF4X
	EbTsaQvultIuRB5MLs6jRVZ6UDTOVLrgpjtH9ie2Ag+5vQKG4SUKJJIRlNXP4OA9fdSX
	9KGXhMx1vowWBepYNsGO8EvBGRtHEMRLRCBV0AEPgy/qt/SD7q/LjWeg1wVrFKAm6Rum
	ijZg==
X-Gm-Message-State: AKGB3mLmQ3CG3AHKeoZZKKLDkD+bDAcWBZCto5rB2v/TnBJL1s4XF28M
	4rdT5EU8BTuDfqfkVln8o+W+HhN2UD3nze7y4KgrOw==
X-Google-Smtp-Source: ACJfBostnUeWXSBu1aegsnpF/IJo2x2F/+ALB8zsTC5MgILargqAk3s1q8rE1iGZwf8iItuaC8Q09g1OuMhdY8hzg6I=
X-Received: by 10.107.7.152 with SMTP id g24mr3641708ioi.227.1513766393808;
	Wed, 20 Dec 2017 02:39:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.141.20 with HTTP; Wed, 20 Dec 2017 02:39:33 -0800 (PST)
In-Reply-To: <CAGAf8LyMx37hYr4X7UuS04UeK4Z9d59-+EajMwh+96MEiSGkQg@mail.gmail.com>
References: <CAPb0b+OT2_4F8mcXmw=bBMxFQgOHW0wBtWY2R_P4=JxWa-seNg@mail.gmail.com>
	<CAPb0b+ODNZ1k2rH6+CJYbCPzLtXFmHB76NnWK4yVSDEQ68skdA@mail.gmail.com>
	<CAGAf8LzbvdQ3HaYnkojw3TrQdUdOgZQ123kfZqe_8D+nw7YzwA@mail.gmail.com>
	<CAGAf8LwXHuc6NEm+w6J40AZnSpspce=cvzzxbs956FSpq_vHUw@mail.gmail.com>
	<CAJTo0Laszwz11hoTQ72MRyw=8ovHcbMqS=dcsuqX_3T3D41joQ@mail.gmail.com>
	<CAGAf8LyMx37hYr4X7UuS04UeK4Z9d59-+EajMwh+96MEiSGkQg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 20 Dec 2017 10:39:33 +0000
Message-ID: <CAJTo0LZwzKX3qwnPNmmnHgfR+ALRy0vUSdcRE9f8-XvD+WW0GQ@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: rfkill cannot open control device
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
X-List-Received-Date: Wed, 20 Dec 2017 10:39:55 -0000
Content-Type: multipart/alternative; boundary="001a113f3cfe2d1dfc0560c334f1"

--001a113f3cfe2d1dfc0560c334f1
Content-Type: text/plain; charset="UTF-8"

On 20 December 2017 at 10:30, Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> > IMAGE_INSTALL_append = " bluez5"
>
> I see.
>
> This should be the another way, should'n it?
>
> CORE_IMAGE_EXTRA_INSTALL += "bluez5"
>

If you're using core-image then that's the preferred way, yes.

Ross

--001a113f3cfe2d1dfc0560c334f1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 20 December 2017 at 10:30, Zoran Stojsavljevic <span di=
r=3D"ltr">&lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_b=
lank">zoran.stojsavljevic@gmail.com</a>&gt;</span> wrote:<br><div class=3D"=
gmail_extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div=
 dir=3D"ltr"><div><span style=3D"font-size:12.8px">&gt; IMAGE_INSTALL_appen=
d =3D &quot; bluez5&quot;</span><br></div><div><br></div>I see.<div><br></d=
iv><div>This should be the another way, should&#39;n it?</div><div><br></di=
v><div>CORE_IMAGE_EXTRA_INSTALL +=3D &quot;bluez5&quot;</div></div></blockq=
uote><div><br></div><div>If you&#39;re using core-image then that&#39;s the=
 preferred way, yes.</div><div><br></div><div>Ross=C2=A0</div></div></div><=
/div>

--001a113f3cfe2d1dfc0560c334f1--
