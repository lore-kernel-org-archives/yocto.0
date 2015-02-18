Return-Path: <gmshastri@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB60EE00757; Wed, 18 Feb 2015 03:43:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gmshastri[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f178.google.com (mail-ob0-f178.google.com
	[209.85.214.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52EE0E0034A
	for <yocto@yoctoproject.org>; Wed, 18 Feb 2015 03:43:36 -0800 (PST)
Received: by mail-ob0-f178.google.com with SMTP id uz6so843221obc.9
	for <yocto@yoctoproject.org>; Wed, 18 Feb 2015 03:43:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=lVkuflspkfxA75d68SqNZYgCpHdHF92g+k+4wm41g4s=;
	b=nL1t9JW37xnrrCm7x5zd9n05zkFl91DUN9Zp2qmP3cHyfLYGFQ84RgLM3sgKLQOKCb
	4+B89g6P0GlZz8WXkiZtOhyH3cHmJQ7eYFUVJjvg5+eAYE/bJED7DG2ptkonDRIWNZIe
	clkOKVgZ0zrRF5D8x2F5xF3MHJc6ATvggoupYifGYrrEQkE4o4Zi458ZCx7/Mh4MhrvU
	goMq2goMCp3XPRCdCkX9qGmQQcdShTpQN13cftcmMOQgXfn9GqbLxWv4bKGY8m2QYASl
	rGKvPXvP9NOicK28QGE3YoQs2rxrxWeXc2ccztbL8OTeCdPYC20fh6ea2u1o57M8EwcP
	vSzw==
MIME-Version: 1.0
X-Received: by 10.182.249.102 with SMTP id yt6mr13964360obc.30.1424259815916; 
	Wed, 18 Feb 2015 03:43:35 -0800 (PST)
Received: by 10.202.104.144 with HTTP; Wed, 18 Feb 2015 03:43:35 -0800 (PST)
In-Reply-To: <CAP2S6e5oBGTDWNJ1eT9YsnWAV+xeDEBKKbCE2h3_34rmJu7ycg@mail.gmail.com>
References: <CAP2S6e5oBGTDWNJ1eT9YsnWAV+xeDEBKKbCE2h3_34rmJu7ycg@mail.gmail.com>
Date: Wed, 18 Feb 2015 17:13:35 +0530
Message-ID: <CAE_REAtVw=g-6Xb+PVt9gA3xmXVxN=+UUtjfTONYS4+i_wozAA@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: Valentin Le bescond <valentin.lebescond@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to switch kernel version without touching PREFERED VERSION
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
X-List-Received-Date: Wed, 18 Feb 2015 11:43:38 -0000
Content-Type: multipart/alternative; boundary=e89a8f64392c654b05050f5b54f7

--e89a8f64392c654b05050f5b54f7
Content-Type: text/plain; charset=UTF-8

Well, if you want to use your own kernel source, you can use something like
this:
==
inherit kernel externalsrc
EXTERNALSRC = "/home/xyz/linux-stable"
S = "${EXTERNALSRC}"
...
==

//Gaurang Shastri


On Wed, Feb 18, 2015 at 4:23 PM, Valentin Le bescond <
valentin.lebescond@gmail.com> wrote:

> Hi all,
>
> I'm working an a meta-wolfson layer to add the wolfson audio card support
> to the meta-raspberrypi layer.
>
> It's a very simple set of patche, but they apply to linux kernel 3.10.*
>
> And the PREFERED_VERSION of the machine configuration (raspberrypi.conf)
> is  :
> PREFERRED_VERSION_linux-raspberrypi ?= "3.12.%"
>
> I would like to build my images using
> linux-raspberrypi_3.10.38.bb
> instead of
> linux-raspberrypi_3.12.26.bb
>
> What is the most "best practice" whay to achive this ?
>
> Best regards
>
> Valentin
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--e89a8f64392c654b05050f5b54f7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Well, if you want to use your own kernel source, you =
can use something like this:<br>=3D=3D<br>inherit kernel externalsrc<br>EXT=
ERNALSRC =3D &quot;/home/xyz/linux-stable&quot;<br>S =3D &quot;${EXTERNALSR=
C}&quot;<br>...<br>=3D=3D<br><br></div>//Gaurang Shastri<br><div><br></div>=
</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Feb=
 18, 2015 at 4:23 PM, Valentin Le bescond <span dir=3D"ltr">&lt;<a href=3D"=
mailto:valentin.lebescond@gmail.com" target=3D"_blank">valentin.lebescond@g=
mail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><div><div><div><div><div><div>Hi all,<br><br></div>I&#39;m working=
 an a meta-wolfson layer to add the wolfson audio card support to the meta-=
raspberrypi layer.<br><br></div>It&#39;s a very simple set of patche, but t=
hey apply to linux kernel 3.10.*<br><br></div>And the PREFERED_VERSION of t=
he machine configuration (raspberrypi.conf) is=C2=A0 :<br>PREFERRED_VERSION=
_linux-raspberrypi ?=3D &quot;3.12.%&quot;<br></div><br></div>I would like =
to build my images using <br><a href=3D"http://linux-raspberrypi_3.10.38.bb=
" target=3D"_blank">linux-raspberrypi_3.10.38.bb</a><br></div>instead of <b=
r><a href=3D"http://linux-raspberrypi_3.12.26.bb" target=3D"_blank">linux-r=
aspberrypi_3.12.26.bb</a><br><div><div><br></div><div>What is the most &quo=
t;best practice&quot; whay to achive this ?<br><br></div><div>Best regards<=
span class=3D"HOEnZb"><font color=3D"#888888"><br><br></font></span></div><=
span class=3D"HOEnZb"><font color=3D"#888888"><div>Valentin<br></div><div><=
div><br></div></div></font></span></div></div>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--e89a8f64392c654b05050f5b54f7--
