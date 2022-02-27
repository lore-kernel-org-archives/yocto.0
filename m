Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4980BC433EF
	for <webhook@archiver.kernel.org>; Sun, 27 Feb 2022 01:40:37 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
 [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web12.5377.1645926035992570009
 for <yocto@lists.yoctoproject.org>;
 Sat, 26 Feb 2022 17:40:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=AMl8eZRI;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.208.180,
 mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-lj1-f180.google.com with SMTP id t14so12521260ljh.8
        for <yocto@lists.yoctoproject.org>;
 Sat, 26 Feb 2022 17:40:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=0ODst4Jhjx/Ce7f4IC4na2pwSV9RdlJHnhc8tbTSN28=;
        b=AMl8eZRIQkvArjp6hwD9kS7AbxaLzIth+BCAe9pGjOJvol7x+Y8fbioZ9r5oEAiQbH
         E6tf30EjG+FOYtTU4qiy3YQG1YE79E6W9axq8jES/TAJSs8PH7+ONeL/93H1fip7TcKf
         qAOYb9J3Lu3tXcCfVzF9FXDxNBMvnJx6IJqvc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=0ODst4Jhjx/Ce7f4IC4na2pwSV9RdlJHnhc8tbTSN28=;
        b=gHfpyDp3IH4FnjuhjiOJOMq2v5UuZpDrlLMHbz3fiJ5dUpkx3Nr6JuYB3EDfsa8ofP
         2SS8SgjkUiX2KLKEEw4zw4zIZQBBpbQ5IfBpHsIPCW+FEKn5u/1njyJGSvut3cu8t6gu
         3/+Q7WdkwuZyU3ll+HZuBgKyEoH8T7000u4a9d1iLXvQxXauv2iy0qdfnAkp9aTQXuzJ
         A9aZpiTomud/oOTuKwz8D45ThxjmJnhLB6TjHPHUBF+sHZMySw+75foE455IL4PWK6+Y
         hZyjXsqt+pX2Rsljbs9t42jSUrxrznpGlAycQoEQADYBFkUkkv8/rEumDZJ22w4BN3yz
         eb/w==
X-Gm-Message-State: AOAM533lObvD039R2tMOzzH4bv+70LTv5AaWt1mgENWW9/CpRqC1U8un
	juJNgUnA0Byojncpy25r9GUEhXPa6LB0qtBtV5NQG6sZfy1pAA==
X-Google-Smtp-Source: 
 ABdhPJwRdP6D8z0wpADonf8wCjxCmA7BKK2uqqifcxzkSaHI7YfIwdrUSm3GUgHISXc52HUjHifhFfNOEeOhfLFLRwY=
X-Received: by 2002:a2e:92d5:0:b0:246:59e9:a591 with SMTP id
 k21-20020a2e92d5000000b0024659e9a591mr9619533ljh.1.1645926033864; Sat, 26 Feb
 2022 17:40:33 -0800 (PST)
MIME-Version: 1.0
References: <16D6449721A21D66.8977@lists.yoctoproject.org>
In-Reply-To: <16D6449721A21D66.8977@lists.yoctoproject.org>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Sat, 26 Feb 2022 17:40:22 -0800
Message-ID: 
 <CADfgfoaTSfvV_jt-wZFzF+hZandMmTQy7Ffu7YS=d23pajNcKA@mail.gmail.com>
Subject: Re: [yocto] Service outage beginning Saturday Feb. 26th 1700 UTC
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	yocto-infrastructure@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000093517b05d8f604d4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 27 Feb 2022 01:40:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56295

--00000000000093517b05d8f604d4
Content-Type: text/plain; charset="UTF-8"

These services are restored:

bugzilla.yoctoproject.org
IRC Logging
openembedded.org
wiki.yoctoproject.org

The move continues.

On Tue, Feb 22, 2022 at 5:02 PM Michael Halstead via lists.yoctoproject.org
<mhalstead=linuxfoundation.org@lists.yoctoproject.org> wrote:

> We are moving several racks of servers to a new data center in order to
> save on costs and reduce maintenance overhead.
>
> Beginning Sat Feb 26 17:00 UTC 2022 / (9am PST)
> Ending before Sun Feb 27 06:00 UTC 2022 / (10pm PST)
>
> The following services will experience downtime during much of the outage
> window:
>
> Yocto Project Autobuilder (workers only)
> downloads.yoctoproject.org
> sstate.yoctoproject.org
> sources.openembedded.org
>
> These services will also be offline for a shorter period of time during
> the window:
>
> bugzilla.yoctoproject.org
> IRC Logging
> openembedded.org
> wiki.yoctoproject.org
>
> Because many of our services are interdependent there may be unexpected
> issues with other services during the move.
>
>
> --
> Michael Halstead
> Linux Foundation / Yocto Project
> Systems Operations Engineer
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56256):
> https://lists.yoctoproject.org/g/yocto/message/56256
> Mute This Topic: https://lists.yoctoproject.org/mt/89331670/1003190
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> mhalstead@linuxfoundation.org]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

