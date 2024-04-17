Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA6DC4345F
	for <webhook@archiver.kernel.org>; Wed, 17 Apr 2024 17:25:04 +0000 (UTC)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
 by mx.groups.io with SMTP id smtpd.web11.20189.1713374695180101399
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Apr 2024 10:24:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=E/SRDFX+;
 spf=pass (domain: gmail.com, ip: 209.85.217.48, mailfrom: raj.khem@gmail.com)
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-479d6ab7585so6183137.1;
        Wed, 17 Apr 2024 10:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713374694; x=1713979494; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=np+1r7VkNvdklmHZhgKRaCnpBPwnM5Dr8KWcC+Vu4t8=;
        b=E/SRDFX+nvojWCoHDoKs0ipMZgfR8y+8k1kMwoyeso7hM/CXkx+LGqDLA99CMSNlNZ
         Q4AxbEud7GcCiwySX8R9kpgcInlU42DwlkfBreXJwSmxjV5OHH8Jeecv+5+2566K9pWX
         ThL10LRWdv3KKgrqnz0zkHex6QCUa0ix+ollzbGzj572Wugwq5oMSoZNgNsImSINkGvP
         vWqYYTfRywaWcH3fTuZkRX5RfcGBj2nTX+vPu3tf8eiee1zDhKB7/ZRA8Vx34Y/vbG4a
         3Det88e4Bx3s3xdUXhCeXAAjvWc9mJ498YC2+oK03Ik/qQraLRGt7GV6wBhS1zCvNbO8
         7yrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713374694; x=1713979494;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=np+1r7VkNvdklmHZhgKRaCnpBPwnM5Dr8KWcC+Vu4t8=;
        b=deyLKGCkpmA2+pOqCM83GUH/u2K2Cy1s7ZId6G1oPmEw0ATlWnPJ7rof4aqkY+POEC
         SKGklM9f9U3cD8kAsKMwsUL+Pr6Gj4WubxXoYR1A3lSNPw6ZvXsCIhh/EmHh59EPtJ2A
         RSwiNmiVh6zSgYBcjlnGEJrstqtage4IrF3sS/g7sTF2q00xBbwOGjQMgHTfqLx7EHQG
         9DBSobYNwDgNC5qHV8bYO8cJ5vgjqm6Fm1HecHcQwdguWXowLvS4yrWXNCSnsNTZvcBM
         4D9Givh6UhNCM+OpaN1jsGOahw/Y0NHtlPGvUh8EGdXmzFnKzEQ9c4rOYHGyFIVN/VvN
         twZA==
X-Forwarded-Encrypted: i=1; AJvYcCU8R1/2VCTSUvHJLX+IKv2K7TDYtmXVVedWt8LIxcMKZe10r9b/XgfghmHy+peccPs6S+YUmpmTeQrBE0JMMQoWRmdU9w9i/eDiU4B43ttQQZmfSBAfwGQRsqmTe6lnf/vsnd+IlzWSqrSDvUJ5/JM/BlInHfWWDFWC+w==
X-Gm-Message-State: AOJu0YwPe0WVTVfIHg6bNUOHo6rrj4ILuRJ2lOoiJNZT2j4RbyI7GUar
	OEwvz8SZR0lwJQmlEU8/TwaK0Rd9x1SwkFyn/YteC3pLTchW5Q97f8elTnM9s94tDp8T5v8b0B2
	qPbEq0iIoCiszWVQhcFxLb65M4BI=
X-Google-Smtp-Source: AGHT+IEeG0y901zsAow7YQKgOKjmWvZdS2UsXTCVgb1lRGFtAdidrbwtfxliyKJS9dwz1xmofuggFIJI0p8hXR8jaBk=
X-Received: by 2002:a05:6102:9ce:b0:478:4d51:82ec with SMTP id
 g14-20020a05610209ce00b004784d5182ecmr3356401vsi.4.1713374688336; Wed, 17 Apr
 2024 10:24:48 -0700 (PDT)
MIME-Version: 1.0
References: <0101018eeb341f1c-6cbd9227-adf8-4d80-b90e-d552b36e72cd-000000@us-west-2.amazonses.com>
 <7b21770c8dd6eae305575dc77bf968a35dba03b8.camel@linuxfoundation.org>
