Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E61E0E00B49; Fri, 19 May 2017 01:56:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.195 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.195 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f195.google.com (mail-wr0-f195.google.com
	[209.85.128.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41F74E00B43
	for <yocto@lists.yoctoproject.org>;
	Fri, 19 May 2017 01:56:48 -0700 (PDT)
Received: by mail-wr0-f195.google.com with SMTP id g12so2134972wrg.2
	for <yocto@lists.yoctoproject.org>;
	Fri, 19 May 2017 01:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/ffI3oKFSmaczBTkTPZxmYN+XdSH4OMHVN1QBuydxgo=;
	b=GJ9IZbneJnHaXY1f6Q5jptT1uJu7RPHCWH1cKrdo74ZHHoVfWzMIp6JhycFiQz1WNz
	hKyBxMsKGbDqEo5FEAzapRsC8r7q/VoZsLJa7qQQiIO2GTgr74o/lLLCwEosr12GPdW3
	T+uBmA/FaUPCSQ1HvcqRVcn4txC0L6Qokkgo2bm9jLiOFWO98VH30o0o/h12kjOM882G
	ftUU8IQyIznV/Dg4qDY+PaMmoD664ziLeJWcZ10sPK4WWSp5a5XeBMt1dOibwyIZLRjd
	vXKY7538djS99Bxr/cL3LpE+Dy7lDnJKWIaj2Pk6kiAETE5ZbRF+bWuoFZI4yjqnJoMB
	miDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/ffI3oKFSmaczBTkTPZxmYN+XdSH4OMHVN1QBuydxgo=;
	b=P2gRp/okPXgWcYVLCHe2yZuiiSfSUtP0W2Ocv26tyzk8kpj7m94UcPPW2arhrZMgUp
	3AjJKsjbbzaEE0DVtBD+vUVXuelMZpzW92JpnSadV4EjVCmFHuNB3dDukOdnKiPNBwWc
	I8ba59DMnDHdp30P96zVMXwdAe83ii0TqBpjeEx0yEhTdYdd1Zf2ZVseiCNY2UTkwTgT
	/a3Zr5TsHzx/9vDhV/ZVTlAnWq0opKg4oZ6bVKStXRMGwjvseO+SY4sCVLc8zlTftaMc
	D4PgTZgM7Le4WR6WxQZQnKPH7Z+TD6vKAUv4IRyeza76Y1LqqoAR0TUjqYk01KEprmty
	sThw==
X-Gm-Message-State: AODbwcCJHYlXRXm2fhrnSdmHZoagZ6kuMFTFzhFigr/agfPQNCWUSGMX
	1De71AZl9KC539okTPVCQ0tOZXLoCg==
X-Received: by 10.80.177.8 with SMTP id k8mr6336390edd.4.1495184207782; Fri,
	19 May 2017 01:56:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.213.154 with HTTP; Fri, 19 May 2017 01:56:47 -0700 (PDT)
In-Reply-To: <20170424142954.21979-1-Martin.Jansa@gmail.com>
References: <20170420162022.20237-1-Martin.Jansa@gmail.com>
	<20170424142954.21979-1-Martin.Jansa@gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 19 May 2017 10:56:47 +0200
Message-ID: <CA+chaQeb3wYwdky1E=WTsOsM1fpaEqMbGtkuYxU4D+WydNwm4g@mail.gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [PATCHv2][meta-gplv2] gnutls: add older gnutls compatible with nettle
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
X-List-Received-Date: Fri, 19 May 2017 08:56:53 -0000
Content-Type: multipart/alternative; boundary="f403045c262e9427eb054fdcb3f5"

--f403045c262e9427eb054fdcb3f5
Content-Type: text/plain; charset="UTF-8"

ping

This is needed in both pyro and master branches. And possibly in morty
branch, but I haven't seen any replies about it in my RFC.

On Mon, Apr 24, 2017 at 4:29 PM, Martin Jansa <martin.jansa@gmail.com>
wrote:

> * gnutls depends on nettle-3.1* since 3.4.0:
>   The requirement for nettle was bumped from 3.0 to 3.1 in gnutls_3_4_0
>   https://gitlab.com/gnutls/gnutls/commit/c84129af91b21d33ffe086e5076327
> 71b0e76498
>   and from 2.7 to 3.0 a bit earlier also in gnutls_3_4_0
>   https://gitlab.com/gnutls/gnutls/commit/3fa80cf68919f07b3351b2722278ba
> 463d6e731c
> * add recipe for last release in 3.3 branch which is compatible
>   with nettle 2.7.1 used in meta-gplv2
>
> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> ---
>  .../gnutls/configure.ac-fix-sed-command.patch      | 31
> ++++++++++++++++++++++
>  recipes-support/gnutls/gnutls_3.3.27.bb            | 23 ++++++++++++++++
>  2 files changed, 54 insertions(+)
>  create mode 100644 recipes-support/gnutls/gnutls/
> configure.ac-fix-sed-command.patch
>  create mode 100644 recipes-support/gnutls/gnutls_3.3.27.bb
>
> diff --git a/recipes-support/gnutls/gnutls/configure.ac-fix-sed-command.patch
> b/recipes-support/gnutls/gnutls/configure.ac-fix-sed-command.patch
> new file mode 100644
> index 0000000..44a9934
> --- /dev/null
> +++ b/recipes-support/gnutls/gnutls/configure.ac-fix-sed-command.patch
> @@ -0,0 +1,31 @@
> +From eb93aa7b986c84da60a3db40afb29d1a70c50223 Mon Sep 17 00:00:00 2001
> +From: Robert Yang <liezhi.yang@windriver.com>
> +Date: Sat, 17 Jan 2015 17:02:15 +0000
> +Subject: [PATCH] configure.ac: fix sed command
> +
> +The "sed 's/.bak//g'" matchs "bitbake", which would cause strange errors
> +when the S contains "bitbake", fix to "sed 's/\.bak$//'`"
> +
> +Upstream-Status: Pending
> +
> +Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> +---
> + configure.ac | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/configure.ac b/configure.ac
> +index c6818a0..1c4582d 100644
> +--- a/configure.ac
> ++++ b/configure.ac
> +@@ -466,7 +466,7 @@ if test "$NEED_LIBOPTS_DIR" = "true";then
> +       dnl replace libopts-generated files with distributed backups, if
> present
> +       missing_baks=
> +       for i in ${srcdir}/src/*-args.c.bak ${srcdir}/src/*-args.h.bak; do
> +-              nam=`echo $i|sed 's/.bak//g'`
> ++              nam=`echo $i|sed 's/\.bak$//'`
> +               if test -f $i;then
> +                       cp -f $i $nam
> +               else
> +--
> +2.0.1
> +
> diff --git a/recipes-support/gnutls/gnutls_3.3.27.bb
> b/recipes-support/gnutls/gnutls_3.3.27.bb
> new file mode 100644
> index 0000000..c98da34
> --- /dev/null
> +++ b/recipes-support/gnutls/gnutls_3.3.27.bb
> @@ -0,0 +1,23 @@
> +require recipes-support/gnutls/gnutls.inc
> +
> +LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504 \
> +                    file://COPYING.LESSER;md5=
> a6f89e2100d9b6cdffcea4f398e37343"
> +
> +FILESEXTRAPATHS_prepend = "${COREBASE}/meta/recipes-
> support/${BPN}/${BPN}:"
> +
> +SRC_URI += " \
> +    file://correct_rpl_gettimeofday_signature.patch \
> +    file://configure.ac-fix-sed-command.patch \
> +    file://use-pkg-config-to-locate-zlib.patch \
> +"
> +SRC_URI[md5sum] = "8ee8cebd7f7575b11f232766a21c31d3"
> +SRC_URI[sha256sum] = "8dfda16c158ef5c134010d51d1a91d
> 02aa5d43b8cb711b1572650a7ffb56b17f"
> +
> +# This version doesn't support this option added in newer gnutls
> +# ERROR: gnutls-3.3.27-r0 do_configure: QA Issue: gnutls: configure was
> passed unrecognised options: --with-idn [unknown-configure-option]
> +PACKAGECONFIG[libidn] = ""
> +# but it still has the libidn dependency, without this option
> +EXTRA_OECONF += "--disable-crywrap"
> +
> +# This version doesn't support this option added in newer gnutls
> +EXTRA_OECONF_remove = "--without-libunistring-prefix"
> --
> 2.12.2
>
>

--f403045c262e9427eb054fdcb3f5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">ping<div><br></div><div>This is needed in both pyro and ma=
ster branches. And possibly in morty branch, but I haven&#39;t seen any rep=
lies about it in my RFC.</div></div><div class=3D"gmail_extra"><br><div cla=
ss=3D"gmail_quote">On Mon, Apr 24, 2017 at 4:29 PM, Martin Jansa <span dir=
=3D"ltr">&lt;<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">ma=
rtin.jansa@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><div class=3D"HOEnZb"><div class=3D"h5">* gnutls depends on nettle-3.1* s=
ince 3.4.0:<br>
=C2=A0 The requirement for nettle was bumped from 3.0 to 3.1 in gnutls_3_4_=
0<br>
=C2=A0 <a href=3D"https://gitlab.com/gnutls/gnutls/commit/c84129af91b21d33f=
fe086e507632771b0e76498" rel=3D"noreferrer" target=3D"_blank">https://gitla=
b.com/gnutls/<wbr>gnutls/commit/<wbr>c84129af91b21d33ffe086e5076327<wbr>71b=
0e76498</a><br>
=C2=A0 and from 2.7 to 3.0 a bit earlier also in gnutls_3_4_0<br>
=C2=A0 <a href=3D"https://gitlab.com/gnutls/gnutls/commit/3fa80cf68919f07b3=
351b2722278ba463d6e731c" rel=3D"noreferrer" target=3D"_blank">https://gitla=
b.com/gnutls/<wbr>gnutls/commit/<wbr>3fa80cf68919f07b3351b2722278ba<wbr>463=
d6e731c</a><br>
* add recipe for last release in 3.3 branch which is compatible<br>
=C2=A0 with nettle 2.7.1 used in meta-gplv2<br>
<br>
Signed-off-by: Martin Jansa &lt;<a href=3D"mailto:Martin.Jansa@gmail.com">M=
artin.Jansa@gmail.com</a>&gt;<br>
---<br>
=C2=A0.../gnutls/configure.ac-fix-<wbr>sed-command.patch=C2=A0 =C2=A0 =C2=
=A0 | 31 ++++++++++++++++++++++<br>
=C2=A0recipes-support/gnutls/<a href=3D"http://gnutls_3.3.27.bb" rel=3D"nor=
eferrer" target=3D"_blank">gnutls_<wbr>3.3.27.bb</a>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 | 23 ++++++++++++++++<br>
=C2=A02 files changed, 54 insertions(+)<br>
=C2=A0create mode 100644 recipes-support/gnutls/gnutls/<wbr>configure.ac-fi=
x-sed-command.<wbr>patch<br>
=C2=A0create mode 100644 recipes-support/gnutls/<a href=3D"http://gnutls_3.=
3.27.bb" rel=3D"noreferrer" target=3D"_blank">gnutls_<wbr>3.3.27.bb</a><br>
<br>
diff --git a/recipes-support/gnutls/<wbr>gnutls/configure.ac-fix-sed-<wbr>c=
ommand.patch b/recipes-support/gnutls/<wbr>gnutls/configure.ac-fix-sed-<wbr=
>command.patch<br>
new file mode 100644<br>
index 0000000..44a9934<br>
--- /dev/null<br>
+++ b/recipes-support/gnutls/<wbr>gnutls/configure.ac-fix-sed-<wbr>command.=
patch<br>
@@ -0,0 +1,31 @@<br>
+From eb93aa7b986c84da60a3db40afb29d<wbr>1a70c50223 Mon Sep 17 00:00:00 200=
1<br>
+From: Robert Yang &lt;<a href=3D"mailto:liezhi.yang@windriver.com">liezhi.=
yang@windriver.com</a>&gt;<br>
+Date: Sat, 17 Jan 2015 17:02:15 +0000<br>
+Subject: [PATCH] <a href=3D"http://configure.ac" rel=3D"noreferrer" target=
=3D"_blank">configure.ac</a>: fix sed command<br>
+<br>
+The &quot;sed &#39;s/.bak//g&#39;&quot; matchs &quot;bitbake&quot;, which =
would cause strange errors<br>
+when the S contains &quot;bitbake&quot;, fix to &quot;sed &#39;s/\.bak$//&=
#39;`&quot;<br>
+<br>
+Upstream-Status: Pending<br>
+<br>
+Signed-off-by: Robert Yang &lt;<a href=3D"mailto:liezhi.yang@windriver.com=
">liezhi.yang@windriver.com</a>&gt;<br>
+---<br>
+ <a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_blank">conf=
igure.ac</a> | 2 +-<br>
+ 1 file changed, 1 insertion(+), 1 deletion(-)<br>
+<br>
+diff --git a/<a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"=
_blank">configure.ac</a> b/<a href=3D"http://configure.ac" rel=3D"noreferre=
r" target=3D"_blank">configure.ac</a><br>
+index c6818a0..1c4582d 100644<br>
+--- a/<a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_blank"=
>configure.ac</a><br>
++++ b/<a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_blank"=
>configure.ac</a><br>
+@@ -466,7 +466,7 @@ if test &quot;$NEED_LIBOPTS_DIR&quot; =3D &quot;true&q=
uot;;then<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0dnl replace libopts-generated files with distri=
buted backups, if present<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0missing_baks=3D<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0for i in ${srcdir}/src/*-args.c.bak ${srcdir}/s=
rc/*-args.h.bak; do<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 nam=3D`echo $i|sed &#39;=
s/.bak//g&#39;`<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 nam=3D`echo $i|sed &#39;=
s/\.bak$//&#39;`<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if test -f $i;then<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0cp -f $i $nam<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
+--<br>
+2.0.1<br>
+<br>
diff --git a/recipes-support/gnutls/<a href=3D"http://gnutls_3.3.27.bb" rel=
=3D"noreferrer" target=3D"_blank">gnutl<wbr>s_3.3.27.bb</a> b/recipes-suppo=
rt/gnutls/<a href=3D"http://gnutls_3.3.27.bb" rel=3D"noreferrer" target=3D"=
_blank">gnutl<wbr>s_3.3.27.bb</a><br>
new file mode 100644<br>
</div></div>index 0000000..c98da34<br>
<span class=3D"">--- /dev/null<br>
+++ b/recipes-support/gnutls/<a href=3D"http://gnutls_3.3.27.bb" rel=3D"nor=
eferrer" target=3D"_blank">gnutl<wbr>s_3.3.27.bb</a><br>
@@ -0,0 +1,23 @@<br>
+require recipes-support/gnutls/gnutls.<wbr>inc<br>
+<br>
+LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D<wbr>d32239bcb673463ab874e=
80d47fae5<wbr>04 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file=
://COPYING.LESSER;md5=3D<wbr>a6f89e2100d9b6cdffcea4f398e373<wbr>43&quot;<br=
>
+<br>
+FILESEXTRAPATHS_prepend =3D &quot;${COREBASE}/meta/recipes-<wbr>support/${=
BPN}/${BPN}:&quot;<br>
+<br>
+SRC_URI +=3D &quot; \<br>
+=C2=A0 =C2=A0 file://correct_rpl_<wbr>gettimeofday_signature.patch \<br>
+=C2=A0 =C2=A0 file://configure.ac-fix-sed-<wbr>command.patch \<br>
+=C2=A0 =C2=A0 file://use-pkg-config-to-<wbr>locate-zlib.patch \<br>
+&quot;<br>
+SRC_URI[md5sum] =3D &quot;<wbr>8ee8cebd7f7575b11f232766a21c31<wbr>d3&quot;=
<br>
+SRC_URI[sha256sum] =3D &quot;<wbr>8dfda16c158ef5c134010d51d1a91d<wbr>02aa5=
d43b8cb711b1572650a7ffb56<wbr>b17f&quot;<br>
+<br>
+# This version doesn&#39;t support this option added in newer gnutls<br>
+# ERROR: gnutls-3.3.27-r0 do_configure: QA Issue: gnutls: configure was pa=
ssed unrecognised options: --with-idn [unknown-configure-option]<br>
+PACKAGECONFIG[libidn] =3D &quot;&quot;<br>
</span>+# but it still has the libidn dependency, without this option<br>
+EXTRA_OECONF +=3D &quot;--disable-crywrap&quot;<br>
<div class=3D"HOEnZb"><div class=3D"h5">+<br>
+# This version doesn&#39;t support this option added in newer gnutls<br>
+EXTRA_OECONF_remove =3D &quot;--without-libunistring-<wbr>prefix&quot;<br>
--<br>
2.12.2<br>
<br>
</div></div></blockquote></div><br></div>

--f403045c262e9427eb054fdcb3f5--
