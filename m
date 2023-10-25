Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BF60C25B47
	for <webhook@archiver.kernel.org>; Wed, 25 Oct 2023 10:08:57 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web11.40123.1698228533232088242
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Oct 2023 03:08:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=AlfrZPIg;
 spf=pass (domain: gmail.com, ip: 209.85.221.49, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-32d9b507b00so3945808f8f.1
        for <yocto@lists.yoctoproject.org>; Wed, 25 Oct 2023 03:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698228531; x=1698833331; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Wn73zaHwanFTunvEvtddBorVer4LicJGOf+hiGvHUnA=;
        b=AlfrZPIg+tvd6o+BpcBexc3nc+y4UOhytwjq4r+aOJsd09xKF/wkrwufPOqZdJXdwx
         7omwWz1g2uet7u6MwVVx9jFE6dcUWxCcIDNUXzGF3Hb/AvwQClwfiT/Coy9M/5MxTrgv
         9Y2cwQwUGwAu6A8tKsCgrp9COX2b9eFCvbBjWfbn3By2R3aXAjKiPeepCaqM5+p75lia
         qKea0j9Lxa6C+Bcxs9/RwffghYEDfqnhJwnoTVzlY7hRxSN9kIBlob6dgQCCfy97Qe2V
         WYs0ZjKnKOWGDGZNXzcdm+/wtr58XlP/aPqvKig6jlcODl/pI016fAjOe04DFR7FAoJb
         /iFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698228531; x=1698833331;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wn73zaHwanFTunvEvtddBorVer4LicJGOf+hiGvHUnA=;
        b=sCxcY6M6eVzXazmeM1WhQP3k+pujEH+XxPI/RdC00ALE4SinMGyfZ3ufTqbomSCbiR
         P+axvjLB56h1YUsCFO3uXhS/vSCfrc037z+4u0oukvOFARDw2i1pnFhqyiVYmjL+1fdx
         IekiDvwm5v5z0egOWED5t0pGIl+5EXS00kwwc5fZUjAFECHAtGi3X/th6IwUA33xkmRV
         AepokHNHRMRjgYTR/+nSDKjzaqJWInZUUgPAjzy68ZhHKU8OcGxzz8EIGXVRM6ygZINF
         2CXOUXoI7SfzXeCaWjv6TOeOWnpNsF9K2V9AqC+aMJvkU/d7pIXgr/Uv+xExPyPLNEvr
         HkAA==
X-Gm-Message-State: AOJu0Yz8X/QpcL0w7r5mnPwBsnBZGJtUz/XEfrTvXq1+UE9Bge5DPqvc
	P/dtPzDVz9XhFVFVRTCE3qhwTfMPmqpS/L4nMM8=
X-Google-Smtp-Source: AGHT+IHXQIMkS/Quo/vCAC3oGGRsdT1ZZnksZpA7x2GzQTclv6kPZdM5B6VEVMYoST40HxiACPhKzo3fNYh5Xcd6Xgw=
X-Received: by 2002:adf:e507:0:b0:329:6e92:8d77 with SMTP id
 j7-20020adfe507000000b003296e928d77mr10280698wrm.51.1698228531275; Wed, 25
 Oct 2023 03:08:51 -0700 (PDT)
MIME-Version: 1.0
References: <xcT9.1698207479013990293.zP8l@lists.yoctoproject.org> <EB835F08-3815-4CC6-958C-102766B0C8B1@arm.com>
In-Reply-To: <EB835F08-3815-4CC6-958C-102766B0C8B1@arm.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Wed, 25 Oct 2023 12:08:38 +0200
Message-ID: <CA+chaQfHGX7s4Jx9Q4D9kJKHR=+9sVyJovUr6RKoCw+tqrAWOg@mail.gmail.com>
Subject: Re: [yocto] [Poky - Kirstone] About update FFmpeg to v6.0 in poky
 #bitbake #devtool #ffmpeg #kirkstone #yocto #poky
To: Ross Burton <ross.burton@arm.com>
Cc: "dspei@ambarella.com" <dspei@ambarella.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000005ab7fa060887a40c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 Oct 2023 10:08:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61478

--0000000000005ab7fa060887a40c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 25, 2023 at 11:54=E2=80=AFAM Ross Burton <ross.burton@arm.com> =
wrote:

> On 25 Oct 2023, at 05:17, dspei via lists.yoctoproject.org <dspei=3D
> ambarella.com@lists.yoctoproject.org> wrote:
> >
> > Hi, community
> >
> > Thanks for your contribution to this great project.
> >
> > The FFmpeg 6.0 was released on 2023-02-27. It is the latest stable
> FFmpeg release from the 6.0 release branch.
> > https://ffmpeg.org/download.html#release_6.0
> >
> > I can find it when using $ devtool latest-version FFmpeg, but the
> version of the FFmpeg recipe is 5.0.1 on poky-kirstone.
> > INFO: Current version: 5.0.1
> > INFO: Latest version: 6.0
> >
> > Although we can use "devtool upgrade=E2=80=9C to update by hand, the de=
fault
> version being updated to FFmpeg 6.0 is warranted from the point of view o=
f
> multimedia performance and yocto's long-term maintenance.
>
> We typically don=E2=80=99t upgrade recipes in stable releases unless ther=
e=E2=80=99s an
> exceptional reason, like security issues.  Especially as this is a major
> release so the improvements will not be limited to bug fixes.
>
> You=E2=80=99re absolutely welcome to maintain a mixin layer that contains=
 the
> latest ffmpeg recipes for stable releases, as I=E2=80=99m sure other user=
s may well
> appreciate this.
>

And when you do, then please look at latest master, if there is newer
version, then it would be better starting point than doing the upgrade on
your own independently.
e.g. https://git.openembedded.org/openembedded-core/log/?qt=3Dgrep&q=3Dffmp=
eg
shows the upgrade to 5.1 and 6.0 as it was applied in master (and you might
find some fixes for other components to be compatible with new ffmpeg as
well).

Regards,

--0000000000005ab7fa060887a40c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Oct 25, 2023 at 11:54=E2=80=AFAM =
Ross Burton &lt;<a href=3D"mailto:ross.burton@arm.com">ross.burton@arm.com<=
/a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">On 25 Oct 2023, at 05:17, dspei via <a href=3D"ht=
tp://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoc=
toproject.org</a> &lt;dspei=3D<a href=3D"mailto:ambarella.com@lists.yoctopr=
oject.org" target=3D"_blank">ambarella.com@lists.yoctoproject.org</a>&gt; w=
rote:<br>
&gt; <br>
&gt; Hi, community<br>
&gt; <br>
&gt; Thanks for your contribution to this great project.<br>
&gt; <br>
&gt; The FFmpeg 6.0 was released on 2023-02-27. It is the latest stable FFm=
peg release from the 6.0 release branch. <br>
&gt; <a href=3D"https://ffmpeg.org/download.html#release_6.0" rel=3D"norefe=
rrer" target=3D"_blank">https://ffmpeg.org/download.html#release_6.0</a><br=
>
&gt; <br>
&gt; I can find it when using $ devtool latest-version FFmpeg, but the vers=
ion of the FFmpeg recipe is 5.0.1 on poky-kirstone. <br>
&gt; INFO: Current version: 5.0.1<br>
&gt; INFO: Latest version: 6.0<br>
&gt; <br>
&gt; Although we can use &quot;devtool upgrade=E2=80=9C to update by hand, =
the default version being updated to FFmpeg 6.0 is warranted from the point=
 of view of multimedia performance and yocto&#39;s long-term maintenance.<b=
r>
<br>
We typically don=E2=80=99t upgrade recipes in stable releases unless there=
=E2=80=99s an exceptional reason, like security issues.=C2=A0 Especially as=
 this is a major release so the improvements will not be limited to bug fix=
es.<br>
<br>
You=E2=80=99re absolutely welcome to maintain a mixin layer that contains t=
he latest ffmpeg recipes for stable releases, as I=E2=80=99m sure other use=
rs may well appreciate this.<br></blockquote><div><br></div><div>And when y=
ou do, then please look at latest master, if there is newer version, then i=
t would be better starting point than doing the upgrade on your own indepen=
dently.</div><div>e.g. <a href=3D"https://git.openembedded.org/openembedded=
-core/log/?qt=3Dgrep&amp;q=3Dffmpeg">https://git.openembedded.org/openembed=
ded-core/log/?qt=3Dgrep&amp;q=3Dffmpeg</a> shows the upgrade to 5.1 and 6.0=
 as it was applied in master (and you might find some fixes for other compo=
nents to be compatible with new ffmpeg as well).</div><div><br></div><div>R=
egards,</div></div></div>

--0000000000005ab7fa060887a40c--

