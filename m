Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03591C433EF
	for <webhook@archiver.kernel.org>; Wed, 24 Nov 2021 22:18:35 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
 [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web10.4954.1637792313974816830
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Nov 2021 14:18:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=EnmOziXM;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.53,
 mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-lf1-f53.google.com with SMTP id n12so11086222lfe.1
        for <yocto@lists.yoctoproject.org>;
 Wed, 24 Nov 2021 14:18:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=5BMoIDQQ/ePh/BL8DOixiZs23QULqQ+oT2TnWLU/aPs=;
        b=EnmOziXMHkLp+iR23P1PrZt7in8aPRmuxn4mj9n+LFh3d5mRrqYuvSpzNM07GPZ+IG
         +IdGvBOGw4l8FOdKO0nbYnW6ahu+gQhKgfHOUm57hrSXr6qnB6ngfa3YMfpmJIdIYOtD
         TP+hN6WPSFUcstFxDF7cFCT7VMJXOxmk7kSUU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=5BMoIDQQ/ePh/BL8DOixiZs23QULqQ+oT2TnWLU/aPs=;
        b=n/yOxEJH+y1NiRYLZTbeH//nI8xkPn22Ebj5rCKB80AJFDsGXnbo7gnMjSYiNOMXVx
         rFKLecz/fRZYYxrPErg7Z+IVlaF5a3dvlhCQo7clMfWMFkCZasVoQXbne2F+KavXTKNm
         p4l4VWPLMv4IlCxaK1DddwIDjJu8lv9V1N0Zl0SSuT3TphB0O7mkYoBGEKObIXgDIc3S
         7nvFlbk1i4RsVkmP2WD4u5K/94+Q1gkZnyiKLdhpD1nLbYMTnMetsU8f+1i839+xPBwz
         wT9ILT95BxsuCDDSTmps4REW67Blpx+ARDor3tlw5Ee2MbA7Ho+rQVZhiY1qptdaCQq6
         tjqg==
X-Gm-Message-State: AOAM531hJQpo9+qHzoTyb4FzffxTYtkxDXTk2X1//wEuVvFcwazuFVHz
	tCSfhn6saIDk0rYi23i5soxk9cJnROdvTdbtptp6xp4RqyzlLQ==
X-Google-Smtp-Source: 
 ABdhPJyufyC/VaTZyGaCAUMbvTcEBIUhf0TkTSrBIoec1rXoHkOdbFApNg/yUCZ/CmsDkoku3DeiI02X5wdJjRH2k80=
X-Received: by 2002:ac2:55a5:: with SMTP id y5mr18375833lfg.468.1637792311980;
 Wed, 24 Nov 2021 14:18:31 -0800 (PST)
MIME-Version: 1.0
References: <gqXD.1637275103384839012.ZNHm@lists.yoctoproject.org>
In-Reply-To: <gqXD.1637275103384839012.ZNHm@lists.yoctoproject.org>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Wed, 24 Nov 2021 14:18:20 -0800
Message-ID: 
 <CADfgfoY9skE9DPDim5EzHyA5KzD4Hpxku8gEtkVHX+s8Z+Y5ag@mail.gmail.com>
Subject: Re: [yocto-infrastructure] push.yoctoproject.org downtime Wednesday
 November 24th
To: yocto-infrastructure@lists.yoctoproject.org,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f8cb1405d1903c0f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Nov 2021 22:18:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55415

--000000000000f8cb1405d1903c0f
Content-Type: text/plain; charset="UTF-8"

The migration is complete. git.yoctoproject.org now serves from a pair of
load balanced mirrors. push.yoctoproject.org is on a new dedicated secure
host.

If git push hangs please double check the git remote is set to
push.yoctoproject.org. We switched to this domain years ago but still
allowed pushing to git.yoctoproject.org for convenience. That will not work
any longer. When updating repository remotes make sure to push from the
command line to add the new hostname to your known_hosts file. Scripts will
hang at the ssh prompt until the new hostname is added.

The mirrors pull in new changes rapidly but there is a delay between
pushing and those changes appearing on the mirrors. Any scripts that push
and then reference the commits will need a delay added to allow for the
sync.

Please email or reach out in IRC if you encounter any unexpected issues.



On Thu, Nov 18, 2021 at 2:38 PM Michael Halstead via lists.yoctoproject.org
<mhalstead=linuxfoundation.org@lists.yoctoproject.org> wrote:

> push.yoctoproject.org is going offline for a short downtime between 1700
> UTC and 2200 UTC while we move it to a new server. During the downtime
> pushes may timeout or be rejected. If your push is rejected try again in 15
> minutes. I will announce the start and end of the downtime in #yocto on
> Libera.Chat.
>
> git.yoctoproject.org will be moved to a new pair of high availability
> servers during the same window. No downtime is planned for this move.
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#168):
> https://lists.yoctoproject.org/g/yocto-infrastructure/message/168
> Mute This Topic: https://lists.yoctoproject.org/mt/87155540/1003190
> Group Owner: yocto-infrastructure+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto-infrastructure/unsub [
> mhalstead@linuxfoundation.org]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

-- 
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer

--000000000000f8cb1405d1903c0f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The migration is complete. <a href=3D"http://git.yoctoproj=
ect.org">git.yoctoproject.org</a> now serves from a pair of load balanced m=
irrors. <a href=3D"http://push.yoctoproject.org">push.yoctoproject.org</a> =
is on a new dedicated secure host.<div><br></div><div>If git push=C2=A0hang=
s please double check the git remote is set to <a href=3D"http://push.yocto=
project.org">push.yoctoproject.org</a>. We switched to this domain years ag=
o but still allowed pushing to <a href=3D"http://git.yoctoproject.org">git.=
yoctoproject.org</a> for convenience. That will not work any longer. When u=
pdating repository=C2=A0remotes make sure to push from the command line to =
add the new hostname to your known_hosts file. Scripts will hang at the ssh=
 prompt until the new hostname is added.</div><div><br></div><div>The mirro=
rs pull in new changes rapidly but there is a delay between pushing and tho=
se changes appearing on the mirrors. Any scripts that push and then referen=
ce=C2=A0the commits will need a delay added to allow for the sync.=C2=A0</d=
iv><div><br></div><div>Please email or reach out in IRC if you encounter=C2=
=A0any unexpected issues.</div><div><br></div><div><br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 18=
, 2021 at 2:38 PM Michael Halstead via <a href=3D"http://lists.yoctoproject=
.org">lists.yoctoproject.org</a> &lt;mhalstead=3D<a href=3D"mailto:linuxfou=
ndation.org@lists.yoctoproject.org">linuxfoundation.org@lists.yoctoproject.=
org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><a href=3D"http://push.yoctoproject.org" target=3D"_blank">push.yoctopro=
ject.org</a> is going offline for a short downtime between 1700 UTC and 220=
0 UTC while we move it to a new server. During the downtime pushes may time=
out or be rejected. If your push is rejected try again in 15 minutes. I wil=
l announce the start and end of the downtime in #yocto on Libera.Chat.<br><=
br><a href=3D"http://git.yoctoproject.org" target=3D"_blank">git.yoctoproje=
ct.org</a> will be moved to a new pair of high availability servers during =
the same window. No downtime is planned for this move.=C2=A0
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#168): <a href=3D"https://lists.yoctoproject.org/g/yocto=
-infrastructure/message/168" rel=3D"noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto-infrastructure/message/168</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/87155540/1003=
190" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/87155540/1003190</a><br>
Group Owner: <a href=3D"mailto:yocto-infrastructure%2Bowner@lists.yoctoproj=
ect.org" target=3D"_blank">yocto-infrastructure+owner@lists.yoctoproject.or=
g</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto-infrastructu=
re/unsub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto-infrastructure/unsub</a> [<a href=3D"mailto:mhalstead@linuxfound=
ation.org" target=3D"_blank">mhalstead@linuxfoundation.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Michael Halstead<div>Linux Foun=
dation / Yocto Project</div><div>Systems Operations Engineer</div></div></d=
iv>

--000000000000f8cb1405d1903c0f--

