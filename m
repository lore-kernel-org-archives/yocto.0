Return-Path: <oobitots@cisco.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAD80EB64D9
	for <webhook@archiver.kernel.org>; Tue,  4 Jul 2023 11:57:48 +0000 (UTC)
Subject: Re: File magic/sdk relocation
To: yocto@lists.yoctoproject.org
From: "Oleksiy Obitotskyy" <oobitots@cisco.com>
X-Originating-Location: Bagshot, England, GB (64.103.40.23)
X-Originating-Platform: Linux Firefox 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 04 Jul 2023 04:57:45 -0700
References: <CANNYZj-o3jqKQcLaTpGjdZfAqdUaDbP07dtfQrQjGM7oN1iqOQ@mail.gmail.com>
In-Reply-To: <CANNYZj-o3jqKQcLaTpGjdZfAqdUaDbP07dtfQrQjGM7oN1iqOQ@mail.gmail.com>
Message-ID: <3839.1688471865108131448@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="adcz2psDDOl54CGLDAzu"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jul 2023 11:57:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60513

--adcz2psDDOl54CGLDAzu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Sdk could be build on different host platforms with slightly different OS v=
ersions.
Some binaries could be missing, some have different behavior from version t=
o version.
Hence we prefer to share our own tool set, i.e. buildtools tarball to keep =
environment consistent.
Another moment that different sdk versions could require different tools an=
d it's easier to
switch link to buildtools tarball then reconfigure build server.

Regards,
Oleksiy

--adcz2psDDOl54CGLDAzu
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Sdk could be build on different host platforms with slightly different OS v=
ersions.<br />Some binaries could be missing, some have different behavior =
from version to version.<br />Hence we prefer to share our own tool set, i.=
e. buildtools tarball to keep environment consistent.<br />Another moment t=
hat different sdk versions could require different tools and it's easier to=
 <br />switch link to buildtools tarball then reconfigure build server.<br =
/><br />Regards,<br />Oleksiy

--adcz2psDDOl54CGLDAzu--

