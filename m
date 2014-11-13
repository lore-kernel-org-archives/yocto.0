Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48B89E008C3; Thu, 13 Nov 2014 15:13:49 -0800 (PST)
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
	*      [209.85.192.52 listed in list.dnswl.org]
Received: from mail-qg0-f52.google.com (mail-qg0-f52.google.com
	[209.85.192.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F02B1E00831
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 15:13:44 -0800 (PST)
Received: by mail-qg0-f52.google.com with SMTP id z60so336053qgd.39
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 15:13:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=87nA5kxmQ3tnUCI85uWFlCstywFv2n5OG0WMlK7dZdM=;
	b=XvNLEATWNzy4eeWiLh9CccO+5Nt7edZsNSK0lT35ZEMcGSKFKczJTw0B582BnRl0/Y
	PhxjPAYRqwU5ryWrXB5yfKBbUVOFPPvuzF5hncCaEOGxtypQPKLp8KAizeA5mR/MMZMK
	OFEFkLpTOCJojEBaDtLR21N25Zzzr5E8KcMaOH7wTBFdNAWMplBQ9M8PjaChn6Gh/MXg
	zg172UakC+2aDyBF73sw+8nM2yUlkpt76x/EqCMNP6luhb+8yG8CTfoLtkj1k96K7jwX
	GHzg6y9PfukhCIkOBnOsC6hQc81QnhTlGMZXXQEopofrX3JtYjj4eMCRxwntzvktFiaf
	eLiQ==
X-Gm-Message-State: ALoCoQkKQv8n0U6nkdrrqafcRldwuyCLNitHK9kNCh1aMSF7C6IYdxXesbmWoXowjgRf3lFXsl3s
X-Received: by 10.140.94.246 with SMTP id g109mr6590150qge.77.1415919957764;
	Thu, 13 Nov 2014 15:05:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.98.213 with HTTP; Thu, 13 Nov 2014 15:05:37 -0800 (PST)
In-Reply-To: <CALXw4G6V7CWLx5HJvvHg7WRkALHpqZji4EXq8x0f_coxQD3AFQ@mail.gmail.com>
References: <5464AB4D.8020409@topic.nl>
	<CAJTo0Lb35s=8_JkTwxtkOskW0c+WX3U7pz5erBKSvYXVxE3riw@mail.gmail.com>
	<5464ADD9.1090604@topic.nl> <5464AFCC.5010709@topic.nl>
	<CAJTo0LbFLKJ304sCbSGZW0w9rpEe5oN5Ao3bAr8a-yLjNrRKkQ@mail.gmail.com>
	<CALXw4G6V7CWLx5HJvvHg7WRkALHpqZji4EXq8x0f_coxQD3AFQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 13 Nov 2014 23:05:37 +0000
Message-ID: <CAJTo0LZXJRjcb2P=DUtKH0XToNSLoaNgNF7K97e+LxjGC05=Tg@mail.gmail.com>
To: Michael Gloff <mgloff@emacinc.com>
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
X-List-Received-Date: Thu, 13 Nov 2014 23:13:49 -0000
Content-Type: multipart/alternative; boundary=001a113a81d61d03da0507c58e09

--001a113a81d61d03da0507c58e09
Content-Type: text/plain; charset=UTF-8

On 13 November 2014 17:58, Michael Gloff <mgloff@emacinc.com> wrote:

> BTW, you can use tslib with xorg. This is what I have set up as I find
> ts_calibrate easier to work with.


The only mention of e.g. ts_read() that I can see in the xserver source is
in the kdrive server.  Is there some compatibility mode or something that
I'm unaware of?

Ross

--001a113a81d61d03da0507c58e09
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 13 November 2014 17:58, Michael Gloff <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:mgloff@emacinc.com" target=3D"_blank">mgloff@emacinc.com</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex">BTW, you can use tslib with xor=
g. This is what I have set up as I find ts_calibrate easier to work with.</=
blockquote></div><br>The only mention of e.g. ts_read() that I can see in t=
he xserver source is in the kdrive server.=C2=A0 Is there some compatibilit=
y mode or something that I&#39;m unaware of?</div><div class=3D"gmail_extra=
"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113a81d61d03da0507c58e09--
