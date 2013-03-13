Return-Path: <andrei@gherzan.ro>
Received: from mail-vb0-f46.google.com (mail-vb0-f46.google.com
	[209.85.212.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C96AE0073E
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 10:45:38 -0700 (PDT)
Received: by mail-vb0-f46.google.com with SMTP id b13so650067vby.33
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 10:45:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=gZTYDQsp+qePzrY2hrv4bdeZoKyppUZSpJzrH9fn7kc=;
	b=dXno6XmXIF/vAnh4gRTxYUmien0LPnoxhUqXXC/AgdwKxnGre8E0pgwLNkxx6R5UfP
	DioS1b4Eai1aHVIaDCUCd1kgnrOW67skScdB0uV1XhuZHZqA28husDz8y/Up6G1jTsCP
	4LWEeiEjB/E6C/nOJGPEZV33Iubl94Nba+8/ZK/q9h02v2dDDyocaa4SiQQD66Xkdzk2
	p9pG0hzGDppxT78fUC6T8WkOkXIlPAsTXyW9/Wia5u1XCZglU0r+bAmJQPytjMq9pm/m
	EY6VDPnaxeJrcneUrE2F5vr7m9fXFOHW03tgFhyblEE8wJVyzynxtnm2flkYpUrLSoeU
	jlCQ==
X-Received: by 10.59.3.9 with SMTP id bs9mr8842817ved.38.1363196738094; Wed,
	13 Mar 2013 10:45:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.106.97 with HTTP; Wed, 13 Mar 2013 10:45:18 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1360447871-10982-1-git-send-email-andrei@gherzan.ro>
References: <1360447871-10982-1-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 13 Mar 2013 19:45:18 +0200
Message-ID: <CAK18fxHaqqZxcV3N3KX6y7+cT_py1=e_pYMFUypY0ax4a3miNw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQnpwuJ4XVH9O5c6EXnyrOLgMAgh1r2HUjZBctnmsJ4Of4hH8Wp+78cZLPPhKPXAY5qz7jMx
Subject: Re: [meta-raspberrypi][PATCH 1/7] rpi-default-providers: Remove virtual/libgl provider
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
X-List-Received-Date: Wed, 13 Mar 2013 17:45:38 -0000
Content-Type: multipart/alternative; boundary=e89a8f92193655522a04d7d1f94b

--e89a8f92193655522a04d7d1f94b
Content-Type: text/plain; charset=ISO-8859-1

Merged.


On Sun, Feb 10, 2013 at 12:11 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> There are no libgl binary shipped in raspberrypi firmware repo.
>
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  conf/machine/include/rpi-default-providers.inc |    1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/conf/machine/include/rpi-default-providers.inc
> b/conf/machine/include/rpi-default-providers.inc
> index ce963b3..6abab60 100644
> --- a/conf/machine/include/rpi-default-providers.inc
> +++ b/conf/machine/include/rpi-default-providers.inc
> @@ -4,5 +4,4 @@ PREFERRED_PROVIDER_virtual/kernel = "linux-raspberrypi"
>  PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
>  PREFERRED_PROVIDER_virtual/egl ?= "vc-graphics-hardfp"
>  PREFERRED_PROVIDER_virtual/libgles2 ?= "vc-graphics-hardfp"
> -PREFERRED_PROVIDER_virtual/libgl ?= "vc-graphics-hardfp"
>  PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-raspberrypi"
> --
> 1.7.9.5
>
>


-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--e89a8f92193655522a04d7d1f94b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Merged.</div><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote">On Sun, Feb 10, 2013 at 12:11 AM, Andrei Gherzan <span dir=
=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@=
gherzan.ro</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">There are no libgl binary shipped in raspber=
rypi firmware repo.<br>
<br>
Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andr=
ei@gherzan.ro</a>&gt;<br>
---<br>
=A0conf/machine/include/rpi-default-providers.inc | =A0 =A01 -<br>
=A01 file changed, 1 deletion(-)<br>
<br>
diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/=
include/rpi-default-providers.inc<br>
index ce963b3..6abab60 100644<br>
--- a/conf/machine/include/rpi-default-providers.inc<br>
+++ b/conf/machine/include/rpi-default-providers.inc<br>
@@ -4,5 +4,4 @@ PREFERRED_PROVIDER_virtual/kernel =3D &quot;linux-raspberry=
pi&quot;<br>
=A0PREFERRED_PROVIDER_virtual/xserver =3D &quot;xserver-xorg&quot;<br>
=A0PREFERRED_PROVIDER_virtual/egl ?=3D &quot;vc-graphics-hardfp&quot;<br>
=A0PREFERRED_PROVIDER_virtual/libgles2 ?=3D &quot;vc-graphics-hardfp&quot;<=
br>
-PREFERRED_PROVIDER_virtual/libgl ?=3D &quot;vc-graphics-hardfp&quot;<br>
=A0PREFERRED_PROVIDER_linux-libc-headers ?=3D &quot;linux-libc-headers-rasp=
berrypi&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.7.9.5<br>
<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"tex=
t-align:center"><div align=3D"left" style=3D"font-family:&#39;Times New Rom=
an&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div>

--e89a8f92193655522a04d7d1f94b--
