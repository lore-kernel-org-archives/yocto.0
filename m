Return-Path: <bratiranjan12@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EFB8FC10F1A
	for <webhook@archiver.kernel.org>; Tue,  7 May 2024 05:17:52 +0000 (UTC)
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
 by mx.groups.io with SMTP id smtpd.web10.4588.1715059069679382544
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 May 2024 22:17:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=J11ucZom;
 spf=pass (domain: gmail.com, ip: 209.85.160.52, mailfrom: bratiranjan12@gmail.com)
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-23bd61fbd64so1916224fac.0
        for <yocto@lists.yoctoproject.org>; Mon, 06 May 2024 22:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715059069; x=1715663869; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=e9Ze5R+Me+nrVUF5KJutJClbdQ+Iv5MKMCqtocdL/pU=;
        b=J11ucZomAywPC5W5HxbyfFPLRAS8YEahbY2nROXzknb0VCw/81Qkah+ez8+FHxdyax
         fimvMa/2qbwccrDM8XTwvt2/8n6vL7JpdTr6FWmMmgYNR+2WQkLb9nBgAKEu5h5/RvPM
         IhZZcSoLJx6WRG9rESNdS0WIi2tiXP/JI1kf3RUTT5BV9dSiJOkqx43AsbuDX1nxhjIt
         ytb2Q5Tr34EczAGVrfLTpnY/gkzRgJ0XB0KHQ7p7++gaHWfajWAxEgDhW8zx1MDjp0TQ
         IHOtBGh2C8yPzZ/TTc8vAlokv5VW6oRVWV2XpHakZfM/ATSxCaTSVKj4RiEW9qzNSwyM
         x8OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715059069; x=1715663869;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e9Ze5R+Me+nrVUF5KJutJClbdQ+Iv5MKMCqtocdL/pU=;
        b=xAEl6lg530WfJocptS89pss00WzLyH0lwYGhDSnxdRfFKqACDKk+xFpa7sM4FxEMlm
         CHfe7YMUBRMPwAC7VAlP+H9j3q/79MsythjaBjYtpkOrSDKvjHpCOIWJrlJh2P2qbdzQ
         hepNxj9JA+AA7ABeWXe8DMKuNXlcnoR/Vv+Oc9DxHv44ep5VLNDQkie7nNhXDsB6riO1
         OHTv74lC4iU5KXQZUKtshavq09nfj6idWODMWNAQAsiDxQOaFXJoXS858Wf7GnBVNy8+
         yG2bwJX4E7Mmy3Vwh8B0H0wwHIrqMRaGgD/f1Qllwi+YN6Iwnrw/zPU9KF4Jy04/B4c9
         GupQ==
X-Gm-Message-State: AOJu0Yw039HeWnz1znpaZu4T/7o9gUHHROpV9ke8Jf2KX7yLyv4R67zo
	LyuuewaqStddupYmxvxa7fuuKU/YJvrCVWN1nbX0KgZPlsZFZKPWGZN706Ad5My2o9G6p8QJoMX
	N94orqLC/qOrhQy6k+Uuv+2RRkpI=
X-Google-Smtp-Source: AGHT+IGHbSd+9Zo+cqZB+suEf4YaK+1vQLtSPz2Aai11NKxUas+B+DSWDc7TDLJK/uYTQrNPzOUBZ/josq3zhrbNzjw=
X-Received: by 2002:a05:6871:826:b0:23e:4c7e:d018 with SMTP id
 q38-20020a056871082600b0023e4c7ed018mr13777926oap.41.1715059068858; Mon, 06
 May 2024 22:17:48 -0700 (PDT)
MIME-Version: 1.0
References: <CALSmAY7=T9hENBfNFt8nUGT98boRZF5_3KdubfDLipcTkG+-vQ@mail.gmail.com>
 <CAMKF1srgDX5tNk2J3ik=pAD2z7nDqs5BtAWwW-s5HPGh=w6OGA@mail.gmail.com>
