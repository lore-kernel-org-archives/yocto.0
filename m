Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7131C531DF
	for <webhook@archiver.kernel.org>; Sat, 17 Aug 2024 19:55:54 +0000 (UTC)
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
 by mx.groups.io with SMTP id smtpd.web10.176936.1723924547296069788
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Aug 2024 12:55:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=google header.b=b5qn4iso;
 spf=pass (domain: gherzan.ro, ip: 209.85.215.174, mailfrom: andrei@gherzan.ro)
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-6c5bcb8e8edso2368035a12.2
        for <yocto@lists.yoctoproject.org>; Sat, 17 Aug 2024 12:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gherzan.com; s=google; t=1723924546; x=1724529346; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o3gXanV9mc54LmCSvvOGYQkdS6ZmES/OwPAzdVLP7Yw=;
        b=b5qn4isoCWKcX1klelkfz/TYT8hBFlEY/eK1vTRDofe5om+WUDow6MKfyLvLNlOgK1
         +FMiHmNbfFVlLxPNPs2x6o6jAKhtnEG67Qa3YlTqyRqioag42uLJtYjo75eJraav9RRc
         2eyuryLYRtmvBZ+PeFsPYiP7DxH2kiKNpsmWOGbapmC5z+jqyqtSrMZLHfHwBErIj4ck
         grnISpeomalxF8Z0d11jgwyTWmi1ea+lqgAAlL2ZCPhk5aT56ZNBE3vtCZp70T9dfU5E
         UkSj18ssjjfiNScZTiGkrLTsXN8Re2nZy7q0bgoCuLNa3NrXmmIaa9jif0x0csUK6bex
         cUGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723924546; x=1724529346;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o3gXanV9mc54LmCSvvOGYQkdS6ZmES/OwPAzdVLP7Yw=;
        b=bDfZGZuHIEbZm5faWrjJ1cUaX8xgIo4JwZkyfr+/gjMr+Ize4cmTp8u87rvEMxDSfE
         YJwI/YW2W65p31wPkjEVNmdUeH/K+Bi4HHOQuNvf0KZZieX6Mr75ktVMcknYXrDdI/9I
         fNYlSCKkHuc7CIDIQrxiWmW6GV7XMUgMVl3AA/yjC2aWSFkMGiGQGkBllLH+oTupVpMu
         6m82jiCnqPEiPOVaCjJpBbIfU/I1MFtscN++Xc9SHD+PQfuYcUpNv61g7dZwZt7dfT4X
         iF42Fl9PZx4eoDGYUkdDeIHdM2CiINguu1Jcpf9mfeFBs+2mKs3Ix7wR2sJF7UkBN6vB
         MZTw==
X-Gm-Message-State: AOJu0Yxj43oeY+2w9/mqSSXXeQQKpR/r4+7vgjHFVwOSHHlyrnQ9o+dP
	MxRYfb1wgFWwJUm3pksUIbCR0hCSQMWSguHKsbhaij7JRHKtFVgVtINY6AKgbNrB6exPSLUtfq4
	jP4XaL1yRjmS0vY5cQeQE+7hPnK95YpCM5mIqNgVhlwnabiiF87k=
X-Google-Smtp-Source: AGHT+IE2heWrd/ReZPKRHP3eYFU1dnwVVnpj2CDyF890YvFStsfs9lNACpZywn4ttR8FwXDbI0QwMyRhvkfOxFoWKV4=
X-Received: by 2002:a17:903:4288:b0:201:e65b:500b with SMTP id
 d9443c01a7336-2020404cdf2mr63730475ad.63.1723924545773; Sat, 17 Aug 2024
 12:55:45 -0700 (PDT)
