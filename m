Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 154D0E00DD3; Mon, 16 May 2016 06:48:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f178.google.com (mail-qk0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72CA7E00D31
	for <yocto@yoctoproject.org>; Mon, 16 May 2016 06:48:27 -0700 (PDT)
Received: by mail-qk0-f178.google.com with SMTP id n63so96466578qkf.0
	for <yocto@yoctoproject.org>; Mon, 16 May 2016 06:48:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=VxNpz3aFO5PXNibHPG/maDi9o81Lj9zRSdERESrWaZc=;
	b=Z/2Duq0MfcZfF1u1851jvVN83U4hHRl0/J46WjBdaW0bLEjU6xFCCzHrX30xW2erNX
	791qH6qrweBFfqQDnc2d6pTegMKStTvfDm7gU+HTR045FOWmUy3lM+CPIW64s7NkHLGD
	37f/8CbO2cOVmSogLGp//FfC+9Eq6KXZtw8YtgA0F5WADAx99wMBBVhoHFCwZHH5rCkm
	iBQZVQczXnYqv1+2YgzqFsHj8Z6yWk9NT2L0w3c1/B1VfljzDgEPlQLmy8wYooz7wtvb
	cyeHPXOCBpR5QhzgdaTSL80g1iii5HMsYHXxiByzXq6Nyfs9FfM3kfBVmgA0ktZfhWB9
	3Tpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=VxNpz3aFO5PXNibHPG/maDi9o81Lj9zRSdERESrWaZc=;
	b=fOKCliwdqwhGEhv9Gq3zKfPukzrl5yMGtSWSjP04Funtc4fCfmb3GCaT4fQHAG86RQ
	y1/BLlor/AvPQ/ysYpE2jRpzUF1XjL2+0tKh0KbsbtOCP7CQ0QjG8iXlF4iXlFWrermU
	0KOzHfpRbM9ueHfpzfB9nt7bq1TJqhT6kY0/+mky+aoyQpBnaSqEsrAvnb0p7T/a0BWu
	403bDJZrOvS8pAkGSa30YWrfUFCmTMtg9IVm0XLIeYyfXMRnC9tmDcy5A5JK3MFVCkTb
	bHHt8Fjpem8z2Rpex3OkBPkZ1Lz2ERuheL/wfZcNYBH9k0v2swYvyj+gDNM4erxjq8lu
	k3jQ==
X-Gm-Message-State: AOPr4FXOipJ/JudQjpFnBT2bwAdrro9GcZj8uLNJ7UjqWd6VzLLSq//TMhRXYiJZVGB29mw3J/g/It/03XTrGg==
MIME-Version: 1.0
X-Received: by 10.55.207.214 with SMTP id v83mr13286787qkl.152.1463406507321; 
	Mon, 16 May 2016 06:48:27 -0700 (PDT)
Received: by 10.55.130.196 with HTTP; Mon, 16 May 2016 06:48:27 -0700 (PDT)
In-Reply-To: <d8eca3ae-86db-35c1-951e-696dbab4b901@balister.org>
References: <CABfz71dsLkf5W9LDsEewXj2Rmw715jqqMFvwKE7WYT=83iAs6g@mail.gmail.com>
	<CAMKF1so7vzL4iKu5LiBKNK2cNBbV_0fuRoD_c7aVaN8x+kAh3Q@mail.gmail.com>
	<CABfz71dAJ4L6rKFgCOQgYNdqmr9jk5UaSLkMO=2PJ58gMBCLkw@mail.gmail.com>
	<CABfz71e32ixS10u7Wyr+XnZm+N93s6tPNorYNRqf276xh5ay9Q@mail.gmail.com>
	<CAMKF1srhr1uYJq53LZ+CKUNqYPAv3uq2onv3PtY=nVVyz7+bgA@mail.gmail.com>
	<CABfz71fcyMhkU3oH7msO8p2rAp1x4wozU9ordW2ZP7dqQVCNGQ@mail.gmail.com>
	<CABfz71c3eZDAXRJ-2RcqjnwAe9bhfkqz8aF1FHFiPYSVwA5ZBg@mail.gmail.com>
	<2b5a99dd-ca48-a77f-9acd-bcfebe479884@eumx.net>
	<0F4D52DD-BB7E-4449-B5B2-5D90A683ABC3@madison.systems>
	<d8eca3ae-86db-35c1-951e-696dbab4b901@balister.org>
Date: Mon, 16 May 2016 06:48:27 -0700
Message-ID: <CAMKF1sqO1Y=K+s8rjcr_xmjg1nggbcU4_uCN2HYW0CNf_-5E6g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Philip Balister <philip@balister.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: machine arch files for Jetson TX1 (Quad-core ARMCortex-A57 MPCore Processor)
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
X-List-Received-Date: Mon, 16 May 2016 13:48:30 -0000
Content-Type: multipart/alternative; boundary=001a1145b81807f4190532f5e124

--001a1145b81807f4190532f5e124
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Monday, May 16, 2016, Philip Balister <philip@balister.org> wrote:

> On 05/15/2016 01:29 PM, Matt Madison wrote:
> > On 15 May 2016, at 04:25 , Jack Mitchell <ml@embed.me.uk <javascript:;>=
>
> wrote:
> >>
> >> On 14/05/16 23:46, Paul Knopf wrote:
> >>> This is what I am thinking.
> >>>
> >>> DEFAULTTUNE =3D "cortexa9hf"
> >>> require conf/machine/include/tune-cortexa9.inc
> >>>
> >>> Does this sound right? I am using "hf" because in the crosstools-ng
> >>> has CT_ARCH_FLOAT=3D"hard", and cortexa9 because of
> >>> CT_ARCH_CPU=3D"cortex-a9" and CT_ARCH_TUNE=3D"cortex-a9".
> >>>
> >>> Sorry, I'm that familiar with embedded processors. Any guidance would
> >>> be greatly appreciated.
> >>> <snip>
> >>
> >> Someone has already started having a go.
> >>
> >> https://github.com/watatuki/meta-jetson-tx1
> >>
> >> Easiest way to check for support in OE is to google meta + devboard
> name. Usually turns something up :)
> >
> > There=E2=80=99s also https://github.com/madisongh/meta-tegra.
>
> Please add your layers to the layer index as soon as possible so people
> can search there. This helps prevent duplicate layers.
>
> Any chance the TX1 people can combine efforts so we only have one bsp
> for this board?

