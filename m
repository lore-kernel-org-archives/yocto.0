Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56F5EC3DA7D
	for <webhook@archiver.kernel.org>; Tue,  3 Jan 2023 19:13:48 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web11.2516.1672773219247069161
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Jan 2023 11:13:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HaUJRKmq;
 spf=pass (domain: gmail.com, ip: 209.85.221.48, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f48.google.com with SMTP id t15so21778101wro.9
        for <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 11:13:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=q4N4IxwvHqTqcLeYJhNWKTK+OuOeqZ8XL7foekNpbYs=;
        b=HaUJRKmq77CkI01tpvAnmU9NAqoJ8bDQTNM6JDKpRefYUj3OICMGWRceBGapxeSqKb
         uPF9X+bUUlQ+1dd+8zbBTLrW4XioARK7iKWjChvXdNANja5Jijm9z7m7oeRfWQ0us7Xp
         TibAeajrcZGDY/9pjuZKqvPqahXh59rXimzqLEtt+pPRM0QTiQ22fvD6RsXiLKgUxTJJ
         zE2W87MqZ+HjH4bgg/SBKs4dTctzOhVm7lgeKHCX5ndoCD1G316LMSp1WMIzdYzxInpk
         eia/RFX1oh1nmhOXFEPMpyEzl1Q4BaTssbUQmHuwHZSLOJD20QLlBIN4QP8bATdz8AFh
         cKmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q4N4IxwvHqTqcLeYJhNWKTK+OuOeqZ8XL7foekNpbYs=;
        b=jcVDnzOOm5DIHBotlANd1rBIyZeLBjcc6bqhOdIFqGqc7qvTKZiMdRyaR6bNsC2vcU
         WEI/71DUNsfZs/DOVRndN62Fsc9DtmiDMqZieWsy6huEVdXPJmxz03OhKMMUiHkw+Ft5
         d1ocf3xBZsuF9CdkCL3tPgrZbfMg8E6Xy8BwihrTmtLwGHID/FZkXAiDZ1GS9Yp3k1k7
         73fGnCVFFlcFg745LBsPtjQ/xgvt6z7EaqJiVCdjV6UtecSYtBg/TEi2N1W44k0HMmFq
         W41g5J/yfZa+cGmFYwNaIzQH+8G8MlAo4K5abe3QK9xjMzrMLKRyqk4pUncCy9qYcUHB
         1Tzg==
X-Gm-Message-State: AFqh2krjoadmO7Ou8j+LxS88a4kCC/pPVpZbbXqBUNR3js4Twz/o+uF/
	tG8r/N9yaYuxyZRsjsF2dBmyK2UAP1iqcncS2x7h58EhW58=
X-Google-Smtp-Source: AMrXdXsUUZhkLULIp5RPI1k7oenaqRes+CA4FMRAbhtQmj5NcKLjikSD8UQvruKNJa56mYyEjEhE1rapILNsfhU2K5c=
X-Received: by 2002:a05:6000:617:b0:272:6459:5f54 with SMTP id
 bn23-20020a056000061700b0027264595f54mr851142wrb.548.1672773217503; Tue, 03
 Jan 2023 11:13:37 -0800 (PST)
MIME-Version: 1.0
References: <20230103183343.959016-1-raj.khem@gmail.com>
In-Reply-To: <20230103183343.959016-1-raj.khem@gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Tue, 3 Jan 2023 20:13:20 +0100
Message-ID: <CA+chaQe583zWdN35R6d04DGYv34gOK+gDpGHRP=-omghWZ=C+g@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] layer.conf: Update
 LAYERSERIES_COMPAT for mickledore
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org, twoerner@gmail.com
Content-Type: multipart/alternative; boundary="0000000000006b4ca905f160ddd5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 19:13:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58917

--0000000000006b4ca905f160ddd5
Content-Type: text/plain; charset="UTF-8"

Trevor already won this race (I was second, you're third) :)

https://patchwork.yoctoproject.org/project/yocto/list/?series=&submitter=&state=&q=mickledore&archive=&delegate=

On Tue, Jan 3, 2023 at 7:33 PM Khem Raj <raj.khem@gmail.com> wrote:

> oe-core switched to mickedore [1]
>
> [1]
> https://git.openembedded.org/openembedded-core/commit/?id=57239d66b933c4313cf331d35d13ec2d0661c38f
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  conf/layer.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 9197c3b..e8c50f8 100644
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
> 2.39.0
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58916):
> https://lists.yoctoproject.org/g/yocto/message/58916
> Mute This Topic: https://lists.yoctoproject.org/mt/96034217/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> Martin.Jansa@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000006b4ca905f160ddd5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Trevor already won this race (I was second, you&#39;re thi=
rd) :)<div><br><div><a href=3D"https://patchwork.yoctoproject.org/project/y=
octo/list/?series=3D&amp;submitter=3D&amp;state=3D&amp;q=3Dmickledore&amp;a=
rchive=3D&amp;delegate=3D">https://patchwork.yoctoproject.org/project/yocto=
/list/?series=3D&amp;submitter=3D&amp;state=3D&amp;q=3Dmickledore&amp;archi=
ve=3D&amp;delegate=3D</a><br></div></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 3, 2023 at 7:33 PM Khe=
m Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">oe-core s=
witched to mickedore [1]<br>
<br>
[1] <a href=3D"https://git.openembedded.org/openembedded-core/commit/?id=3D=
57239d66b933c4313cf331d35d13ec2d0661c38f" rel=3D"noreferrer" target=3D"_bla=
nk">https://git.openembedded.org/openembedded-core/commit/?id=3D57239d66b93=
3c4313cf331d35d13ec2d0661c38f</a><br>
<br>
Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D=
"_blank">raj.khem@gmail.com</a>&gt;<br>
---<br>
=C2=A0conf/layer.conf | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/conf/layer.conf b/conf/layer.conf<br>
index 9197c3b..e8c50f8 100644<br>
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
2.39.0<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58916): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58916" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58916</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/96034217/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/96034217/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000006b4ca905f160ddd5--

