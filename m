Return-Path: <romain.perier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 411D1E00726; Mon, 13 Feb 2017 08:59:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (romain.perier[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8E45E00566
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 08:59:55 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id r18so20579696wmd.3
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 08:59:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=tOoZ0hDeo2ZtWQNoLTbXH9aAzmfvlDSJwj33DuiXXzw=;
	b=JcM2qWW4FI2nEZOe7S5EWjM19Vv/1fOMLBwkWK1XylHxMNlk/Pa+Z0acr2bR/jPUGK
	vLZWN1ZWcBeCH3zrOTtMh5GFxNF1z/NZUiW/gxhgR79jp6p3lTI9bwrbhiuR0UdgnfaW
	0DKHBDc3iMzYoxXi+jcZfFW6fjakeX1t/t7bU1slwm2ItiA9UlTr63QP7PFSvsHAL+BV
	+2c4BnvC7ZooJtJ0MzpxP6Zl2IclYOvfZiMaUvBcZyeGAcoRtZ7BTeFcHSQscOVJfV2h
	HVgyrnIUdi2jjcLj90KxWeTD1crDiGDhrVmZ91zgKVHmFfAt28tEJcVdSJpy0RtL8h78
	0WbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=tOoZ0hDeo2ZtWQNoLTbXH9aAzmfvlDSJwj33DuiXXzw=;
	b=bxh0q9OSX4FGklxJ/BoAiTMw9MC9JwN8cMubScQKRodvgs4tLjtUyYm7RNHtagSHlS
	ys74N4DnyIlOqr5/n2y17SkB5jtJ0ETikh71NRg7UcuDrRBAmKBEmR22Hiolq7bH6jbd
	MSruw56m7gT3ooQiUW6/lDwJcFRKiISNyTVgTOpSfBd26EqolL0outfEWFsxuFPSLpaZ
	dAo/uSBXiWB6CKIDxa1NVTmkqMrpi3uitlOFkTAlQHe+NCIau+OpI3qVnYVuKs8DkicT
	EBNUZdlBf3I6a6Z9PX5jlPi3EXrGv0JlNHecOzPJqCR4vk4x0IgfnTytvu/f5sMLV5WI
	aLng==
X-Gm-Message-State: AMke39nHVqt0RwYIAlfgrnAhzEUIpWZLfs9xpMC2+KJmCf5/TVDZVWWzebxmUjOXDmuaG23d+sPwhyrtpSTdSA==
X-Received: by 10.28.143.5 with SMTP id r5mr39805960wmd.141.1487005194180;
	Mon, 13 Feb 2017 08:59:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.196.2 with HTTP; Mon, 13 Feb 2017 08:59:53 -0800 (PST)
In-Reply-To: <1486564699-6001-2-git-send-email-eddie.cai.linux@gmail.com>
References: <1486564699-6001-1-git-send-email-eddie.cai.linux@gmail.com>
	<1486564699-6001-2-git-send-email-eddie.cai.linux@gmail.com>
From: Romain Perier <romain.perier@gmail.com>
Date: Mon, 13 Feb 2017 17:59:53 +0100
Message-ID: <CABgxDoK5Zue2L1YFoONSTMB0UHquw5x1h6SWzSQFF67dY0DV-Q@mail.gmail.com>
To: Eddie Cai <eddie.cai.linux@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip][morty][PATH 1/3] machine: Use cortexa17hf-neon-vfpv4 as default tune for rk3288.inc
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
X-List-Received-Date: Mon, 13 Feb 2017 16:59:58 -0000
Content-Type: multipart/alternative; boundary=001a114690e460de9105486c60e3

--001a114690e460de9105486c60e3
Content-Type: text/plain; charset=UTF-8

Until we find a solution with Trevor about this,

Reviewed-by: Romain Perier <romain.perier@collabora.com>

2017-02-08 15:38 GMT+01:00 Eddie Cai <eddie.cai.linux@gmail.com>:

> RK3288 support hard float and vfpv4. So we should use
> cortexa17hf-neon-vfpv4
> as default tune.
>
> Signed-off-by: Eddie Cai <eddie.cai.linux@gmail.com>
> ---
>  conf/machine/include/rk3288.inc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/conf/machine/include/rk3288.inc
> b/conf/machine/include/rk3288.inc
> index e6c19a2..6d4affd 100644
> --- a/conf/machine/include/rk3288.inc
> +++ b/conf/machine/include/rk3288.inc
> @@ -3,7 +3,7 @@
>
>  require conf/machine/include/tune-cortexa17.inc
>
> -DEFAULTTUNE="cortexa17-neon"
> +DEFAULTTUNE="cortexa17hf-neon-vfpv4"
>  PREFERRED_PROVIDER_virtual/kernel = "linux"
>  SERIAL_CONSOLES = "115200;ttyS2"
>  KERNEL_IMAGETYPE = "zImage"
> --
> 2.7.4
>
>

--001a114690e460de9105486c60e3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Until we find a solution with Trevor about this,</div=
><div><br></div>Reviewed-by: Romain Perier=C2=A0<span style=3D"font-size:12=
.8px">&lt;<a href=3D"mailto:romain.perier@collabora.com">romain.perier@coll=
abora.com</a></span><span style=3D"font-size:12.8px">&gt;</span></div><div =
class=3D"gmail_extra"><br><div class=3D"gmail_quote">2017-02-08 15:38 GMT+0=
1:00 Eddie Cai <span dir=3D"ltr">&lt;<a href=3D"mailto:eddie.cai.linux@gmai=
l.com" target=3D"_blank">eddie.cai.linux@gmail.com</a>&gt;</span>:<br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex">RK3288 support hard float and vfpv4. So we should=
 use cortexa17hf-neon-vfpv4<br>
as default tune.<br>
<br>
Signed-off-by: Eddie Cai &lt;<a href=3D"mailto:eddie.cai.linux@gmail.com">e=
ddie.cai.linux@gmail.com</a>&gt;<br>
---<br>
=C2=A0conf/machine/include/rk3288.<wbr>inc | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/conf/machine/include/rk3288.<wbr>inc b/conf/machine/include/rk=
3288.<wbr>inc<br>
index e6c19a2..6d4affd 100644<br>
--- a/conf/machine/include/rk3288.<wbr>inc<br>
+++ b/conf/machine/include/rk3288.<wbr>inc<br>
@@ -3,7 +3,7 @@<br>
<br>
=C2=A0require conf/machine/include/tune-<wbr>cortexa17.inc<br>
<br>
-DEFAULTTUNE=3D&quot;cortexa17-neon&quot;<br>
+DEFAULTTUNE=3D&quot;cortexa17hf-<wbr>neon-vfpv4&quot;<br>
=C2=A0PREFERRED_PROVIDER_virtual/<wbr>kernel =3D &quot;linux&quot;<br>
=C2=A0SERIAL_CONSOLES =3D &quot;115200;ttyS2&quot;<br>
=C2=A0KERNEL_IMAGETYPE =3D &quot;zImage&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.7.4<br>
<br>
</font></span></blockquote></div><br></div>

--001a114690e460de9105486c60e3--
