Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B128EE00C09; Mon,  1 Jul 2019 23:04:08 -0700 (PDT)
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
	*      [209.85.208.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
	[209.85.208.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FDD7E0090C
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2019 23:04:07 -0700 (PDT)
Received: by mail-lj1-f177.google.com with SMTP id 205so15609314ljj.8
	for <yocto@yoctoproject.org>; Mon, 01 Jul 2019 23:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=uy7u3hkUB55H7TclRILH5EsFGyww76Dnr4jU+kaX2HQ=;
	b=TOBMzbvg5EEOjwLpveJWQpErEa71eKb8S9FvcSKOdev2k/vl3sVZWsDrHY8PlLKmhb
	Xy9CrFkf3A7BS4x/Ez+xoA4+DYLQzgHwndJLO1RAJdjG6VUg5HFynjQuDkz8LnINvc2L
	lm7VFGMEWWfzgL4cDSmWGoW9B9T6TLDPF2ZYiCas6mWLS4Y5lmzhmwo0aIdHKVEOCThF
	35vUcQVPFkW1ZUzPLmFEfGAdxhxUShzTGWk+w9pIdnkvrZEs/mRBuX1XeygtfdxyD2CA
	vzf6whzp6Ex5PZoakxBVIkp1P+32MoVj7PwNJboQNn9O/1aUdpkTv6fSD6XOtezta9Vb
	uEtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=uy7u3hkUB55H7TclRILH5EsFGyww76Dnr4jU+kaX2HQ=;
	b=AqYTktOnBFXTwY0plNhMBfO9zvgvOlIRqofrff5tDaA1F63y6/erq05/X/B2+M75hE
	t6suYV9Qlv5qDgWx91RwkKcf9VmmF4yTPWeyp/wypNL+zBqYfC09xMpzf/AsZ2zQF8Vk
	WuePdEp4+Rt9UdRcBRvTz+/9r4Ftf42rPgpbPa3uBKIHzumigzROgC7pWEhxw2N29F82
	XUwdLxE1Qu+YYA6xtlVmUnAbMDFiBfSfzmx87ZKF5Dkj2H2k+QVkLJXlXefImAUY4mZS
	rL4ktM8+1TdfQNHjEzyAYESpDLrO0wRp//JF0Kkwgl8QT2x6DXxyzc0Zg+ub6L6qPOBf
	yukQ==
X-Gm-Message-State: APjAAAW7KBNrcAJ1qMosW7X9JBt2bmBFBNlg3exCP6hu8Kn1+SInnM+7
	37Vcsr2axy9MemGmmu9jSdp5L+zqRN/LLJnf0nk=
X-Google-Smtp-Source: APXvYqyR0rnw+/A7eFLARLob+mwZ7jIihIZf5jcRiR2uby2dJcw1gtj9E2xRK32vWCiVR3hCWN4VjCeQ09VsfbRV8cM=
X-Received: by 2002:a2e:5302:: with SMTP id h2mr15656479ljb.47.1562047446007; 
	Mon, 01 Jul 2019 23:04:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWS547t=FCMVfxhvWuEtLD_sfp8RrEGwqQQ5de2XScxb2A@mail.gmail.com>
In-Reply-To: <CAA=hcWS547t=FCMVfxhvWuEtLD_sfp8RrEGwqQQ5de2XScxb2A@mail.gmail.com>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Tue, 2 Jul 2019 08:03:54 +0200
Message-ID: <CAAx3WaCNkhNS38tsYaycsiNzeJYN_YjXoGak4Yd1QxSUWQmYPA@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Allow choose of U-Boot config for machine
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
X-List-Received-Date: Tue, 02 Jul 2019 06:04:08 -0000
Content-Type: multipart/alternative; boundary="00000000000024441f058cac837b"

--00000000000024441f058cac837b
Content-Type: text/plain; charset="UTF-8"

Hi,

you must use double quotes around nand, so:
UBOOT_CONFIG = "nand"

However I cannot guarantee this line will be the solution, I usually use a
customized uboot.

Gabriele

Il giorno mar 2 lug 2019 alle ore 04:07 JH <jupiter.hce@gmail.com> ha
scritto:

> Hi,
>
> The imx6ullevk.conf defined sdcard for booting on imx6 EVK:
>
> imx6ullevk.conf
>
> UBOOT_CONFIG ??= "sd"
> UBOOT_CONFIG[sd] = "mx6ull_14x14_evk_config,sdcard"
> UBOOT_CONFIG[mfgtool] = "mx6ull_14x14_evk_config"
>
> I need to change it for a customized board referenced from imx6 EVK
> but booting from NAND, there are some blogs said it can be done to add
> UBOOT_CONFIG=nand either in local.conf or command line. I tried it did
> not work:
>
> ERROR: Unable to start bitbake server (None)
> --- Starting bitbake server pid 2673 at 2019-07-02 11:54:24.011086 ---
> ERROR: local.conf:34: unparsed line: 'UBOOT_CONFIG=nand'
>
> What should be a proper process to overwrite imx6ullevk.conf
> UBOOT_CONFIG from sdcard to nand?
>
> Thank you.
>
> Kind regards,
>
> - JH
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000024441f058cac837b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, <br></div><div><br></div><div>you must use double=
 quotes around nand, so:</div><div style=3D"margin-left:40px">UBOOT_CONFIG =
=3D &quot;nand&quot;</div><div style=3D"margin-left:40px"><br></div><div>Ho=
wever I cannot guarantee this line will be the solution, I usually use a cu=
stomized uboot.</div><div><br></div><div>Gabriele<br> </div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno mar 2=
 lug 2019 alle ore 04:07 JH &lt;<a href=3D"mailto:jupiter.hce@gmail.com">ju=
piter.hce@gmail.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">Hi,<br>
<br>
The imx6ullevk.conf defined sdcard for booting on imx6 EVK:<br>
<br>
imx6ullevk.conf<br>
<br>
UBOOT_CONFIG ??=3D &quot;sd&quot;<br>
UBOOT_CONFIG[sd] =3D &quot;mx6ull_14x14_evk_config,sdcard&quot;<br>
UBOOT_CONFIG[mfgtool] =3D &quot;mx6ull_14x14_evk_config&quot;<br>
<br>
I need to change it for a customized board referenced from imx6 EVK<br>
but booting from NAND, there are some blogs said it can be done to add<br>
UBOOT_CONFIG=3Dnand either in local.conf or command line. I tried it did<br=
>
not work:<br>
<br>
ERROR: Unable to start bitbake server (None)<br>
--- Starting bitbake server pid 2673 at 2019-07-02 11:54:24.011086 ---<br>
ERROR: local.conf:34: unparsed line: &#39;UBOOT_CONFIG=3Dnand&#39;<br>
<br>
What should be a proper process to overwrite imx6ullevk.conf<br>
UBOOT_CONFIG from sdcard to nand?<br>
<br>
Thank you.<br>
<br>
Kind regards,<br>
<br>
- JH<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--00000000000024441f058cac837b--
