Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94268C433F5
	for <webhook@archiver.kernel.org>; Tue,  4 Jan 2022 23:08:21 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net
 [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web12.1086.1641337700473999378
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jan 2022 15:08:20 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.199,
 mailfrom: foss@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 63ECEFF804;
	Tue,  4 Jan 2022 23:08:17 +0000 (UTC)
Date: Wed, 05 Jan 2022 00:08:15 +0100
From: Quentin Schulz <foss@0leil.net>
To: yocto@lists.yoctoproject.org, Trevor Woerner <twoerner@gmail.com>
Subject: Re: [yocto] pseudo error building master with kas-container
In-Reply-To: <20220104192528.GA25696@localhost>
References: <20220104192528.GA25696@localhost>
Message-ID: <5A44F13B-F383-449C-8FB9-87BEBEF1272D@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jan 2022 23:08:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55733

Hi Trevor,

On January 4, 2022 8:25:28 PM GMT+01:00, Trevor Woerner <twoerner@gmail=2E=
com> wrote:
>Hi,
>
>I'm seeing a build failure with pseudo performing a qemux86 build using
>kas-container=2E Note that I'm using kas-container, and not using kas ins=
ide a
>container of my own making=2E
>
>build host: openSUSE 15=2E3
>container tool: podman
>steps:
>	$ git clone https://github=2Ecom/siemens/kas=2Egit
>	$ mkdir layers
>	$ git clone git://git=2Eopenembedded=2Eorg/bitbake layers/bitbake
>	$ git clone git://git=2Eopenembedded=2Eorg/openembedded-core layers/open=
embedded-core
>	create the file "simple=2Eyml" containing -----------------+
>        | header:                                                |
>        |        version: 11                                     |
>        | machine: qemux86                                       |
>        | distro: nodistro                                       |
>        | target:                                                |
>        |        - core-image-base                               |
>        | repos:                                                 |
>        |         bitbake:                                       |
>        |                 path: layers/bitbake                   |
>        |                 layers:                                |
>        |                         conf: disabled                 |
>        |         openembedded-core:                             |
>        |                 path: layers/openembedded-core         |
>        |                 layers:                                |
>        |                         meta:                          |
>        +--------------------------------------------------------+
>=E2=86=92 NOTE: do not use real tabs in the yml file
>=E2=86=92 NOTE: if this is your first time using kas-container and/or pod=
man you'll
>        probably have to do some one-time/first-time setup of podman in o=
rder
>        to use containers as a non-root user
>=E2=86=92 NOTE: the head revisions of the following repos are as follows:
>  kas: 75d1a5cce49f363b4dacd702a48d3b11195a353c
>  layers/bitbake: bdf5739c5d831dc97a7d81568f94a0953c71017f
>  layers/openembedded-core: 24c1b8346a2ab8bdea2e140282e33814166d9113
>
>	$ DL_DIR=3D/path/to/your/DL_DIR kas/kas-container build simple=2Eyml
>
>the above steps always result in the following build error for me:
>
>	ERROR: Task (/work/layers/openembedded-core/meta/recipes-support/icu/icu=
_70=2E1=2Ebb:do_install) failed with exit code '1'
>	Pseudo log:
>	path mismatch [1 link]: ino 47078782 db '/tmp/sh-thd=2E8MYMaq' req '/tmp=
/sh-thd=2Es6sVVG'=2E
>	Setup complete, sending SIGUSR1 to pid 5494=2E

I've had similar issues recently with kas-container and podman=2E What was=
 required were two things:
 - passing --tmpfs /tmp to podman run,
 - increase pids_limit in container=2Econf (your system's), we've set it t=
o 1000000 abritrarily for now and it seems to run fine for the few builds w=
e've made so far),

Hope this helps,
Cheers,
Quentin


