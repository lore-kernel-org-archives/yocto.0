Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4907DE00CFD; Fri, 19 Apr 2019 07:34:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E56BAE00B5C
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2019 07:34:57 -0700 (PDT)
Received: by mail-qt1-f172.google.com with SMTP id p20so5671551qtc.9
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2019 07:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=k4+YWBRNa5j2ICilnj3kLDH2NXPDyfk2Xnmcjvg9RSY=;
	b=thwThH5nTFaMnEjoDyrxwN6S9fPibanMSpwPs3ZvP0a673aRjlMpGevwmXeUkcx5+9
	uMqYHf2UgIhgGHqZbS0BO6hFBdobg7k+K9Zqp08n6ET3wVwRlvE+7XrCwPeJbfIBEkW2
	rIgaTQ7BkrAFLyro7o4mz/D5kwfUizmQxXOJU5GSJmYDLUI8SeANsBm8Sra8y+WoVsQe
	w8vfg5V5zKQDY7QJv0FfkbS/uvVgK+bdWD+f4WAD3e0XczQasuqzQmdi4lO5qcLM7Fv0
	NwqW8DmnSfyv5CSwyzFvCw+CfEy6Rh2vwdT4TUs219ww+C6IWJ5u4SLsDURAcej5SHkI
	Hjyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=k4+YWBRNa5j2ICilnj3kLDH2NXPDyfk2Xnmcjvg9RSY=;
	b=dF9Wqk0q0rlMfvuDmhQhZEi8Un0Z3mn11yt6CV53hj4NeD8lqdcAoP0U2qCYs6RxKy
	2/sUdzdvHCTTh0sWnw/PsmIroUrL9gFVVUegEIgCOGKzDACDMsw9vL1y/tDmRGQeS5ah
	puBzrwGcGm1VENDy4kQ9BsUybqmxqGnNvpvEYL3ehVk9BfSJn3nNEZP1jIhAzUJSYCeT
	57XsWKqZXYCPLcP0lG22/hqtlIOpSukeI04mGSly+ynBavdkdefX4dQgLzibyTdY6g56
	owme792SZk+7wB6fmi3o2xeYQJlIOU81bT2D7U7dctpsXQVWYaSvpTLIOeNrywWJR3Hh
	/YbQ==
X-Gm-Message-State: APjAAAVyQTS24XASLXZl33xXI1704XVhPW+9kKkmWLMX2P1ggaUJTxnM
	/skk3zbOd9sb2caPOjTV2D1LPPQLhAWXSzPaow4zP9cYG1k=
X-Google-Smtp-Source: APXvYqxxNqBpMX/eB80F76PvcK7MibnG7Opk1TULbWgQdzyR4MmeaA0lPJ1JbM0N/S7a/9lmyfHue5Ax1h063/4cTyk=
X-Received: by 2002:ac8:1908:: with SMTP id t8mr3680220qtj.347.1555684497146; 
	Fri, 19 Apr 2019 07:34:57 -0700 (PDT)
MIME-Version: 1.0
References: <000201d4f68b$12a81780$37f84680$@polycaptil.fr>
In-Reply-To: <000201d4f68b$12a81780$37f84680$@polycaptil.fr>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 19 Apr 2019 16:34:45 +0200
Message-ID: <CAGAf8Lxn+u-GrzhQiS-nG21Zp9=ubTJu9iquKVJ3Ka-uagkwbA@mail.gmail.com>
To: Stanisavljevic <n.stanisavljevic@polycaptil.fr>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: ERROR: Multiple .bb files are due to be built which each provide virtual/libgbm
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
X-List-Received-Date: Fri, 19 Apr 2019 14:34:59 -0000
Content-Type: multipart/alternative; boundary="000000000000d5d13a0586e30595"

--000000000000d5d13a0586e30595
Content-Type: text/plain; charset="UTF-8"

> I do some configuration in the local.conf, bblayers.conf,\
> custom-recipe *(Polycaptil-image-minimal),* machine.conf, ...
> to prepare and build my custom linux system for am335x
> processor (custom board based on the ti am335x-evmsk
> starter kit dev board).

I would advise you to do Polycaptil-image-sato or Polycaptil-image-full
since this is the right environment for Mesa and X11org packages.

Zoran
_______

