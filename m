Return-Path: <tom.isaacson@teknique.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0DCBCEB64DC
	for <webhook@archiver.kernel.org>; Mon, 17 Jul 2023 21:44:38 +0000 (UTC)
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
 by mx.groups.io with SMTP id smtpd.web10.415.1689630275064692629
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Jul 2023 14:44:35 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@teknique-com.20221208.gappssmtp.com header.s=20221208 header.b=yGhoehCp;
 spf=none, err=SPF record not found (domain: teknique.com, ip: 209.85.167.179, mailfrom: tom.isaacson@teknique.com)
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-3a3b7f992e7so3682766b6e.2
        for <yocto@lists.yoctoproject.org>; Mon, 17 Jul 2023 14:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=teknique-com.20221208.gappssmtp.com; s=20221208; t=1689630274; x=1692222274;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GVYmfoB2eDg2IF53xHNl8nCc05HbJTHw8WChJXeceT8=;
        b=yGhoehCp9WVdEvSZ/cIcsh4FxuTF4JfltacBTn9QjdWo1O4iDdN7LmaPzRlUCZ0cXN
         b4mI2gCI8tDqJ9s6I1WMIdQTc3Vrh/3Fed0OmE3FxZLeQ1n3QOZUp7eeuPVP7H3fsgO5
         XkTe/bqG9rdh0nkLDTvvNraBUeJvZgBnuom4AlQTCi+FTZy9ud+2KR6U3x5oKmilwIFD
         VzN1SEVJrCVDZ6X9IoJ+rm5bTbexiUmG5JDOPKNpcMoRvFeUlrCfVR9RGPzHHI/0u0+V
         0rLfmMeTdRAdtnXbwMux39IegD/F7hWVhxTqDOeTrIIdZo4PLeCAfrvLfbbatxm9opBU
         eVxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689630274; x=1692222274;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GVYmfoB2eDg2IF53xHNl8nCc05HbJTHw8WChJXeceT8=;
        b=jlrsC0CHe9e5z1Ymo+UVJrZ1k7boG8cTtmoWCYK0X8sW2EzVgVRyJr4qNwkhKYp16z
         LYAfesvrMEXOeTr0VvAIOQBVNcZR+hXoQKcxUyXOpHQQzpcQXvQOx69Hh5H00k3ZA4QZ
         VmEWSvJO3n65vIYn7EZdCOvC58qZg+irLohzi2KU+3ozAZPovtMCpYkEAqndbD+4TFjO
         zN8bG8J7CEtcicqZEpQS+MeAgLWOXXBg1ucgJiFX9voWpqn2TH83xQ9hAcYBAfHyzVpX
         E0mXCjd8tiP3AkPgHLc7veU9DYzcTh8bO0ZSXVujpVmXxtVXnun6iuCCZxK2jwEuXP3O
         +o+w==
X-Gm-Message-State: ABy/qLbZyW62J6MqGUMYBfhmDzeVW+cosQq7UVECIMUUXrm0+YOlPjC5
	HSqTX8qyD5zGRaxPV1e4zhpCrmtHJnZjh9jkbyQFuA==
X-Google-Smtp-Source: APBJJlFhPs5KyE30B+s0V3+C1iII3RIgp11RQZy++siS3ElQwkFey4Rqux1boogSeSTodieoT/AO3f+3H4msjcqQyUE=
X-Received: by 2002:aca:642:0:b0:3a0:4faf:accd with SMTP id
 63-20020aca0642000000b003a04fafaccdmr13356278oig.32.1689630274000; Mon, 17
 Jul 2023 14:44:34 -0700 (PDT)
MIME-Version: 1.0
References: <CA+EiEZLqLzBreVxigh9f2uM2L9bP3Z6RZ0UfEWhQcGBNaLoD1A@mail.gmail.com>
 <CANNYZj-9eUXBpK3YV4ve=DFJS5Ej9g9PptAL94c83QR5BhhnPg@mail.gmail.com>
 <CA+EiEZ+e2SvgXjv8G+duoaVG_NF+uzqKDaTz3r2zGkC11xgK-Q@mail.gmail.com> <D59BCC8B-0DA5-4334-A211-F7784B008B4C@arm.com>
In-Reply-To: <D59BCC8B-0DA5-4334-A211-F7784B008B4C@arm.com>
From: Tom Isaacson <tom.isaacson@teknique.com>
Date: Tue, 18 Jul 2023 09:44:23 +1200
Message-ID: <CA+EiEZKHMtJNoJjw64iT31bxESqtWyDG5Fou_n5P5MzR-aDMBQ@mail.gmail.com>
Subject: Re: [yocto] How does SOURCEFORGE_MIRROR work?
To: Ross Burton <Ross.Burton@arm.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000048ae130600b5b437"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Jul 2023 21:44:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60597

--00000000000048ae130600b5b437
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

For gSOAP?


On Mon, Jul 17, 2023 at 8:21=E2=80=AFPM Ross Burton <Ross.Burton@arm.com> w=
rote:

> On 14 Jul 2023, at 21:08, Tom Isaacson via lists.yoctoproject.org
> <tom.isaacson=3Dteknique.com@lists.yoctoproject.org> wrote:
> >
> > Ah, I didn't realise there was a logfile for that.
> >
> > For future reference, it uses
> >
> https://github.com/yoctoproject/poky/blob/kirkstone/bitbake/lib/bb/fetch2=
/__init__.py#L1116
> > to run through a list of atlernates, eventually settling on
> > http://downloads.yoctoproject.org/mirror/sources/gsoap_2.8.106.zip
>
>
> A patch to set a working URL would be much appreciated.
>
> Thanks,
> Ross



--=20
Tom Isaacson

--00000000000048ae130600b5b437
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">For gSOAP?<div><br></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jul 17, 2023 at 8:21=E2=
=80=AFPM Ross Burton &lt;<a href=3D"mailto:Ross.Burton@arm.com">Ross.Burton=
@arm.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">On 14 Jul 2023, at 21:08, Tom Isaacson via <a href=3D"http://lists.=
yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.o=
rg</a> &lt;tom.isaacson=3D<a href=3D"mailto:teknique.com@lists.yoctoproject=
.org" target=3D"_blank">teknique.com@lists.yoctoproject.org</a>&gt; wrote:<=
br>
&gt; <br>
&gt; Ah, I didn&#39;t realise there was a logfile for that.<br>
&gt; <br>
&gt; For future reference, it uses<br>
&gt; <a href=3D"https://github.com/yoctoproject/poky/blob/kirkstone/bitbake=
/lib/bb/fetch2/__init__.py#L1116" rel=3D"noreferrer" target=3D"_blank">http=
s://github.com/yoctoproject/poky/blob/kirkstone/bitbake/lib/bb/fetch2/__ini=
t__.py#L1116</a><br>
&gt; to run through a list of atlernates, eventually settling on<br>
&gt; <a href=3D"http://downloads.yoctoproject.org/mirror/sources/gsoap_2.8.=
106.zip" rel=3D"noreferrer" target=3D"_blank">http://downloads.yoctoproject=
.org/mirror/sources/gsoap_2.8.106.zip</a><br>
<br>
<br>
A patch to set a working URL would be much appreciated.<br>
<br>
Thanks,<br>
Ross</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmai=
l_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature=
"><div dir=3D"ltr">Tom Isaacson<div><br></div></div></div>

--00000000000048ae130600b5b437--

