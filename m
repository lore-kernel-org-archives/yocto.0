Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.4261.1594668581905742645
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Jul 2020 12:29:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=dTPAYbmH;
 spf=softfail (domain: linaro.org, ip: 140.211.169.56, mailfrom: anibal.limon@linaro.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8359FE01E7B; Mon, 13 Jul 2020 12:29:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.128.68 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94C5BE01E79
	for <yocto@yoctoproject.org>; Mon, 13 Jul 2020 12:29:39 -0700 (PDT)
Received: by mail-wm1-f68.google.com with SMTP id j18so953969wmi.3
        for <yocto@yoctoproject.org>; Mon, 13 Jul 2020 12:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=g9qxfxLwYolZQvQySaVG4DN/iFnccLflUpPiJDh7cQw=;
        b=dTPAYbmHXOpIZA2O/5R2QXspu+b4jhrIUFmgDgK4GLpJw10Undxy5OkSZ+rc4FcEw0
         6qbZpM0NNQWzkCSsLlyme6PafZzvHRR4EAB4wPOH67LafnOv1mQxekN99gc5kpysurej
         tkoJqWP967Zz4BcOQcHNH88dP0gXVtWXXraoxPxyEmS311G3aeUCmmnVpJ8g5oT7gHOc
         maL9C5Kl1AEBjYEwKErOjcpm/HqDvnhKNq1H1GUF7mHSnysA1P92VQML8ZRygM7JZwmS
         dbHOoDy6s75H39J2mSwzyT9mGcZ9XkBEz9omq5QwpJVAM+DIVzLXdN5wn1uUtbvIMuJq
         x6xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=g9qxfxLwYolZQvQySaVG4DN/iFnccLflUpPiJDh7cQw=;
        b=or8zlGKpRtdXHM8bLhrJYOjrQ2xcmmfpoSbSsbMGQ/ZxmI/InGoloMHQ/ut39+SQx2
         pPMJN3WkrHEKI3T6SIfs1CCWtVALJVLmIY3wJu8NOF7gJTH52Mfr8kQSx0WuE2ziXFTo
         ViHvVlvMYqMcXpwT5aLL9n4RZcEirExuq9Mjs7ND2McT3KYrval6RzzmoyLG6zVbB9Wb
         RdG9argdfQCaqh9lVeeulgxtQHipIPY4tlOMX8K/S95q6VGCF5Qm5Zl42tORO1q0sAlG
         nA6voCuKTK40ElmxTc0/XDIPY52qMHdhvtdGFqmB7M0w5jr5dui37F9IbNGikkIYNmEI
         YGFQ==
X-Gm-Message-State: AOAM530oFQB9fYLuDKSw7SJU/nq/JpIOzIf/4ObFwfqnibZZAtVdIpC7
	01rxU7hof1icu1hSl+McOQdrjrJx5hJqZYpMV5BpJExh
X-Google-Smtp-Source: ABdhPJxG+p4oYccKT88Ak9/VhBU1+TNP+l7s7k3XjbYU9hBR2uxp8LKxOhkXADH6qrCDbJLekLB0HkPDxnr1Bu7Tfs0=
X-Received: by 2002:a1c:3bc1:: with SMTP id i184mr892725wma.119.1594668579065;
 Mon, 13 Jul 2020 12:29:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200710054432.557157-1-tero.kinnunen@vaisala.com>
In-Reply-To: <20200710054432.557157-1-tero.kinnunen@vaisala.com>
From: "Anibal Limon" <anibal.limon@linaro.org>
Date: Mon, 13 Jul 2020 14:29:28 -0500
Message-ID: <CA+_Aqit4UM=EH5ztSHbuVx84eHzoQN0NPU+ADEY7Sfi7=WpNDA@mail.gmail.com>
Subject: Re: [ptest-runner][PATCH v2] Fix inappropriate ioctl when detaching tty
To: Tero Kinnunen <tero.kinnunen@vaisala.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000030aa9605aa57b63c"

--00000000000030aa9605aa57b63c
Content-Type: text/plain; charset="UTF-8"

Applied, Thanks!.

Anibal

On Fri, 10 Jul 2020 at 00:44, Tero Kinnunen <tero.kinnunen@vaisala.com>
wrote:

> Fixes error
>
>     ERROR: Unable to detach from controlling tty, Inappropriate ioctl for
> device
>
> when running multiple ptests
>
>     ptest-runner a b
>
> or when invoked over ssh single command, like
>
>     $ ssh localhost ptest-runner
>
> For ssh case, fd 0 is not a tty. (isatty(0) is false).
> When running multiple ptests, deattach for parent needs to be
> done only once.
>
> Signed-off-by: Tero Kinnunen <tero.kinnunen@vaisala.com>
> ---
>  utils.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/utils.c b/utils.c
> index a8ba190..a4e190e 100644
> --- a/utils.c
> +++ b/utils.c
> @@ -437,6 +437,9 @@ run_ptests(struct ptest_list *head, const struct
> ptest_options opts,
>                         break;
>                 }
>                 fprintf(fp, "START: %s\n", progname);
> +               if (isatty(0) && ioctl(0, TIOCNOTTY) == -1) {
> +                       fprintf(fp, "ERROR: Unable to detach from
> controlling tty, %s\n", strerror(errno));
> +               }
>                 PTEST_LIST_ITERATE_START(head, p)
>                         char *ptest_dir = strdup(p->run_ptest);
>                         if (ptest_dir == NULL) {
> @@ -444,9 +447,6 @@ run_ptests(struct ptest_list *head, const struct
> ptest_options opts,
>                                 break;
>                         }
>                         dirname(ptest_dir);
> -                       if (ioctl(0, TIOCNOTTY) == -1) {
> -                               fprintf(fp, "ERROR: Unable to detach from
> controlling tty, %s\n", strerror(errno));
> -                       }
>
>                         if ((pgid = getpgid(0)) == -1) {
>                                 fprintf(fp, "ERROR: getpgid() failed,
> %s\n", strerror(errno));
> --
> 2.25.1
>
>

--00000000000030aa9605aa57b63c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Applied, Thanks!.<div><br></div><div>Anibal</div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 1=
0 Jul 2020 at 00:44, Tero Kinnunen &lt;<a href=3D"mailto:tero.kinnunen@vais=
ala.com">tero.kinnunen@vaisala.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">Fixes error<br>
<br>
=C2=A0 =C2=A0 ERROR: Unable to detach from controlling tty, Inappropriate i=
octl for device<br>
<br>
when running multiple ptests<br>
<br>
=C2=A0 =C2=A0 ptest-runner a b<br>
<br>
or when invoked over ssh single command, like<br>
<br>
=C2=A0 =C2=A0 $ ssh localhost ptest-runner<br>
<br>
For ssh case, fd 0 is not a tty. (isatty(0) is false).<br>
When running multiple ptests, deattach for parent needs to be<br>
done only once.<br>
<br>
Signed-off-by: Tero Kinnunen &lt;<a href=3D"mailto:tero.kinnunen@vaisala.co=
m" target=3D"_blank">tero.kinnunen@vaisala.com</a>&gt;<br>
---<br>
=C2=A0utils.c | 6 +++---<br>
=C2=A01 file changed, 3 insertions(+), 3 deletions(-)<br>
<br>
diff --git a/utils.c b/utils.c<br>
index a8ba190..a4e190e 100644<br>
--- a/utils.c<br>
+++ b/utils.c<br>
@@ -437,6 +437,9 @@ run_ptests(struct ptest_list *head, const struct ptest_=
options opts,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 break;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fprintf(fp, &quot;S=
TART: %s\n&quot;, progname);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (isatty(0) &amp;=
&amp; ioctl(0, TIOCNOTTY) =3D=3D -1) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0fprintf(fp, &quot;ERROR: Unable to detach from controlling tty, %=
s\n&quot;, strerror(errno));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PTEST_LIST_ITERATE_=
START(head, p)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 char *ptest_dir =3D strdup(p-&gt;run_ptest);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if (ptest_dir =3D=3D NULL) {<br>
@@ -444,9 +447,6 @@ run_ptests(struct ptest_list *head, const struct ptest_=
options opts,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 dirname(ptest_dir);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0if (ioctl(0, TIOCNOTTY) =3D=3D -1) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(fp, &quot;ERROR: Unable to de=
tach from controlling tty, %s\n&quot;, strerror(errno));<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0}<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if ((pgid =3D getpgid(0)) =3D=3D -1) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fprintf(fp, &quot;ERROR: getpgid() f=
ailed, %s\n&quot;, strerror(errno));<br>
-- <br>
2.25.1<br>
<br>
</blockquote></div>

--00000000000030aa9605aa57b63c--
