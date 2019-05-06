Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90103E00D11; Sun,  5 May 2019 23:18:00 -0700 (PDT)
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
	*      [209.85.208.196 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
	[209.85.208.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35588E00C14
	for <yocto@yoctoproject.org>; Sun,  5 May 2019 23:17:59 -0700 (PDT)
Received: by mail-lj1-f196.google.com with SMTP id z5so4895206lji.10
	for <yocto@yoctoproject.org>; Sun, 05 May 2019 23:17:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=xdjHkq57ykm5Ktj5ofYWU75U0tpJb+LiroGNFfI90eU=;
	b=gEz9xTnbu0Wd4wfsNIf0T7K62JihHlzp5UyvQlB4JHLPfdd3g840IhkDJLn6v0QtNM
	qtW2Flqp1Hj5/A1i+ME4VbxIhkz3rEY1TfwLSCb2aK9NIWAGm4LnJl0rw/b43Cb7fdGb
	vMy2vCkBz3m2/7yAbLe+/6ZqU81CatlToFsVOWYrgrMNWx1SM9+ah5Vv2gmo5ryIatIm
	LjZw0Z6IiFGnbO4XIa5nhzrUbHyXObUl8n2+MIWcP8Ak/IUETmGn5Pb9jX/FKdf5WeAX
	gi5w28CGWudNjG/mnxWKZ/DKkxMkaLrJLFtevVXp6mc5E9Ig4T2rabany7eTb+NnTsOp
	q8pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=xdjHkq57ykm5Ktj5ofYWU75U0tpJb+LiroGNFfI90eU=;
	b=sWoKmGGJSOg2nLgibuwzu2ext1JFdKSAlc1u/P66J6JFOiHXd+GQSiH4VH2GWlNxRs
	6xzaRs0CfJe6RSWmDdtEcKR2AG19A3zkB74IA1DVUTElDEDVzTExk9XIMav9O7KtvA3+
	Z9HTbGUKP/MxbgpCoT9QVuoZapiLnTvEiRH3S5nmqS5DRB3d+hXiHHUmUEKHsnDzC2Qx
	EmQYTH+a1Dn9cgSLnn4DqQVFRhLQlGblBY/U6ufPxscFDqeZZIT3STx/mQVGNT88qPsb
	MxhP7GC5UnCqcr3b8Xzi+MUtvOCq2i79iVktvf27w1Yd5vcARcxTldbgLvDQ+fu2uF9W
	WjvQ==
X-Gm-Message-State: APjAAAX2KWuaDwgiQvjOnYp2eFy/SAmglLL8TeBY/L0WhBZsaOCw2GZg
	K9yJLwYus4fB+02EN3fEXdbTG0RWHuWGzk6iubw=
X-Google-Smtp-Source: APXvYqxQc27obW1F2B3RmFlZklE2dvjyxVs81c0C+vhjPIZYX+wnQLsRmVL345Rgmw/cDDzZRRvIMp63hgieTjWhMqI=
X-Received: by 2002:a2e:2e17:: with SMTP id u23mr12348839lju.187.1557123478288;
	Sun, 05 May 2019 23:17:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWR21J-UDPXOSrMjMDXfx8f_NbCB4YA_7-UBVzZ-9Ea45w@mail.gmail.com>
In-Reply-To: <CAA=hcWR21J-UDPXOSrMjMDXfx8f_NbCB4YA_7-UBVzZ-9Ea45w@mail.gmail.com>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Mon, 6 May 2019 08:17:47 +0200
Message-ID: <CAAx3WaBz81Zza1UeK4QhpkDFkXq6zYTRbi_-xKNWaY0mHoHPRw@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to define and build device tree in Yocto?
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
X-List-Received-Date: Mon, 06 May 2019 06:18:00 -0000
Content-Type: multipart/alternative; boundary="000000000000cb7e900588320fbf"

--000000000000cb7e900588320fbf
Content-Type: text/plain; charset="UTF-8"

Hi,

The easiest way is to add them via patches. You can write a recipe that
patch the Linux tree and put it in your meta layer (usually in
meta-xxx/recipes-kernel/linux). Then you need to tell Yocto to export the
dtb via KERNEL_DEVICETREE variable (
https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-KERNEL_DEVICETREE).
I usually put this variable in my machine configuration.

Gabriele

Il giorno dom 5 mag 2019 alle ore 14:04 JH <jupiter.hce@gmail.com> ha
scritto:

> Hi,
>
> I think the device tree blob is build from device tree source, but I
> could not find any dts files in recipe source directory, there are
> many dts files in build directory and there are dtb in build
> directory.
>
> If I have a device tree source, where I should put it and how to
> define the recipe to built it?
>
> Thank you.
>
> Kind regards,
>
> - jupiter
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000cb7e900588320fbf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi,</div><div><br><=
/div><div>The easiest way is to add them via patches. You can write a recip=
e that patch the Linux tree and put it in your meta layer (usually in meta-=
xxx/recipes-kernel/linux). Then you need to tell Yocto to export the dtb vi=
a KERNEL_DEVICETREE variable (<a href=3D"https://www.yoctoproject.org/docs/=
latest/mega-manual/mega-manual.html#var-KERNEL_DEVICETREE">https://www.yoct=
oproject.org/docs/latest/mega-manual/mega-manual.html#var-KERNEL_DEVICETREE=
</a>). I usually put this variable in my machine configuration.<br></div><d=
iv><br></div><div>Gabriele<br></div></div></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno dom 5 mag 2019 al=
le ore 14:04 JH &lt;<a href=3D"mailto:jupiter.hce@gmail.com">jupiter.hce@gm=
ail.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">Hi,<br>
<br>
I think the device tree blob is build from device tree source, but I<br>
could not find any dts files in recipe source directory, there are<br>
many dts files in build directory and there are dtb in build<br>
directory.<br>
<br>
If I have a device tree source, where I should put it and how to<br>
define the recipe to built it?<br>
<br>
Thank you.<br>
<br>
Kind regards,<br>
<br>
- jupiter<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000cb7e900588320fbf--
