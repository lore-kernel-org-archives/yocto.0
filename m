Return-Path: <sebmennetrier@gmail.com>
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B870E00968
	for <yocto@yoctoproject.org>; Tue,  4 Mar 2014 00:18:44 -0800 (PST)
Received: by mail-ig0-f170.google.com with SMTP id uq10so4244500igb.1
	for <yocto@yoctoproject.org>; Tue, 04 Mar 2014 00:18:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=lZSdeAMviQrSSzU2hMoBG3TF4NWsEOlwGKI2l3NR5Dg=;
	b=Re0/TNZCfoRIdv6hQfERkW+5l02rlmxZA7ATOTDwRFNST0cPbwgBKN3095+HQgfglc
	3l/AmwPFCx8EwovdFzTKoJ6bT2cy0LcrJ2l4FhKNRvOYjZPIvfOz0TdjEwBIPYpQNRAb
	4YuH7lX/pKVrqhGE2f2qHdmAHyv8Lib3Q7LGgV+UXv/Bdsj4YkCWJ1Ea42IQjMlK39kc
	CzGTGDlw+Uf2i5CAEsBVB0b3q6DT+zDXpRcgjwwl/S7v2QX8UsfE2bBJuJVAQ8SvYVFg
	P2at6ot6DP3AnYFyBoxufR5tZuz7a08ouDS9d/xLHR/mCA036eK7A6IZ2aoP+iPyrO6y
	IPLA==
MIME-Version: 1.0
X-Received: by 10.50.62.178 with SMTP id z18mr27075352igr.49.1393921123653;
	Tue, 04 Mar 2014 00:18:43 -0800 (PST)
Sender: sebmennetrier@gmail.com
Received: by 10.42.198.139 with HTTP; Tue, 4 Mar 2014 00:18:43 -0800 (PST)
In-Reply-To: <1393581239-5526-1-git-send-email-s.mennetrier@innotis.org>
References: <1393581239-5526-1-git-send-email-s.mennetrier@innotis.org>
Date: Tue, 4 Mar 2014 09:18:43 +0100
X-Google-Sender-Auth: Xce0v99hR1afLZf4W5f7b8uhuLM
Message-ID: <CABgO3_MuNG3BRko9w=uXgOJW9aFrGKUeYdNbtskSNNxdpk6g8g@mail.gmail.com>
From: Sebastien MENNETRIER <s.mennetrier@innotis.org>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][for-dora][PATCH] Installed fonts directory in the default location needed by omxplayer
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
X-List-Received-Date: Tue, 04 Mar 2014 08:18:45 -0000
Content-Type: multipart/alternative; boundary=047d7bd760c26b9f9a04f3c38df1

--047d7bd760c26b9f9a04f3c38df1
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Ping


2014-02-28 10:53 GMT+01:00 S=E9bastien Mennetrier <s.mennetrier@innotis.org=
>:

> Signed-off-by: S=E9bastien Mennetrier <s.mennetrier@innotis.org>
> ---
>  recipes-multimedia/omxplayer/omxplayer_git.bb | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bbb/recipes-multi=
media/omxplayer/
> omxplayer_git.bb
> index a456026..b4ca247 100644
> --- a/recipes-multimedia/omxplayer/omxplayer_git.bb
> +++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
> @@ -52,9 +52,12 @@ do_compile() {
>
>  do_install() {
>         oe_runmake dist
> +       mkdir -p ${D}/usr/share/fonts/truetype/freefont/
> +       install ${S}/fonts/* ${D}/usr/share/fonts/truetype/freefont/
>  }
>
>  FILES_${PN} =3D "${bindir}/omxplayer* \
> -               ${libdir}/omxplayer/lib*${SOLIBS}"
> +               ${libdir}/omxplayer/lib*${SOLIBS} \
> +               /usr/share/fonts"
>
>  FILES_${PN}-dev +=3D "${libdir}/omxplayer/*.so"
> --
> 1.8.1.2
>
>


--=20

Regards,
S=E9bastien

--047d7bd760c26b9f9a04f3c38df1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ping<br></div><div class=3D"gmail_extra"><br><br><div clas=
s=3D"gmail_quote">2014-02-28 10:53 GMT+01:00 S=E9bastien Mennetrier <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:s.mennetrier@innotis.org" target=3D"_blank=
">s.mennetrier@innotis.org</a>&gt;</span>:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Signed-off-by: S=E9bastien Mennetrier &lt;<a=
 href=3D"mailto:s.mennetrier@innotis.org">s.mennetrier@innotis.org</a>&gt;<=
br>
---<br>
=A0recipes-multimedia/omxplayer/<a href=3D"http://omxplayer_git.bb" target=
=3D"_blank">omxplayer_git.bb</a> | 5 ++++-<br>
=A01 file changed, 4 insertions(+), 1 deletion(-)<br>
<br>
diff --git a/recipes-multimedia/omxplayer/<a href=3D"http://omxplayer_git.b=
b" target=3D"_blank">omxplayer_git.bb</a> b/recipes-multimedia/omxplayer/<a=
 href=3D"http://omxplayer_git.bb" target=3D"_blank">omxplayer_git.bb</a><br=
>
index a456026..b4ca247 100644<br>
--- a/recipes-multimedia/omxplayer/<a href=3D"http://omxplayer_git.bb" targ=
et=3D"_blank">omxplayer_git.bb</a><br>
+++ b/recipes-multimedia/omxplayer/<a href=3D"http://omxplayer_git.bb" targ=
et=3D"_blank">omxplayer_git.bb</a><br>
@@ -52,9 +52,12 @@ do_compile() {<br>
<br>
=A0do_install() {<br>
=A0 =A0 =A0 =A0 oe_runmake dist<br>
+ =A0 =A0 =A0 mkdir -p ${D}/usr/share/fonts/truetype/freefont/<br>
+ =A0 =A0 =A0 install ${S}/fonts/* ${D}/usr/share/fonts/truetype/freefont/<=
br>
=A0}<br>
<br>
=A0FILES_${PN} =3D &quot;${bindir}/omxplayer* \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 ${libdir}/omxplayer/lib*${SOLIBS}&quot;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 ${libdir}/omxplayer/lib*${SOLIBS} \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 /usr/share/fonts&quot;<br>
<br>
=A0FILES_${PN}-dev +=3D &quot;${libdir}/omxplayer/*.so&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.8.1.2<br>
<br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div dir=
=3D"ltr"><div><br>Regards,<br></div>S=E9bastien<br></div>
</div>

--047d7bd760c26b9f9a04f3c38df1--