In-Reply-To: <CAMKF1srgDX5tNk2J3ik=pAD2z7nDqs5BtAWwW-s5HPGh=w6OGA@mail.gmail.com>
From: Bratiranjan Acharya <bratiranjan12@gmail.com>
Date: Tue, 7 May 2024 10:47:37 +0530
Message-ID: <CALSmAY4KzeeBNktsKiD5eiiDSfh3v451Fqg3EDcaXsWA4-Vq9g@mail.gmail.com>
Subject: Re: [yocto] Command line Variable
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000917a060617d64e21"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 May 2024 05:17:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63041

--000000000000917a060617d64e21
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello there! I've recently experimented with incorporating the following
lines into my recipe file:
BB_ENV_PASSTHROUGH_ADDITIONS =3D "BUILD_ID"
BUILD_ID ?=3D "none"
However, despite these additions, I encountered a persistent issue. Even
after executing the command "BUILD_ID=3D123456 bitbake custom-img" the valu=
e
of BUILD_ID consistently defaults to "none." I'm curious if there's an
alternative approach worth exploring. Any insights would be greatly
appreciated!

Thanks & Regards
Brati

On Tue, 7 May 2024 at 10:13, Khem Raj <raj.khem@gmail.com> wrote:

> On Mon, May 6, 2024 at 9:25=E2=80=AFPM Bratiranjan Acharya via
> lists.yoctoproject.org
> <bratiranjan12=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > Hi,
> > Could we establish a tailored command within Yocto, taking to
> "BUILD_ID=3D123456 bitbake custom-image" mirroring the functionality of
> "MACHINE=3Dx86 bitbake custom-image"? Essentially, I'm exploring the
> possibility of introducing a custom variable like of 'MACHINE' and
> executing it similarly from the command line, as mentioned before.
> > I have tried various ways like defining in the conf,recipe,.inc file
> like "BUILD_ID ?=3D "none"" and running directly from command line
> "BUILD_ID=3D123456 bitbake custom-image" so it must change the BUILD_ID t=
o
> 123456 but its not working like that. Anyone have any suggestions? Thanks=
 &
> Regards Brati
> >
>
> Maybe set BB_ENV_PASSTHROUGH_ADDITIONS =3D "BUILD_ID"
>
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#63039):
> https://lists.yoctoproject.org/g/yocto/message/63039
> > Mute This Topic: https://lists.yoctoproject.org/mt/105954779/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>

--000000000000917a060617d64e21
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello there! I&#39;ve recently experimented with incorpora=
ting the following lines into my recipe file: <br>BB_ENV_PASSTHROUGH_ADDITI=
ONS =3D &quot;BUILD_ID&quot; <br>BUILD_ID ?=3D &quot;none&quot; <br>However=
, despite these additions, I encountered a persistent issue. Even after exe=
cuting the command &quot;BUILD_ID=3D123456 bitbake custom-img&quot; the val=
ue of BUILD_ID consistently defaults to &quot;none.&quot; I&#39;m curious i=
f there&#39;s an alternative approach worth exploring. Any insights would b=
e greatly appreciated!<br><br>Thanks &amp; Regards<br>Brati</div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 7 May 20=
24 at 10:13, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">On Mon, May 6, 2024 at 9:25=E2=80=AFPM Bratiranjan Acharya via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a><br>
&lt;bratiranjan12=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" tar=
get=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt; Could we establish a tailored command within Yocto, taking to &quot;BU=
ILD_ID=3D123456 bitbake custom-image&quot; mirroring the functionality of &=
quot;MACHINE=3Dx86 bitbake custom-image&quot;? Essentially, I&#39;m explori=
ng the possibility of introducing a custom variable like of &#39;MACHINE&#3=
9; and executing it similarly from the command line, as mentioned before.<b=
r>
&gt; I have tried various ways like defining in the conf,recipe,.inc file l=
ike &quot;BUILD_ID ?=3D &quot;none&quot;&quot; and running directly from co=
mmand line=C2=A0 &quot;BUILD_ID=3D123456 bitbake custom-image&quot; so it m=
ust change the BUILD_ID to 123456 but its not working like that. Anyone hav=
e any suggestions? Thanks &amp; Regards Brati<br>
&gt;<br>
<br>
Maybe set BB_ENV_PASSTHROUGH_ADDITIONS =3D &quot;BUILD_ID&quot;<br>
<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#63039): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/63039" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/63039</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/10595477=
9/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/mt/105954779/1997914</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khe=
m@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div>

--000000000000917a060617d64e21--

