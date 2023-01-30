Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 899FEC54EAA
	for <webhook@archiver.kernel.org>; Mon, 30 Jan 2023 23:01:07 +0000 (UTC)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
 by mx.groups.io with SMTP id smtpd.web10.808.1675119659935542518
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Jan 2023 15:01:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=gZPmdAA9;
 spf=pass (domain: gmail.com, ip: 209.85.219.175, mailfrom: twoerner@gmail.com)
Received: by mail-yb1-f175.google.com with SMTP id u72so16026220ybi.7
        for <yocto@lists.yoctoproject.org>; Mon, 30 Jan 2023 15:00:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Pj6slZ76mEN0K936jL/f+LsPeFlh3X++sqD/i6+Wl6s=;
        b=gZPmdAA97RXaXWtXGbNo0VJmqM2xUopPmAoEuEcG1TiAh6p08EN4Uj9TRYdQjiYb7L
         lTNlE8T2lTEIDoiv8wCNRM3SHY+XO8bAB3lB97Him9I3dgTSGHSboS/iCii0vZhQTwg/
         1n5DmBz/cC/jGeL2Ugc+qOx7syEPfGRvaBerzAsznCYnX/bBnmFfIun/C8vRi4lJwDmU
         faRE6vewYWNFjWwlel+TIjyu9LKXoMFBoxfhVhRQjBu81Rt6TZYALzhkMRSoNDvJgzpw
         PtX6ulyWRppwCorFfQUtDagiVgQgQlLpJxfEuCrfgdyAm0laru4eSDyDd/XEDTBhcsWJ
         5Qjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Pj6slZ76mEN0K936jL/f+LsPeFlh3X++sqD/i6+Wl6s=;
        b=PO/1Fm6MQ9ZoUO4jUWdU6zg7WKTi/AC+54h6bFeEebRZjBt0fNlmnQlTrh6mDYwROl
         2C4ZjRZzgCPkf2P4c3e+2QBM+r8k21508JIqVWvuoJJQUa3WcHH+sg0dowBMfPVRnBso
         XNXmhoPB2jWsezK+c8Q9jgGowDaH03hcFg9ruXkpyjuDGgOBzKsafLQtLQm9EAzX+ak7
         FuJ2vNVIrrFoZI7YfZzeE3+dBUE2oYoIKvTvs29EGr8A5vPqvZMk48JeWGRMeEgUZyot
         ZvMfKot1xCF/R960KtEwOw8QaLW0VQESCBpBaPslSmUP01PS4Ci9m09HkhlsBuMtPBl8
         ouQw==
X-Gm-Message-State: AO0yUKXZ0BHLf8TJ9FMRFJekB4N6zr8PbVb3DgHe5xgL1FvOmVQHaPFm
	kS/ViO2Mqhu151MiaBwEGB2oS37FufZEp+70tUwqh+aS
X-Google-Smtp-Source: AK7set/t6v15dwCzmZGgsAYyQe6v3BenW1aq/BLG8FDzD+OFvxqnDWo0JR3WF1xYpC/VoiN/gHGz66Lgcdn8DdxIOyo=
X-Received: by 2002:a25:cfd7:0:b0:80b:8a60:fc4 with SMTP id
 f206-20020a25cfd7000000b0080b8a600fc4mr1313107ybg.541.1675119658710; Mon, 30
 Jan 2023 15:00:58 -0800 (PST)
MIME-Version: 1.0
References: <173E9E0D91B8D8A3.21443@lists.yoctoproject.org>
In-Reply-To: <173E9E0D91B8D8A3.21443@lists.yoctoproject.org>
From: Trevor Woerner <twoerner@gmail.com>
Date: Mon, 30 Jan 2023 18:00:46 -0500
Message-ID: <CAHUNapSiDoSBpQYDt_AuYcrFfPgeOEwbe5iWCj_kRRfh9rjp6A@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] rock-pi-4: remove MACHINE
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000036bad505f383300c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 Jan 2023 23:01:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59107

--00000000000036bad505f383300c
Content-Type: text/plain; charset="UTF-8"

On Sat, Jan 28, 2023 at 6:51 PM Trevor Woerner via lists.yoctoproject.org
<twoerner=gmail.com@lists.yoctoproject.org> wrote:

> The last kernel to not split the rock-pi-4[abc] MACHINEs into separate
> device trees was 5.10. The linux-yocto kernels supported in this release
> are all after 5.10. Therefore remove the rock-pi-4 MACHINE. By now, on
> master,
> everyone should be selecting specific MACHINEs from one of the variants and
> not using "rock-pi-4".
>
> NOTE: this layer will continue to use "rock-pi-4" as a MACHINEOVERRIDE when
>       the specific variant doesn't matter
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  conf/machine/rock-pi-4.conf | 15 ---------------
>  1 file changed, 15 deletions(-)
>  delete mode 100644 conf/machine/rock-pi-4.conf
>

Applied to meta-rockchip, master branch.

--00000000000036bad505f383300c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Sat, Jan 28, 2023 at 6:51 PM Trevor Woerner via <a href=3D"http:/=
/lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;twoerner=3D<a href=
=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.o=
rg</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">The last kernel to not split the rock-pi-4[abc] MACHINEs into separate<br=
>
device trees was 5.10. The linux-yocto kernels supported in this release<br=
>
are all after 5.10. Therefore remove the rock-pi-4 MACHINE. By now, on mast=
er,<br>
everyone should be selecting specific MACHINEs from one of the variants and=
<br>
not using &quot;rock-pi-4&quot;.<br>
<br>
NOTE: this layer will continue to use &quot;rock-pi-4&quot; as a MACHINEOVE=
RRIDE when<br>
=C2=A0 =C2=A0 =C2=A0 the specific variant doesn&#39;t matter<br>
<br>
Signed-off-by: Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com" tar=
get=3D"_blank">twoerner@gmail.com</a>&gt;<br>
---<br>
=C2=A0conf/machine/rock-pi-4.conf | 15 ---------------<br>
=C2=A01 file changed, 15 deletions(-)<br>
=C2=A0delete mode 100644 conf/machine/rock-pi-4.conf<br></blockquote><div><=
br></div><div>Applied to meta-rockchip, master branch. <br></div></div></di=
v>

--00000000000036bad505f383300c--

