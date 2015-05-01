Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34924E00994; Fri,  1 May 2015 12:04:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B856BE0098A
	for <yocto@yoctoproject.org>; Fri,  1 May 2015 12:04:07 -0700 (PDT)
Received: by wicmx19 with SMTP id mx19so36940436wic.1
	for <yocto@yoctoproject.org>; Fri, 01 May 2015 12:04:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=hgqN6pyzqaSxwTl6OLUfsRwECWG155gNVKOkRFvuZxk=;
	b=ZPDssSknbm65N+XWqgln+Bpf8tvvsa8lgiaYhQgB31NM38aP3wBWPrEsKbFdpf+Gbr
	XFrM9a8ZdeNPJOqy0DPiemWWz0MSvBXdhwOcVwYAFGKFpFIs9PGRJXM7jb1HUDURKnAF
	o+CG4x9q04QdcFHLwX5WFwPUdzTWGqw+Q9YpFtDGLCkUxBA5oFQrIKGYzLtTjHjnfEs3
	oFvdmNav6g8dDuxB+pEDXNYzxaAm/h+5jpaO2h2IaOduxG1G3brjGAbD6atQPAnKmxyK
	zwWdCN3ofpLSJyaP0Lc7+lEeTGRQPaQCK2eq9G3/PgyKfQbYNWEVn6DDwSYxXECUMpmK
	hj9g==
X-Gm-Message-State: ALoCoQnilP11QpxDYmj6+QB/uY5Lqr7XAbCpB/EWymD2VNsFJ5KvBTyROGIezghbmDOoZJ49JndV
X-Received: by 10.180.102.164 with SMTP id fp4mr17052546wib.67.1430507046609; 
	Fri, 01 May 2015 12:04:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.224.136 with HTTP; Fri, 1 May 2015 12:03:45 -0700 (PDT)
X-Originating-IP: [2a02:8108:943f:e738:224:d7ff:feb4:a550]
In-Reply-To: <91f1a5cf58e7764e749df8325f93d4942559f5b1.1430204960.git.petter@technux.se>
References: <cover.1430204960.git.petter@technux.se>
	<91f1a5cf58e7764e749df8325f93d4942559f5b1.1430204960.git.petter@technux.se>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 1 May 2015 21:03:45 +0200
Message-ID: <CAK18fxGDeEdftQngwJLXVO1MnLpsKgc53XM1YQMfpB7vS=Tr3g@mail.gmail.com>
To: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCHv2 1/1] linux-raspberrypi: Update 3.18 branch to 3.18.11
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
X-List-Received-Date: Fri, 01 May 2015 19:04:15 -0000
Content-Type: multipart/alternative; boundary=bcaec550ac4a5cbaa4051509e06a

--bcaec550ac4a5cbaa4051509e06a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 28, 2015 at 9:14 AM, Petter Mab=C3=A4cker <petter@technux.se> w=
rote:

