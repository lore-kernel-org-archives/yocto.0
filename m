Return-Path: <leodmendesjr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0E64E00B92; Thu, 14 Feb 2019 05:17:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (leodmendesjr[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.195 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f195.google.com (mail-vk1-f195.google.com
	[209.85.221.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D2F6E00B5C
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 05:17:42 -0800 (PST)
Received: by mail-vk1-f195.google.com with SMTP id d201so1390398vka.0
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 05:17:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=M37mJS/F6xQ9Qvy4Tf68QdmPrHNlj9fxeqcjGeRAwYo=;
	b=MTt4Z/tK8Ql9T5g2D0r21sfnD1DuxH1vY/ihJw60+2WDkFyFxv6HaaB917cURRJLe5
	CrldrdCHgf8RTMbNARlHjlVfj9HB3R4hiuA00G5vCYuFcuOxcXycS/7VIp9xPSvrWeUo
	ugFbxQF2GOf2Gt3HfP8x+LjGnX1KJOFIMThbSCLnonvWH5uYR9stQos2ZZCJrFzGqB3V
	mKSYTVu09p5xx5DALrWXtluyfA9sTsX0cvh/7FxenAPgFcoOkhX7Ernl97T85L3ojWSg
	mTPOdoJp4/X04rVWHpRD+gqywR+4WLltLLz5G5QxRSA6t3Bwz8t1+qC0JLrDPiX6Ovbq
	pGrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=M37mJS/F6xQ9Qvy4Tf68QdmPrHNlj9fxeqcjGeRAwYo=;
	b=N33vGwed1T7bKkdhfqKiJ6mITaPwju0Eg6PqUyr6H6haoRyyaOb71QfGKziKyXDKWx
	1bO4/6ypv3V56CcCQ7do7lMUk+9hsCWg6ZviZldk/wYN4rcmG3pA99T6JMerqsJ/xVF2
	dlWIuubkkXDEhmEi4yqPqklnt3Eh/rw1IgUx8kGw9jKmV0uBnI6cmeUIZXGf4WsTBrji
	WYrSBKA9oQ+S/6PLEKJdbXObGar21U9yuQ2zgKgPjKsD4IzmAn2q7J3EIAu8jEMAs8T/
	Wrf2ScXJF9Zx6i0SNd/bmJpkNKfB+8HYAkG03BrOhQfVvTftzBRp38O8byUOevkRZ1ij
	B7Xg==
X-Gm-Message-State: AHQUAuZUnYxNhuWMQfTymbDKM/qLpSww1nbMkGmJ41TDVKgMZGbQPvHY
	qVa2hPGQ+lCId27QP5G0qWkFvNm8//MdVnZPHQ==
X-Google-Smtp-Source: AHgI3IZlzikRmSjQtgFkOeZO93tF2VCAYSM+BtduvcV74MxgGnpZhd7lS+85KJlaNIfduG9+uRh1Mj1zFRpLeJ+J7h8=
X-Received: by 2002:a1f:8e49:: with SMTP id q70mr1955130vkd.40.1550150261883; 
	Thu, 14 Feb 2019 05:17:41 -0800 (PST)
MIME-Version: 1.0
References: <CAA3Hs=cc=mBZk_2+Fbr6AmRMXg6Yk8OuoGFGd29tPaiPcjfGzg@mail.gmail.com>
	<d2db2e78-4a1c-c6f4-9e98-d2e9d05d9fdc@windriver.com>
In-Reply-To: <d2db2e78-4a1c-c6f4-9e98-d2e9d05d9fdc@windriver.com>
From: Leonardo Jose Duarte MendesJunior <leodmendesjr@gmail.com>
Date: Thu, 14 Feb 2019 11:17:24 -0200
Message-ID: <CAA3Hs=dVPyWzySzzW3dae=8uGJZ+1ni3ZDHj3PA5zCgeC8NCrg@mail.gmail.com>
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Opusenc e shout2
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
X-List-Received-Date: Thu, 14 Feb 2019 13:17:43 -0000
Content-Type: multipart/alternative; boundary="000000000000b54a0f0581da7b9e"

--000000000000b54a0f0581da7b9e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks!

Em qui, 14 de fev de 2019 =C3=A0s 11:09, Randy MacLeod <
randy.macleod@windriver.com> escreveu:

> On 2/14/19 7:43 AM, Leonardo Jose Duarte MendesJunior wrote:
> > Good morning,
> >
> > I'm compiling the gstreamer1.0 and its plugins, but the plugins:
>
> > opusenc
>
> Seems to be a PACKAGECONIFG:
>
> $ grep opus meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-*bb
> meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.14.4.bb:#
> the opus encoder/decoder elements are now in the -base package,
> meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.14.4.bb:#
> but the opus parser remains in -bad
> meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.14.4.bb:PACK=
AGECONFIG[opusparse]
>
>        =3D "--enable-opus,--disable-opus,libopus"
> meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_1.14.4.bb:PAC=
KAGECONFIG[opus]
>
>          =3D "--enable-opus,--disable-opus,libopus"
>
>
>
> > and shout2send
>
> That's disabled:
> $ grep shout
> meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_1.14.4.bb
>      --disable-shout2 \
>
> You'll have to work on understanding why it was disabled and
> send a patch to fix it.
>
> ../Randy
>
> > are not found in the image.
> > Any idea what can it be?How can I solve this?
> >
> > Thanks.
> >
> >
> >
>
>
> --
> # Randy MacLeod
> # Wind River Linux
>

--000000000000b54a0f0581da7b9e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks!=C2=A0<br></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">Em qui, 14 de fev de 2019 =C3=A0s 11:09, =
Randy MacLeod &lt;<a href=3D"mailto:randy.macleod@windriver.com">randy.macl=
eod@windriver.com</a>&gt; escreveu:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">On 2/14/19 7:43 AM, Leonardo Jose Duarte MendesJunior w=
rote:<br>
&gt; Good morning,<br>
&gt; <br>
&gt; I&#39;m compiling the gstreamer1.0 and=C2=A0its plugins, but the plugi=
ns:<br>
<br>
&gt; opusenc <br>
<br>
Seems to be a PACKAGECONIFG:<br>
<br>
$ grep opus meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-*bb<br>
meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.14.4.bb:# <br>
the opus encoder/decoder elements are now in the -base package,<br>
meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.14.4.bb:# <br>
but the opus parser remains in -bad<br>
meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.14.4.bb:PACKAG=
ECONFIG[opusparse] <br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;--enable-opus,--disable-opus,libopus&q=
uot;<br>
meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_1.14.4.bb:PACKA=
GECONFIG[opus] <br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;--enable-opus,--disable-opus,li=
bopus&quot;<br>
<br>
<br>
<br>
&gt; and shout2send <br>
<br>
That&#39;s disabled:<br>
$ grep shout <br>
meta/recipes-multimedia/gstreamer/<a href=3D"http://gstreamer1.0-plugins-go=
od_1.14.4.bb" rel=3D"noreferrer" target=3D"_blank">gstreamer1.0-plugins-goo=
d_1.14.4.bb</a><br>
=C2=A0 =C2=A0 =C2=A0--disable-shout2 \<br>
<br>
You&#39;ll have to work on understanding why it was disabled and<br>
send a patch to fix it.<br>
<br>
../Randy<br>
<br>
&gt; are not found in the image.<br>
&gt; Any idea what can it be?How can I solve this?<br>
&gt; <br>
&gt; Thanks.<br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
<br>
-- <br>
# Randy MacLeod<br>
# Wind River Linux<br>
</blockquote></div>

--000000000000b54a0f0581da7b9e--
