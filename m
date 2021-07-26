Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web11.32183.1627315551624329562
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jul 2021 09:05:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=IsA9kDAQ;
 spf=pass (domain: linaro.org, ip: 209.85.221.46, mailfrom: anibal.limon@linaro.org)
Received: by mail-wr1-f46.google.com with SMTP id e2so11721756wrq.6
        for <yocto@lists.yoctoproject.org>; Mon, 26 Jul 2021 09:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XsGXXqMa4kEFpSP4fSqz/RanYu3LyVERHlEBuxZRKJU=;
        b=IsA9kDAQtHx2t6ZYltNG2vkzpqOVOqTFNLIyb/JqVntBBnwR76AYFG5ZOkklZdJOxl
         aq1BOTNt9yckxzhNr1R04GREbXXza8njAxUMVFCkztwziEUX0eM6DukHEtdan3csRdml
         Il6pUf2xAWvvhZHO/yMkYJmnkEGeLNtPQ2xtS6Bp/kgdly+YxJQXS/5CcPTyOkwfqR1C
         +sRlMuHVMwPgqUXhfzJRHlsDWnneY2A6/R7mcrUKHHxqiIHqc0erz8U00rNdOoHqc4TZ
         gdJqP1tPUs0rIOawO1XlNNbe/lgMqhVjluhAju/4JIFLGvDLKo/6LLSetqoheOGC9OV7
         shWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XsGXXqMa4kEFpSP4fSqz/RanYu3LyVERHlEBuxZRKJU=;
        b=YzUlfPehmDHa/Tyn2zdPbIainw1hD8EAi0YZsHEfBjtqzIivjTQXu7zO7t5Jq7l1LS
         /TNlR1LZPF+rtlecQ1tuWieI7VWbchOSx2yRIi2d7rPDRUhy6X9m3BKZt6b2mfl4CRjk
         j9lDCdNhbG2oa7VU0RJ2HWVtCnRHEg4FB8FgTYV/6HcS2WP83pDpeiBdDIEKa7DzQO0m
         9XB7phIsGx6n+qiCRV8eUouKIDmGF6baoNfKuH0whjB9kWcWQTiLrJQTsC6bC20J6RmS
         LC4zfHIA+Y98PnYh7lIDtf1qWxFnGMNwKIOnk8gQ3rLyEMvyEmLTLy+TMz8RO1G5kD54
         JDvg==
X-Gm-Message-State: AOAM5322OeS/1TSyzvHijnd4GcgvbXRY638zHGsqQV1XgioP2L7a3dBv
	eD9kAlhBy8GJetTurjB/ynk//9uTJy0VWPn88cyo3g==
X-Google-Smtp-Source: ABdhPJwVEOF6kl22UbV9q/pIf29H8gFPsDSw6mk3G9hxF35sQr8usN1Ulwgts6ZfMs0VZFDki61ySDbwCGCUOieOBcQ=
X-Received: by 2002:adf:fac7:: with SMTP id a7mr19837636wrs.384.1627315549846;
 Mon, 26 Jul 2021 09:05:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210721094627.29833-1-lukma@denx.de> <20210721094627.29833-4-lukma@denx.de>
In-Reply-To: <20210721094627.29833-4-lukma@denx.de>
From: "Anibal Limon" <anibal.limon@linaro.org>
Date: Mon, 26 Jul 2021 11:05:39 -0500
Message-ID: <CA+_AqivOPxhXVv2JMJz6D7a9G5XSXwTnwzw4JdUANG9RM7TvuA@mail.gmail.com>
Subject: Re: [yocto] [ptest-runner 3/5] mem: Simplify memory management
To: "?ukasz Majewski" <lukma@denx.de>
Cc: yocto@lists.yoctoproject.org, 
	Adrian Freihofer <adrian.freihofer@siemens.com>
Content-Type: multipart/alternative; boundary="0000000000004955a105c808ed6d"

--0000000000004955a105c808ed6d
Content-Type: text/plain; charset="UTF-8"

Applied, Thanks!,

On Wed, 21 Jul 2021 at 04:47, ?ukasz Majewski <lukma@denx.de> wrote:

> From: Adrian Freihofer <adrian.freihofer@siemens.com>
>
> Removes the following warnings thrown by
> make && valgrind -s --leak-check=full ./ptest-runner -d tests/data2
>
> ==4154390== Invalid write of size 8
> ==4154390==    at 0x40360D: run_child (utils.c:357)
> ==4154390==    by 0x403C5B: run_ptests (utils.c:534)
> ==4154390==    by 0x402C4D: main (main.c:223)
> ==4154390==  Address 0x4a66440 is 0 bytes inside a block of size 2 alloc'd
> ==4154390==    at 0x4839809: malloc (vg_replace_malloc.c:307)
> ==4154390==    by 0x4035E4: run_child (utils.c:354)
> ==4154390==    by 0x403C5B: run_ptests (utils.c:534)
> ==4154390==    by 0x402C4D: main (main.c:223)
> ==4154390==
> ==4154390== Invalid write of size 8
> ==4154390==    at 0x403618: run_child (utils.c:358)
> ==4154390==    by 0x403C5B: run_ptests (utils.c:534)
> ==4154390==    by 0x402C4D: main (main.c:223)
> ==4154390==  Address 0x4a66448 is 6 bytes after a block of size 2 alloc'd
> ==4154390==    at 0x4839809: malloc (vg_replace_malloc.c:307)
> ==4154390==    by 0x4035E4: run_child (utils.c:354)
> ==4154390==    by 0x403C5B: run_ptests (utils.c:534)
> ==4154390==    by 0x402C4D: main (main.c:223)
> ==4154390==
> ==4154390== Syscall param execve(argv) points to unaddressable byte(s)
> ==4154390==    at 0x4955C2B: execve (in /usr/lib64/libc-2.32.so)
> ==4154390==    by 0x40365E: run_child (utils.c:368)
> ==4154390==    by 0x403C5B: run_ptests (utils.c:534)
> ==4154390==    by 0x402C4D: main (main.c:223)
> ==4154390==  Address 0x4a66442 is 0 bytes after a block of size 2 alloc'd
> ==4154390==    at 0x4839809: malloc (vg_replace_malloc.c:307)
> ==4154390==    by 0x4035E4: run_child (utils.c:354)
> ==4154390==    by 0x403C5B: run_ptests (utils.c:534)
> ==4154390==    by 0x402C4D: main (main.c:223)
>
> Signed-off-by: Adrian Freihofer <adrian.freihofer@siemens.com>
> ---
>  utils.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/utils.c b/utils.c
> index bce9808..a23679a 100644
> --- a/utils.c
> +++ b/utils.c
> @@ -351,12 +351,9 @@ read_child(void *arg)
>  static inline void
>  run_child(char *run_ptest, int fd_stdout, int fd_stderr)
>  {
> -       char **argv = malloc(sizeof(char) * 2);
> +       char *const argv[2] = {run_ptest, NULL};
>         chdir(dirname(strdup(run_ptest)));
>
> -       argv[0] = run_ptest;
> -       argv[1] = NULL;
> -
>         dup2(fd_stdout, STDOUT_FILENO);
>         // XXX: Redirect stderr to stdout to avoid buffer ordering
> problems.
>         dup2(fd_stdout, STDERR_FILENO);
> --
> 2.20.1
>
>
> 
>
>

--0000000000004955a105c808ed6d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Applied, Thanks!,</div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Wed, 21 Jul 2021 at 04:47, ?ukasz Maje=
wski &lt;<a href=3D"mailto:lukma@denx.de">lukma@denx.de</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">From: Adrian Freihof=
er &lt;<a href=3D"mailto:adrian.freihofer@siemens.com" target=3D"_blank">ad=
rian.freihofer@siemens.com</a>&gt;<br>
<br>
Removes the following warnings thrown by<br>
make &amp;&amp; valgrind -s --leak-check=3Dfull ./ptest-runner -d tests/da=
ta2<br>
<br>
=3D=3D4154390=3D=3D Invalid write of size 8<br>
=3D=3D4154390=3D=3D=C2=A0 =C2=A0 at 0x40360D: run_child (utils.c:357)<br>
=3D=3D4154390=3D=3D=C2=A0 =C2=A0 by 0x403C5B: run_ptests (utils.c:534)<br>
=3D=3D4154390=3D=3D=C2=A0 =C2=A0 by 0x402C4D: main (main.c:223)<br>
=3D=3D4154390=3D=3D=C2=A0 Address 0x4a66440 is 0 bytes inside a block of s=
ize 2 alloc&#39;d<br>
=3D=3D4154390=3D=3D=C2=A0 =C2=A0 at 0x4839809: malloc (vg_replace_malloc.c=
:307)<br>
=3D=3D4154390=3D=3D=C2=A0 =C2=A0 by 0x4035E4: run_child (utils.c:354)<br>
=3D=3D4154390=3D=3D=C2=A0 =C2=A0 by 0x403C5B: run_ptests (utils.c:534)<br>
=3D=3D4154390=3D=3D=C2=A0 =C2=A0 by 0x402C4D: main (main.c:223)<br>
=3D=3D4154390=3D=3D<br>
=3D=3D4154390=3D=3D Invalid write of size 8<br>
=3D=3D4154390=3D=3D=C2=A0 =C2=A0 at 0x403618: run_child (utils.c:358)<br>
=3D=3D4154390=3D=3D=C2=A0 =C2=A0 by 0x403C5B: run_ptests (utils.c:534)<br>
=3D=3D4154390=3D=3D=C2=A0 =C2=A0 by 0x402C4D: main (main.c:223)<br>
=3D=3D4154390=3D=3D=C2=A0 Address 0x4a66448 is 6 bytes after a block of si=
ze 2 alloc&#39;d<br>
=3D=3D4154390=3D=3D=C2=A0 =C2=A0 at 0x4839809: malloc (vg_replace_malloc.c=
:307)<br>
=3D=3D4154390=3D=3D=C2=A0 =C2=A0 by 0x4035E4: run_child (utils.c:354)<br>
=3D=3D4154390=3D=3D=C2=A0 =C2=A0 by 0x403C5B: run_ptests (utils.c:534)<br>
=3D=3D4154390=3D=3D=C2=A0 =C2=A0 by 0x402C4D: main (main.c:223)<br>
=3D=3D4154390=3D=3D<br>
=3D=3D4154390=3D=3D Syscall param execve(argv) points to unaddressable byt=
e(s)<br>
=3D=3D4154390=3D=3D=C2=A0 =C2=A0 at 0x4955C2B: execve (in /usr/lib64/<a hr=
ef=3D"http://libc-2.32.so" rel=3D"noreferrer" target=3D"_blank">libc-2.32.s=
o</a>)<br>
=3D=3D4154390=3D=3D=C2=A0 =C2=A0 by 0x40365E: run_child (utils.c:368)<br>
=3D=3D4154390=3D=3D=C2=A0 =C2=A0 by 0x403C5B: run_ptests (utils.c:534)<br>
=3D=3D4154390=3D=3D=C2=A0 =C2=A0 by 0x402C4D: main (main.c:223)<br>
=3D=3D4154390=3D=3D=C2=A0 Address 0x4a66442 is 0 bytes after a block of si=
ze 2 alloc&#39;d<br>
=3D=3D4154390=3D=3D=C2=A0 =C2=A0 at 0x4839809: malloc (vg_replace_malloc.c=
:307)<br>
=3D=3D4154390=3D=3D=C2=A0 =C2=A0 by 0x4035E4: run_child (utils.c:354)<br>
=3D=3D4154390=3D=3D=C2=A0 =C2=A0 by 0x403C5B: run_ptests (utils.c:534)<br>
=3D=3D4154390=3D=3D=C2=A0 =C2=A0 by 0x402C4D: main (main.c:223)<br>
<br>
Signed-off-by: Adrian Freihofer &lt;<a href=3D"mailto:adrian.freihofer@sie=
mens.com" target=3D"_blank">adrian.freihofer@siemens.com</a>&gt;<br>
---<br>
=C2=A0utils.c | 5 +----<br>
=C2=A01 file changed, 1 insertion(+), 4 deletions(-)<br>
<br>
diff --git a/utils.c b/utils.c<br>
index bce9808..a23679a 100644<br>
--- a/utils.c<br>
+++ b/utils.c<br>
@@ -351,12 +351,9 @@ read_child(void *arg)<br>
=C2=A0static inline void<br>
=C2=A0run_child(char *run_ptest, int fd_stdout, int fd_stderr)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0char **argv =3D malloc(sizeof(char) * 2);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0char *const argv[2] =3D {run_ptest, NULL};<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 chdir(dirname(strdup(run_ptest)));<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0argv[0] =3D run_ptest;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0argv[1] =3D NULL;<br>
-<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dup2(fd_stdout, STDOUT_FILENO);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 // XXX: Redirect stderr to stdout to avoid buf=
fer ordering problems.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dup2(fd_stdout, STDERR_FILENO);<br>
-- <br>
2.20.1<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--0000000000004955a105c808ed6d--
