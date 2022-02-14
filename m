Return-Path: <robert.joslyn@redrectangle.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8AE50C433F5
	for <webhook@archiver.kernel.org>; Mon, 14 Feb 2022 20:33:40 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
 [217.70.183.198])
 by mx.groups.io with SMTP id smtpd.web09.836.1644870819514889535
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Feb 2022 12:33:40 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: redrectangle.org,
 ip: 217.70.183.198, mailfrom: robert.joslyn@redrectangle.org)
Received: from smtpclient.apple (unknown [50.34.64.238])
	(Authenticated sender: robert.joslyn@redrectangle.org)
	by mail.gandi.net (Postfix) with ESMTPSA id 03A95C0002;
	Mon, 14 Feb 2022 20:33:35 +0000 (UTC)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.60.0.1.1\))
Subject: Re: [yocto] Building Yocto on M1 Mac
From: Robert Joslyn <robert.joslyn@redrectangle.org>
In-Reply-To: 
 <CAAnfSTs7GOXCuSwO+VVei4uW4gMVJb=0kfkngtPFXB2vZT1vHg@mail.gmail.com>
Date: Mon, 14 Feb 2022 12:33:33 -0800
Cc: Abhijeet Tripathi <abhijeettripathi3003@gmail.com>,
 Anders Montonen <anders.montonen@iki.fi>,
 yocto@lists.yoctoproject.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <E83A0560-9B7B-4CA5-84CC-B95DFED99465@redrectangle.org>
References: 
 <CAB_tbNkB32wAe=3CZvn6a8FSuoA-JGUniQQBM_h-9xLJ-BqKrw@mail.gmail.com>
 <E02EE3E6-B0A8-407A-91DF-1FF64E1DC363@iki.fi>
 <CAB_tbNnmJ-DFyB-8t5S3no0Ta-WSxWhAbJ39SxGkBXW_r_4Tow@mail.gmail.com>
 <9B08FA30-5887-4075-AA04-4D1CD39B7E2B@redrectangle.org>
 <CAAnfSTs7GOXCuSwO+VVei4uW4gMVJb=0kfkngtPFXB2vZT1vHg@mail.gmail.com>
To: Ross Burton <ross@burtonini.com>
X-Mailer: Apple Mail (2.3693.60.0.1.1)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Feb 2022 20:33:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56190


> On Feb 14, 2022, at 4:02 AM, Ross Burton <ross@burtonini.com> wrote:
>=20
> On Mon, 14 Feb 2022 at 00:17, Robert Joslyn
> <robert.joslyn@redrectangle.org> wrote:
>> On my 2020 M1 MacBook Air (8 cores, 16 GB RAM, docker using 8 cores =
and 8 GB), the build took 84 minutes. My desktop with an AMD Ryzen 9 =
3950X (16 cores, 64 GB RAM) it takes 21 minutes.
>=20
> Try doing the MBA build with the laptop suspended in the air on a
> couple of pencils.  As the MBA has no fan you might find that
> increasing airflow around the laptop makes a big difference.  And
> giving the container more RAM/cores will help, obviously, there's no
> reason to limit it to half the power.
>=20
> Ross

Giving docker all 16 GB of memory made the build take 124 minutes. I =
assume this is due to the VM docker uses fighting for memory with the =
build and the host, slowing things down. I=E2=80=99m sure someone could =
find an optimal amount of memory to give the docker VM for best times.

I did these builds with the MBA on its side, which should be a little =
better than it just being flat on a desk (or sitting on pencils). A fan =
would also help, but lack of a fan is one of my favorite features! This =
was also done at room temperature, 68 F/20 C, I=E2=80=99m sure it=E2=80=99=
d be a bit faster if I went outside where it=E2=80=99s below freezing, =
but I=E2=80=99ll let someone else run that test :-D

The MBA is obviously not intended for this kind of workload, but it does =
at least work.

Robert=

