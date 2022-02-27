Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF403C433F5
	for <webhook@archiver.kernel.org>; Sun, 27 Feb 2022 06:08:16 +0000 (UTC)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
 [209.85.208.174])
 by mx.groups.io with SMTP id smtpd.web11.6849.1645942095345918212
 for <yocto@lists.yoctoproject.org>;
 Sat, 26 Feb 2022 22:08:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=IggVwMJc;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.208.174,
 mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-lj1-f174.google.com with SMTP id u7so12978026ljk.13
        for <yocto@lists.yoctoproject.org>;
 Sat, 26 Feb 2022 22:08:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ffRkMkuN+dvk95DBSKtgBMoTA3vYxD1aRmRg1N8bhC0=;
        b=IggVwMJcFm8ky18ni5rLjD61eO0HUuWfomJ5vKUgtZ7POlBS0Tc/xeyEdSEAxotlLr
         f2w9ksbEw4D3wX/Gqd81JcNoNbEQ3nZnmroMZ6LcYOi4AhKFNBPT/1Zf7JKc/cjZiVdj
         fCp5sBq/J9IxUXPW5NGOq7q/ZB1SnRm/sXOyg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ffRkMkuN+dvk95DBSKtgBMoTA3vYxD1aRmRg1N8bhC0=;
        b=Jo/AGxo4gFydO2YNCN2h0TolQQpaMxWrHxc/ekcnOVIUppLJRzw31Ng2CtFnHtzHiD
         3ok71M9scpNmoprCRCgsA+kOyIU4LfAwfGZHEeTQ2JAN4Ix4NpLapsXIiEDKcVbMJkOy
         ATndj6J5Oa/wifkjsmp48f5fg80l0108y8dPUiQfKcO7PkLyl+SxEgxqDdvUWam6rZ5F
         zvBmR32nd/e4dyxB0P2m0P6FCH217WNvn2g6WD5BbmddivNrrT/k/lwDKVp69+Eguh0M
         V+9sv6Cj0kysSyl0XtfwUwPU0OOQejDKcu20tX6iYB0YIy2YB3vYVyGPMTzxTGEBwXQy
         mZdA==
X-Gm-Message-State: AOAM530WfHAg8sCjkwisZ6CqnbssoxmfTpjJbddIeD++VyyktLrYVnfr
	KgOBsWcy8hYSK2C7iwA7Mk8j2mQfG/D7lpoJkKdlEA==
X-Google-Smtp-Source: 
 ABdhPJzvHcvszCK788zQRv+UKfibixWPfJmzO3puNlRu42aj7RGWpQwuXw43vQbWCZum132u7S1AKVWvQhSeGK4QTwg=
X-Received: by 2002:a2e:9844:0:b0:244:c274:10db with SMTP id
 e4-20020a2e9844000000b00244c27410dbmr10326906ljj.120.1645942093221; Sat, 26
 Feb 2022 22:08:13 -0800 (PST)
MIME-Version: 1.0
References: <16D6449721A21D66.8977@lists.yoctoproject.org>
 <16D7810283CC9DA0.10960@lists.yoctoproject.org>
In-Reply-To: <16D7810283CC9DA0.10960@lists.yoctoproject.org>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Sat, 26 Feb 2022 22:08:02 -0800
Message-ID: 
 <CADfgfoZ6TRbN01x-q168LcRYedsX1yTNLRBw_q5-PF7T3nd1ow@mail.gmail.com>
Subject: Re: [yocto] Service outage beginning Saturday Feb. 26th 1700 UTC
To: Michael Halstead <mhalstead@linuxfoundation.org>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	yocto-infrastructure@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c9a5d605d8f9c1a5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 27 Feb 2022 06:08:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56296

--000000000000c9a5d605d8f9c1a5
Content-Type: text/plain; charset="UTF-8"

These services are now available.

downloads.yoctoproject.org
sstate.yoctoproject.org

Restoring sources.openembedded.org is in process and it will be
available shortly.

Autobuilder workers will be available tomorrow.


On Sat, Feb 26, 2022 at 5:40 PM Michael Halstead via lists.yoctoproject.org
<mhalstead=linuxfoundation.org@lists.yoctoproject.org> wrote:

