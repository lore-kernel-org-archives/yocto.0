Return-Path: <easmith5555@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0352FE009A0; Tue, 12 Mar 2019 15:53:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (easmith5555[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.174 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f174.google.com (mail-it1-f174.google.com
	[209.85.166.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81A74E009A0
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2019 15:53:39 -0700 (PDT)
Received: by mail-it1-f174.google.com with SMTP id l139so7219480ita.5
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2019 15:53:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=AEsxyEatVx9HoFdON4+sLQyqGzw0PQVWEtgO2t/E6SE=;
	b=mGzRfBYUO5hs+g48DzyM4S0jvx6KVNQFXwYw/xC68dllagUInnoRJKTF+GkohBU2ol
	RWj57828NnZvWMKfPOqH9XX64OdMktYAfWQ01V4dkIMqidWw3Pyu6eIQvG+SU+QRCRyz
	JLghP+6j68eh566EB44EjvxBwCLPDjyGpXkPJyZ92m4lPtNtgmpyISG2Ad8j7/zso3ee
	xNDem6fOteUvl/ol8oCrECpT44vLPxXZn2RfgbgJ++ct8cdh6eKuAz2JiIxKLLugdFEB
	kUr1JJy7DKLR7BYB0a91gTUye3dY8bD+ee2+WMpaGPa2NNZwr/YvgnLY8iHwJOQLn/Ew
	kpTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=AEsxyEatVx9HoFdON4+sLQyqGzw0PQVWEtgO2t/E6SE=;
	b=qUtyZBE3Tbd4HCMA90dO0MlFMLh5+f3T0Ol5nZqwOi285sUEtk/bkYaTS0fsx5WGg/
	RJ3bBr5lttNmdMhmcB7iefkDxoxkeDJoDor/LQZrw1fytCGmmQc3yzeD6XVzdcJaPsg0
	F4t5Wiok9/raqEJxYDQdpbAXPZZzzvFw3EcsOMIGmQBxLv9AxGZwp5Xb8nA7/NyT4x0I
	zwxEM83PP2iPFf7fr84o0AxDh83Jtyl1p2CDFAZOw6sA8G53c9ADJ3zhR92XiGO1vkRj
	/MqF25OZB5XfiRnY/5GBEvtzU8CZmUp0WXaH6j1WJS7h/boxgnyxdM0PeKuYoVvT3CDg
	rZ8w==
X-Gm-Message-State: APjAAAVnoBAHedjMevwynCQmBIrREx3mkL5VNAzJph14NUmZrqu+VJP/
	+Td2oJE7tzmI/FJ+i/nruOBkSohQlRQ97leZgbE=
X-Google-Smtp-Source: APXvYqx2PLLuj+WKDU9Yt75Uu6rl+ScnEsWwLHc6SQ1bAGmh5wyi3NqPgPt5H3/iVFQOSl7F2/fHOlNuVA7iVx+qDJ8=
X-Received: by 2002:a24:e502:: with SMTP id g2mr124788iti.78.1552431218820;
	Tue, 12 Mar 2019 15:53:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAAV2bM3odyNWNPMdOyM3xiKpiDKgaTVCW4MA8ayOsen3RkTAVA@mail.gmail.com>
	<CAMjhiJgiag68y4UmRGN16NnPoRZt9iC=L=-Q8kDHMQjzsjEVMg@mail.gmail.com>
	<CAAV2bM2QGuTSc9F_DRfw1P_T0NYtb_1c2GyTKWgDB6KYM1OqaQ@mail.gmail.com>
	<CAMjhiJgL4be=AvT03ecR62tRQpar8NJV4=yij-cg+-YoGDkY8w@mail.gmail.com>
In-Reply-To: <CAMjhiJgL4be=AvT03ecR62tRQpar8NJV4=yij-cg+-YoGDkY8w@mail.gmail.com>
From: Emily S <easmith5555@gmail.com>
Date: Tue, 12 Mar 2019 17:53:29 -0500
Message-ID: <CAAV2bM2Mdht08DxVZ5q-1QTaCZu7DNSNG9qegQ1kkM_zx2e68A@mail.gmail.com>
To: Leon Woestenberg <leon@sidebranch.com>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: /usr/bin/env requires coreutils?
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
X-List-Received-Date: Tue, 12 Mar 2019 22:53:40 -0000
Content-Type: multipart/alternative; boundary="00000000000056306c0583ed8f96"

--00000000000056306c0583ed8f96
Content-Type: text/plain; charset="UTF-8"

Hi Leon -

When you ask if there is anything in /usr/bin at all I'm not sure what you
mean, could you elaborate?

Ahh so you're saying something in the init-clock recipe itself is incorrect
in the way it uses ${bindir}? I did not actually write this recipe so I may
be not understanding it fully, but I don't actually see ${bindir} in it
anywhere.

Yes that link is the correct recipe!

Thanks!
Emily


On Tue, Mar 12, 2019 at 5:27 PM Leon Woestenberg <leon@sidebranch.com>
wrote:

> Hi Emily,
>
> I guess the problem is more in your init-clock recipe, and I am
> assuming this one:
>
>
> https://github.com/kratsg/meta-l1calo/blob/master/recipes-core/init/init-clock_1.0.0.bb
>
> This probably was always incorrect, but the problem now shows with
> newer Yocto releases.
>
> Regards,
>
> Leon
>

--00000000000056306c0583ed8f96
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Leon -<div><br></div><div>When you ask if there is anyt=
hing in /usr/bin at all I&#39;m not sure what you mean, could you elaborate=
?</div><div><br></div><div>Ahh so you&#39;re saying something in the init-c=
lock recipe itself is incorrect in the way it uses ${bindir}? I did not act=
ually write this recipe so I may be not understanding it fully, but I don&#=
39;t actually see ${bindir} in it anywhere.=C2=A0=C2=A0</div><div><br></div=
><div>Yes that link is the correct recipe!</div><div><br></div><div>Thanks!=
</div><div>Emily</div><div><br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 12, 2019 at 5:27 PM Leon W=
oestenberg &lt;<a href=3D"mailto:leon@sidebranch.com">leon@sidebranch.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi=
 Emily,<br>
<br>
I guess the problem is more in your init-clock recipe, and I am<br>
assuming this one:<br>
<br>
<a href=3D"https://github.com/kratsg/meta-l1calo/blob/master/recipes-core/i=
nit/init-clock_1.0.0.bb" rel=3D"noreferrer" target=3D"_blank">https://githu=
b.com/kratsg/meta-l1calo/blob/master/recipes-core/init/init-clock_1.0.0.bb<=
/a><br>
<br>
This probably was always incorrect, but the problem now shows with<br>
newer Yocto releases.<br>
<br>
Regards,<br>
<br>
Leon<br>
</blockquote></div>

--00000000000056306c0583ed8f96--
