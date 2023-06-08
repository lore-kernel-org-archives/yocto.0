Return-Path: <samuli.piippo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73CC5C7EE23
	for <webhook@archiver.kernel.org>; Thu,  8 Jun 2023 09:40:38 +0000 (UTC)
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
 by mx.groups.io with SMTP id smtpd.web11.5039.1686217235773551752
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Jun 2023 02:40:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=IQpq4vZD;
 spf=pass (domain: gmail.com, ip: 209.85.221.175, mailfrom: samuli.piippo@gmail.com)
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-461b408594fso313454e0c.1
        for <yocto@lists.yoctoproject.org>; Thu, 08 Jun 2023 02:40:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686217235; x=1688809235;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KpEhHDjZkY/WX044M86EGSZoAMHrM2MrLWRCpfzK7Gg=;
        b=IQpq4vZDZJCxSFEHZZGRDaqYCZy+eLDIsOBiS2Gk8xOPDjrCp67fhP90Sz5gwa98+z
         CAUfVxGRLPAAeFWHKNDnb6reA1Eog8oZ7Louth9LCMmtnGGq5h3EKpGNfBbK4bCAiIfQ
         pyMb07zQasCufgJ7mLFHJsOXv7PxTdZ0Sxjls0cUcecrQC9L5uZ/gi1eqPauW9VHx5M/
         scpz+H17ABnbCQVJ8dnFvY7dlN8wFgycDbkvCAit0yhSRrpIjg203Vzkfo6CtAd3Ubtf
         lRod4prKFKxtDeW1rcbij1l6ndpFfcN8P31ZhP2QoP0PjWuSrCNvfSx6HvaxUCgR5nWN
         uBnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686217235; x=1688809235;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KpEhHDjZkY/WX044M86EGSZoAMHrM2MrLWRCpfzK7Gg=;
        b=khBdZIYQ0iOiL3HKBk3dnHviz2w/0mOMzMdwg8QjXSXPGpaDsqH9lfYvRnHbMHuXFs
         RPYA722c6fdY5JdUxf7E7FunpLG551puSfuPZtEHOrB3rbuVptgsRLeQpDwqWU8dxH9P
         lKP+1cMolPmkD2VciKYjIxiN86jzsdqQGfuZXvT6AIMwx4hHKFCoSyaGpgmXah0Bwr3v
         eH0+ImQqObxRnvqfOQRQgFsa+kFHM1gUJkUPL+lAacVy//Sni1gECRRuaYx9RGt7qwaJ
         YJSG0X/QCB7ckSqrUimKvVaSjynlWiw34egXSN1g8AInd3o1n5OOAZQaII79hTOdzLis
         0nBg==
X-Gm-Message-State: AC+VfDzMw1lIOKmuQrY+WgPDVLFC5kLyWEq3ro3dX2nEJK9qAVyTfU9c
	K6bkxe/7WFCmjCr9bn1dGE3pMFeJX9ObM2PSHM4=
X-Google-Smtp-Source: ACHHUZ4qkDJq4XoYcPg1fm3O8mpkBuAuY2TtgrFB/Z8kDu8STn2XPnbjOZ3n0pzp1we5HnV3pwT1ChUYVPJBZdEXBlk=
X-Received: by 2002:a05:6122:893:b0:45c:b73b:ed25 with SMTP id
 19-20020a056122089300b0045cb73bed25mr744815vkf.3.1686217234741; Thu, 08 Jun
 2023 02:40:34 -0700 (PDT)
MIME-Version: 1.0
References: <20230608070308.502205-1-samuli.piippo@qt.io> <e9a6311379b58f539a9a0d5496d4554796346de2.camel@linuxfoundation.org>
In-Reply-To: <e9a6311379b58f539a9a0d5496d4554796346de2.camel@linuxfoundation.org>
From: Samuli Piippo <samuli.piippo@gmail.com>
Date: Thu, 8 Jun 2023 12:40:23 +0300
Message-ID: <CABXoSoUGH2tQwCRAhq_ebxh4ZtZO3zv3X7A4RQTXZV+hq1XPUg@mail.gmail.com>
Subject: Re: [yocto] [meta-mingw] [PATCH] Ignore WINDRES from hash
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org, jpewhacker@gmail.com
Content-Type: multipart/alternative; boundary="0000000000004a7e4c05fd9b0b76"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Jun 2023 09:40:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60226

--0000000000004a7e4c05fd9b0b76
Content-Type: text/plain; charset="UTF-8"

doh! it was meant to be WINDMC.
I'll resend this.

-samuli

On Thu, 8 Jun 2023 at 12:15, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Thu, 2023-06-08 at 07:03 +0000, Samuli Piippo wrote:
> > Amend 6badedaa3e4df5b00b5aa992c5c174e315b09972 and add WINDRES
> > to be ignored from hash, otherwise it contaminates sstate cache
> > for every recipe.
> >
> > Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
> > ---
> >  conf/machine-sdk/include/mingw32-common.inc | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/conf/machine-sdk/include/mingw32-common.inc
> b/conf/machine-sdk/include/mingw32-common.inc
> > index 9ec6e07..f2806d8 100644
> > --- a/conf/machine-sdk/include/mingw32-common.inc
> > +++ b/conf/machine-sdk/include/mingw32-common.inc
> > @@ -46,7 +46,7 @@ export WINDMC
> >  export WINDRES
> >  export RC
> >
> > -BB_BASEHASH_IGNORE_VARS:append = " WINDRES RC"
> > +BB_BASEHASH_IGNORE_VARS:append = " WINDRES RC WINDRES"
>
> Isn't WINDRES already listed there?
>
> Cheers,
>
> Richard
>

--0000000000004a7e4c05fd9b0b76
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>doh! it was meant to be WINDMC.</div><div>I&#39;ll re=
send this.</div><div><br></div><div>-samuli<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 8 Jun 2023 a=
t 12:15, Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">On Thu, 2023-06-08 at 07:03 +0000,=
 Samuli Piippo wrote:<br>
&gt; Amend 6badedaa3e4df5b00b5aa992c5c174e315b09972 and add WINDRES<br>
&gt; to be ignored from hash, otherwise it contaminates sstate cache<br>
&gt; for every recipe.<br>
&gt; <br>
&gt; Signed-off-by: Samuli Piippo &lt;<a href=3D"mailto:samuli.piippo@qt.io=
" target=3D"_blank">samuli.piippo@qt.io</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 conf/machine-sdk/include/mingw32-common.inc | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machin=
e-sdk/include/mingw32-common.inc<br>
&gt; index 9ec6e07..f2806d8 100644<br>
&gt; --- a/conf/machine-sdk/include/mingw32-common.inc<br>
&gt; +++ b/conf/machine-sdk/include/mingw32-common.inc<br>
&gt; @@ -46,7 +46,7 @@ export WINDMC<br>
&gt;=C2=A0 export WINDRES<br>
&gt;=C2=A0 export RC<br>
&gt;=C2=A0 <br>
&gt; -BB_BASEHASH_IGNORE_VARS:append =3D &quot; WINDRES RC&quot;<br>
&gt; +BB_BASEHASH_IGNORE_VARS:append =3D &quot; WINDRES RC WINDRES&quot;<br=
>
<br>
Isn&#39;t WINDRES already listed there?<br>
<br>
Cheers,<br>
<br>
Richard<br>
</blockquote></div>

--0000000000004a7e4c05fd9b0b76--

