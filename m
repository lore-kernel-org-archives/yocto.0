Return-Path: <andrei@gherzan.ro>
Received: from mail-ve0-f172.google.com (mail-ve0-f172.google.com
	[209.85.128.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44190E00348
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 13:10:03 -0700 (PDT)
Received: by mail-ve0-f172.google.com with SMTP id jz10so5516735veb.3
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 13:10:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=lXk4HE7euv1urBNTtIoXN/rs4qXtExrjcoKdOHUkvZA=;
	b=WtReldtMLtFjDwycTOshBSkqZmg6ayE4u2o2v9so7M43tstFMuDRBXT/n7Mhvv3OdU
	pgcx6+BvH1JeYqsFvtznylTQJtbCX+MrYIpwLVioFRNzVn/huAWl+2ouU7Czn+MCAA9H
	SsPjDOXZD4SkLi+DbdeiSkK197khB+a0yDhASq6eT2FsB3Z5XG3idCRI5UhVfwJAWWjS
	bv53zBbP6begiEwQn9ZWD1DdkoMJV6iYjnQ5gsvOMscIOUvZKn3aIb3WcJD4rGr3jvWq
	ZKgAoZu3RJhXHGjwd9g0yqX5vUwOcUbGlF/lw2NJG1Gru8cnlMu1doBRycZrRbaFWmPc
	/MaA==
X-Received: by 10.221.42.138 with SMTP id ty10mr3569464vcb.42.1371759003026;
	Thu, 20 Jun 2013 13:10:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.24.129 with HTTP; Thu, 20 Jun 2013 13:09:42 -0700 (PDT)
X-Originating-IP: [5.13.222.51]
In-Reply-To: <1371758887-5092-1-git-send-email-andrei@gherzan.ro>
References: <1371758887-5092-1-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 20 Jun 2013 23:09:42 +0300
Message-ID: <CAK18fxH4H5ia19Vkst4_2U3nqy7TM5EKkhnioQDpoo1SFnwoEA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQmaqaBkq4kzH7+z/tBk9l47p2uHn18BNr6TTmUL4/5O4qo/cTH4pXRLvWIe9o/o8oyegXxd
Subject: Re: [meta-ivi][PATCH v2 1/1] gpu-viv-bin-mx6q.inc: Add linked libraries to libGAL to DEPENDS
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
X-List-Received-Date: Thu, 20 Jun 2013 20:10:04 -0000
Content-Type: multipart/alternative; boundary=001a11339d9218040f04df9b880a

--001a11339d9218040f04df9b880a
Content-Type: text/plain; charset=ISO-8859-1

Sorry for this. Please disregard.


On Thu, Jun 20, 2013 at 11:08 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-graphics/gpu-viv-bin-mx6q/gpu-viv-bin-mx6q.inc | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/recipes-graphics/gpu-viv-bin-mx6q/gpu-viv-bin-mx6q.inc
> b/recipes-graphics/gpu-viv-bin-mx6q/gpu-viv-bin-mx6q.inc
> index e1f10b6..91d93e6 100644
> --- a/recipes-graphics/gpu-viv-bin-mx6q/gpu-viv-bin-mx6q.inc
> +++ b/recipes-graphics/gpu-viv-bin-mx6q/gpu-viv-bin-mx6q.inc
> @@ -126,6 +126,7 @@ FILES_libegl-mx6-dbg =
> "${libdir}/.debug/libEGL${SOLIBS}"
>  FILES_libgal-mx6 = "${libdir}/libGAL${SOLIBS}"
>  FILES_libgal-mx6-dev = "${libdir}/libGAL${SOLIBSDEV}"
>  FILES_libgal-mx6-dbg = "${libdir}/.debug/libGAL${SOLIBS}"
> +DEPENDS += "${@base_contains('DISTRO_FEATURES', 'x11', 'virtual/libx11
> libxdamage libxext libxfixes', '', d)}"
>
>  FILES_libgl-mx6 = "${libdir}/libGL${SOLIBS}"
>  FILES_libgl-mx6-dbg = "${libdir}/.debug/libGL.${SOLIBS}"
> --
> 1.8.1.4
>
>


-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--001a11339d9218040f04df9b880a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sorry for this. Please disregard.=A0</div><div class=3D"gm=
ail_extra"><br><br><div class=3D"gmail_quote">On Thu, Jun 20, 2013 at 11:08=
 PM, Andrei Gherzan <span dir=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan.=
ro" target=3D"_blank">andrei@gherzan.ro</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Signed-off-by: Andrei Gherzan &lt;<a href=3D=
"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt;<br>
---<br>
=A0recipes-graphics/gpu-viv-bin-mx6q/gpu-viv-bin-mx6q.inc | 1 +<br>
=A01 file changed, 1 insertion(+)<br>
<br>
diff --git a/recipes-graphics/gpu-viv-bin-mx6q/gpu-viv-bin-mx6q.inc b/recip=
es-graphics/gpu-viv-bin-mx6q/gpu-viv-bin-mx6q.inc<br>
index e1f10b6..91d93e6 100644<br>
--- a/recipes-graphics/gpu-viv-bin-mx6q/gpu-viv-bin-mx6q.inc<br>
+++ b/recipes-graphics/gpu-viv-bin-mx6q/gpu-viv-bin-mx6q.inc<br>
@@ -126,6 +126,7 @@ FILES_libegl-mx6-dbg =3D &quot;${libdir}/.debug/libEGL$=
{SOLIBS}&quot;<br>
=A0FILES_libgal-mx6 =3D &quot;${libdir}/libGAL${SOLIBS}&quot;<br>
=A0FILES_libgal-mx6-dev =3D &quot;${libdir}/libGAL${SOLIBSDEV}&quot;<br>
=A0FILES_libgal-mx6-dbg =3D &quot;${libdir}/.debug/libGAL${SOLIBS}&quot;<br=
>
+DEPENDS +=3D &quot;${@base_contains(&#39;DISTRO_FEATURES&#39;, &#39;x11&#3=
9;, &#39;virtual/libx11 libxdamage libxext libxfixes&#39;, &#39;&#39;, d)}&=
quot;<br>
<br>
=A0FILES_libgl-mx6 =3D &quot;${libdir}/libGL${SOLIBS}&quot;<br>
=A0FILES_libgl-mx6-dbg =3D &quot;${libdir}/.debug/libGL.${SOLIBS}&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.8.1.4<br>
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

--001a11339d9218040f04df9b880a--
