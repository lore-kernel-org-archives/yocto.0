Return-Path: <morten.bruun@apide.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 185F6C6FD18
	for <webhook@archiver.kernel.org>; Wed, 29 Mar 2023 14:39:46 +0000 (UTC)
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
 by mx.groups.io with SMTP id smtpd.web11.26423.1680100781195624151
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Mar 2023 07:39:41 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@apide.com header.s=google header.b=WIe75EPb;
 spf=pass (domain: apide.com, ip: 209.85.166.42, mailfrom: morten.bruun@apide.com)
Received: by mail-io1-f42.google.com with SMTP id d14so6909949ion.9
        for <yocto@lists.yoctoproject.org>; Wed, 29 Mar 2023 07:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apide.com; s=google; t=1680100780; x=1682692780;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=sl6xYQ4qvACc3W56UzYTuEeOw1tkZJD97dR99Vg5XuM=;
        b=WIe75EPbwFzN/qHVfsmAo0GQadn1W0MBDQXa4OPOiASx3ZZ3jy5u7GvJYvqi0bVUh+
         5ftV1Gau0rZsHwn97K45zeJWKnabDIrE1TkLnKciPwHrmRAUX9BRe6duEQdUOTSgvgsf
         hJJj8bn/eITWQldLAi4NSFdCGMYCZD1qQiLPk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680100780; x=1682692780;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sl6xYQ4qvACc3W56UzYTuEeOw1tkZJD97dR99Vg5XuM=;
        b=DtO9YRHArza6lSYhPrs+esK5nyFy+7BazntxcFuxAziYDPVV+bxJN2nYAbsZDfgngQ
         9/upTJQNLZA9y0X0ttmBYKZr7QVTObpAQJHSKgRUsX9mthmLSzqov2VuLtYR6scK31MH
         T7lGe8oMvO2u0kwmX4PuJLlgfJAPQv6vfsqwP//V5ja4avNo2piVhCukg24qkcfKuK+l
         1hyRp4l8nUmfrrba5SC6vhO3Jj2rbt4KpWP4CrCLbo99gZlwqqmaYj7Fxim/7RbT14KQ
         22zUhQxyqqUKYObX0mFZ5RCDWFRZl/SEPR7ET7o0QyOiX2vPXnvKPuIENTAdS/iVEVn3
         dRzQ==
X-Gm-Message-State: AAQBX9fPbfnEh2wZ1tEJ4j/WTA8RqY/7pGqC7E3dICEiM36LJsa1oO7K
	UumPGrNqPM8RnBbsxPDwhfiH6tRgfHH99/eRI9GhTbVfQ0mBZKCFiGTkhvhg
X-Google-Smtp-Source: AKy350aoH3VPr8uy/RN1pop9ThYk+gPMW296Qx29s8TIiP1ffQ8axa9gAUz6lbaSwKUh1sHtTOj0GCvSY+F/JcwvqqA=
X-Received: by 2002:a02:95c3:0:b0:3eb:3166:9da4 with SMTP id
 b61-20020a0295c3000000b003eb31669da4mr1136342jai.2.1680100779840; Wed, 29 Mar
 2023 07:39:39 -0700 (PDT)
MIME-Version: 1.0
From: Morten Bruun <morten.bruun@apide.com>
Date: Wed, 29 Mar 2023 16:39:29 +0200
Message-ID: <CAMrUZLg8BRa8Wtrhb9TKR6FK03OsHv4i=5=JPM2fO0+VO2AXxg@mail.gmail.com>
Subject: Conditionally starting the swupdate webserver
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000002b6e7405f80af274"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Mar 2023 14:39:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59545

--0000000000002b6e7405f80af274
Content-Type: text/plain; charset="UTF-8"

Hi Yocto experts!

Background
----------------
I have a device that I build two different images for (test and prod). For
the prod variant I do not want the swupdate service to start the webserver.

Currently I have a swupdate.service that overwrites the default from
swupdate.

I have been experimenting with an approach where I use OVERRIDES to control
the inclusion of the systemd service.

Is this a "good" (tm) way of doing this? Or is there a better way?

my-test-image.bb
-----------------------

DISTRO_VARIANT = "test"


my-prod-image.bb
-----------------------

DISTRO_VARIANT = "prod"


swupdate_%.bbappend
-------------------------------

OVERRIDES:append = ":${DISTRO_VARIANT}"

do_install:test:append() {
  install -d ${D}/${systemd_unitdir}/system
  install -m 0644 ${WORKDIR}/hello-test.service ${D}/${systemd_unitdir}/system
}

