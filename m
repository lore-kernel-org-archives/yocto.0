Return-Path: <vaijayanthi@silver-peak.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98378C4332F
	for <webhook@archiver.kernel.org>; Tue, 29 Nov 2022 18:07:09 +0000 (UTC)
Subject: Building a dhcp recipe separately for dhcrelay and dhclient #yocto
To: yocto@lists.yoctoproject.org
From: "Vaijayanthi" <vaijayanthi@silver-peak.com>
X-Originating-Location: Boston, Massachusetts, US (136.226.79.28)
X-Originating-Platform: Mac Firefox 102
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 29 Nov 2022 10:07:09 -0800
Message-ID: <5giG.1669745229140773433.upcj@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="UDuBD7OEMj9LF8DRGfiE"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Nov 2022 18:07:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58656

--UDuBD7OEMj9LF8DRGfiE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

We have custom patches for building dhcrelay and dhclient. How do we use th=
e dhcp source files and build separately for dhcrelay and dhclient? Should =
we create a new recipe for dhcrelay and dhclient? How do we then consume th=
e files from poky/recipes-connectivity/dhcp?

--UDuBD7OEMj9LF8DRGfiE
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

We have custom patches for building dhcrelay and dhclient. How do we use th=
e dhcp source files and build separately for dhcrelay and dhclient? Should =
we create a new recipe for dhcrelay and dhclient? How do we then consume th=
e files from poky/recipes-connectivity/dhcp?

--UDuBD7OEMj9LF8DRGfiE--

