Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85E83C433EF
	for <webhook@archiver.kernel.org>; Fri,  3 Jun 2022 10:37:16 +0000 (UTC)
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
 [209.85.210.54])
 by mx.groups.io with SMTP id smtpd.web12.5849.1654252628292957652
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Jun 2022 03:37:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=q1S9Y0XU;
 spf=pass (domain: gmail.com, ip: 209.85.210.54,
 mailfrom: abongwabonalais@gmail.com)
Received: by mail-ot1-f54.google.com with SMTP id
 g13-20020a9d6b0d000000b0060b13026e0dso5231119otp.8
        for <yocto@lists.yoctoproject.org>;
 Fri, 03 Jun 2022 03:37:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HZhY0YGy5sSrZzNrAEMXgUdLJ9SQv51P8i1VNu5Qo10=;
        b=q1S9Y0XUHssWvWJKKEynrqZBgjnBykN4srCxNbH0PUOuHK8FUQHpgaVbAsHfDEyZff
         L6lbcRXxMmo2cVRs408kl9tU5OWfMzIhbGGFwt+pOaXgW5klzd3Y2XL833/r66+9iz14
         lHgjmW8uH/OT3FuROhiaqe2n6cmDSJj9p9jtJDh8j4iRuwCsbiw581RlicK5CAtKCATq
         L176jcZ4k7ow40lVuPJlqwP0D98dDne3da2D6Lnbx2wqXKY5MALHvfAGtx6x6PpF+t10
         N/KMTQkdNebr+hciylh9zk99h4XfiCpYyrmgisv5YRx0gH/F+rmG0dZ3qR/ZZ/+8zi2C
         fV3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HZhY0YGy5sSrZzNrAEMXgUdLJ9SQv51P8i1VNu5Qo10=;
        b=S9LBiyibhe3xGLM+VYvQdATpiChZjvFlMdp18S+i+Co+g8iW4DCKAjwoVkylObb68x
         shghD7MvQoMvEcywiiLc6oXW82LugTWu3Nf+R9uXdrLLyrjt6/wfDGAxs8BAK3jFxkGD
         0OZu5/jWNAj3LGFIpIsbAzsrVm0z73vME+eRG1s9b10a8zg4mjsHvy7eS3pe1/Wvoo3r
         OsXqBybwD9/Ejnmh6RjKv2uOe52/y3duWhn7FEye4I4Pxawee+Ux7bwUWJDkA9bYQG3M
         yiEgQHuquuQsRqhLnMqkfae039YJq4Pt+lrHincm4FLpzsTyxbCw9NZaKD3FVc05jjS5
         LkHw==
X-Gm-Message-State: AOAM532nYDJl9IH9MKQvERbwVfEOL3TGTWx5um5ZT8+eYSr5D5SG48Oy
	8OR4zuYUBM5SdURixsQz3YUdtndfivYKaf8CNniqbamAdVo=
X-Google-Smtp-Source: 
 ABdhPJyAeVuZ55j55ZeKVjPUXD1txD/qQRodMBFm8cuJ8fhqpncXW3JE3R0E5baDyeBnTnk7/MeFqNiJVWn8mICueaY=
X-Received: by 2002:a9d:27c8:0:b0:60b:2703:8824 with SMTP id
 c66-20020a9d27c8000000b0060b27038824mr3795317otb.361.1654252627525; Fri, 03
 Jun 2022 03:37:07 -0700 (PDT)
MIME-Version: 1.0
References: <20220512163930.35811-1-abongwabonalais@gmail.com>
 <f2cf201625144cf18d2c12197613ae488d22eadf.camel@linuxfoundation.org>
In-Reply-To: 
 <f2cf201625144cf18d2c12197613ae488d22eadf.camel@linuxfoundation.org>
From: Abongwa Bonalais <abongwabonalais@gmail.com>
Date: Fri, 3 Jun 2022 11:36:57 +0100
Message-ID: 
 <CAKP8fJFZzrV_rWbg-uMJ9KxN=TK_95ZUfhdCmD=y-9KNW_hUNw@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper v17] Add a banner on the
 old documentation docs.
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003b87c905e088b4a9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Jun 2022 10:37:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57254

--0000000000003b87c905e088b4a9
Content-Type: text/plain; charset="UTF-8"

No worries, thanks for the update!

On Fri, Jun 3, 2022, 10:54 AM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Thu, 2022-05-12 at 17:39 +0100, Abongwa Amahnui Bonalais wrote:
> > Script to add banners to the old docs and outdated dunfell docs
> >
> > Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
> > ---
> >  scripts/docs_add_banner.py | 83 ++++++++++++++++++++++++++++++++++++++
> >  scripts/run-docs-build     |  2 +
> >  2 files changed, 85 insertions(+)
> >  create mode 100755 scripts/docs_add_banner.py
>
> This version of the patch didn't run due to a syntax error. Given where
> things are at and the fact we really do want this in, I've merged it
> with a follow up patch to tweak a few things (such as ignoring symlink
> files so we don't apply it twice to some files).
>
> Thanks for working on it!
>
> Cheers,
>
> Richard
>

--0000000000003b87c905e088b4a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>No worries, thanks for the update!=C2=A0<br><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 3,=
 2022, 10:54 AM Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfo=
undation.org" target=3D"_blank" rel=3D"noreferrer">richard.purdie@linuxfoun=
dation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Thu, =
2022-05-12 at 17:39 +0100, Abongwa Amahnui Bonalais wrote:<br>
&gt; Script to add banners to the old docs and outdated dunfell docs<br>
&gt; <br>
&gt; Signed-off-by: Abongwa Bonalais Amahnui &lt;<a href=3D"mailto:abongwab=
onalais@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">abongwab=
onalais@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 scripts/docs_add_banner.py | 83 ++++++++++++++++++++++++++++++++=
++++++<br>
&gt;=C2=A0 scripts/run-docs-build=C2=A0 =C2=A0 =C2=A0|=C2=A0 2 +<br>
&gt;=C2=A0 2 files changed, 85 insertions(+)<br>
&gt;=C2=A0 create mode 100755 scripts/docs_add_banner.py<br>
<br>
This version of the patch didn&#39;t run due to a syntax error. Given where=
<br>
things are at and the fact we really do want this in, I&#39;ve merged it<br=
>
with a follow up patch to tweak a few things (such as ignoring symlink<br>
files so we don&#39;t apply it twice to some files).<br>
<br>
Thanks for working on it!<br>
<br>
Cheers,<br>
<br>
Richard<br>
</blockquote></div>
</div></div>

--0000000000003b87c905e088b4a9--

