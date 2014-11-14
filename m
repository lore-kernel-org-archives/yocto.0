Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2AAB0E008FF; Fri, 14 Nov 2014 03:54:21 -0800 (PST)
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
	*      [209.85.192.54 listed in list.dnswl.org]
Received: from mail-qg0-f54.google.com (mail-qg0-f54.google.com
	[209.85.192.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD167E00876
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 03:54:16 -0800 (PST)
Received: by mail-qg0-f54.google.com with SMTP id q108so12144555qgd.27
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 03:54:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=CMuJgczx630ARJkdZT2QeP0b2C2ns+pTtgnIRqG5UJQ=;
	b=kQORpXMCyuZVy6sGSQAsX32eJav0EqV3NZfLOCKkPQ2G0AfcN+abZzcWL29PEAQlfw
	AqLUikTO1a50BNa7GoMVwGZ6Pv75BnkGeNsITz1wIETUbh0tTpN6LevDC/isOAnbiBZm
	DjXnQqpIomk8DolSYmnEKOKq7yq0KVDy9DaPyUzB/O7OMCX7vJ9hEzGtzO3WjrW0v+yg
	+GYlfSKTcdtnpuT85OQQgriwGsKmRVUJFdaJM3nuFoVUzALUONEPY4ncblFQutMqR00U
	nw+ZjxMZUbUXatzDpQ5MRJtRRE04u0mCJEMrbDRsj6hXcU4+Q3rXEmIlVnXKh+j94/TE
	GT/A==
X-Gm-Message-State: ALoCoQmSpmK3NOhcml/n993UtiKoNzVBeJyMu8r1Q0fTlEsdFWF0cjOdwpEr1k8xWD0V767pDt6Q
X-Received: by 10.140.17.67 with SMTP id 61mr10561786qgc.59.1415966055483;
	Fri, 14 Nov 2014 03:54:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.98.213 with HTTP; Fri, 14 Nov 2014 03:53:55 -0800 (PST)
In-Reply-To: <CALXw4G6gZhA6tv6zQyaG4owLM+T1Yd8TBC94Y7dNWDbCW8D9SQ@mail.gmail.com>
References: <5464AB4D.8020409@topic.nl>
	<CAJTo0Lb35s=8_JkTwxtkOskW0c+WX3U7pz5erBKSvYXVxE3riw@mail.gmail.com>
	<5464ADD9.1090604@topic.nl> <5464AFCC.5010709@topic.nl>
	<CAJTo0LbFLKJ304sCbSGZW0w9rpEe5oN5Ao3bAr8a-yLjNrRKkQ@mail.gmail.com>
	<CALXw4G6V7CWLx5HJvvHg7WRkALHpqZji4EXq8x0f_coxQD3AFQ@mail.gmail.com>
	<CAJTo0LZXJRjcb2P=DUtKH0XToNSLoaNgNF7K97e+LxjGC05=Tg@mail.gmail.com>
	<CALXw4G6gZhA6tv6zQyaG4owLM+T1Yd8TBC94Y7dNWDbCW8D9SQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 14 Nov 2014 11:53:55 +0000
Message-ID: <CAJTo0LZ2RC79UMa3ceaA3j7FyyG-ZwbXqcNFiDxUPHZBh7oM5g@mail.gmail.com>
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
X-List-Received-Date: Fri, 14 Nov 2014 11:54:21 -0000
Content-Type: multipart/alternative; boundary=001a11c0fa28c05ffb0507d0497f

--001a11c0fa28c05ffb0507d0497f
Content-Type: text/plain; charset=UTF-8

On 14 November 2014 08:17, Michael Gloff <mgloff@emacinc.com> wrote:

> I am using the xf86-input-tslib X driver. I forgot about that piece of the
> puzzle.
>

Genuinely surprised that still works, but good to know!

Ross

--001a11c0fa28c05ffb0507d0497f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 14 November 2014 08:17, Michael Gloff <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:mgloff@emacinc.com" target=3D"_blank">mgloff@emacinc.com</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div>I am using the xf86-input-=
tslib X driver. I forgot about that piece of the puzzle.=C2=A0 <br></div></=
blockquote></div><br>Genuinely surprised that still works, but good to know=
!</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross=
</div></div>

--001a11c0fa28c05ffb0507d0497f--
