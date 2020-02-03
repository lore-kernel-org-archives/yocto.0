Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.1311.1580750467142942615
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Feb 2020 09:21:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kjcQBQXk;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: alex.kanavin@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE4A7E016A1; Mon,  3 Feb 2020 09:21:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.217.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C671E00726
	for <yocto@yoctoproject.org>; Mon,  3 Feb 2020 09:21:04 -0800 (PST)
Received: by mail-vs1-f48.google.com with SMTP id b79so9415840vsd.9
        for <yocto@yoctoproject.org>; Mon, 03 Feb 2020 09:21:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VOrwn9lW6mMsz2h+smP9Cd5xXQ3Tsr2cYAeqhuu4tT4=;
        b=kjcQBQXkKGd/YcQAaAqPU7MCTrJaZIRzGipgKZ9AOUuXYYET/8d+/1dE/efIKvfX71
         jLCXAvF3rWlEAzI+GZNeZZHGTv8PZKSiaZIsUm655BgKXHL8bZBZDmG5vqHvA9kVULKf
         h3q2gyT/iNsckqdenF4wQ384cxR9jSWDb8Mwm9bwTgY7qkw/GpzWa7EJ0irPfA4rIXbx
         J1oGUWdwJt/sQyfW2s7tUsYPnulZN5S3MgYhxRFWaWYgICTgqPUbd8v5XIWbcNf6vFfW
         q44I0re6foEQqt9fh22FnydRG5pYqoZiMVtLwhMbOrjyPKGpLBJwJvIFx6Wm9DCVuU4S
         qZNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VOrwn9lW6mMsz2h+smP9Cd5xXQ3Tsr2cYAeqhuu4tT4=;
        b=rNWmMjSptcPjyAaqDcvOs+kSROtlEvM5ZH4ovi5Rn5Fbzb2a16g+kAPGUky8YcRk7t
         i4UKkbVCZy7qq61W/Hv4Y0Cf24wk7yWorBdzQp57w+EWIhLKF6dTSE6DHcjQ9/N9cdJx
         MYdNDNsytlmAgI/eDegqSA4dyqyuQAp08oa8tRxhA+ChGmQ0LdZq5vAE8Hd9fm0D+oMq
         XZmz3Y650n/o/7z+YcFXoGSUCl1KYblzQmMlrswmcwbcbdz884rlLIXXEtAaFAYpkT/k
         z+HfqOX7V6748qRXXik+IZnWhDCZyku7ISrizoXaSPnNhQlPlzgxvlBKIrp6XtjebSYY
         RY9w==
X-Gm-Message-State: APjAAAViSvDP0ewPFa0WFtUAVz+XamYjllL7OKBou0D2vdGEMvPliA0z
	Q2t8uzlVIPxhYz61ocDkglEu8Cl0+Gts8We2meM=
X-Google-Smtp-Source: APXvYqzN/QEBawIbpiNlIW/ZfhJIpg1DhJb/klVaO3JuuuXXoRO/zkKKXTQN38gsgHuvGRMIgyaG6Lh8ptkOAHZDIR0=
X-Received: by 2002:a05:6102:405:: with SMTP id d5mr14983634vsq.94.1580750463722;
 Mon, 03 Feb 2020 09:21:03 -0800 (PST)
MIME-Version: 1.0
References: <1579159390-152104-1-git-send-email-changqing.li@windriver.com>
In-Reply-To: <1579159390-152104-1-git-send-email-changqing.li@windriver.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 3 Feb 2020 18:21:40 +0100
Message-ID: <CANNYZj_8UoM7Su3zvh_riOpDmjauM2O819F_os+W4ujEOCRKfw@mail.gmail.com>
Subject: Re: [yocto] [meta-gplv2][PATCH] bison: fix builds with gettext 0.20.x
To: Changqing Li <changqing.li@windriver.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000de6992059daf2593"

--000000000000de6992059daf2593
Content-Type: text/plain; charset="UTF-8"

Ping :)

Alex

On Thu, 16 Jan 2020 at 08:23, Changqing Li <changqing.li@windriver.com>
wrote:

