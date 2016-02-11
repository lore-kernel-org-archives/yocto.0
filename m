Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B974AE00BFD; Thu, 11 Feb 2016 06:33:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44A57E00BE9
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 06:33:10 -0800 (PST)
Received: by mail-ig0-f170.google.com with SMTP id xg9so36034579igb.1
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 06:33:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=6C1ua+h/VxU9YiUGC2YWYwaFXQ8VeYOlKqJGc/gGGE4=;
	b=ebtS3jOvxSIoPeh3KjdXHg8nAgqwYjgdyGjIsQiE8PamufVq1zR8NILs/GgORDRBZj
	PBQMwpMlFpwEZxvfScPhdXUzb+C5tlAWkSC+roAbaj9hDuK+SPa/UnPiprrq1qlfBYC1
	Qd/Wvfdxn9VGB0MzYqbeSEXnvq9IkNji3Ig3+JFEMgOGIdN29G1MsSLmc9Qbq+Wycq8L
	VUkRK3zKXMk2UbMiT2shD9JrjInNmAKRtABrPfRX3hvLWPJO93OJv7QbiBBF4Vdgm9qg
	iriF3pz0Tp1aes3oznqOQF+zzXlipEXkWGlTf4F8j06yHsoGNX2MxBTualcmqdcpR54k
	bGrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=6C1ua+h/VxU9YiUGC2YWYwaFXQ8VeYOlKqJGc/gGGE4=;
	b=A0apZ5ra6W7DHFvkY8JnI5D9Dnx/UI4M8MZs3u3ki4UUoxqVFNs15FcCEDp0r9W13y
	ItYwv+dqI0B3z4rF/x22nUHW+ivn8xHOqUZgY0ih2+n3eahO9t273wzNYVHEQxmk4s0+
	LVnF7VGgGiBo23i4SVgtMEUethXMuBJFP5AsxbavhyIR1V4Gqowm/rMO8w4VpE5fLxiU
	c/LEaBpHGA+hZnm9XPx54ZS7UXwFFmV5W2YcG8D8A90tCFKA81/SFIkV6goojnwc5o/1
	8TAblj9ZDzVhubu6yTOssGW+ByrW552x8hS1Cb+EkSop7i7qYuMJM7BC5/aPjpBT4W2t
	gfqw==
X-Gm-Message-State: AG10YOSMOvN/75rA3cTcjCn3bTQ2/2L41+zkc7n3HHToC1dGMPev7Gla8IcfNUFNhwufTGOLPTmhFWMrLvcrXJNS
X-Received: by 10.50.78.227 with SMTP id e3mr15531065igx.64.1455201190078;
	Thu, 11 Feb 2016 06:33:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Thu, 11 Feb 2016 06:32:50 -0800 (PST)
In-Reply-To: <3534892.4K3lPByQ7B@nickl>
References: <CAJTo0LaMycXVjZLoPMU7Te2HDpp7+YUu8GGuNznhk8D8Yje27A@mail.gmail.com>
	<3534892.4K3lPByQ7B@nickl>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 11 Feb 2016 14:32:50 +0000
Message-ID: <CAJTo0LY6r8od5c3rysNWFg=-3c0jWx4STaaPQD-pcEmUmqh2Dw@mail.gmail.com>
To: Nick Leverton <nick@leverton.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Dropping Debian 7 as supported?
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
X-List-Received-Date: Thu, 11 Feb 2016 14:33:12 -0000
Content-Type: multipart/alternative; boundary=089e0111b7340304d5052b7f6ea2

--089e0111b7340304d5052b7f6ea2
Content-Type: text/plain; charset=UTF-8

On 11 February 2016 at 14:21, Nick Leverton <nick@leverton.org> wrote:

> Possibly a little early - Debian 7 will be going onto LTS security support
> for
> two years, starting some time this month.  Quoting from
> https://wiki.debian.org/LTS
>

Ah yes, I'd forgotten about the LTS project and was looking at the security
team.

This does make it less clear, but it's still an old release and we can't
support/test on everything.

Ross

--089e0111b7340304d5052b7f6ea2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 11 February 2016 at 14:21, Nick Leverton <span dir=3D"ltr">&lt;<a href=
=3D"mailto:nick@leverton.org" target=3D"_blank">nick@leverton.org</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":1xi" class=3D"a3=
s" style=3D"overflow:hidden">Possibly a little early - Debian 7 will be goi=
ng onto LTS security support for<br>
two years, starting some time this month.=C2=A0 Quoting from<br>
<a href=3D"https://wiki.debian.org/LTS" rel=3D"noreferrer" target=3D"_blank=
">https://wiki.debian.org/LTS</a></div></blockquote></div><br>Ah yes, I&#39=
;d forgotten about the LTS project and was looking at the security team.</d=
iv><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">This doe=
s make it less clear, but it&#39;s still an old release and we can&#39;t su=
pport/test on everything.</div><div class=3D"gmail_extra"><br></div><div cl=
ass=3D"gmail_extra">Ross</div></div>

--089e0111b7340304d5052b7f6ea2--
