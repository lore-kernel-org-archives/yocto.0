Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D446C47086
	for <webhook@archiver.kernel.org>; Fri, 22 Apr 2022 16:52:00 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web08.5613.1650612703568401753
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Apr 2022 00:31:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=RSMr/zAf;
 spf=pass (domain: gmail.com, ip: 209.85.167.45,
 mailfrom: quaresma.jose@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id p10so12754421lfa.12
        for <yocto@lists.yoctoproject.org>;
 Fri, 22 Apr 2022 00:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WtODqRdtL0cZyrYYGl9M7dVZNI3X5rNz3NQzUKup0LQ=;
        b=RSMr/zAfcLAUd8/VHDoZZDYT19NEFu4IavN8fFafbzPSOgkR9QsNtg5qH8KWR85vIq
         RDevk4O/F8CMF/LBv/VCIyWepV45oJfRxD7M+JyNHgiET6boNYBgML48lqh4F4H/GAdj
         i9pjdL7NDxh+BJIsGX7HOCvU0hh3U5LCk/LiuBhf2UQ9Wn8fzMRiWyD3OsR/HQqIOwh8
         CPIMkB7bvGibtu6yaWl8AJ6BT342F+w+L0BnuM4PHuE+XWz2foeRP7f+O6wNljZTl2+K
         uSAjJNi9pF/yRlRpIid80KsbwFEetiH5GpGDXE4zsP5sP1NK3B/SOSAn9HjVJrWoXYAB
         d42Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WtODqRdtL0cZyrYYGl9M7dVZNI3X5rNz3NQzUKup0LQ=;
        b=pzqpSdCE1FPew7c14FtQeuqpIaHB+dhGV2t6DehZt3RjvpUsBHYuvg3xuvKOTidVvb
         +vt/5mvJwCZHXCTT7WrD1Z15GBJshCvdD5emh0OFhQJyUDvg2agNBmvyjrEaIjpeG+AA
         tNuWYvISilsospndgBqFFhm+VMLSwlgJPVWN7l8uzQEkbPb3gbPCBz653LZlA71RKr2t
         162g6RiFIV6V8BKNfOEUWLZpaidOjtEUidyV8oIhE3XqXQmUUijLjPpd+/kwPV4RE0y2
         jaKcw87I3vr7j6HdcVsixJCrFAK2wjXecHEqzr+8Z4o85k2ZoIaly2ihdGI+We18kXBF
         JzGA==
X-Gm-Message-State: AOAM5331qPTVoatB8Y+MR17jXQyLE50IcToDPo1k2R5cCfJhkE98WrJ+
	N7SfMEflRBndEy3KLEXx+WqD4QDTV7OWMN0CbK8=
X-Google-Smtp-Source: 
 ABdhPJyjrugJE+yRf9LIEobH5Ka1JzY5KI/RHSQMX+l+I78oX0JJrLcAuf5A08s7WzMZLY1YqrezBAuG3++/pjrWcAE=
X-Received: by 2002:a05:6512:318d:b0:471:c356:72f0 with SMTP id
 i13-20020a056512318d00b00471c35672f0mr2172539lfe.447.1650612701682; Fri, 22
 Apr 2022 00:31:41 -0700 (PDT)
MIME-Version: 1.0
References: 
 <AM0PR10MB3107E178E69B3D58484BA29A99F79@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: 
 <AM0PR10MB3107E178E69B3D58484BA29A99F79@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Fri, 22 Apr 2022 08:31:30 +0100
Message-ID: 
 <CANPvuRm_UzuYQfhMdh=g_SdgwEHmHgyPY9EpaTCpNqJaietCvQ@mail.gmail.com>
Subject: Re: [yocto] master/kirkstone: ERROR: Nothing RPROVIDES
 'gps-utils-python' (this happens since tonight)
To: Matthias Klein <matthias.klein@optimeas.de>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000bede9a05dd393777"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Apr 2022 16:52:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56840

--000000000000bede9a05dd393777
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

The package name of the new package is missing.

 PACKAGES =3D+ "gps-utils-python"

Jos=C3=A9

A sexta, 22/04/2022, 07:28, Matthias Klein <matthias.klein@optimeas.de>
escreveu:

> Hello,
>
> in our image we request the following packages: gpsd gps-utils libgps
>
> Since tonight there is the error:
>
> ERROR: Nothing RPROVIDES 'gps-utils-python' (but
> .../yocto/meta-openembedded/meta-oe/recipes-navigation/gpsd/gpsd_3.23.1.b=
b
> RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'gps-utils-python' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['gps-utils-python']
> NOTE: Runtime target 'gpsd' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['gpsd', 'gps-utils-python']
>
> Apparently it is related to the following commit:
> https://github.com/openembedded/meta-openembedded/commit/667219409fffaf36=
90d5e7c9b60d17d2b6783d6f
>
> Does anyone have an idea where the error is?
>
> Many greetings,
> Matthias
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56839):
> https://lists.yoctoproject.org/g/yocto/message/56839
> Mute This Topic: https://lists.yoctoproject.org/mt/90622719/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000bede9a05dd393777
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi,<div dir=3D"auto"><br></div><div dir=3D"auto">The=
 package name of the new package is missing.</div><div dir=3D"auto"><br></d=
iv><div dir=3D"auto">=C2=A0<span style=3D"background-color:rgb(255,255,255)=
;color:rgb(36,41,47);font-family:ui-monospace,sfmono-regular,&quot;sf mono&=
quot;,menlo,consolas,&quot;liberation mono&quot;,monospace;font-size:12px;w=
hite-space:pre">PACKAGES =3D+ &quot;gps-utils-python&quot;</span></div><br>=
Jos=C3=A9</div><div dir=3D"auto"><br><div class=3D"gmail_quote" dir=3D"auto=
"><div dir=3D"ltr" class=3D"gmail_attr">A sexta, 22/04/2022, 07:28, Matthia=
s Klein &lt;<a href=3D"mailto:matthias.klein@optimeas.de">matthias.klein@op=
timeas.de</a>&gt; escreveu:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hello,<=
br>
<br>
in our image we request the following packages: gpsd gps-utils libgps<br>
<br>
Since tonight there is the error: <br>
<br>
ERROR: Nothing RPROVIDES &#39;gps-utils-python&#39; (but .../yocto/meta-ope=
nembedded/meta-oe/recipes-navigation/gpsd/<a href=3D"http://gpsd_3.23.1.bb"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">gpsd_3.23.1.bb</a> RDEPEND=
S on or otherwise requires it)<br>
NOTE: Runtime target &#39;gps-utils-python&#39; is unbuildable, removing...=
<br>
Missing or unbuildable dependency chain was: [&#39;gps-utils-python&#39;]<b=
r>
NOTE: Runtime target &#39;gpsd&#39; is unbuildable, removing...<br>
Missing or unbuildable dependency chain was: [&#39;gpsd&#39;, &#39;gps-util=
s-python&#39;]<br>
<br>
Apparently it is related to the following commit: <a href=3D"https://github=
.com/openembedded/meta-openembedded/commit/667219409fffaf3690d5e7c9b60d17d2=
b6783d6f" rel=3D"noreferrer noreferrer" target=3D"_blank">https://github.co=
m/openembedded/meta-openembedded/commit/667219409fffaf3690d5e7c9b60d17d2b67=
83d6f</a><br>
<br>
Does anyone have an idea where the error is?<br>
<br>
Many greetings,<br>
Matthias<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56839): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56839" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/56839</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/90622719/5052=
612" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/90622719/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_b=
lank" rel=3D"noreferrer">quaresma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div></div>

--000000000000bede9a05dd393777--

