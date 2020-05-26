Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.52378.1590505751758611773
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 May 2020 08:09:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@googlemail.com header.s=20161025 header.b=vdMQgfBM;
 spf=softfail (domain: googlemail.com, ip: 140.211.169.56, mailfrom: ayoub.zaki@googlemail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45D31E01C23; Tue, 26 May 2020 08:09:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,
	URIBL_RED autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (ayoub.zaki[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.160.174 listed in list.dnswl.org]
	*  0.0 URIBL_RED Contains an URL listed in the URIBL redlist
	*      [URIs: yoctoproject.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41343E01C21
	for <yocto@yoctoproject.org>; Tue, 26 May 2020 08:09:08 -0700 (PDT)
Received: by mail-qt1-f174.google.com with SMTP id i68so16368750qtb.5
        for <yocto@yoctoproject.org>; Tue, 26 May 2020 08:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/ygIyQ/3eM6km0HYJ+3Z9s90uVDry/2uhgu3esBA8q4=;
        b=vdMQgfBM5UKfpHCrgZYCzndAGHyj8D6j7Kvu+3XftrmICRWvXcAz8lgHhMC+OaBUK7
         wz1p5mAjfuRkF+9/L3CUz7+/oJBOv4MJCtS3jyezCtM7sxDpahn2Bd0/lXs12y1aEWPi
         QKUY9pxPCgl7I38EbAuP3FsRq0pq08/QJ0uM0JyjidLjIqrWNg7ekdAz5glKNX/XFVjn
         9rMhCbE6opkNLQU3k9II58OJvhx8dUbBoQuZU0w5p9t7aNdZfS1TT5LBimvuFkyTs8YZ
         bfLVqRe9W79RPXTC2xCCTXvv8yP8LASfhJ27kJljsxoX2ZN4mKr51oWlUxYEBmCzgGHF
         GLgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/ygIyQ/3eM6km0HYJ+3Z9s90uVDry/2uhgu3esBA8q4=;
        b=WY1UND11nufOdd0bA4Xbpy35G4BDte4cj5oggMmnIT3uRabmA/zZbVywFKq9ukiCgH
         evgUBGcP6b/KgNT3Le5okWGWhY0TZ1y47bDiXFyNCmHxCwLQpCYrkBYfiDiPFvduRMyJ
         w708pN67jtKNO0NyrMNNmxtThPB3QkTd7UP2zOYHIR/7xDZorf/4Hdb3ls+vibEP4Mmu
         IfkxUv6/LgTFHGXuHcvLLeemLKNJpFVQJSp4ATCLRsK530LukJcm7ub18niDY7ZlBrkU
         jpIPwuUZcKIXwB3y9Y5Yf+toWu6Rlg6WMqS34vBEwLD9HZd7KJj/szKCWk1LE/au/nwX
         yuUw==
X-Gm-Message-State: AOAM533C2fY95YmMuViWyz5Xc2XtD/j2ws5Sabvt4pHxDfXUGEIVx6D2
	naqQ0LwnUEFxlTKe09qZNuf6nTyAxzB3NgH8KQ1zzgLO
X-Google-Smtp-Source: ABdhPJyC3LQBJlTeG6QHhQhn1J8D5BzuFF1Wob6jpXt1fYBS3ha/78KTznnCidUie/yeIAlIMRoKFBW7TK9t5ayqg1c=
X-Received: by 2002:aed:35ab:: with SMTP id c40mr1724081qte.287.1590505747984;
 Tue, 26 May 2020 08:09:07 -0700 (PDT)
MIME-Version: 1.0
References: <CA+-BmJZRJ_d+AsrWoZpsu4+ds3ug4BbhFWJ-09tL0rheq0zgcw@mail.gmail.com>
 <20200526144218.xj6iwwf5gnewn5ei@qschulz>
In-Reply-To: <20200526144218.xj6iwwf5gnewn5ei@qschulz>
From: "Ayoub Zaki" <ayoub.zaki@googlemail.com>
Date: Tue, 26 May 2020 17:08:56 +0200
Message-ID: <CA+-BmJZ-wvXBYA=W7gED9ZChS0HTt956KXvo7_wTuGROJSLiaw@mail.gmail.com>
Subject: Re: [yocto] Overwrite a bblcass globally
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000001f346105a68e7a45"

--0000000000001f346105a68e7a45
Content-Type: text/plain; charset="UTF-8"

Thanks for the idea of using BBPATH.

my change is kind of custom and I don't think someone else will make use of
it.


Cheers

On Tue, May 26, 2020 at 4:42 PM Quentin Schulz <
quentin.schulz@streamunlimited.com> wrote:

> Hi Ayoub,
>
> On Tue, May 26, 2020 at 04:36:13PM +0200, Ayoub Zaki via
> lists.yoctoproject.org wrote:
> > Hi,
> >
> > I would like to make changes on systemd.bblcass in my layer.
> >
> > I can create new one e.g my-systemd.bbclass to overwrite the default one
> > but this will not work since I want that ALL recipes in all layers I'm
> > using to make usage of it.
> >
> > are there ways to achieve this?
> >
>
> BBPATH[1] is what's used to locate bbclasses. It's defined in your
> conf/layer.conf.
>
> You can either make sure your layer is parsed before the one having the
> original systemd.bbclass (in BBLAYERS of conf/bblayers.conf) or prepend
> to BBPATH instead of appending.
>
> Although... It's usually bad practice because it means that if I were to
> use
> two layers doing the same thing (overriding the same bbclass), the behavior
> is kind of undefined depending on which order they are parsed.
>
> Ideally, you should contribute back the modifications to upstream
> systemd.bbclass, that way, no need to duplicate it and override it from
> somewhere else.
>
> [1]
> https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#var-BBPATH
>
> Cheers,
> Quentin
>

--0000000000001f346105a68e7a45
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the idea of using BBPATH.<div><br></div><div>my=
 change is kind of custom and I don&#39;t think someone else will make use=
=C2=A0of it.=C2=A0</div><div><br></div><div><br></div><div>Cheers</div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On T=
ue, May 26, 2020 at 4:42 PM Quentin Schulz &lt;<a href=3D"mailto:quentin.sc=
hulz@streamunlimited.com">quentin.schulz@streamunlimited.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Ayoub,<br>
<br>
On Tue, May 26, 2020 at 04:36:13PM +0200, Ayoub Zaki via <a href=3D"http://=
lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctopro=
ject.org</a> wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; I would like to make changes on systemd.bblcass in my layer.<br>
&gt; <br>
&gt; I can create new one e.g my-systemd.bbclass to overwrite the default o=
ne<br>
&gt; but this will not work since I want that ALL recipes in all layers I&#=
39;m<br>
&gt; using to make usage of it.<br>
&gt; <br>
&gt; are there ways to achieve this?<br>
&gt; <br>
<br>
BBPATH[1] is what&#39;s used to locate bbclasses. It&#39;s defined in your<=
br>
conf/layer.conf.<br>
<br>
You can either make sure your layer is parsed before the one having the<br>
original systemd.bbclass (in BBLAYERS of conf/bblayers.conf) or prepend<br>
to BBPATH instead of appending.<br>
<br>
Although... It&#39;s usually bad practice because it means that if I were t=
o use<br>
two layers doing the same thing (overriding the same bbclass), the behavior=
<br>
is kind of undefined depending on which order they are parsed.<br>
<br>
Ideally, you should contribute back the modifications to upstream<br>
systemd.bbclass, that way, no need to duplicate it and override it from<br>
somewhere else.<br>
<br>
[1] <a href=3D"https://www.yoctoproject.org/docs/current/mega-manual/mega-m=
anual.html#var-BBPATH" rel=3D"noreferrer" target=3D"_blank">https://www.yoc=
toproject.org/docs/current/mega-manual/mega-manual.html#var-BBPATH</a><br>
<br>
Cheers,<br>
Quentin<br>
</blockquote></div>

--0000000000001f346105a68e7a45--
