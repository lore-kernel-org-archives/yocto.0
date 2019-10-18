Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04012E00D8E; Fri, 18 Oct 2019 01:58:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.177 listed in list.dnswl.org]
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
	[209.85.222.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CE6CE00D33
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2019 01:58:35 -0700 (PDT)
Received: by mail-qk1-f177.google.com with SMTP id f18so3989998qkm.1
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2019 01:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=924Dpv3IczRCQisKreC1wYL1+OfzSsA9TZHz6YItlCU=;
	b=Rf7j8nrCRsFpZP/fTfc57wySiZVmTYrlcT41OKR/3Y/K0txVfiJFWLBg0fQcrNK4Xy
	uLMW2eNVhhW9C12KB9oyimpEJBUgUT8KWx+ieXS15jFAUnu3g5q0tz8NEbDg9fjmaCBE
	bKZhedC3OnCXXkm35Ky9eFutLxTFQdSuMTg5lgIEe9pmXRdErrD1+KowlV2hjyyKXNfI
	ageFTTcH249SBQXucz4HlROW0G0JTj7KgS3zKr1uNcpIj7XU2mxBBoE1xhiij1e8Q/iZ
	t4BGnW6KraMzUW8lunDk6aAa2v7eG1Rsw7Tku/6R9wU7I9kVE3cmMhKpGd/wwuPJnnzt
	zjIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=924Dpv3IczRCQisKreC1wYL1+OfzSsA9TZHz6YItlCU=;
	b=Bjzj03u6uP0159s1HhokfZHGizcnmtIusdVQ3bhvPJcwUv7Zv0jEtByb4qkg7wkiS4
	PJ9phd/v/AsNE3wLCksCjMm8zBY8P1v6KfNhjVNedvy4CJXU0LGA5unx4MeG7JsADEe/
	+Kh8dIlvA8J+YFM8b8MCxlMU5YKrgGFp6cuz7YsGfxJ0IsMjzb0NN7L2Ckca0k2kDfJp
	Vde1gIc1bJbpEcqeZIuhoht7T6QzKzgbWMTSNC1jHTEQovHHukpZFMq/CnKfXaA7MFay
	Ma0B6mITFGCp/DRk3JyCdFnmxEKW6ZlDGi+u6VrZl/cB0OBeQ6pRSZXjBwnj6hPDEXr4
	YIZQ==
X-Gm-Message-State: APjAAAV0jEn6ADWEzW+/bz6BqSCYaJa625+s1am801AsokjxGCzWCDAb
	1wgd8NM8YG/ZEy/yb/Is5MICt1BLvF4zadXNHR0=
X-Google-Smtp-Source: APXvYqylxFl/OhV8yBa5F9fb3Ypgzcaq4/j7+QZ0OQ74e8zwqD692f+BLwHbp2PCXlRNCZJL1WsJZXGa90maFH1lb3Q=
X-Received: by 2002:a05:620a:1645:: with SMTP id
	c5mr7653398qko.212.1571389114347; 
	Fri, 18 Oct 2019 01:58:34 -0700 (PDT)
MIME-Version: 1.0
References: <MAXPR01MB220688520F47DEEC5D530BD9FA6C0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MAXPR01MB220688520F47DEEC5D530BD9FA6C0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 18 Oct 2019 14:28:23 +0530
Message-ID: <CAMKF1sofAn-D104y=Aj2SQuvjrnLqoQjcpRRL3oNjTrXw75d3w@mail.gmail.com>
To: Abhi Arora <abhiarora4@live.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Reducing the size of the image by optimizing python
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
X-List-Received-Date: Fri, 18 Oct 2019 08:58:37 -0000
Content-Type: multipart/alternative; boundary="000000000000f6f66605952b89c3"

--000000000000f6f66605952b89c3
Content-Type: text/plain; charset="UTF-8"

On Fri, Oct 18, 2019 at 1:21 PM Abhi Arora <abhiarora4@live.com> wrote:

> Hello,
> I am having an embedded system. We have bsp with python 3.5 but we want to
> reduce its size further. I am planning to have only oyc files but not sure
> how it can be achieved in recipes. Also, I want to know if there is a other
> way to reduce the footprint.
>

Please start by eliminating modules first so find which modules are
required for your workloads and remove all other modules from image by
adding them to BAD_RECOMMENDATIONS from IMAGE_INSTALL

>
>
> Please help.
>
> Get Outlook for Android <https://aka.ms/ghei36>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000f6f66605952b89c3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Oct 18, 2019 at 1:21 PM Abhi Arora &lt;<a href=3D"m=
ailto:abhiarora4@live.com">abhiarora4@live.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex">



<div>
<div dir=3D"auto" style=3D"direction:ltr;margin:0;padding:0;font-family:san=
s-serif;font-size:11pt;color:black">
Hello,<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr;margin:0;padding:0;font-family:san=
s-serif;font-size:11pt;color:black">
I am having an embedded system. We have bsp with python 3.5 but we want to =
reduce its size further. I am planning to have only oyc files but not sure =
how it can be achieved in recipes. Also, I want to know if there is a other=
 way to reduce the footprint.</div></div></blockquote><div dir=3D"auto"><br=
></div><div dir=3D"auto">Please start by eliminating modules first so find =
which modules are required for your workloads and remove all other modules =
from image by adding them to BAD_RECOMMENDATIONS from IMAGE_INSTALL=C2=A0</=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div><div dir=3D"auto" style=3D"directio=
n:ltr;margin:0;padding:0;font-family:sans-serif;font-size:11pt;color:black"=
><br>
<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr;margin:0;padding:0;font-family:san=
s-serif;font-size:11pt;color:black">
Please help.<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr;margin:0;padding:0;font-family:san=
s-serif;font-size:11pt;color:black">
<span id=3D"m_2312087401660911697OutlookSignature">
<div dir=3D"auto" style=3D"direction:ltr;margin:0;padding:0;font-family:san=
s-serif;font-size:11pt;color:black">
Get <a href=3D"https://aka.ms/ghei36" target=3D"_blank">Outlook for Android=
</a></div></span></div></div><div><div dir=3D"auto" style=3D"direction:ltr;=
margin:0;padding:0;font-family:sans-serif;font-size:11pt;color:black"><span=
 id=3D"m_2312087401660911697OutlookSignature">
</span><br>
</div>
</div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--000000000000f6f66605952b89c3--
