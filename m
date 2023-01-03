Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E67C4C3DA7D
	for <webhook@archiver.kernel.org>; Tue,  3 Jan 2023 19:24:28 +0000 (UTC)
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
 by mx.groups.io with SMTP id smtpd.web10.2900.1672773859872144343
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Jan 2023 11:24:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Bn9zb8ky;
 spf=pass (domain: gmail.com, ip: 209.85.167.178, mailfrom: twoerner@gmail.com)
Received: by mail-oi1-f178.google.com with SMTP id r130so27921007oih.2
        for <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 11:24:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=e4y9OZgZogGiNrSt4b5hEBqjgqQa3RLk46nY9NiF8z4=;
        b=Bn9zb8kyzT4KB3Qx5BDzBrzG9GWYdbEjhRjrdY1gcGdwTjrNHCctiwEWDJtQb1GRJv
         1uE1653ZfH1CXMSUHyK7jfhF0j2hK//tlXwoav+vJxDvMwZiUmp0+iTLkOYX+vuKdWsr
         YkorYWv5IcX6EH5BTYf+R29ys9OsUHImtRsa+zDjskOUYjSVsftHrz8NlwNPDz4RNMvQ
         xoT2hs9uvVq6vT4rBdDvNKG3n3iJtpAk8bfh1+7lyfgyZIslhbX+uH1q/XPlF0F3Jwfg
         9MxRzRaYIiFmgkN2g0KeaHrod5tul61VYiV/xqsDoLD8/dQ1M1iAeUbaVRmCY4gaYKwU
         ufhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e4y9OZgZogGiNrSt4b5hEBqjgqQa3RLk46nY9NiF8z4=;
        b=wBvQw71QpB9h/9ibM6GmtnIPYD8gcLdTKgbOIc1gYGDMlYrPpggBKVxZcddqjp84uf
         mRUs6UVlsJh3pzJ0ztwfujZZfMvHmoKTYLSzFT4xqBVyHO2VWJIErQlWzc50weVBBLSZ
         qH2jwX+O5G5jNuBb7RR9X6u9BU3dXYAKVTnFOGQOs0qveveN2g8iS3W1egOVe5cilOpv
         fBoLXSOL8KfRtnBc9q3DG79f58OMl7YrEwQ78QXkSbgpFrcc6SIiq9KLvoMqBlqc6OtH
         7N1QjyV1Qi2WnJcTg71iJQRlEOMQlyJwXTGzhrkoQ9KFJiqxwOyLPw7I3Xpa4Bs6y3ZD
         TSvw==
X-Gm-Message-State: AFqh2kpH+jzOVnW6h/6zVFafSAaRXiUMseWRHWuGQQ5nyMG5sVUuPxaf
	1v1rSXybepTcQ3kDUs2d+gLQHhBUtKuC+5lN38PmMggw9OI=
X-Google-Smtp-Source: AMrXdXvGvZIURaxLzSob6J0tyKrl5Y2V9q8L97Z1KPFuE15x9TwJFUKznfl1vby2/90uFDPmTdYFxc31u6WtFSrjRfA=
X-Received: by 2002:a05:6808:4284:b0:360:4da5:8018 with SMTP id
 dq4-20020a056808428400b003604da58018mr2946284oib.247.1672773859168; Tue, 03
 Jan 2023 11:24:19 -0800 (PST)
MIME-Version: 1.0
References: <1736D90C06D87000.6604@lists.yoctoproject.org>
In-Reply-To: <1736D90C06D87000.6604@lists.yoctoproject.org>
From: Trevor Woerner <twoerner@gmail.com>
Date: Tue, 3 Jan 2023 14:24:07 -0500
Message-ID: <CAHUNapSSGfsEKmF3+Od2w2NPRi8c2kg3UJnYd17VaE9aHZSe8Q@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] layer.conf: update
 LAYERSERIES_COMPAT for mickledore
To: twoerner@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000aa561605f1610363"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 19:24:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58920

--000000000000aa561605f1610363
Content-Type: text/plain; charset="UTF-8"

Applied, with updates*, to meta-rockchip master:
https://git.yoctoproject.org/meta-rockchip/commit/?id=5f06c7c018755b0bef6d6f4944ae25b5447535fc

* everyone gets a gold star

On Tue, Jan 3, 2023 at 11:22 AM Trevor Woerner via lists.yoctoproject.org
<twoerner=gmail.com@lists.yoctoproject.org> wrote:

> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  conf/layer.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 9197c3b84ce7..e8c50f8a1f6e 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -14,7 +14,7 @@ BBFILE_PRIORITY_rockchip = "1"
>  # This should only be incremented on significant changes that will
>  # cause compatibility issues with other layers
>  LAYERVERSION_rockchip = "1"
> -LAYERSERIES_COMPAT_rockchip = "langdale"
> +LAYERSERIES_COMPAT_rockchip = "mickledore"
>  LAYERDEPENDS_rockchip = "core meta-arm"
>
>  BBFILES_DYNAMIC += " \
> --
> 2.36.0.rc2.17.g4027e30c53
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58911):
> https://lists.yoctoproject.org/g/yocto/message/58911
> Mute This Topic: https://lists.yoctoproject.org/mt/96031070/900817
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> twoerner@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000aa561605f1610363
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Applied, with updates*, to meta-rockchip master:</div=
><div><a href=3D"https://git.yoctoproject.org/meta-rockchip/commit/?id=3D5f=
06c7c018755b0bef6d6f4944ae25b5447535fc">https://git.yoctoproject.org/meta-r=
ockchip/commit/?id=3D5f06c7c018755b0bef6d6f4944ae25b5447535fc</a></div><div=
><br></div><div>* everyone gets a gold star<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 3, 2023 =
at 11:22 AM Trevor Woerner via <a href=3D"http://lists.yoctoproject.org">li=
sts.yoctoproject.org</a> &lt;twoerner=3D<a href=3D"mailto:gmail.com@lists.y=
octoproject.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">Signed-off-by: Trevor Woer=
ner &lt;<a href=3D"mailto:twoerner@gmail.com" target=3D"_blank">twoerner@gm=
ail.com</a>&gt;<br>
---<br>
=C2=A0conf/layer.conf | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/conf/layer.conf b/conf/layer.conf<br>
index 9197c3b84ce7..e8c50f8a1f6e 100644<br>
--- a/conf/layer.conf<br>
+++ b/conf/layer.conf<br>
@@ -14,7 +14,7 @@ BBFILE_PRIORITY_rockchip =3D &quot;1&quot;<br>
=C2=A0# This should only be incremented on significant changes that will<br=
>
=C2=A0# cause compatibility issues with other layers<br>
=C2=A0LAYERVERSION_rockchip =3D &quot;1&quot;<br>
-LAYERSERIES_COMPAT_rockchip =3D &quot;langdale&quot;<br>
+LAYERSERIES_COMPAT_rockchip =3D &quot;mickledore&quot;<br>
=C2=A0LAYERDEPENDS_rockchip =3D &quot;core meta-arm&quot;<br>
<br>
=C2=A0BBFILES_DYNAMIC +=3D &quot; \<br>
-- <br>
2.36.0.rc2.17.g4027e30c53<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58911): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58911" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58911</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/96031070/9008=
17" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt/=
96031070/900817</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:twoerner@gmail.com" target=3D"_blank">twoerner@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000aa561605f1610363--

