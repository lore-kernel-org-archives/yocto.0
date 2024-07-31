Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02C9C3DA7F
	for <webhook@archiver.kernel.org>; Wed, 31 Jul 2024 13:08:58 +0000 (UTC)
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
 by mx.groups.io with SMTP id smtpd.web11.42536.1722431333414134520
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Jul 2024 06:08:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=SoI+lUnc;
 spf=pass (domain: gmail.com, ip: 209.85.215.177, mailfrom: rybczynska@gmail.com)
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-7aa7703cf08so4321124a12.2
        for <yocto@lists.yoctoproject.org>; Wed, 31 Jul 2024 06:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722431332; x=1723036132; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vdUJKQ6NARVk2VCYAUBdzIJWObZGBwJiHBvJ3+sSFlE=;
        b=SoI+lUncdFkvqNb3C8hdkNxuLQGvzSXYhz7fmM0rtczd+xDi7VxC4yTSPkliha/Nxz
         IzmSg8+41hDQJcoHg56DlibmbtGR4Kd0wDwQTQsyR65zDhNDPYW+w4/p6n2yq5JXSFSv
         vH5krbfr7tT2HB43DuYzeF3cwXzogFRnS8tON3NvVt6dEBcc7bbghUw60VHIwRLG2C5M
         zjKJYvNsR4LS1kNOkeswCA0meE1u5ydbA2Xd022wfwBHRttvJ1LK1JfWv/MkikjoM062
         maD4HFABPqbH26QN0Eq4WSpsMzLyi2dFsLlJboxHFdpgoNreAjddKxP1xWlatwe7X71J
         k/8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722431332; x=1723036132;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vdUJKQ6NARVk2VCYAUBdzIJWObZGBwJiHBvJ3+sSFlE=;
        b=tbzRKIfI/2M9NRSBE2x3/P2ULjByUq6V4R3IWZU+X9wLJe6YBdykjxA7tNli5HmF3S
         UTEfJ4vh7U3HMKbNRblMTj6c+iXHT1d4ZhFNyZO1b+40CPCF5w4NYO0T2HRMS+5Okr5V
         K4W/oERTm0Sxti5ncocP/drycQ4DjpR1FfbXHlztp4ZAuUmx+k5iUCbAQi5yftq/tpcf
         EBPN1RqV7NZtvhj3VmNGH8ThnfWUOIfNcOhvw+loxySxoTsuN0c1HWcClX1dDZIsutXY
         uiZpg3R6eKdeI8uRZb6VcWEGx+SiXxMANz4sMkStWFZ0vNSCLOBb7BtYlSsP5T2/JcIn
         y7SA==
X-Gm-Message-State: AOJu0Yy5NGWxQrFhWTKOPIHllb0lESeEm9rM/WXOLrIp1A0kcbh9kyzL
	h75+rBGs1gHkZpE3ET3qOqHLa28gTnri0nAHygYM3QFPt+QH1UvqVKmY/AzkF4uNBtNgpJ/8wMO
	KU004UCi2AfBqF1GdAskNbXcaAPaoEg==
X-Google-Smtp-Source: AGHT+IHhbEb/DbFqih3r16g7cMFGCJNe9GtHrvDdeeq6PLD/w2xQwA7ZMazJ956OGoMERQUKwHsAUb4z0dPYj1v+8EU=
X-Received: by 2002:a17:90a:468d:b0:2c9:95c7:7521 with SMTP id
 98e67ed59e1d1-2cf7e09819cmr16661997a91.1.1722431332226; Wed, 31 Jul 2024
 06:08:52 -0700 (PDT)
MIME-Version: 1.0
References: <72C4369E-8A25-4CFD-B07E-D8D436665B38@gmail.com>
 <AS1PR10MB56979196B6806897F45F88E3FDB12@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
 <749E7C14-50A8-43D1-8D7B-D742B323E931@gmail.com> <AS1PR10MB5697ECA5E747274E8AA40C63FDB12@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AS1PR10MB5697ECA5E747274E8AA40C63FDB12@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Wed, 31 Jul 2024 15:08:40 +0200
Message-ID: <CAApg2=SSqnxBrzzc3HKvQC0KaLpOktbQkxtayMDUmAB3xevz2g@mail.gmail.com>
Subject: Re: [yocto] CVEs and OSS info for nested dependencies
To: yocto@lists.yoctoproject.org, peter.marko@siemens.com
Cc: Steven Dorigotti <sdorigotti@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000b51d15061e8acb5e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Jul 2024 13:08:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63632

--000000000000b51d15061e8acb5e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 31, 2024 at 1:28=E2=80=AFPM Peter Marko via lists.yoctoproject.=
org
<peter.marko=3Dsiemens.com@lists.yoctoproject.org> wrote:

