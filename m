Return-Path: <andrei@gherzan.ro>
Received: from mail-we0-f180.google.com (mail-we0-f180.google.com
	[74.125.82.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56C34E017E1
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2013 07:19:12 -0800 (PST)
Received: by mail-we0-f180.google.com with SMTP id u57so1627243wes.39
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2013 07:19:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=bgylXzlvgWaHReZ2GJOHhhpUMWUoZGaUiYNBtPggeYU=;
	b=EPvXpaqP+lXm2h61iw+1gGQEFZvg9ecrIo/S6UKXM+jxJowHAYdArDvKQ2h4sn+TLv
	bpU4FxwBWD6wcibcXNZkeTGhxEUrrD9VQG/RAWXf3P3q0Ffi3amnjT5g0xG6/3LTkO1W
	KzCW8jULsek3Z2jhL5M7KTgkpYH4vRflubdtVUzClMhppg5E+jGQeRxLtVp6JP7uum49
	tVB8/3DGQxnnnLFXS0mJ7L5kXNiXFcfLMEKGcbnBLhmu+uIqGIveiyWjCCcH8BOjfJ3J
	04TdGO3/ko8n2gKc7YDnWWiqZnNMwWSgrXKDjdqRmyoIFqpU9khx5x6ef62xKWGIeMra
	nJoA==
X-Gm-Message-State: ALoCoQkUP3xl/QZhQm8sQFCm7NUC45CdpXbNOoY+hFG3NQB8bxxN7HPJWH7QBQO7XbbBS3F38Dtq
X-Received: by 10.180.210.134 with SMTP id mu6mr3265371wic.37.1384442352258;
	Thu, 14 Nov 2013 07:19:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.91.202 with HTTP; Thu, 14 Nov 2013 07:18:52 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1384359566-32315-4-git-send-email-andrei@gherzan.ro>
References: <1384359566-32315-1-git-send-email-andrei@gherzan.ro>
	<1384359566-32315-4-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 14 Nov 2013 17:18:52 +0200
Message-ID: <CAK18fxFpTnOES-hkGACwPXWVOPk_NOmGuunBuUC+_x7q4rYOvQ@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH V2 4/6] rpi-default-providers: Use 3.10.X as default kernel
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
X-List-Received-Date: Thu, 14 Nov 2013 15:19:13 -0000
Content-Type: multipart/alternative; boundary=001a11c37bdc9e668604eb249abd

--001a11c37bdc9e668604eb249abd
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Nov 13, 2013 at 6:19 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> This is the default/base branch on official github repository:
> https://github.com/raspberrypi/linux/branches
>
> Change-Id: I99702ae7548b49a5b4b575b3f02f5a3a48ad347f
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  conf/machine/include/rpi-default-providers.inc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/conf/machine/include/rpi-default-providers.inc
> b/conf/machine/include/rpi-default-providers.inc
> index 1a647c9..ffdb4f9 100644
> --- a/conf/machine/include/rpi-default-providers.inc
> +++ b/conf/machine/include/rpi-default-providers.inc
> @@ -2,7 +2,7 @@
>
>  PREFERRED_PROVIDER_virtual/kernel = "linux-raspberrypi"
>  # The default kernel version is the same as used by Raspbian
> -PREFERRED_VERSION_linux-raspberrypi ?= "3.6.%"
> +PREFERRED_VERSION_linux-raspberrypi ?= "3.10.%"
>
>  PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
>  PREFERRED_PROVIDER_virtual/egl ?= "userland"
> --
> 1.8.1.4
>
>

Merged.

ag

--001a11c37bdc9e668604eb249abd
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, Nov 13, 2013 at 6:19 PM, Andrei Gherzan <span dir=3D"ltr">&=
lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro=
</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div class=3D""><div class=3D"h5">This is the default/base=
 branch on official github repository:<br>


<a href=3D"https://github.com/raspberrypi/linux/branches" target=3D"_blank"=
>https://github.com/raspberrypi/linux/branches</a><br>
<br>
Change-Id: I99702ae7548b49a5b4b575b3f02f5a3a48ad347f<br>
Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andr=
ei@gherzan.ro</a>&gt;<br>
---<br>
=A0conf/machine/include/rpi-default-providers.inc | 2 +-<br>
=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/=
include/rpi-default-providers.inc<br>
index 1a647c9..ffdb4f9 100644<br>
--- a/conf/machine/include/rpi-default-providers.inc<br>
+++ b/conf/machine/include/rpi-default-providers.inc<br>
@@ -2,7 +2,7 @@<br>
<br>
=A0PREFERRED_PROVIDER_virtual/kernel =3D &quot;linux-raspberrypi&quot;<br>
=A0# The default kernel version is the same as used by Raspbian<br>
-PREFERRED_VERSION_linux-raspberrypi ?=3D &quot;3.6.%&quot;<br>
+PREFERRED_VERSION_linux-raspberrypi ?=3D &quot;3.10.%&quot;<br>
<br>
=A0PREFERRED_PROVIDER_virtual/xserver =3D &quot;xserver-xorg&quot;<br>
=A0PREFERRED_PROVIDER_virtual/egl ?=3D &quot;userland&quot;<br>
--<br>
1.8.1.4<br>
<br>
</div></div></blockquote></div><br><br clear=3D"all"><div><div class=3D"gma=
il_extra">Merged.</div><div class=3D"gmail_extra"><br></div><div class=3D"g=
mail_extra">ag</div></div>
</div></div>

--001a11c37bdc9e668604eb249abd--