> Update linux-raspberrypi_3.18 to latest version.
>
> Remove sl030raspberrypii2ckernel.patch since it will not apply anymore
> and its content seems to be obsolite in later kernel versions.
>
> [Support #56]
>
> Signed-off-by: Petter Mab=C3=A4cker <petter@technux.se>
> ---
>  recipes-kernel/linux/linux-raspberrypi_3.18.bb | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> index 921e702..526d065 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> @@ -1,8 +1,7 @@
> -LINUX_VERSION ?=3D "3.18.5"
> +LINUX_VERSION ?=3D "3.18.11"
>
> -SRCREV =3D "a6cf3c99bc89e2c010c2f78fbf9e3ed478ccfd46"
> +SRCREV =3D "d64fa8121fca9883d6fb14ca06d2abf66496195e"
>  SRC_URI =3D "git://
> github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-3.18.y \
> -           file://sl030raspberrypii2ckernel.patch \
>            "
>
>  require linux-raspberrypi.inc
>
>
Merged to master. Thanks.

--=20
*Andrei Gherzan*
*e: **andrei@gherzan.ro <andrei@gherzan.ro>*
*w: *www.gherzan.ro

--bcaec550ac4a5cbaa4051509e06a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Tue, Apr 28, 2015 at 9:14 AM, Petter Mab=C3=A4cker <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:petter@technux.se" target=3D"_blank">petter@technux.=
se</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D""=
>Update linux-raspberrypi_3.18 to latest version.<br>
<br>
Remove sl030raspberrypii2ckernel.patch since it will not apply anymore<br>
and its content seems to be obsolite in later kernel versions.<br>
<br>
[Support #56]<br>
<br>
Signed-off-by: Petter Mab=C3=A4cker &lt;<a href=3D"mailto:petter@technux.se=
">petter@technux.se</a>&gt;<br>
---<br>
</span><span class=3D"">=C2=A0recipes-kernel/linux/<a href=3D"http://linux-=
raspberrypi_3.18.bb" target=3D"_blank">linux-raspberrypi_3.18.bb</a> | 5 ++=
---<br>
=C2=A01 file changed, 2 insertions(+), 3 deletions(-)<br>
<br>
</span>diff --git a/recipes-kernel/linux/<a href=3D"http://linux-raspberryp=
i_3.18.bb" target=3D"_blank">linux-raspberrypi_3.18.bb</a> b/recipes-kernel=
/linux/<a href=3D"http://linux-raspberrypi_3.18.bb" target=3D"_blank">linux=
-raspberrypi_3.18.bb</a><br>
index 921e702..526d065 100644<br>
<span class=3D"">--- a/recipes-kernel/linux/<a href=3D"http://linux-raspber=
rypi_3.18.bb" target=3D"_blank">linux-raspberrypi_3.18.bb</a><br>
+++ b/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.18.bb" tar=
get=3D"_blank">linux-raspberrypi_3.18.bb</a><br>
@@ -1,8 +1,7 @@<br>
-LINUX_VERSION ?=3D &quot;3.18.5&quot;<br>
+LINUX_VERSION ?=3D &quot;3.18.11&quot;<br>
<br>
-SRCREV =3D &quot;a6cf3c99bc89e2c010c2f78fbf9e3ed478ccfd46&quot;<br>
</span>+SRCREV =3D &quot;d64fa8121fca9883d6fb14ca06d2abf66496195e&quot;<br>
<span class=3D"im HOEnZb">=C2=A0SRC_URI =3D &quot;git://<a href=3D"http://g=
ithub.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-3.18.y" target=
=3D"_blank">github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-3.=
18.y</a> \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://sl030raspberrypii2ckernel.=
patch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
<br>
=C2=A0require linux-raspberrypi.inc<br>
</span><div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote=
><div>=C2=A0</div><div>Merged to master. Thanks.=C2=A0</div></div><div><br>=
</div>-- <br><div class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"text-align:ce=
nter"><div align=3D"left"><b style=3D"font-family:Arial;font-size:small;col=
or:rgb(51,51,51);text-align:center">Andrei Gherzan</b><br></div><div align=
=3D"left"><b style=3D"font-family:Arial;font-size:small;color:rgb(51,51,51)=
;text-align:center">e: </b><span style=3D"font-family:Arial;font-size:small=
;color:rgb(51,51,51);text-align:center"><i><a href=3D"mailto:andrei@gherzan=
.ro" target=3D"_blank">andrei@gherzan.ro</a></i></span></div><div align=3D"=
left"><span style=3D"font-family:Arial;font-size:small;color:rgb(51,51,51);=
text-align:center"><i><b>w:</b> </i><a href=3D"http://www.gherzan.ro" targe=
t=3D"_blank">www.gherzan.ro</a></span></div></div></div></div></div></div>
</div></div>

--bcaec550ac4a5cbaa4051509e06a--
