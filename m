Return-Path: <maxim.radugin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA9EBE00BEB; Tue, 10 Jun 2014 07:47:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (maxim.radugin[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.179 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f179.google.com (mail-we0-f179.google.com
	[74.125.82.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C92FBE00B78
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 07:47:42 -0700 (PDT)
Received: by mail-we0-f179.google.com with SMTP id w62so3138067wes.38
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 07:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=VDHQer1esVa5FOJu4SSzQrnhEZu5H4EkzIX/xNjsUZA=;
	b=lVBgyA2zDvI2GOE6BZTL/AB3D6t1jqR2UoQcc413YDFFjSJ2/Q6HBWjBSBP9496WRj
	ch5p8im848tL2CT5ZWqVI/viLHZH8hWWET6eQ8nIGfWinxMKZNPVGD59A3ZeW4fYFYpo
	bSzt/Kh0Vh/doriYIy24S30vHXvK88DHY7Vybbe07HEVqadzLqUUyZRfkM6t5PY1xP0m
	a/eVUUYGGx5L3RQcHJ6wGtbC645rQV8zZbvJ6HK/5YU2LM9YdfaAO39lQQmeCdSJHMIT
	G25HTF20y07PFH8hfOZY43tP9F3RUS/vrx0mesPTaq/5QxoGNUcmeTjCR7GIl5PrLcDz
	irDg==
MIME-Version: 1.0
X-Received: by 10.180.228.39 with SMTP id sf7mr36926557wic.26.1402411660748;
	Tue, 10 Jun 2014 07:47:40 -0700 (PDT)
Received: by 10.194.88.69 with HTTP; Tue, 10 Jun 2014 07:47:40 -0700 (PDT)
In-Reply-To: <1402354370.9385.9.camel@marlon-Z68X-UD3H-B3>
References: <1402354370.9385.9.camel@marlon-Z68X-UD3H-B3>
Date: Tue, 10 Jun 2014 17:47:40 +0300
Message-ID: <CABWuD8f+XHnfLCzWCHvJiKSgKOOs7Q2WVUmxgC4-3v5bQpOfWg@mail.gmail.com>
From: Maxim Radugin <maxim.radugin@gmail.com>
To: Marlon Smith <marlon.smith10@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Why use Yocto?
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
X-List-Received-Date: Tue, 10 Jun 2014 14:47:43 -0000
Content-Type: multipart/alternative; boundary=001a1134d18ade2c4204fb7c687f

--001a1134d18ade2c4204fb7c687f
Content-Type: text/plain; charset=UTF-8

Hi Marlon,

Some more points to vote for yocto:
1) ability to switch to another board easily (even with different arch)
just by switching the BSP layer and optionally doing some kernel and
bootloader config;
2) you can switch between package versions you want to use, plus fine-tune
and patch them for your specific needs;

As the downside of Yocto I can mention that "baking" process is quite time
and resource intensive.

BR,
Maxim.

On Tue, Jun 10, 2014 at 1:52 AM, Marlon Smith <marlon.smith10@gmail.com>
wrote:

>  Hi everyone,
>
> I'm developing a product that will run on a custom i.MX6 board and I'm
> trying to decide whether to use Yocto or Ubuntu (there's a version of
> Ubuntu packaged for the Wandboard that will run on our board).  The board
> will run our own custom app, and we'll modify the Linux kernel to support
> our hardware.
>
> Ubuntu seems like it would be ready to go - just put it on an SD card,
> boot the board, compile the app and create a new SD card image from the
> result to use for manufacturing.
>
> Yocto seems like it would be easier to remove unneeded packages from, and
> easier to cross-compile the application for.  This means we could have a
> smaller SD card image in the end.
>
> What are your thoughts on this?
>
> Thanks
>
> Marlon
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a1134d18ade2c4204fb7c687f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Marlon,<div><br></div><div>Some more points to vote for=
 yocto:</div><div>1) ability to switch to another board easily (even with d=
ifferent arch) just=C2=A0by=C2=A0switching the BSP layer and optionally doi=
ng some kernel and bootloader config;</div>
<div>2) you can switch between package versions you want to use, plus fine-=
tune and patch them for your specific needs;=C2=A0</div><div class=3D"gmail=
_extra"><br>As the downside of Yocto I can mention that &quot;baking&quot; =
process is quite time and resource intensive.</div>
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">BR,</div><d=
iv class=3D"gmail_extra">Maxim.<br><br><div class=3D"gmail_quote">On Tue, J=
un 10, 2014 at 1:52 AM, Marlon Smith <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:marlon.smith10@gmail.com" target=3D"_blank">marlon.smith10@gmail.com</a>&=
gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><u></u>


 =20
 =20

<div>
Hi everyone,<br>
<br>
I&#39;m developing a product that will run on a custom i.MX6 board and I&#3=
9;m trying to decide whether to use Yocto or Ubuntu (there&#39;s a version =
of Ubuntu packaged for the Wandboard that will run on our board).=C2=A0 The=
 board will run our own custom app, and we&#39;ll modify the Linux kernel t=
o support our hardware.<br>

<br>
Ubuntu seems like it would be ready to go - just put it on an SD card, boot=
 the board, compile the app and create a new SD card image from the result =
to use for manufacturing.<br>
<br>
Yocto seems like it would be easier to remove unneeded packages from, and e=
asier to cross-compile the application for.=C2=A0 This means we could have =
a smaller SD card image in the end.<br>
<br>
What are your thoughts on this?<br>
<br>
Thanks<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
Marlon
</font></span></div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div></div>

--001a1134d18ade2c4204fb7c687f--
