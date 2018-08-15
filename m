Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C04AAE0049F; Wed, 15 Aug 2018 09:47:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
	[209.85.208.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED3D2E0043F
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2018 09:47:17 -0700 (PDT)
Received: by mail-lj1-f178.google.com with SMTP id y17-v6so1442644ljy.8
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2018 09:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=6EWmT25t0PPNQV9s9AzUUcBDvSGpzfDRnkVE6Hj6sus=;
	b=Pn8+sxbqyQekN55J8C8tha1ybJojvhOqlqoDleNTygqStBylen0a+VtGqLfYfi2NqB
	10F+JO2g+ZmTSRSgM11jieggjVDAF8RO7D5LVFcIJx8xgQxisPGpUjtHa8UzrFwFik08
	iluWGKysBcdSRcCI7V/DHfrpGaICdo0RkQtO74Eg15RFiEvA6ISr6GxXOe6x3fTZTSMS
	QmF8d8mf+L6yb7SJxx2Cd572OkjV239QXymfa1egh1khBUbGHaMa8eT7Q2uIirFBknO4
	MvpQBsTBwbBZJCko61lcmgPyWlYGX98R5bbYuQpLNKlw21t2oYuZu5fiSBq84eMxFQYy
	YmVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=6EWmT25t0PPNQV9s9AzUUcBDvSGpzfDRnkVE6Hj6sus=;
	b=LMv6CBA+GzCAV6IP5xeIjSqvet2D+7aKJtpjKoPXfQQ+9E+vh79AmhJ1ZrJ1eeXvOp
	U5VlsXGl0ywVorf4PS6ReoVNUgZfxiEhX1t164lZVr0r2e2+gLcrBcDhtFzlNMe6IOOR
	fGC6jMRgzNFjOtLiduCQQT92cnJ69BWPBUEsKLwRS6VC85e4yBdWBpBb5miJzXm9lAlY
	xGHX/Z+v+89ZBkARZFCWi08QLNzkh2ANjo4KBJjU/7pgdsUoUp1c0BSETMQLIN6ijkT5
	5m8h9nlDn7oix/VUf2g/F5EG+7Il+9wIQ06TnonVWn8wyfWV9JlL0m2BapdU3DEWsnzF
	ObpA==
X-Gm-Message-State: AOUpUlGPdQ1/cfHzfE2HSBZT2BSZSNi3w1ITwZsuBVLkbDcjvAm2B7vX
	M33+sgU3giZP/L0Ce6D+1OXFkHTXv4ciBkMyHeI=
X-Google-Smtp-Source: AA+uWPwCHQjhRDh/a1d0IIBQXKD56aZCs3sEQatdA8ugQC1qFPq/8qjJnl0UT0gHnc1BiE9R94EiB2IGb81nOwIoatM=
X-Received: by 2002:a2e:9004:: with SMTP id h4-v6mr7570335ljg.44.1534351636686;
	Wed, 15 Aug 2018 09:47:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:2195:0:0:0:0:0 with HTTP; Wed, 15 Aug 2018 09:47:15
	-0700 (PDT)
In-Reply-To: <CALf_N3ZDG46vWe1UiwwjGuv7Q7MMTpJGUUn-RSmymLAc+KbfUw@mail.gmail.com>
References: <CALf_N3ZDG46vWe1UiwwjGuv7Q7MMTpJGUUn-RSmymLAc+KbfUw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Wed, 15 Aug 2018 12:47:15 -0400
Message-ID: <CAHUNapR91Ro7PmoF54guDVQLcgvrkQmgYDDdaxiRn_Hh4CAXpQ@mail.gmail.com>
To: Mark T <mtl1nuxd3v@gmail.com>
Cc: andrew.bickford@sky.com, yocto <yocto@yoctoproject.org>
Subject: Re: TPM2-TSS-1.1.0.bb does not use local files when BB_NO_NETWORK = "1"
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
X-List-Received-Date: Wed, 15 Aug 2018 16:47:20 -0000
Content-Type: multipart/alternative; boundary="00000000000043ec2c05737c14b6"

--00000000000043ec2c05737c14b6
Content-Type: text/plain; charset="UTF-8"

which layer?

meta-secure-core includes a fix for this, but in master
https://github.com/jiazhang0/meta-secure-core/pull/63

there's also:
https://wiki.yoctoproject.org/wiki/Technical_FAQ#How_do_I_do_an_offline_build_with_recipes_that_have_SRCREV_.3D_.22.24.7BAUTOREV.7D.22_set.3F

On Tue, Aug 14, 2018 at 9:37 AM, Mark T <mtl1nuxd3v@gmail.com> wrote:

> Hi,
>
> We have an issue doing an off-line build for TPM2-TSS-1.1.0.bb and
> related packages.
>
> Its fine when BB_NO_NETWORK is not set, build/downloads has the package
> files and the .done. We then hold the .done and associated package files
> locally and place them into downloads prior to building with BB_NO_NETWORK
> = "1" - but the fetch fails as it will not accept the local files.
>
> Any ideas on how to resolve this ?
>
> We're using Morty. All other packages we use work fine with the local
> files.
>
> Cheers,
> Mark
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--00000000000043ec2c05737c14b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">which layer?<div><br></div><div>meta-secure-core includes =
a fix for this, but in master</div><div><a href=3D"https://github.com/jiazh=
ang0/meta-secure-core/pull/63">https://github.com/jiazhang0/meta-secure-cor=
e/pull/63</a><br></div><div><br></div><div>there&#39;s also:</div><div><a h=
ref=3D"https://wiki.yoctoproject.org/wiki/Technical_FAQ#How_do_I_do_an_offl=
ine_build_with_recipes_that_have_SRCREV_.3D_.22.24.7BAUTOREV.7D.22_set.3F" =
rel=3D"nofollow" style=3D"box-sizing:border-box;background-color:rgb(255,25=
5,255);color:rgb(3,102,214);text-decoration:none;font-family:-apple-system,=
BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Ap=
ple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot=
;;font-size:14px">https://wiki.yoctoproject.org/wiki/Technical_FAQ#How_do_I=
_do_an_offline_build_with_recipes_that_have_SRCREV_.3D_.22.24.7BAUTOREV.7D.=
22_set.3F</a></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail=
_quote">On Tue, Aug 14, 2018 at 9:37 AM, Mark T <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:mtl1nuxd3v@gmail.com" target=3D"_blank">mtl1nuxd3v@gmail.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><di=
v>Hi,</div><div><br></div><div>We have an issue doing an off-line build for=
 <a href=3D"http://TPM2-TSS-1.1.0.bb" target=3D"_blank">TPM2-TSS-1.1.0.bb</=
a> and related packages.</div><div><br></div><div>Its fine when BB_NO_NETWO=
RK is not set, build/downloads has the package files and the .done. We then=
 hold the .done and associated package files locally and place them into do=
wnloads prior to building with BB_NO_NETWORK =3D &quot;1&quot; - but the fe=
tch fails as it will not accept the local files.</div><div><br></div><div>A=
ny ideas on how to resolve this ?</div><div><br></div><div>We&#39;re using =
Morty. All other packages we use work fine with the local files.</div><div>=
<br></div><div>Cheers,</div><div>Mark</div><div><br></div><div><br></div></=
div>
<br>-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--00000000000043ec2c05737c14b6--
