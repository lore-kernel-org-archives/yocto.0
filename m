Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEA1AC27C4F
	for <webhook@archiver.kernel.org>; Fri, 21 Jun 2024 16:02:41 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
 by mx.groups.io with SMTP id smtpd.web11.77143.1718985758104968719
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Jun 2024 09:02:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QqksBZ2k;
 spf=pass (domain: gmail.com, ip: 209.85.128.173, mailfrom: ticotimo@gmail.com)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-63174692a02so20644847b3.0
        for <yocto@lists.yoctoproject.org>; Fri, 21 Jun 2024 09:02:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718985757; x=1719590557; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ixURrDx1EbiY9DDDbky8ZiNP3RoUgrRFHUJo+e7Juso=;
        b=QqksBZ2k+4NB/30S0D1IqCawflMMJetfGzLzpdJPIAewl7FJuDy8KpiKetGYb98eH9
         a8lQDvMcmgECFdfOguD/ke/8vPR+6X4gcsp7tpjngoLeKe1/LqV5J5rcDNrit/inHArj
         LgX2KGYXcECv7As6M6pmochCXXNWv+jK3pV+f6WtpRswPSlvbi3uYDY1VtBGtRYUAw9Q
         FVBCAbqmHSkVdscVNt8TqAVJp8YRLL7T1DbhsnTLrpGDMc4xxlIY/qUQLzhicgYvUmhB
         zO9GgPjpSmy1UGXXSGhkxN5vVFNfqkVgfgp89apO/Id0CQbIfPkwv51/CvmIUzeXA84r
         /Rfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718985757; x=1719590557;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ixURrDx1EbiY9DDDbky8ZiNP3RoUgrRFHUJo+e7Juso=;
        b=ZilqNlBBdws01uITqRyYHnIuA9NY8LkEy3h430JX0uq9wwymrfKj+OG8doFVGS8p9I
         So0aTaEgP3NN5eAT99nMpBQC27kb4+HNAAc5UP6K3FDGcohqBa33aAEKbwOyN1Q8Zwtz
         hq5iqFfLQoIz4jBYSIf6mgvHLHAnK4tYZ1iHgwqVsG56heuBSuB37fvFsRyRFmKtqcH0
         XOGTVM0NiGKkIkFQLyYftiYJbR73m0TW4VhdUhKeaqgUA1aERVkYMPqL53Q4P6BDJLNi
         6tmChnVWyLk6cRt8+YRQWHCpCLQmYh0dxANMEDvkfqruQwXtg05IR+Cx0KyTJB95OA8g
         Xgow==
X-Gm-Message-State: AOJu0YxpA+YteQkqSi085FKqrDTd3jjJ9SjdyCbVKVQrvRWiAUOv4DHn
	/u+baNs1JimdAK/qhrZT+Rgd15StY4stZQI9IQTE7snnh83D2csukSe0c/22KKIAl/2x1QN1sRS
	uQbij9LBqhfAV77BujnI9fz41B/CbvP28cmw=
X-Google-Smtp-Source: AGHT+IGvvIgPMzr8lBPODN6kEuFXWXMbqaUYNxdQYl930fITfeCj6fQsj7+KX6fCFbEF+H7rusKNXEY22ddezZrwHlg=
X-Received: by 2002:a05:690c:6ac8:b0:61a:b066:3525 with SMTP id
 00721157ae682-63a8e6ae7c4mr111021497b3.23.1718985756988; Fri, 21 Jun 2024
 09:02:36 -0700 (PDT)
MIME-Version: 1.0
References: <iLai.1718957021658838098.5r35@lists.yoctoproject.org> <CAMKF1so5mNEM5=mt64Pf6LUc+6dC=DXQtBj_4465w_TqDtTuiQ@mail.gmail.com>
In-Reply-To: <CAMKF1so5mNEM5=mt64Pf6LUc+6dC=DXQtBj_4465w_TqDtTuiQ@mail.gmail.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Fri, 21 Jun 2024 09:02:25 -0700
Message-ID: <CANx9H-AxeCQZiXuwiLj5CXCN107dT_69zHUC0hJAUnHQ_rz9BA@mail.gmail.com>
Subject: Re: [yocto] Input for FIPS openssl to be added in yocto build
To: yocto@lists.yoctoproject.org, raj.khem@gmail.com
Cc: emailaddress.ashish@gmail.com
Content-Type: multipart/alternative; boundary="0000000000006b5eaf061b688f6c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Jun 2024 16:02:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63378

