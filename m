Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D9A3E00DCF; Fri, 17 Jun 2016 03:40:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.52 listed in list.dnswl.org]
Received: from mail-it0-f52.google.com (mail-it0-f52.google.com
	[209.85.214.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D2FCE00D8A
	for <yocto@yoctoproject.org>; Fri, 17 Jun 2016 03:39:35 -0700 (PDT)
Received: by mail-it0-f52.google.com with SMTP id h190so65668943ith.1
	for <yocto@yoctoproject.org>; Fri, 17 Jun 2016 03:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=BvdNiQ6PRa9hQbiBLX+B3ilP095F0XreqRXn6qw1PP8=;
	b=UcATgPj+2NsPVReNdsKBTZeR2Ah9T7RE25aqpl740bsK/SrGnAlYDzjV9In3EpXf2v
	FuGKpHjNeFcw6v4Wong19PVzFtu7pT+iqbKoKKLLmmZLGDagrWFM6gLnIzR38X+He+Jl
	LGehuebUqBJwqTIDNaWhWlhcGv1NGhtj2IthPdGcGTUxoOa4gh0ZLRx1KCU0qoOXMvhj
	XborGs9XeEhle9nTLMUNpfn3mwr11tlzNnPsamOnTqKl9LhMJ5Lm4Mm4C7ClRnSQNgS/
	ouYp1BhL2NF4HR9oP4/tri3UsttrJ5ST9SzHCvzlTistl/cS3NsoAX6OP8XDrIAktEuj
	xpbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=BvdNiQ6PRa9hQbiBLX+B3ilP095F0XreqRXn6qw1PP8=;
	b=DIW0bS+2qzRu4wOyh8Tu03Epf8BeyjCQXjsAqIZDG1z1sFgZR9InNoOaQQDBLxn1aV
	ev3max7fTGtskBSottSh6iXpu3qiLOTjZ1y/FAqNAOkcN8VRSxmo3qdptiROaFfDZxRx
	AqlSFwIepdNbaafzni+UJLgTVxhDJy+19SW4fYDBe7OZC9mcALu0HbaYoOoxckqqGbp8
	rXu5OrwoyTSNsDONB/9CKKPA+PBRLk4xMdllmqvZviVRCi4OB2p3D1z247fWifZ1i6di
	LdfzPW3NXFFgU85m4ai9afb8TyOZsNamAcF89z5KEmX8KSmi+uj9+AjE8VWu76dAfcUc
	CXIA==
X-Gm-Message-State: ALyK8tKvIzVYIp/2BPCG5bh2iXAUvs6cIkLjZwKs9bvEZI9l+Z9t9EAtuXeOD0ya3ku8M26307MMqR+QREe8kENM
X-Received: by 10.36.120.193 with SMTP id p184mr33646139itc.22.1466159974623; 
	Fri, 17 Jun 2016 03:39:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Fri, 17 Jun 2016 03:39:15 -0700 (PDT)
In-Reply-To: <VI1PR07MB1053399DA94761E52AD7FD7481570@VI1PR07MB1053.eurprd07.prod.outlook.com>
References: <VI1PR07MB1053399DA94761E52AD7FD7481570@VI1PR07MB1053.eurprd07.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 17 Jun 2016 11:39:15 +0100
Message-ID: <CAJTo0LZAo2PWcafbEPVtj=rpHAQ11kdHyMqtq=YBZBdJiCywNA@mail.gmail.com>
To: "Woronicz, Bartosz (Nokia - PL/Wroclaw)" <bartosz.woronicz@nokia.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Is there repository for Yocto documentation ?
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
X-List-Received-Date: Fri, 17 Jun 2016 10:40:00 -0000
Content-Type: multipart/alternative; boundary=001a114aa428791967053576f81f

--001a114aa428791967053576f81f
Content-Type: text/plain; charset=UTF-8

The repository is yocto-docs on git.yoctoproject.org.

To submit a patch sent it to yocto@ and it's probably best to CC Scott too.

Thanks,
Ross

On 17 June 2016 at 11:04, Woronicz, Bartosz (Nokia - PL/Wroclaw) <
bartosz.woronicz@nokia.com> wrote:

> I would like to push some fixes to docs how can I do it ?
>
> Kind regards,
> Bartosz Woronicz
> Engineer, Software Configuration (SCM)
> Nokia Networks - PL/Wroclaw
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a114aa428791967053576f81f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The repository is yocto-docs on <a href=3D"http://git.yoct=
oproject.org">git.yoctoproject.org</a>.<div><br></div><div>To submit a patc=
h sent it to yocto@ and it&#39;s probably best to CC Scott too.</div><div><=
br></div><div>Thanks,</div><div>Ross</div></div><div class=3D"gmail_extra">=
<br><div class=3D"gmail_quote">On 17 June 2016 at 11:04, Woronicz, Bartosz =
(Nokia - PL/Wroclaw) <span dir=3D"ltr">&lt;<a href=3D"mailto:bartosz.woroni=
cz@nokia.com" target=3D"_blank">bartosz.woronicz@nokia.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">






<div>
<font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt">
<div>I would like to push some fixes to docs how can I do it ?</div>
<div>=C2=A0</div>
<div>Kind regards,</div>
<div>Bartosz Woronicz</div>
<div>Engineer, Software Configuration (SCM)</div>
<div>Nokia Networks - PL/Wroclaw</div>
<div>=C2=A0</div>
<div>=C2=A0</div>
<div>=C2=A0</div>
</span></font>
</div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a114aa428791967053576f81f--
