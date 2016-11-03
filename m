Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB4D3E00C3E; Thu,  3 Nov 2016 06:03:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.175 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A954BE00BF8
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 06:03:24 -0700 (PDT)
Received: by mail-qk0-f175.google.com with SMTP id x190so53829472qkb.0
	for <yocto@yoctoproject.org>; Thu, 03 Nov 2016 06:03:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3IcoynUqLkeTIdGkH/iEL0JdfHKlJSFLcOLgMeSumiU=;
	b=MvpFGnVZBYp24/Pd6RbIFGVjuaQj5gaDy7Vf9+tSqJ5sC108ZBTqJbJU1kxlPyTDoX
	wmiz6za8f8B3kb8rlVndepxx+SSkVfJVYS34pUXp02PDC44IYFn9eKrEwCdrerGgh5L9
	r/IlPbm6+7WPo2Zd2XBlxgTeSX8f9oQ6VHSY9hkkyoEisuUnPosXeK2ggQ2ValkS/ROX
	8N3vnI6ONOSi3gPpcU4ERIurKWDy0qBo85pEc/z4MklrY/agok0e3iKFAQUl/CyoE9Ty
	YRXxjyqlhLiJjcf6sbZ5fVRSqXxdDdc3iC25FHyvIcQfcBlWFDBwJdzkPzRyF8iFLmfq
	mlSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3IcoynUqLkeTIdGkH/iEL0JdfHKlJSFLcOLgMeSumiU=;
	b=TzeRDqnxvi9QlJ7d/5YUoihhSX5Zu77IrynlyMsYfSKfXm6akps5TjzJeJuYHG4Lt7
	7ndvVL9U2QvSpJxIkw1rglrZr7AWEMidSFstXdIGP5zcoYrywa/ZFNw2g/mwpMXO2GLk
	W50n70V+sxV4U1DEl3UOmKb80GRZl5ngMdegqMZwXeViDzbRVzsyB+lLAQ8Wil/QKfVm
	11pR3Hg2PMtI0LHSsdAHh2uttWJuVgCf86PVDIuNSTOsN5NRgYz82MAIzIh39vtukLvF
	WbgML+ZvcRejH50Jq6erTFAP4cf5m/V9qM1GGh0RmdGHcWrV+1VqX/aEOIUdhY2fOR7R
	0gLQ==
X-Gm-Message-State: ABUngvfj59xnSr9EaYpTGEJLE0iutBvnonJcpORCKZ274P2X2WXMeIhLq+BPEXpb+i3F+K+tz5SMvrByHPRiZUwl
X-Received: by 10.55.207.78 with SMTP id e75mr8948037qkj.36.1478178204509;
	Thu, 03 Nov 2016 06:03:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.208 with HTTP; Thu, 3 Nov 2016 06:03:04 -0700 (PDT)
In-Reply-To: <op.yqcrihyomnlnty@pc-mls.ecafaros.local>
References: <op.yqcpvhydmnlnty@pc-mls.ecafaros.local>
	<a8763b48-7566-4974-895b-f9137e4d3e38@mlbassoc.com>
	<op.yqcrihyomnlnty@pc-mls.ecafaros.local>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 3 Nov 2016 13:03:04 +0000
Message-ID: <CAJTo0LaF1+2GDymRDs0ccs1e5s+e8uSapMgWYU78RRYbCBe3bw@mail.gmail.com>
To: idealsim <idealsim@laposte.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: How to add libudev.h
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
X-List-Received-Date: Thu, 03 Nov 2016 13:03:28 -0000
Content-Type: multipart/alternative; boundary=001a1145b7b8cb810b0540652e16

--001a1145b7b8cb810b0540652e16
Content-Type: text/plain; charset=UTF-8

On 3 November 2016 at 12:55, idealsim <idealsim@laposte.net> wrote:

> Thanks for your answer.
> It seems that i didn't have DEPENDS = "udev".
> How i can add it ?
>         - to my local.conf
>         or
>         - to myImage.bb
> Regards,
>

If you want to do compiling inside the image, the easy way is to just add
dev-pkgs to IMAGE_FEATURES for the image recipe.  This gives you all of the
headers for everything installed, which will include the udev headers
assuming that your image has udev.

Ross

--001a1145b7b8cb810b0540652e16
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 3 November 2016 at 12:55, idealsim <span dir=3D"ltr">&lt;<a href=3D"mail=
to:idealsim@laposte.net" target=3D"_blank">idealsim@laposte.net</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div id=3D":124" class=3D"a3s =
aXjCH m1582a430067dd664">Thanks for your answer.<br>
It seems that i didn&#39;t have DEPENDS =3D &quot;udev&quot;.<br>
How i can add it ?<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 - to my local.conf<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 or<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 - to myImage.bb<br>
Regards,<br></div></blockquote></div><br>If you want to do compiling inside=
 the image, the easy way is to just add dev-pkgs to IMAGE_FEATURES for the =
image recipe.=C2=A0 This gives you all of the headers for everything instal=
led, which will include the udev headers assuming that your image has udev.=
</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross<=
/div></div>

--001a1145b7b8cb810b0540652e16--
