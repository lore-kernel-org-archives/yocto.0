Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12421E009C2; Fri, 14 Jul 2017 03:05:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,HTML_OBFUSCATE_05_10,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.66 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F211E0090A
	for <yocto@yoctoproject.org>; Fri, 14 Jul 2017 03:05:54 -0700 (PDT)
Received: by mail-it0-f66.google.com with SMTP id o202so11672625itc.1
	for <yocto@yoctoproject.org>; Fri, 14 Jul 2017 03:05:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ReH6An+ghJp5xKH1vlAa+WyvVzROHjpTyaYeL/T/4Vg=;
	b=jdpakjC7dCO3Xxn4KhKwBCiLUte/QuoBS5tmv4VIEXwQlY00zOSLfN7ws0QAbt9snu
	2CBs3B4jxAaFchBa5EOmzJOWZfhq6+z7ndUxyCc99kAgLpUJadsk0W5LC+vez6iTG36S
	E2Jeu5qParTjJQPq+eUsB/weNJtm9ntI0yMmeW2I580kDu5IA90iHJarhq+40AHxUPNL
	9Sv7EUzbiO4qEHpe76+nfYDZ9+0EX/mc0IaJIpw8pidpEWepMdXMptxN3TKxf9ze76/d
	xeLOVJTfdGZuJFl/fOdU9sNhtKRZ95b4JjbqtR6Nem1tW2BEItVyohCySBlH3mWWCuYT
	4Klw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ReH6An+ghJp5xKH1vlAa+WyvVzROHjpTyaYeL/T/4Vg=;
	b=jf9k4KOeW/8E16AUnIsf5Bf4nd9/DnNGa32751/8WFFCxijNlRCRCh7q95SRYWDY8J
	Z+qCsmOD5+/gk9VwRNxRU85Ely90IgGg8UxtpSud1qFrFKTQ65OrfPn6iFPnnotLCy6X
	v1ZNVJQDzj9/a4kimZQhlo9qtfKmJBePeLEOv1A1FYLkHFEltlXyOzWrLNM7kAusjXBZ
	k+6uZhj3fonG7xl3BglmsM4gRhWvcAXrOQwi8/NK9njslNfMeVlsrj/fgkEiW1I78ZV3
	k8mLFuG24Ui0/RWeb+SKYLzFbAeIvNNcoa3sJBaolHrKugznmwV4bH8kHZLEEtLClHvw
	J1Ew==
X-Gm-Message-State: AIVw112YeqvrTWChygdNAj+sw0PUPXHVyw9LdxJYa7YDZ9awUoOtQh6r
	2Krlg+0OOlm0K7XQOK+GcoX3RJBvvUbzi6TFtw==
X-Received: by 10.36.92.77 with SMTP id q74mr3187256itb.24.1500026754435; Fri,
	14 Jul 2017 03:05:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.13.5 with HTTP; Fri, 14 Jul 2017 03:05:14 -0700 (PDT)
X-Originating-IP: [176.12.107.132]
In-Reply-To: <1500022998-25701-1-git-send-email-gizero@gmail.com>
References: <1500022998-25701-1-git-send-email-gizero@gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 14 Jul 2017 11:05:14 +0100
Message-ID: <CAK18fxGv0aTvqDStLU2+argG=buQ-eEmym-Yfw28VEm7LQm-=w@mail.gmail.com>
To: Andrea Galbusera <gizero@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] userland: Add missing EGL_CAST defines
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
X-List-Received-Date: Fri, 14 Jul 2017 10:05:58 -0000
Content-Type: multipart/alternative; boundary="001a1145ea52da42710554443162"

--001a1145ea52da42710554443162
Content-Type: text/plain; charset="UTF-8"

Hello,

On Fri, Jul 14, 2017 at 10:03 AM, Andrea Galbusera <gizero@gmail.com> wrote:

