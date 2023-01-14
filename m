Return-Path: <jekefas508@tingn.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB3CEC3DA78
	for <webhook@archiver.kernel.org>; Sat, 14 Jan 2023 03:43:09 +0000 (UTC)
Subject: How to properly modify/patch source of a Cargo Crate dependency
To: yocto@lists.yoctoproject.org
From: "Jerry Kefas" <jekefas508@tingn.com>
X-Originating-Location: Mill Valley, California, US (98.45.190.221)
X-Originating-Platform: Linux Firefox 102
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 13 Jan 2023 19:43:08 -0800
Message-ID: <hR2p.1673667788793001815.UD1i@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="rFBlDAdNyKNIzWDbD5il"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 14 Jan 2023 03:43:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58987

--rFBlDAdNyKNIzWDbD5il
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

When creating recipes for Rust projects, all of the required crates are inc=
luded in SRC_URI. I need to patch the source of several crates. I've tried =
creating individual recipes, but that does not really help.

I've managed to get a hacky fix to work, however it involves having recipes=
 copy source from the tmp/work directory, which is not ideal. It patches th=
e Cargo.toml to replace the version of the dependency with a local path to =
expect the sources in.

Is there a good way to do the patches necessary within bitbake, or should I=
 be creating my own forks of all these packages?

--rFBlDAdNyKNIzWDbD5il
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>When creating recipes for Rust projects, all of the required crates are =
included in SRC_URI. I need to patch the source of several crates. I've tri=
ed creating individual recipes, but that does not really help.</p>
<p>I've managed to get a hacky fix to work, however it involves having reci=
pes copy source from the tmp/work directory, which is not ideal. It patches=
 the Cargo.toml to replace the version of the dependency with a local path =
to expect the sources in.</p>
<p>Is there a good way to do the patches necessary within bitbake, or shoul=
d I be creating my own forks of all these packages?</p>
<p>&nbsp;</p>
<p>&nbsp;</p>

--rFBlDAdNyKNIzWDbD5il--

