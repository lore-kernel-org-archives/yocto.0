Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24060E00A39; Fri, 14 Jul 2017 06:37:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.66 listed in dnsbl.sorbs.net]
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36ED8E00A39
	for <yocto@yoctoproject.org>; Fri, 14 Jul 2017 06:37:38 -0700 (PDT)
Received: by mail-it0-f66.google.com with SMTP id o202so12429110itc.1
	for <yocto@yoctoproject.org>; Fri, 14 Jul 2017 06:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=87TfX/YuCiYuwatwV7zIi30XyapBQFKaMbVmDpjylbI=;
	b=FcoaJxn8S8mtrYlucmDd2U3YzoZXRkX1SBDivAs/kDKZvyezIRy898WuE1TBr45J8A
	lg/pZ7DYVGCkdvQEZVwLAqiEgF+KDisIkNO8Z2d0TqqPQ3AjLh3RJMlldBVC+pVvfQDl
	3RCwt7Gn52hZbQKfj2DsrVnGueC9FuisTDvCgM4/aNDGERWKmRHNsXqLFXpJ6g75jAbg
	5UzJMpxGssOvye34nrnL82W4u4YuXHBUPMq1G0JK5omXtw1kTbImSMO++6UwY47sESAs
	S7ber3F383+hRdJX/CGpwKKQyKMSzt0YOl7FepL0Egss+774voTEIFbIlfNvgeMJcN13
	Lbxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=87TfX/YuCiYuwatwV7zIi30XyapBQFKaMbVmDpjylbI=;
	b=Vi6k8EJnaOASZH1kwBvf5W/5GU+rBBNHsORyEKmvBt/Z5pvlOip7xWIoytjswLe9L+
	tBgZ9AxIIX/ByVJrq7++6IS+xMoxOH67LDSX0TpGJ1bP/jy2xRXOQ2AA6Chi3/8DWEdZ
	FFKM45CpWB4H0zrULJzenNullwc5Drg7T/4ytUtQ/njLp+Bp6Nv4vGQDN8jAG8C4bPz1
	XNBos9B6Uw3QhbfJL8kah45jqM3en3WUV2ihd7Ulp2GW3hweDH2Vh06Ok9xzeFQzfvHi
	j87IPHV7c/zep36f9/bh3eOkpsU7qD+hPZUmdTCkS9Ic1hTU1PzzDS6BowrKash+FMOq
	F22A==
X-Gm-Message-State: AIVw1135a/fOXby+P0DPj0EBE8vF4gEaecQIQrGGwkyxBtiBXVTgMaMT
	K6ZQkspEaUH46Pa3iC0c/PLfE6aBr/VFX60=
X-Received: by 10.107.25.78 with SMTP id 75mr8333910ioz.103.1500039458195;
	Fri, 14 Jul 2017 06:37:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.13.5 with HTTP; Fri, 14 Jul 2017 06:36:57 -0700 (PDT)
X-Originating-IP: [46.233.116.109]
In-Reply-To: <CAMKF1spKFOHKvJ0hLBvDPuTiTy13HYfFFaHCzsdxmRyUN8HGUw@mail.gmail.com>
References: <1500022998-25701-1-git-send-email-gizero@gmail.com>
	<CAMKF1spKFOHKvJ0hLBvDPuTiTy13HYfFFaHCzsdxmRyUN8HGUw@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 14 Jul 2017 14:36:57 +0100
Message-ID: <CAK18fxGoLOJZqwG+fe3t33mo=NPhQikZBaZ8bBKVWeQyeMMOVA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 14 Jul 2017 13:37:41 -0000
Content-Type: multipart/alternative; boundary="001a113fefa00e8c5e055447270d"

--001a113fefa00e8c5e055447270d
Content-Type: text/plain; charset="UTF-8"

On Fri, Jul 14, 2017 at 2:31 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Fri, Jul 14, 2017 at 2:03 AM, Andrea Galbusera <gizero@gmail.com>
> wrote:
> > Needed by libepoxy
> >
> > Signed-off-by: Andrea Galbusera <gizero@gmail.com>
> > ---
> >  .../0015-EGL-glplatform.h-define-EGL_CAST.patch    | 32
> ++++++++++++++++++++++
> >  recipes-graphics/userland/userland_git.bb          |  1 +
> >  2 files changed, 33 insertions(+)
> >  create mode 100644 recipes-graphics/userland/
> userland/0015-EGL-glplatform.h-define-EGL_CAST.patch
> >
> > diff --git a/recipes-graphics/userland/userland/0015-EGL-glplatform.h-define-EGL_CAST.patch
> b/recipes-graphics/userland/userland/0015-EGL-glplatform.
> h-define-EGL_CAST.patch
> > new file mode 100644
> > index 0000000..5a80a26
> > --- /dev/null
> > +++ b/recipes-graphics/userland/userland/0015-EGL-glplatform.
> h-define-EGL_CAST.patch
> > @@ -0,0 +1,32 @@
> > +From 382e3b16cbcc09d825540d5bd3e45a2fca4484fe Mon Sep 17 00:00:00 2001
> > +From: Andrea Galbusera <gizero@gmail.com>
> > +Date: Fri, 14 Jul 2017 09:52:54 +0200
> > +Subject: [PATCH] EGL/glplatform.h: define EGL_CAST
> > +
> > +C++ / C typecast macros for special EGL handle values: used by libepoxy
> code
> > +The definition comes from the updated version of this header in mesa.
> > +
> > +Upstream-Status: Pending
> > +---
> > + interface/khronos/include/EGL/eglplatform.h | 7 +++++++
> > + 1 file changed, 7 insertions(+)
> > +
> > +diff --git a/interface/khronos/include/EGL/eglplatform.h
> b/interface/khronos/include/EGL/eglplatform.h
> > +index 1f7c930..c39d425 100644
> > +--- a/interface/khronos/include/EGL/eglplatform.h
> > ++++ b/interface/khronos/include/EGL/eglplatform.h
> > +@@ -202,4 +202,11 @@ EGLAPI void EGLAPIENTRY BEGL_
> GetDefaultDriverInterfaces(BEGL_DriverInterfaces *i
> > + #include "interface/khronos/common/khrn_client_mangle.h"
> > + #endif
> > +
> > ++/* C++ / C typecast macros for special EGL handle values */
> > ++#if defined(__cplusplus)
> > ++#define EGL_CAST(type, value) (static_cast<type>(value))
> > ++#else
> > ++#define EGL_CAST(type, value) ((type) (value))
> > ++#endif
> > ++
> > + #endif /* __eglplatform_h */
> > +--
>
> LGTM
> please merge it


Your wish is my command :) Merged in master after builds passed. Thanks for
you contribution, Andrea.