> Needed by libepoxy
>
> Signed-off-by: Andrea Galbusera <gizero@gmail.com>
> ---
>  .../0015-EGL-glplatform.h-define-EGL_CAST.patch    | 32
> ++++++++++++++++++++++
>  recipes-graphics/userland/userland_git.bb          |  1 +
>  2 files changed, 33 insertions(+)
>  create mode 100644 recipes-graphics/userland/
> userland/0015-EGL-glplatform.h-define-EGL_CAST.patch
>
> diff --git a/recipes-graphics/userland/userland/0015-EGL-glplatform.h-define-EGL_CAST.patch
> b/recipes-graphics/userland/userland/0015-EGL-glplatform.
> h-define-EGL_CAST.patch
> new file mode 100644
> index 0000000..5a80a26
> --- /dev/null
> +++ b/recipes-graphics/userland/userland/0015-EGL-glplatform.
> h-define-EGL_CAST.patch
> @@ -0,0 +1,32 @@
> +From 382e3b16cbcc09d825540d5bd3e45a2fca4484fe Mon Sep 17 00:00:00 2001
> +From: Andrea Galbusera <gizero@gmail.com>
> +Date: Fri, 14 Jul 2017 09:52:54 +0200
> +Subject: [PATCH] EGL/glplatform.h: define EGL_CAST
> +
> +C++ / C typecast macros for special EGL handle values: used by libepoxy
> code
> +The definition comes from the updated version of this header in mesa.
> +
> +Upstream-Status: Pending
> +---
> + interface/khronos/include/EGL/eglplatform.h | 7 +++++++
> + 1 file changed, 7 insertions(+)
> +
> +diff --git a/interface/khronos/include/EGL/eglplatform.h
> b/interface/khronos/include/EGL/eglplatform.h
> +index 1f7c930..c39d425 100644
> +--- a/interface/khronos/include/EGL/eglplatform.h
> ++++ b/interface/khronos/include/EGL/eglplatform.h
> +@@ -202,4 +202,11 @@ EGLAPI void EGLAPIENTRY BEGL_
> GetDefaultDriverInterfaces(BEGL_DriverInterfaces *i
> + #include "interface/khronos/common/khrn_client_mangle.h"
> + #endif
> +
> ++/* C++ / C typecast macros for special EGL handle values */
> ++#if defined(__cplusplus)
> ++#define EGL_CAST(type, value) (static_cast<type>(value))
> ++#else
> ++#define EGL_CAST(type, value) ((type) (value))
> ++#endif
> ++
> + #endif /* __eglplatform_h */
> +--
> +2.7.4
> +
> diff --git a/recipes-graphics/userland/userland_git.bb
> b/recipes-graphics/userland/userland_git.bb
> index 26bbfaf..893fcba 100644
> --- a/recipes-graphics/userland/userland_git.bb
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -34,6 +34,7 @@ SRC_URI = "\
>      file://0012-implement-buffer-wrapping-interface-for-dispmanx.patch \
>      file://0013-Implement-triple-buffering-for-wayland.patch \
>      file://0014-GLES2-gl2ext.h-Define-GL_R8_EXT-and-GL_RG8_EXT.patch \
> +    file://0015-EGL-glplatform.h-define-EGL_CAST.patch \
>  "
>  S = "${WORKDIR}/git"
>

Looks good to me.
--
Andrei Gherzan

--001a1145ea52da42710554443162
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hello,<br>
<br><div class=3D"gmail_quote">On Fri, Jul 14, 2017 at 10:03 AM, Andrea Gal=
busera <span dir=3D"ltr">&lt;<a href=3D"mailto:gizero@gmail.com" target=3D"=
_blank">gizero@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">Needed by libepoxy<br>
<br>
Signed-off-by: Andrea Galbusera &lt;<a href=3D"mailto:gizero@gmail.com">giz=
ero@gmail.com</a>&gt;<br>
---<br>
=C2=A0.../0015-EGL-glplatform.h-<wbr>define-EGL_CAST.patch=C2=A0 =C2=A0 | 3=
2 ++++++++++++++++++++++<br>
=C2=A0recipes-graphics/userland/<a href=3D"http://userland_git.bb" rel=3D"n=
oreferrer" target=3D"_blank">user<wbr>land_git.bb</a>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 1 +<br>
=C2=A02 files changed, 33 insertions(+)<br>
=C2=A0create mode 100644 recipes-graphics/userland/<wbr>userland/0015-EGL-g=
lplatform.<wbr>h-define-EGL_CAST.patch<br>
<br>
diff --git a/recipes-graphics/userland/<wbr>userland/0015-EGL-glplatform.<w=
br>h-define-EGL_CAST.patch b/recipes-graphics/userland/<wbr>userland/0015-E=
GL-glplatform.<wbr>h-define-EGL_CAST.patch<br>
new file mode 100644<br>
index 0000000..5a80a26<br>
--- /dev/null<br>
+++ b/recipes-graphics/userland/<wbr>userland/0015-EGL-glplatform.<wbr>h-de=
fine-EGL_CAST.patch<br>
@@ -0,0 +1,32 @@<br>
+From 382e3b16cbcc09d825540d5bd3e45a<wbr>2fca4484fe Mon Sep 17 00:00:00 200=
1<br>
+From: Andrea Galbusera &lt;<a href=3D"mailto:gizero@gmail.com">gizero@gmai=
l.com</a>&gt;<br>
+Date: Fri, 14 Jul 2017 09:52:54 +0200<br>
+Subject: [PATCH] EGL/glplatform.h: define EGL_CAST<br>
+<br>
+C++ / C typecast macros for special EGL handle values: used by libepoxy co=
de<br>
+The definition comes from the updated version of this header in mesa.<br>
+<br>
+Upstream-Status: Pending<br>
+---<br>
+ interface/khronos/include/EGL/<wbr>eglplatform.h | 7 +++++++<br>
+ 1 file changed, 7 insertions(+)<br>
+<br>
+diff --git a/interface/khronos/include/<wbr>EGL/eglplatform.h b/interface/=
khronos/include/<wbr>EGL/eglplatform.h<br>
+index 1f7c930..c39d425 100644<br>
+--- a/interface/khronos/include/<wbr>EGL/eglplatform.h<br>
++++ b/interface/khronos/include/<wbr>EGL/eglplatform.h<br>
+@@ -202,4 +202,11 @@ EGLAPI void EGLAPIENTRY BEGL_<wbr>GetDefaultDriverInt=
erfaces(<wbr>BEGL_DriverInterfaces *i<br>
+ #include &quot;interface/khronos/common/<wbr>khrn_client_mangle.h&quot;<b=
r>
+ #endif<br>
+<br>
++/* C++ / C typecast macros for special EGL handle values */<br>
++#if defined(__cplusplus)<br>
++#define EGL_CAST(type, value) (static_cast&lt;type&gt;(value))<br>
++#else<br>
++#define EGL_CAST(type, value) ((type) (value))<br>
++#endif<br>
++<br>
+ #endif /* __eglplatform_h */<br>
+--<br>
+2.7.4<br>
+<br>
diff --git a/recipes-graphics/userland/<a href=3D"http://userland_git.bb" r=
el=3D"noreferrer" target=3D"_blank">us<wbr>erland_git.bb</a> b/recipes-grap=
hics/userland/<a href=3D"http://userland_git.bb" rel=3D"noreferrer" target=
=3D"_blank">us<wbr>erland_git.bb</a><br>
index 26bbfaf..893fcba 100644<br>
--- a/recipes-graphics/userland/<a href=3D"http://userland_git.bb" rel=3D"n=
oreferrer" target=3D"_blank">us<wbr>erland_git.bb</a><br>
+++ b/recipes-graphics/userland/<a href=3D"http://userland_git.bb" rel=3D"n=
oreferrer" target=3D"_blank">us<wbr>erland_git.bb</a><br>
@@ -34,6 +34,7 @@ SRC_URI =3D &quot;\<br>
=C2=A0 =C2=A0 =C2=A0file://0012-implement-buffer-<wbr>wrapping-interface-fo=
r-<wbr>dispmanx.patch \<br>
=C2=A0 =C2=A0 =C2=A0file://0013-Implement-triple-<wbr>buffering-for-wayland=
.patch \<br>
=C2=A0 =C2=A0 =C2=A0file://0014-GLES2-gl2ext.h-<wbr>Define-GL_R8_EXT-and-GL=
_RG8_<wbr>EXT.patch \<br>
+=C2=A0 =C2=A0 file://0015-EGL-glplatform.h-<wbr>define-EGL_CAST.patch \<br=
>
=C2=A0&quot;<br>
=C2=A0S =3D &quot;${WORKDIR}/git&quot;<br></blockquote><div><br></div><div>=
Looks good to me.=C2=A0</div><div>--</div><div>Andrei Gherzan=C2=A0</div></=
div></div></div>

--001a1145ea52da42710554443162--
