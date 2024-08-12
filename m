Return-Path: <ycnakajsph@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A328C3DA7F
	for <webhook@archiver.kernel.org>; Mon, 12 Aug 2024 08:42:23 +0000 (UTC)
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
 by mx.groups.io with SMTP id smtpd.web10.41822.1723452129749481167
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Aug 2024 01:42:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BPqglrSH;
 spf=pass (domain: gmail.com, ip: 209.85.215.174, mailfrom: ycnakajsph@gmail.com)
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-7c3d9a5e050so1025164a12.2
        for <yocto@lists.yoctoproject.org>; Mon, 12 Aug 2024 01:42:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723452129; x=1724056929; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Gn7DgW7xrsFJSQMo5PnEulEF+mvmajpK+awBF4sND1I=;
        b=BPqglrSHD3UCrFCIcPM4M0y5s9b+aGmU8FjT5jQNoisqG0ROC0nZe0JM8yGytsR7sN
         Rkky79cYa+WRCZvEckIfYHGemmACdt/w5gwcXRNw+Xd9QEtUEWP4H8r0DJQry7f2/454
         KXqBfOMNnjzyP+Zi/zDeZGi01pQHv4LX8FK+0tBAztdAhAS9GEc4jWlyRdG3N3CK+fON
         /ZXKPY4IJ68IMG9H2Ek+LjiZNfSPBA6CzFtIZ1bdpD6apvG6aEIUVifDfWTU6dtf6exG
         DsjIUWZtyAP5c1U2pKzefyjdEz5LRKDYjxQDspzB6Puhbg+UKPHawfr8SSEeKPx6svhy
         dGtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723452129; x=1724056929;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gn7DgW7xrsFJSQMo5PnEulEF+mvmajpK+awBF4sND1I=;
        b=hTyIeb4Z+PyjwVROm8CR1tx+UEs6+OiJedts9oNBOY7urfKYpeZdc+gfKAo/eKQ12m
         FJX8BfDeG2lFMHPmAZAWuc/phOqs65x0sstrZK1+sS5KCAw5WjOL8GgmiOpfgMoIiT6H
         uHsQVg1tw26/0egoXLUbRicGDYYp3We6urhHOZKJ/H6ZYWA41Uvbdw/s/THNJSQkawN2
         AY4cVKMG1614wQa1w5+5BdZkyoN17GyFMPLA7ngx+1Jy4lLtdps6vYCFywuVrmTbn58o
         gpkFRlPv4c1VQXvOOuojDmxUL7r6hLikcWAcYd2HdhUqN8x6WK3Fha9Y8W/Q++uvtEeL
         /YPg==
X-Gm-Message-State: AOJu0Yyz1l03rD92jbEBsCH0PuECaBazVWjUzHdJB9BfpAwZnCmUx1kW
	HiCb3o18hwMT48Frltiwi3uhHgxsSVjdblfM0LOVXG5cRwVn0x3isH2nf4htpxnQ97s3Ug7JKty
	+MC5dpVaj7bqVHRCm4mT00+pjlBc=
X-Google-Smtp-Source: AGHT+IHxW7WSYK4f1FGGZsMYACZs6SqfygITLf6iYKRm/PCCvZGnZgjnHgslFZQAEmh6iPK54khOvv28BsLAoEQJzTI=
X-Received: by 2002:a17:90a:4dc7:b0:2cb:4b88:2aaf with SMTP id
 98e67ed59e1d1-2d1e7fbd772mr6592519a91.12.1723452128817; Mon, 12 Aug 2024
 01:42:08 -0700 (PDT)
MIME-Version: 1.0
References: <17E9C992A189009E.19172@lists.yoctoproject.org>
 <CAC3TgAL6_p5qa9bCDoM3FGVRmKfR-d-Zhhfrj2bZE7CGh_Nm8Q@mail.gmail.com> <272ff3d5-8100-4475-911a-56e17e11ae1c@gmail.com>
In-Reply-To: <272ff3d5-8100-4475-911a-56e17e11ae1c@gmail.com>
From: Yann CARDAILLAC Pro <yann.cardaillac@gmail.com>
Date: Mon, 12 Aug 2024 10:41:57 +0200
Message-ID: <CAC3TgALvHvcyAZjb5iiZoS8-V977DuhEc790C85VORwpR6sGRg@mail.gmail.com>
Subject: Re: [yocto][meta-openembedded][poky] nodejs package broken
To: Gyorgy Sarvari <skandigraun@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ecfc11061f78778a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Aug 2024 08:42:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63686

--000000000000ecfc11061f78778a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Gyorgy,

Thanks a lot for this observation, in fact I'm upgrading to my vendor's
scarthgap release, but it is based on styhead...

I don't really understand what is going on on their side...

So this might be a styhead issue (if it's one).

poky 6e80b2ab660e60135b52bd7358f0ce7612226f06
meta-openembedded 6f3784d1b7c24c56e5df26cc17216c75eb6e4e52

Bests,

Yann CARDAILLAC,



On Sun, Aug 11, 2024 at 3:36=E2=80=AFPM Gyorgy Sarvari <skandigraun@gmail.c=
om>
wrote:

> On 8/9/24 14:55, Yann CARDAILLAC via lists.yoctoproject.org wrote:
> > Hi,
> >
> > So I've been continuing my investigation, it seems that the problem in
> > the end is that node_modules from UNPACKDIR doesn't make it to S.
> >
>
> You mentioned that you are migrating to Scarthgap - but UNPACKDIR wasn't
> a thing in that release, it was introduced in Styhead, the next (current
> in-dev) version.
>
> By any chance, are you using the master branch of oe-core and/or
> meta-oe, instead of the Scarthgap branch? (Or are you actually migrating
> to Styhead, and not Scartgap?)
>

--000000000000ecfc11061f78778a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Gyorgy,</div><div><br></div><div>=
Thanks a lot for this observation, in fact I&#39;m upgrading to my vendor&#=
39;s scarthgap release, but it is based on styhead...</div><div><br></div><=
div>I don&#39;t really understand what is going on on their side...</div><d=
iv><br></div><div>So this might be a styhead issue (if it&#39;s one).<br></=
div><div><br></div><div>poky 6e80b2ab660e60135b52bd7358f0ce7612226f06</div>=
<div>meta-openembedded 6f3784d1b7c24c56e5df26cc17216c75eb6e4e52</div><div><=
br></div><div>Bests,<br></div><div><br></div><div><div dir=3D"ltr" class=3D=
"gmail_signature"><div dir=3D"ltr"><div>Yann CARDAILLAC,<br></div><br></div=
></div></div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Sun, Aug 11, 2024 at 3:36=E2=80=AFPM Gyorgy Sarva=
ri &lt;<a href=3D"mailto:skandigraun@gmail.com">skandigraun@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 8/9=
/24 14:55, Yann CARDAILLAC via <a href=3D"http://lists.yoctoproject.org" re=
l=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; So I&#39;ve been continuing my investigation, it seems that the proble=
m in <br>
&gt; the end is that node_modules from UNPACKDIR doesn&#39;t make it to S.<=
br>
&gt; <br>
<br>
You mentioned that you are migrating to Scarthgap - but UNPACKDIR wasn&#39;=
t <br>
a thing in that release, it was introduced in Styhead, the next (current <b=
r>
in-dev) version.<br>
<br>
By any chance, are you using the master branch of oe-core and/or <br>
meta-oe, instead of the Scarthgap branch? (Or are you actually migrating <b=
r>
to Styhead, and not Scartgap?)<br>
</blockquote></div>

--000000000000ecfc11061f78778a--

