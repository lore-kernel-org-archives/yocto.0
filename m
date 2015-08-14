Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A806E00A54; Fri, 14 Aug 2015 01:53:20 -0700 (PDT)
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
	*      [209.85.213.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 946B5E00707
	for <yocto@yoctoproject.org>; Fri, 14 Aug 2015 01:53:15 -0700 (PDT)
Received: by igui7 with SMTP id i7so8134842igu.1
	for <yocto@yoctoproject.org>; Fri, 14 Aug 2015 01:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=QdVjQGw/3C05F/qVVuWxthxVF1GGd+LO3SFYaSSVIfw=;
	b=jNE6tp9j8I3RUEd+KIRU5As5JkJpU8TC1KiKo/SzsFyRpBlUxAf1eax79tYkDd9Hes
	2NvJSkJVzeNjq5jbnIx0suXRY5CtmAyc7WCPNcj7mdlRR303eB+ezap5UIhGT9GXx9Dl
	NhN7DXSkSB7E/85suAaFJzfEMc/vHz/YGtIfHfKCRvR42He4C7ONydZ++Rs/ImwenUmg
	dh7xhfsLU+7QTheA21az/reLPfeBRccwO/MvP29CwSE7wBcOSU6ymi/6goRDqeJe0Ghj
	qeHMaL5Nri19cihwtBiHjCvASS/9faIKe+KULbtpBOUiutfud/IGRf963Mu1CW6623xW
	e/fw==
MIME-Version: 1.0
X-Received: by 10.50.50.239 with SMTP id f15mr1504021igo.19.1439542395496;
	Fri, 14 Aug 2015 01:53:15 -0700 (PDT)
Received: by 10.50.157.34 with HTTP; Fri, 14 Aug 2015 01:53:15 -0700 (PDT)
In-Reply-To: <1439541970-21519-1-git-send-email-bobadeshrikant@gmail.com>
References: <1439541970-21519-1-git-send-email-bobadeshrikant@gmail.com>
Date: Fri, 14 Aug 2015 14:23:15 +0530
Message-ID: <CALwQErqfd52nmRJ6cGb8oX8UHjaMXppt7-yxgpRDOyDUJzXWgQ@mail.gmail.com>
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: Re: [meta-selinux][PATCH] audit: fix qa warning of unrecognised config
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
X-List-Received-Date: Fri, 14 Aug 2015 08:53:20 -0000
Content-Type: multipart/alternative; boundary=047d7bdc1bf81f72cb051d41958d

--047d7bdc1bf81f72cb051d41958d
Content-Type: text/plain; charset=UTF-8

Hi,

observed: WARNING: QA Issue: audit: configure was passed unrecognised
options: --with-armeb [unknown-configure-option]
on core-image-selinux (poky-selinux distro)

build tag:
Build Configuration:
BB_VERSION        = "1.27.1"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-12.04"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "qemuarm"
DISTRO            = "poky-selinux"
DISTRO_VERSION    = "1.8+snapshot-20150814"
TUNE_FEATURES     = "arm armv5 thumb dsp"
TARGET_FPU        = "soft"
meta
meta-yocto
meta-yocto-bsp    = "master:a533776d6ff83b6e3e830137455b8382d002768b"
meta-selinux      = "master:684ee9401f33db7c9d5b183988d89c688c9dd0be"


Thanks
Shrikant

On Fri, Aug 14, 2015 at 2:16 PM, Shrikant Bobade <bobadeshrikant@gmail.com>
wrote:

> From: Shrikant Bobade <shrikant_bobade@mentor.com>
>
> remove --with-armeb=yes to fix the configure
> unrecognised option qa warning.
>
> Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
> ---
>  recipes-security/audit/audit_2.4.3.bb |    1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/recipes-security/audit/audit_2.4.3.bb
> b/recipes-security/audit/audit_2.4.3.bb
> index 8f125c0..31f4b03 100644
> --- a/recipes-security/audit/audit_2.4.3.bb
> +++ b/recipes-security/audit/audit_2.4.3.bb
> @@ -41,7 +41,6 @@ EXTRA_OECONF += "--without-prelude \
>          --without-python3 \
>          --disable-zos-remote \
>         "
> -EXTRA_OECONF_append_arm = " --with-armeb=yes"
>
>  EXTRA_OEMAKE += "PYLIBVER='python${PYTHON_BASEVERSION}' \
>         PYINC='${STAGING_INCDIR}/$(PYLIBVER)' \
> --
> 1.7.9.5
>
>

--047d7bdc1bf81f72cb051d41958d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, <br><div><br>observed: WARNING: QA Issue: audit: confi=
gure was passed unrecognised options: --with-armeb [unknown-configure-optio=
n]<br>on core-image-selinux (poky-selinux distro)<br><br>build tag:<br>Buil=
d Configuration:<br>BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D &quot;1.27.1&quot;<br>BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING=C2=A0=C2=A0 =3D &=
quot;Ubuntu-12.04&quot;<br>TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHINE=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;qemuarm&quot;<br>DISTR=
O=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &qu=
ot;poky-selinux&quot;<br>DISTRO_VERSION=C2=A0=C2=A0=C2=A0 =3D &quot;1.8+sna=
pshot-20150814&quot;<br>TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;arm=
 armv5 thumb dsp&quot;<br>TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =3D &quot;soft&quot;<br>meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-yocto=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 <br>meta-yocto-bsp=C2=A0=C2=A0=C2=A0 =3D &quot;master:a5=
33776d6ff83b6e3e830137455b8382d002768b&quot;<br>meta-selinux=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D &quot;master:684ee9401f33db7c9d5b183988d89c688c9dd0be&q=
uot;<br><br><br>Thanks<br>Shrikant<br><div><div class=3D"gmail_extra"><br><=
div class=3D"gmail_quote">On Fri, Aug 14, 2015 at 2:16 PM, Shrikant Bobade =
<span dir=3D"ltr">&lt;<a href=3D"mailto:bobadeshrikant@gmail.com" target=3D=
"_blank">bobadeshrikant@gmail.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">From: Shrikant Bobad=
e &lt;<a href=3D"mailto:shrikant_bobade@mentor.com">shrikant_bobade@mentor.=
com</a>&gt;<br>
<br>
remove --with-armeb=3Dyes to fix the configure<br>
unrecognised option qa warning.<br>
<br>
Signed-off-by: Shrikant Bobade &lt;<a href=3D"mailto:shrikant_bobade@mentor=
.com">shrikant_bobade@mentor.com</a>&gt;<br>
---<br>
=C2=A0recipes-security/audit/<a href=3D"http://audit_2.4.3.bb" rel=3D"noref=
errer" target=3D"_blank">audit_2.4.3.bb</a> |=C2=A0 =C2=A0 1 -<br>
=C2=A01 file changed, 1 deletion(-)<br>
<br>
diff --git a/recipes-security/audit/<a href=3D"http://audit_2.4.3.bb" rel=
=3D"noreferrer" target=3D"_blank">audit_2.4.3.bb</a> b/recipes-security/aud=
it/<a href=3D"http://audit_2.4.3.bb" rel=3D"noreferrer" target=3D"_blank">a=
udit_2.4.3.bb</a><br>
index 8f125c0..31f4b03 100644<br>
--- a/recipes-security/audit/<a href=3D"http://audit_2.4.3.bb" rel=3D"noref=
errer" target=3D"_blank">audit_2.4.3.bb</a><br>
+++ b/recipes-security/audit/<a href=3D"http://audit_2.4.3.bb" rel=3D"noref=
errer" target=3D"_blank">audit_2.4.3.bb</a><br>
@@ -41,7 +41,6 @@ EXTRA_OECONF +=3D &quot;--without-prelude \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--without-python3 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--disable-zos-remote \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
-EXTRA_OECONF_append_arm =3D &quot; --with-armeb=3Dyes&quot;<br>
<br>
=C2=A0EXTRA_OEMAKE +=3D &quot;PYLIBVER=3D&#39;python${PYTHON_BASEVERSION}&#=
39; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 PYINC=3D&#39;${STAGING_INCDIR}/$(PYLIBVER)&#39;=
 \<br>
--<br>
1.7.9.5<br>
<br>
</div></div></blockquote></div><br></div></div></div></div>

--047d7bdc1bf81f72cb051d41958d--
