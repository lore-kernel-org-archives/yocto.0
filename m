Return-Path: <lorenzo.arena@powersoft.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6639C2BD09
	for <webhook@archiver.kernel.org>; Mon, 15 Jul 2024 08:28:24 +0000 (UTC)
Subject: gitpkgv class not returning hash if sources are not already fetched
To: yocto@lists.yoctoproject.org
From: lorenzo.arena@powersoft.com
X-Originating-Location: Rome, Latium, IT (5.99.65.66)
X-Originating-Platform: Linux Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 15 Jul 2024 01:28:10 -0700
Message-ID: <o2NM.1721032090696798105.7CaW@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ZFIoIBuPxi4xzvaWh462"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Jul 2024 08:28:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63493

--ZFIoIBuPxi4xzvaWh462
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi, I have a couple of projects which I'm migrating from kirkstone to scart=
hgap; previously some of my recipes (with sources fetched from a git remote=
) used the SRCPV to dump the current hash of the project to a file which ge=
ts then installed in the root fs. This worked both when SRCREV was set to a=
 certain hash or to AUTOREV. Since it's now deprecated, I switched to inher=
iting from gitpkgv as I hoped it would recreate the same values; however th=
e GITPKGV variable will be set to "None" if the sources are not already fet=
ched in the downloads folder. Is this expected? If I'm understanding it cor=
rectly this is due to the "if not os.path.exists(url.localpath):" check in =
the gitpkgv bbclass, but is that really necessary?

Thanks,
Lorenzo

--ZFIoIBuPxi4xzvaWh462
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi, I have a couple of projects which I'm migrating from kirkstone to scart=
hgap; previously some of my recipes (with sources fetched from a git remote=
) used the SRCPV to dump the current hash of the project to a file which ge=
ts then installed in the root fs. This worked both when SRCREV was set to a=
 certain hash or to AUTOREV. Since it's now deprecated, I switched to inher=
iting from gitpkgv as I hoped it would recreate the same values; however th=
e GITPKGV variable will be set to "None" if the sources are not already fet=
ched in the downloads folder. Is this expected? If I'm understanding it cor=
rectly this is due to the "if not os.path.exists(url.localpath):" check in =
the gitpkgv bbclass, but is that really necessary?<br /><br />Thanks,<br />=
Lorenzo

--ZFIoIBuPxi4xzvaWh462--

