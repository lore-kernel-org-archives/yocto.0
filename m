Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
 by mx.groups.io with SMTP id smtpd.web09.13244.1626105909844270871
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Jul 2021 09:05:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lvk3fbiN;
 spf=pass (domain: gmail.com, ip: 209.85.217.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f54.google.com with SMTP id e9so8984707vsk.13
        for <yocto@lists.yoctoproject.org>; Mon, 12 Jul 2021 09:05:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eXCZN7a4LlnOKUBT5I9/qffbcaAkvJXX5hnYzMQboyk=;
        b=Lvk3fbiN1j5KWrIek6yjlGyAfUXe8YkN7dPeVfAI3kMeMyViDH6o2uXtWahWWNO/M1
         lSxW2igze/T8bKe0WcmR1lJ84xZo+9yoTL8b23XvBY4VzJGFtyNzR306EknEGb/CluOE
         7/TRBtsWTGWOn9+Ek5z0fyyniOMCg5d47xxVLhLcD77g4PJipEQTKZTkPZU+nca3jas0
         QUochYpi0iTEIjRMkh22o6ETgWyzyKqD/RiJ/zkqTg9PTFDZEHvK8FWoxIRA7kyJS4Tr
         mtljt1FK8wcIl9U/UfskmjhLfe4loOZ7LulnNXtTsxyp1KC6E0/I8QUBQ9D/1+iCkS4m
         jUcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eXCZN7a4LlnOKUBT5I9/qffbcaAkvJXX5hnYzMQboyk=;
        b=Tw9n0cUwjwZtiuyiUKNkUI+KMQaiSj9C+caDHzGC7SGYOMTWM/2APZEYJGhyxliw8h
         hJrTtjdPnTGUHrV7A38vE86mMNvuJPcgSVMyz8NLuZ+FJzxMMhcRlzoDCqLh7+Z6Bv1z
         stnNZupqGa6PLITizSYPArc469gzaiYKBsotko77vg8ZPKb5gGWxgwoXsvNMipq2Gxyq
         OVZc97c7K/mp4sEveN2+5iqDrrC/Ed0MHbAs7ajMm429g+rdFe4LV60fwlgPFc2IsA1k
         0Lc6UKFaJlqrX9oVM2zEadjBlaPvInIxakoJf0ILu0fJSQ4Q1U0DK13niP+oksMA3Bgr
         QAaw==
X-Gm-Message-State: AOAM532ppbB9DPkV7W4/JO2Eh2DgFN2d+2xM6lwLt3V8XZZLlwwe+Zl9
	sJf/Dx6hY1fecCNjkHcbSNBtXCvgURv0SQioV8s=
X-Google-Smtp-Source: ABdhPJw93WIVJ6Rv0thjFvkZUFd8UnK7DW5PRAImznffNso83qC86lY4HuiCtriJAzA9DQGQO9Glx20npub/GNG6jhE=
X-Received: by 2002:a05:6102:3a5a:: with SMTP id c26mr9794950vsu.20.1626105908914;
 Mon, 12 Jul 2021 09:05:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210712121116.218723-1-trevor.gamblin@windriver.com>
In-Reply-To: <20210712121116.218723-1-trevor.gamblin@windriver.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 12 Jul 2021 18:04:57 +0200
Message-ID: <CANNYZj91M+UAg1fDE4dV4rbRxR8mPcMjCkds68zxTgj8xk=erA@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] config.json: track system load with PARALLEL_MAKE
To: Trevor Gamblin <trevor.gamblin@windriver.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="000000000000116f1505c6ef494b"

--000000000000116f1505c6ef494b
Content-Type: text/plain; charset="UTF-8"

I seem to vaguely remember that -l is not actually taking a percentage, but
an absolute value that is specific to the amount of CPU cores a system has.
Have you verified your assumption?

Alex

On Mon, 12 Jul 2021 at 14:11, Trevor Gamblin <trevor.gamblin@windriver.com>
wrote:

