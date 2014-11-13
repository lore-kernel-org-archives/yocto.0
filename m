Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C88B6E008CC; Thu, 13 Nov 2014 05:29:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qa0-f51.google.com (mail-qa0-f51.google.com
	[209.85.216.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B587E00831
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 05:29:13 -0800 (PST)
Received: by mail-qa0-f51.google.com with SMTP id f12so9786229qad.38
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 05:29:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=LczBch2pLfLXZYA/kzg3wKgMVaSQAUiX1Uba2MZgrxs=;
	b=eCxLdqLX+uvafKbF1Oou+bOk0DGvHexl6NmToZwqX60rrn2w5dTH2fRJVHv/6v2zNE
	1mv5dWYGb594EO9haI4pZ3Qe5grNcMEbcwVIxG9o4TY/rHAuO94cK5RdWp4Y/vXHf1K+
	6xhRgRryG7HB9+ANsg4QmbVBVASli+O8D30BQSfTRh4xzN3Pbc4AqF3eKBgOWVqJOcpv
	LubQI9Rgw3kdoizbyW0fHYsl07wmzzGO+jg83YDHjL7qYyifi6hXqeTB4yNFnlWL94YU
	Gnvsmn43sW86tQ41fHhsS1QW7WmvV9iinP8PC+XKPowTtXKfgZ5Gp0cYx1CAZII3xZ0Q
	3Mag==
X-Gm-Message-State: ALoCoQlbbRAtNuth2mvxPadWqMGmkkGViC4IDzmKiREcGBkiNEFBCAvMTnppSG/gh2Pe2GyPNV4/
X-Received: by 10.224.138.2 with SMTP id y2mr3256440qat.52.1415885352913; Thu,
	13 Nov 2014 05:29:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.98.213 with HTTP; Thu, 13 Nov 2014 05:28:52 -0800 (PST)
In-Reply-To: <5464AFCC.5010709@topic.nl>
References: <5464AB4D.8020409@topic.nl>
	<CAJTo0Lb35s=8_JkTwxtkOskW0c+WX3U7pz5erBKSvYXVxE3riw@mail.gmail.com>
	<5464ADD9.1090604@topic.nl> <5464AFCC.5010709@topic.nl>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 13 Nov 2014 13:28:52 +0000
Message-ID: <CAJTo0LbFLKJ304sCbSGZW0w9rpEe5oN5Ao3bAr8a-yLjNrRKkQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 13 Nov 2014 13:29:19 -0000
Content-Type: multipart/alternative; boundary=047d7b6709c380e4050507bd7f43

--047d7b6709c380e4050507bd7f43
Content-Type: text/plain; charset=UTF-8

Hi,

On 13 November 2014 13:19, Mike Looijmans <mike.looijmans@topic.nl> wrote:

> I've been using "ts_calibrate" in the past, and that worked just fine on
> this board.
>

Modern X servers don't use tslib, so this won't work since we stopped using
kdrive about two years ago.

DEBUG: Adding click 0 (X=1023, Y=599)
> DEBUG: Adding click 1 (X=607, Y=599)
> DEBUG: Not adding click 2 (X=1023, Y=599): within 7 pixels of previous
> click
> DEBUG: Not adding click 2 (X=1023, Y=599): within 7 pixels of previous
> click
> DEBUG: Not adding click 2 (X=1023, Y=599): within 7 pixels of previous
> click


Well, it's not within seven pixels is it...  I wonder if there's a bug in
the logic.  It might be worth bumping the xinput-calibrator revision to the
latest commit in the upstream git repo in case this has been fixed already
there.

I bought a HDMI display with an integrated touchscreen to test this sort of
thing, but the device was so dodgy that it often caused the kernel to hang
on boot...

Ross

--047d7b6709c380e4050507bd7f43
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div class=3D"gmail_extra"><br><div class=3D"gmail_quot=
e">On 13 November 2014 13:19, Mike Looijmans <span dir=3D"ltr">&lt;<a href=
=3D"mailto:mike.looijmans@topic.nl" target=3D"_blank">mike.looijmans@topic.=
nl</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">I&#39;ve been us=
ing &quot;ts_calibrate&quot; in the past, and that worked just fine on this=
 board.<br></blockquote><div><br></div><div>Modern X servers don&#39;t use =
tslib, so this won&#39;t work since we stopped using kdrive about two years=
 ago.</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204)=
;border-left-style:solid;padding-left:1ex">DEBUG: Adding click 0 (X=3D1023,=
 Y=3D599)<br>
DEBUG: Adding click 1 (X=3D607, Y=3D599)<br>
DEBUG: Not adding click 2 (X=3D1023, Y=3D599): within 7 pixels of previous =
click<br>
DEBUG: Not adding click 2 (X=3D1023, Y=3D599): within 7 pixels of previous =
click<br>
DEBUG: Not adding click 2 (X=3D1023, Y=3D599): within 7 pixels of previous =
click</blockquote><div><br></div><div>Well, it&#39;s not within seven pixel=
s is it...=C2=A0 I wonder if there&#39;s a bug in the logic.=C2=A0 It might=
 be worth bumping the xinput-calibrator revision to the latest commit in th=
e upstream git repo in case this has been fixed already there.</div><div><b=
r></div><div>I bought a HDMI display with an integrated touchscreen to test=
 this sort of thing, but the device was so dodgy that it often caused the k=
ernel to hang on boot...</div><div><br></div><div>Ross</div></div></div></d=
iv>

--047d7b6709c380e4050507bd7f43--