do_install:prod:append() {
  install -d ${D}/${systemd_unitdir}/system
  install -m 0644 ${WORKDIR}/hello-prod.service ${D}/${systemd_unitdir}/system
}

--0000000000002b6e7405f80af274
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"font-family:arial,helvetica,sans-serif" clas=
s=3D"gmail_default">Hi Yocto experts!</div><div style=3D"font-family:arial,=
helvetica,sans-serif" class=3D"gmail_default"><br></div><div style=3D"font-=
family:arial,helvetica,sans-serif" class=3D"gmail_default">Background</div>=
<div style=3D"font-family:arial,helvetica,sans-serif" class=3D"gmail_defaul=
t">----------------</div><div style=3D"font-family:arial,helvetica,sans-ser=
if" class=3D"gmail_default">I have a device that I build two different imag=
es for (test and prod). For the prod variant I do not want the swupdate ser=
vice to start the webserver.<br></div><div style=3D"font-family:arial,helve=
tica,sans-serif" class=3D"gmail_default"><br></div><div style=3D"font-famil=
y:arial,helvetica,sans-serif" class=3D"gmail_default">Currently I have a sw=
update.service that overwrites the default from swupdate.</div><div style=
=3D"font-family:arial,helvetica,sans-serif" class=3D"gmail_default"><br></d=
iv><div style=3D"font-family:arial,helvetica,sans-serif" class=3D"gmail_def=
ault">I have been experimenting with an approach where I use OVERRIDES to c=
ontrol the inclusion of the systemd service.</div><div style=3D"font-family=
:arial,helvetica,sans-serif" class=3D"gmail_default"><br></div><div style=
=3D"font-family:arial,helvetica,sans-serif" class=3D"gmail_default">Is this=
 a &quot;good&quot; (tm) way of doing this? Or is there a better way?</div>=
<div style=3D"font-family:arial,helvetica,sans-serif" class=3D"gmail_defaul=
t"><br></div><div style=3D"font-family:arial,helvetica,sans-serif" class=3D=
"gmail_default"><a href=3D"http://my-test-image.bb">my-test-image.bb</a></d=
iv><div style=3D"font-family:arial,helvetica,sans-serif" class=3D"gmail_def=
ault">-----------------------</div><div style=3D"font-family:arial,helvetic=
a,sans-serif" class=3D"gmail_default"><pre>DISTRO_VARIANT =3D &quot;test&qu=
ot;</pre></div><div style=3D"font-family:arial,helvetica,sans-serif" class=
=3D"gmail_default"><div style=3D"font-family:arial,helvetica,sans-serif" cl=
ass=3D"gmail_default"><br></div><div style=3D"font-family:arial,helvetica,s=
ans-serif" class=3D"gmail_default"><a href=3D"http://my-prod-image.bb">my-p=
rod-image.bb</a></div><div style=3D"font-family:arial,helvetica,sans-serif"=
 class=3D"gmail_default">-----------------------</div><div style=3D"font-fa=
mily:arial,helvetica,sans-serif" class=3D"gmail_default"><pre>DISTRO_VARIAN=
T =3D &quot;prod&quot;</pre></div></div><div style=3D"font-family:arial,hel=
vetica,sans-serif" class=3D"gmail_default"><br></div><div style=3D"font-fam=
ily:arial,helvetica,sans-serif" class=3D"gmail_default">swupdate_%.bbappend=
</div><div style=3D"font-family:arial,helvetica,sans-serif" class=3D"gmail_=
default">-------------------------------</div><div style=3D"font-family:ari=
al,helvetica,sans-serif" class=3D"gmail_default"><pre>OVERRIDES:append =3D =
&quot;:${DISTRO_VARIANT}&quot;<br><br>do_install:test:append() {
  install -d ${D}/${systemd_unitdir}/system
  install -m 0644 ${WORKDIR}/hello-test.service ${D}/${systemd_unitdir}/sys=
tem
}</pre></div><div style=3D"font-family:arial,helvetica,sans-serif" class=3D=
"gmail_default"><div style=3D"font-family:arial,helvetica,sans-serif" class=
=3D"gmail_default"><pre>do_install:prod:append() {
  install -d ${D}/${systemd_unitdir}/system
  install -m 0644 ${WORKDIR}/hello-prod.service ${D}/${systemd_unitdir}/sys=
tem
}</pre></div></div><br></div>

--0000000000002b6e7405f80af274--

