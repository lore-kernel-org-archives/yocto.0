Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E05D1E00C9F; Sat,  5 Jan 2019 19:57:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.49 listed in list.dnswl.org]
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
	[209.85.167.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 520D2E00901
	for <yocto@yoctoproject.org>; Sat,  5 Jan 2019 19:57:46 -0800 (PST)
Received: by mail-lf1-f49.google.com with SMTP id n18so27920743lfh.6
	for <yocto@yoctoproject.org>; Sat, 05 Jan 2019 19:57:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=i5I9PsN9eJN6SYxAmf/URdoPeP5WmXCjw296EX16RXI=;
	b=h4WbKd2Cklx4e3RGMi8hUQ0urOz7yZgD7TdD9SnTvaw4ijWAirE+XQx2ZOtRYYloY9
	BueYtyqDxmydYZv5Wq97JKWjx4uMO6osgQ4ZrwOTjdUTG9Ry+avfE8MoDN8bZoDLSWSo
	XwrtadqZgPIgcL0ZC43iY5sJJf+UX4Vg48yxaUwRc8VJgGTrvAToPAAEOP/g/SdanNPx
	0bszZhK8wDGSkRJLvZ6CA/Z2n7PraBduH5xDHAVjYp67By8J7X51IZXiSRg6GsQzrwj7
	KHmxU2TsQQeZi/sac0ukiH4VQygOBRZ6fJ3uN/u+ApAMajzAz/u1nYVmsXg4cYhA3N43
	B2wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=i5I9PsN9eJN6SYxAmf/URdoPeP5WmXCjw296EX16RXI=;
	b=KV7kJwNJNuG2ORmepZaJRr25jT0unu9/zaBXo5o053SuC+G3If1XXC0ayqKxpROb6E
	O3nGzTFtJ/da5aeqmz8Rnspu8jorjfG02qKJAkjQ0/0tnjDQcdGMjJmjxBeoW8jVccIV
	XgCI7l6jw6hbJyEOlC9tI4mVyirLsO13Q7e8SCTYBt3j9tpzkHWk6H7Rd3ATicsI8Fyh
	VQD4JGFLwzhhx2N2abehkov6Wc+PhtzteaFk0aiM7e2X9iUupQTvklDQq4aaMeFTYuzv
	xdUOcOohyhSbRNVqPko8Dh0bSIBZW69kvjNfsL6wB43p6/3M0LJ8v5l7mXIIuGowpIQr
	myeQ==
X-Gm-Message-State: AJcUukdyjdFEh8/rkTGCGfY3ftRSbgw9DyBzUvdzqICac4EL3w4XtHiF
	6jCZGHqNOctlRRUBFJdrABzZCZdTvcGAccSVRa4=
X-Google-Smtp-Source: ALg8bN7zLE4USX5j2ouJRDmIc5bzddefRQaNHAZ+HxXNUNW/dJIle170ClgHGvi8nZ0MlISEsXdvIjoPLbh5LxsxW50=
X-Received: by 2002:a19:e01e:: with SMTP id x30mr2490214lfg.89.1546747065104; 
	Sat, 05 Jan 2019 19:57:45 -0800 (PST)
MIME-Version: 1.0
References: <CAMKF1sooPOtN-Y=0_cZ=Qv2viS5mwJAsm+yVsHpOJ5gpN65eZw@mail.gmail.com>
In-Reply-To: <CAMKF1sooPOtN-Y=0_cZ=Qv2viS5mwJAsm+yVsHpOJ5gpN65eZw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Sat, 5 Jan 2019 22:57:33 -0500
Message-ID: <CAHUNapTmVvPad7YjTt4CyLPA9tiNiTy-vF7hQ53chVV_Y3-RLA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [Openembedded-architecture] Dropping armv5 and armv5e tunes in 2.7
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
X-List-Received-Date: Sun, 06 Jan 2019 03:57:46 -0000
Content-Type: multipart/alternative; boundary="0000000000005f8172057ec21d66"

--0000000000005f8172057ec21d66
Content-Type: text/plain; charset="UTF-8"

Hello Khem,

Thanks for pointing this out.

On Thu, Jan 3, 2019 at 5:02 PM Khem Raj <raj.khem@gmail.com> wrote:

> Secondly, I would also like to drop armv4t, and keep armv5te as lowest
> supported tune
>

Fortunately I don't have any ARMv4 boards.

But, just for informational purposes, I wanted to point out that I do have
a couple ARM926EJ-S boards (i.MX233, LPC32xx) which are ARMv5TE which I am
actively working with and maintaining. Therefore, thank you for keeping
this one around.

--0000000000005f8172057ec21d66
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Khem,</div><div><br></div><div>Thanks for point=
ing this out.<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On T=
hu, Jan 3, 2019 at 5:02 PM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.co=
m">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">Secondly, I would also like to drop armv4t, and keep a=
rmv5te as lowest<br>
supported tune<br></blockquote><div><br></div><div>Fortunately I don&#39;t =
have any ARMv4 boards.</div><div><br></div><div>But, just for informational=
 purposes, I wanted to point out that I do have a couple ARM926EJ-S boards =
(i.MX233, LPC32xx) which are ARMv5TE which I am actively working with and m=
aintaining. Therefore, thank you for keeping this one around.<br></div></di=
v></div>

--0000000000005f8172057ec21d66--
