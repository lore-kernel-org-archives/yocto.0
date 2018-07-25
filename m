Return-Path: <simon.chamlian@mpbc.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69F83E00CE7; Wed, 25 Jul 2018 12:45:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3216E00CC8
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2018 12:45:35 -0700 (PDT)
Received: by mail-qk0-f179.google.com with SMTP id z74-v6so5699995qkb.10
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2018 12:45:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mpbc-ca.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wJUNZsy3LyRVAKcTKO3H95nMSgTHF5eqcoLYxmUBCiY=;
	b=fSwlCOnmvx+0LDfot45n934uS2qQSIYnnDnUKykLazG7fp2oop8gjEZr3JTacneLhg
	1fFYdTWaab6vRzFj2Z7l7MLarfYZ4DG1XRwVV7xV8YMgoHk9+RCxjrd0uNPnrI6UxSjc
	+jh9+tTRFoykKrbtRaSvARAVkSakTgb0QYgBkhuCvIzNF1jzA+jHHp3J8JhjesnepnX0
	6Lu6L59s+eUV61/q6nUvjTWd7KNTLPLLMx2mBU9qtqhaZxm8VF1ypzXhiD1n5/hH9+u6
	zH2kFS/HI8tS68khnfDoanXe6FEQ21z9QYkYWdJl0cq1opfshpWrTDmDQvqxtLAfiNjr
	xRNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wJUNZsy3LyRVAKcTKO3H95nMSgTHF5eqcoLYxmUBCiY=;
	b=mv7DYARS5HUZSGDPpnHaFns/fzdsbESNq2x0byBH5mE5kgKjtvaCnxWbD41XbIYZUs
	3w8hi54t6kXBoBSN9PXMcC5RoGRmXZhumncT1OHx8AJu/7Eo/7o9uPwlr7bSZY3XKXBN
	kid9if8eADvsmjNDc4PCgsRmGfbxvI9M3G9AF6xdm+IKVEZXPtvPEwfvM1sZy83t33m3
	eSmaFlvJ/YQ+14Hd+8rqlD+A2zYXhP8q1gTrr/qHKokUoxPqfURnqiUSiXG8A5tlRb6c
	BiQvri0//Wk+Eqd6uBCCk6Uy1LgxOu19fN1rKwhRkn6I9DX7g8wBZoltrQmLjp/IGRwq
	LBOQ==
X-Gm-Message-State: AOUpUlH61OdAjqzA5bf6Np/gHPHBhNYLa8YF55DBFg008a8XWLNKlHEj
	1OTpgjwY7c0Ce92KD4o/rTfhb1d43e1kP3+gC35WrQ==
X-Google-Smtp-Source: AAOMgpeMDQ5SCb9FOwZJgXKur+khod2O252B6hB9dWUzrQOlPnV9YDGPSqJYmM68z5K0oiz8T2BV8lscJVL8KpMvclE=
X-Received: by 2002:a37:c595:: with SMTP id
	k21-v6mr20215524qkl.330.1532547935212; 
	Wed, 25 Jul 2018 12:45:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:856:0:0:0:0:0 with HTTP;
	Wed, 25 Jul 2018 12:45:34 -0700 (PDT)
In-Reply-To: <CAJ86T=VhRDCrir+7UTGurE32kgwAuRM2n3jWNFiofEA_uEehNg@mail.gmail.com>
References: <CANmTPBb=YUAtLAqXz89GTbcpxt=o1uSRzaRhXVei8Dh6BtYEFg@mail.gmail.com>
	<CAJ86T=VhRDCrir+7UTGurE32kgwAuRM2n3jWNFiofEA_uEehNg@mail.gmail.com>
From: Simon Chamlian <simon.chamlian@mpbc.ca>
Date: Wed, 25 Jul 2018 15:45:34 -0400
Message-ID: <CANmTPBZrGCNFXvCwNmpbiCHfno3GXX5MAqj4hBgau6_xE7wf3g@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to enable http2 for Apache?
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
X-List-Received-Date: Wed, 25 Jul 2018 19:45:36 -0000
Content-Type: multipart/alternative; boundary="00000000000047a9460571d81fe2"

--00000000000047a9460571d81fe2
Content-Type: text/plain; charset="UTF-8"

Trial and errors.

Is there another way of enabling http2  ?

In general, if we wish to add flags to a compilation of a package, what is
the proper way of doing it?
Changing the local.conf or the recipe of a given package?





On Wed, Jul 25, 2018 at 3:26 PM, Andre McCurdy <armccurdy@gmail.com> wrote:

> On Wed, Jul 25, 2018 at 11:17 AM, Simon Chamlian <simon.chamlian@mpbc.ca>
> wrote:
> > Hi,
> >
> > What is the best way to enable http2 for Apache?
> >
> > Do I add
> >
> > COMMON_EXTRA_OECONF_append_pn-apache2 = "--enable-http2"
> >
> > in local.conf ?
>
> No.
>
> Wondering what process you went through to arrive at that?
>

--00000000000047a9460571d81fe2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Trial and errors. <br></div><div><br></div><div>Is th=
ere another way of enabling http2=C2=A0 ?</div><div><br></div><div>In gener=
al, if we wish to add flags to a compilation of a package, what is the prop=
er way of doing it?</div><div>Changing the local.conf or the recipe of a gi=
ven package?</div><div><br></div><div><br></div><div><br></div><div><br></d=
iv></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, =
Jul 25, 2018 at 3:26 PM, Andre McCurdy <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:armccurdy@gmail.com" target=3D"_blank">armccurdy@gmail.com</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Wed, Jul 25=
, 2018 at 11:17 AM, Simon Chamlian &lt;<a href=3D"mailto:simon.chamlian@mpb=
c.ca">simon.chamlian@mpbc.ca</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; What is the best way to enable http2 for Apache?<br>
&gt;<br>
&gt; Do I add<br>
&gt;<br>
&gt; COMMON_EXTRA_OECONF_append_pn-<wbr>apache2 =3D &quot;--enable-http2&qu=
ot;<br>
&gt;<br>
&gt; in local.conf ?<br>
<br>
</span>No.<br>
<br>
Wondering what process you went through to arrive at that?<br>
</blockquote></div><br></div>

--00000000000047a9460571d81fe2--
