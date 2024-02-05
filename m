Return-Path: <thomas.isaacson@motorolasolutions.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8948AC48291
	for <webhook@archiver.kernel.org>; Mon,  5 Feb 2024 05:28:43 +0000 (UTC)
Subject: Re: [yocto] Intermittent build failure where dwarfsrcfiles doesn't exist
To: Tom Isaacson <tom.isaacson@teknique.com>,yocto@lists.yoctoproject.org
From: thomas.isaacson@motorolasolutions.com
X-Originating-Location: Auckland, NZ (161.29.245.24)
X-Originating-Platform: Linux Chrome 121
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 04 Feb 2024 21:28:37 -0800
References: <CA+EiEZLvxbbBSoweOXOXi6bEP_1=L+dZ=hcepvUa1NZ6QD8-Nw@mail.gmail.com>
In-Reply-To: <CA+EiEZLvxbbBSoweOXOXi6bEP_1=L+dZ=hcepvUa1NZ6QD8-Nw@mail.gmail.com>
Message-ID: <6815.1707110917510832552@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="UIK34SIy5YWcnxd83XED"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Feb 2024 05:28:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62390

--UIK34SIy5YWcnxd83XED
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

(Same person, different email address).

I've setup a CI build at my new company using a Github Action. I haven't se=
tup a cache yet so it takes 3 hours but it's not showing this intermittent =
fault - it works every time. On my PC (which does cache the build locally) =
I still see this problem. So somehow it's related to the cache?

I will continue to investigate.

--UIK34SIy5YWcnxd83XED
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

(Same person, different email address).<br /><br />I've setup a CI build at=
 my new company using a Github Action. I haven't setup a cache yet so it ta=
kes 3 hours but it's not showing this intermittent fault - it works every t=
ime. On my PC (which does cache the build locally) I still see this problem=
. So somehow it's related to the cache?<br /><br />I will continue to inves=
tigate.

--UIK34SIy5YWcnxd83XED--