Regards,
Andrei

--001a113fefa00e8c5e055447270d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div><div class=3D"gmail_signat=
ure" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><=
br></div></div></div></div><div class=3D"gmail_quote">On Fri, Jul 14, 2017 =
at 2:31 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail=
.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On Fri, Jul=
 14, 2017 at 2:03 AM, Andrea Galbusera &lt;<a href=3D"mailto:gizero@gmail.c=
om">gizero@gmail.com</a>&gt; wrote:<br>
&gt; Needed by libepoxy<br>
&gt;<br>
&gt; Signed-off-by: Andrea Galbusera &lt;<a href=3D"mailto:gizero@gmail.com=
">gizero@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 .../0015-EGL-glplatform.h-<wbr>define-EGL_CAST.patch=C2=A0 =C2=
=A0 | 32 ++++++++++++++++++++++<br>
&gt;=C2=A0 recipes-graphics/userland/<a href=3D"http://userland_git.bb" rel=
=3D"noreferrer" target=3D"_blank">user<wbr>land_git.bb</a>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 |=C2=A0 1 +<br>
&gt;=C2=A0 2 files changed, 33 insertions(+)<br>
&gt;=C2=A0 create mode 100644 recipes-graphics/userland/<wbr>userland/0015-=
EGL-glplatform.<wbr>h-define-EGL_CAST.patch<br>
&gt;<br>
&gt; diff --git a/recipes-graphics/userland/<wbr>userland/0015-EGL-glplatfo=
rm.<wbr>h-define-EGL_CAST.patch b/recipes-graphics/userland/<wbr>userland/0=
015-EGL-glplatform.<wbr>h-define-EGL_CAST.patch<br>
&gt; new file mode 100644<br>
&gt; index 0000000..5a80a26<br>
&gt; --- /dev/null<br>
&gt; +++ b/recipes-graphics/userland/<wbr>userland/0015-EGL-glplatform.<wbr=
>h-define-EGL_CAST.patch<br>
&gt; @@ -0,0 +1,32 @@<br>
&gt; +From 382e3b16cbcc09d825540d5bd3e45a<wbr>2fca4484fe Mon Sep 17 00:00:0=
0 2001<br>
&gt; +From: Andrea Galbusera &lt;<a href=3D"mailto:gizero@gmail.com">gizero=
@gmail.com</a>&gt;<br>
&gt; +Date: Fri, 14 Jul 2017 09:52:54 +0200<br>
&gt; +Subject: [PATCH] EGL/glplatform.h: define EGL_CAST<br>
&gt; +<br>
&gt; +C++ / C typecast macros for special EGL handle values: used by libepo=
xy code<br>
&gt; +The definition comes from the updated version of this header in mesa.=
<br>
&gt; +<br>
&gt; +Upstream-Status: Pending<br>
&gt; +---<br>
&gt; + interface/khronos/include/EGL/<wbr>eglplatform.h | 7 +++++++<br>
&gt; + 1 file changed, 7 insertions(+)<br>
&gt; +<br>
&gt; +diff --git a/interface/khronos/include/<wbr>EGL/eglplatform.h b/inter=
face/khronos/include/<wbr>EGL/eglplatform.h<br>
&gt; +index 1f7c930..c39d425 100644<br>
&gt; +--- a/interface/khronos/include/<wbr>EGL/eglplatform.h<br>
&gt; ++++ b/interface/khronos/include/<wbr>EGL/eglplatform.h<br>
&gt; +@@ -202,4 +202,11 @@ EGLAPI void EGLAPIENTRY BEGL_<wbr>GetDefaultDriv=
erInterfaces(<wbr>BEGL_DriverInterfaces *i<br>
&gt; + #include &quot;interface/khronos/common/<wbr>khrn_client_mangle.h&qu=
ot;<br>
&gt; + #endif<br>
&gt; +<br>
&gt; ++/* C++ / C typecast macros for special EGL handle values */<br>
&gt; ++#if defined(__cplusplus)<br>
&gt; ++#define EGL_CAST(type, value) (static_cast&lt;type&gt;(value))<br>
&gt; ++#else<br>
&gt; ++#define EGL_CAST(type, value) ((type) (value))<br>
&gt; ++#endif<br>
&gt; ++<br>
&gt; + #endif /* __eglplatform_h */<br>
&gt; +--<br>
<br>
</div></div>LGTM<br>
please merge it</blockquote><div><br>Your wish is my command :) Merged in m=
aster after builds passed. Thanks for you contribution, Andrea.</div><div><=
br></div><div>Regards,</div><div>Andrei</div></div></div></div>

--001a113fefa00e8c5e055447270d--
