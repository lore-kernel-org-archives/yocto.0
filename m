Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0218E00CF5; Wed,  8 Nov 2017 00:32:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vincent.prince.fr[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.171 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C775E00CC2
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 00:32:00 -0800 (PST)
Received: by mail-io0-f171.google.com with SMTP id b186so5101544iof.8
	for <yocto@yoctoproject.org>; Wed, 08 Nov 2017 00:32:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=du5RSwUNhlRc0nrEgOaAmScwNw0Jcr0JymyhscDVkb4=;
	b=rs4JXTKL8MtsDKMVqJF8KCi6LHSNJ4H8LCLD0cR+5NDimTjQXqy2NqIgRGoaznRJ2L
	oViy6x+LYwvWFsl/ZWRcBfV7Ejg81kkC75OkH+XlPNy5VFLidSTTZTc/JvYzGUUytc3z
	vXEchKG63n/nS7w603l7PWGrfKppFdkquLLBQ9mkQqwwHSV6l0aJgD2QY/v2CAVwOPiz
	gPFYCDP/AlYwpZwk/iIQz4Hc7Ugvc2LD2IMRzgO/ZeBsMPrF9MyZNmv8na3+FBBoRm5n
	RRIVqZceEsNYafYnicc0FgkrUknMyI4PjA/O2iNP1gL7YKyxt42GVunG4nb2xhADpT7f
	XeCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=du5RSwUNhlRc0nrEgOaAmScwNw0Jcr0JymyhscDVkb4=;
	b=qXeYa5s6Gg5oceMYaboa69SiqpbcpCX/JlK+JlHNkSaVZf9mw706L/BTUDXtHB5YeR
	OrUdcmR+MbvFRFuwXXV3u8q6GqEvCbkZRLMIEoFccWyafkgngP/prqyqsylMGDK0VtYj
	FZCOgn7W2mJntR64CpBFKe7S6Q3NTYPemydxtjSkfJytmOqRZe/f8X6nCQAyur/7ev5K
	/y1UNn4UudWwKAkMg3VGwifqvX4pGeIHKQNaB0J4ZeeLX0SD/gCcCiyzQIEV0ixXSmVs
	HD8eul5dY9iKXhFApX4aeQjv1Jao85rGS50/t4ODPh4KpFp//aUmWd+ok3BcrlUqAYy8
	+eQQ==
X-Gm-Message-State: AJaThX4xFZdoVtnei2U2UVufnpFj7VOkurH01MTjLdxvQV+7L30v9WFP
	oUpKRyFJ/VX26odP9b0E7XG+7DIGFFGduSRLNRE=
X-Google-Smtp-Source: ABhQp+TZBmpZFIRbS8/qZRLZFwHxNhTSwDeMjAWLUfuMJA61pUoCZE/Lnp5UmxwguTzDWpKligspjgS9sCnS8lEOpTs=
X-Received: by 10.107.81.21 with SMTP id f21mr1859374iob.63.1510129920069;
	Wed, 08 Nov 2017 00:32:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.2.167.15 with HTTP; Wed, 8 Nov 2017 00:31:39 -0800 (PST)
In-Reply-To: <1509978827-6427-1-git-send-email-mano@hms.se>
References: <1509978827-6427-1-git-send-email-mano@hms.se>
From: Vincent Prince <vincent.prince.fr@gmail.com>
Date: Wed, 8 Nov 2017 09:31:39 +0100
Message-ID: <CAB2nKc_xQTG2rax9puGMmoDn1gVS6_2JhwNnvi3wbwoY9U2Hcw@mail.gmail.com>
To: Martin Nordqvist <mano@hms.se>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-oracle-java][PATCH] Don't preserve ownership when copying files
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
X-List-Received-Date: Wed, 08 Nov 2017 08:32:02 -0000
Content-Type: multipart/alternative; boundary="089e0825df607355dc055d7485d6"

--089e0825df607355dc055d7485d6
Content-Type: text/plain; charset="UTF-8"

Hi Martin,

Any reason to give root rights to JDK?

Best Regards,
Vincent

2017-11-06 15:33 GMT+01:00 Martin Nordqvist <mano@hms.se>:

> Don't preserve ownership when copying files. Instead let root be
> owner of all files.
> ---
>  recipes-devtools/oracle-java/oracle-jse-jdk.inc | 3 ++-
>  recipes-devtools/oracle-java/oracle-jse.inc     | 3 ++-
>  2 files changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> index a7210d9..ca6af22 100644
> --- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> +++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> @@ -13,7 +13,8 @@ require oracle-jse.inc
>
>  do_install_class-native() {
>         install -d                              ${D}${libdir_jvm}
> -       cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE} ${D}${JDK_HOME}
> +       cp -a --no-preserve=ownership \
> +               ${S}/${JDK_JRE}${PV}_${PV_UPDATE}       ${D}${JDK_HOME}
>
>         install -d                              ${D}${bindir}
>         ln -sf ${JDK_HOME}/bin/java             ${D}${bindir}
> diff --git a/recipes-devtools/oracle-java/oracle-jse.inc
> b/recipes-devtools/oracle-java/oracle-jse.inc
> index 4346f23..5e5f406 100644
> --- a/recipes-devtools/oracle-java/oracle-jse.inc
> +++ b/recipes-devtools/oracle-java/oracle-jse.inc
> @@ -19,7 +19,8 @@ JDK_HOME = "${libdir_jvm}/${JDK_DIR}"
>
>  do_install () {
>         install -d -m 0755                      ${D}${libdir_jvm}
> -       cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE} ${D}${JDK_HOME}
> +       cp -a --no-preserve=ownership \
> +               ${S}/${JDK_JRE}${PV}_${PV_UPDATE}       ${D}${JDK_HOME}
>  }
>
>  # All the files are provided in a binaray package, and keeping all the
> --
> 1.9.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e0825df607355dc055d7485d6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Martin,=C2=A0<div><br></div><div>Any reason to give roo=
t rights to JDK?</div><div><br></div><div>Best Regards,</div><div>Vincent</=
div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2017-11=
-06 15:33 GMT+01:00 Martin Nordqvist <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:mano@hms.se" target=3D"_blank">mano@hms.se</a>&gt;</span>:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">Don&#39;t preserve ownership when copying files. Instea=
d let root be<br>
owner of all files.<br>
---<br>
=C2=A0recipes-devtools/oracle-java/<wbr>oracle-jse-jdk.inc | 3 ++-<br>
=C2=A0recipes-devtools/oracle-java/<wbr>oracle-jse.inc=C2=A0 =C2=A0 =C2=A0|=
 3 ++-<br>
=C2=A02 files changed, 4 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/recipes-devtools/oracle-<wbr>java/oracle-jse-jdk.inc b/recipes=
-devtools/oracle-<wbr>java/oracle-jse-jdk.inc<br>
index a7210d9..ca6af22 100644<br>
--- a/recipes-devtools/oracle-<wbr>java/oracle-jse-jdk.inc<br>
+++ b/recipes-devtools/oracle-<wbr>java/oracle-jse-jdk.inc<br>
@@ -13,7 +13,8 @@ require oracle-jse.inc<br>
<br>
=C2=A0do_install_class-native() {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${D}$=
{libdir_jvm}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0cp -a ${S}/${JDK_JRE}${PV}_${PV_<wbr>UPDATE} ${=
D}${JDK_HOME}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0cp -a --no-preserve=3Downership \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${S}/${JDK_JRE}${PV=
}_${PV_<wbr>UPDATE}=C2=A0 =C2=A0 =C2=A0 =C2=A0${D}${JDK_HOME}<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${D}$=
{bindir}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ln -sf ${JDK_HOME}/bin/java=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0${D}${bindir}<br>
diff --git a/recipes-devtools/oracle-<wbr>java/oracle-jse.inc b/recipes-dev=
tools/oracle-<wbr>java/oracle-jse.inc<br>
index 4346f23..5e5f406 100644<br>
--- a/recipes-devtools/oracle-<wbr>java/oracle-jse.inc<br>
+++ b/recipes-devtools/oracle-<wbr>java/oracle-jse.inc<br>
@@ -19,7 +19,8 @@ JDK_HOME =3D &quot;${libdir_jvm}/${JDK_DIR}&quot;<br>
<br>
=C2=A0do_install () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d -m 0755=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${D}${libdir_jvm}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0cp -a ${S}/${JDK_JRE}${PV}_${PV_<wbr>UPDATE} ${=
D}${JDK_HOME}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0cp -a --no-preserve=3Downership \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${S}/${JDK_JRE}${PV=
}_${PV_<wbr>UPDATE}=C2=A0 =C2=A0 =C2=A0 =C2=A0${D}${JDK_HOME}<br>
=C2=A0}<br>
<br>
=C2=A0# All the files are provided in a binaray package, and keeping all th=
e<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.9.1<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--089e0825df607355dc055d7485d6--