>
> > -----Original Message-----
> > From: Steven Dorigotti <sdorigotti@gmail.com>
> > Sent: Wednesday, July 31, 2024 13:20
> > To: Marko, Peter (ADV D EU SK BFS1) <Peter.Marko@siemens.com>
> > Cc: yocto@lists.yoctoproject.org
> > Subject: Re: [yocto] CVEs and OSS info for nested dependencies
> >
> >
> > > On 31 Jul 2024, at 10:21, Marko, Peter <Peter.Marko@siemens.com>
> wrote:
> >
> > Hello Peter,
> >
> > > This topic comes up from time to time.
> >
> > It=E2=80=99s nice to get confirmation, I was unable to find any traces =
of the
> issue.
> >
> > > There was already a patch proposed for this:
> > > https://lists.openembedded.org/g/openembedded-
> > core/topic/101991269#msg189260
> > > https://lists.openembedded.org/g/openembedded-
> > core/topic/102076964#msg189501
> > >
> > > Maybe it wouldn't be that difficult to finish it, but it's possible
> that it needs
> > to get a bit broader to also update generated spdx
> > > as there is ongoing activity to separate cve-check into offline tool
> processing
> > the spdx file.
> >
> > This does seems like a good start on the CVE reporting side.
> >
> > Whereas for SPDX, perhaps the =E2=80=9Cdummy dependency package=E2=80=
=9D (e.g. nodejs-
> > nghttp2) approach may be the simplest alternative even though it requir=
es
> > manual copying of license info/files and some extra maintenance overhea=
d.
> > How does this sound to you?
>
> I don't think that dummy dependencies are a good solution.
> They will be forgotten to update and for recipes like node there will be
> maybe hundereds of them.
> (e.g. see any rust recipe how long they are, and that would be split to
> that many files)
> Having a variable which defines all vendored components in some form (e.g=
.
> "type,name,version,cpe") looks much better.
>
>
Some form of metadata without having to do a dummy recipe would be good. It
would need to include the recipe name plus version (to re-use CPEs if they
exist already) or a complete vendor/product/version if a new one.

This is likely a little more complex for SPDX, because you should likely
say which file in the source is from which package.

This being said, with the external tooling it is also possible to generate
the appropriate JSON. Merging the package list is not supported for now,
but it is an easy thing to do.

Kind regards,
Marta

--000000000000b51d15061e8acb5e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 31, 2024 at 1:28=E2=80=AF=
PM Peter Marko via <a href=3D"http://lists.yoctoproject.org">lists.yoctopro=
ject.org</a> &lt;peter.marko=3D<a href=3D"mailto:siemens.com@lists.yoctopro=
ject.org">siemens.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><br>
&gt; -----Original Message-----<br>
&gt; From: Steven Dorigotti &lt;<a href=3D"mailto:sdorigotti@gmail.com" tar=
get=3D"_blank">sdorigotti@gmail.com</a>&gt;<br>
&gt; Sent: Wednesday, July 31, 2024 13:20<br>
&gt; To: Marko, Peter (ADV D EU SK BFS1) &lt;<a href=3D"mailto:Peter.Marko@=
siemens.com" target=3D"_blank">Peter.Marko@siemens.com</a>&gt;<br>
&gt; Cc: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">=
yocto@lists.yoctoproject.org</a><br>
&gt; Subject: Re: [yocto] CVEs and OSS info for nested dependencies<br>
&gt; <br>
&gt; <br>
&gt; &gt; On 31 Jul 2024, at 10:21, Marko, Peter &lt;<a href=3D"mailto:Pete=
r.Marko@siemens.com" target=3D"_blank">Peter.Marko@siemens.com</a>&gt; wrot=
e:<br>
&gt; <br>
&gt; Hello Peter,<br>
&gt; <br>
&gt; &gt; This topic comes up from time to time.<br>
&gt; <br>
&gt; It=E2=80=99s nice to get confirmation, I was unable to find any traces=
 of the issue.<br>
&gt; <br>
&gt; &gt; There was already a patch proposed for this:<br>
&gt; &gt; <a href=3D"https://lists.openembedded.org/g/openembedded-" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openembedded.org/g/openembedde=
d-</a><br>
&gt; core/topic/101991269#msg189260<br>
&gt; &gt; <a href=3D"https://lists.openembedded.org/g/openembedded-" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openembedded.org/g/openembedde=
d-</a><br>
&gt; core/topic/102076964#msg189501<br>
&gt; &gt;<br>
&gt; &gt; Maybe it wouldn&#39;t be that difficult to finish it, but it&#39;=
s possible that it needs<br>
&gt; to get a bit broader to also update generated spdx<br>
&gt; &gt; as there is ongoing activity to separate cve-check into offline t=
ool processing<br>
&gt; the spdx file.<br>
&gt; <br>
&gt; This does seems like a good start on the CVE reporting side.<br>
&gt; <br>
&gt; Whereas for SPDX, perhaps the =E2=80=9Cdummy dependency package=E2=80=
=9D (e.g. nodejs-<br>
&gt; nghttp2) approach may be the simplest alternative even though it requi=
res<br>
&gt; manual copying of license info/files and some extra maintenance overhe=
ad.<br>
&gt; How does this sound to you?<br>
<br>
I don&#39;t think that dummy dependencies are a good solution.<br>
They will be forgotten to update and for recipes like node there will be ma=
ybe hundereds of them.<br>
(e.g. see any rust recipe how long they are, and that would be split to tha=
t many files)<br>
Having a variable which defines all vendored components in some form (e.g. =
&quot;type,name,version,cpe&quot;) looks much better.<br>
<br></blockquote><div><br></div><div>Some form of metadata without having t=
o do a dummy recipe would be good. It would need to include the recipe name=
 plus version (to re-use CPEs if they exist already) or a complete vendor/p=
roduct/version if a new one.</div><div><br></div><div>This is likely a litt=
le more complex for SPDX, because you should likely say which file in the s=
ource is from which package.<br></div><div><br></div><div>This being said, =
with the external tooling it is also possible to generate the appropriate J=
SON. Merging the package list is not supported for now, but it is an easy t=
hing to do.</div><div><br></div><div>Kind regards,</div><div>Marta <br></di=
v></div></div>

--000000000000b51d15061e8acb5e--

