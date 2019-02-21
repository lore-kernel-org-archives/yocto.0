Return-Path: <ticotimo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DCE6E00B5C; Thu, 21 Feb 2019 10:39:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ticotimo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.180 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com
	[209.85.221.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF6CAE0090E
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2019 10:39:32 -0800 (PST)
Received: by mail-vk1-f180.google.com with SMTP id j68so7111581vke.13
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2019 10:39:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=LNlxJnN9maWItlwcoB/9UFB16yAM7nb5eV+xQXMoiuU=;
	b=evMj1Gx4zLewgKP4weTnFPLrVp5OeUblpf9LBAbOu3Pvj5UuAtpQcdBzBzDc1+z0ng
	IK0CQHXhCrJ6XGR9UZKBDIIHvrbOgqnTcd7JB3AbNG8JETS1DuxlCo6TU62r/s5maauY
	xL3/9LjoCrHVvOoAF8E7qJyd+Yp33wScEAkfisTG/gXpnqlUnh1iNru1hPGEqlAfpBlv
	+I+1dpvEMxoengHiE8VJOym9m7FRhGMmlt+TgZBX0crkOxbQaDxg/tWqiSYdPdKWO9Dy
	Pms5ZZpyQxvjrti+b/cxqi/M0JZavYuFBZxVDZFnJe1+7VVveXLCgM0m2NYo/kZY6MK4
	8ebg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=LNlxJnN9maWItlwcoB/9UFB16yAM7nb5eV+xQXMoiuU=;
	b=YKQa9rl1i8r5Vl6gLUjPQi0tho/cCdUtGdpBLfRH8Btzo7nRElLVv72srXohOPvrJe
	/kJ22ZzvsJEdUYxOhI6Q9p/6Xfr6q2rAol2A/Nnn6LenjKF10GbP2xYxfYVGgRfNSmNZ
	MnnSm2Y2674dkXomz/PkwpQBIfQp5PZDy43uk+o1f3DsRNtV5bpL1AIzpDWa0R5L8E4z
	X9jtdgp5Xjm6/ZFxwyXNVrKuzkpg9zSAluvXhxaY4uwTCVDG6ELRURwjyl4eweh3u5Mi
	zZEFdxXAe3QZ/cyK4L7EVRb/B0vvY2xaRbRNugij9upbr//YDvBiAP4JCmc/DjISkGZd
	L6lQ==
X-Gm-Message-State: AHQUAua9CHpeSct49eXkHVzgmTnkiI/VEIHP/vTW114mNWv9jEufrNP0
	0gbMpLqgprHtV1hQIlmRKQfjTxC13AMMF0oYMiI=
X-Google-Smtp-Source: AHgI3IZJBrPX5LN5qQcZca7rNWmp6kp0X3oq3XwPfApimiusJigeUh4uPSUh1aJWXkPaD8U6FZBaPSwffN7LEFCVxrA=
X-Received: by 2002:a1f:cf47:: with SMTP id f68mr22054933vkg.70.1550774371789; 
	Thu, 21 Feb 2019 10:39:31 -0800 (PST)
MIME-Version: 1.0
References: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
	<cdb970168b7ec9240c4f2b83f2a2f45dd429d6aa.camel@linuxfoundation.org>
In-Reply-To: <cdb970168b7ec9240c4f2b83f2a2f45dd429d6aa.camel@linuxfoundation.org>
From: Tim Orling <ticotimo@gmail.com>
Date: Thu, 21 Feb 2019 10:39:20 -0800
Message-ID: <CANx9H-Br-X4td03a=fEi2Hb_F3uTQwVFPnbKu5WJcQ7kGhOhsg@mail.gmail.com>
To: Hongxu Jia <hongxu.jia@windriver.com>
Cc: lpd-cdc-core-dev@windriver.com, Zhangle.Yang@windriver.com,
	paul.eggleton@linux.intel.com, yocto@yoctoproject.org
Subject: Re: Review request 0/13: Contribute meta-tensorflow to Yocto
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
X-List-Received-Date: Thu, 21 Feb 2019 18:39:34 -0000
Content-Type: multipart/alternative; boundary="0000000000008eae7a05826bcb80"

--0000000000008eae7a05826bcb80
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 21, 2019 at 4:27 AM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> Hi Hongxu,
>
> On Thu, 2019-02-21 at 06:37 -0500, Hongxu Jia wrote:
> > Currently AI on IoT edge becomes more and more popular, but there is
> > no
> > machine learning framework in Yocto/OE. With the support of Eric
> > <Zhangle.Yang@windriver.com>, Robert <liezhi.yang@windriver.com>
> > and Randy <randy.macleod@windriver.com>, after two months effort,
> > I've
> > integrated TensorFlow to Yocto.
> >
> > Now, I contribute the patches to Yocto for review, and apply for
> > creating
> > a layer named `meta-tensorflow' on Yocto.
> >
> > For test convenient, there is a fork on github:
> > https://github.com/hongxu-jia/meta-tensorflow
> >
> > BTW, I have contributed other 11 fundamental recipes to meta-
> > openembedded
> > and all of them have been merged to master branch.
> >
> > Please no hesitate to share your suggestion.
>
> I like this a lot, thanks for working on and sharing it!
>
> I had a quick glance through the patches and I didn't see anything that
> concerned me. I don't have much knowledge about tensor flow. I think
> this would make a great addition to git.yoctoproject.org and would love
> to see it there.
>
> Thanks again, I'm pleased to see something like this!
>

This is great. I had started writing a bazel recipe around the time of the
last ELC/YP DevDay, but got blocked. I=E2=80=99ll take a look and give it a=
 spin.

Thank you for working on this.

=E2=80=94Tim

>
> Cheers,
>
> Richard
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000008eae7a05826bcb80
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Feb 21, 2019 at 4:27 AM Richard Purdie &lt;<a href=
=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundati=
on.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Hongxu,<br=
>
<br>
On Thu, 2019-02-21 at 06:37 -0500, Hongxu Jia wrote:<br>
&gt; Currently AI on IoT edge becomes more and more popular, but there is<b=
r>
&gt; no<br>
&gt; machine learning framework in Yocto/OE. With the support of Eric<br>
&gt; &lt;<a href=3D"mailto:Zhangle.Yang@windriver.com" target=3D"_blank">Zh=
angle.Yang@windriver.com</a>&gt;, Robert &lt;<a href=3D"mailto:liezhi.yang@=
windriver.com" target=3D"_blank">liezhi.yang@windriver.com</a>&gt;<br>
&gt; and Randy &lt;<a href=3D"mailto:randy.macleod@windriver.com" target=3D=
"_blank">randy.macleod@windriver.com</a>&gt;, after two months effort,<br>
&gt; I&#39;ve<br>
&gt; integrated TensorFlow to Yocto.<br>
&gt; <br>
&gt; Now, I contribute the patches to Yocto for review, and apply for<br>
&gt; creating<br>
&gt; a layer named `meta-tensorflow&#39; on Yocto.<br>
&gt; <br>
&gt; For test convenient, there is a fork on github:<br>
&gt; <a href=3D"https://github.com/hongxu-jia/meta-tensorflow" rel=3D"noref=
errer" target=3D"_blank">https://github.com/hongxu-jia/meta-tensorflow</a><=
br>
&gt; <br>
&gt; BTW, I have contributed other 11 fundamental recipes to meta-<br>
&gt; openembedded<br>
&gt; and all of them have been merged to master branch.<br>
&gt; <br>
&gt; Please no hesitate to share your suggestion.<br>
<br>
I like this a lot, thanks for working on and sharing it!<br>
<br>
I had a quick glance through the patches and I didn&#39;t see anything that=
<br>
concerned me. I don&#39;t have much knowledge about tensor flow. I think<br=
>
this would make a great addition to <a href=3D"http://git.yoctoproject.org"=
 rel=3D"noreferrer" target=3D"_blank">git.yoctoproject.org</a> and would lo=
ve<br>
to see it there.<br>
<br>
Thanks again, I&#39;m pleased to see something like this!<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">This is great. I=
 had started writing a bazel recipe around the time of the last ELC/YP DevD=
ay, but got blocked. I=E2=80=99ll take a look and give it a spin.</div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">Thank you for working on this.</d=
iv><div dir=3D"auto"><br></div><div dir=3D"auto">=E2=80=94Tim</div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex"><br>
Cheers,<br>
<br>
Richard<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--0000000000008eae7a05826bcb80--
