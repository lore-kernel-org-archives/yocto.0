Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1529.1588973019572844046
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 May 2020 14:23:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ij/KA031;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: ticotimo@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25CDDE01B17; Fri,  8 May 2020 14:23:39 -0700 (PDT)
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
	*      (ticotimo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.50 listed in list.dnswl.org]
	*  0.0 URIBL_RED Contains an URL listed in the URIBL redlist
	*      [URIs: yoctoproject.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03F95E01B15
	for <yocto@yoctoproject.org>; Fri,  8 May 2020 14:23:36 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id u11so3259969iow.4
        for <yocto@yoctoproject.org>; Fri, 08 May 2020 14:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=R/lp+3YNprMeWhKDs1i9Hr/6WlLP+E1nCXLzhEt7Mow=;
        b=ij/KA031z8a9jKxjcDcjFp6QWfFEVoGtZZ+iQ4OupLCzOVuaLabvEJL0N9aNFHIGiB
         bH4nry8+1Pm8iNqcRi9w7OEYCgDmJvDqPXVW1LqHh++dqX5xLfzduLQwgB+ozNstNFyX
         DdLNdPP39dN3VPi1Zs0hYf+tz+0gWopoCpj2k8twSVUYkOVwMqOFtO92uTkZVXwVQOQ1
         KmmbIJW0UdtezCn8whVC+f4WWTgKQgfzqo0+XT5p/yYEMOsHqMyMEd8SPqv0s12W1K2c
         CnCt/7pZDk9CGWhDCnnAMryxXfuptqStRFX2yoYjhNEiFfkHwjkMn5v4R4cxvNivbeCL
         i91A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=R/lp+3YNprMeWhKDs1i9Hr/6WlLP+E1nCXLzhEt7Mow=;
        b=BTpwL9jYeyzHTagMgIfu1dPkcGFPKPt/QQlC/ilWxZrJycwiZ0jsCskwDir4OOO5Uw
         EfVj32Tw4zoCq7p5bNuF27rMK0jjIiQklu/c0PVx4tO8v/VQ5fDoRVaW74EFDGs02GSJ
         MofBGBLg3B4jNJyFsxQakz/HWvY4T9X+c4+hhH52M95ztjadFBfiSiTY6ckmFPvj0aeD
         lcqpR2MBMdCnTwhalZ/yPv+a7OPN6OlGaONKOnsXJLjC+HAmEUE0lLibc6hsGZwmMKyD
         3P5XIqdLeyX1dBw3+ZCMWasPOY3eu40rFH2p2S4lYknUX0VaCXFRFa9NN1vxZNlkOhv8
         CKUw==
X-Gm-Message-State: AGi0PuYM6qLye9iKPbmrny9OWD3ib4BgDC4ZDdYaAxs6AHOK57GSnMx2
	NOh9PRN9Vrwlxc+IEyDaNlrIVKxAaTUbWSCm92CxhL4C
X-Google-Smtp-Source: APiQypKIIRwNpwadrnxZSySs1iSCmVSq9mzNF8bCFiuUgGb5BIrvHQ5QIXw7Rvk32oDoyffkZr928NUfsVuK64Pb8Lc=
X-Received: by 2002:a05:6602:2dd0:: with SMTP id l16mr4634055iow.45.1588973015920;
 Fri, 08 May 2020 14:23:35 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.LFD.2.21.2005071224280.2004419@localhost.localdomain> <CAAnfSTtUHbn8ZatFWkYA9521jZBQmoj-idJbYHnYTBs-g-MdyA@mail.gmail.com>
In-Reply-To: <CAAnfSTtUHbn8ZatFWkYA9521jZBQmoj-idJbYHnYTBs-g-MdyA@mail.gmail.com>
From: "Tim Orling" <ticotimo@gmail.com>
Date: Fri, 8 May 2020 14:23:25 -0700
Message-ID: <CANx9H-DGxHVSoxJYPaJPq2nPY3tc-mn=YK5Qs1ZG6H=GKyYk4g@mail.gmail.com>
Subject: Re: [yocto] how to list python3 built-in and core modules supplied by python3?
To: Ross Burton <ross@burtonini.com>
Cc: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000002bf29505a5299c7d"

--0000000000002bf29505a5299c7d
Content-Type: text/plain; charset="UTF-8"

On Fri, May 8, 2020 at 1:59 PM Ross Burton <ross@burtonini.com> wrote:

> On Thu, 7 May 2020 at 19:01, Robert P. J. Day <rpjday@crashcourse.ca>
> wrote:
> >   colleague recently asked how to list the built-in/core modules that
> > come with just installing python3
>
> Installing the python3 package pulls in the entire Python standard
> library.  So if it's in the standard library, that installs it.
>

For both python3 built-in modules and Perl built-in modules it would be
REALLY handy to have a post-build definitive list of what the provide.


> Ross
> 
>

--0000000000002bf29505a5299c7d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, May 8, 2020 at 1:59 PM Ross Burton &lt;<a href=3D"=
mailto:ross@burtonini.com">ross@burtonini.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex">On Thu, 7 May 2020 at 19:01, Robert P. J. Day &lt=
;<a href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcou=
rse.ca</a>&gt; wrote:<br>
&gt;=C2=A0 =C2=A0colleague recently asked how to list the built-in/core mo=
dules that<br>
&gt; come with just installing python3<br>
<br>
Installing the python3 package pulls in the entire Python standard<br>
library.=C2=A0 So if it&#39;s in the standard library, that installs it.<b=
r>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">For both python=
3 built-in modules and Perl built-in modules it would be REALLY handy to ha=
ve a post-build definitive list of what the provide.</div><div dir=3D"auto"=
><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><br>
Ross<br>
<br>
</blockquote></div></div>

--0000000000002bf29505a5299c7d--
