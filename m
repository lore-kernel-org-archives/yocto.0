Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07D22E00CCC; Mon,  7 Jan 2019 12:49:38 -0800 (PST)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.178 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
	[209.85.160.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABD2BE00C9F
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2019 12:49:36 -0800 (PST)
Received: by mail-qt1-f178.google.com with SMTP id p17so2064075qtl.5
	for <yocto@yoctoproject.org>; Mon, 07 Jan 2019 12:49:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Ou420Va6YwZTyQvaNL/KWWHUYCvuNCb3agxb5pdIOMs=;
	b=PpOQSGAiYDR9smA5RR4m1TqmgXdCT/sMmkVgxZ8ZwCoYqdd+cqj+I8R/It/ny6LUXQ
	YcnrZoKkzrguAtcbL48UykXjjnbveex+ZBl3/qB6GyJRw/bUFpR9fGfsxqBbwpWK4R/Y
	da2bKCgoJ3q/HlA2poT9lXpiqm6SneHP79XPu5o1Ez3vci16laz4DsXhg8fKljQ6K2d7
	KPdmgV/n9uKJUHj0TOEI+KMImENzB1FkfSBFqlnyRhvEMBL79w2GE6bvMlR3ZsZlcedm
	A25TSZfBIVoe26ik41vGd8wf74kb3dRee8gRwzIyYODWRBbtGKa1Do/foEH4na2+gYOt
	aK7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Ou420Va6YwZTyQvaNL/KWWHUYCvuNCb3agxb5pdIOMs=;
	b=F9p0SJorVGsdHwTvSx/Q8m/2SB1c3azoRrX+MgFPj0+W7wGUZ6wVA4Py5orZOehY1Z
	wOMBxDy6EOJ7SW1DWHsH1QXVkQdkc7llPPqeBMY7ZCt/slPzTw99LZh1NGuPKjOkGIVA
	5sGn2FEnIHv88sB2jACOVIM1lYmAzVFHmmjLXSF71ZAAI9unhYFBHy2WS71OiGHCr9L2
	H+9+gw0CODA4PnMAoDbgcTF2N47ZEShTcl9no0ggifZlIr3+NPWtvGyaONZrVN7KfNdZ
	YpXKhnJGy0w5b8we2k4HXRm3XEW6S7sCSXG2gyJXBrSSqAN5kamvMu3n1Y9QwYxEQ8cV
	DOjg==
X-Gm-Message-State: AA+aEWZKRAdLlCd1+W7qU/u2Z7HlTvDz8xkMX6Soh8/31Y3wzsY9scSA
	BsHaNGY/tWZbvZJxGK57lhHGNuEQw2Lk7McbV3Q=
X-Google-Smtp-Source: AFSGD/VzD++WkxxacxE1oA/R2MT9G5FmXGYxfu0Euv6oLqfeK60eKC5ooxBJ97hSDZBCzyAlPd+In95Br17tnwhk7dI=
X-Received: by 2002:aed:3f71:: with SMTP id q46mr61989347qtf.347.1546894176020;
	Mon, 07 Jan 2019 12:49:36 -0800 (PST)
MIME-Version: 1.0
References: <CANJ8krOX28UT3zF+Q2wzkaA0vPx4u4AXBJLORycRZLRo63FccQ@mail.gmail.com>
In-Reply-To: <CANJ8krOX28UT3zF+Q2wzkaA0vPx4u4AXBJLORycRZLRo63FccQ@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 7 Jan 2019 21:49:23 +0100
Message-ID: <CAGAf8LyMx4vt3XJZhmJ-g0EvAgOa57L-Um7KNyzjiAbRysEaWQ@mail.gmail.com>
To: Mohammad Ali Boroumand <m.a.b.researcher@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Change SH to BASH
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
X-List-Received-Date: Mon, 07 Jan 2019 20:49:38 -0000
Content-Type: multipart/alternative; boundary="000000000000ddeb47057ee45d96"

--000000000000ddeb47057ee45d96
Content-Type: text/plain; charset="UTF-8"

Did not understand the question?

On your Debian (or Ubuntu) host, you need to do the following:

sudo apt-get update
sudo apt-get install bash

And then, this net pointer:
https://ubuntuforums.org/showthread.php?t=1932504

Something like that. If I understood correctly.

Zoran
_______


On Mon, Jan 7, 2019 at 9:32 PM Mohammad Ali Boroumand <
m.a.b.researcher@gmail.com> wrote:

> Hi
> How can configure Yocto Project to change system shell and interactive
> environment shell from SH to BASH before building Poky?
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000ddeb47057ee45d96
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Did not understand =
the question?</div><div><br></div><div>On your Debian (or Ubuntu) host, you=
 need to do the following:</div><div><pre>sudo apt-get update
sudo apt-get install bash<br></pre><pre>And then, this net pointer:<br><a h=
ref=3D"https://ubuntuforums.org/showthread.php?t=3D1932504">https://ubuntuf=
orums.org/showthread.php?t=3D1932504</a><br></pre><pre>Something like that.=
 If I understood correctly.<br></pre><pre>Zoran<br>_______<br></pre></div><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Mon, Jan 7, 2=
019 at 9:32 PM Mohammad Ali Boroumand &lt;<a href=3D"mailto:m.a.b.researche=
r@gmail.com">m.a.b.researcher@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi<div>How can conf=
igure Yocto Project to change system shell and interactive environment shel=
l from SH to BASH before building Poky?</div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--000000000000ddeb47057ee45d96--
