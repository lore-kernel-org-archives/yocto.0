Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44699E008CC; Thu, 13 Nov 2014 06:17:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.42 listed in list.dnswl.org]
Received: from mail-qg0-f42.google.com (mail-qg0-f42.google.com
	[209.85.192.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD445E00831
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 06:17:08 -0800 (PST)
Received: by mail-qg0-f42.google.com with SMTP id i50so10722283qgf.29
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 06:17:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=lJwrbTnvkx6FtsMhErQrIP4Y388oIfAfjZe3p9l9IVg=;
	b=fUlZzygRJIlL82mxktKlYtD2WcTEuiC/JSdSUztGGbY6ThLKFYBvNvNByJ4v0LsmBe
	E6kPboNGddAUHwZRe9nAhyxoLl4TOpzUJY235ybwXAD4r7G7mUJCDSVbN6OM7LZEOCUx
	foiV9+iaJ4g/f5ubVlnOwgi+enuOsmaknKEzSIgqjHDWnRzIHUb3mwZ2t439wqlsdRH5
	JJUd1BEGqbnr6Le7SeVdh0wydftru80ilXn2DZH7+AIC/okaUKodArQiwxHIor9eQ3lv
	P9VFQfjhr+53leVINLkGZn+2ViHaUwDkTSMjolzphD+gwRcnESqRb8WzNcxre9m5U8eJ
	Hgqw==
X-Gm-Message-State: ALoCoQno4vVJNdWFrXyxK6ctZ4PLbGxp9Dij44lp/DCbtjz93yhgfX46u6a5zbVTbA+kyikd9nZ4
X-Received: by 10.224.23.71 with SMTP id q7mr2505441qab.22.1415888226192; Thu,
	13 Nov 2014 06:17:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.98.213 with HTTP; Thu, 13 Nov 2014 06:16:45 -0800 (PST)
In-Reply-To: <5464BBAE.1040507@topic.nl>
References: <5464AB4D.8020409@topic.nl>
	<CAJTo0Lb35s=8_JkTwxtkOskW0c+WX3U7pz5erBKSvYXVxE3riw@mail.gmail.com>
	<5464ADD9.1090604@topic.nl> <5464AFCC.5010709@topic.nl>
	<CAJTo0LbFLKJ304sCbSGZW0w9rpEe5oN5Ao3bAr8a-yLjNrRKkQ@mail.gmail.com>
	<5464B833.1060609@topic.nl> <5464BBAE.1040507@topic.nl>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 13 Nov 2014 14:16:45 +0000
Message-ID: <CAJTo0LaLUH=ja74vi3w8a3S7ojgbAyZ3BfD6f8+8MYok-wn-9A@mail.gmail.com>
To: Mike Looijmans <mike.looijmans@topic.nl>
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
X-List-Received-Date: Thu, 13 Nov 2014 14:17:22 -0000
Content-Type: multipart/alternative; boundary=001a11c23156c3a6910507be2ac7

--001a11c23156c3a6910507be2ac7
Content-Type: text/plain; charset=UTF-8

On 13 November 2014 14:09, Mike Looijmans <mike.looijmans@topic.nl> wrote:

> So it seems related to the little I2C touchscreen controller, or some kind
> of rotation. The coordinate system for the small touchscreen looks rotated
> 180 degrees, looking at the numbers. xinput cannot handle that?


My touchscreen is Y-inverted and worked fine once calibrated.  Not sure if
this is a problem with the calibrator/xi not handling both axis being
inverted, or something else is misbehaving.  You're rapidly reaching the
limits of my experience here - have you tried using the partial numbers
that xinput-calibrator gave you for the broken touchscreen and
extrapolating calibration setting to set manually?

Ross

--001a11c23156c3a6910507be2ac7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 13 November 2014 14:09, Mike Looijmans <span dir=3D"ltr">&lt;<a href=3D"=
mailto:mike.looijmans@topic.nl" target=3D"_blank">mike.looijmans@topic.nl</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">So it seems related =
to the little I2C touchscreen controller, or some kind of rotation. The coo=
rdinate system for the small touchscreen looks rotated 180 degrees, looking=
 at the numbers. xinput cannot handle that?</blockquote></div><br>My touchs=
creen is Y-inverted and worked fine once calibrated.=C2=A0 Not sure if this=
 is a problem with the calibrator/xi not handling both axis being inverted,=
 or something else is misbehaving.=C2=A0 You&#39;re rapidly reaching the li=
mits of my experience here - have you tried using the partial numbers that =
xinput-calibrator gave you for the broken touchscreen and extrapolating cal=
ibration setting to set manually?</div><div class=3D"gmail_extra"><br></div=
><div class=3D"gmail_extra">Ross</div></div>

--001a11c23156c3a6910507be2ac7--
