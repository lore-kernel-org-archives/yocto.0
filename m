Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02976E00CB4; Wed, 16 Aug 2017 20:27:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM,URIBL_SBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.176 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.176 listed in dnsbl.sorbs.net]
	*  1.6 URIBL_SBL Contains an URL's NS IP listed in the SBL blocklist
	*      [URIs: yoctoproject.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f176.google.com (mail-ua0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 433AFE00A39
	for <yocto@yoctoproject.org>; Wed, 16 Aug 2017 20:27:46 -0700 (PDT)
Received: by mail-ua0-f176.google.com with SMTP id q25so20649244uah.1
	for <yocto@yoctoproject.org>; Wed, 16 Aug 2017 20:27:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=HvWm6g/RTjIrNNCKf09sYnRXBv6IHZ9Yb3DXk2aczkw=;
	b=JUpaxsTyU9nmApvBQb9VSduE9oy6gfYHttHzfGpJxaeCxwL+GkgaxrC35gaPyRzDZM
	Xqbira0BG53jMhCYyUkNYeiqrU3jXlRaV+Hif4t8K65NXm/8jAk5vzxabflnevCH3fMp
	s62lUGpueqhWOARUCqHb8Dk6X/rxuY9lEhYxGQuw962vEpKS1UT8tYb5Qp5kjrbvgBVd
	qpDCJ6DDoAD+0GcFj1BH0ZD3TM4oD3cOt2f9QUuVdygNIYkNDXhfqhzerR3ODa/3qWKl
	Ci33M+xsTgbzAC6FgeSFC9PSrORNKJ106FsTl5WCvEy0OP7XHWWFI+y4GzWWbMVSlkf8
	NI/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=HvWm6g/RTjIrNNCKf09sYnRXBv6IHZ9Yb3DXk2aczkw=;
	b=c/NmIoiSilT8ZHmzOSfhXtWr7nBfV4biCyQ9Aj2fDuY0H+QuVQsZSbxIRdwveZmskM
	RrqJ1ARjRY9dPJcXGMhUtsfe3me/dm3Hy0waYzS2HEsuuhskXoDXEfqs1WGDULGXpSBG
	yf03rxwrh6sjhrvCURBd8eWXRpvF9mD12vtv9wyKeUh/kxE8ZOl9z6BdAPCI1cdnMl7o
	hEpuDY+d3PB4M0qjH83r/X4eiz04/CVYWTKOY7QP4GTa0Gc4ManR4gbwufINQYWOEpB2
	waQ+UlIfHNZhNWQ0v9bHgIP257Pr+/itC15aNTg8u6Hv191DiHlHm9483n2fnPYnV3ee
	Ld2w==
X-Gm-Message-State: AHYfb5iQ5gAVF42R3/9t8KSxRBFS9++IQGbD8eAvKq9q22mzwz4Pigze
	drhbfX127ZEc7aO8fZYeawY8JiTqiw==
X-Received: by 10.176.20.46 with SMTP id b43mr2791475uae.23.1502940466408;
	Wed, 16 Aug 2017 20:27:46 -0700 (PDT)
MIME-Version: 1.0
References: <c969bc1a-2bf6-a194-a413-711c1b6917bf@gmail.com>
In-Reply-To: <c969bc1a-2bf6-a194-a413-711c1b6917bf@gmail.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Thu, 17 Aug 2017 03:27:35 +0000
Message-ID: <CAFzUWGnNBRHH7femm18S0qS+sXOC0f_2+dUiTUosmf2Kf6HE3A@mail.gmail.com>
To: Riko <antonius.riko@gmail.com>, "N:" <yocto@yoctoproject.org>
Subject: Re: Machine definition ?
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
X-List-Received-Date: Thu, 17 Aug 2017 03:27:48 -0000
Content-Type: multipart/alternative; boundary="001a114540da9e73050556ea98bd"

--001a114540da9e73050556ea98bd
Content-Type: text/plain; charset="UTF-8"

Hi,

You should be able to write

MACHINE = "orange-pi-one"

to set the machine correctly.

Giordon

On Wed, Aug 16, 2017 at 10:23 PM Riko <antonius.riko@gmail.com> wrote:

> Dear Yocto Members,
>
> I have a question related with machine,
>
> If I want to use Orange Pi, how can I define my machine on local.conf ?
>
> Related with :
>
> https://github.com/linux-sunxi/meta-sunxi/tree/morty/conf/machine
>
>
> /*****
>
> Sent By
>
> Ubuntu 16.04 LTS
>
> Regards,
>
> Riko H
>
> *****/
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114540da9e73050556ea98bd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>You should be able to write</div><d=
iv><br></div><div>MACHINE =3D &quot;orange-pi-one&quot;</div><div><br></div=
><div>to set the machine correctly.</div><div><br></div><div>Giordon<br><br=
><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, Aug 16, 2017 at 10:23 =
PM Riko &lt;<a href=3D"mailto:antonius.riko@gmail.com">antonius.riko@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Dear Yocto Membe=
rs,<br>
<br>
I have a question related with machine,<br>
<br>
If I want to use Orange Pi, how can I define my machine on local.conf ?<br>
<br>
Related with :<br>
<br>
<a href=3D"https://github.com/linux-sunxi/meta-sunxi/tree/morty/conf/machin=
e" rel=3D"noreferrer" target=3D"_blank">https://github.com/linux-sunxi/meta=
-sunxi/tree/morty/conf/machine</a><br>
<br>
<br>
/*****<br>
<br>
Sent By<br>
<br>
Ubuntu 16.04 LTS<br>
<br>
Regards,<br>
<br>
Riko H<br>
<br>
*****/<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div></div>

--001a114540da9e73050556ea98bd--
