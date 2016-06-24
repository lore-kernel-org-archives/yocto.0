Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91BCCE00D1E; Fri, 24 Jun 2016 06:09:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DE6BE00D10
	for <yocto@yoctoproject.org>; Fri, 24 Jun 2016 06:09:29 -0700 (PDT)
Received: by mail-it0-f47.google.com with SMTP id a5so14664310ita.1
	for <yocto@yoctoproject.org>; Fri, 24 Jun 2016 06:09:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8u7v2e99iHC1DQsZ8On3BNGHkrOehhifNmhFluV/idE=;
	b=mP7wjNqzxAth5KqivJnXlcFjGWVp3esLMyVE3i/PGNmisqWORVOY8+qTye8nSwuW31
	VpjoBB2qf11OkTRyfObTL7/stbLGP5HxLzNsLAu2fcpMJa9p7TKZLt5Vd4J0Gssym1qL
	mDGq2Yt1vbGVyj9DvsLvUQI7GDH76mzMcdO6nd+xZkvc6Zzcs9fkKgNI6IXz8qnhbNXo
	lMhuM9Xlx/goAFGUJ1LU1OZAzCJB7vuFlGsjXGoNmpRDBIQbs7/0PJ4+gNFrm4kNBh1i
	Ry08OCEzoK5aniUeqDosWA5JRz3udjFUA12YHLap8rlzUFGJzaGX3oPO7zND1FtDPdCM
	HYFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8u7v2e99iHC1DQsZ8On3BNGHkrOehhifNmhFluV/idE=;
	b=GhRfPWzqO+ZhQQ7vJOaomt6KtU5cvDYVpuucn6J6TyO1RSyJMapM1c+rVE2S2+xnQc
	zPdfhkALV6nRMEI7/4pWk5rZp4bI0M7WzLzgJTx95RLHNgz5QnIrkAWQLg2mMfKqLH9X
	/V06bNXZ2ITG18hmaCDjxw988ycQFpp432B0MwpQu0vL4G/rEhqmsWSNkwOewWjoSTsO
	NfShNUL8IXtWp0CuywutqgrJHHpH2RlQ0OBE2aSBOYW0cUiJpx5gdGbHww5vc/mZCdL9
	LSCL8oqSr6QNRSFBi+dlBBxWSwMYKE0WGeXjwT/wb1dPs0oSTL0m5ASViM4+RJBOZijA
	ZfCQ==
X-Gm-Message-State: ALyK8tKLD4cu9rVyMY1pV47M45TfM9wJOP9+X2LffYvVkEiCYiEiv0L6u9Z1WwlKq3L0Wg+YHMBNPFJSciOjac8g
X-Received: by 10.36.217.68 with SMTP id p65mr6094747itg.38.1466773769077;
	Fri, 24 Jun 2016 06:09:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Fri, 24 Jun 2016 06:09:09 -0700 (PDT)
In-Reply-To: <1462281517-4888-1-git-send-email-george.mccollister@gmail.com>
References: <1462281517-4888-1-git-send-email-george.mccollister@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 24 Jun 2016 14:09:09 +0100
Message-ID: <CAJTo0LZYwm0575nfERJNTG5on89UjBgNN0CLh2X+oQD7FUnwmQ@mail.gmail.com>
To: George McCollister <george.mccollister@gmail.com>, 
	Peter Seebach <peter.seebach@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [pseudo][PATCH] Add capset pseudo function that always succeeds
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
X-List-Received-Date: Fri, 24 Jun 2016 13:09:31 -0000
Content-Type: multipart/alternative; boundary=001a114631b678e039053605e1ae

--001a114631b678e039053605e1ae
Content-Type: text/plain; charset=UTF-8

I just discovered that this was never merged, Peter can you review it?

Ross

On 3 May 2016 at 14:18, George McCollister <george.mccollister@gmail.com>
wrote:

> The setcap utility supplied by libcap is used to set capabilities on a
> file. Before setting a file's capabilities with cap_set_file() (which uses
> setxattr()) it calls cap_set_flag(mycaps, CAP_EFFECTIVE, 1, &capflag,
> CAP_SET). cap_set_flag() uses the capset syscall to raise the process'
> effective capability. In most cases if the process isn't running as root
> this will fail and setcap will exit with an error. Because setxattr is
> intercepted by pseudo it's unnecessary for setcap to call capset().
>
> Override capset with a pseudo function that does nothing and always
> returns 0.
>
> Signed-off-by: George McCollister <george.mccollister@gmail.com>
> ---
>  ports/linux/guts/capset.c     | 13 +++++++++++++
>  ports/linux/portdefs.h        |  2 ++
>  ports/linux/pseudo_wrappers.c |  7 +++++++
>  ports/linux/wrapfuncs.in      |  1 +
>  4 files changed, 23 insertions(+)
>  create mode 100644 ports/linux/guts/capset.c
>
> diff --git a/ports/linux/guts/capset.c b/ports/linux/guts/capset.c
> new file mode 100644
> index 0000000..51e0cdf
> --- /dev/null
> +++ b/ports/linux/guts/capset.c
> @@ -0,0 +1,13 @@
> +/*
> + * Copyright (c) 2016 Wind River Systems; see
> + * guts/COPYRIGHT for information.
> + *
> + * int capset(cap_user_header_t hdrp, const cap_user_data_t datap)
> + *     int rc = -1;
> + */
> +
> +       rc = real_capset(hdrp, datap);
> +
> +/*     return rc;
> + * }
> + */
> diff --git a/ports/linux/portdefs.h b/ports/linux/portdefs.h
> index f0a0e40..d8c5020 100644
> --- a/ports/linux/portdefs.h
> +++ b/ports/linux/portdefs.h
> @@ -25,3 +25,5 @@ GLIBC_COMPAT_SYMBOL(memcpy,2.2.5);
>  #elif defined(__i386__)
>  GLIBC_COMPAT_SYMBOL(memcpy,2.0);
>  #endif
> +
> +#include <linux/capability.h>
> diff --git a/ports/linux/pseudo_wrappers.c b/ports/linux/pseudo_wrappers.c
> index 26b29b0..c6c072b 100644
> --- a/ports/linux/pseudo_wrappers.c
> +++ b/ports/linux/pseudo_wrappers.c
> @@ -31,3 +31,10 @@ int
>  pseudo_fstat64(int fd, struct stat64 *buf) {
>         return real___fxstat64(_STAT_VER, fd, buf);
>  }
> +
> +int pseudo_capset(cap_user_header_t hdrp, const cap_user_data_t datap) {
> +       (void)hdrp;
> +       (void)datap;
> +
> +       return 0;
> +}
> diff --git a/ports/linux/wrapfuncs.in b/ports/linux/wrapfuncs.in
> index 3b8955a..578db35 100644
> --- a/ports/linux/wrapfuncs.in
> +++ b/ports/linux/wrapfuncs.in
> @@ -51,3 +51,4 @@ int euidaccess(const char *path, int mode);
>  int getpw(uid_t uid, char *buf);
>  int getpwent_r(struct passwd *pwbuf, char *buf, size_t buflen, struct
> passwd **pwbufp);
>  int getgrent_r(struct group *gbuf, char *buf, size_t buflen, struct group
> **gbufp);
> +int capset(cap_user_header_t hdrp, const cap_user_data_t datap); /*
> real_func=pseudo_capset */
> --
> 2.8.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114631b678e039053605e1ae
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I just discovered that this was never merged, Peter can yo=
u review it?<div><br></div><div>Ross</div></div><div class=3D"gmail_extra">=
<br><div class=3D"gmail_quote">On 3 May 2016 at 14:18, George McCollister <=
span dir=3D"ltr">&lt;<a href=3D"mailto:george.mccollister@gmail.com" target=
=3D"_blank">george.mccollister@gmail.com</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">The setcap utility supplied by libcap is used to set =
capabilities on a<br>
file. Before setting a file&#39;s capabilities with cap_set_file() (which u=
ses<br>
setxattr()) it calls cap_set_flag(mycaps, CAP_EFFECTIVE, 1, &amp;capflag,<b=
r>
CAP_SET). cap_set_flag() uses the capset syscall to raise the process&#39;<=
br>
effective capability. In most cases if the process isn&#39;t running as roo=
t<br>
this will fail and setcap will exit with an error. Because setxattr is<br>
intercepted by pseudo it&#39;s unnecessary for setcap to call capset().<br>
<br>
Override capset with a pseudo function that does nothing and always<br>
returns 0.<br>
<br>
Signed-off-by: George McCollister &lt;<a href=3D"mailto:george.mccollister@=
gmail.com">george.mccollister@gmail.com</a>&gt;<br>
---<br>
=C2=A0ports/linux/guts/capset.c=C2=A0 =C2=A0 =C2=A0| 13 +++++++++++++<br>
=C2=A0ports/linux/portdefs.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 2 ++<br>
=C2=A0ports/linux/pseudo_wrappers.c |=C2=A0 7 +++++++<br>
=C2=A0ports/linux/<a href=3D"http://wrapfuncs.in" rel=3D"noreferrer" target=
=3D"_blank">wrapfuncs.in</a>=C2=A0 =C2=A0 =C2=A0 |=C2=A0 1 +<br>
=C2=A04 files changed, 23 insertions(+)<br>
=C2=A0create mode 100644 ports/linux/guts/capset.c<br>
<br>
diff --git a/ports/linux/guts/capset.c b/ports/linux/guts/capset.c<br>
new file mode 100644<br>
index 0000000..51e0cdf<br>
--- /dev/null<br>
+++ b/ports/linux/guts/capset.c<br>
@@ -0,0 +1,13 @@<br>
+/*<br>
+ * Copyright (c) 2016 Wind River Systems; see<br>
+ * guts/COPYRIGHT for information.<br>
+ *<br>
+ * int capset(cap_user_header_t hdrp, const cap_user_data_t datap)<br>
+ *=C2=A0 =C2=A0 =C2=A0int rc =3D -1;<br>
+ */<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D real_capset(hdrp, datap);<br>
+<br>
+/*=C2=A0 =C2=A0 =C2=A0return rc;<br>
+ * }<br>
+ */<br>
diff --git a/ports/linux/portdefs.h b/ports/linux/portdefs.h<br>
index f0a0e40..d8c5020 100644<br>
--- a/ports/linux/portdefs.h<br>
+++ b/ports/linux/portdefs.h<br>
@@ -25,3 +25,5 @@ GLIBC_COMPAT_SYMBOL(memcpy,2.2.5);<br>
=C2=A0#elif defined(__i386__)<br>
=C2=A0GLIBC_COMPAT_SYMBOL(memcpy,2.0);<br>
=C2=A0#endif<br>
+<br>
+#include &lt;linux/capability.h&gt;<br>
diff --git a/ports/linux/pseudo_wrappers.c b/ports/linux/pseudo_wrappers.c<=
br>
index 26b29b0..c6c072b 100644<br>
--- a/ports/linux/pseudo_wrappers.c<br>
+++ b/ports/linux/pseudo_wrappers.c<br>
@@ -31,3 +31,10 @@ int<br>
=C2=A0pseudo_fstat64(int fd, struct stat64 *buf) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return real___fxstat64(_STAT_VER, fd, buf);<br>
=C2=A0}<br>
+<br>
+int pseudo_capset(cap_user_header_t hdrp, const cap_user_data_t datap) {<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0(void)hdrp;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0(void)datap;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
+}<br>
diff --git a/ports/linux/<a href=3D"http://wrapfuncs.in" rel=3D"noreferrer"=
 target=3D"_blank">wrapfuncs.in</a> b/ports/linux/<a href=3D"http://wrapfun=
cs.in" rel=3D"noreferrer" target=3D"_blank">wrapfuncs.in</a><br>
index 3b8955a..578db35 100644<br>
--- a/ports/linux/<a href=3D"http://wrapfuncs.in" rel=3D"noreferrer" target=
=3D"_blank">wrapfuncs.in</a><br>
+++ b/ports/linux/<a href=3D"http://wrapfuncs.in" rel=3D"noreferrer" target=
=3D"_blank">wrapfuncs.in</a><br>
@@ -51,3 +51,4 @@ int euidaccess(const char *path, int mode);<br>
=C2=A0int getpw(uid_t uid, char *buf);<br>
=C2=A0int getpwent_r(struct passwd *pwbuf, char *buf, size_t buflen, struct=
 passwd **pwbufp);<br>
=C2=A0int getgrent_r(struct group *gbuf, char *buf, size_t buflen, struct g=
roup **gbufp);<br>
+int capset(cap_user_header_t hdrp, const cap_user_data_t datap); /* real_f=
unc=3Dpseudo_capset */<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.8.0<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--001a114631b678e039053605e1ae--
