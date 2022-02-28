Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BD74C433F5
	for <webhook@archiver.kernel.org>; Mon, 28 Feb 2022 07:47:29 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com
 [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web08.17938.1646034447876830307
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Feb 2022 23:47:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Tlv5NOF0;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.208.171,
 mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-lj1-f171.google.com with SMTP id 29so16126828ljv.10
        for <yocto@lists.yoctoproject.org>;
 Sun, 27 Feb 2022 23:47:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=vbqHOJRZnJXhUZCvxd3kGBS7oL1ZbCSjIo34C+fXpkk=;
        b=Tlv5NOF0xL4QVygMEDZzMON0D2+GMXryhg9lZ8u8hrQX0qrHV19jFRtIzLj2phgkOj
         aYI/0Uy8g/a6AG5ouEg3FUB3f5PBfyZOMkhq6ERk/YiYS9SrVAuiPFCGZ55CtPf8m+Cs
         JwCF5tf8utgw+jyf1L25wD8xmvmoHCpYXPkZs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=vbqHOJRZnJXhUZCvxd3kGBS7oL1ZbCSjIo34C+fXpkk=;
        b=inZI379HqUQXrEzh3DetZDsYXyNvbkxY9VrxUWTSm5aXnnG8W+xCzEVdO2+/4dsOk/
         hgtsOPDxyGV11r8WYUIwg5XuZEl8s2ofvZkFvEyZFDSbb2oKM3v7qwvYaDNw+msDHdbS
         fRviz9WShqwVovlR7zG2x1SS99H0Wvdf/Y1Bhbw2E3ZZ5+tIl+HqgtX/MAC03+FhMVPh
         huXej0X5AwnZNdPfu87ySr6W+CPCKoW7frmgW7No6wb/uEt60LnTz7i2/nZfQo3AnoiB
         T8lKTHu0BulDYt+RnLRtEpICUVD4MV1hnVPKygf3rIeoQcMoEV+uMBmQzQ3XlLhR0zRM
         ckxg==
X-Gm-Message-State: AOAM533cWm+nOU28d9Ahq84VeBYS4sH5IhY+/b+IwnMyul+gj52B9vrU
	xgV2KBcc6eOvBZVESVG1f6sG0+sLIL/tB15WseCWD4e+oAB/yA==
X-Google-Smtp-Source: 
 ABdhPJw9tu7dsRkdPJMkngpsQkV/+ZjtGiqSVK9KtKBCLWZkLTwsBZBwOIq24K1GbOz/lGmhorlTFDF7as5KCwwLWSM=
X-Received: by 2002:a2e:94cf:0:b0:244:6cf0:aa22 with SMTP id
 r15-20020a2e94cf000000b002446cf0aa22mr13945905ljh.91.1646034445505; Sun, 27
 Feb 2022 23:47:25 -0800 (PST)
MIME-Version: 1.0
References: <16D6449721A21D66.8977@lists.yoctoproject.org>
 <16D7810283CC9DA0.10960@lists.yoctoproject.org>
 <CADfgfoZ6TRbN01x-q168LcRYedsX1yTNLRBw_q5-PF7T3nd1ow@mail.gmail.com>
 <c24f899c-6eb9-aa12-4470-b627462e690c@gmail.com>
In-Reply-To: <c24f899c-6eb9-aa12-4470-b627462e690c@gmail.com>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Sun, 27 Feb 2022 23:47:14 -0800
Message-ID: 
 <CADfgfob1ihXrX8OCA_vfUOyV-jv-sWRtypywJdR6x72Q=auoEg@mail.gmail.com>
Subject: Re: [yocto-infrastructure] [yocto] Service outage beginning Saturday
 Feb. 26th 1700 UTC
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	yocto-infrastructure@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000069ac0c05d90f42d8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Feb 2022 07:47:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56306

--00000000000069ac0c05d90f42d8
Content-Type: text/plain; charset="UTF-8"

All of the autobuilder workers are now back online and building.

The move is nearly complete. All machines except 1 survived despite some
minor cosmetic damage. Only access.yocto.io was lost in the move and I will
rebuild it tomorrow.






On Sun, Feb 27, 2022 at 6:13 PM akuster808 <akuster808@gmail.com> wrote:

> Thanks Micheal.
>
> Hope you can enjoy the rest of your weekend.
>
> - Armin
>
> On 2/26/22 22:08, Michael Halstead wrote:
> > These services are now available.
> >
> > downloads.yoctoproject.org <http://downloads.yoctoproject.org>
> > sstate.yoctoproject.org <http://sstate.yoctoproject.org>
> >
> > Restoring sources.openembedded.org <http://sources.openembedded.org>
> > is in process and it will be available shortly.
> >
> > Autobuilder workers will be available tomorrow.
> >
> >
> > On Sat, Feb 26, 2022 at 5:40 PM Michael Halstead via
> > lists.yoctoproject.org <http://lists.yoctoproject.org>
> > <mhalstead=linuxfoundation.org@lists.yoctoproject.org> wrote:
> >
> >     These services are restored:
> >
> >     bugzilla.yoctoproject.org <http://bugzilla.yoctoproject.org>
> >     IRC Logging
> >     openembedded.org <http://openembedded.org>
> >     wiki.yoctoproject.org <http://wiki.yoctoproject.org>
> >
> >     The move continues.
> >
> >     On Tue, Feb 22, 2022 at 5:02 PM Michael Halstead via
> >     lists.yoctoproject.org <http://lists.yoctoproject.org>
> >     <mhalstead=linuxfoundation.org@lists.yoctoproject.org> wrote:
> >
> >         We are moving several racks of servers to a new data center in
> >         order to save on costs and reduce maintenance overhead.
> >
> >         Beginning Sat Feb 26 17:00 UTC 2022 / (9am PST)
> >         Ending before Sun Feb 27 06:00 UTC 2022 / (10pm PST)
> >
> >         The following services will experience downtime during much of
> >         the outage window:
> >
> >         Yocto Project Autobuilder (workers only)
> >         downloads.yoctoproject.org <http://downloads.yoctoproject.org>
> >         sstate.yoctoproject.org <http://sstate.yoctoproject.org>
> >         sources.openembedded.org <http://sources.openembedded.org>
> >
> >         These services will also be offline for a shorter period of
> >         time during the window:
> >
> >         bugzilla.yoctoproject.org <http://bugzilla.yoctoproject.org>
> >         IRC Logging
> >         openembedded.org <http://openembedded.org>
> >         wiki.yoctoproject.org <http://wiki.yoctoproject.org>
> >
> >         Because many of our services are interdependent there may be
> >         unexpected issues with other services during the move.
> >
> >
> >         --
> >         Michael Halstead
> >         Linux Foundation / Yocto Project
> >         Systems Operations Engineer
> >
> >
> >
> >
> >
> >     --
> >     Michael Halstead
> >     Linux Foundation / Yocto Project
> >     Systems Operations Engineer
> >
> >
> >
> >
> >
> > --
> > Michael Halstead
> > Linux Foundation / Yocto Project
> > Systems Operations Engineer
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#173):
> https://lists.yoctoproject.org/g/yocto-infrastructure/message/173
> > Mute This Topic: https://lists.yoctoproject.org/mt/89421950/3616698
> > Group Owner: yocto-infrastructure+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto-infrastructure/unsub
> [akuster808@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >
>
>

-- 
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer

--00000000000069ac0c05d90f42d8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">All of the autobuilder workers are now back online and bui=
lding.=C2=A0<div><br></div><div>The move is nearly complete. All machines e=
xcept 1 survived despite some minor cosmetic damage. Only <a href=3D"http:/=
/access.yocto.io">access.yocto.io</a> was lost in the move and I will rebui=
ld it tomorrow.<br></div><div><br></div><div><br></div><div><br></div><div>=
<br></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Sun, Feb 27, 2022 at 6:13 PM akuster808 &lt;<a =
href=3D"mailto:akuster808@gmail.com">akuster808@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">Thanks Micheal.<br=
>
<br>
Hope you can enjoy the rest of your weekend.<br>
<br>
- Armin<br>
<br>
On 2/26/22 22:08, Michael Halstead wrote:<br>
&gt; These services are now available.<br>
&gt;<br>
&gt; <a href=3D"http://downloads.yoctoproject.org" rel=3D"noreferrer" targe=
t=3D"_blank">downloads.yoctoproject.org</a> &lt;<a href=3D"http://downloads=
.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">http://downloads.yo=
ctoproject.org</a>&gt;<br>
&gt; <a href=3D"http://sstate.yoctoproject.org" rel=3D"noreferrer" target=
=3D"_blank">sstate.yoctoproject.org</a> &lt;<a href=3D"http://sstate.yoctop=
roject.org" rel=3D"noreferrer" target=3D"_blank">http://sstate.yoctoproject=
.org</a>&gt;<br>
&gt;<br>
&gt; Restoring <a href=3D"http://sources.openembedded.org" rel=3D"noreferre=
r" target=3D"_blank">sources.openembedded.org</a> &lt;<a href=3D"http://sou=
rces.openembedded.org" rel=3D"noreferrer" target=3D"_blank">http://sources.=
openembedded.org</a>&gt; <br>
&gt; is in process and it will be available=C2=A0shortly.<br>
&gt;<br>
&gt; Autobuilder workers will be available tomorrow.<br>
&gt;<br>
&gt;<br>
&gt; On Sat, Feb 26, 2022 at 5:40 PM Michael Halstead via <br>
&gt; <a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D=
"_blank">lists.yoctoproject.org</a> &lt;<a href=3D"http://lists.yoctoprojec=
t.org" rel=3D"noreferrer" target=3D"_blank">http://lists.yoctoproject.org</=
a>&gt; <br>
&gt; &lt;mhalstead=3D<a href=3D"mailto:linuxfoundation.org@lists.yoctoproje=
ct.org" target=3D"_blank">linuxfoundation.org@lists.yoctoproject.org</a>&gt=
; wrote:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0These services are restored:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"http://bugzilla.yoctoproject.org" rel=3D=
"noreferrer" target=3D"_blank">bugzilla.yoctoproject.org</a> &lt;<a href=3D=
"http://bugzilla.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">htt=
p://bugzilla.yoctoproject.org</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0IRC Logging<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"http://openembedded.org" rel=3D"noreferr=
er" target=3D"_blank">openembedded.org</a> &lt;<a href=3D"http://openembedd=
ed.org" rel=3D"noreferrer" target=3D"_blank">http://openembedded.org</a>&gt=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"http://wiki.yoctoproject.org" rel=3D"nor=
eferrer" target=3D"_blank">wiki.yoctoproject.org</a> &lt;<a href=3D"http://=
wiki.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">http://wiki.yoc=
toproject.org</a>&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0The move continues.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0On Tue, Feb 22, 2022 at 5:02 PM Michael Halstead vi=
a<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"http://lists.yoctoproject.org" rel=3D"no=
referrer" target=3D"_blank">lists.yoctoproject.org</a> &lt;<a href=3D"http:=
//lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">http://lists=
.yoctoproject.org</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mhalstead=3D<a href=3D"mailto:linuxfoundation.o=
rg@lists.yoctoproject.org" target=3D"_blank">linuxfoundation.org@lists.yoct=
oproject.org</a>&gt; wrote:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0We are moving several racks of server=
s to a new data center in<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0order to save on costs and reduce mai=
ntenance overhead.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Beginning=C2=A0Sat Feb 26 17:00 UTC 2=
022 / (9am PST)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Ending before Sun Feb 27 06:00 UTC 20=
22 / (10pm PST)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0The following services will experienc=
e downtime during much of<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0the outage window:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Yocto Project Autobuilder (workers on=
ly)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://downloads.yoctoproj=
ect.org" rel=3D"noreferrer" target=3D"_blank">downloads.yoctoproject.org</a=
> &lt;<a href=3D"http://downloads.yoctoproject.org" rel=3D"noreferrer" targ=
et=3D"_blank">http://downloads.yoctoproject.org</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://sstate.yoctoproject=
.org" rel=3D"noreferrer" target=3D"_blank">sstate.yoctoproject.org</a> &lt;=
<a href=3D"http://sstate.yoctoproject.org" rel=3D"noreferrer" target=3D"_bl=
ank">http://sstate.yoctoproject.org</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://sources.openembedde=
d.org" rel=3D"noreferrer" target=3D"_blank">sources.openembedded.org</a> &l=
t;<a href=3D"http://sources.openembedded.org" rel=3D"noreferrer" target=3D"=
_blank">http://sources.openembedded.org</a>&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0These services will also be offline f=
or a shorter period of<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0time during the window:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://bugzilla.yoctoproje=
ct.org" rel=3D"noreferrer" target=3D"_blank">bugzilla.yoctoproject.org</a> =
&lt;<a href=3D"http://bugzilla.yoctoproject.org" rel=3D"noreferrer" target=
=3D"_blank">http://bugzilla.yoctoproject.org</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0IRC Logging<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://openembedded.org" r=
el=3D"noreferrer" target=3D"_blank">openembedded.org</a> &lt;<a href=3D"htt=
p://openembedded.org" rel=3D"noreferrer" target=3D"_blank">http://openembed=
ded.org</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://wiki.yoctoproject.o=
rg" rel=3D"noreferrer" target=3D"_blank">wiki.yoctoproject.org</a> &lt;<a h=
ref=3D"http://wiki.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">h=
ttp://wiki.yoctoproject.org</a>&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Because many of our services are inte=
rdependent=C2=A0there may be<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unexpected issues with other services=
 during the move.<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-- <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Michael Halstead<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Linux Foundation / Yocto Project<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Systems Operations Engineer<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0-- <br>
&gt;=C2=A0 =C2=A0 =C2=A0Michael Halstead<br>
&gt;=C2=A0 =C2=A0 =C2=A0Linux Foundation / Yocto Project<br>
&gt;=C2=A0 =C2=A0 =C2=A0Systems Operations Engineer<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; -- <br>
&gt; Michael Halstead<br>
&gt; Linux Foundation / Yocto Project<br>
&gt; Systems Operations Engineer<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#173): <a href=3D"https://lists.yoctoproject.org/g/=
yocto-infrastructure/message/173" rel=3D"noreferrer" target=3D"_blank">http=
s://lists.yoctoproject.org/g/yocto-infrastructure/message/173</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/89421950=
/3616698" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/mt/89421950/3616698</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto-infrastructure%2Bowner@lists.yoct=
oproject.org" target=3D"_blank">yocto-infrastructure+owner@lists.yoctoproje=
ct.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto-infrast=
ructure/unsub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproj=
ect.org/g/yocto-infrastructure/unsub</a> [<a href=3D"mailto:akuster808@gmai=
l.com" target=3D"_blank">akuster808@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Michael Halstead<div>Linux Foun=
dation / Yocto Project</div><div>Systems Operations Engineer</div></div></d=
iv>

--00000000000069ac0c05d90f42d8--