--0000000000006b5eaf061b688f6c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 21, 2024 at 7:04=E2=80=AFAM Khem Raj via lists.yoctoproject.org
<raj.khem=3Dgmail.com@lists.yoctoproject.org> wrote:

> On Fri, Jun 21, 2024 at 1:03=E2=80=AFAM emailaddress.ashish via
> lists.yoctoproject.org
> <emailaddress.ashish=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > Hi Team ,
> >
> > 1) We wanted to enable openssl-fips on our Yocto Image  ( we are trying
> on Yocto-5.5 )
> >      Do we have any layer to support this or any recipe ?
> >      I was looking through recipe supported by open-embedded  but could
> not find any recipe for same.
> >
> > 2) Any suggestion or any inputs on same will be helpful.
> >
>
> there is a layer
>
> https://layers.openembedded.org/layerindex/branch/master/layer/meta-opens=
sl102-fips/
> its older version but could be a good starting point.
>
>
OpenSSL 3.1 still has not been fully ratified for latest FIPS 140-3. It is
a NIST backlog problem.

You can absolutely build OpenSSL 3.0.8/3.0.9 though.
https://csrc.nist.gov/projects/cryptographic-module-validation-program/cert=
ificate/4282
It is very different than openssl102 workflow.


> > Thanks ,
> > Ashish
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63377):
> https://lists.yoctoproject.org/g/yocto/message/63377
> Mute This Topic: https://lists.yoctoproject.org/mt/106795437/924729
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ticotimo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000006b5eaf061b688f6c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 21, 2024 at 7:04=E2=80=AF=
AM Khem Raj via <a href=3D"http://lists.yoctoproject.org">lists.yoctoprojec=
t.org</a> &lt;raj.khem=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org=
">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">On Fri, Jun 21, 2024 at 1:03=E2=80=AFAM e=
mailaddress.ashish via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a><br>
&lt;emailaddress.ashish=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.or=
g" target=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Team ,<br>
&gt;<br>
&gt; 1) We wanted to enable openssl-fips on our Yocto Image=C2=A0 ( we are =
trying on Yocto-5.5 )<br>
&gt;=C2=A0 =C2=A0 =C2=A0 Do we have any layer to support this or any recipe=
 ?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 I was looking through recipe supported by open-emb=
edded=C2=A0 but could not find any recipe for same.<br>
&gt;<br>
&gt; 2) Any suggestion or any inputs on same will be helpful.<br>
&gt;<br>
<br>
there is a layer<br>
<a href=3D"https://layers.openembedded.org/layerindex/branch/master/layer/m=
eta-openssl102-fips/" rel=3D"noreferrer" target=3D"_blank">https://layers.o=
penembedded.org/layerindex/branch/master/layer/meta-openssl102-fips/</a><br=
>
its older version but could be a good starting point.<br>
<br></blockquote><div><br></div><div>OpenSSL 3.1 still has not been fully r=
atified for latest FIPS 140-3. It is a NIST backlog problem.</div><div><br>=
</div><div>You can absolutely=C2=A0build OpenSSL 3.0.8/3.0.9 though.=C2=A0<=
a href=3D"https://csrc.nist.gov/projects/cryptographic-module-validation-pr=
ogram/certificate/4282">https://csrc.nist.gov/projects/cryptographic-module=
-validation-program/certificate/4282</a></div><div>It is very different tha=
n openssl102 workflow.</div><div>=C2=A0</div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">
&gt; Thanks ,<br>
&gt; Ashish<br>
&gt; <br>
&gt;<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63377): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63377" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63377</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/106795437/924=
729" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/106795437/924729</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000006b5eaf061b688f6c--