It would be better to unite all jetson boards in single layer imo

>
> Philip
>
>
>
>
> >
> > -Matt
> >
> >
> >>
> >> Cheers,
> >> Jack.
> >>
> >> ---
> >> Jack Mitchell
> >> Embedded Linux Consultant
> >> www.tuxable.co.uk
> >>
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org <javascript:;>
> >> https://lists.yoctoproject.org/listinfo/yocto
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <javascript:;>
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1145b81807f4190532f5e124
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><br>On Monday, May 16, 2016, Philip Balister &lt;<a href=3D"mailto:phil=
ip@balister.org">philip@balister.org</a>&gt; wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">On 05/15/2016 01:29 PM, Matt Madison wrote:<br>
&gt; On 15 May 2016, at 04:25 , Jack Mitchell &lt;<a href=3D"javascript:;" =
onclick=3D"_e(event, &#39;cvml&#39;, &#39;ml@embed.me.uk&#39;)">ml@embed.me=
.uk</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On 14/05/16 23:46, Paul Knopf wrote:<br>
&gt;&gt;&gt; This is what I am thinking.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; DEFAULTTUNE =3D &quot;cortexa9hf&quot;<br>
&gt;&gt;&gt; require conf/machine/include/tune-cortexa9.inc<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Does this sound right? I am using &quot;hf&quot; because in th=
e crosstools-ng<br>
&gt;&gt;&gt; has CT_ARCH_FLOAT=3D&quot;hard&quot;, and cortexa9 because of<=
br>
&gt;&gt;&gt; CT_ARCH_CPU=3D&quot;cortex-a9&quot; and CT_ARCH_TUNE=3D&quot;c=
ortex-a9&quot;.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Sorry, I&#39;m that familiar with embedded processors. Any gui=
dance would<br>
&gt;&gt;&gt; be greatly appreciated.<br>
&gt;&gt;&gt; &lt;snip&gt;<br>
&gt;&gt;<br>
&gt;&gt; Someone has already started having a go.<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"https://github.com/watatuki/meta-jetson-tx1" target=3D"=
_blank">https://github.com/watatuki/meta-jetson-tx1</a><br>
&gt;&gt;<br>
&gt;&gt; Easiest way to check for support in OE is to google meta + devboar=
d name. Usually turns something up :)<br>
&gt;<br>
&gt; There=E2=80=99s also <a href=3D"https://github.com/madisongh/meta-tegr=
a" target=3D"_blank">https://github.com/madisongh/meta-tegra</a>.<br>
<br>
Please add your layers to the layer index as soon as possible so people<br>
can search there. This helps prevent duplicate layers.<br>
<br>
Any chance the TX1 people can combine efforts so we only have one bsp<br>
for this board?</blockquote><div>It would be better to unite all jetson boa=
rds in single layer imo=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
Philip<br>
<br>
<br>
<br>
<br>
&gt;<br>
&gt; -Matt<br>
&gt;<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt; Cheers,<br>
&gt;&gt; Jack.<br>
&gt;&gt;<br>
&gt;&gt; ---<br>
&gt;&gt; Jack Mitchell<br>
&gt;&gt; Embedded Linux Consultant<br>
&gt;&gt; <a href=3D"http://www.tuxable.co.uk" target=3D"_blank">www.tuxable=
.co.uk</a><br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"javascript:;" onclick=3D"_e(event, &#39;cvml&#39;, &#39=
;yocto@yoctoproject.org&#39;)">yocto@yoctoproject.org</a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=
=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"javascript:;" onclick=3D"_e(event, &#39;cvml&#39;, &#39;yocto@yo=
ctoproject.org&#39;)">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote>

--001a1145b81807f4190532f5e124--
