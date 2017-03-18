Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7344AE00970; Sat, 18 Mar 2017 06:48:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f194.google.com (mail-qk0-f194.google.com
	[209.85.220.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D450AE003C1
	for <yocto@yoctoproject.org>; Sat, 18 Mar 2017 06:48:17 -0700 (PDT)
Received: by mail-qk0-f194.google.com with SMTP id j127so12953787qke.0
	for <yocto@yoctoproject.org>; Sat, 18 Mar 2017 06:48:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4JdQi9+4ikxuD1yqjX2h6CFIOYHYQ7tmL/zuUEDEWKw=;
	b=GyyXgvIsA02JVpp0wHGEwNAYKlR7DELdM6EaOGolrP+vZCB3JvXKY2R7R7SGpDsuh3
	N7udQdetZ2+iWN/8x6IDhuwpaGufFEf8asCaFlD8H+h9aPHwaQxZ05/zatZ+Lh/fBudz
	hJMZ0bkwpEZTBjiT7aFuRNmzwM4y+V92fSeyAs6LSNNLgbGszS7NjeNHS0SekrLhmIZu
	5AuMyGNImi8XAlWxzHpfHoR5SSGzNVysqMMDR/Mlzz3poQ9o9FOdK1gmH0zRK0mV4a3V
	G7OL1IUoVlkbrCiCD1nTzRNUwFVuY0UIMD8c7Yjctc2vxIvce8bik1v1kLTG91bUS4r/
	umkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4JdQi9+4ikxuD1yqjX2h6CFIOYHYQ7tmL/zuUEDEWKw=;
	b=aezkC/fTfb/l9KbTHR22e9gf6X9HjN5hqcOhZE6FE0lrvgRlXgtNoN3kkZXELf71rB
	R0lFX7flM1SeCE7vs10l+0wW/pAJds3CaJxSYKlKtizSvgebMNz6L8nog8Gw9vMM3Tz1
	IGYgEt1TFx3ZLNBanm71QSRhEPO8eNSP0YHIPQ9IKE08r9/7Ceq5LD/l31gCetuZY8Fn
	UnKPwSPxPNiB1RMcz2//uU3DCi5410wSjv3iV+wE00ejNy4uKlgMQj9aNF/dEXz9MQUN
	wXIq+lekEDw7dJ9tm3kZKtSJerpdIwdxpHn4TlRkbMpx4toJZkqxpiozQCnAaJJ+3gNB
	0JQg==
X-Gm-Message-State: AFeK/H23t8TFh9e+f/SPmD+kbef3EaYKsiY51dSiUEcZ/bgaeppGtu4t27ig/nRJHjy9WklKWbQgK/jRbA5Y8w==
X-Received: by 10.233.220.130 with SMTP id q124mr5579163qkf.27.1489844896515; 
	Sat, 18 Mar 2017 06:48:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.51.101 with HTTP; Sat, 18 Mar 2017 06:48:16 -0700 (PDT)
In-Reply-To: <20170318065804.27967-1-twoerner@gmail.com>
References: <20170318065804.27967-1-twoerner@gmail.com>
From: Eddie Cai <eddie.cai.linux@gmail.com>
Date: Sat, 18 Mar 2017 21:48:16 +0800
Message-ID: <CAJrj+DNkdC_LCDp4kAZwoQUMOeiUL3T+1i2pukb87eMyvvx72A@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] machine: rk3288: don't hard-code kernel choice
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
X-List-Received-Date: Sat, 18 Mar 2017 13:48:18 -0000
Content-Type: multipart/alternative; boundary=94eb2c044bead3d9ac054b018b50

--94eb2c044bead3d9ac054b018b50
Content-Type: text/plain; charset=UTF-8

2017-03-18 14:58 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:

> Allow the user to ultimately choose the kernel. Make 'linux' the
> _preferred_,
> not the _required_.
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
>
Reviewed-by: Eddie Cai <eddie.cai.linux@gmail.com>

> ---
>  conf/machine/include/rk3288.inc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/conf/machine/include/rk3288.inc
> b/conf/machine/include/rk3288.inc
> index 964d8b0..88acbbf 100644
> --- a/conf/machine/include/rk3288.inc
> +++ b/conf/machine/include/rk3288.inc
> @@ -6,7 +6,7 @@ SOC_FAMILY = "rk3288"
>  require conf/machine/include/tune-cortexa17.inc
>  require conf/machine/include/soc-family.inc
>
> -PREFERRED_PROVIDER_virtual/kernel = "linux"
> +PREFERRED_PROVIDER_virtual/kernel ?= "linux"
>  SERIAL_CONSOLES = "115200;ttyS2"
>  KERNEL_IMAGETYPE = "zImage"
>  KBUILD_DEFCONFIG = "multi_v7_defconfig"
> --
> 2.12.0.rc1.48.g076c053
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c044bead3d9ac054b018b50
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">2017-03-18 14:58 GMT+08:00 Trevor Woerner <span dir=3D"ltr">&lt;<a href=
=3D"mailto:twoerner@gmail.com" target=3D"_blank">twoerner@gmail.com</a>&gt;=
</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">Allow the user to ultimately cho=
ose the kernel. Make &#39;linux&#39; the _preferred_,<br>
not the _required_.<br>
<br>
Signed-off-by: Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com">two=
erner@gmail.com</a>&gt;<br></blockquote><div>Reviewed-by: Eddie Cai &lt;<a =
href=3D"mailto:eddie.cai.linux@gmail.com">eddie.cai.linux@gmail.com</a>&gt;=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">
---<br>
=C2=A0conf/machine/include/rk3288.<wbr>inc | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/conf/machine/include/rk3288.<wbr>inc b/conf/machine/include/rk=
3288.<wbr>inc<br>
index 964d8b0..88acbbf 100644<br>
--- a/conf/machine/include/rk3288.<wbr>inc<br>
+++ b/conf/machine/include/rk3288.<wbr>inc<br>
@@ -6,7 +6,7 @@ SOC_FAMILY =3D &quot;rk3288&quot;<br>
=C2=A0require conf/machine/include/tune-<wbr>cortexa17.inc<br>
=C2=A0require conf/machine/include/soc-<wbr>family.inc<br>
<br>
-PREFERRED_PROVIDER_virtual/<wbr>kernel =3D &quot;linux&quot;<br>
+PREFERRED_PROVIDER_virtual/<wbr>kernel ?=3D &quot;linux&quot;<br>
=C2=A0SERIAL_CONSOLES =3D &quot;115200;ttyS2&quot;<br>
=C2=A0KERNEL_IMAGETYPE =3D &quot;zImage&quot;<br>
=C2=A0KBUILD_DEFCONFIG =3D &quot;multi_v7_defconfig&quot;<br>
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

--94eb2c044bead3d9ac054b018b50--
