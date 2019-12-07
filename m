Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.6457.1575751959054811142
 for <yocto@lists.yoctoproject.org>;
 Sat, 07 Dec 2019 12:52:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MiZfTd/9;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: mans.zigher@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67B45E010FF; Sat,  7 Dec 2019 12:52:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDE1EE0080F
	for <yocto@yoctoproject.org>; Sat,  7 Dec 2019 12:52:36 -0800 (PST)
Received: by mail-lj1-f175.google.com with SMTP id d20so11300766ljc.12
        for <yocto@yoctoproject.org>; Sat, 07 Dec 2019 12:52:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8DiJLyJ87EtMe5ILE1GbS+jt4EJlSpFieOSrn826unk=;
        b=MiZfTd/9X30hkMuQBLji6i0zJPCdXZdeYY3naYwjChWxJ11+gCBiOz4JarXeNdb33F
         yEIYBib04FhiSUqZPSDcADVu+R7YINiOPWJ10siM25nnQ9SLjl7n/VRYCyRp9iyUztkk
         xzewyUdBD3rs1eOc1UgZDNzNB1vYy+WEf38jzwG2uQ+q+t43GAYtHzI8cwibSWj1SdnC
         GG13RrhDjakhnzPV/oVBDiHw/45XWzOUJl+3q2NmMN+FaXi8d5W9hODR2M2qinTA5vxK
         Rnie2BoqRPNLrXqnSAAKPrvF1eF0PE61Q1NVyYOdbrhL4xOTyZfKAcSYwVin6vy+baqW
         bQGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8DiJLyJ87EtMe5ILE1GbS+jt4EJlSpFieOSrn826unk=;
        b=OJew/CUpVIBJwcoO4DvSeyAQBsPK+q7FzwD72sQXzN0aH9kDW52TMllfxE3r0WCzWc
         P/YptWV53O3as8qy92kQYcvNMtpOSVHboXGErWWYUhwHDoIYPhMV0LolzWeG5lsCuCvo
         iUYmpvRxou+GdJWD1DFrhSagcJ/HKNC0bvvMyje+xr9LpUI7d++seRD6rR+/iwFD7N+m
         ywZAlUUXjTRGFIwsHMCxPT4Ct2ELqx8bk5cVUI4vEzC72EPrT9syz6C1phOOPqHbVr8G
         GNh0TFECCoMNP0nYt0yMvzl61ZZyp8tPvmyI4E3qwmHWa1G9hKkfHHgtMvyjiEqBRU3I
         ki5g==
X-Gm-Message-State: APjAAAUL/cP3afwyxiPRtjVTxQUjE+WoCWaUh/FxwIm02FUnOhUJN2aG
	1PTrcbBDEmsm6cC6t38hy/UeoalaA2cSJxOH6ss=
X-Google-Smtp-Source: APXvYqylN52SFSX8tNY4G9Qv9atJWVGJ/ugi88Ir111Fex8u+hjd6PhI1MGq8GBddKXwqY+KKr5hZU0qN32AmH2RGHs=
X-Received: by 2002:a2e:3e11:: with SMTP id l17mr12471002lja.45.1575751955777;
 Sat, 07 Dec 2019 12:52:35 -0800 (PST)
MIME-Version: 1.0
References: <CAEhQi8n1NL+e+dhPGK_94stmXhE-H6+F3NHm=u10ACgSJ2wMsQ@mail.gmail.com>
 <20191206160605.GD3527@hiutale>
In-Reply-To: <20191206160605.GD3527@hiutale>
From: "Mans Zigher" <mans.zigher@gmail.com>
Date: Sat, 7 Dec 2019 21:52:24 +0100
Message-ID: <CAEhQi8kAak3VfJTQ63GSQYPoik2QtTRY4pimBRgvz5C+wiEajQ@mail.gmail.com>
Subject: Re: [yocto] What should I expect when using SSTATE_MIRROR?
To: Mikko.Rapeli@bmw.de
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000940b980599235770"

--000000000000940b980599235770
Content-Type: text/plain; charset="UTF-8"

Hi,

I am also using docker when building but good point I will make sure that
we are using the same version of the docker image.

Thanks

On Fri, Dec 6, 2019, 17:06 <Mikko.Rapeli@bmw.de> wrote:

> Hi,
>
> On Fri, Dec 06, 2019 at 02:07:47PM +0100, Mans Zigher wrote:
> > Hi,
> >
> > I am trying to use the sstate cache by using a SSTATE_MIRROR. I have
> > built everything from scratch once and pushed my sstate-cache
> > directory to the server. I then wen't over to another machine and did
> > a clean build but this time I made sure it used SSTATE_MIRROR but the
> > result was not what I expected
> >
> > Sstate summary: Wanted 1255 Found 233 Missed 2044 Current 0 (18%
> > match, 0% complete)
> >
> > I have tried it multiple times on different machines with the same
> > result the only time it works as expect is when running the build on
> > the first machine from which the sstate cache was originally coming
> > from. Am I missing something? Or is this expected?
>
> Maybe host tool versions differ which trigger recompilation of things
> like gcc and thus everything gets recompiled. You can use bitbake-diffsigs
> to figure out why rebuild was triggered.
>
> I work around this by using a build container based on LXC and Debian
> stable
> everywhere, in CI and on developer machines with various Linux distros.
>
> Hope this helps,
>
> -Mikko

--000000000000940b980599235770
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,=C2=A0<div dir=3D"auto"><br></div><div dir=3D"auto">I =
am also using docker when building but good point I will make sure that we =
are using the same version of the docker image.</div><div dir=3D"auto"><br>=
</div><div dir=3D"auto">Thanks</div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 6, 2019, 17:06  &lt;<a href=
=3D"mailto:Mikko.Rapeli@bmw.de">Mikko.Rapeli@bmw.de</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">Hi,<br>
<br>
On Fri, Dec 06, 2019 at 02:07:47PM +0100, Mans Zigher wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; I am trying to use the sstate cache by using a SSTATE_MIRROR. I have<b=
r>
&gt; built everything from scratch once and pushed my sstate-cache<br>
&gt; directory to the server. I then wen&#39;t over to another machine and =
did<br>
&gt; a clean build but this time I made sure it used SSTATE_MIRROR but the<=
br>
&gt; result was not what I expected<br>
&gt; <br>
&gt; Sstate summary: Wanted 1255 Found 233 Missed 2044 Current 0 (18%<br>
&gt; match, 0% complete)<br>
&gt; <br>
&gt; I have tried it multiple times on different machines with the same<br>
&gt; result the only time it works as expect is when running the build on<b=
r>
&gt; the first machine from which the sstate cache was originally coming<br=
>
&gt; from. Am I missing something? Or is this expected?<br>
<br>
Maybe host tool versions differ which trigger recompilation of things<br>
like gcc and thus everything gets recompiled. You can use bitbake-diffsigs<=
br>
to figure out why rebuild was triggered.<br>
<br>
I work around this by using a build container based on LXC and Debian stabl=
e<br>
everywhere, in CI and on developer machines with various Linux distros.<br>
<br>
Hope this helps,<br>
<br>
-Mikko</blockquote></div>

--000000000000940b980599235770--