-- 
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer

--00000000000093517b05d8f604d4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">These services are restored:<div><br><div><a href=3D"http:=
//bugzilla.yoctoproject.org">bugzilla.yoctoproject.org</a><br>IRC Logging<b=
r><a href=3D"http://openembedded.org">openembedded.org</a><br><a href=3D"ht=
tp://wiki.yoctoproject.org">wiki.yoctoproject.org</a><br></div></div><div><=
br></div><div>The move continues.</div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 22, 2022 at 5:02 PM Mich=
ael Halstead via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproje=
ct.org</a> &lt;mhalstead=3D<a href=3D"mailto:linuxfoundation.org@lists.yoct=
oproject.org">linuxfoundation.org@lists.yoctoproject.org</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">We=
 are moving several racks of servers to a new data center in order to save =
on costs and reduce maintenance overhead.<div><br></div><div>Beginning=C2=
=A0Sat Feb 26 17:00 UTC 2022 / (9am PST)</div><div>Ending before Sun Feb 27=
 06:00 UTC 2022 / (10pm PST)</div><div><br></div><div>The following service=
s will experience downtime during much of the outage window:</div><div><br>=
</div><div>Yocto Project Autobuilder (workers only)</div><div><a href=3D"ht=
tp://downloads.yoctoproject.org" target=3D"_blank">downloads.yoctoproject.o=
rg</a></div><div><a href=3D"http://sstate.yoctoproject.org" target=3D"_blan=
k">sstate.yoctoproject.org</a></div><div><a href=3D"http://sources.openembe=
dded.org" target=3D"_blank">sources.openembedded.org</a></div><div><br></di=
v><div>These services will also be offline for a shorter period of time dur=
ing the window:</div><div><br></div><div><a href=3D"http://bugzilla.yoctopr=
oject.org" target=3D"_blank">bugzilla.yoctoproject.org</a><br></div><div>IR=
C Logging</div><div><a href=3D"http://openembedded.org" target=3D"_blank">o=
penembedded.org</a><br></div><div><a href=3D"http://wiki.yoctoproject.org" =
target=3D"_blank">wiki.yoctoproject.org</a><br></div><div><br></div><div>Be=
cause many of our services are interdependent=C2=A0there may be unexpected =
issues with other services during the move.</div><div><br clear=3D"all"><di=
v><br></div>-- <br><div dir=3D"ltr"><div dir=3D"ltr">Michael Halstead<div>L=
inux Foundation / Yocto Project</div><div>Systems Operations Engineer</div>=
</div></div></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56256): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56256" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56256</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/89331670/1003=
190" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/89331670/1003190</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:mhalstead@linuxfoundation.org" target=3D"_blank"=
>mhalstead@linuxfoundation.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Michael Halstead<div>Linux Foun=
dation / Yocto Project</div><div>Systems Operations Engineer</div></div></d=
iv>

--00000000000093517b05d8f604d4--