> These services are restored:
>
> bugzilla.yoctoproject.org
> IRC Logging
> openembedded.org
> wiki.yoctoproject.org
>
> The move continues.
>
> On Tue, Feb 22, 2022 at 5:02 PM Michael Halstead via
> lists.yoctoproject.org <mhalstead=
> linuxfoundation.org@lists.yoctoproject.org> wrote:
>
>> We are moving several racks of servers to a new data center in order to
>> save on costs and reduce maintenance overhead.
>>
>> Beginning Sat Feb 26 17:00 UTC 2022 / (9am PST)
>> Ending before Sun Feb 27 06:00 UTC 2022 / (10pm PST)
>>
>> The following services will experience downtime during much of the outage
>> window:
>>
>> Yocto Project Autobuilder (workers only)
>> downloads.yoctoproject.org
>> sstate.yoctoproject.org
>> sources.openembedded.org
>>
>> These services will also be offline for a shorter period of time during
>> the window:
>>
>> bugzilla.yoctoproject.org
>> IRC Logging
>> openembedded.org
>> wiki.yoctoproject.org
>>
>> Because many of our services are interdependent there may be unexpected
>> issues with other services during the move.
>>
>>
>> --
>> Michael Halstead
>> Linux Foundation / Yocto Project
>> Systems Operations Engineer
>>
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
> View/Reply Online (#56295):
> https://lists.yoctoproject.org/g/yocto/message/56295
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

--000000000000c9a5d605d8f9c1a5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"color:rgb(80,0,80)">These services are now a=
vailable.</div><br><a href=3D"http://downloads.yoctoproject.org">downloads.=
yoctoproject.org</a><br><a href=3D"http://sstate.yoctoproject.org">sstate.y=
octoproject.org</a><div><br></div><div>Restoring <a href=3D"http://sources.=
openembedded.org">sources.openembedded.org</a> is in process and it will be=
 available=C2=A0shortly.</div><div><br></div><div>Autobuilder workers will =
be available tomorrow.</div><div><div style=3D"color:rgb(80,0,80)"><br></di=
v></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Sat, Feb 26, 2022 at 5:40 PM Michael Halstead via <a href=3D"htt=
p://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;mhalstead=3D<a h=
ref=3D"mailto:linuxfoundation.org@lists.yoctoproject.org">linuxfoundation.o=
rg@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr">These services are restored:<div>=
<br><div><a href=3D"http://bugzilla.yoctoproject.org" target=3D"_blank">bug=
zilla.yoctoproject.org</a><br>IRC Logging<br><a href=3D"http://openembedded=
.org" target=3D"_blank">openembedded.org</a><br><a href=3D"http://wiki.yoct=
oproject.org" target=3D"_blank">wiki.yoctoproject.org</a><br></div></div><d=
iv><br></div><div>The move continues.</div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 22, 2022 at 5:02 PM =
Michael Halstead via <a href=3D"http://lists.yoctoproject.org" target=3D"_b=
lank">lists.yoctoproject.org</a> &lt;mhalstead=3D<a href=3D"mailto:linuxfou=
ndation.org@lists.yoctoproject.org" target=3D"_blank">linuxfoundation.org@l=
ists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr">We are moving several racks of server=
s to a new data center in order to save on costs and reduce maintenance ove=
rhead.<div><br></div><div>Beginning=C2=A0Sat Feb 26 17:00 UTC 2022 / (9am P=
ST)</div><div>Ending before Sun Feb 27 06:00 UTC 2022 / (10pm PST)</div><di=
v><br></div><div>The following services will experience downtime during muc=
h of the outage window:</div><div><br></div><div>Yocto Project Autobuilder =
(workers only)</div><div><a href=3D"http://downloads.yoctoproject.org" targ=
et=3D"_blank">downloads.yoctoproject.org</a></div><div><a href=3D"http://ss=
tate.yoctoproject.org" target=3D"_blank">sstate.yoctoproject.org</a></div><=
div><a href=3D"http://sources.openembedded.org" target=3D"_blank">sources.o=
penembedded.org</a></div><div><br></div><div>These services will also be of=
fline for a shorter period of time during the window:</div><div><br></div><=
div><a href=3D"http://bugzilla.yoctoproject.org" target=3D"_blank">bugzilla=
.yoctoproject.org</a><br></div><div>IRC Logging</div><div><a href=3D"http:/=
/openembedded.org" target=3D"_blank">openembedded.org</a><br></div><div><a =
href=3D"http://wiki.yoctoproject.org" target=3D"_blank">wiki.yoctoproject.o=
rg</a><br></div><div><br></div><div>Because many of our services are interd=
ependent=C2=A0there may be unexpected issues with other services during the=
 move.</div><div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"><=
div dir=3D"ltr">Michael Halstead<div>Linux Foundation / Yocto Project</div>=
<div>Systems Operations Engineer</div></div></div></div></div>
<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
><div dir=3D"ltr">Michael Halstead<div>Linux Foundation / Yocto Project</di=
v><div>Systems Operations Engineer</div></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56295): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56295" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56295</a><br>
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

--000000000000c9a5d605d8f9c1a5--

