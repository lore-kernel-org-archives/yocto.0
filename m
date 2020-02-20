Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.319.1582221527476005108
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Feb 2020 09:58:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.ro header.s=google header.b=U3OLgTmC;
 spf=none, err=SPF record not found (domain: gherzan.ro, ip: 140.211.169.56, mailfrom: andrei@gherzan.ro)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 552CFE016B7; Thu, 20 Feb 2020 09:58:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.222.66 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f66.google.com (mail-ua1-f66.google.com [209.85.222.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A50E8E016B5
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2020 09:58:46 -0800 (PST)
Received: by mail-ua1-f66.google.com with SMTP id y23so1915960ual.2
        for <yocto@yoctoproject.org>; Thu, 20 Feb 2020 09:58:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gherzan.ro; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=z9lMp+pw00IIxXBwIBRGl59N2QZm279Y4hlSDXFwXws=;
        b=U3OLgTmCi+YeoRLm6cOCrtM3r5iWAnqf+zr3pdjNLLl2RMcFy75/DSPLec0CdF/2uE
         Q78UVUaPZpJfSsun/s9xSztEkJSByMcz1eBnTPOnA82f7dVDCU+HiUf3nt7ByxIZNCvR
         YlDMYxLKtd4OyjAuFUXheU2jhdGYkt+H0qMnw2OWRUH3KW+euSn4FM6L5ONBknBKxeYl
         Xmh7GxKegadtRGwLUDnLdkV9B3GOPu2+tHNEU64ApWfmU2LLgM3zvmgyFssdcUfJ4f0D
         uV9M/i+LOFSXGso37TZbkGzBRlCjL/dLVGcWFLpfsNZi/MnRK0LpC62+Th4n7vDB+HUj
         RM8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=z9lMp+pw00IIxXBwIBRGl59N2QZm279Y4hlSDXFwXws=;
        b=Iw5Rk3gghkNghArk/y1HFhQsRTKhnhnThxUbgqnhfq59lFtv2T+OyZ3UtWDmHgDd/y
         jcysplKULHvLmi1kuXV09Q2n8mVbYCD8pbRHXfpCb9jgnwQHrODropMsTn1KrwaE2+MI
         nab7kJTal4iORdyEXPkEiWZnhyZFqxw/9zOHZ7+h1k3t9WdWI4SaOdCsHaYO6VUAOpkS
         ++yHG9ndV1u03nosLFBKOW2XATOXnapVKw5y0y38zggJp5lAHSXzeUmn9j0QprvNsTWi
         VlG4YKC0qg3krbUucQyguMyj31jcHt0e1cpDQ4tOXVVe0L64A8UQdo0tZ0nxngc95MIz
         Y9qw==
X-Gm-Message-State: APjAAAWlEUbl6k11EGAAbxYgHGcLYFFket7BesxFEGeRD4dDZ0XNvenw
	DKXi4lJaJn/f4fzfcbA1Xo6g31SBYol4NbA/Fs9/Jw==
X-Google-Smtp-Source: APXvYqwPfjVQ8w8zrUNJAsFZFVrmFgio4y/aVVPuHUDP6hqogB94y3LUGsjTt0e47MsINJQ/aVAV49Si1oE9Sj3Vfek=
X-Received: by 2002:ab0:7411:: with SMTP id r17mr16675873uap.31.1582221525889;
 Thu, 20 Feb 2020 09:58:45 -0800 (PST)
MIME-Version: 1.0
References: <20200213103000.1594-1-andrei@gherzan.ro> <6f979b87-756e-207f-0500-a83c6afa07f6@gmail.com>
In-Reply-To: <6f979b87-756e-207f-0500-a83c6afa07f6@gmail.com>
From: "Andrei Gherzan" <andrei@gherzan.ro>
Date: Thu, 20 Feb 2020 17:58:10 +0000
Message-ID: <CAK18fxGX5O-yKSJPfFhsAahpowJVMbNmY_9waMxVjOKTFLeGoA@mail.gmail.com>
Subject: Re: [yocto] [psplash][PATCH 1/1] psplash-fb: Avoid racing issues on reading fb0
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000001c996059f05a859"

--00000000000001c996059f05a859
Content-Type: text/plain; charset="UTF-8"

Hi,

On Fri, Feb 14, 2020 at 7:32 AM Khem Raj <raj.khem@gmail.com> wrote:

> On 2/13/20 2:30 AM, Andrei Gherzan wrote:
> > When starting psplash as early as possible in the boot process, the fb
> > device node might not be ready. This patch adds a loop on reading the
> > fb0 device with a timeout of 5 seconds.
> >
> > Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> > ---
> >   psplash-fb.c | 5 ++++-
> >   1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/psplash-fb.c b/psplash-fb.c
> > index 6603572..6700a3b 100644
> > --- a/psplash-fb.c
> > +++ b/psplash-fb.c
> > @@ -137,6 +137,7 @@ psplash_fb_new (int angle, int fbdev_id)
> >     struct fb_fix_screeninfo fb_fix;
> >     int                      off;
> >     char                     fbdev[9] = "/dev/fb0";
> > +  int retries = 0;
> >
> >     PSplashFB *fb = NULL;
> >
> > @@ -156,7 +157,9 @@ psplash_fb_new (int angle, int fbdev_id)
> >
> >     fb->fd = -1;
> >
> > -  if ((fb->fd = open (fbdev, O_RDWR)) < 0)
> > +  while ((fb->fd = open(fbdev, O_RDWR)) < 0 && retries++ <= 100)
> > +       usleep(50000);
> > +  if (fb->fd < 0)
>
> i wonder if there should be a different way to ensure this dependency
> perhaps sd_notify for systemd or udev notification maybe ..
>

That makes sense. The only issue is that in my use-case, initramfs doesn't
have systemd. And usually, you will be wanting to run a splash way before
any init system. What is your proposal with udev notifications? Can you
expand that?

Regards,
Andrei

--00000000000001c996059f05a859
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Feb 14, 2020 at 7:32 AM Khem Raj &lt;=
<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">On 2/13/20 2:30 AM,=
 Andrei Gherzan wrote:<br>
&gt; When starting psplash as early as possible in the boot process, the fb=
<br>
&gt; device node might not be ready. This patch adds a loop on reading the<=
br>
&gt; fb0 device with a timeout of 5 seconds.<br>
&gt; <br>
&gt; Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro"=
 target=3D"_blank">andrei@gherzan.ro</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0psplash-fb.c | 5 ++++-<br>
&gt;=C2=A0 =C2=A01 file changed, 4 insertions(+), 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/psplash-fb.c b/psplash-fb.c<br>
&gt; index 6603572..6700a3b 100644<br>
&gt; --- a/psplash-fb.c<br>
&gt; +++ b/psplash-fb.c<br>
&gt; @@ -137,6 +137,7 @@ psplash_fb_new (int angle, int fbdev_id)<br>
&gt;=C2=A0 =C2=A0 =C2=A0struct fb_fix_screeninfo fb_fix;<br>
&gt;=C2=A0 =C2=A0 =C2=A0int=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 off;<br>
&gt;=C2=A0 =C2=A0 =C2=A0char=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fbdev[9] =3D &quot;/dev/fb0&quot;;<br>
&gt; +=C2=A0 int retries =3D 0;<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0PSplashFB *fb =3D NULL;<br>
&gt;=C2=A0 =C2=A0<br>
&gt; @@ -156,7 +157,9 @@ psplash_fb_new (int angle, int fbdev_id)<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0fb-&gt;fd =3D -1;<br>
&gt;=C2=A0 =C2=A0<br>
&gt; -=C2=A0 if ((fb-&gt;fd =3D open (fbdev, O_RDWR)) &lt; 0)<br>
&gt; +=C2=A0 while ((fb-&gt;fd =3D open(fbdev, O_RDWR)) &lt; 0 &amp;&amp; r=
etries++ &lt;=3D 100)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0usleep(50000);<br>
&gt; +=C2=A0 if (fb-&gt;fd &lt; 0)<br>
<br>
i wonder if there should be a different way to ensure this dependency <br>
perhaps sd_notify for systemd or udev notification maybe ..<br></blockquote=
><div><br></div><div>That makes sense. The only issue is that in my use-cas=
e, initramfs doesn&#39;t have systemd. And usually, you will be wanting to =
run a splash way before any init system. What is your proposal with udev no=
tifications? Can you expand that?</div><div><br></div><div>Regards,</div><d=
iv>Andrei<br></div></div></div>

--00000000000001c996059f05a859--
