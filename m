Return-Path: <vijayakumarmb@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 289EBE00D0E; Wed, 12 Oct 2016 10:56:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vijayakumarmb[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.42 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCE12E00DF2
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 10:56:09 -0700 (PDT)
Received: by mail-oi0-f42.google.com with SMTP id y2so69894774oie.0
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 10:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wAsgYIP0IDFW3nVn2a5o9HWc6SwXHjazgyYlRsbxW2A=;
	b=AyLOnQgyn1Pi3bORXCUfcXTpzot09eIa2uqumqHV3e2Jj34izBNb+pCpNxz/UyaY2E
	kypU9+qG+2Fk95S+rvcHd4fSn8KAkmZxViwmFq3Ev87EcisUX3dueUYuT0aMjsB0RqSx
	gAz+vfeIGHPfi9FTmHUbEtDBFyo3XGbmeolAG0W9mlJ9OQ++VBVIgyQKyVzQQ/+KlG2+
	xXhyxPbL3kt9Z9w/9m3qQkEqV4EcWUNiu2gdBHLxK4wczQAEb4be7aLCESE3EnBFWYTq
	w/39pLXHvMaw3OnSpQgTpxrBUfdsfYIM5RQ8WjXE3RkkMpglIISSR35vmCMWdtJVF+Xy
	Ar4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wAsgYIP0IDFW3nVn2a5o9HWc6SwXHjazgyYlRsbxW2A=;
	b=X74BZdyjqXo6j018UJbADEPKCXC5o09DNkq7iALA6+amKrSFrf0vqsw4xp1a6vOoQO
	P9Bp63VuCYaydQMyaTP+s5mRnQJTQ0eMV3PDnLTHJAX+vkILrZ16silA5+Tjua1OEYOH
	ps1LzGO7UPZ3JWaXQhLZ3Mo2DxKdhMx8K3OP9cMPf6I/R9Ppxpm5RJOXfC5W3wFlK1ac
	MVqjrpuc9acStXxtEs8bswRj0BEAtSjNku6sEm8KjMkkKzGvMa5c10V7mgt6TbIMarJz
	Em1cbl7NIX2C8tk6OSDQ5x4PMp1l4PPS8grtErGHgeaqwYr6UhG9KvHWGB76bD/XXpUp
	VmXw==
X-Gm-Message-State: AA6/9Rn79uJ9YS4/MgZKWO4k8px5NnuwXZZFiKMdcTOkKYYl7aZCepJOX5vErMQ02CYxnBf5w2KaYm/bVJk41Q==
X-Received: by 10.202.253.212 with SMTP id b203mr1433168oii.171.1476294969059; 
	Wed, 12 Oct 2016 10:56:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.21.137 with HTTP; Wed, 12 Oct 2016 10:55:48 -0700 (PDT)
In-Reply-To: <1676378.mbRJq8UcJs@peggleto-mobl.ger.corp.intel.com>
References: <CAJ58UN=tw2n70748xW9zoSh1tge-c5MWGUwpRr7pkR_jfh8BXg@mail.gmail.com>
	<1676378.mbRJq8UcJs@peggleto-mobl.ger.corp.intel.com>
From: Vijayakumar Badiger <vijayakumarmb@gmail.com>
Date: Wed, 12 Oct 2016 10:55:48 -0700
Message-ID: <CAJ58UN=B-P0VeEb_WPO7Z+ViEOspvBdzt==A7tTNnEE0T69y6g@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yoctoproject <yocto@yoctoproject.org>
Subject: Re: Clarification regarding GCC tool version supported on - Krogoth 2.1.1
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
X-List-Received-Date: Wed, 12 Oct 2016 17:56:23 -0000
Content-Type: multipart/alternative; boundary=001a113ded3036f109053eaeb5da

--001a113ded3036f109053eaeb5da
Content-Type: text/plain; charset=UTF-8

Thanks Paul, appreciate your reply.

Cheers,
Vijay


On Mon, Oct 10, 2016 at 6:24 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> Hi Vijay,
>
> On Mon, 10 Oct 2016 17:44:13 Vijayakumar Badiger wrote:
> > Please can some one tell me the tool chain versions supported on the
> latest
> > YPCore-Krogoth.
> > I know the it uses default GCC5.3, just wanted to know if older tool
> chain
> > like 4.9XX is supported or not.
> >
> > I don't see the feature list like the one listed below for Krogoth 2.1.1.
> > which clearly states the tool chain versions supported.
> >
> > https://www.yoctoproject.org/downloads/core/jethro20
>
> gcc 4.9 is included in the krogoth branch, and being an earlier default
> version it should work - however it's fair to say it does not receive the
> same
> level of testing that 5.3 does given that 5.3 is the default.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a113ded3036f109053eaeb5da
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Paul, appreciate your reply.=C2=A0<div><br></div><d=
iv>Cheers,</div><div>Vijay</div><div><br></div></div><div class=3D"gmail_ex=
tra"><br><div class=3D"gmail_quote">On Mon, Oct 10, 2016 at 6:24 PM, Paul E=
ggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.c=
om" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">Hi Vijay,<br>
<span class=3D""><br>
On Mon, 10 Oct 2016 17:44:13 Vijayakumar Badiger wrote:<br>
&gt; Please can some one tell me the tool chain versions supported on the l=
atest<br>
&gt; YPCore-Krogoth.<br>
&gt; I know the it uses default GCC5.3, just wanted to know if older tool c=
hain<br>
&gt; like 4.9XX is supported or not.<br>
&gt;<br>
&gt; I don&#39;t see the feature list like the one listed below for Krogoth=
 2.1.1.<br>
&gt; which clearly states the tool chain versions supported.<br>
&gt;<br>
&gt; <a href=3D"https://www.yoctoproject.org/downloads/core/jethro20" rel=
=3D"noreferrer" target=3D"_blank">https://www.yoctoproject.org/<wbr>downloa=
ds/core/jethro20</a><br>
<br>
</span>gcc 4.9 is included in the krogoth branch, and being an earlier defa=
ult<br>
version it should work - however it&#39;s fair to say it does not receive t=
he same<br>
level of testing that 5.3 does given that 5.3 is the default.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--001a113ded3036f109053eaeb5da--
