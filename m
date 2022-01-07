Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74E30C433EF
	for <webhook@archiver.kernel.org>; Fri,  7 Jan 2022 22:21:44 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net
 [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web08.287.1641594103607760414
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Jan 2022 14:21:43 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.199,
 mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 20E8DFF802;
	Fri,  7 Jan 2022 22:21:39 +0000 (UTC)
Date: Fri, 07 Jan 2022 23:21:38 +0100
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org, Trevor Woerner <twoerner@gmail.com>
CC: kas-devel <kas-devel@googlegroups.com>
Subject: Re: [yocto] pseudo error building master with kas-container
In-Reply-To: <20220107201240.GA13417@localhost>
References: <20220104192528.GA25696@localhost>
 <5A44F13B-F383-449C-8FB9-87BEBEF1272D@0leil.net>
 <20220106135047.GA15963@localhost>
 <E46D1565-EFA6-448E-95EC-DBB010C444BE@0leil.net>
 <20220107201240.GA13417@localhost>
Message-ID: <2AF48BF0-EE03-4443-878C-EB2CB52C8E64@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Jan 2022 22:21:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55761

Hi Trevor,

On January 7, 2022 9:12:41 PM GMT+01:00, Trevor Woerner <twoerner@gmail=2E=
com> wrote:
>Hey Quentin,
>
>Wow not bad, I'm batting 0/2 so far=E2=80=A6 lol!
>

To be fair, I didn't take the time to formulate correctly and point to the=
 docs =E2=98=BA=EF=B8=8F

>On Thu 2022-01-06 @ 08:28:36 PM, Quentin Schulz wrote:
>> On January 6, 2022 2:50:47 PM GMT+01:00, Trevor Woerner <twoerner@gmail=
=2Ecom> wrote:
>> >On Wed 2022-01-05 @ 12:08:15 AM, Quentin Schulz wrote:
>> >> I've had similar issues recently with kas-container and podman=2E Wh=
at was
>> >> required were two things:
>> >>  - passing --tmpfs /tmp to podman run,
>> >
>> >I don't think --tmpfs is an option, but I modified my kas-container sc=
ript to
>> >add a "--tmpdir /tmp" option (and verified it with ps while running)
>> >
>>=20
>> https://docs=2Epodman=2Eio/en/latest/markdown/podman-run=2E1=2Ehtml#tmp=
fs-fs
>
>Curious=2E When I run "podman -h" on the cmdline it only shows a --tmpdir=
 option
>
>	$ podman -h | grep tmp
>		--tmpdir string		Path to the tmp directory for libpod state content=2E
>					Note: use the environment variable 'TMPDIR' to change the temporary =
storage location for container images, '/var/tmp'=2E
>

podman run --help | grep tmp

Does return it though=2E It's just that some options are specific to subco=
mmands and not the whole set of supported subcommands=2E The docs=2Epodman=
=2Eio website is a gold mine, I only ever go to that place to find about pa=
rameters =E2=98=BA=EF=B8=8F

>> I wasn't talking about uids or gids, but pids_limit in containers=2Econ=
f for podman on your host=2E See:=20
>> https://man=2Earchlinux=2Eorg/man/containers=2Econf=2E5=2Een
>>=20
>> We discovered that it just had nothing to do with Bitbake/pseudo or
>> whatever, because with a fork bomb we reached the max of 2048 processes
>> (within the container) before the container started to fail us=2E
>>=20
>> Without those two changes, I've never been able to successfully build e=
ven
>> core-image-minimal for qemu-x86_64=2E
>
>Very nice, thanks for the info :-)
>
>In my experiments it seems like all I need is the update to kas-container=
 to
>add "--tmpfs /tmp" to KAS_RUNTIME_ARGS (around line 125)=2E Are you going=
 to
>submit a patch to kas upstream?

Feel free to do it, I don't use kas-container, I use the kas container fro=
m ghcr=2Eio directly so this won't impact me and I wouldn't be able to "mai=
ntain" this part and see if something breaks it=2E I anyway have as many cl=
ues as you have on why this fixes pseudo issues so I wouldn't be able to wr=
ite a better commit log than you'd do=2E

I'll read the script though to see if I've missed any important parameter =
to set=2E

Re: not needing the pids_limit=2E It seemed to be ok at first but I'd have=
 intermittent fails much later in the build=2E Increasing it made all my pr=
oblems go away (well=2E=2E for now =F0=9F=98=81)=2E

Cheers,
Quentin

