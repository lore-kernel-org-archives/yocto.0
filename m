Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB9CDE00C4C; Thu, 14 Apr 2016 04:33:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C1A8E00931
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 04:33:17 -0700 (PDT)
Received: by mail-ig0-f176.google.com with SMTP id ui10so87648528igc.1
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 04:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ggSVmarJEr7MnOWs+N0ex9gQRi9sLw4fdrPXSdBBr/Y=;
	b=CQucoBF+aJ8Sz30m4jgU14wW7SsfBPQfYLG/P++hhTte+dBngQLdWScoBSvLts7/fd
	QiUx4bHYD5MHTzMUMPe14I9towtleyR7iJaFkUg6LJB7KHvfqMCO/O0kNWiS49WoRUDC
	cyrrsiOuI27NP7Wn+7+y/nvzW+Jbxv3PLgxE3hctXAXqD/sb2aJz0ueBcKz3HbbI9SI+
	pAI6f5Hl3OpBDRDBkzC9hH5H8NQqrs+n0BSBTMvLZr9Ay/Px7UagjQjESSwdPNa29tWt
	3A36puFEyNz7AYQvygnVGM/4zjsI5ssZuuNKhRewGyEVa8exHSuaZRA8zmjPkqqJgbhw
	RXOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ggSVmarJEr7MnOWs+N0ex9gQRi9sLw4fdrPXSdBBr/Y=;
	b=EGRfMFtkDkOb8NiZCTVUsxFNuRj7u83rmO5ZPActXWgs/ry/lXab5rKMEd5A/ft1g9
	pn1xpwrENy6O+0+j5iIMYcHv0sXoXwbW9qSfjIE2dXVt+I9Q/NWy201U6VSPjNTRaw8F
	dJfxXyREQ021RCc0yUOVoJKMJrdRm08OSWJIuP3HHxRkt4Jl27hru9I1smgE0tydT2eD
	faknz3CY1Bhxk7FPS8XZrZ0TT4tXxX7naTrbv/dWs/6IZKXnqJ6Te8RgKX4z8ReicTHx
	uYbAxF9vsrCknhINWZwofLSVsrDTjwzD8LH6c6zGnv4t6nozxeZZ+fajpAA68ritKZIU
	4CYg==
X-Gm-Message-State: AOPr4FWvOgLkhevKFylrCUKz5+PiGufvXghwTx8RyMsNhHaoLWw2UuuYGqn9x6Ai67TQi+a7ORsrjpWHy1HTxHEM
X-Received: by 10.50.67.113 with SMTP id m17mr15508583igt.52.1460633596706;
	Thu, 14 Apr 2016 04:33:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.132.24 with HTTP; Thu, 14 Apr 2016 04:32:57 -0700 (PDT)
In-Reply-To: <1460631581-16990-1-git-send-email-richard.leitner@skidata.com>
References: <1460631581-16990-1-git-send-email-richard.leitner@skidata.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 14 Apr 2016 12:32:57 +0100
Message-ID: <CAJTo0LYxtzv7cN5TQn+iu-gcnqbBN2uqbEseHBdw=dhjtNWZtQ@mail.gmail.com>
To: Richard Leitner <richard.leitner@skidata.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [psplash][PATCH 5/5] psplash: fix remaining unused-parameter warnings
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
X-List-Received-Date: Thu, 14 Apr 2016 11:33:23 -0000
Content-Type: multipart/alternative; boundary=047d7bd753eaaddc8f0530704269

--047d7bd753eaaddc8f0530704269
Content-Type: text/plain; charset=UTF-8

All pushed, thanks Richard.

Ross

On 14 April 2016 at 11:59, Richard Leitner <richard.leitner@skidata.com>
wrote:

