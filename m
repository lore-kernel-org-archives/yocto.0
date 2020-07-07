Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.16648.1594129767028169353
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jul 2020 06:49:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=Ew7jGvUC;
 spf=softfail (domain: linaro.org, ip: 140.211.169.56, mailfrom: anibal.limon@linaro.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9546FE01D97; Tue,  7 Jul 2020 06:49:26 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38A73E0088B
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2020 06:49:23 -0700 (PDT)
Received: by mail-wm1-f68.google.com with SMTP id o8so43341924wmh.4
        for <yocto@yoctoproject.org>; Tue, 07 Jul 2020 06:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tHLhXDLR6cZgt/FwsV2UjLF1A1fMZrvLqCigLNNCAnc=;
        b=Ew7jGvUCxtZ6C/+nkDAvN2PL411l9cyvo7Tp6cnsYIJvgbGO80luApHErcGC6Trpiw
         YVt+LlfEIuCwIii4cnidwdmBFswB0UZHinyUHwZDOCZS4K5xqrWImK4S5rnWtEz4CLcG
         BIJGflaH/NHGxGQ53nzcxXt3ZULbje+87kycQeb0XlWr9AsoZGUmfL+R6j+2MHvjjath
         anPxtkJmzeOvVpYlr6D+WogHTPJ/GwSjmlIZYegsCfjImaOFOSzSzgfn8kEp1zLprHq9
         3CpIlOjuV0yDvj5aboeqZVhBRKZ2copaTivZlc0MdZaTs3kH/BNVsUz2eL1x4C+MNt+W
         aCOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tHLhXDLR6cZgt/FwsV2UjLF1A1fMZrvLqCigLNNCAnc=;
        b=R2tSkSbfzUxftHA5L7ups3RnaWSify2bHJOFON8SREr4w0Yx5cG3eHvrdFpRvSTwuh
         +OredXZ7kFBww5+unR2Q5zXG5QA3nbKULd16H18AX4tOABztp0LbqqTNPGHk0vLvTIMz
         kRvicfjWT/yPHodMqQtIZTcWJoy4LTwMSsvK9jl7x4sgd/Hs33Lvuyndwj9zZ3TMc4lz
         RJ0s6ybGG0trtcPE6/xtNXoTDdbIimUUTlfZ72Le4H/yZ8SGJ2nHdA9EhCpTQ7anxSqc
         qXbOr1vEl+yUZXe2eTIX7HjLUFOwQAo8RNad+C8tf7CVYToXFcITWo8VumWmHpBIGo0a
         S5nw==
X-Gm-Message-State: AOAM532KifTQHpGoqe8PsSoPbgP2usa/51k0apV5k6EZ2hgFIRTaocJ1
	Td/MSnmtaVQEkSYhuR9uuJQiqNeXbHlASB1yrok7aQ==
X-Google-Smtp-Source: ABdhPJwgoynUz2gOwrckR/QoLeHCq2I/K+zWOBCtwXSC5FffX9fUq9GhNqnqRlvGvbJl7RlbShYMpk9Gb5tMkgkzcbQ=
X-Received: by 2002:a1c:2e0e:: with SMTP id u14mr4268725wmu.55.1594129762636;
 Tue, 07 Jul 2020 06:49:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200707072140.152639-1-tero.kinnunen@vaisala.com>
In-Reply-To: <20200707072140.152639-1-tero.kinnunen@vaisala.com>
From: "Anibal Limon" <anibal.limon@linaro.org>
Date: Tue, 7 Jul 2020 08:49:11 -0500
Message-ID: <CA+_Aqit9G99McMscX24hr5OqS0-WCcOWP5H2f6iqbQ=OvKM2Pg@mail.gmail.com>
Subject: Re: [ptest-runner][PATCH] Fix inappropriate ioctl when detaching tty
To: Tero Kinnunen <tero.kinnunen@vaisala.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000003a839505a9da426e"

--0000000000003a839505a9da426e
Content-Type: text/plain; charset="UTF-8"

Hi Tero,

First thanks for the patch, Is there an option to test for isatty(fd) for
run ioctl instead?.

Regards,
Anibal

On Tue, 7 Jul 2020 at 02:21, Tero Kinnunen <tero.kinnunen@vaisala.com>
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
>     $ ssh localhost ptest-runner a
>
> For ssh case, fd 0 is not a tty. (isatty(0) is false).
> When running multiple ptests, deattach for parent needs to be
> done only once. On subsequent calls, if deattach fails,
> according to man 4 tty
>
>     it is obviously not attached to a terminal and does not
>     need to detach itself.
>
> Detach was not necessary, skip the error message.
>
> Signed-off-by: Tero Kinnunen <tero.kinnunen@vaisala.com>
> ---
>  utils.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/utils.c b/utils.c
> index a8ba190..35ef551 100644
> --- a/utils.c
> +++ b/utils.c
> @@ -444,7 +444,7 @@ run_ptests(struct ptest_list *head, const struct
> ptest_options opts,
>                                 break;
>                         }
>                         dirname(ptest_dir);
> -                       if (ioctl(0, TIOCNOTTY) == -1) {
> +                       if (ioctl(0, TIOCNOTTY) == -1 && errno != ENOTTY) {
>                                 fprintf(fp, "ERROR: Unable to detach from
> controlling tty, %s\n", strerror(errno));
>                         }
>
> --
> 2.25.1
>
>

--0000000000003a839505a9da426e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Tero,<div><br></div><div>First thanks =
for the patch, Is there an option to test for isatty(fd) for run ioctl inst=
ead?.</div><div><br></div><div>Regards,</div><div>Anibal</div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 7 Jul=
 2020 at 02:21, Tero Kinnunen &lt;<a href=3D"mailto:tero.kinnunen@vaisala.c=
om">tero.kinnunen@vaisala.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">Fixes error<br>
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
=C2=A0 =C2=A0 $ ssh localhost ptest-runner a<br>
<br>
For ssh case, fd 0 is not a tty. (isatty(0) is false).<br>
When running multiple ptests, deattach for parent needs to be<br>
done only once. On subsequent calls, if deattach fails,<br>
according to man 4 tty<br>
<br>
=C2=A0 =C2=A0 it is obviously not attached to a terminal and does not<br>
=C2=A0 =C2=A0 need to detach itself.<br>
<br>
Detach was not necessary, skip the error message.<br>
<br>
Signed-off-by: Tero Kinnunen &lt;<a href=3D"mailto:tero.kinnunen@vaisala.co=
m" target=3D"_blank">tero.kinnunen@vaisala.com</a>&gt;<br>
---<br>
=C2=A0utils.c | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/utils.c b/utils.c<br>
index a8ba190..35ef551 100644<br>
--- a/utils.c<br>
+++ b/utils.c<br>
@@ -444,7 +444,7 @@ run_ptests(struct ptest_list *head, const struct ptest_=
options opts,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 dirname(ptest_dir);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0if (ioctl(0, TIOCNOTTY) =3D=3D -1) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0if (ioctl(0, TIOCNOTTY) =3D=3D -1 &amp;&amp; errno !=3D ENOTTY) {=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fprintf(fp, &quot;ERROR: Unable to d=
etach from controlling tty, %s\n&quot;, strerror(errno));<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 }<br>
<br>
-- <br>
2.25.1<br>
<br>
</blockquote></div></div>

--0000000000003a839505a9da426e--
