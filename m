Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACF7AE00CAB; Fri, 17 May 2019 13:21:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.67 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
	[209.85.208.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3B87E0043B
	for <yocto@yoctoproject.org>; Fri, 17 May 2019 13:21:02 -0700 (PDT)
Received: by mail-ed1-f67.google.com with SMTP id e24so12267748edq.6
	for <yocto@yoctoproject.org>; Fri, 17 May 2019 13:21:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=2oasCiTxGcERubet35T3Y9hEh04UVLpyoI/m3c2N5a0=;
	b=GxVoYO+0CGTUJ777q1tiUEyl/Stcx8eNvfXdfHA/mNSkC1PnUzGPc00BIuqJGEoguY
	aNqyeKLijMwRvCmRdGkaZU8h5NuGJTTaR7bHF98DEfXH8AzIYvF/RwhtiKqXS9mofMoR
	QW0gDun/kzw3c55U0YXToBDdBrP3eVVoBX9W0y8fThdtIl0yUAi5UD5bjknZnELqToLV
	lm3p/AtbVW8wRX1avLB0wtPtSXVkjZjDQR0HgZ+cpYXMxs47gBfCHbUC94u/ae6SsAm/
	SeXRDt3aucXpAUU6rHCn3tokFCxyST9ZWuonrolr7p6dPKTgBDr32RonlxenjlgMtXXH
	JwDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=2oasCiTxGcERubet35T3Y9hEh04UVLpyoI/m3c2N5a0=;
	b=m6quiP0HrXClQWoUIIeD62vR+eLGASPhexabByHzGU6Q3fnL23TfMTQmW9bsd5ZM+q
	rZV/ek1BR0AXxDVnmPAQKLNjyDrqkRmVwvWuUYdp76WwPlghSrR44spsBM8D93Y8qUmo
	2NmZsfK6zQgAjqGuUWWrQVC6ITxImZpOIPJw6EmqlhHlV7cw2wL2shMfcBVW2UYNKbzi
	/Qg7zfWqqj9t5d9M/8583YYXGx0KCNggZE3EpNK2txrH5V693k8H0kSw9fNGSX8yW0gI
	7pjE3bUE3sc4LIZd9Vezg008xy47aWHXhs5ZoYiujGiTPnT27sErfl0sZlTcnUdyydP4
	qWNw==
X-Gm-Message-State: APjAAAUGjip6ERkngu6nmTysWC2lPXYju0FYk2frrhzsmUsCIOpS47dM
	3pFPX9W7UbsECcVqZErLwPe9+zkbINZ4N6LvrEQ=
X-Google-Smtp-Source: APXvYqwJT49N6U2ZWb+jFjFwvNRG+U8ygnq6qB1t1p2SVQ7L6p6+ba0wPjXaTttuLOgTWyfRytOMMVet38590LE5P08=
X-Received: by 2002:a17:906:90d6:: with SMTP id
	v22mr35838070ejw.183.1558124462040; 
	Fri, 17 May 2019 13:21:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190517164603.13885-1-akuster808@gmail.com>
In-Reply-To: <20190517164603.13885-1-akuster808@gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 17 May 2019 22:20:52 +0200
Message-ID: <CA+chaQfJUtza+tf-CH41N7RP2RsRzKdpi8236yN3fS1OA_GNJQ@mail.gmail.com>
To: Armin Kuster <akuster808@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-security][PATCH] keyutils: fix library install path
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
X-List-Received-Date: Fri, 17 May 2019 20:21:12 -0000
Content-Type: multipart/alternative; boundary="00000000000013696805891b1ff5"

--00000000000013696805891b1ff5
Content-Type: text/plain; charset="UTF-8"

When you're on it, can you please check if it works with multilib?

I think $(USRLIBDIR) doesn't respect ${libdir} from OE, so it always
installs the library to /usr/lib instead of e.g. /usr/lib64 with multlilib.

e.g. recipes-security/ccs-tools/ccs-tools_1.8.4.bb is
setting USRLIBDIR=${libdir}, I guess keyutils needs the same.

On Fri, May 17, 2019 at 6:46 PM Armin Kuster <akuster808@gmail.com> wrote:

> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  .../files/fix_library_install_path.patch      | 28 +++++++++++++++++++
>  recipes-security/keyutils/keyutils_1.6.bb     |  1 +
>  2 files changed, 29 insertions(+)
>  create mode 100644
> recipes-security/keyutils/files/fix_library_install_path.patch
>
> diff --git
> a/recipes-security/keyutils/files/fix_library_install_path.patch
> b/recipes-security/keyutils/files/fix_library_install_path.patch
> new file mode 100644
> index 0000000..938fe2e
> --- /dev/null
> +++ b/recipes-security/keyutils/files/fix_library_install_path.patch
> @@ -0,0 +1,28 @@
> +From b0355cc205543ffd33752874295139d57c4fbc3e Mon Sep 17 00:00:00 2001
> +From: Wenzong Fan <wenzong.fan@windriver.com>
> +Date: Tue, 26 Sep 2017 07:59:51 +0000
> +Subject: [PATCH] Subject: [PATCH] keyutils: use relative path for link
> +
> +The absolute path of the symlink will be invalid
> +when populated in sysroot, so use relative path instead.
> +
> +Upstream-Status: Pending
> +
> +Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
> +Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
> +{rebased for 1.6]
> +Signed-off-by: Armin Kuster <akuster808@gmail.com>
> +
> +Index: keyutils-1.6/Makefile
> +===================================================================
> +--- keyutils-1.6.orig/Makefile
> ++++ keyutils-1.6/Makefile
> +@@ -184,7 +184,7 @@ ifeq ($(NO_SOLIB),0)
> +       $(INSTALL) -D $(LIBNAME) $(DESTDIR)$(LIBDIR)/$(LIBNAME)
> +       $(LNS) $(LIBNAME) $(DESTDIR)$(LIBDIR)/$(SONAME)
> +       mkdir -p $(DESTDIR)$(USRLIBDIR)
> +-      $(LNS) $(LIBDIR)/$(SONAME) $(DESTDIR)$(USRLIBDIR)/$(DEVELLIB)
> ++      $(LNS) $(SONAME) $(DESTDIR)$(USRLIBDIR)/$(DEVELLIB)
> +       sed \
> +       -e 's,@VERSION\@,$(VERSION),g' \
> +       -e 's,@prefix\@,$(PREFIX),g' \
> diff --git a/recipes-security/keyutils/keyutils_1.6.bb
> b/recipes-security/keyutils/keyutils_1.6.bb
> index c961fa2..2968a24 100644
> --- a/recipes-security/keyutils/keyutils_1.6.bb
> +++ b/recipes-security/keyutils/keyutils_1.6.bb
> @@ -19,6 +19,7 @@ SRC_URI = "
> http://people.redhat.com/dhowells/keyutils/${BP}.tar.bz2 \
>             file://keyutils-test-fix-output-format.patch \
>
> file://keyutils-fix-error-report-by-adding-default-message.patch \
>             file://run-ptest \
> +           file://fix_library_install_path.patch \
>             "
>
>  SRC_URI[md5sum] = "191987b0ab46bb5b50efd70a6e6ce808"
> --
> 2.17.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000013696805891b1ff5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">When you&#39;re on it, c=
an you please check if it works with multilib?<div><br></div><div>I think $=
(USRLIBDIR) doesn&#39;t respect ${libdir} from OE, so it always installs th=
e library to /usr/lib instead of e.g. /usr/lib64 with multlilib.</div><div>=
<br></div><div>e.g.=C2=A0recipes-security/ccs-tools/<a href=3D"http://ccs-t=
ools_1.8.4.bb">ccs-tools_1.8.4.bb</a> is setting=C2=A0USRLIBDIR=3D${libdir}=
, I guess keyutils needs the same.</div></div></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 17, 2019 at=
 6:46 PM Armin Kuster &lt;<a href=3D"mailto:akuster808@gmail.com">akuster80=
8@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Signed-off-by: Armin Kuster &lt;<a href=3D"mailto:akuster808@gma=
il.com" target=3D"_blank">akuster808@gmail.com</a>&gt;<br>
---<br>
=C2=A0.../files/fix_library_install_path.patch=C2=A0 =C2=A0 =C2=A0 | 28 +++=
++++++++++++++++<br>
=C2=A0recipes-security/keyutils/<a href=3D"http://keyutils_1.6.bb" rel=3D"n=
oreferrer" target=3D"_blank">keyutils_1.6.bb</a>=C2=A0 =C2=A0 =C2=A0|=C2=A0=
 1 +<br>