In-Reply-To: <7b21770c8dd6eae305575dc77bf968a35dba03b8.camel@linuxfoundation.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 17 Apr 2024 10:24:36 -0700
Message-ID: <CAMKF1soj=+c+jJ3amSFJT8c+tdYAwf9GDaU0s610yMp7hR54NQ@mail.gmail.com>
Subject: Re: [tsc] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.0.rc2)
To: richard.purdie@linuxfoundation.org
Cc: Yocto TSC <tsc@lists.yoctoproject.org>, 
	qa-build-notification@lists.yoctoproject.org, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000aa626406164e21be"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Apr 2024 17:25:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62953

--000000000000aa626406164e21be
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 17, 2024 at 1:50=E2=80=AFAM Richard Purdie via lists.yoctoproje=
ct.org
<richard.purdie=3Dlinuxfoundation.org@lists.yoctoproject.org> wrote:

> On Wed, 2024-04-17 at 08:37 +0000, Pokybuild User via
> lists.yoctoproject.org wrote:
> >
> >     A build flagged for QA (yocto-5.0.rc2) was completed on the
> autobuilder and is available at:
> >
> >
> >         https://autobuilder.yocto.io/pub/releases/yocto-5.0.rc2
> >
> >
> >     Build URL:
> https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6813
>
> This does have two failures in it and two known ptest warnings (curl and
> gstreamer).
>
> The failures are from:
>
> a) a github network issue (rate limiting?)


Do we know it works ok in another build ?

>
>
> b) pip being missing in the buildtools tarball used to run the build for
> patchtest-selftest
>
> For b), updating buildtools should resolve it, I thought I had done
> that but there were a lot of moving pieces so I must not have got the
> latest.
>
> I'm proposing we do but this into QA as I'd not block release on these
> issues. I've done my best to get this into as good a shape as we can.
>

I am ok with this going ahead


> Cheers,
>
> Richard
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#2031):
> https://lists.yoctoproject.org/g/tsc/message/2031
> Mute This Topic: https://lists.yoctoproject.org/mt/105573382/1997914
> Group Owner: tsc+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/tsc/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000aa626406164e21be
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Apr 17, 2024 at 1:50=E2=80=AFAM Richard Purdie via =
<a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;ri=
chard.purdie=3D<a href=3D"mailto:linuxfoundation.org@lists.yoctoproject.org=
">linuxfoundation.org@lists.yoctoproject.org</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">On Wed, 2024-04-17 at 08:37 +0000, Pokybuild User =
via <a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"=
_blank">lists.yoctoproject.org</a> wrote:<br>
&gt; <br>
&gt; =C2=A0=C2=A0=C2=A0 A build flagged for QA (yocto-5.0.rc2) was complete=
d on the autobuilder and is available at:<br>
&gt; <br>
&gt; <br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a href=3D"https://autobuil=
der.yocto.io/pub/releases/yocto-5.0.rc2" rel=3D"noreferrer" target=3D"_blan=
k">https://autobuilder.yocto.io/pub/releases/yocto-5.0.rc2</a><br>
&gt; <br>
&gt; <br>
&gt; =C2=A0=C2=A0=C2=A0 Build URL: <a href=3D"https://autobuilder.yoctoproj=
ect.org/typhoon/#/builders/83/builds/6813" rel=3D"noreferrer" target=3D"_bl=
ank">https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6813=
</a><br>
<br>
This does have two failures in it and two known ptest warnings (curl and gs=
treamer).<br>
<br>
The failures are from:<br>
<br>
a) a github network issue (rate limiting?)</blockquote><div dir=3D"auto"><b=
r></div><div dir=3D"auto">Do we know it works ok in another build ?</div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex" dir=3D"auto"><br>
<br>
b) pip being missing in the buildtools tarball used to run the build for pa=
tchtest-selftest<br>
<br>
For b), updating buildtools should resolve it, I thought I had done<br>
that but there were a lot of moving pieces so I must not have got the<br>
latest.<br>
<br>
I&#39;m proposing we do but this into QA as I&#39;d not block release on th=
ese<br>
issues. I&#39;ve done my best to get this into as good a shape as we can.<b=
r>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">I am ok with thi=
s going ahead=C2=A0</div><div dir=3D"auto"><br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex" dir=3D"auto"><br>
Cheers,<br>
<br>
Richard<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#2031): <a href=3D"https://lists.yoctoproject.org/g/tsc/=
message/2031" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproje=
ct.org/g/tsc/message/2031</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/105573382/199=
7914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/105573382/1997914</a><br>
Group Owner: <a href=3D"mailto:tsc%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">tsc+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/tsc/unsub" rel=3D"=
noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/tsc/unsub</a=
> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.c=
om</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000aa626406164e21be--

