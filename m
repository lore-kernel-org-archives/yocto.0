Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26400E00D4D; Sun, 21 Jul 2019 23:05:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.180 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
	[209.85.208.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73FEEE00B9C
	for <yocto@yoctoproject.org>; Sun, 21 Jul 2019 23:05:29 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id p17so36341419ljg.1
	for <yocto@yoctoproject.org>; Sun, 21 Jul 2019 23:05:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=0YsUr5bM4QgoaKnbBk0strrMZOE4jSSGsz4DnDGhndo=;
	b=B0FtC6Pz9K3BtRlaCzmBu4FUI8sSUN/1l09dy1h8EPXtCn/Z2gaJY3RrBHqSQI1Nbx
	INusqh7CtN7koBv6FnBoI2xXWB2WvnpEGGqLmqNqd060ehgSvYFUrEYqOzY8v3s+b07h
	7/hRL3YiYNHkeC50HZnwwtxvI3JsbAYA2Vu/30LqqTTw2mIEB1GSyE2mhxs5OtNzYPJN
	RDndo1mz+WtkCH5DAJivN8A8XyjSOjdUju953GPCFdenB9lQH+DLYUPEwjj5cH9vDh3t
	idzSFXN7vZiSzBiRZAgfKtLI/m6Aik4bm6eHjmmKMMJlwn3wyv4nOydb2SD2KBp2ICmO
	fasQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=0YsUr5bM4QgoaKnbBk0strrMZOE4jSSGsz4DnDGhndo=;
	b=P5eeBGlOgHQcczm/4+tCXEu9E00sJ3BXB7h1paTtrKkJ8xSPiz/+4oJtHQHsphEFa8
	w8rxbC8YLoi1jeOgebnpaSRnyYK58pVAGF8BaWIO/83zNSC/ykXzYZSR5FZP58S+8jeS
	b6q8bw7DkcdmI75PKC70OQ0KtmE6wPmkVb9AYvuapVJHgAlkfsd88S8unAwfy9Rdkn0I
	fl8zhVyilR3XfHSlwbUBXENP/SnPBzA5Cf0d3OGh/Ti2zun+UhpqoJTLa9AgM2BD3XBI
	nMsHzf5//jNz5PgTc34aug3Hjdr/9WTAB2eSt7/xBiOW9AnQBnCQdKyHq+37apRZjTQG
	1VmQ==
X-Gm-Message-State: APjAAAVsrjBySDqIZ82+qonT+0MLEEXLoZnt2psks/yuiv+6s4Z0xAvv
	fKQHYi/pPsIX6mlTGML0dHAjJjFWnHO75NmJMbE=
X-Google-Smtp-Source: APXvYqxymkKDM1QIsWsXpTS6aQemH96Uu6uOf9ymvWryD98PndnYanguviIumMe/DLMcOU56O/UnEB9DXC1sLtt8InY=
X-Received: by 2002:a2e:9048:: with SMTP id n8mr15910595ljg.37.1563775528461; 
	Sun, 21 Jul 2019 23:05:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAF_dkJDbqR8yPWRYX_2wT+Pk1+cuNcntWizg3hhZnA_vVVwnaA@mail.gmail.com>
	<CAAx3WaDTteqencYsxrb+1a_TgR8cazNUJ7-3VX9VxeePQkmRoQ@mail.gmail.com>
	<CAF_dkJB=p0EWosdL6cTe1YN+38KN8Qb8LuYoOvF06URR96oQCw@mail.gmail.com>
	<CAAx3WaCKS21xWZ_b3jqJFm61D+_QPy0Aago0Tais8hVTyoKqKw@mail.gmail.com>
	<CAF_dkJA_WsGVmnNwC9dR5KEzw3+jdHe3abNjBeLa4_=UXuoJCQ@mail.gmail.com>
In-Reply-To: <CAF_dkJA_WsGVmnNwC9dR5KEzw3+jdHe3abNjBeLa4_=UXuoJCQ@mail.gmail.com>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Mon, 22 Jul 2019 08:05:17 +0200
Message-ID: <CAAx3WaB=Hvm4Zm=N-m14mGBoH3_NwDUG2izOZVn+ZdB-aW5taw@mail.gmail.com>
To: Patrick Doyle <wpdster@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to specify a different kernel for an image
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
X-List-Received-Date: Mon, 22 Jul 2019 06:05:30 -0000
Content-Type: multipart/alternative; boundary="000000000000e1e809058e3edcd4"

--000000000000e1e809058e3edcd4
Content-Type: text/plain; charset="UTF-8"

Hi Patrick,

thank you for the clarification.
I have no idea on how to encapsulate the output of bitbake into another
image in a nice and clean way. I'm pretty sure that you must run two
separate bitbake, one per MACHINE.
What about a partitioned USB stick? You could have the base partition
schema plus an extra partition that contains the production image. The
implementation depends on which tool you are going to use to partition the
output image (if any).

Gabriele

Il giorno ven 19 lug 2019 alle ore 17:35 Patrick Doyle <wpdster@gmail.com>
ha scritto:

> On Fri, Jul 19, 2019 at 10:03 AM Gabriele Zampieri
> <gabbla.malist@gmail.com> wrote:
> >> 2. My new image going to be used as an installation image for my
> >> production image.  So I need to include the production image (for
> >> MACHINE="mymachine")) deploy products in the image for my installation
> >> image.  How can I do that if I define a new MACHINE for the production
> >> image?
> >
> >
> > This is not clear to me. With 'installation image' do you mean a full
> image (bootloader, kernel, rootfs etc)?
> > Can you give me some more details about this use case?
> >
> Hi Gabriele,
> Thank you again so much for your help!  My use case is as follows: I
> need to create an image that will go on a USB stick that we use when
> we manufacture our boards.  That image will be used to flash the
> production image that we ship.  The manufacturing image will have a
> different kernel configuration, possibly a different device tree, and
> certainly a different rootfs than our production image.  I would like
> to:
>
> $ bitbake manufacturing-image
>
> and have the build system set up so that it builds production-image
> and includes production-image-ubi.img as a file in the rootfs for my
> manufacturing-image.
>
> It seems to me that
> production-image-ubi.img must be built with MACHINE=mymachine
> manufacturing-image would have to be built with
> MACHINE=my-manufacturing-machine
>
> ...and that's where I get confused/concerned about using a different
> MACHINE for my manufacturing image vs my production image.
>
> --wpd
>

