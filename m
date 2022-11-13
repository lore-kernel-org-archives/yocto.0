Return-Path: <fede@evolware.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38125C4332F
	for <webhook@archiver.kernel.org>; Sun, 13 Nov 2022 13:25:54 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web11.2426.1668345946832241356
 for <yocto@lists.yoctoproject.org>;
 Sun, 13 Nov 2022 05:25:47 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: gmail.com, ip: 209.85.167.51, mailfrom: fede.evol@gmail.com)
Received: by mail-lf1-f51.google.com with SMTP id r12so15229331lfp.1
        for <yocto@lists.yoctoproject.org>; Sun, 13 Nov 2022 05:25:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=alotaRhJe5BFtENf/XAGPNfXO+t66yjuDjZAAPOOgT0=;
        b=XHfucrfXrPNGZ53nDtwkcyQ0+TeSVJEVrfz0/biQxMJPebcvS/Ive3DdjhnPgodCwe
         E+ebc0/JnRA1wLnIl4f0QC/xPw0WSEy9YLZiJIxWkEUamMv7LdXnW6EAAzm4EpMdP48F
         Gq49CyngGxFioywFgNHh00mCJk1YetGOPMIfRF1N4b7UfUJFit8uBBRulnFOIFkwK0qY
         mUn2vGDSeVBcDZ6t7StrBSwOLTTC5bwN/sZduGe5HfWB/xCDU0N7Tk64gpGZ4p0elZcd
         SqhPjtUsT2DgQ98OHjeEuM8tWcbVGBrkBKxXZ4AF987O4U7IVSeEds08SBDj1IuzNArE
         KUoQ==
X-Gm-Message-State: ANoB5pltziMp3fAcwVFUA+kYrOZ+h5OnPZHiQUAb52G7bMJ6hpvdt/q5
	YKl2zRfK0d/BoFlALsE2zO23exLmQDA01G80TPs=
X-Google-Smtp-Source: AA0mqf72mtJVqNfsFxfo8A7OUlfb4w2OBiFsfg8OsnKOmRroLaH0+es5k1MyDWqhbHOvTayjNVgMxDkviopjFCT5VOs=
X-Received: by 2002:a05:6512:3589:b0:4a9:2ca6:c14b with SMTP id
 m9-20020a056512358900b004a92ca6c14bmr3404112lfr.163.1668345944823; Sun, 13
 Nov 2022 05:25:44 -0800 (PST)
MIME-Version: 1.0
References: <CAJw49vp4_4BMooNGxrN-YKk+GzotueV9FOj+XYGzRdv2oQOL_A@mail.gmail.com>
In-Reply-To: <CAJw49vp4_4BMooNGxrN-YKk+GzotueV9FOj+XYGzRdv2oQOL_A@mail.gmail.com>
From: Federico Pellegrin <fede@evolware.org>
Date: Sun, 13 Nov 2022 14:25:33 +0100
Message-ID: <CAM6O0ZjaXbYkU9r5gtSepmOfQG0gF00mpfA6rhMGYUL7ugXh4w@mail.gmail.com>
Subject: Re: [yocto] source-less python
To: Yishai Jaffe <yishai1999@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000675cc505ed5a0f08"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 13 Nov 2022 13:25:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58549

--000000000000675cc505ed5a0f08
Content-Type: text/plain; charset="UTF-8"

Hello,
Just as a small reference since I raised some doubts and questions in
Buildroot community on this: there has been also some troubles to
understand the correctness or not there (as I found some packages with
problems due to this source-less management) and this then sparked, besides
discussions in the Buildroot mailing list (roughly end of July / beginning
of August if someone interested searching there), also an issue to the
Python community, which albeit some discussion I think never arrived to a
concrete conclusion. This is the issue:
https://github.com/python/cpython/issues/95827 (see also the linked one
maybe)

These are just my 2 cents to this discussion, then of course the Python
experts will probably chime in and describe the official/discussed position
of Yocto regarding to this, but just felt like mentioning that although
Buildroot is somehow offering this right now (and likely mostly works as
well!), it's not really a so clean and/or agreed solution.

Cheers,
Federico

Il giorno dom 13 nov 2022 alle ore 13:55 Yishai Jaffe <yishai1999@gmail.com>
ha scritto:

> Hi,
> I was wondering if there has been talk about support for source-less
> python on an image. Installing py and pyc files doubles the size of python
> on the rootfs. I can imagine this being implemented as an image feature.
> I know that in buildroot it is supported.
> Was this discussed and decided against? Is this an open issue?
> I have a working patch that implements this. I can submit it for review.
>
> Thanks,
> Yishai Jaffe
> Yishai Jaffe
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58548):
> https://lists.yoctoproject.org/g/yocto/message/58548
> Mute This Topic: https://lists.yoctoproject.org/mt/94997538/5117409
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> fede@evolware.org]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000675cc505ed5a0f08
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Hello,</div><div>Just as a small refer=
ence since I raised some doubts and questions in Buildroot community on thi=
s: there has been also some troubles to understand the correctness or not t=
here (as I found some packages with problems due to this source-less manage=
ment) and this then sparked, besides discussions in the Buildroot mailing l=
ist (roughly end of July / beginning of August if someone interested search=
ing there), also an issue to the Python community, which albeit some discus=
sion I think never arrived to a concrete conclusion. This is the issue: <a =
href=3D"https://github.com/python/cpython/issues/95827">https://github.com/=
python/cpython/issues/95827</a> (see also the linked one maybe)<br></div><d=
iv><br></div><div>These are just my 2 cents to this discussion, then of cou=
rse the Python experts will probably chime in and describe the official/dis=
cussed position of Yocto regarding to this, but just felt like mentioning t=
hat although Buildroot is somehow offering this right now (and likely mostl=
y works as well!), it&#39;s not really a so clean and/or agreed solution.</=
div><div><br></div><div>Cheers,</div><div>Federico<br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno dom 1=
3 nov 2022 alle ore 13:55 Yishai Jaffe &lt;<a href=3D"mailto:yishai1999@gma=
il.com">yishai1999@gmail.com</a>&gt; ha scritto:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi,</div=
><div dir=3D"ltr">I was wondering if there has been talk about support for =
source-less python on an image. Installing py and=C2=A0pyc=C2=A0files doubl=
es the size of python on the rootfs. I can imagine this being implemented a=
s an image feature.</div><div dir=3D"ltr">I know that in buildroot it is su=
pported.</div><div dir=3D"ltr">Was this discussed and decided against? Is t=
his an open issue?<br></div><div>I have a working patch that implements thi=
s. I can submit it for review.</div><div dir=3D"ltr"><br></div><div dir=3D"=
ltr">Thanks,</div><div><div dir=3D"ltr">Yishai Jaffe</div></div><div><div d=
ir=3D"ltr">Yishai Jaffe</div></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58548): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58548" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58548</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/94997538/5117=
409" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/94997538/5117409</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:fede@evolware.org" target=3D"_blank">fede@evolwa=
re.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000675cc505ed5a0f08--

