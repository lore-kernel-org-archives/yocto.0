Return-Path: <anton.antonov@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E58C761A6
	for <webhook@archiver.kernel.org>; Mon,  3 Apr 2023 09:00:03 +0000 (UTC)
Subject: Re: [meta-security][PATCH v3] parsec-service: update from 1.1.0 to 1.2.0-rc1
To: yocto@lists.yoctoproject.org
From: "Anton Antonov" <anton.antonov@arm.com>
X-Originating-Location: Cambridge, England, GB (217.140.99.251)
X-Originating-Platform: Mac Firefox 111
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 03 Apr 2023 01:59:57 -0700
References: <deecd5c0-3ca1-b40b-83f7-6de4fa657ba9@gmail.com>
In-Reply-To: <deecd5c0-3ca1-b40b-83f7-6de4fa657ba9@gmail.com>
Message-ID: <6415.1680512397605463020@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="DDn6e26cUFdrxreOJQuw"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Apr 2023 09:00:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59595

--DDn6e26cUFdrxreOJQuw
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 1, 2023 at 05:50 AM, Armin Kuster wrote:

>=20
>=20
>> parsec-service 1.1.0 fails to compile with latest tpm2-tss update
>> in meta-security:
>=20
> Thanks for the update.
> This patch is currently in a test build.
> Just a note. If this version ends up being the official one being
> supported in the upcoming 4.2 release, when parsec-service 1.2.0 official
> drops and is added, we will need to us "EPOCH" as I believe "-rc1" being
> dropped will signal the version going backwards.

We're planning to include Parsec 1.2.0 release into 4.2. I'm not sure what =
to do with this rc1 recipes tbh.

Miko, can you wait for the Parsec release?

Cheers,

Anton

--DDn6e26cUFdrxreOJQuw
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 1, 2023 at 05:50 AM, Armin Kuster wrote:<br />
<blockquote>
<blockquote>parsec-service 1.1.0 fails to compile with latest tpm2-tss upda=
te<br />in meta-security:</blockquote>
Thanks for the update.<br />This patch is currently in a test build.<br />J=
ust a note. If this version ends up being the official one being supported =
in the upcoming 4.2 release, when parsec-service 1.2.0 official drops and i=
s added, we will need to us "EPOCH" as I believe "-rc1" being dropped will =
signal the version going backwards.</blockquote>
<p>We're planning to include Parsec 1.2.0 release into 4.2. I'm not sure wh=
at to do with this rc1 recipes tbh. </p>
<p>Miko, can you wait for the Parsec release?</p>
<p>&nbsp;</p>
<p>Cheers,</p>
<p>Anton</p>

--DDn6e26cUFdrxreOJQuw--