=C2=A02 files changed, 29 insertions(+)<br>
=C2=A0create mode 100644 recipes-security/keyutils/files/fix_library_instal=
l_path.patch<br>
<br>
diff --git a/recipes-security/keyutils/files/fix_library_install_path.patch=
 b/recipes-security/keyutils/files/fix_library_install_path.patch<br>
new file mode 100644<br>
index 0000000..938fe2e<br>
--- /dev/null<br>
+++ b/recipes-security/keyutils/files/fix_library_install_path.patch<br>
@@ -0,0 +1,28 @@<br>
+From b0355cc205543ffd33752874295139d57c4fbc3e Mon Sep 17 00:00:00 2001<br>
+From: Wenzong Fan &lt;<a href=3D"mailto:wenzong.fan@windriver.com" target=
=3D"_blank">wenzong.fan@windriver.com</a>&gt;<br>
+Date: Tue, 26 Sep 2017 07:59:51 +0000<br>
+Subject: [PATCH] Subject: [PATCH] keyutils: use relative path for link<br>
+<br>
+The absolute path of the symlink will be invalid<br>
+when populated in sysroot, so use relative path instead.<br>
+<br>
+Upstream-Status: Pending<br>
+<br>
+Signed-off-by: Jackie Huang &lt;<a href=3D"mailto:jackie.huang@windriver.c=
om" target=3D"_blank">jackie.huang@windriver.com</a>&gt;<br>
+Signed-off-by: Wenzong Fan &lt;<a href=3D"mailto:wenzong.fan@windriver.com=
" target=3D"_blank">wenzong.fan@windriver.com</a>&gt;<br>
+{rebased for 1.6]<br>
+Signed-off-by: Armin Kuster &lt;<a href=3D"mailto:akuster808@gmail.com" ta=
rget=3D"_blank">akuster808@gmail.com</a>&gt;<br>
+<br>
+Index: keyutils-1.6/Makefile<br>
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
+--- keyutils-1.6.orig/Makefile<br>
++++ keyutils-1.6/Makefile<br>
+@@ -184,7 +184,7 @@ ifeq ($(NO_SOLIB),0)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0$(INSTALL) -D $(LIBNAME) $(DESTDIR)$(LIBDIR)/$(=
LIBNAME)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0$(LNS) $(LIBNAME) $(DESTDIR)$(LIBDIR)/$(SONAME)=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0mkdir -p $(DESTDIR)$(USRLIBDIR)<br>
+-=C2=A0 =C2=A0 =C2=A0 $(LNS) $(LIBDIR)/$(SONAME) $(DESTDIR)$(USRLIBDIR)/$(=
DEVELLIB)<br>
++=C2=A0 =C2=A0 =C2=A0 $(LNS) $(SONAME) $(DESTDIR)$(USRLIBDIR)/$(DEVELLIB)<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sed \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0-e &#39;s,@VERSION\@,$(VERSION),g&#39; \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0-e &#39;s,@prefix\@,$(PREFIX),g&#39; \<br>
diff --git a/recipes-security/keyutils/<a href=3D"http://keyutils_1.6.bb" r=
el=3D"noreferrer" target=3D"_blank">keyutils_1.6.bb</a> b/recipes-security/=
keyutils/<a href=3D"http://keyutils_1.6.bb" rel=3D"noreferrer" target=3D"_b=
lank">keyutils_1.6.bb</a><br>
index c961fa2..2968a24 100644<br>
--- a/recipes-security/keyutils/<a href=3D"http://keyutils_1.6.bb" rel=3D"n=
oreferrer" target=3D"_blank">keyutils_1.6.bb</a><br>
+++ b/recipes-security/keyutils/<a href=3D"http://keyutils_1.6.bb" rel=3D"n=
oreferrer" target=3D"_blank">keyutils_1.6.bb</a><br>
@@ -19,6 +19,7 @@ SRC_URI =3D &quot;<a href=3D"http://people.redhat.com/dho=
wells/keyutils/$%7BBP%7D.tar.bz2" rel=3D"noreferrer" target=3D"_blank">http=
://people.redhat.com/dhowells/keyutils/${BP}.tar.bz2</a> \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://keyutils-test-fix-output-f=
ormat.patch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://keyutils-fix-error-report-=
by-adding-default-message.patch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://run-ptest \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://fix_library_install_path.p=
atch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
<br>
=C2=A0SRC_URI[md5sum] =3D &quot;191987b0ab46bb5b50efd70a6e6ce808&quot;<br>
-- <br>
2.17.1<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--00000000000013696805891b1ff5--
