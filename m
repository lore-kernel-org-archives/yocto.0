Received: from mail-ua1-f66.google.com (mail-ua1-f66.google.com [209.85.222.66])
 by mx.groups.io with SMTP id smtpd.web09.10095.1575045926511059919
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Nov 2019 08:45:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Mw7Er3/f;
 spf=pass (domain: gmail.com, ip: 209.85.222.66, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f66.google.com with SMTP id d6so6446281uam.11
        for <yocto@lists.yoctoproject.org>; Fri, 29 Nov 2019 08:45:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ir9ECfS4xOM2/iDsUzqNWs0p0ASOvmkn5BNsLybAIwA=;
        b=Mw7Er3/fTYrALkK0H3IISP8V8sT5RfqyR2G2xskGFGtOCQgHqftBQdWigaftH1oWkc
         rg0/o59dWafydu3hFr6M3Eapnq6+QMVQamY26ZMQ3AJ1HgS/r1mvWhaTWv9ueAx6HKSh
         JSdyWBReqBTx8L9MW/JtIRwIqGgrg3Gt4u2U4VQncbmZ383DXSTkHtYj2MMQBI3aFWjg
         zkhJNiGdkt1Gfxp0DLTwAxFQNFIF2+kxD8qsKcyFu3DFncDJ9zbA+GXH/H0x3fpdd6eD
         x9PtqsrTUmeMMqn+KjyDsLEiVzzl1iZ/2dS+xv4MB5tDHZeVvSNsfeVYCkWfKLyvAqPT
         WkXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ir9ECfS4xOM2/iDsUzqNWs0p0ASOvmkn5BNsLybAIwA=;
        b=KJexdndFrbk/QsC0gBHg5J5nV/dIp+QFgQxvPdSiUBk70vs8Lemj0cXnrJxPbFwepP
         b05quBFsJKWfLDgcQ7OOGD50dFDlJignwh2xmW2En+OZh1HVG4t3aS9vmTrLygU9KVi+
         mJ1JSTb0y2HWhMFJ4n68+SP7ITqf6RXv5JU+dFJElDp4VBgNUGya3Zv5PwRD9Tzp9PZY
         ayV1utlv4GozPCWtMx0eCoSOT2yg+PsprQXifnswQWl1SDpOR414FBjRi2lbtsn9rpVV
         sEpwTg4+rYEfowgKiDuqAt4WfxFnweeSwtElz2YEKUr9PHcpXXpgk2tKp59AOp9H4PpE
         WRxg==
X-Gm-Message-State: APjAAAUtCS9WlMFHO+ruiuWgOFTPAGN7ZcnEDltp2xmfXBPpk3Zibj4R
	1kmdFqRBWb/V7U8S4SP6Fo8RnuRTUEKDXynV2UA=
X-Google-Smtp-Source: APXvYqxzYjyw5e2inHpNEnoM012b+6aOO/skL5JEv/5Q54NR07ILJNaEVi9Eewpyi9lvyE6s/7shc84CP6+SgbFSnAE=
X-Received: by 2002:ab0:681:: with SMTP id g1mr9694699uag.93.1575045925453;
 Fri, 29 Nov 2019 08:45:25 -0800 (PST)
MIME-Version: 1.0
References: <20191128174739.101631-1-alex.kanavin@gmail.com> <CAJdd5Ga-11TNZxHnBmmRg3wnn273myiEHjJYXxdXuC0MfeWAAA@mail.gmail.com>
In-Reply-To: <CAJdd5Ga-11TNZxHnBmmRg3wnn273myiEHjJYXxdXuC0MfeWAAA@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 29 Nov 2019 17:45:14 +0100
Message-ID: <CANNYZj8zZBiWaQ5=g=H8CXzAg=ToKdMQSLR3va8jR+5W4AfbXA@mail.gmail.com>
Subject: Re: [yocto] [meta-mingw][PATCH] gettext: adapt for version 0.20
To: Joshua Watt <jpewhacker@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e4438e05987ef422"

--000000000000e4438e05987ef422
Content-Type: text/plain; charset="UTF-8"

On Fri, 29 Nov 2019 at 16:24, Joshua Watt <jpewhacker@gmail.com> wrote:

> On Thu, Nov 28, 2019 at 11:47 AM Alexander Kanavin
> <alex.kanavin@gmail.com> wrote:
> >
> > Drop backported patch (new gettext includes the updates).
> >
> > Drop version from the .bbappend (hopefully no version-specific
> > tweaks will be needed going forward).
>
> I've applied this to master-next, we can pull up master once the
> oe-core patch lands. I'm assuming this will break the current master
> AB builds if it's applied to master without the oe-core patch?
>

It probably will, yes (I didn't test, but it drops a patch that's
apparently needed in 0.19).

Alex



> >
> > Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> > ---
> >  .../fix-gl_cv_prog_as_underscore-test.patch   | 67 -------------------
> >  ...ext_0.19.%.bbappend => gettext_%.bbappend} |  1 -
> >  2 files changed, 68 deletions(-)
> >  delete mode 100644
> recipes-core/gettext/gettext/fix-gl_cv_prog_as_underscore-test.patch
> >  rename recipes-core/gettext/{gettext_0.19.%.bbappend =>
> gettext_%.bbappend} (87%)
> >
> > diff --git
> a/recipes-core/gettext/gettext/fix-gl_cv_prog_as_underscore-test.patch
> b/recipes-core/gettext/gettext/fix-gl_cv_prog_as_underscore-test.patch
> > deleted file mode 100644
> > index 636789f..0000000
> > ---
> a/recipes-core/gettext/gettext/fix-gl_cv_prog_as_underscore-test.patch
> > +++ /dev/null
> > @@ -1,67 +0,0 @@
> > -Backport gnulib fix for mingw into gettext's included version of gnulib
> > -
> > -
> http://git.savannah.gnu.org/cgit/gnulib.git/commit/?id=68b6adebef05670a312fb92b05e7bd089d2ed43a
> > -
> > -Upstream-Status: Backport
> > -Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
> > -
> > ---- a/gettext-runtime/gnulib-m4/asm-underscore.m4
> > -+++ b/gettext-runtime/gnulib-m4/asm-underscore.m4
> > -@@ -27,11 +27,11 @@
> > - #endif
> > - int foo(void) { return 0; }
> > - EOF
> > -      # Look for the assembly language name in the .s file.
> > -      AC_TRY_COMMAND(${CC-cc} $CFLAGS $CPPFLAGS $gl_c_asm_opt
> conftest.c) >/dev/null 2>&1
> > --     if LC_ALL=C grep -E '(^|[^a-zA-Z0-9_])_foo([^a-zA-Z0-9_]|$)'
> conftest.$gl_asmext >/dev/null; then
> > -+     if LC_ALL=C grep -E '(^|[[^a-zA-Z0-9_]])_foo([[^a-zA-Z0-9_]]|$)'
> conftest.$gl_asmext >/dev/null; then
> > -        gl_cv_prog_as_underscore=yes
> > -      else
> > -        gl_cv_prog_as_underscore=no
> > -      fi
> > -      rm -f conftest*
> > ---- a/gettext-runtime/configure
> > -+++ b/gettext-runtime/configure
> > -@@ -24601,11 +24601,11 @@
> > -   { { eval echo "\"\$as_me\":${as_lineno-$LINENO}: \"$ac_try\""; } >&5
> > -   (eval $ac_try) 2>&5
> > -   ac_status=$?
> > -   $as_echo "$as_me:${as_lineno-$LINENO}: \$? = $ac_status" >&5
> > -   test $ac_status = 0; }; } >/dev/null 2>&1
> > --     if LC_ALL=C grep -E '(^|^a-zA-Z0-9_)_foo(^a-zA-Z0-9_|$)'
> conftest.$gl_asmext >/dev/null; then
> > -+     if LC_ALL=C grep -E '(^|[^a-zA-Z0-9_])_foo([^a-zA-Z0-9_]|$)'
> conftest.$gl_asmext >/dev/null; then
> > -        gl_cv_prog_as_underscore=yes
> > -      else
> > -        gl_cv_prog_as_underscore=no
> > -      fi
> > -      rm -f conftest*
> > ---- a/gettext-tools/gnulib-m4/asm-underscore.m4
> > -+++ b/gettext-tools/gnulib-m4/asm-underscore.m4
> > -@@ -27,11 +27,11 @@
> > - #endif
> > - int foo(void) { return 0; }
> > - EOF
> > -      # Look for the assembly language name in the .s file.
> > -      AC_TRY_COMMAND(${CC-cc} $CFLAGS $CPPFLAGS $gl_c_asm_opt
> conftest.c) >/dev/null 2>&1
> > --     if LC_ALL=C grep -E '(^|[^a-zA-Z0-9_])_foo([^a-zA-Z0-9_]|$)'
> conftest.$gl_asmext >/dev/null; then
> > -+     if LC_ALL=C grep -E '(^|[[^a-zA-Z0-9_]])_foo([[^a-zA-Z0-9_]]|$)'
> conftest.$gl_asmext >/dev/null; then
> > -        gl_cv_prog_as_underscore=yes
> > -      else
> > -        gl_cv_prog_as_underscore=no
> > -      fi
> > -      rm -f conftest*
> > ---- a/gettext-tools/configure
> > -+++ b/gettext-tools/configure
> > -@@ -32284,11 +32284,11 @@
> > -   { { eval echo "\"\$as_me\":${as_lineno-$LINENO}: \"$ac_try\""; } >&5
> > -   (eval $ac_try) 2>&5
> > -   ac_status=$?
> > -   $as_echo "$as_me:${as_lineno-$LINENO}: \$? = $ac_status" >&5
> > -   test $ac_status = 0; }; } >/dev/null 2>&1
> > --     if LC_ALL=C grep -E '(^|^a-zA-Z0-9_)_foo(^a-zA-Z0-9_|$)'
> conftest.$gl_asmext >/dev/null; then
> > -+     if LC_ALL=C grep -E '(^|[^a-zA-Z0-9_])_foo([^a-zA-Z0-9_]|$)'
> conftest.$gl_asmext >/dev/null; then
> > -        gl_cv_prog_as_underscore=yes
> > -      else
> > -        gl_cv_prog_as_underscore=no
> > -      fi
> > -      rm -f conftest*
> > diff --git a/recipes-core/gettext/gettext_0.19.%.bbappend
> b/recipes-core/gettext/gettext_%.bbappend
> > similarity index 87%
> > rename from recipes-core/gettext/gettext_0.19.%.bbappend
> > rename to recipes-core/gettext/gettext_%.bbappend
> > index 21749f3..d518698 100644
> > --- a/recipes-core/gettext/gettext_0.19.%.bbappend
> > +++ b/recipes-core/gettext/gettext_%.bbappend
> > @@ -2,7 +2,6 @@ EXTRA_OECONF_append_mingw32 = " --enable-static"
> >
> >  FILESEXTRAPATHS_prepend_mingw32 := "${THISDIR}/${BPN}:"
> >  SRC_URI_append_mingw32 = " \
> > -               file://fix-gl_cv_prog_as_underscore-test.patch \
> >                 "
> >
> >  FILES_libgettextlib_mingw32 = "${bindir}/libgettextlib-*.dll"
> > --
> > 2.17.1
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> >
> > View/Reply Online (#47462):
> https://lists.yoctoproject.org/g/yocto/message/47462
> > Mute This Topic: https://lists.yoctoproject.org/mt/64260047/3616693
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [
> JPEWhacker@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
>

--000000000000e4438e05987ef422
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, 29 Nov 2019 at 16:24, Joshua Watt=
 &lt;<a href=3D"mailto:jpewhacker@gmail.com">jpewhacker@gmail.com</a>&gt; w=
rote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">On Thu, Nov 28, 2019 at 11:47 AM Alexander Kanavin<br>
&lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavi=
n@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Drop backported patch (new gettext includes the updates).<br>
&gt;<br>
&gt; Drop version from the .bbappend (hopefully no version-specific<br>
&gt; tweaks will be needed going forward).<br>
<br>
I&#39;ve applied this to master-next, we can pull up master once the<br>
oe-core patch lands. I&#39;m assuming this will break the current master<br=
>
AB builds if it&#39;s applied to master without the oe-core patch?<br></blo=
ckquote><div><br></div><div>It probably will, yes (I didn&#39;t test, but i=
t drops a patch that&#39;s apparently needed in 0.19).<br></div><div><br></=
div><div>Alex<br></div><div><br></div><div>=C2=A0</div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">
&gt;<br>
&gt; Signed-off-by: Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gm=
ail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 .../fix-gl_cv_prog_as_underscore-test.patch=C2=A0 =C2=A0| 67 ---=
----------------<br>
&gt;=C2=A0 ...ext_0.19.%.bbappend =3D&gt; gettext_%.bbappend} |=C2=A0 1 -<b=
r>
&gt;=C2=A0 2 files changed, 68 deletions(-)<br>
&gt;=C2=A0 delete mode 100644 recipes-core/gettext/gettext/fix-gl_cv_prog_a=
s_underscore-test.patch<br>
&gt;=C2=A0 rename recipes-core/gettext/{gettext_0.19.%.bbappend =3D&gt; get=
text_%.bbappend} (87%)<br>
&gt;<br>
&gt; diff --git a/recipes-core/gettext/gettext/fix-gl_cv_prog_as_underscore=
-test.patch b/recipes-core/gettext/gettext/fix-gl_cv_prog_as_underscore-tes=
t.patch<br>
&gt; deleted file mode 100644<br>
&gt; index 636789f..0000000<br>
&gt; --- a/recipes-core/gettext/gettext/fix-gl_cv_prog_as_underscore-test.p=
atch<br>
&gt; +++ /dev/null<br>
&gt; @@ -1,67 +0,0 @@<br>
&gt; -Backport gnulib fix for mingw into gettext&#39;s included version of =
gnulib<br>
&gt; -<br>
&gt; -<a href=3D"http://git.savannah.gnu.org/cgit/gnulib.git/commit/?id=3D6=
8b6adebef05670a312fb92b05e7bd089d2ed43a" rel=3D"noreferrer" target=3D"_blan=
k">http://git.savannah.gnu.org/cgit/gnulib.git/commit/?id=3D68b6adebef05670=
a312fb92b05e7bd089d2ed43a</a><br>
&gt; -<br>
&gt; -Upstream-Status: Backport<br>
&gt; -Signed-off-by: Nathan Rossi &lt;<a href=3D"mailto:nathan@nathanrossi.=
com" target=3D"_blank">nathan@nathanrossi.com</a>&gt;<br>
&gt; -<br>
&gt; ---- a/gettext-runtime/gnulib-m4/asm-underscore.m4<br>
&gt; -+++ b/gettext-runtime/gnulib-m4/asm-underscore.m4<br>
&gt; -@@ -27,11 +27,11 @@<br>
&gt; - #endif<br>
&gt; - int foo(void) { return 0; }<br>
&gt; - EOF<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 # Look for the assembly language name in the .s =
file.<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 AC_TRY_COMMAND(${CC-cc} $CFLAGS $CPPFLAGS $gl_c_=
asm_opt conftest.c) &gt;/dev/null 2&gt;&amp;1<br>
&gt; --=C2=A0 =C2=A0 =C2=A0if LC_ALL=3DC grep -E &#39;(^|[^a-zA-Z0-9_])_foo=
([^a-zA-Z0-9_]|$)&#39; conftest.$gl_asmext &gt;/dev/null; then<br>
&gt; -+=C2=A0 =C2=A0 =C2=A0if LC_ALL=3DC grep -E &#39;(^|[[^a-zA-Z0-9_]])_f=
oo([[^a-zA-Z0-9_]]|$)&#39; conftest.$gl_asmext &gt;/dev/null; then<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 gl_cv_prog_as_underscore=3Dyes<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 else<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 gl_cv_prog_as_underscore=3Dno<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 fi<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 rm -f conftest*<br>
&gt; ---- a/gettext-runtime/configure<br>
&gt; -+++ b/gettext-runtime/configure<br>
&gt; -@@ -24601,11 +24601,11 @@<br>
&gt; -=C2=A0 =C2=A0{ { eval echo &quot;\&quot;\$as_me\&quot;:${as_lineno-$L=
INENO}: \&quot;$ac_try\&quot;&quot;; } &gt;&amp;5<br>
&gt; -=C2=A0 =C2=A0(eval $ac_try) 2&gt;&amp;5<br>
&gt; -=C2=A0 =C2=A0ac_status=3D$?<br>
&gt; -=C2=A0 =C2=A0$as_echo &quot;$as_me:${as_lineno-$LINENO}: \$? =3D $ac_=
status&quot; &gt;&amp;5<br>
&gt; -=C2=A0 =C2=A0test $ac_status =3D 0; }; } &gt;/dev/null 2&gt;&amp;1<br=
>
&gt; --=C2=A0 =C2=A0 =C2=A0if LC_ALL=3DC grep -E &#39;(^|^a-zA-Z0-9_)_foo(^=
a-zA-Z0-9_|$)&#39; conftest.$gl_asmext &gt;/dev/null; then<br>
&gt; -+=C2=A0 =C2=A0 =C2=A0if LC_ALL=3DC grep -E &#39;(^|[^a-zA-Z0-9_])_foo=
([^a-zA-Z0-9_]|$)&#39; conftest.$gl_asmext &gt;/dev/null; then<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 gl_cv_prog_as_underscore=3Dyes<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 else<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 gl_cv_prog_as_underscore=3Dno<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 fi<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 rm -f conftest*<br>
&gt; ---- a/gettext-tools/gnulib-m4/asm-underscore.m4<br>
&gt; -+++ b/gettext-tools/gnulib-m4/asm-underscore.m4<br>
&gt; -@@ -27,11 +27,11 @@<br>
&gt; - #endif<br>
&gt; - int foo(void) { return 0; }<br>
&gt; - EOF<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 # Look for the assembly language name in the .s =
file.<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 AC_TRY_COMMAND(${CC-cc} $CFLAGS $CPPFLAGS $gl_c_=
asm_opt conftest.c) &gt;/dev/null 2&gt;&amp;1<br>
&gt; --=C2=A0 =C2=A0 =C2=A0if LC_ALL=3DC grep -E &#39;(^|[^a-zA-Z0-9_])_foo=
([^a-zA-Z0-9_]|$)&#39; conftest.$gl_asmext &gt;/dev/null; then<br>
&gt; -+=C2=A0 =C2=A0 =C2=A0if LC_ALL=3DC grep -E &#39;(^|[[^a-zA-Z0-9_]])_f=
oo([[^a-zA-Z0-9_]]|$)&#39; conftest.$gl_asmext &gt;/dev/null; then<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 gl_cv_prog_as_underscore=3Dyes<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 else<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 gl_cv_prog_as_underscore=3Dno<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 fi<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 rm -f conftest*<br>
&gt; ---- a/gettext-tools/configure<br>
&gt; -+++ b/gettext-tools/configure<br>
&gt; -@@ -32284,11 +32284,11 @@<br>
&gt; -=C2=A0 =C2=A0{ { eval echo &quot;\&quot;\$as_me\&quot;:${as_lineno-$L=
INENO}: \&quot;$ac_try\&quot;&quot;; } &gt;&amp;5<br>
&gt; -=C2=A0 =C2=A0(eval $ac_try) 2&gt;&amp;5<br>
&gt; -=C2=A0 =C2=A0ac_status=3D$?<br>
&gt; -=C2=A0 =C2=A0$as_echo &quot;$as_me:${as_lineno-$LINENO}: \$? =3D $ac_=
status&quot; &gt;&amp;5<br>
&gt; -=C2=A0 =C2=A0test $ac_status =3D 0; }; } &gt;/dev/null 2&gt;&amp;1<br=
>
&gt; --=C2=A0 =C2=A0 =C2=A0if LC_ALL=3DC grep -E &#39;(^|^a-zA-Z0-9_)_foo(^=
a-zA-Z0-9_|$)&#39; conftest.$gl_asmext &gt;/dev/null; then<br>
&gt; -+=C2=A0 =C2=A0 =C2=A0if LC_ALL=3DC grep -E &#39;(^|[^a-zA-Z0-9_])_foo=
([^a-zA-Z0-9_]|$)&#39; conftest.$gl_asmext &gt;/dev/null; then<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 gl_cv_prog_as_underscore=3Dyes<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 else<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 gl_cv_prog_as_underscore=3Dno<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 fi<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 rm -f conftest*<br>
&gt; diff --git a/recipes-core/gettext/gettext_0.19.%.bbappend b/recipes-co=
re/gettext/gettext_%.bbappend<br>
&gt; similarity index 87%<br>
&gt; rename from recipes-core/gettext/gettext_0.19.%.bbappend<br>
&gt; rename to recipes-core/gettext/gettext_%.bbappend<br>
&gt; index 21749f3..d518698 100644<br>
&gt; --- a/recipes-core/gettext/gettext_0.19.%.bbappend<br>
&gt; +++ b/recipes-core/gettext/gettext_%.bbappend<br>
&gt; @@ -2,7 +2,6 @@ EXTRA_OECONF_append_mingw32 =3D &quot; --enable-static=
&quot;<br>
&gt;<br>
&gt;=C2=A0 FILESEXTRAPATHS_prepend_mingw32 :=3D &quot;${THISDIR}/${BPN}:&qu=
ot;<br>
&gt;=C2=A0 SRC_URI_append_mingw32 =3D &quot; \<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://fix-gl_=
cv_prog_as_underscore-test.patch \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br=
>
&gt;<br>
&gt;=C2=A0 FILES_libgettextlib_mingw32 =3D &quot;${bindir}/libgettextlib-*.=
dll&quot;<br>
&gt; --<br>
&gt; 2.17.1<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt;<br>
&gt; View/Reply Online (#47462): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/47462" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/47462</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/64260047=
/3616693" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/mt/64260047/3616693</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a>=C2=A0 [<a href=3D"mailto:JPEWhacker@gmail.com" target=3D"_blank"=
>JPEWhacker@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
</blockquote></div></div>

--000000000000e4438e05987ef422--
