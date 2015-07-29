Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A429EE00A7B; Wed, 29 Jul 2015 02:58:54 -0700 (PDT)
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
	*      [209.85.220.173 listed in list.dnswl.org]
Received: from mail-qk0-f173.google.com (mail-qk0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A458E009EB
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 02:58:50 -0700 (PDT)
Received: by qkbm65 with SMTP id m65so1704643qkb.2
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 02:58:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=qXlLex8QKntdEDxl+BgwgnPS0WI3rjZiyA9E2eBHgBs=;
	b=URG8tESGyjE4xXORIdvw0QL8ME0DpW4kLRlAgQe3SkW2Y/9ZRHPZcPAbRoYCcHD9Be
	Js/oRIvCb3T3ql3l/koUFORRokD8temAqVWae8iW6rk4glitK52rer5gHxBSfj2N5zw+
	MLTTHyR2YzypYe/EVrU6NILahTFWFO0zvzauU+ai4tChpZookl4tnKzym/mp8urdfLbg
	E3S4SBh5dERpicJmtwJkn3g5XAjtBFtd0J16nSq5agKarSb7x+JZK/yVtYxS0PA+rg0G
	06DCvEv6XxdkshmHHBoq9/iJKAU4DW/dAu8mG44cbj9XFo9fJZUhWRyGfxk6TuHnqiMN
	lzRg==
X-Gm-Message-State: ALoCoQmmcn6/5Hd0FOMCbRUyr4w/NbH2ARsjuuwSFK20f1hJ4Nj8zJ1WlAuP/sAFdWQmao/gA3r6
X-Received: by 10.55.53.193 with SMTP id c184mr56982444qka.62.1438163929572;
	Wed, 29 Jul 2015 02:58:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.195 with HTTP; Wed, 29 Jul 2015 02:58:29 -0700 (PDT)
In-Reply-To: <022e01d0c59c$4a2a4a80$de7edf80$@neuf.fr>
References: <004101d0c55c$d068da20$713a8e60$@neuf.fr>
	<20150723130029.1268067b@recife.lan>
	<007301d0c564$360d30e0$a22792a0$@neuf.fr>
	<20150723152821.352e1a52@recife.lan>
	<021e01d0c599$4a106140$de3123c0$@neuf.fr>
	<CAJTo0LbeLX3wNYb9af=_QNk4Q2KJxRcBGYoUBW3Tc_mS0619rA@mail.gmail.com>
	<022e01d0c59c$4a2a4a80$de7edf80$@neuf.fr>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 29 Jul 2015 10:58:29 +0100
Message-ID: <CAJTo0Lajz+XJtBkhoq0S9Vbr1_nar4cAVvhQFbEc_DSeWH1g3w@mail.gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH] Add networkd as default for RaspberryPi
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
X-List-Received-Date: Wed, 29 Jul 2015 09:58:54 -0000
Content-Type: multipart/alternative; boundary=001a11476f1426bb7e051c00a2f9

--001a11476f1426bb7e051c00a2f9
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 24 July 2015 at 00:06, Herve Jourdain <herve.jourdain@neuf.fr> wrote:

> The point is that many people are turning to Poky for generating their
> first Yocto-based distribution for RaspberryPi. And out of the box, if
> using system, the network part doesn=E2=80=99t work.
>
>
Are these users building images that contain connman?  If that doesn't work
out of the box on RPi, that's a bug (and the last time I tried it, it
worked fine).

Ross

--001a11476f1426bb7e051c00a2f9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 24 July 2015 at 00:06, Herve Jourdain <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:herve.jourdain@neuf.fr" target=3D"_blank">herve.jourdain@neuf.fr</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoNormal">=
<span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,sans-serif;color:#1f497d">The point is that many people are turning to =
Poky for generating their first Yocto-based distribution for RaspberryPi. A=
nd out of the box, if using system, the network part doesn=E2=80=99t work.<=
u></u><u></u></span></p><p class=3D"MsoNormal"></p></blockquote></div><br><=
/div><div class=3D"gmail_extra">Are these users building images that contai=
n connman?=C2=A0 If that doesn&#39;t work out of the box on RPi, that&#39;s=
 a bug (and the last time I tried it, it worked fine).</div><div class=3D"g=
mail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a11476f1426bb7e051c00a2f9--
