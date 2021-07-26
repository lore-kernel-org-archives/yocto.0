Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web11.32143.1627315362098005043
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jul 2021 09:02:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=XT3Lcshm;
 spf=pass (domain: linaro.org, ip: 209.85.128.51, mailfrom: anibal.limon@linaro.org)
Received: by mail-wm1-f51.google.com with SMTP id f14-20020a05600c154eb02902519e4abe10so2355287wmg.4
        for <yocto@lists.yoctoproject.org>; Mon, 26 Jul 2021 09:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zX6Ar2cv9emaLdYp1W5vVj579LCJRNydUx1OC1IFZ7g=;
        b=XT3LcshmuZZsHD47cmV57rob7DSdeR0MAuN3GC9CLPH2KENCS1Nf7bRRMlcgmvgQGZ
         K/j6zhe9AXVEtWYQ3D5H0vLNWRbmm3I1soG3GHWTT8yhdfYw8gRz7LftdpSDkhSl68SZ
         blAyXPwcP5JD80VBkbkV1G+vht/2hyFsEYYOurPQex233GVpumyRHXuPL8x+RATtMPBR
         OU4YWqGUbzxI9mYFy/abGvHStQ2v4oa/DkdJste/4KmPPvy29qdqcioM7KwJXp8cMu5o
         fBKuKerkKGjPQtqocKXcFVpF3kXkg4WDBw7yZyGPDvdbQ+EbY6M+JhDoiqeNp16t9mUV
         FHzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zX6Ar2cv9emaLdYp1W5vVj579LCJRNydUx1OC1IFZ7g=;
        b=PjdY1B0SXvHt372HJ4NTL3vIkGcAC4igKB5ez998hoep3siIU0c+RpzqDYVNB73Wxx
         AUHB22VMKMWFkmUq+TXvsmQhev1U+PlvLSxnlgggK84K3v0lxj72dqag+3ybDE7UjUdR
         LwTi7rS20s9zLPoRupbHbJb9MtzUY3DjOYas/aM0Fd2Rb3201BwiSTGKJq79fEBMg9Be
         SfsdS3zIzfMxWpZXt+9rojU3ig8Kq0V6NpVg4KIMkBCRJV6leNkoVieMNxsDW5Sb6NEa
         o4cUj8k/jYSFZuMKSPGcG8b9A7GTGWnZtd4iNZ19uph3b2dxnJ6+QYwt9yGJGVw3ujY8
         U6zA==
X-Gm-Message-State: AOAM532lOjES1XD8GehffpQOmpIDlB3Nl6JZMK0fFEjX4SaQjPyB3ff0
	rpyz8vT227NHjfKdRoMUh4kX5hO2V9xZ1iRcBO6yFw==
X-Google-Smtp-Source: ABdhPJwG90YdYEUdwoARD3HHUOhLBams7RFYr+CQ7tL7+YBAXestxitzoIftsTog1Jrwz4EhaAF8ziodcb8VktkQgfw=
X-Received: by 2002:a1c:a78a:: with SMTP id q132mr9658336wme.76.1627315360545;
 Mon, 26 Jul 2021 09:02:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210721094627.29833-1-lukma@denx.de> <20210721094627.29833-3-lukma@denx.de>
In-Reply-To: <20210721094627.29833-3-lukma@denx.de>
From: "Anibal Limon" <anibal.limon@linaro.org>
Date: Mon, 26 Jul 2021 11:02:29 -0500
Message-ID: <CA+_AqivdX3fFX-D6dUfk_Cn=_KQyZJdfa-no2b1Ep0Gnsssa-Q@mail.gmail.com>
Subject: Re: [yocto] [ptest-runner 2/5] mem: Fix memleak for ptest_opts
To: "?ukasz Majewski" <lukma@denx.de>
Cc: yocto@lists.yoctoproject.org, 
	Adrian Freihofer <adrian.freihofer@siemens.com>
Content-Type: multipart/alternative; boundary="00000000000000de7605c808e21c"