> This adds the "-l" option to PARALLEL_MAKE in config.json with an
> initial testing value of 100 (100% system load). This option is supported
> by both Make and Ninja. However, we also require the "--debug=j" option
> to be passed to Make in order for the latter to report perceived system
> load in the do_compile logs, and since this option is not supported by
> Ninja, also add EXTRA_OEMAKE to the EXTRAVARS so that we can determine if
> the target load percentage needs to be adjusted.
>
> Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com>
> ---
>  config.json | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/config.json b/config.json
> index f54081b..7fc89ea 100644
> --- a/config.json
> +++ b/config.json
> @@ -44,7 +44,7 @@
>              "PREMIRRORS = ''",
>              "BB_GENERATE_MIRROR_TARBALLS = '1'",
>              "BB_NUMBER_THREADS = '16'",
> -            "PARALLEL_MAKE = '-j 16'",
> +            "PARALLEL_MAKE = '-j 16 -l 100'",
>              "XZ_MEMLIMIT = '5%'",
>              "XZ_THREADS = '8'",
>              "BB_TASK_NICE_LEVEL = '5'",
> @@ -61,7 +61,8 @@
>              "RUNQEMU_TMPFS_DIR = '/home/pokybuild/tmp'",
>              "BB_HEARTBEAT_EVENT = '60'",
>              "BB_LOG_HOST_STAT_ON_INTERVAL = '1'",
> -            "BB_LOG_HOST_STAT_CMDS_INTERVAL = 'oe-time-dd-test.sh 100'"
> +            "BB_LOG_HOST_STAT_CMDS_INTERVAL = 'oe-time-dd-test.sh 100'",
> +            "EXTRA_OEMAKE = ' --debug=j'"
>          ]
>      },
>      "templates" : {
> --
> 2.31.1
>
>
> 
>
>

--000000000000116f1505c6ef494b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I seem to vaguely remember that -l is not actually ta=
king a percentage, but an absolute value that is specific to the amount of =
CPU cores a system has. Have you verified your assumption?<br></div><div><b=
r></div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Mon, 12 Jul 2021 at 14:11, Trevor Gamblin &lt=
;<a href=3D"mailto:trevor.gamblin@windriver.com">trevor.gamblin@windriver.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">This adds the &quot;-l&quot; option to PARALLEL_MAKE in config.json with =
an<br>
initial testing value of 100 (100% system load). This option is supported<=
br>
by both Make and Ninja. However, we also require the &quot;--debug=3Dj&quo=
t; option<br>
to be passed to Make in order for the latter to report perceived system<br=
>
load in the do_compile logs, and since this option is not supported by<br>
Ninja, also add EXTRA_OEMAKE to the EXTRAVARS so that we can determine if<=
br>
the target load percentage needs to be adjusted.<br>
<br>
Signed-off-by: Trevor Gamblin &lt;<a href=3D"mailto:trevor.gamblin@windriv=
er.com" target=3D"_blank">trevor.gamblin@windriver.com</a>&gt;<br>
---<br>
=C2=A0config.json | 5 +++--<br>
=C2=A01 file changed, 3 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/config.json b/config.json<br>
index f54081b..7fc89ea 100644<br>
--- a/config.json<br>
+++ b/config.json<br>
@@ -44,7 +44,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;PREMIRRORS =3D &#39;=
&#39;&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;BB_GENERATE_MIRROR_T=
ARBALLS =3D &#39;1&#39;&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;BB_NUMBER_THREADS =
=3D &#39;16&#39;&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;PARALLEL_MAKE =3D &#39;-j=
 16&#39;&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;PARALLEL_MAKE =3D &#39;-j=
 16 -l 100&#39;&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;XZ_MEMLIMIT =3D &#39=
;5%&#39;&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;XZ_THREADS =3D &#39;=
8&#39;&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;BB_TASK_NICE_LEVEL =
=3D &#39;5&#39;&quot;,<br>
@@ -61,7 +61,8 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;RUNQEMU_TMPFS_DIR =
=3D &#39;/home/pokybuild/tmp&#39;&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;BB_HEARTBEAT_EVENT =
=3D &#39;60&#39;&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;BB_LOG_HOST_STAT_ON_=
INTERVAL =3D &#39;1&#39;&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;BB_LOG_HOST_STAT_CMDS_INT=
ERVAL =3D &#39;oe-time-dd-test.sh 100&#39;&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;BB_LOG_HOST_STAT_CMDS_INT=
ERVAL =3D &#39;oe-time-dd-test.sh 100&#39;&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRA_OEMAKE =3D &#39; --=
debug=3Dj&#39;&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0]<br>
=C2=A0 =C2=A0 =C2=A0},<br>
=C2=A0 =C2=A0 =C2=A0&quot;templates&quot; : {<br>
-- <br>
2.31.1<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--000000000000116f1505c6ef494b--
