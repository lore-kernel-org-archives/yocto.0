Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46D70E00B30; Mon, 12 Sep 2016 18:53:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.47 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rudolf.streif[at]gmail.com)
	*  0.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.47 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97E5AE00AB6
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 18:53:03 -0700 (PDT)
Received: by mail-vk0-f47.google.com with SMTP id v189so160064390vkv.1
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 18:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=iLjrEEuQ4unCji7oA+c9+mksRS1Xv/bXueILIS0+o0w=;
	b=lKayocB5xRJ/WpesOpWmRFSYWjdcuz8vDpn+OJ1O8umb78qvWlatayth/FPWaCThBf
	XqZqeHNK2cWKdGZlx1sVzD6us7DqQSpBv4twLNNfOcx4l8bDeM3raRNgR6WRsxkttzMf
	1x0OxQRYIWqyZ/dBrv2DUiNy3ezW2pxXBX3dwI0IIWxD+gJ5zcmIZFOkVJEgTjcuYWwf
	4Uf0YH9hKHXod5DKUYsEvy461iF22X8pYG0I+XeePt3tohkNUnNuPK+ZDHv4HF2ZOoL2
	igaSa7KUoN/NeXe8Gj89Qul0hGtFnkLyFyabspZ4+TLTNpQs4qeYjLG19OldrwXX+frL
	SYrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=iLjrEEuQ4unCji7oA+c9+mksRS1Xv/bXueILIS0+o0w=;
	b=IbYF2gOZvGOL59JojG9QSKWMRT4XwVFQrBgAxKpQrVyGjCMCRiDtwh/PsNWihD9ayt
	pKhCEiMLira62ihAl2xcsHbZUjRQOKzWt16x+OAPbUd+/dCT4Org65kNWYn8i9a7GEbV
	12hSnW5xQ/BznoSuN3r5eawoSUVAytY9NoilO8Q11U6aozVZWZDT1Qh0dpEXegpyGWG7
	E3OZqw7wL47QHmDzwYxRY/bO1J+y37FyhJKDHeSly1Is70kkrWb6eTst/+A5/lzfaP87
	4mTB5XaaWJ8rh/jXqjrcDzHqCwQLrEduuAVkVTDQr6RxaP7b0+fh7maIw9484S6s1fk4
	TlcQ==
X-Gm-Message-State: AE9vXwO7Ad5uWi91n7CHxgSw/9/0OO874vDdnDLTMTQBxAOSHzjQZ52rfAi8wRnxbPKNRRRw+4oExZTUYorU5A==
X-Received: by 10.31.33.69 with SMTP id h66mr16281625vkh.59.1473731582694;
	Mon, 12 Sep 2016 18:53:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.135.136 with HTTP; Mon, 12 Sep 2016 18:53:02 -0700 (PDT)
Received: by 10.103.135.136 with HTTP; Mon, 12 Sep 2016 18:53:02 -0700 (PDT)
In-Reply-To: <CAJ58UNkB-kvS=bcSKSe6h4RHhg-rOqqJy+c9URsYOfNzN-f58A@mail.gmail.com>
References: <CAJ58UNkB-kvS=bcSKSe6h4RHhg-rOqqJy+c9URsYOfNzN-f58A@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@gmail.com>
Date: Mon, 12 Sep 2016 18:53:02 -0700
Message-ID: <CAEKp-abhpsWFtTwwy9rQrRAA_yZtuJ-Qr69OjdDiaM+QWfksZQ@mail.gmail.com>
To: Vijayakumar Badiger <vijayakumarmb@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Compilation error
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
X-List-Received-Date: Tue, 13 Sep 2016 01:53:06 -0000
Content-Type: multipart/alternative; boundary=001a11c0232e7b1a18053c59df59

--001a11c0232e7b1a18053c59df59
Content-Type: text/plain; charset=UTF-8

What recipe? Ideally you want to fix the code and add the function
declaration.

Kind regards,
Rudolf J Streif

On Sep 12, 2016 6:26 PM, "Vijayakumar Badiger" <vijayakumarmb@gmail.com>
wrote:

> Hello All,
>
> I am getting an compilation error like below. Can you pls let me know how
> to fix this one. Thanks in advance.
>
>
>
>  error: implicit declaration of function 'close'
> [-Werror=implicit-function-declaration]
> |             close(fd);
>
> Cheers,
> Vijay
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11c0232e7b1a18053c59df59
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">What recipe? Ideally you want to fix the code and add the fu=
nction declaration. </p>
<p dir=3D"ltr">Kind regards,<br>
Rudolf J Streif </p>
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sep 12, 2016 6=
:26 PM, &quot;Vijayakumar Badiger&quot; &lt;<a href=3D"mailto:vijayakumarmb=
@gmail.com">vijayakumarmb@gmail.com</a>&gt; wrote:<br type=3D"attribution">=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hello All,<div><br></div><d=
iv>I am getting an compilation error like below. Can you pls let me know ho=
w to fix this one. Thanks in advance.=C2=A0</div><div><br></div><div><br></=
div><div><br></div><div><div>=C2=A0error: implicit declaration of function =
&#39;close&#39; [-Werror=3Dimplicit-function-<wbr>declaration]</div><div>| =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 close(fd);</div></div><div><br></=
div><div>Cheers,</div><div>Vijay</div></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div></div>

--001a11c0232e7b1a18053c59df59--
