Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53423C433EF
	for <webhook@archiver.kernel.org>; Thu,  6 Jan 2022 19:28:44 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net
 [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web09.13952.1641497323467275728
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Jan 2022 11:28:43 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.199,
 mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 13EF8FF802;
	Thu,  6 Jan 2022 19:28:40 +0000 (UTC)
Date: Thu, 06 Jan 2022 20:28:36 +0100
From: Quentin Schulz <foss+yocto@0leil.net>
To: Trevor Woerner <twoerner@gmail.com>
CC: yocto@lists.yoctoproject.org, kas-devel <kas-devel@googlegroups.com>
Subject: Re: [yocto] pseudo error building master with kas-container
In-Reply-To: <20220106135047.GA15963@localhost>
References: <20220104192528.GA25696@localhost>
 <5A44F13B-F383-449C-8FB9-87BEBEF1272D@0leil.net>
 <20220106135047.GA15963@localhost>
Message-ID: <E46D1565-EFA6-448E-95EC-DBB010C444BE@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Jan 2022 19:28:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55752

Hi Trevor,

On January 6, 2022 2:50:47 PM GMT+01:00, Trevor Woerner <twoerner@gmail=2E=
com> wrote:
>Hey Quentin,
>
>On Wed 2022-01-05 @ 12:08:15 AM, Quentin Schulz wrote:
>> I've had similar issues recently with kas-container and podman=2E What =
was
>> required were two things:
>>  - passing --tmpfs /tmp to podman run,
>
>I don't think --tmpfs is an option, but I modified my kas-container scrip=
t to
>add a "--tmpdir /tmp" option (and verified it with ps while running)
>

https://docs=2Epodman=2Eio/en/latest/markdown/podman-run=2E1=2Ehtml#tmpfs-=
fs

>>  - increase pids_limit in container=2Econf (your system's), we've set i=
t to
>>  1000000 abritrarily for now and it seems to run fine for the few build=
s
>>  we've made so far),
>
>There seem to be a couple places to update the uid/gid mappings=2E Origin=
ally,
>following the podman docs, I created /etc/subuid and /etc/subgid and had =
them
>both contain:
>
>	trevor:100000:123456
>
>I wasn't seeing any problems with the couple builds that I did, but based
>on your suggestion I had a look at /etc/containers/storage=2Econf and add=
ed
>(uncommented):
>
>	remap-uids =3D "0:1668442479:1000000"
>	remap-gids =3D "0:1668442479:1000000"
>
>I also bumped /etc/sub{gu}id to:
>
>	trevor:100000:1000000
>
>but I'm still seeing pseudo failures even after incorporating both of you=
r
>suggestions=2E
>

I wasn't talking about uids or gids, but pids_limit in containers=2Econf f=
or podman on your host=2E See:=20
https://man=2Earchlinux=2Eorg/man/containers=2Econf=2E5=2Een

We discovered that it just had nothing to do with Bitbake/pseudo or whatev=
er, because with a fork bomb we reached the max of 2048 processes (within t=
he container) before the container started to fail us=2E

Without those two changes, I've never been able to successfully build even=
 core-image-minimal for qemu-x86_64=2E

Cheers,
Quentin

>I expanded my testing and discovered that using kas-container with podman=
 on
>my openSUSE 15=2E3 machine I can't build qemux86 for anything including a=
nd past
>dunfell=2E All failures are due to pseudo=2E
>
>qemux86 builds using kas-container with podman on openSUSE 15=2E3:
>	working:
>	- thud (2=2E6)
>	- warrior (2=2E7)
>	- zeus (3=2E0)
>
>	not working:
>	- dunfell (3=2E1)
>	- gatesgarth (3=2E2)
>	- hardknott (3=2E3)
>	- honister (3=2E4)
>	- master
>
>I did a kas-container build on my Ubuntu 18=2E04 machine using docker of =
qemux86
>on master and it worked=2E
>
>I suspect something changed with pseudo in 3=2E1 and beyond that either i=
sn't
>working well with openSUSE 15=2E3 or isn't working well with podman=2E
>
>Next I'll try using docker instead of podman=2E