MIME-Version: 1.0
References: <20240803032453.2570404-1-liezhi.yang@windriver.com>
In-Reply-To: <20240803032453.2570404-1-liezhi.yang@windriver.com>
From: Andrei Gherzan <andrei@gherzan.com>
Date: Sat, 17 Aug 2024 20:55:09 +0100
Message-ID: <CAK18fxFsGiOLMgDVWMfZiHxPVoOLdXuBEOfF667tQuLYQ09iKg@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi][PATCH] conf/layer.conf: Remove
 duplicated BBFILES
To: yocto@lists.yoctoproject.org, liezhi.yang@windriver.com
Content-Type: multipart/alternative; boundary="0000000000002bc739061fe67697"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 17 Aug 2024 19:55:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63716

--0000000000002bc739061fe67697
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Robert,

On Sat, Aug 3, 2024 at 4:23=E2=80=AFAM Robert Yang via lists.yoctoproject.o=
rg
<liezhi.yang=3Dwindriver.com@lists.yoctoproject.org> wrote:

> From: Robert Yang <liezhi.yang@windriver.com>
>
> The following doubles BBFILES for all layers in BBFILE_COLLECTIONS:
> BBFILES +=3D "${@' '.join('${LAYERDIR}/dynamic-layers/%s/recipes*/*/*.bb'=
 %
> layer \
>                for layer in BBFILE_COLLECTIONS.split())}"
>
> And most of them are invalid, use BBFILES_DYNAMIC is the correct solution=
.
>
> Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> ---
>

Thanks for your contribution. Could you raise it as a PR in Github so we
can trigger the CI pipelines?
https://github.com/agherzan/meta-raspberrypi


