Return-Path: <leon@sidebranch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB057E00AA9; Thu, 19 Jan 2017 07:17:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.46 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22A14E009FA
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 07:17:17 -0800 (PST)
Received: by mail-oi0-f46.google.com with SMTP id j15so26344000oih.2
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 07:17:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=s+MT4FitwOIcQrXbL/+5yjNcD/p4iOsX2JP+60PtzqY=;
	b=p1uM3mGIQoBY31cm1zaAM0K54tnpIy38/xtGHNrg3Is3Rwks+hnUDPDxjZ+Ej71oyq
	5/ahAh0QPF2/iPCow0rlcIb5zoFFOOCa1V3IofQ+aAgIkpKVj8ujxne7RocfxV/U/mwC
	pq3cpQCHqjWS1JcjTKUA/6WBVsk82irtMxJRI23QgTApKsdZ6CTf0qWqEXBVPbexksBh
	+E5n+BNsMGW4bDB/OD6W9jeJ3/MaiPv26GjXKd3wuqhaWJV9SiMDQ4wlUWvGoikrKPWl
	uEEjNMoAC6E73X7NwrLYOQPJQOuhtLUrHAyubRLgrBdPxBpuDqw7njL/AFdlJkXmbRcG
	TGVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=s+MT4FitwOIcQrXbL/+5yjNcD/p4iOsX2JP+60PtzqY=;
	b=D8IHZuMfIwAAVnrM/jq7CGfLUiV+2/Wc+eOxUqeCv7+ort09k7/KkYDM+YxpqhghvL
	2a7RzscGPeTpqCNx/uS7ukBbVkztz1BoSW4xcB+9RV56ogxhcX0AnxDXluQzoLsWOFF2
	edtiw0eI6mo7aRf/g7Nh+ykEKQ3AF/nnUFp+xA4e95Vb7jd74xESA12lqFITwtUmNxz8
	UX8YC45kPhJ364EpUVPbMUUfcJ2VAlxMGt+jkwALhAEdKFVLwrec4bEIxUqkwHsF0JfY
	ouUV8NQwRxYoEA25Q6KjMd3nRm2DPNVodT8Gt6o5redFeZpDMyZSSDnvRDe1eiFLlxVD
	W/jg==
X-Gm-Message-State: AIkVDXLBh8ukhJIFIrcVvfUC7+JJdAZo27v5O11FXTeYSRNJOiVpispJB6yQjgqVquxpgtvmAMEsKsFtYiZqRg==
X-Received: by 10.202.205.74 with SMTP id d71mr4078755oig.120.1484839036943;
	Thu, 19 Jan 2017 07:17:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.48.108 with HTTP; Thu, 19 Jan 2017 07:17:16 -0800 (PST)
In-Reply-To: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
References: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Thu, 19 Jan 2017 16:17:16 +0100
Message-ID: <CAMjhiJgF3GxfYEBDum7HP7tnjTF+LQ3vaeUNG6_tYQ8nD7Rzdw@mail.gmail.com>
To: Jacob Chen <jacob-chen@iotwrt.com>
Cc: Yocto List <yocto@yoctoproject.org>, eddie.cai@rock-chips.com
Subject: Re: [PATCH 0/7] introduce rockchip offical linux support to meta-rockchip
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
X-List-Received-Date: Thu, 19 Jan 2017 15:17:19 -0000
Content-Type: multipart/alternative; boundary=001a11351f4c58db670546740725

--001a11351f4c58db670546740725
Content-Type: text/plain; charset=UTF-8

Hi Jacob,

On Thu, Jan 19, 2017 at 11:09 AM, Jacob Chen <jacob-chen@iotwrt.com> wrote:

> This series of patches add below features, will add more supports in the
> future(medias, more chips).
> 1
> Rockchip 4.4 kernel is currently the latest version of the rockchip
> offical kernel, will be an upstream tracking branch.
> We regularly release the kernel through github. It support all rockchip
> 64-bit chips and a few 32-bit chips.
>
> The topic mentions "official kernel" and you mention "we".

Does this mean this is a rock-chips driven effort?

Good to see such (vendor) support, welcome aboard, but please understand
the "layers" system of Yocto, like the others already pointed out in this
email thread.

- Basically you create a (BSP) layer, that sits on top of Yocto /
OpenEmbedded core.
- Also, it is good practice to also support the same GIT branch names for
the different Yocto releases (such as krogoth, morty) such that users can
easily match the correct branches so that everything just builds correctly.

Regards,

Leon.

--001a11351f4c58db670546740725
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jacob,<br><div><div class=3D"gmail_extra"><br><div clas=
s=3D"gmail_quote">On Thu, Jan 19, 2017 at 11:09 AM, Jacob Chen <span dir=3D=
"ltr">&lt;<a href=3D"mailto:jacob-chen@iotwrt.com" target=3D"_blank">jacob-=
chen@iotwrt.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Thi=
s series of patches add below features, will add more supports in the futur=
e(medias, more chips).<br>

1<br>
Rockchip 4.4 kernel is currently the latest version of the rockchip offical=
 kernel, will be an upstream tracking branch.<br>
We regularly release the kernel through github. It support all rockchip 64-=
bit chips and a few 32-bit chips.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br></font></span></blockquo=
te><div>The topic mentions &quot;official kernel&quot; and you mention &quo=
t;we&quot;.<br><br></div><div>Does this mean this is a rock-chips driven ef=
fort? <br><br></div><div>Good to see such (vendor) support, welcome aboard,=
 but please understand the &quot;layers&quot; system of Yocto, like the oth=
ers already pointed out in this email thread.<br><br>- Basically you create=
 a (BSP) layer, that sits on top of Yocto / OpenEmbedded core.<br></div><di=
v>- Also, it is good practice to also support the same GIT branch names for=
 the different Yocto releases (such as krogoth, morty) such that users can =
easily match the correct branches so that everything just builds correctly.=
<br><br></div><div>Regards,<br><br></div><div>Leon.<br></div></div><br></di=
v></div></div>

--001a11351f4c58db670546740725--
