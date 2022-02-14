Return-Path: <robert.joslyn@redrectangle.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79E0BC433F5
	for <webhook@archiver.kernel.org>; Mon, 14 Feb 2022 00:17:26 +0000 (UTC)
Received: from relay11.mail.gandi.net (relay11.mail.gandi.net
 [217.70.178.231])
 by mx.groups.io with SMTP id smtpd.web12.28418.1644797845384212104
 for <yocto@lists.yoctoproject.org>;
 Sun, 13 Feb 2022 16:17:25 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: redrectangle.org,
 ip: 217.70.178.231, mailfrom: robert.joslyn@redrectangle.org)
Received: from smtpclient.apple (unknown [50.34.64.238])
	(Authenticated sender: robert.joslyn@redrectangle.org)
	by mail.gandi.net (Postfix) with ESMTPSA id 1C841100006;
	Mon, 14 Feb 2022 00:17:20 +0000 (UTC)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.60.0.1.1\))
Subject: Re: [yocto] Building Yocto on M1 Mac
From: Robert Joslyn <robert.joslyn@redrectangle.org>
In-Reply-To: 
 <CAB_tbNnmJ-DFyB-8t5S3no0Ta-WSxWhAbJ39SxGkBXW_r_4Tow@mail.gmail.com>
Date: Sun, 13 Feb 2022 16:17:18 -0800
Cc: Anders Montonen <Anders.Montonen@iki.fi>,
 yocto@lists.yoctoproject.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <9B08FA30-5887-4075-AA04-4D1CD39B7E2B@redrectangle.org>
References: 
 <CAB_tbNkB32wAe=3CZvn6a8FSuoA-JGUniQQBM_h-9xLJ-BqKrw@mail.gmail.com>
 <E02EE3E6-B0A8-407A-91DF-1FF64E1DC363@iki.fi>
 <CAB_tbNnmJ-DFyB-8t5S3no0Ta-WSxWhAbJ39SxGkBXW_r_4Tow@mail.gmail.com>
To: Abhijeet Tripathi <abhijeettripathi3003@gmail.com>
X-Mailer: Apple Mail (2.3693.60.0.1.1)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Feb 2022 00:17:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56179


> On Feb 13, 2022, at 6:56 AM, Abhijeet Tripathi =
<abhijeettripathi3003@gmail.com> wrote:
>=20
>=20
> On Sun, Feb 13, 2022 at 7:09 PM Anders Montonen =
<Anders.Montonen@iki.fi> wrote:
> Hi,
>=20
>> On 13 Feb 2022, at 14:24, Abhijeet Tripathi =
<abhijeettripathi3003@gmail.com> wrote:
>>=20
>> Hello yocto-devs,
>>=20
>> I'm new to the yocto project and trying to set up a build environment =
on my M1 Mac which is arm64 architecture.=20
>>=20
>> I'm following the steps as mentioned in below link:
>> https://github.com/crops/docker-win-mac-docs/wiki/Mac-Instructions=20
>>=20
>> But it is always pulling up containers based on amd64 architecture. =
Are there any updated steps/link to set up a build environment specific =
to M1 Mac(arm64)?
>=20
> Looking at Docker Hub, none of the published Crops containers are =
built for ARM64. You can try building the containers yourself, making =
sure to pick base distros that are available for ARM64.
>=20
> Note that there are plenty of reports of Docker performing poorly on =
Macs, probably because of the file system implementation. You may be =
better off using a full VM via e.g. UTM.
> =20
> I initially started with UTM but the problem with virtual machines is =
that we can only use half the resources of the machine.
> This makes the builds slower, so I was looking at the container way.
>=20
> Can you point me to any documentation which I can use to build =
customized containers for yocto builds?
>=20
> Thanks,
> Abhijeet

A Dockerfile like this works for me:

FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=3Dnoninteractive
ENV LANG=3Den_US.UTF-8

RUN apt-get update \
	&& apt-get -y install \
		locales \
		sudo \
		vim-tiny \
	&& sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen \
	&& locale-gen \
	&& apt-get -y install \
		binutils \
		build-essential \
		chrpath \
		cpio \
		diffstat \
		gawk \
		git \
		lz4 \
		python3 \
		python3-distutils \
		wget \
		zstd \
	&& rm -rf /var/lib/apt/lists/*

RUN useradd -m -G sudo --uid=3D1000 -s /bin/bash yocto
RUN install -d -o yocto -g yocto /yocto
USER yocto

Save that to a file called =E2=80=9CDockerfile=E2=80=9D. You can build a =
container called =E2=80=9Cyocto=E2=80=9D with:
docker build -t yocto .

You can run this with something like:
docker run =E2=80=94rm =E2=80=94mount type=3Dvolume,src=3Dyocto,dst=3D/yoc=
to -it yocto

Once in the container, go to /yocto to do work within a Docker volume. I =
have an M1 MacBook Air and can use this container to run builds. As =
others have said, it=E2=80=99s not fast, but it does work if it=E2=80=99s =
what you have. Normally I don=E2=80=99t do builds on the MacBook, I =
usually ssh into my Linux desktop and do my work there.

You got me curious though, so I did a quick comparison of building on my =
MacBook Air and my desktop. Using the container built with that =
Dockerfile, I ran this sequence (the download is separate to avoid =
download time, which is highly variable):

git clone https://git.yoctoproject.org/poky.git -b honister
cd poky
. oe-init-build-env
bitbake core-image-minimal =E2=80=94runonly=3Dfetch
rm -rf tmp/ sstate-cache/
time bitbake core-image-minimal

On my 2020 M1 MacBook Air (8 cores, 16 GB RAM, docker using 8 cores and =
8 GB), the build took 84 minutes. My desktop with an AMD Ryzen 9 3950X =
(16 cores, 64 GB RAM) it takes 21 minutes.

Docker performance has always been bad for me on MacOS, so it wouldn=E2=80=
=99t surprise me if it=E2=80=99s faster to use a normal VM than docker =
(which uses a VM internally too).

Robert=