> From: Changqing Li <changqing.li@windriver.com>
>
> Fix configure error like:
> error: possibly undefined macro: gl_AC_HEADER_STDINT_H
>
> Signed-off-by: Changqing Li <changqing.li@windriver.com>
> ---
>  recipes-devtools/bison/bison/bison-2.3_m4.patch | 121
> ++++++++++++------------
>  1 file changed, 61 insertions(+), 60 deletions(-)
>
> diff --git a/recipes-devtools/bison/bison/bison-2.3_m4.patch
> b/recipes-devtools/bison/bison/bison-2.3_m4.patch
> index 348ce1d..626bc42 100644
> --- a/recipes-devtools/bison/bison/bison-2.3_m4.patch
> +++ b/recipes-devtools/bison/bison/bison-2.3_m4.patch
> @@ -76,34 +76,35 @@ Upstream-Status: Pending
>  +])
>  --- /dev/null
>  +++ bison-1.875/m4/uintmax_t.m4
> -@@ -0,0 +1,29 @@
> -+# uintmax_t.m4 serial 6 (gettext-0.11)
> -+dnl Copyright (C) 1997-2002 Free Software Foundation, Inc.
> -+dnl This file is free software, distributed under the terms of the GNU
> -+dnl General Public License.  As a special exception to the GNU General
> -+dnl Public License, this file may be distributed as part of a program
> -+dnl that contains a configuration script generated by Autoconf, under
> -+dnl the same distribution terms as the rest of that program.
> +@@ -0,0 +1,30 @@
> ++# uintmax_t.m4 serial 12 (gettext-0.20.1)
> ++dnl Copyright (C) 1997-2004, 2007-2019 Free Software Foundation, Inc.
> ++dnl This file is free software; the Free Software Foundation
> ++dnl gives unlimited permission to copy and/or distribute it,
> ++dnl with or without modifications, as long as this notice is preserved.
>  +
>  +dnl From Paul Eggert.
>  +
> -+AC_PREREQ(2.13)
> ++AC_PREREQ([2.13])
>  +
> -+# Define uintmax_t to `unsigned long' or `unsigned long long'
> -+# if <inttypes.h> does not exist.
> ++# Define uintmax_t to 'unsigned long' or 'unsigned long long'
> ++# if it is not already defined in <stdint.h> or <inttypes.h>.
>  +
> -+AC_DEFUN([jm_AC_TYPE_UINTMAX_T],
> ++AC_DEFUN([gl_AC_TYPE_UINTMAX_T],
>  +[
> -+  AC_REQUIRE([jm_AC_HEADER_INTTYPES_H])
> -+  AC_REQUIRE([jm_AC_HEADER_STDINT_H])
> -+  if test $jm_ac_cv_header_inttypes_h = no && test
> $jm_ac_cv_header_stdint_h = no; then
> -+    AC_REQUIRE([jm_AC_TYPE_UNSIGNED_LONG_LONG])
> -+    test $ac_cv_type_unsigned_long_long = yes \
> ++  AC_REQUIRE([gl_AC_HEADER_INTTYPES_H])
> ++  AC_REQUIRE([gl_AC_HEADER_STDINT_H])
> ++  if test $gl_cv_header_inttypes_h = no && test $gl_cv_header_stdint_h =
> no; then
> ++    AC_REQUIRE([AC_TYPE_UNSIGNED_LONG_LONG_INT])
> ++    test $ac_cv_type_unsigned_long_long_int = yes \
>  +      && ac_type='unsigned long long' \
>  +      || ac_type='unsigned long'
> -+    AC_DEFINE_UNQUOTED(uintmax_t, $ac_type,
> -+  [Define to unsigned long or unsigned long long
> -+   if <inttypes.h> and <stdint.h> don't define.])
> ++    AC_DEFINE_UNQUOTED([uintmax_t], [$ac_type],
> ++      [Define to unsigned long or unsigned long long
> ++       if <stdint.h> and <inttypes.h> don't define.])
> ++  else
> ++    AC_DEFINE([HAVE_UINTMAX_T], [1],
> ++      [Define if you have the 'uintmax_t' type in <stdint.h> or
> <inttypes.h>.])
>  +  fi
>  +])
>  --- /dev/null
> @@ -143,64 +144,64 @@ Upstream-Status: Pending
>  +)
>  --- /dev/null
>  +++ bison-1.875/m4/stdint_h.m4
> -@@ -0,0 +1,28 @@
> -+# stdint_h.m4 serial 2 (gettext-0.11.4)
> -+dnl Copyright (C) 1997-2002 Free Software Foundation, Inc.
> -+dnl This file is free software, distributed under the terms of the GNU
> -+dnl General Public License.  As a special exception to the GNU General
> -+dnl Public License, this file may be distributed as part of a program
> -+dnl that contains a configuration script generated by Autoconf, under
> -+dnl the same distribution terms as the rest of that program.
> +@@ -0,0 +1,27 @@
> ++# stdint_h.m4 serial 9 (gettext-0.20.1)
> ++dnl Copyright (C) 1997-2004, 2006, 2008-2019 Free Software Foundation,
> Inc.
> ++dnl This file is free software; the Free Software Foundation
> ++dnl gives unlimited permission to copy and/or distribute it,
> ++dnl with or without modifications, as long as this notice is preserved.
>  +
>  +dnl From Paul Eggert.
>  +
>  +# Define HAVE_STDINT_H_WITH_UINTMAX if <stdint.h> exists,
>  +# doesn't clash with <sys/types.h>, and declares uintmax_t.
>  +
> -+AC_DEFUN([jm_AC_HEADER_STDINT_H],
> ++AC_DEFUN([gl_AC_HEADER_STDINT_H],
>  +[
> -+  AC_CACHE_CHECK([for stdint.h], jm_ac_cv_header_stdint_h,
> -+  [AC_TRY_COMPILE(
> -+    [#include <sys/types.h>
> -+#include <stdint.h>],
> -+    [uintmax_t i = (uintmax_t) -1;],
> -+    jm_ac_cv_header_stdint_h=yes,
> -+    jm_ac_cv_header_stdint_h=no)])
> -+  if test $jm_ac_cv_header_stdint_h = yes; then
> -+    AC_DEFINE_UNQUOTED(HAVE_STDINT_H_WITH_UINTMAX, 1,
> -+[Define if <stdint.h> exists, doesn't clash with <sys/types.h>,
> -+   and declares uintmax_t. ])
> ++  AC_CACHE_CHECK([for stdint.h], [gl_cv_header_stdint_h],
> ++    [AC_COMPILE_IFELSE(
> ++       [AC_LANG_PROGRAM(
> ++          [[#include <sys/types.h>
> ++            #include <stdint.h>]],
> ++          [[uintmax_t i = (uintmax_t) -1; return !i;]])],
> ++       [gl_cv_header_stdint_h=yes],
> ++       [gl_cv_header_stdint_h=no])])
> ++  if test $gl_cv_header_stdint_h = yes; then
> ++    AC_DEFINE_UNQUOTED([HAVE_STDINT_H_WITH_UINTMAX], [1],
> ++      [Define if <stdint.h> exists, doesn't clash with <sys/types.h>,
> ++       and declares uintmax_t. ])
>  +  fi
>  +])
>  --- /dev/null
>  +++ bison-1.875/m4/inttypes_h.m4
> -@@ -0,0 +1,28 @@
> -+# inttypes_h.m4 serial 4 (gettext-0.11.4)
> -+dnl Copyright (C) 1997-2002 Free Software Foundation, Inc.
> -+dnl This file is free software, distributed under the terms of the GNU
> -+dnl General Public License.  As a special exception to the GNU General
> -+dnl Public License, this file may be distributed as part of a program
> -+dnl that contains a configuration script generated by Autoconf, under
> -+dnl the same distribution terms as the rest of that program.
> +@@ -0,0 +1,29 @@
> ++# inttypes_h.m4 serial 10 (gettext-0.20.1)
> ++dnl Copyright (C) 1997-2004, 2006, 2008-2019 Free Software Foundation,
> Inc.
> ++dnl This file is free software; the Free Software Foundation
> ++dnl gives unlimited permission to copy and/or distribute it,
> ++dnl with or without modifications, as long as this notice is preserved.
>  +
>  +dnl From Paul Eggert.
>  +
>  +# Define HAVE_INTTYPES_H_WITH_UINTMAX if <inttypes.h> exists,
>  +# doesn't clash with <sys/types.h>, and declares uintmax_t.
>  +
> -+AC_DEFUN([jm_AC_HEADER_INTTYPES_H],
> ++AC_DEFUN([gl_AC_HEADER_INTTYPES_H],
>  +[
> -+  AC_CACHE_CHECK([for inttypes.h], jm_ac_cv_header_inttypes_h,
> -+  [AC_TRY_COMPILE(
> -+    [#include <sys/types.h>
> -+#include <inttypes.h>],
> -+    [uintmax_t i = (uintmax_t) -1;],
> -+    jm_ac_cv_header_inttypes_h=yes,
> -+    jm_ac_cv_header_inttypes_h=no)])
> -+  if test $jm_ac_cv_header_inttypes_h = yes; then
> -+    AC_DEFINE_UNQUOTED(HAVE_INTTYPES_H_WITH_UINTMAX, 1,
> -+[Define if <inttypes.h> exists, doesn't clash with <sys/types.h>,
> -+   and declares uintmax_t. ])
> ++  AC_CACHE_CHECK([for inttypes.h], [gl_cv_header_inttypes_h],
> ++    [AC_COMPILE_IFELSE(
> ++       [AC_LANG_PROGRAM(
> ++          [[
> ++#include <sys/types.h>
> ++#include <inttypes.h>
> ++          ]],
> ++          [[uintmax_t i = (uintmax_t) -1; return !i;]])],
> ++       [gl_cv_header_inttypes_h=yes],
> ++       [gl_cv_header_inttypes_h=no])])
> ++  if test $gl_cv_header_inttypes_h = yes; then
> ++    AC_DEFINE_UNQUOTED([HAVE_INTTYPES_H_WITH_UINTMAX], [1],
> ++      [Define if <inttypes.h> exists, doesn't clash with <sys/types.h>,
> ++       and declares uintmax_t. ])
>  +  fi
>  +])
>  --- /dev/null
> --
> 2.7.4
>
> 
>

--000000000000de6992059daf2593
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ping :)<div><br></div><div>Alex</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 16 Jan 2020=
 at 08:23, Changqing Li &lt;<a href=3D"mailto:changqing.li@windriver.com">c=
hangqing.li@windriver.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-lef=
t-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex">From: Ch=
angqing Li &lt;<a href=3D"mailto:changqing.li@windriver.com" target=3D"_bla=
nk">changqing.li@windriver.com</a>&gt;<br>
<br>
Fix configure error like:<br>
error: possibly undefined macro: gl_AC_HEADER_STDINT_H<br>
<br>
Signed-off-by: Changqing Li &lt;<a href=3D"mailto:changqing.li@windriver.c=
om" target=3D"_blank">changqing.li@windriver.com</a>&gt;<br>
---<br>
=C2=A0recipes-devtools/bison/bison/bison-2.3_m4.patch | 121 ++++++++++++--=
----------<br>
=C2=A01 file changed, 61 insertions(+), 60 deletions(-)<br>
<br>
diff --git a/recipes-devtools/bison/bison/bison-2.3_m4.patch b/recipes-dev=
tools/bison/bison/bison-2.3_m4.patch<br>
index 348ce1d..626bc42 100644<br>
--- a/recipes-devtools/bison/bison/bison-2.3_m4.patch<br>
+++ b/recipes-devtools/bison/bison/bison-2.3_m4.patch<br>
@@ -76,34 +76,35 @@ Upstream-Status: Pending<br>
=C2=A0+])<br>
=C2=A0--- /dev/null<br>
=C2=A0+++ bison-1.875/m4/uintmax_t.m4<br>
-@@ -0,0 +1,29 @@<br>
-+# uintmax_t.m4 serial 6 (gettext-0.11)<br>
-+dnl Copyright (C) 1997-2002 Free Software Foundation, Inc.<br>
-+dnl This file is free software, distributed under the terms of the GNU<b=
r>
-+dnl General Public License.=C2=A0 As a special exception to the GNU Gene=
ral<br>
-+dnl Public License, this file may be distributed as part of a program<br=
>
-+dnl that contains a configuration script generated by Autoconf, under<br=
>
-+dnl the same distribution terms as the rest of that program.<br>
+@@ -0,0 +1,30 @@<br>
++# uintmax_t.m4 serial 12 (gettext-0.20.1)<br>
++dnl Copyright (C) 1997-2004, 2007-2019 Free Software Foundation, Inc.<br=
>
++dnl This file is free software; the Free Software Foundation<br>
++dnl gives unlimited permission to copy and/or distribute it,<br>
++dnl with or without modifications, as long as this notice is preserved.<=
br>
=C2=A0+<br>
=C2=A0+dnl From Paul Eggert.<br>
=C2=A0+<br>
-+AC_PREREQ(2.13)<br>
++AC_PREREQ([2.13])<br>
=C2=A0+<br>
-+# Define uintmax_t to `unsigned long&#39; or `unsigned long long&#39;<br=
>
-+# if &lt;inttypes.h&gt; does not exist.<br>
++# Define uintmax_t to &#39;unsigned long&#39; or &#39;unsigned long long=
&#39;<br>
++# if it is not already defined in &lt;stdint.h&gt; or &lt;inttypes.h&gt;=
.<br>
=C2=A0+<br>
-+AC_DEFUN([jm_AC_TYPE_UINTMAX_T],<br>
++AC_DEFUN([gl_AC_TYPE_UINTMAX_T],<br>
=C2=A0+[<br>
-+=C2=A0 AC_REQUIRE([jm_AC_HEADER_INTTYPES_H])<br>
-+=C2=A0 AC_REQUIRE([jm_AC_HEADER_STDINT_H])<br>
-+=C2=A0 if test $jm_ac_cv_header_inttypes_h =3D no &amp;&amp; test $jm_ac=
_cv_header_stdint_h =3D no; then<br>
-+=C2=A0 =C2=A0 AC_REQUIRE([jm_AC_TYPE_UNSIGNED_LONG_LONG])<br>
-+=C2=A0 =C2=A0 test $ac_cv_type_unsigned_long_long =3D yes \<br>
++=C2=A0 AC_REQUIRE([gl_AC_HEADER_INTTYPES_H])<br>
++=C2=A0 AC_REQUIRE([gl_AC_HEADER_STDINT_H])<br>
++=C2=A0 if test $gl_cv_header_inttypes_h =3D no &amp;&amp; test $gl_cv_he=
ader_stdint_h =3D no; then<br>
++=C2=A0 =C2=A0 AC_REQUIRE([AC_TYPE_UNSIGNED_LONG_LONG_INT])<br>
++=C2=A0 =C2=A0 test $ac_cv_type_unsigned_long_long_int =3D yes \<br>
=C2=A0+=C2=A0 =C2=A0 =C2=A0 &amp;&amp; ac_type=3D&#39;unsigned long long&#=
39; \<br>
=C2=A0+=C2=A0 =C2=A0 =C2=A0 || ac_type=3D&#39;unsigned long&#39;<br>
-+=C2=A0 =C2=A0 AC_DEFINE_UNQUOTED(uintmax_t, $ac_type,<br>
-+=C2=A0 [Define to unsigned long or unsigned long long<br>
-+=C2=A0 =C2=A0if &lt;inttypes.h&gt; and &lt;stdint.h&gt; don&#39;t define=
.])<br>
++=C2=A0 =C2=A0 AC_DEFINE_UNQUOTED([uintmax_t], [$ac_type],<br>
++=C2=A0 =C2=A0 =C2=A0 [Define to unsigned long or unsigned long long<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0if &lt;stdint.h&gt; and &lt;inttypes.h&gt; do=
n&#39;t define.])<br>
++=C2=A0 else<br>
++=C2=A0 =C2=A0 AC_DEFINE([HAVE_UINTMAX_T], [1],<br>
++=C2=A0 =C2=A0 =C2=A0 [Define if you have the &#39;uintmax_t&#39; type in=
 &lt;stdint.h&gt; or &lt;inttypes.h&gt;.])<br>
=C2=A0+=C2=A0 fi<br>
=C2=A0+])<br>
=C2=A0--- /dev/null<br>
@@ -143,64 +144,64 @@ Upstream-Status: Pending<br>
=C2=A0+)<br>
=C2=A0--- /dev/null<br>
=C2=A0+++ bison-1.875/m4/stdint_h.m4<br>
-@@ -0,0 +1,28 @@<br>
-+# stdint_h.m4 serial 2 (gettext-0.11.4)<br>
-+dnl Copyright (C) 1997-2002 Free Software Foundation, Inc.<br>
-+dnl This file is free software, distributed under the terms of the GNU<b=
r>
-+dnl General Public License.=C2=A0 As a special exception to the GNU Gene=
ral<br>
-+dnl Public License, this file may be distributed as part of a program<br=
>
-+dnl that contains a configuration script generated by Autoconf, under<br=
>
-+dnl the same distribution terms as the rest of that program.<br>
+@@ -0,0 +1,27 @@<br>
++# stdint_h.m4 serial 9 (gettext-0.20.1)<br>
++dnl Copyright (C) 1997-2004, 2006, 2008-2019 Free Software Foundation, I=
nc.<br>
++dnl This file is free software; the Free Software Foundation<br>
++dnl gives unlimited permission to copy and/or distribute it,<br>
++dnl with or without modifications, as long as this notice is preserved.<=
br>
=C2=A0+<br>
=C2=A0+dnl From Paul Eggert.<br>
=C2=A0+<br>
=C2=A0+# Define HAVE_STDINT_H_WITH_UINTMAX if &lt;stdint.h&gt; exists,<br>
=C2=A0+# doesn&#39;t clash with &lt;sys/types.h&gt;, and declares uintmax_=
t.<br>
=C2=A0+<br>
-+AC_DEFUN([jm_AC_HEADER_STDINT_H],<br>
++AC_DEFUN([gl_AC_HEADER_STDINT_H],<br>
=C2=A0+[<br>
-+=C2=A0 AC_CACHE_CHECK([for stdint.h], jm_ac_cv_header_stdint_h,<br>
-+=C2=A0 [AC_TRY_COMPILE(<br>
-+=C2=A0 =C2=A0 [#include &lt;sys/types.h&gt;<br>
-+#include &lt;stdint.h&gt;],<br>
-+=C2=A0 =C2=A0 [uintmax_t i =3D (uintmax_t) -1;],<br>
-+=C2=A0 =C2=A0 jm_ac_cv_header_stdint_h=3Dyes,<br>
-+=C2=A0 =C2=A0 jm_ac_cv_header_stdint_h=3Dno)])<br>
-+=C2=A0 if test $jm_ac_cv_header_stdint_h =3D yes; then<br>
-+=C2=A0 =C2=A0 AC_DEFINE_UNQUOTED(HAVE_STDINT_H_WITH_UINTMAX, 1,<br>
-+[Define if &lt;stdint.h&gt; exists, doesn&#39;t clash with &lt;sys/types=
.h&gt;,<br>
-+=C2=A0 =C2=A0and declares uintmax_t. ])<br>
++=C2=A0 AC_CACHE_CHECK([for stdint.h], [gl_cv_header_stdint_h],<br>
++=C2=A0 =C2=A0 [AC_COMPILE_IFELSE(<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0[AC_LANG_PROGRAM(<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [[#include &lt;sys/types.h&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 #include &lt;stdint.h&gt;]],<b=
r>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [[uintmax_t i =3D (uintmax_t) -1; ret=
urn !i;]])],<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0[gl_cv_header_stdint_h=3Dyes],<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0[gl_cv_header_stdint_h=3Dno])])<br>
++=C2=A0 if test $gl_cv_header_stdint_h =3D yes; then<br>
++=C2=A0 =C2=A0 AC_DEFINE_UNQUOTED([HAVE_STDINT_H_WITH_UINTMAX], [1],<br>
++=C2=A0 =C2=A0 =C2=A0 [Define if &lt;stdint.h&gt; exists, doesn&#39;t cla=
sh with &lt;sys/types.h&gt;,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0and declares uintmax_t. ])<br>
=C2=A0+=C2=A0 fi<br>
=C2=A0+])<br>
=C2=A0--- /dev/null<br>
=C2=A0+++ bison-1.875/m4/inttypes_h.m4<br>
-@@ -0,0 +1,28 @@<br>
-+# inttypes_h.m4 serial 4 (gettext-0.11.4)<br>
-+dnl Copyright (C) 1997-2002 Free Software Foundation, Inc.<br>
-+dnl This file is free software, distributed under the terms of the GNU<b=
r>
-+dnl General Public License.=C2=A0 As a special exception to the GNU Gene=
ral<br>
-+dnl Public License, this file may be distributed as part of a program<br=
>
-+dnl that contains a configuration script generated by Autoconf, under<br=
>
-+dnl the same distribution terms as the rest of that program.<br>
+@@ -0,0 +1,29 @@<br>
++# inttypes_h.m4 serial 10 (gettext-0.20.1)<br>
++dnl Copyright (C) 1997-2004, 2006, 2008-2019 Free Software Foundation, I=
nc.<br>
++dnl This file is free software; the Free Software Foundation<br>
++dnl gives unlimited permission to copy and/or distribute it,<br>
++dnl with or without modifications, as long as this notice is preserved.<=
br>
=C2=A0+<br>
=C2=A0+dnl From Paul Eggert.<br>
=C2=A0+<br>
=C2=A0+# Define HAVE_INTTYPES_H_WITH_UINTMAX if &lt;inttypes.h&gt; exists,=
<br>
=C2=A0+# doesn&#39;t clash with &lt;sys/types.h&gt;, and declares uintmax_=
t.<br>
=C2=A0+<br>
-+AC_DEFUN([jm_AC_HEADER_INTTYPES_H],<br>
++AC_DEFUN([gl_AC_HEADER_INTTYPES_H],<br>
=C2=A0+[<br>
-+=C2=A0 AC_CACHE_CHECK([for inttypes.h], jm_ac_cv_header_inttypes_h,<br>
-+=C2=A0 [AC_TRY_COMPILE(<br>
-+=C2=A0 =C2=A0 [#include &lt;sys/types.h&gt;<br>
-+#include &lt;inttypes.h&gt;],<br>
-+=C2=A0 =C2=A0 [uintmax_t i =3D (uintmax_t) -1;],<br>
-+=C2=A0 =C2=A0 jm_ac_cv_header_inttypes_h=3Dyes,<br>
-+=C2=A0 =C2=A0 jm_ac_cv_header_inttypes_h=3Dno)])<br>
-+=C2=A0 if test $jm_ac_cv_header_inttypes_h =3D yes; then<br>
-+=C2=A0 =C2=A0 AC_DEFINE_UNQUOTED(HAVE_INTTYPES_H_WITH_UINTMAX, 1,<br>
-+[Define if &lt;inttypes.h&gt; exists, doesn&#39;t clash with &lt;sys/typ=
es.h&gt;,<br>
-+=C2=A0 =C2=A0and declares uintmax_t. ])<br>
++=C2=A0 AC_CACHE_CHECK([for inttypes.h], [gl_cv_header_inttypes_h],<br>
++=C2=A0 =C2=A0 [AC_COMPILE_IFELSE(<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0[AC_LANG_PROGRAM(<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [[<br>
++#include &lt;sys/types.h&gt;<br>
++#include &lt;inttypes.h&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ]],<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [[uintmax_t i =3D (uintmax_t) -1; ret=
urn !i;]])],<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0[gl_cv_header_inttypes_h=3Dyes],<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0[gl_cv_header_inttypes_h=3Dno])])<br>
++=C2=A0 if test $gl_cv_header_inttypes_h =3D yes; then<br>
++=C2=A0 =C2=A0 AC_DEFINE_UNQUOTED([HAVE_INTTYPES_H_WITH_UINTMAX], [1],<br=
>
++=C2=A0 =C2=A0 =C2=A0 [Define if &lt;inttypes.h&gt; exists, doesn&#39;t c=
lash with &lt;sys/types.h&gt;,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0and declares uintmax_t. ])<br>
=C2=A0+=C2=A0 fi<br>
=C2=A0+])<br>
=C2=A0--- /dev/null<br>
-- <br>
2.7.4<br>
<br>
<br>
</blockquote></div>

--000000000000de6992059daf2593--