--000000000000e1e809058e3edcd4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Patrick, <br></div><div><br></div><div>thank you f=
or the clarification.</div><div>I have no idea on how to encapsulate the ou=
tput of bitbake into another image in a nice and clean way. I&#39;m pretty =
sure that you must run two separate bitbake, one per MACHINE. <br></div><di=
v>What about a partitioned USB stick? You could have the base partition sch=
ema plus an extra partition that contains the production image. The impleme=
ntation depends on which tool you are going to use to partition the output =
image (if any).</div><div><br></div><div>Gabriele<br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno ven 19=
 lug 2019 alle ore 17:35 Patrick Doyle &lt;<a href=3D"mailto:wpdster@gmail.=
com">wpdster@gmail.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">On Fri, Jul 19, 2019 at 10:03 AM Gabriele Zampie=
ri<br>
&lt;<a href=3D"mailto:gabbla.malist@gmail.com" target=3D"_blank">gabbla.mal=
ist@gmail.com</a>&gt; wrote:<br>
&gt;&gt; 2. My new image going to be used as an installation image for my<b=
r>
&gt;&gt; production image.=C2=A0 So I need to include the production image =
(for<br>
&gt;&gt; MACHINE=3D&quot;mymachine&quot;)) deploy products in the image for=
 my installation<br>
&gt;&gt; image.=C2=A0 How can I do that if I define a new MACHINE for the p=
roduction<br>
&gt;&gt; image?<br>
&gt;<br>
&gt;<br>
&gt; This is not clear to me. With &#39;installation image&#39; do you mean=
 a full image (bootloader, kernel, rootfs etc)?<br>
&gt; Can you give me some more details about this use case?<br>
&gt;<br>
Hi Gabriele,<br>
Thank you again so much for your help!=C2=A0 My use case is as follows: I<b=
r>
need to create an image that will go on a USB stick that we use when<br>
we manufacture our boards.=C2=A0 That image will be used to flash the<br>
production image that we ship.=C2=A0 The manufacturing image will have a<br=
>
different kernel configuration, possibly a different device tree, and<br>
certainly a different rootfs than our production image.=C2=A0 I would like<=
br>
to:<br>
<br>
$ bitbake manufacturing-image<br>
<br>
and have the build system set up so that it builds production-image<br>
and includes production-image-ubi.img as a file in the rootfs for my<br>
manufacturing-image.<br>
<br>
It seems to me that<br>
production-image-ubi.img must be built with MACHINE=3Dmymachine<br>
manufacturing-image would have to be built with MACHINE=3Dmy-manufacturing-=
machine<br>
<br>
...and that&#39;s where I get confused/concerned about using a different<br=
>
MACHINE for my manufacturing image vs my production image.<br>
<br>
--wpd<br>
</blockquote></div>

--000000000000e1e809058e3edcd4--