On Fri, Apr 19, 2019 at 10:38 AM Stanisavljevic <
n.stanisavljevic@polycaptil.fr> wrote:

> Hello
>
> I try to do a custom linux with yocto and meta-ti for am335x processor.
>
> Y use :
>
> poky warrior git branch version
>
> meta-ti git branch 2019.00 version
>
> I do some configuration in the local.conf, bblayers.conf, custom-recipe
> (Polycaptil-image-minimal), machine.conf, ... to prepare and build my
> custom linux system for am335x processor (custom board based on the ti
> am335x-evmsk starter kit dev board).
>
> And when I try to compile the linux system, I got this error message
> "Multiple .bb files are due to be built which each provide virtual/libgbm".
>
> Here is what I have on my terminal before, during and after the
> compilation :
>
> https://pastebin.com/cJ9bzMde
>
>
>
> As it is written there is "Multiple .bb files are due to be built which
> each provide virtual/libgbm".
> But I don't know what is mean, what is the problem and how to solve it.
>
> Can somebody help me ?
>
> Nikola
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000d5d13a0586e30595
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span lang=3D"EN-US">&gt; I do some configuration in =
the local.conf,=20
bblayers.conf,\</span></div><div><span lang=3D"EN-US">&gt; custom-recipe <s=
pan style=3D"color:rgb(255,0,0)"><i><b>(Polycaptil-image-minimal),</b></i><=
/span> machine.conf,=20
...</span></div><div><span lang=3D"EN-US">&gt; to prepare and build my cust=
om linux system for am335x</span></div><div><span lang=3D"EN-US">&gt; proce=
ssor=20
(custom board based on the ti am335x-evmsk</span></div><div><span lang=3D"E=
N-US">&gt; starter kit dev board).</span></div><div><span lang=3D"EN-US"><b=
r></span></div><div><span lang=3D"EN-US">I would advise you to do Polycapti=
l-image-sato or <span lang=3D"EN-US">Polycaptil-image-full</span></span></d=
iv><div><span lang=3D"EN-US"><span lang=3D"EN-US"></span>since this is the =
right environment for Mesa and X11org packages.</span></div><div><span lang=
=3D"EN-US"><br></span></div><div><span lang=3D"EN-US">Zoran</span></div><di=
v><span lang=3D"EN-US">_______<br></span></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 19, 2019 at 10:3=
8 AM Stanisavljevic &lt;<a href=3D"mailto:n.stanisavljevic@polycaptil.fr">n=
.stanisavljevic@polycaptil.fr</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div lang=3D"FR"><div class=3D"gmail-m_-252761=
2131060587849WordSection1"><p><span lang=3D"EN-US">Hello<br><br>I try to do=
 a custom linux with yocto and meta-ti for am335x processor.<u></u><u></u><=
/span></p><p><span lang=3D"EN-US">Y use :<u></u><u></u></span></p><p><span =
lang=3D"EN-US">poky warrior git branch version<u></u><u></u></span></p><p><=
span lang=3D"EN-US">meta-ti git branch 2019.00 version<u></u><u></u></span>=
</p><p><span lang=3D"EN-US">I do some configuration in the local.conf, bbla=
yers.conf, custom-recipe (Polycaptil-image-minimal), machine.conf, ... to p=
repare and build my custom linux system for am335x processor (custom board =
based on the ti am335x-evmsk starter kit dev board).<u></u><u></u></span></=
p><p><span lang=3D"EN-US">And when I try to compile the linux system, I got=
 this error message &quot;Multiple .bb files are due to be built which each=
 provide virtual/libgbm&quot;.<br><br>Here is what I have on my terminal be=
fore, during and after the compilation :<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US"><a href=3D"https://pastebin.com/cJ9bzMd=
e" target=3D"_blank">https://pastebin.com/cJ9bzMde</a><u></u><u></u></span>=
</p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span>=
</p><p><span lang=3D"EN-US">As it is written there is &quot;Multiple .bb fi=
les are due to be built which each provide virtual/libgbm&quot;.<br>But I d=
on&#39;t know what is mean, what is the problem and how to solve it.<u></u>=
<u></u></span></p><p>Can somebody help me ?<u></u><u></u></p><p>Nikola<u></=
u><u></u></p></div></div>-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000d5d13a0586e30595--