--00000000000000de7605c808e21c
Content-Type: text/plain; charset="UTF-8"

Hi,

In a normal execution this memleak doesn't have a bad effect in practical
terms because at end of the program the memory will be free'd.

I'm fine to pick this patch.

Regards,
Anibal

On Wed, 21 Jul 2021 at 04:46, ?ukasz Majewski <lukma@denx.de> wrote:

> From: Adrian Freihofer <adrian.freihofer@siemens.com>
>
> make && valgrind -s --leak-check=full ./ptest-runner -d tests/data2
>
> ==4154029== HEAP SUMMARY:
> ==4154029==     in use at exit: 20 bytes in 2 blocks
> ==4154029==   total heap usage: 45 allocs, 43 frees, 42,909 bytes allocated
> ==4154029==
> ==4154029== 20 (8 direct, 12 indirect) bytes in 1 blocks are definitely
> lost in loss record 2 of 2
> ==4154029==    at 0x4839809: malloc (vg_replace_malloc.c:307)
> ==4154029==    by 0x40252D: str2array (main.c:70)
> ==4154029==    by 0x402768: main (main.c:119)
> ==4154029==
> ==4154029== LEAK SUMMARY:
> ==4154029==    definitely lost: 8 bytes in 1 blocks
> ==4154029==    indirectly lost: 12 bytes in 1 blocks
> ==4154029==      possibly lost: 0 bytes in 0 blocks
> ==4154029==    still reachable: 0 bytes in 0 blocks
> ==4154029==         suppressed: 0 bytes in 0 blocks
> ==4154029==
> ==4154029== ERROR SUMMARY: 1 errors from 1 contexts (suppressed: 0 from 0)
>
> With this patch valgrind reports 0 errors.
>
> Signed-off-by: Adrian Freihofer <adrian.freihofer@siemens.com>
> ---
>  main.c | 21 ++++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)
>
> diff --git a/main.c b/main.c
> index 467548e..e73626c 100644
> --- a/main.c
> +++ b/main.c
> @@ -84,6 +84,25 @@ str2array(char *str, const char *delim, int *num)
>         return array;
>  }
>
> +void cleanup_ptest_opts(struct ptest_options *opts)
> +{
> +       for (int i=0; i < opts->dirs_no; i++)
> +               free(opts->dirs[i]);
> +
> +       free(opts->dirs);
> +       opts->dirs = NULL;
> +
> +       if (opts->ptests) {
> +               free(opts->ptests);
> +               opts->ptests = NULL;
> +       }
> +
> +       if (opts->xml_filename) {
> +               free(opts->xml_filename);
> +               opts->xml_filename = NULL;
> +       }
> +}
> +
>  int
>  main(int argc, char *argv[])
>  {
> @@ -98,7 +117,7 @@ main(int argc, char *argv[])
>  #endif
>
>         struct ptest_list *head, *run;
> -       struct ptest_options opts;
> +       __attribute__ ((__cleanup__(cleanup_ptest_opts))) struct
> ptest_options opts;
>
>         opts.dirs = malloc(sizeof(char **) * 1);
>         CHECK_ALLOCATION(opts.dirs, 1, 1);
> --
> 2.20.1
>
>
> 
>
>

--00000000000000de7605c808e21c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>In a normal execution this memleak =
doesn&#39;t have a bad effect in practical terms because at end of the prog=
ram the memory will be free&#39;d.</div><div><br></div><div>I&#39;m fine to=
 pick this patch.</div><div><br></div><div>Regards,</div><div>Anibal</div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Wed, 21 Jul 2021 at 04:46, ?ukasz Majewski &lt;<a href=3D"mailto:lukma@de=
nx.de">lukma@denx.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">From: Adrian Freihofer &lt;<a href=3D"mailto:adrian.fre=
ihofer@siemens.com" target=3D"_blank">adrian.freihofer@siemens.com</a>&gt;<=
br>
<br>
make &amp;&amp; valgrind -s --leak-check=3Dfull ./ptest-runner -d tests/da=
ta2<br>
<br>
=3D=3D4154029=3D=3D HEAP SUMMARY:<br>
=3D=3D4154029=3D=3D=C2=A0 =C2=A0 =C2=A0in use at exit: 20 bytes in 2 block=
s<br>
=3D=3D4154029=3D=3D=C2=A0 =C2=A0total heap usage: 45 allocs, 43 frees, 42,=
909 bytes allocated<br>
=3D=3D4154029=3D=3D<br>
=3D=3D4154029=3D=3D 20 (8 direct, 12 indirect) bytes in 1 blocks are defin=
itely lost in loss record 2 of 2<br>
=3D=3D4154029=3D=3D=C2=A0 =C2=A0 at 0x4839809: malloc (vg_replace_malloc.c=
:307)<br>
=3D=3D4154029=3D=3D=C2=A0 =C2=A0 by 0x40252D: str2array (main.c:70)<br>
=3D=3D4154029=3D=3D=C2=A0 =C2=A0 by 0x402768: main (main.c:119)<br>
=3D=3D4154029=3D=3D<br>
=3D=3D4154029=3D=3D LEAK SUMMARY:<br>
=3D=3D4154029=3D=3D=C2=A0 =C2=A0 definitely lost: 8 bytes in 1 blocks<br>
=3D=3D4154029=3D=3D=C2=A0 =C2=A0 indirectly lost: 12 bytes in 1 blocks<br>
=3D=3D4154029=3D=3D=C2=A0 =C2=A0 =C2=A0 possibly lost: 0 bytes in 0 blocks=
<br>
=3D=3D4154029=3D=3D=C2=A0 =C2=A0 still reachable: 0 bytes in 0 blocks<br>
=3D=3D4154029=3D=3D=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0suppressed: 0 bytes i=
n 0 blocks<br>
=3D=3D4154029=3D=3D<br>
=3D=3D4154029=3D=3D ERROR SUMMARY: 1 errors from 1 contexts (suppressed: 0=
 from 0)<br>
<br>
With this patch valgrind reports 0 errors.<br>
<br>
Signed-off-by: Adrian Freihofer &lt;<a href=3D"mailto:adrian.freihofer@sie=
mens.com" target=3D"_blank">adrian.freihofer@siemens.com</a>&gt;<br>
---<br>
=C2=A0main.c | 21 ++++++++++++++++++++-<br>
=C2=A01 file changed, 20 insertions(+), 1 deletion(-)<br>
<br>
diff --git a/main.c b/main.c<br>
index 467548e..e73626c 100644<br>
--- a/main.c<br>
+++ b/main.c<br>
@@ -84,6 +84,25 @@ str2array(char *str, const char *delim, int *num)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return array;<br>
=C2=A0}<br>
<br>
+void cleanup_ptest_opts(struct ptest_options *opts)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0for (int i=3D0; i &lt; opts-&gt;dirs_no; i++)<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0free(opts-&gt;dirs=
[i]);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0free(opts-&gt;dirs);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0opts-&gt;dirs =3D NULL;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (opts-&gt;ptests) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0free(opts-&gt;ptes=
ts);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0opts-&gt;ptests =
=3D NULL;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (opts-&gt;xml_filename) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0free(opts-&gt;xml_=
filename);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0opts-&gt;xml_filen=
ame =3D NULL;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+}<br>
+<br>
=C2=A0int<br>
=C2=A0main(int argc, char *argv[])<br>
=C2=A0{<br>
@@ -98,7 +117,7 @@ main(int argc, char *argv[])<br>
=C2=A0#endif<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct ptest_list *head, *run;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ptest_options opts;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0__attribute__ ((__cleanup__(cleanup_ptest_opts=
))) struct ptest_options opts;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 opts.dirs =3D malloc(sizeof(char **) * 1);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 CHECK_ALLOCATION(opts.dirs, 1, 1);<br>
-- <br>
2.20.1<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--00000000000000de7605c808e21c--
