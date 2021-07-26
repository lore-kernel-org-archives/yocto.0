Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web10.31729.1627314273178436372
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jul 2021 08:44:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=FQ0RfjUI;
 spf=pass (domain: linaro.org, ip: 209.85.221.44, mailfrom: anibal.limon@linaro.org)
Received: by mail-wr1-f44.google.com with SMTP id h14so3687376wrx.10
        for <yocto@lists.yoctoproject.org>; Mon, 26 Jul 2021 08:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=j7E+aI5No7CVM2Ilkb247h7t6rDGxqbpldq2gydzx1w=;
        b=FQ0RfjUIJbN0z1GrqjJVjNdQ1hvOe/Irh71QaWOIy//eJcGl/0gCmj08RIurmJYX+n
         T3r0saRuN3TSrsAFu6BFsAQNquZ0wSMywfIFyJm/IWkmkj0C24gWyxRADRd3c98eBXBX
         buSxazlxsxhBWiYxQhMq+mWTmzU330krp35uSK6eWPWvSSD+kKn3wDWpPmfh7bJHHZ7n
         mLLKV3N1clpJBAu8sml6Vrt7iZ5T8sWjpjyZFtcxmz7eyqGeC77QICQtRNkFLiuSKoI3
         PymBsnqShPkDTM6lRhXeEOPaCzbhG7xKm/whHv4cGxFx68yhNBM5ty/cm7F+54YHcJPO
         WKKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=j7E+aI5No7CVM2Ilkb247h7t6rDGxqbpldq2gydzx1w=;
        b=ailM3jAcTVBt4egyg9egcP+yNj5BinMQqsLgZuvG0QW56qtk26CqbDZ2CObuoGI3i3
         /7/CLBFzrlX2FlV72jTgx9EaZKPUIY9eZJKA5yvJOtwYioPNf4Wjzcw15pdQAIyD80bx
         aXhXuBcUqdjQieNGBgOwJ7lnvYOVp+2Xy1HD/XZ3e63R4BYRtIi62sMoE9Rb36lRU0wO
         sW6P0vNxhqvajUGr99FmqPrXqpcuu7cV25WkrLar1fHk0UTa/mX7m6WAyEmbQ9V83vxh
         I33Pvqf2J3oKKXS5aAMV5nJtqUhHILxw6PfuQYCLmbMK9LfNaiKIXv/WXzsgdHv9zoDJ
         PUmw==
X-Gm-Message-State: AOAM5338RyPGkTrAwXGE/ctP4QQuCSnyvxi0gvUlBOsqPx+8FDoVpW6Q
	VYantaAN3viSVw6b1osGHj5RcIDGfid5l7Rrm7Nzrw==
X-Google-Smtp-Source: ABdhPJy9Y/hHvzM+wQX1Ps+2cz+vXvdZNtkXMjBsdbuof3la1KaKZA8EaeOX2XiTpjUc4PfuA+EhYKEcsoxRc4qao0E=
X-Received: by 2002:adf:ffd1:: with SMTP id x17mr19661765wrs.411.1627314271803;
 Mon, 26 Jul 2021 08:44:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210721094627.29833-1-lukma@denx.de> <20210721094627.29833-2-lukma@denx.de>
In-Reply-To: <20210721094627.29833-2-lukma@denx.de>
From: "Anibal Limon" <anibal.limon@linaro.org>
Date: Mon, 26 Jul 2021 10:44:21 -0500
Message-ID: <CA+_AqiuOek3zhGN2KO17TokNq757o5-LRd-pPPm+hg_0_hyU4A@mail.gmail.com>
Subject: Re: [yocto] [ptest-runner 1/5] git: Extend the gitignore
To: "?ukasz Majewski" <lukma@denx.de>
Cc: yocto@lists.yoctoproject.org, 
	Adrian Freihofer <adrian.freihofer@siemens.com>
Content-Type: multipart/alternative; boundary="0000000000001bf06205c808a184"

--0000000000001bf06205c808a184
Content-Type: text/plain; charset="UTF-8"

Applied, Thanks!, Anibal.

On Wed, 21 Jul 2021 at 04:47, ?ukasz Majewski <lukma@denx.de> wrote:

> From: Adrian Freihofer <adrian.freihofer@siemens.com>
>
> Signed-off-by: Adrian Freihofer <adrian.freihofer@siemens.com>
> ---
>  .gitignore | 3 +++
>  1 file changed, 3 insertions(+)
>  create mode 100644 .gitignore
>
> diff --git a/.gitignore b/.gitignore
> new file mode 100644
> index 0000000..ef07e6a
> --- /dev/null
> +++ b/.gitignore
> @@ -0,0 +1,3 @@
> +*.o
> +ptest-runner
> +ptest-runner-test
> --
> 2.20.1
>
>
> 
>
>

--0000000000001bf06205c808a184
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Applied, Thanks!, Anibal.</div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 21 Jul 2021 at 04:47, ?uk=
asz Majewski &lt;<a href=3D"mailto:lukma@denx.de">lukma@denx.de</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">From: Adrian=
 Freihofer &lt;<a href=3D"mailto:adrian.freihofer@siemens.com" target=3D"_b=
lank">adrian.freihofer@siemens.com</a>&gt;<br>
<br>
Signed-off-by: Adrian Freihofer &lt;<a href=3D"mailto:adrian.freihofer@sie=
mens.com" target=3D"_blank">adrian.freihofer@siemens.com</a>&gt;<br>
---<br>
=C2=A0.gitignore | 3 +++<br>
=C2=A01 file changed, 3 insertions(+)<br>
=C2=A0create mode 100644 .gitignore<br>
<br>
diff --git a/.gitignore b/.gitignore<br>
new file mode 100644<br>
index 0000000..ef07e6a<br>
--- /dev/null<br>
+++ b/.gitignore<br>
@@ -0,0 +1,3 @@<br>
+*.o<br>
+ptest-runner<br>
+ptest-runner-test<br>
-- <br>
2.20.1<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--0000000000001bf06205c808a184--
