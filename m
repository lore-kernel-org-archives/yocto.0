Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5247E00899; Sun, 19 Oct 2014 01:10:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88174E007C0
	for <yocto@yoctoproject.org>; Sun, 19 Oct 2014 01:10:48 -0700 (PDT)
Received: by mail-ig0-f182.google.com with SMTP id hn15so3020301igb.9
	for <yocto@yoctoproject.org>; Sun, 19 Oct 2014 01:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Mt+q4B1PU58QVe/DM8qwWFNIUqj1oYzZidojCRTt5JE=;
	b=vnVsViaebsLXpjkoqfe3YxFwf4xWo/+44ue1e2EPm9vutP0uivfjRkOD3QJlab5Kv9
	KOfGhsqjnbA8r9SGHOw+/6XpMtNs+bGTBCz98HC2Nx9Vr/ze+b3APIsre9aXOdYtINAZ
	HrZQLruPyg5NdBPnNEf/+oNz/HsuEVJhC+Yb7fwQvGXjxbQHeteqvjjiIgBEpGlg/roJ
	aLYnb9k+qGjMkzmt8vq7yXV9NmlTChC+Xf96Tu4kCbs8DmF4UerszDQCGt09990f9LJ1
	UNOj20OkcBb1yyQJszPrT+AfWxZhypjTu8kqXOM6bFgN4DBaAIkrsOoDkHvFwKiThi+A
	gehQ==
MIME-Version: 1.0
X-Received: by 10.50.83.66 with SMTP id o2mr9906160igy.30.1413706247979; Sun,
	19 Oct 2014 01:10:47 -0700 (PDT)
Received: by 10.50.169.2 with HTTP; Sun, 19 Oct 2014 01:10:47 -0700 (PDT)
In-Reply-To: <CANyK_8cvEcxAC3tJMJHSif01gnXZU=L=TTu990_uENTrjTYK1g@mail.gmail.com>
References: <CAPoQQ-1xzG=SqaBrPp-W-tOd9W3fWyZ=skUTEpvq+mEQ3P_CuA@mail.gmail.com>
	<CANyK_8cvEcxAC3tJMJHSif01gnXZU=L=TTu990_uENTrjTYK1g@mail.gmail.com>
Date: Sun, 19 Oct 2014 01:10:47 -0700
Message-ID: <CAMKF1sogNqEOMnQ2A-uX0i=K_=6p9mtgGuDCG1guYJTUuPyniw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Questions regarding adding a new llvm based cross-compiler
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
X-List-Received-Date: Sun, 19 Oct 2014 08:10:53 -0000
Content-Type: multipart/alternative; boundary=089e013cbc00ba4a920505c22285

--089e013cbc00ba4a920505c22285
Content-Type: text/plain; charset=UTF-8

On Friday, October 17, 2014, Paul Barker <paul@paulbarker.me.uk> wrote:

> On 16 October 2014 18:46, Cody P Schafer <dev@codyps.com <javascript:;>>
> wrote:
> > Hi all,
> >
> > I'm working on creating a layer for the rust compiler (which uses
> > llvm) and was wondering if there were any best practices and/or
> > examples people could point me at.
>
> I can't really offer much help on the LLVM side, but I can say this
> will be really useful work. I'm slowly learning Rust and researching
> how it can be used for embedded development and it will be excellent
> to have a rust compiler working as part of OpenEmbedded/Yocto.
>
> If you need any testing of this layer once it's created, just let me know.


I have started to integrate clang into oe
Which probably is quitquite similar to this effortwise. Its very
prelimpreliminary. Check my github repo. I should add it to layer index

>
> Cheers,
>
> --
> Paul Barker
>
> Email: paul@paulbarker.me.uk <javascript:;>
> http://www.paulbarker.me.uk
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <javascript:;>
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e013cbc00ba4a920505c22285
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><br>On Friday, October 17, 2014, Paul Barker &lt;<a href=3D"mailto:paul=
@paulbarker.me.uk">paul@paulbarker.me.uk</a>&gt; wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">On 16 October 2014 18:46, Cody P Schafer &lt;<a href=3D"java=
script:;" onclick=3D"_e(event, &#39;cvml&#39;, &#39;dev@codyps.com&#39;)">d=
ev@codyps.com</a>&gt; wrote:<br>
&gt; Hi all,<br>
&gt;<br>
&gt; I&#39;m working on creating a layer for the rust compiler (which uses<=
br>
&gt; llvm) and was wondering if there were any best practices and/or<br>
&gt; examples people could point me at.<br>
<br>
I can&#39;t really offer much help on the LLVM side, but I can say this<br>
will be really useful work. I&#39;m slowly learning Rust and researching<br=
>
how it can be used for embedded development and it will be excellent<br>
to have a rust compiler working as part of OpenEmbedded/Yocto.<br>
<br>
If you need any testing of this layer once it&#39;s created, just let me kn=
ow.</blockquote><div><br></div><div>I have started to integrate clang into =
oe</div><div>Which probably is quitquite similar to this effortwise. Its ve=
ry prelimpreliminary. Check my github repo. I should add it to layer index=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">
<br>
Cheers,<br>
<br>
--<br>
Paul Barker<br>
<br>
Email: <a href=3D"javascript:;" onclick=3D"_e(event, &#39;cvml&#39;, &#39;p=
aul@paulbarker.me.uk&#39;)">paul@paulbarker.me.uk</a><br>
<a href=3D"http://www.paulbarker.me.uk" target=3D"_blank">http://www.paulba=
rker.me.uk</a><br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"javascript:;" onclick=3D"_e(event, &#39;cvml&#39;, &#39;yocto@yo=
ctoproject.org&#39;)">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote>

--089e013cbc00ba4a920505c22285--