> Define UNUSED macro for GCC's ((__unused__)) attribute and use it for
> the remaining unused-parameter warnings. These unused parameters are
> required due to the definition of the sighandler_t.
>
> This fixes following unused-parameter warnings:
>
> psplash.c: In function 'psplash_exit':
> psplash.c:36:19: warning: unused parameter 'signum' [-Wunused-parameter]
>
> psplash-console.c: In function 'vt_request':
> psplash-console.c:27:17: warning: unused parameter 'sig'
> [-Wunused-parameter]
>
> Signed-off-by: Richard Leitner <richard.leitner@skidata.com>
> ---
>  psplash-console.c | 2 +-
>  psplash.c         | 2 +-
>  psplash.h         | 6 ++++++
>  3 files changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/psplash-console.c b/psplash-console.c
> index 9b7dfb9..055f5b0 100644
> --- a/psplash-console.c
> +++ b/psplash-console.c
> @@ -24,7 +24,7 @@ static int VTNumInitial   = -1;
>  static int Visible        =  1;
>
>  static void
> -vt_request (int sig)
> +vt_request (int UNUSED(sig))
>  {
>    DBG("mark, visible:%i", Visible);
>
> diff --git a/psplash.c b/psplash.c
> index c72d120..04d3d49 100644
> --- a/psplash.c
> +++ b/psplash.c
> @@ -33,7 +33,7 @@
>         )
>
>  void
> -psplash_exit (int signum)
> +psplash_exit (int UNUSED(signum))
>  {
>    DBG("mark");
>
> diff --git a/psplash.h b/psplash.h
> index 22d73a3..7b1298f 100644
> --- a/psplash.h
> +++ b/psplash.h
> @@ -69,6 +69,12 @@ typedef int            bool;
>  #define DBG(x, a...) do {} while (0)
>  #endif
>
> +#ifdef __GNUC__
> +#  define UNUSED(x) UNUSED_ ## x __attribute__((__unused__))
> +#else
> +#  define UNUSED(x) UNUSED_ ## x
> +#endif
> +
>  typedef struct PSplashFont
>  {
>      char *name;                                /* Font name. */
> --
> 2.1.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7bd753eaaddc8f0530704269
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">All pushed, thanks Richard.<div><br></div><div>Ross</div><=
/div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 14 April =
2016 at 11:59, Richard Leitner <span dir=3D"ltr">&lt;<a href=3D"mailto:rich=
ard.leitner@skidata.com" target=3D"_blank">richard.leitner@skidata.com</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Define UNUSED macro for=
 GCC&#39;s ((__unused__)) attribute and use it for<br>
the remaining unused-parameter warnings. These unused parameters are<br>
required due to the definition of the sighandler_t.<br>
<br>
This fixes following unused-parameter warnings:<br>
<br>
psplash.c: In function &#39;psplash_exit&#39;:<br>
psplash.c:36:19: warning: unused parameter &#39;signum&#39; [-Wunused-param=
eter]<br>
<br>
psplash-console.c: In function &#39;vt_request&#39;:<br>
psplash-console.c:27:17: warning: unused parameter &#39;sig&#39;<br>
[-Wunused-parameter]<br>
<br>
Signed-off-by: Richard Leitner &lt;<a href=3D"mailto:richard.leitner@skidat=
a.com">richard.leitner@skidata.com</a>&gt;<br>
---<br>
=C2=A0psplash-console.c | 2 +-<br>
=C2=A0psplash.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 +-<br>
=C2=A0psplash.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 6 ++++++<br>
=C2=A03 files changed, 8 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/psplash-console.c b/psplash-console.c<br>
index 9b7dfb9..055f5b0 100644<br>
--- a/psplash-console.c<br>
+++ b/psplash-console.c<br>
@@ -24,7 +24,7 @@ static int VTNumInitial=C2=A0 =C2=A0=3D -1;<br>
=C2=A0static int Visible=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D=C2=A0 1;<br>
<br>
=C2=A0static void<br>
-vt_request (int sig)<br>
+vt_request (int UNUSED(sig))<br>
=C2=A0{<br>
=C2=A0 =C2=A0DBG(&quot;mark, visible:%i&quot;, Visible);<br>
<br>
diff --git a/psplash.c b/psplash.c<br>
index c72d120..04d3d49 100644<br>
--- a/psplash.c<br>
+++ b/psplash.c<br>
@@ -33,7 +33,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 )<br>
<br>
=C2=A0void<br>
-psplash_exit (int signum)<br>
+psplash_exit (int UNUSED(signum))<br>
=C2=A0{<br>
=C2=A0 =C2=A0DBG(&quot;mark&quot;);<br>
<br>
diff --git a/psplash.h b/psplash.h<br>
index 22d73a3..7b1298f 100644<br>
--- a/psplash.h<br>
+++ b/psplash.h<br>
@@ -69,6 +69,12 @@ typedef int=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 boo=
l;<br>
=C2=A0#define DBG(x, a...) do {} while (0)<br>
=C2=A0#endif<br>
<br>
+#ifdef __GNUC__<br>
+#=C2=A0 define UNUSED(x) UNUSED_ ## x __attribute__((__unused__))<br>
+#else<br>
+#=C2=A0 define UNUSED(x) UNUSED_ ## x<br>
+#endif<br>
+<br>
=C2=A0typedef struct PSplashFont<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0char *name;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Fo=
nt name. */<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.1.4<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--047d7bd753eaaddc8f0530704269--
