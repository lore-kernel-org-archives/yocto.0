Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3048AE007BA; Mon, 24 Apr 2017 03:52:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.178 listed in list.dnswl.org]
Received: from mail-qk0-f178.google.com (mail-qk0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED715E00349
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 03:52:29 -0700 (PDT)
Received: by mail-qk0-f178.google.com with SMTP id f76so33220507qke.2
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 03:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=xTuYtdVezjCJsBU5I2Kr7+gT6G/d9Fpo/KkKckjoIbQ=;
	b=Rxyz7gYYk7TxWjR4RlRc4EPKBCuEs+ob4u7qJuTdW97R4ifCsgSOnBU7ma99JmZnBP
	Gi9WhiKsHo6gON/1TAlonj++JzVU4L/FHE0UFoOgbNvcX8f0hwjbQN2XbdjGEpWynHey
	06Xg5tedIS+4zHy1Eh5eXZMfXj5CD5E2wuso3ZUyVcFjyQZU6LoppfIP7pDzvJ+on/Qo
	5Hyp53TwtJAFCXvkSRnoxtiGLEhihFnCFzRRxMTpLeyOGPNY0qPt/h3JNA/ne7rfygCJ
	wmQe3RYUDJkEvfFF0OyqJh9DUXXgOpYABWN1LGXPzh6md2dEFUsMgc6v3ME3YVk4wIOL
	SUYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=xTuYtdVezjCJsBU5I2Kr7+gT6G/d9Fpo/KkKckjoIbQ=;
	b=c//O85oHfCmocEv5Rl9H9gI0YGCQRlzI2deE8aX4UDOmXReSgb0P+QIulD+CF4WWHo
	iwVhSbScFlkHoMixAGlABVvWtgEUS1KwY3uCsfthA851bD7A4MhcBMwJz1Cfyrqqaxog
	2K2+xjUFp2qclaB5VJWyUT3vgweAj4vHqDi4AGsuVPJ2YfMf0Yh3g40ZmTFJ1j0SIWeu
	GKvE+Vg5zDPEmXhAUUAnXiqSQhsKY5+0lVzdic1ADInxn10yC9wDKyLDu0F/Gh0FkKE1
	DQvuO87zkoJAcT8hS6HyHh/3VVaqfFX0S+oVplWAQhpOWfDWA3rfB4w3pZolOS2P/xsW
	uXSA==
X-Gm-Message-State: AN3rC/7XFu6Hd+iFvfTpyia8dhZ40gUq6WF5YXY0osya5bDby3DlsI6p
	WKXmcUnS5nqMGnmmTlTlVcnOaWpD+6wv
X-Received: by 10.55.40.41 with SMTP id o41mr26106269qkh.3.1493031148954; Mon,
	24 Apr 2017 03:52:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Mon, 24 Apr 2017 03:52:08 -0700 (PDT)
In-Reply-To: <CAMKF1sqfvtQPWN5Yuz3RPYkXpneS+XWcYmit_=bcvKGo3_hx8w@mail.gmail.com>
References: <CAMKF1spGM+kugUDOB4kF7NAgSCt9vCw8GFT0nLKFRd2tHei=pw@mail.gmail.com>
	<CAJTo0La0mtVGyLysCnqi9EQmT+4L1eYRxgE-TV=3Va45jnt=Xg@mail.gmail.com>
	<CAMKF1sqfvtQPWN5Yuz3RPYkXpneS+XWcYmit_=bcvKGo3_hx8w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 24 Apr 2017 11:52:08 +0100
Message-ID: <CAJTo0LaT_7RHzG=2UyZ=Y5W=XCCWGq_P_e-E0jO3jteyhVMF-w@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] gcc7 and glibc-2.26 recipes
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
X-List-Received-Date: Mon, 24 Apr 2017 10:52:34 -0000
Content-Type: multipart/alternative; boundary=001a1140a35a45bb5a054de76784

--001a1140a35a45bb5a054de76784
Content-Type: text/plain; charset=UTF-8

On 24 April 2017 at 06:45, Khem Raj <raj.khem@gmail.com> wrote:

> There are few other fixes that needs to be in there. glibc and gcc recipes
> also needed some fixes. I have pushed the whole series to kraj/master
> branch on contrib repo
>

grub is still failing on musl on the autobuilder:

| ../../grub-2.00/grub-core/video/i386/pc/vbe.c: In function
'vbe2videoinfo':
| ../../grub-2.00/grub-core/video/i386/pc/vbe.c:882:28: error: this
statement may fall through [-Werror=implicit-fallthrough=]
|        mode_info->mode_type |= GRUB_VIDEO_MODE_TYPE_CGA;
|        ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~

https://autobuilder.yocto.io/builders/nightly-musl/builds/243/steps/BuildImages/logs/stdio

Ross

--001a1140a35a45bb5a054de76784
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 24 April 2017 at 06:45, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto=
:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left-width:1px;border-left-style:solid;border-left-color:rgb(204,20=
4,204);padding-left:1ex"><div id=3D"gmail-:31c" class=3D"gmail-a3s gmail-aX=
jCH gmail-m15b9e7edf85c6650">There are few other fixes that needs to be in =
there. glibc and gcc recipes<br>
also needed some fixes. I have pushed the whole series to kraj/master<br>
branch on contrib repo</div></blockquote></div><br>grub is still failing on=
 musl on the autobuilder:</div><div class=3D"gmail_extra"><br></div>| ../..=
/grub-2.00/grub-core/video/i386/pc/vbe.c: In function &#39;vbe2videoinfo&#3=
9;:<br>| ../../grub-2.00/grub-core/video/i386/pc/vbe.c:882:28: error: this =
statement may fall through [-Werror=3Dimplicit-fallthrough=3D]<br>| =C2=A0 =
=C2=A0 =C2=A0 =C2=A0mode_info-&gt;mode_type |=3D GRUB_VIDEO_MODE_TYPE_CGA;<=
br>| =C2=A0 =C2=A0 =C2=A0 =C2=A0~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~=
~~~~~<div><br></div><div><a href=3D"https://autobuilder.yocto.io/builders/n=
ightly-musl/builds/243/steps/BuildImages/logs/stdio">https://autobuilder.yo=
cto.io/builders/nightly-musl/builds/243/steps/BuildImages/logs/stdio</a><br=
></div><div><br></div><div>Ross</div></div>

--001a1140a35a45bb5a054de76784--
