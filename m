Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A4DAE00CE8; Mon, 20 Nov 2017 09:53:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vincent.prince.fr[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA349E00C0F
	for <yocto@yoctoproject.org>; Mon, 20 Nov 2017 09:53:32 -0800 (PST)
Received: by mail-it0-f45.google.com with SMTP id m191so12975074itg.2
	for <yocto@yoctoproject.org>; Mon, 20 Nov 2017 09:53:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=MWTuuR6z5yKjJ7YdVCQcwhWZ5YRB0a/LO0jkxmM9Lxw=;
	b=NDHIFdqZjUT8TrjDhzJ19NPKKzlz+Bh7ft/JfsGg/BL4GfIdz3HvKEpVtfWR2rZIDG
	HVM1fpTTwPKl/pvTzYtkYCViD7o9KKj1UfEOEGdmh+Kvnn4PwjYrVZ/+8EDEpevRdGr1
	+JnQ86+qF/cqrPZ8bv3cv4M588HN/if9m6tujx7BTwiFqh4fRQXFRNpydm/KIYP5dg/O
	w0ZwQk6vSepWbj5H6CizU2r6DNscxJ2vhr54KUpf6nsTi6ylaCNSsWxYyB5RapWD4ehd
	X1Z/xhHop5uAuBn5gy4jtd7BHucdy/C0QG1D7mbGXyoPogseEJv8+vjj88pi8vCXMwiX
	Paxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=MWTuuR6z5yKjJ7YdVCQcwhWZ5YRB0a/LO0jkxmM9Lxw=;
	b=c30YM1UJA0KwZY4XnXFenlgx+B95k+GAYFYpRvIIhAr2JYa+DG5L9zA2qZsp0eRXyR
	xHSVF0k+m0hnsdqZxHdHJuz17W94nYF6Vyu4GVMMe7tarT/Pj2+EkUvEn5jl1wMNch4I
	9xF/PLdZ+474mkGZJowpj1I83WCEs0vy7pa5hzB7TGFs0UacpNN+uUQ57cdSm5ihikpk
	gIdC/ST+3FDk95tUR4yVg+f5TnZDQE25DBWV+Kr/0cep3KenBxAYqlVIT9dx5kseA5n0
	/R5eJKRrc9pXgWNR/bKvhk0fx6bdlm7UPMnt2hCQQ2C36woAl/PeNUZ0hOcc5BWgSZj4
	dGVA==
X-Gm-Message-State: AJaThX78yXJZnjdHWdizVJj79dWr4fEmT2vZ0ZXxgd5p37VsDONXPAMK
	gb0hEa7uXfDFVZh+o2Xnl9q5pI81roX8YFXy+WV2pQ==
X-Google-Smtp-Source: AGs4zMbn0rjlC/TCUPTpr2Hmrb0zDQYk7JGhmwoAZbBcQMHEZH5taN0/jz7u4xlwe3anuw7J81I1r7EJ0OyAWD/RwWY=
X-Received: by 10.36.117.87 with SMTP id y84mr5702543itc.124.1511200412007;
	Mon, 20 Nov 2017 09:53:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.2.90.200 with HTTP; Mon, 20 Nov 2017 09:53:11 -0800 (PST)
In-Reply-To: <1510919250-3757-1-git-send-email-mano@hms.se>
References: <1510919250-3757-1-git-send-email-mano@hms.se>
From: Vincent Prince <vincent.prince.fr@gmail.com>
Date: Mon, 20 Nov 2017 18:53:11 +0100
Message-ID: <CAB2nKc99SFgPkdr_=cZGTjW-AxPxoTuVMkOgXuntfjXHX=VGBA@mail.gmail.com>
To: Martin Nordqvist <mano@hms.se>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-oracle-java][PATCH] Symlink jar and javah in bindir (native)
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
X-List-Received-Date: Mon, 20 Nov 2017 17:53:34 -0000
Content-Type: multipart/alternative; boundary="001a114aa8cabe06ed055e6dc37a"

--001a114aa8cabe06ed055e6dc37a
Content-Type: text/plain; charset="UTF-8"

Hi Martin,

There is a warning with absolute path symlinking, I made a patch to replace
all occurence of
ln -sf ${JDK_HOME}/bin/*
by
ln -sf ../lib/jvm/${JDK_DIR}/bin/*
but didn't get integrated.

Best regards,
Vincent

2017-11-17 12:47 GMT+01:00 Martin Nordqvist <mano@hms.se>:

> Create symlinks in bindir to jar and javah.
> If a recpie needs jar to create a jar file or javah for a JNI package,
> jar and javah needs to be in bindir.
> ---
>  recipes-devtools/oracle-java/oracle-jse-jdk.inc | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> index a7210d9..6b3aabe 100644
> --- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> +++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> @@ -18,6 +18,8 @@ do_install_class-native() {
>         install -d                              ${D}${bindir}
>         ln -sf ${JDK_HOME}/bin/java             ${D}${bindir}
>         ln -sf ${JDK_HOME}/bin/javac            ${D}${bindir}
> +       ln -sf ${JDK_HOME}/bin/javah            ${D}${bindir}
> +       ln -sf ${JDK_HOME}/bin/jar              ${D}${bindir}
>
>         install -d                              ${D}${JDK_HOME}/bin
>         ln -sf javah                            ${D}${JDK_HOME}/bin/gjavah
> --
> 1.9.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114aa8cabe06ed055e6dc37a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Martin,=C2=A0<div><br></div><div>There is a warning wit=
h absolute path symlinking, I made a patch to replace all occurence of=C2=
=A0</div><div>ln -sf ${JDK_HOME}/bin/*<br></div><div>by</div><div>ln -sf ..=
/lib/jvm/${JDK_DIR}/bin/*</div><div>but didn&#39;t get integrated.</div><di=
v><br></div><div>Best regards,=C2=A0</div><div>Vincent=C2=A0</div></div><di=
v class=3D"gmail_extra"><br><div class=3D"gmail_quote">2017-11-17 12:47 GMT=
+01:00 Martin Nordqvist <span dir=3D"ltr">&lt;<a href=3D"mailto:mano@hms.se=
" target=3D"_blank">mano@hms.se</a>&gt;</span>:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">Create symlinks in bindir to jar and javah.<br>
If a recpie needs jar to create a jar file or javah for a JNI package,<br>
jar and javah needs to be in bindir.<br>
---<br>
=C2=A0recipes-devtools/oracle-java/<wbr>oracle-jse-jdk.inc | 2 ++<br>
=C2=A01 file changed, 2 insertions(+)<br>
<br>
diff --git a/recipes-devtools/oracle-<wbr>java/oracle-jse-jdk.inc b/recipes=
-devtools/oracle-<wbr>java/oracle-jse-jdk.inc<br>
index a7210d9..6b3aabe 100644<br>
--- a/recipes-devtools/oracle-<wbr>java/oracle-jse-jdk.inc<br>
+++ b/recipes-devtools/oracle-<wbr>java/oracle-jse-jdk.inc<br>
@@ -18,6 +18,8 @@ do_install_class-native() {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${D}$=
{bindir}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ln -sf ${JDK_HOME}/bin/java=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0${D}${bindir}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ln -sf ${JDK_HOME}/bin/javac=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 ${D}${bindir}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ln -sf ${JDK_HOME}/bin/javah=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 ${D}${bindir}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ln -sf ${JDK_HOME}/bin/jar=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${D}${bindir}<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${D}$=
{JDK_HOME}/bin<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ln -sf javah=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${D}${JDK_HO=
ME}/bin/gjavah<br>
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

--001a114aa8cabe06ed055e6dc37a--
