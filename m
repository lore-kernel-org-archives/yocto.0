Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A6ABE00F15; Mon, 29 Aug 2016 04:21:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9EF1E00F0F
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 04:21:43 -0700 (PDT)
Received: by mail-it0-f66.google.com with SMTP id x131so6157643ite.3
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 04:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Zqkek3B4cJ3j/cAFkwZsMLn3lEWLqDUe4KmRe6Rn1us=;
	b=J2Mp74OfcQxKL0kuYuiyQNawQJ9ju/KbKpIS4wbgsvjPVNvQk9FTDtp5+uRKHFUeQq
	0vntay1VpA4Bq0iyTnAnJowQdUxefM01/vsHoOE1gSPNuMabuAmClxu+6dfQarGQKSML
	U4kuqu+P6AQU8EDUKiGWpQzOtgthiTXejLnsaVpQL8UIdDxD4k4F7v9RiytSgkGP4jAk
	bc9FnGYE1DT9iY/ODPj93Dypn4hjEx4AUiRapOKvMsa/BuwdaHuw0KqwNckUsiTTTVIB
	LnggK55kdxbeVwtT4H8lP1x/yzNeXh5E0lPtJchr13FFfI7FSo586tLeKx3+sLTTX88c
	BGiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Zqkek3B4cJ3j/cAFkwZsMLn3lEWLqDUe4KmRe6Rn1us=;
	b=dlqJVdPS5dbZi8SItoG0F7DgYTJqZFmk0R7QOljcUhNdcXdANpCKICtA64t/WMr04y
	mYHV9nEeI/a2+w6YCOxyYiacWT5jnhxfywT6QvpcvnYjklzLMx2X2qtAPoTRO/kn0r7H
	vaNpoQUJsIY8rsmSpGkMD6P85v2NMf5Mbm4RPg+2xzstDPyGPK89RV8IzBxVMqXdjmV8
	AlnRI1ULbAKXhmW+dqPCcHg/QO1AKkynjbPdCiSHU9VhXBC8tex2OiShXB3KckHIn6Ju
	3Ej6KtOjwfYzYmKvB5myWWA6HaHNIUqn6B6rELKp5y0HV18jNlQ/nOIayaP4T2/q2/ew
	DdYA==
X-Gm-Message-State: AE9vXwPaFWHH/AtJhXz5k0gAY2/CrtudEj19XkATGQl/LmQGu2ZBKAMb8+xJJUq69yMbBtw2p5O+Y85N61Ptyg==
X-Received: by 10.36.25.144 with SMTP id b138mr14359173itb.29.1472469702357;
	Mon, 29 Aug 2016 04:21:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.175.169 with HTTP; Mon, 29 Aug 2016 04:21:41 -0700 (PDT)
In-Reply-To: <1471871180-28072-1-git-send-email-bobadeshrikant@gmail.com>
References: <1471871180-28072-1-git-send-email-bobadeshrikant@gmail.com>
From: Shrikant Bobade <bobadeshrikant@gmail.com>
Date: Mon, 29 Aug 2016 16:51:41 +0530
Message-ID: <CALwQEro6Mhej7G9N1cYANuXqpu1TZHsY44Ryre-1pJvvPdqhnA@mail.gmail.com>
To: yocto@yoctoproject.org
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: Re: [meta-selinux][PATCH 1/5] selinux-initsh.inc: add systemd support
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
X-List-Received-Date: Mon, 29 Aug 2016 11:21:44 -0000
Content-Type: multipart/alternative; boundary=001a114057968d3842053b341136

--001a114057968d3842053b341136
Content-Type: text/plain; charset=UTF-8

Hi,


@Ping,


Thanks
Shrikant

On Mon, Aug 22, 2016 at 6:36 PM, Shrikant Bobade <bobadeshrikant@gmail.com>
wrote:

> From: Shrikant Bobade <shrikant_bobade@mentor.com>
>
> add support for systemd service file and handling of script required by
> systemd service file.
>
> Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
> ---
>  recipes-security/selinux/selinux-initsh.inc | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
>
> diff --git a/recipes-security/selinux/selinux-initsh.inc
> b/recipes-security/selinux/selinux-initsh.inc
> index f7348bb..bcdd449 100644
> --- a/recipes-security/selinux/selinux-initsh.inc
> +++ b/recipes-security/selinux/selinux-initsh.inc
> @@ -13,11 +13,21 @@ CONFFILES_${PN} += "${sysconfdir}/init.d/${
> SELINUX_SCRIPT_DST}"
>
>  PACKAGE_ARCH ?= "${MACHINE_ARCH}"
>
> -inherit update-rc.d
> +inherit update-rc.d systemd
> +
> +SYSTEMD_SERVICE_${PN} = "${SELINUX_SCRIPT_SRC}.service"
>
>  do_install () {
>         install -d ${D}${sysconfdir}/init.d/
>         install -m 0755 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.sh
> ${D}${sysconfdir}/init.d/${SELINUX_SCRIPT_DST}
> +
> +       install -d ${D}${systemd_unitdir}/system
> +       install -m 0644 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.service
> ${D}${systemd_unitdir}/system
> +
> +       if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true',
> 'false', d)}; then
> +               install -d ${D}${bindir}
> +               install -m 0755 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.sh
> ${D}${bindir}
> +       fi
>  }
>
>  sysroot_stage_all_append () {
> --
> 1.9.1
>
>

--001a114057968d3842053b341136
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi,<br><br><br></div>@Ping,<br><br><br></di=
v>Thanks<br></div>Shrikant<br><div class=3D"gmail_extra"><br><div class=3D"=
gmail_quote">On Mon, Aug 22, 2016 at 6:36 PM, Shrikant Bobade <span dir=3D"=
ltr">&lt;<a href=3D"mailto:bobadeshrikant@gmail.com" target=3D"_blank">boba=
deshrikant@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><div class=3D"HOEnZb"><div class=3D"h5">From: Shrikant Bobade &lt;<a href=
=3D"mailto:shrikant_bobade@mentor.com">shrikant_bobade@mentor.com</a>&gt;<b=
r>
<br>
add support for systemd service file and handling of script required by<br>
systemd service file.<br>
<br>
Signed-off-by: Shrikant Bobade &lt;<a href=3D"mailto:shrikant_bobade@mentor=
.com">shrikant_bobade@mentor.com</a>&gt;<br>
---<br>
=C2=A0recipes-security/selinux/<wbr>selinux-initsh.inc | 12 +++++++++++-<br=
>
=C2=A01 file changed, 11 insertions(+), 1 deletion(-)<br>
<br>
diff --git a/recipes-security/selinux/<wbr>selinux-initsh.inc b/recipes-sec=
urity/selinux/<wbr>selinux-initsh.inc<br>
index f7348bb..bcdd449 100644<br>
--- a/recipes-security/selinux/<wbr>selinux-initsh.inc<br>
+++ b/recipes-security/selinux/<wbr>selinux-initsh.inc<br>
@@ -13,11 +13,21 @@ CONFFILES_${PN} +=3D &quot;${sysconfdir}/init.d/${<wbr>=
SELINUX_SCRIPT_DST}&quot;<br>
<br>
=C2=A0PACKAGE_ARCH ?=3D &quot;${MACHINE_ARCH}&quot;<br>
<br>
-inherit update-rc.d<br>
+inherit update-rc.d systemd<br>
+<br>
+SYSTEMD_SERVICE_${PN} =3D &quot;${SELINUX_SCRIPT_SRC}.<wbr>service&quot;<b=
r>
<br>
=C2=A0do_install () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}${sysconfdir}/init.d/<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0755 ${WORKDIR}/${SELINUX_SCRIPT_<wb=
r>SRC}.sh ${D}${sysconfdir}/init.d/${<wbr>SELINUX_SCRIPT_DST}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0install -d ${D}${systemd_unitdir}/system<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0install -m 0644 ${WORKDIR}/${SELINUX_SCRIPT_<wb=
r>SRC}.service ${D}${systemd_unitdir}/system<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if ${@bb.utils.contains(&#39;DISTRO_<wbr>FEATUR=
ES&#39;, &#39;systemd&#39;, &#39;true&#39;, &#39;false&#39;, d)}; then<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0install -d ${D}${bi=
ndir}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0install -m 0755 ${W=
ORKDIR}/${SELINUX_SCRIPT_<wbr>SRC}.sh ${D}${bindir}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>
=C2=A0}<br>
<br>
=C2=A0sysroot_stage_all_append () {<br>
--<br>
1.9.1<br>
<br>
</div></div></blockquote></div><br></div></div>

--001a114057968d3842053b341136--
