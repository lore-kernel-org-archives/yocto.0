Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A825C54EAA
	for <webhook@archiver.kernel.org>; Mon, 30 Jan 2023 23:00:27 +0000 (UTC)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
 by mx.groups.io with SMTP id smtpd.web10.784.1675119620716447399
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Jan 2023 15:00:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=gVDIHoyO;
 spf=pass (domain: gmail.com, ip: 209.85.219.180, mailfrom: twoerner@gmail.com)
Received: by mail-yb1-f180.google.com with SMTP id t16so16051752ybk.2
        for <yocto@lists.yoctoproject.org>; Mon, 30 Jan 2023 15:00:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Rv3rrTp98QXjA/Iqk65JLuErV6wH/RTcx5UGqcFA1y0=;
        b=gVDIHoyOlpMPr0vQVFgf9G4Q1nDUcKuT/4IBcVNXTMynAEoHK4sYLtGY7c7QXKyFM4
         GAZQV4OLUl9N1FdGzFYVgcNpq9qdQsFUc/do5XIDfItPKamFplakheIOx/nO/sE/1ijK
         TzKAGJA9aPTG4M0qmqDnlNDtwAYC/6SFGYBSj7V0R+w1InQT9/nTl7G1BR1bT6HWsBKN
         e2kK1OmAc7r2GDY8rC+NCihNTRd6U6Sb88PSFexTlomJIwss6H9xjS2OYY5nEXBVztWA
         eIGSdJlHorPvrtFDLUUzxbXJVVTCvT0Uoshvv4yBIK09x/JqKOhcdClZ1T7pfRNKCpOm
         hJoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Rv3rrTp98QXjA/Iqk65JLuErV6wH/RTcx5UGqcFA1y0=;
        b=5pQJJVQpnSICvYhjW0xGhZLqWbClLJiOCiLuQldemzpk8V8nIOmMTGE1lECXhbcGRF
         cqGi53HZY5ShCbJ5MNaHuT9nPrWt3JdTLHVoWn3P4eL13v3n5dp8WvSDHFUUAfLTnkw0
         JvUXgOvfKeFqzu5hT8LKkOfKEKjPAjadPvUfUxxDHh1Ej/ftX6Wfgt7nashh6FyQCDc6
         imSEzA50ncSPN7/wQcSCN9QFY3y3qjsFValvHXapM9nYNgCcNN/dC4IhFEpueI3CxTmt
         X2d6gsvu5GoYQD9bnDNk1/iWza2EkuntOAsRzp+AxsnJwzWp4pLbYBZ5xf+5sLWXNF73
         U5aA==
X-Gm-Message-State: AFqh2kqbu8Ym3gvCpmqWfwXpWQLJwc1XnnBeLdW3w+EALDpO/mgTX+4/
	LHbqp9syi0ZYEdWY0qPJzgm7vYnzaLnyWz2qanVvu9sJ
X-Google-Smtp-Source: AMrXdXs+LxI6LgD8pJtKM5yhE1J1VL+adEuAHKfF7gPtyEK3eDlzZjfMi2WaRkt31X+g6G8vOe3hJXvci4CYTlpB4cE=
X-Received: by 2002:a5b:ca:0:b0:7fb:feb3:380e with SMTP id d10-20020a5b00ca000000b007fbfeb3380emr3800243ybp.587.1675119619447;
 Mon, 30 Jan 2023 15:00:19 -0800 (PST)
MIME-Version: 1.0
References: <173E9D7E4E096CC3.27165@lists.yoctoproject.org>
In-Reply-To: <173E9D7E4E096CC3.27165@lists.yoctoproject.org>
From: Trevor Woerner <twoerner@gmail.com>
Date: Mon, 30 Jan 2023 18:00:07 -0500
Message-ID: <CAHUNapQBBLFTra2npqjm6Y2V9-TCp66rftBP0FNSmY2jh_CN7Q@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] U-Boot: add DEPENDS for rock-pi-4[abc]
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000dfa01f05f3832dc1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 Jan 2023 23:00:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59106

--000000000000dfa01f05f3832dc1
Content-Type: text/plain; charset="UTF-8"

On Sat, Jan 28, 2023 at 6:41 PM Trevor Woerner via lists.yoctoproject.org
<twoerner=gmail.com@lists.yoctoproject.org> wrote:

> The U-Boot build for rock-pi-4[abc] was recently changed to add information
> for UEFI. The build now DEPENDS on gnutls-native.
>
> U-Boot: e86c789ca372 ("rockpi4: board: Add firmware image information for
> capsule updates")
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  recipes-bsp/u-boot/u-boot%.bbappend | 2 ++
>  1 file changed, 2 insertions(+)
>

Applied to meta-rockchip, master branch.

--000000000000dfa01f05f3832dc1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Sat, Jan 28, 2023 at 6:41 PM Trevor Woerner via <a href=3D"http:/=
/lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;twoerner=3D<a href=
=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.o=
rg</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">The U-Boot build for rock-pi-4[abc] was recently changed to add informati=
on<br>
for UEFI. The build now DEPENDS on gnutls-native.<br>
<br>
U-Boot: e86c789ca372 (&quot;rockpi4: board: Add firmware image information =
for capsule updates&quot;)<br>
<br>
Signed-off-by: Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com" tar=
get=3D"_blank">twoerner@gmail.com</a>&gt;<br>
---<br>
=C2=A0recipes-bsp/u-boot/u-boot%.bbappend | 2 ++<br>
=C2=A01 file changed, 2 insertions(+)<br></blockquote><div><br></div><div>A=
pplied to meta-rockchip, master branch. <br></div></div></div>

--000000000000dfa01f05f3832dc1--

