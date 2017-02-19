Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D4C7E00A48; Sat, 18 Feb 2017 22:33:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.196 listed in list.dnswl.org]
Received: from mail-qk0-f196.google.com (mail-qk0-f196.google.com
	[209.85.220.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8506E00A3B
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 22:33:29 -0800 (PST)
Received: by mail-qk0-f196.google.com with SMTP id x71so1606223qkb.0
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 22:33:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qpjgqAD4LqYWPpkE7R/K0TO+ej5YeDH9XF+fI/Jy+LE=;
	b=t4J5CQgIZhHkRNHtKCuP8ve0yf0OdX2P3F9XqE9JG03rFXojxmnU2r2pLsrlAuM7U3
	Jk43eoG7J5vrAkdk6ZNfepxiRMn4BFdx2xZnPurqcAqyMaDUuUSB6HK5Mt7Fz0WahONE
	vgPDxs85yjQEfYYS7QnSdCkVcBBtuHIKASntXQ58fJC3HssfnXECzLSfeBo9JXgpSxGd
	dHFb+9Vi72UL8I49TSHHy75+NWgDvtTV0U/EjrZBxckxirJ9KvfVb51wqPAhtPUOqmRi
	RWaC0OGF+Re82YG5Oxlo8jPevNSUzR4pMp6MeCR9Q8yNDZ9cY4OspLyf05bhHaUBMjs6
	+4WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qpjgqAD4LqYWPpkE7R/K0TO+ej5YeDH9XF+fI/Jy+LE=;
	b=sqwUBVArGrr9rfGvhj13eePMw7fpm/6jgrJz9qzPriTI4VrM+AGriYDcXdyoqP7lQj
	7bkqAZkscnzLEsb+P60UcwBVO0XQ/jlQ3Hj4X1DmUONjsA14+9WoPJrhKuMPp2bOHMqk
	P3+294mlnNV6fu6D0t1n/TFHjbLm5JO8m/BSbb1DkwFcoqtmRjDf4buZ8XdaUf2bXiSc
	J297cliXz8kYYkgRHO/rRUjvwmD/Usxl0b1gC7ZX8hkxYoi4WCruNWcrVkjPTo0r+PrU
	B+Au0UaZ+QWxK9oQAY1KuNdVSfMsOh4aKpurNbxNNCoiICW1HF5fGeZqC98OKfYfJD+F
	cbpQ==
X-Gm-Message-State: AMke39nNIL2T6YkNeFISsHSQJiBPq/tLoQKYn/m16osWAH0i/tQ97ZhmC3DdV85X4TGMQab7tnqgVALL47bQVQ==
X-Received: by 10.55.89.70 with SMTP id n67mr14258222qkb.292.1487486008598;
	Sat, 18 Feb 2017 22:33:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.47.68 with HTTP; Sat, 18 Feb 2017 22:33:28 -0800 (PST)
In-Reply-To: <20170219024340.23664-6-twoerner@gmail.com>
References: <20170219024340.23664-1-twoerner@gmail.com>
	<20170219024340.23664-6-twoerner@gmail.com>
From: Eddie Cai <eddie.cai.linux@gmail.com>
Date: Sun, 19 Feb 2017 14:33:28 +0800
Message-ID: <CAJrj+DNRLr6e5b3nmjdKL8cNP3nbQPjw0-690C+Lb45xng-xWQ@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip][PATCH v2 5/5] machine: rk3288: GPT image support
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
X-List-Received-Date: Sun, 19 Feb 2017 06:33:39 -0000
Content-Type: multipart/alternative; boundary=001a114e631226a72c0548dc5312

--001a114e631226a72c0548dc5312
Content-Type: text/plain; charset=UTF-8

Hi Trevor


2017-02-19 10:43 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:

> Configure any rk3288 build to generate the new GPT image which is then
> either
> flashed to eMMC or dd'ed to an SDcard.
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  conf/machine/include/rk3288.inc | 3 +++
>  1 file changed, 3 insertions(+)
>
Reviewed-by Eddie Cai <eddie.cai.linux@gmail.com>

>
> diff --git a/conf/machine/include/rk3288.inc
> b/conf/machine/include/rk3288.inc
> index 4a4201f..964d8b0 100644
> --- a/conf/machine/include/rk3288.inc
> +++ b/conf/machine/include/rk3288.inc
> @@ -13,3 +13,6 @@ KBUILD_DEFCONFIG = "multi_v7_defconfig"
>
>  PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot-rockchip"
>  SPL_BINARY ?= "u-boot-spl-dtb.bin"
> +
> +IMAGE_FSTYPES = "ext4 rockchip-gpt-img"
> +IMAGE_CLASSES += "rockchip-gpt-img"
> --
> 2.12.0.rc1.48.g076c053
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114e631226a72c0548dc5312
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Trevor<div><br></div><div class=3D"gmail_extra"><br><di=
v class=3D"gmail_quote">2017-02-19 10:43 GMT+08:00 Trevor Woerner <span dir=
=3D"ltr">&lt;<a href=3D"mailto:twoerner@gmail.com" target=3D"_blank">twoern=
er@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Configure an=
y rk3288 build to generate the new GPT image which is then either<br>
flashed to eMMC or dd&#39;ed to an SDcard.<br>
<br>
Signed-off-by: Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com">two=
erner@gmail.com</a>&gt;<br>
---<br>
=C2=A0conf/machine/include/rk3288.<wbr>inc | 3 +++<br>
=C2=A01 file changed, 3 insertions(+)<br></blockquote><div>Reviewed-by Eddi=
e Cai &lt;<a href=3D"mailto:eddie.cai.linux@gmail.com">eddie.cai.linux@gmai=
l.com</a>&gt;=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
diff --git a/conf/machine/include/rk3288.<wbr>inc b/conf/machine/include/rk=
3288.<wbr>inc<br>
index 4a4201f..964d8b0 100644<br>
--- a/conf/machine/include/rk3288.<wbr>inc<br>
+++ b/conf/machine/include/rk3288.<wbr>inc<br>
@@ -13,3 +13,6 @@ KBUILD_DEFCONFIG =3D &quot;multi_v7_defconfig&quot;<br>
<br>
=C2=A0PREFERRED_PROVIDER_virtual/<wbr>bootloader ?=3D &quot;u-boot-rockchip=
&quot;<br>
=C2=A0SPL_BINARY ?=3D &quot;u-boot-spl-dtb.bin&quot;<br>
+<br>
+IMAGE_FSTYPES =3D &quot;ext4 rockchip-gpt-img&quot;<br>
+IMAGE_CLASSES +=3D &quot;rockchip-gpt-img&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.12.0.rc1.48.g076c053<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div></div>

--001a114e631226a72c0548dc5312--
