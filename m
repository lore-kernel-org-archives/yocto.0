Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2CCBFC433EF
	for <webhook@archiver.kernel.org>; Thu, 25 Nov 2021 17:03:00 +0000 (UTC)
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com
 [209.85.221.173])
 by mx.groups.io with SMTP id smtpd.web12.14430.1637859779318797672
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Nov 2021 09:02:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lG5lUEOn;
 spf=pass (domain: gmail.com, ip: 209.85.221.173,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f173.google.com with SMTP id s17so4333742vka.5;
        Thu, 25 Nov 2021 09:02:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Edrjp7Evk4LVKJR/z8tl1wJtV3K8ih8Exwd7fa4K96E=;
        b=lG5lUEOnpQLoyFoGbk3fTcOfe4RK8s1AAaeWAZKtVKpaq4Fy6wrH0rFKyWi5x6OaQH
         qgvtY2t7EDCRP5GxazSQBEpyaCPtRFEOwB00BWyLH2OicO3sEnMMi4SwjZnwdiNZw4Ja
         hRWY5cMDE1kJst+9nCFs4NfHFNMkHXA3roHlKA/9L8cBvVY3XTap3fAg+lCuq0rjfnPX
         A3yZgTKS3jOPPgQbfUvx3xVd2l/H3k1AKoaqEho5NnAPgo1rCJQ/NfHhxoo+0lTugVbF
         sfX/glwP3Vd2mGM9ut4Djq0+A+CPjO1VacT4iqotJEEJWwV83n3tKTcrFSYda3dixZUp
         aOHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Edrjp7Evk4LVKJR/z8tl1wJtV3K8ih8Exwd7fa4K96E=;
        b=UYvYeI0F6+jwiNMJzH/OPSfZjnD+RtW29t9/+89ABjNz5en2GqHkqSHrxlC9ghUuBL
         qTXExhQfy0yRK/0yRcF/7wX+/EFHEm3duAHnGzJ81i3EFUEcc6JkrfxVLkjFrmqcFTbn
         v7rqqZAmOGb2Xdq7ts6SSdnIRJt1LMzokLnFzwMOU0bN6o1YceUIn0+WOwQDrg0MU0nA
         +cjJrToPytMyAWgoqaUWta31a/d4d0kkpoZIFewVyo5GrCVKIag3B6MasK8C01yXsT7s
         1cvR5txU2GoGhWAHUSFcjXDzdnHJ/3coCm/MtJsDfC9bT8V1PukAZzK+gAXAQP1wrbpd
         QebQ==
X-Gm-Message-State: AOAM532QZZlKHmuCK9nI3/O3cN1RRFpWwCMHHIF8ZE9ggF+DBw9tNDvm
	BaBRxPq2Kpec5Z3n3JBSdnwRcnE4fOJVitvbEQs=
X-Google-Smtp-Source: 
 ABdhPJyhdJOuXqlXWI7LjDJumhF2XNTLE2jHO782CuLK/j74UZ62J5BZU1ciqfBVhukw6oI0yqPVwCLe/98Ty87hc6M=
X-Received: by 2002:a1f:3f4f:: with SMTP id m76mr3591390vka.1.1637859777013;
 Thu, 25 Nov 2021 09:02:57 -0800 (PST)
MIME-Version: 1.0
References: <gqXD.1637275103384839012.ZNHm@lists.yoctoproject.org>
 <CADfgfoY9skE9DPDim5EzHyA5KzD4Hpxku8gEtkVHX+s8Z+Y5ag@mail.gmail.com>
In-Reply-To: 
 <CADfgfoY9skE9DPDim5EzHyA5KzD4Hpxku8gEtkVHX+s8Z+Y5ag@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 25 Nov 2021 18:02:45 +0100
Message-ID: 
 <CANNYZj84Lo7nFYdatq1HEAMz_DUjuLDG-zaqsWRgkj3L61g9Pw@mail.gmail.com>
Subject: Re: [yocto-infrastructure] push.yoctoproject.org downtime Wednesday
 November 24th
To: Michael Halstead <mhalstead@linuxfoundation.org>
Cc: yocto-infrastructure@lists.yoctoproject.org,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000336c3b05d19ff29e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Nov 2021 17:03:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55423

--000000000000336c3b05d19ff29e
Content-Type: text/plain; charset="UTF-8"

Thanks!
A few repositories became uncategorized, and clutter the page at the top:
https://git.yoctoproject.org/

Alex

On Wed, 24 Nov 2021 at 23:18, Michael Halstead <
mhalstead@linuxfoundation.org> wrote:

> The migration is complete. git.yoctoproject.org now serves from a pair of
> load balanced mirrors. push.yoctoproject.org is on a new dedicated secure
> host.
>
> If git push hangs please double check the git remote is set to
> push.yoctoproject.org. We switched to this domain years ago but still
> allowed pushing to git.yoctoproject.org for convenience. That will not
> work any longer. When updating repository remotes make sure to push from
> the command line to add the new hostname to your known_hosts file. Scripts
> will hang at the ssh prompt until the new hostname is added.
>
> The mirrors pull in new changes rapidly but there is a delay between
> pushing and those changes appearing on the mirrors. Any scripts that push
> and then reference the commits will need a delay added to allow for the
> sync.
>
> Please email or reach out in IRC if you encounter any unexpected issues.
>
>
>
> On Thu, Nov 18, 2021 at 2:38 PM Michael Halstead via
> lists.yoctoproject.org <mhalstead=
> linuxfoundation.org@lists.yoctoproject.org> wrote:
>
>> push.yoctoproject.org is going offline for a short downtime between 1700
>> UTC and 2200 UTC while we move it to a new server. During the downtime
>> pushes may timeout or be rejected. If your push is rejected try again in 15
>> minutes. I will announce the start and end of the downtime in #yocto on
>> Libera.Chat.
>>
>> git.yoctoproject.org will be moved to a new pair of high availability
>> servers during the same window. No downtime is planned for this move.
>>
>>
>>
>
> --
> Michael Halstead
> Linux Foundation / Yocto Project
> Systems Operations Engineer
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#169):
> https://lists.yoctoproject.org/g/yocto-infrastructure/message/169
> Mute This Topic: https://lists.yoctoproject.org/mt/87155540/1686489
> Group Owner: yocto-infrastructure+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto-infrastructure/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000336c3b05d19ff29e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks!<br></div><div>A few repositories became uncat=
egorized, and clutter the page at the top:</div><div><a href=3D"https://git=
.yoctoproject.org/">https://git.yoctoproject.org/</a></div><div><br></div><=
div>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Wed, 24 Nov 2021 at 23:18, Michael Halstead &lt;<a hre=
f=3D"mailto:mhalstead@linuxfoundation.org">mhalstead@linuxfoundation.org</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr">The migration is complete. <a href=3D"http://git.yoctoproject=
.org" target=3D"_blank">git.yoctoproject.org</a> now serves from a pair of =
load balanced mirrors. <a href=3D"http://push.yoctoproject.org" target=3D"_=
blank">push.yoctoproject.org</a> is on a new dedicated secure host.<div><br=
></div><div>If git push=C2=A0hangs please double check the git remote is se=
t to <a href=3D"http://push.yoctoproject.org" target=3D"_blank">push.yoctop=
roject.org</a>. We switched to this domain years ago but still allowed push=
ing to <a href=3D"http://git.yoctoproject.org" target=3D"_blank">git.yoctop=
roject.org</a> for convenience. That will not work any longer. When updatin=
g repository=C2=A0remotes make sure to push from the command line to add th=
e new hostname to your known_hosts file. Scripts will hang at the ssh promp=
t until the new hostname is added.</div><div><br></div><div>The mirrors pul=
l in new changes rapidly but there is a delay between pushing and those cha=
nges appearing on the mirrors. Any scripts that push and then reference=C2=
=A0the commits will need a delay added to allow for the sync.=C2=A0</div><d=
iv><br></div><div>Please email or reach out in IRC if you encounter=C2=A0an=
y unexpected issues.</div><div><br></div><div><br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 18, 202=
1 at 2:38 PM Michael Halstead via <a href=3D"http://lists.yoctoproject.org"=
 target=3D"_blank">lists.yoctoproject.org</a> &lt;mhalstead=3D<a href=3D"ma=
ilto:linuxfoundation.org@lists.yoctoproject.org" target=3D"_blank">linuxfou=
ndation.org@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><a href=3D"http://push.yoctoproject.org" =
target=3D"_blank">push.yoctoproject.org</a> is going offline for a short do=
wntime between 1700 UTC and 2200 UTC while we move it to a new server. Duri=
ng the downtime pushes may timeout or be rejected. If your push is rejected=
 try again in 15 minutes. I will announce the start and end of the downtime=
 in #yocto on Libera.Chat.<br><br><a href=3D"http://git.yoctoproject.org" t=
arget=3D"_blank">git.yoctoproject.org</a> will be moved to a new pair of hi=
gh availability servers during the same window. No downtime is planned for =
this move.=C2=A0
<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
><div dir=3D"ltr">Michael Halstead<div>Linux Foundation / Yocto Project</di=
v><div>Systems Operations Engineer</div></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#169): <a href=3D"https://lists.yoctoproject.org/g/yocto=
-infrastructure/message/169" rel=3D"noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto-infrastructure/message/169</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/87155540/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/87155540/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto-infrastructure%2Bowner@lists.yoctoproj=
ect.org" target=3D"_blank">yocto-infrastructure+owner@lists.yoctoproject.or=
g</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto-infrastructu=
re/unsub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto-infrastructure/unsub</a> [<a href=3D"mailto:alex.kanavin@gmail.c=
om" target=3D"_blank">alex.kanavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000336c3b05d19ff29e--