>  conf/layer.conf | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
>
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 21fa529..b114fba 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -23,11 +23,6 @@ LICENSE_PATH +=3D "${LAYERDIR}/files/custom-licenses"
>  #
>  # The .bbappend and .bb files are included if the respective layer
>  # collection is available.
> -BBFILES +=3D "${@'
> '.join('${LAYERDIR}/dynamic-layers/%s/recipes*/*/*.bbappend' % layer \
> -               for layer in BBFILE_COLLECTIONS.split())}"
> -BBFILES +=3D "${@' '.join('${LAYERDIR}/dynamic-layers/%s/recipes*/*/*.bb=
' %
> layer \
> -               for layer in BBFILE_COLLECTIONS.split())}"
> -
>  BBFILES_DYNAMIC +=3D " \
>
>  openembedded-layer:${LAYERDIR}/dynamic-layers/openembedded-layer/*/*/*.b=
b \
>
>  openembedded-layer:${LAYERDIR}/dynamic-layers/openembedded-layer/*/*/*.b=
bappend
> \
> @@ -37,6 +32,8 @@ BBFILES_DYNAMIC +=3D " \
>      qt5-layer:${LAYERDIR}/dynamic-layers/qt5-layer/*/*/*.bbappend \
>      multimedia-layer:${LAYERDIR}/dynamic-layers/multimedia-layer/*/*/*.b=
b
> \
>
>  multimedia-layer:${LAYERDIR}/dynamic-layers/multimedia-layer/*/*/*.bbapp=
end
> \
> +    meta-python:${LAYERDIR}/dynamic-layers/meta-python/*/*/*.bb \
> +    meta-python:${LAYERDIR}/dynamic-layers/meta-python/*/*/*.bbappend \
>  "
>
>  DEFAULT_TEST_SUITES:remove:rpi =3D "parselogs"
> --
> 2.25.1
>

 --
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640

--0000000000002bc739061fe67697
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Robert,<br></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Aug 3, 2024 at 4:23=
=E2=80=AFAM Robert Yang via <a href=3D"http://lists.yoctoproject.org">lists=
.yoctoproject.org</a> &lt;liezhi.yang=3D<a href=3D"mailto:windriver.com@lis=
ts.yoctoproject.org">windriver.com@lists.yoctoproject.org</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">From: Robert Yang =
&lt;<a href=3D"mailto:liezhi.yang@windriver.com" target=3D"_blank">liezhi.y=
ang@windriver.com</a>&gt;<br>
<br>
The following doubles BBFILES for all layers in BBFILE_COLLECTIONS:<br>
BBFILES +=3D &quot;${@&#39; &#39;.join(&#39;${LAYERDIR}/dynamic-layers/%s/r=
ecipes*/*/*.bb&#39; % layer \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for layer in BBFILE_=
COLLECTIONS.split())}&quot;<br>
<br>
And most of them are invalid, use BBFILES_DYNAMIC is the correct solution.<=
br>
<br>
Signed-off-by: Robert Yang &lt;<a href=3D"mailto:liezhi.yang@windriver.com"=
 target=3D"_blank">liezhi.yang@windriver.com</a>&gt;<br>
---<br></blockquote><div><br></div><div>Thanks for your contribution. Could=
 you raise it as a PR in Github so we can trigger the CI pipelines?</div><d=
iv><a href=3D"https://github.com/agherzan/meta-raspberrypi">https://github.=
com/agherzan/meta-raspberrypi</a><br></div><div>=C2=A0</div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">
=C2=A0conf/layer.conf | 7 ++-----<br>
=C2=A01 file changed, 2 insertions(+), 5 deletions(-)<br>
<br>
diff --git a/conf/layer.conf b/conf/layer.conf<br>
index 21fa529..b114fba 100644<br>
--- a/conf/layer.conf<br>
+++ b/conf/layer.conf<br>
@@ -23,11 +23,6 @@ LICENSE_PATH +=3D &quot;${LAYERDIR}/files/custom-license=
s&quot;<br>
=C2=A0#<br>
=C2=A0# The .bbappend and .bb files are included if the respective layer<br=
>
=C2=A0# collection is available.<br>
-BBFILES +=3D &quot;${@&#39; &#39;.join(&#39;${LAYERDIR}/dynamic-layers/%s/=
recipes*/*/*.bbappend&#39; % layer \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for layer in BBFILE=
_COLLECTIONS.split())}&quot;<br>
-BBFILES +=3D &quot;${@&#39; &#39;.join(&#39;${LAYERDIR}/dynamic-layers/%s/=
recipes*/*/*.bb&#39; % layer \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for layer in BBFILE=
_COLLECTIONS.split())}&quot;<br>
-<br>
=C2=A0BBFILES_DYNAMIC +=3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0openembedded-layer:${LAYERDIR}/dynamic-layers/openembed=
ded-layer/*/*/*.bb \<br>
=C2=A0 =C2=A0 =C2=A0openembedded-layer:${LAYERDIR}/dynamic-layers/openembed=
ded-layer/*/*/*.bbappend \<br>
@@ -37,6 +32,8 @@ BBFILES_DYNAMIC +=3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0qt5-layer:${LAYERDIR}/dynamic-layers/qt5-layer/*/*/*.bb=
append \<br>
=C2=A0 =C2=A0 =C2=A0multimedia-layer:${LAYERDIR}/dynamic-layers/multimedia-=
layer/*/*/*.bb \<br>
=C2=A0 =C2=A0 =C2=A0multimedia-layer:${LAYERDIR}/dynamic-layers/multimedia-=
layer/*/*/*.bbappend \<br>
+=C2=A0 =C2=A0 meta-python:${LAYERDIR}/dynamic-layers/meta-python/*/*/*.bb =
\<br>
+=C2=A0 =C2=A0 meta-python:${LAYERDIR}/dynamic-layers/meta-python/*/*/*.bba=
ppend \<br>
=C2=A0&quot;<br>
<br>
=C2=A0DEFAULT_TEST_SUITES:remove:rpi =3D &quot;parselogs&quot;<br>
-- <br>
2.25.1<br></blockquote><div><br></div><div>=C2=A0--=C2=A0</div><div>Andrei =
Gherzan=C2=A0<br></div><div>gpg: rsa4096/D4D94F67AD0E9640</div></div></div>

--0000000000002bc739061fe67697--

