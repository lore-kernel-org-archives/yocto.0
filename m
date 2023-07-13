Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3616FEB64DD
	for <webhook@archiver.kernel.org>; Thu, 13 Jul 2023 08:54:42 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web11.4133.1689238477599458828
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jul 2023 01:54:37 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=FLzYlYco;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2b74310566cso5916731fa.2
        for <yocto@lists.yoctoproject.org>; Thu, 13 Jul 2023 01:54:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689238476; x=1691830476;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WzUOn788DodO2kqz66NMV8+pk2VwYMLq9cGUTMKHkZQ=;
        b=FLzYlYcoQ+qK0P7faAfoQ2vy4M1N+GpwJKTM7XzgQE2ofzO/igRxa097oKWfmwjT6h
         sILX0AH465DqgmChEh1riljEA8kyYhbbDZlx2Kjglvb60+fovwqkEVs4DTgYEvw8AZy9
         P2mFP0BOS22kgvq+GQNiNrhdRXk80otQdYzisaV+0D5aEtVaGZZrIX0mx1F2/eqecaYE
         PTddBiN4jNzMzTWX+vKLWVum3bTMXGBpA9yy4rVXQyvgZGuolLWMcrkZ+GwrinV9Q76j
         ODfsT7SuImQ9xD3vi6ykXRfcj4jVKTTCBntKND5kTqcKvyoApCkwCAtA5J3D48Pmv6MZ
         XIBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689238476; x=1691830476;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WzUOn788DodO2kqz66NMV8+pk2VwYMLq9cGUTMKHkZQ=;
        b=W3J8spQ8RRm5WF8tH2kBxv8sxC30PHJ1zBa5E6Sckd++nc8XoLgztk/XiD2rkNxcn/
         JvNcOk+y6oSTTKT7L3M/hdqHBKDZx4GNl2WuDKsQafZ4XGvZzj8i50k3K03PMYwXFGA4
         M6aPAzm68G5m8ltbd7QPAjY3Eiq1DCYzlS2kqP6TNQq+b7/vYS91zERr40aQGXZ19A9W
         1JoDPBL8PIW2aLvVSiXyYZAshoaJdOnfv7tlepxl3h5U+DXqrVEq0PnzcqMDEEjc5kpE
         BUBEbeoybJs3qgqMd0T2wASGZYIBENeARLP7XppJO8+uNVWJJqiB6PwRyIUrwwHu+GAU
         gv9Q==
X-Gm-Message-State: ABy/qLbTAna0dRllffkY1xYgz5VTysF9PWhVgMVyriwHkmAQ4SdB8Pe/
	eWG42fPmrtkvm02Y+4Ee0EMa2QwDd8fi3sOYRYI=
X-Google-Smtp-Source: APBJJlHbzw85AjSKT0ExJ2D61HqkLu41H8N4YEarub1MxFgF/wAaA8aLcm061Lauqtpj0qMSd7ikqlYmiuyCHT8dkLg=
X-Received: by 2002:a2e:3a1a:0:b0:2b6:9909:79cb with SMTP id
 h26-20020a2e3a1a000000b002b6990979cbmr868467lja.42.1689238475449; Thu, 13 Jul
 2023 01:54:35 -0700 (PDT)
MIME-Version: 1.0
References: <6tWH.1689227960782826676.KzZx@lists.yoctoproject.org>
In-Reply-To: <6tWH.1689227960782826676.KzZx@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 13 Jul 2023 11:54:24 +0300
Message-ID: <CANNYZj8q_i3L3sV1N9WgfVmT_sgzefmwBBxfoPk1DasjcCg01g@mail.gmail.com>
Subject: Re: [yocto] Creating a Software Bill of Materials in Yocto Zeus #zeus
To: "Poornesh G ( India - Bangalore )" <poornesh.g@mindteck.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004529d606005a7ba8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Jul 2023 08:54:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60564

--0000000000004529d606005a7ba8
Content-Type: text/plain; charset="UTF-8"

Zeus has been end of life for several years and is also full of security
issues. Please update to a supported release first.

Alex

On Thu 13. Jul 2023 at 8.59, Poornesh G ( India - Bangalore ) <
poornesh.g@mindteck.com> wrote:

> Greetings !
>
> Is it possible to generate * "Software Bill of Materials" in Yocto Zeus*
> ? Is there any recommended patche for creating required bbclass for
> creating SBOM.
>
> INHERIT += "create-spdx"
>
> Thanks,
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60558):
> https://lists.yoctoproject.org/g/yocto/message/60558
> Mute This Topic: https://lists.yoctoproject.org/mt/100115545/1686489
> Mute #zeus:https://lists.yoctoproject.org/g/yocto/mutehashtag/zeus
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000004529d606005a7ba8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Zeus has been end of life for several years and is also f=
ull of security issues. Please update to a supported release first.</div><d=
iv dir=3D"auto"><br></div><div dir=3D"auto">Alex</div><div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu 13. Jul 2023 =
at 8.59, Poornesh G ( India - Bangalore ) &lt;<a href=3D"mailto:poornesh.g@=
mindteck.com">poornesh.g@mindteck.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1p=
x;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,20=
4)"><p>Greetings !</p>
<p>Is it possible to generate=C2=A0<strong> &quot;Software Bill of Material=
s&quot; in Yocto Zeus</strong> ? Is there any recommended patche for creati=
ng required bbclass for creating SBOM.=C2=A0</p>
<p>INHERIT +=3D &quot;create-spdx&quot;<br><br>Thanks,</p>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60558): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60558" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/60558</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/100115545/168=
6489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/100115545/1686489</a><br>
Mute #zeus:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/ze=
us" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/y=
octo/mutehashtag/zeus</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000004529d606005a7ba8--

