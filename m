Return-Path: <sushma.siri1705@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42CE8CD5BAC
	for <webhook@archiver.kernel.org>; Thu,  5 Sep 2024 11:39:57 +0000 (UTC)
Subject: Issues Integrating meta-marvell with Yocto Scarthgap Branch
To: yocto@lists.yoctoproject.org
From: sushma.siri1705@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (122.171.19.68)
X-Originating-Platform: Linux Chrome 127
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 05 Sep 2024 04:39:52 -0700
Message-ID: <2Th0.1725536392003864818.yxoD@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WQF7enemsIXrib21Pswy"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Sep 2024 11:39:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63786

--WQF7enemsIXrib21Pswy
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

*Dear Yocto Community,*

I am experiencing challenges in integrating the meta-marvell layer with the=
 Yocto Scarthgap branch. Here are the specific issues I'm encountering:

*=20

*Python Version Compatibility* : The meta-marvell layer was last updated fo=
r the Krogoth branch, which uses Python 2.x. However, the Scarthgap branch =
requires Python 3.8 or later, leading to incompatibility issues.

*=20

*Syntax Errors* : There are numerous syntax-related errors arising from the=
 differences between the Krogoth and Scarthgap releases, which are creating=
 significant hurdles in the build process.

Given these challenges, I am seeking guidance on how to address these compa=
tibility issues. Specifically, I would appreciate advice on:

* *Updating the meta-marvell Layer* : Steps to update the meta-marvell laye=
r to be compatible with Python 3.x and the Scarthgap branch.
* *Resolving Syntax Issues* : Strategies for resolving the syntax errors in=
troduced by the gap between the Krogoth and Scarthgap releases.

--WQF7enemsIXrib21Pswy
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p><strong>Dear Yocto Community,</strong></p>
<p>I am experiencing challenges in integrating the <code>meta-marvell</code=
> layer with the Yocto Scarthgap branch. Here are the specific issues I'm e=
ncountering:</p>
<ol>
<li>
<p><strong>Python Version Compatibility</strong>: The <code>meta-marvell</c=
ode> layer was last updated for the Krogoth branch, which uses Python 2.x. =
However, the Scarthgap branch requires Python 3.8 or later, leading to inco=
mpatibility issues.</p>
</li>
<li>
<p><strong>Syntax Errors</strong>: There are numerous syntax-related errors=
 arising from the differences between the Krogoth and Scarthgap releases, w=
hich are creating significant hurdles in the build process.</p>
</li>
</ol>
<p>Given these challenges, I am seeking guidance on how to address these co=
mpatibility issues. Specifically, I would appreciate advice on:</p>
<ul>
<li><strong>Updating the <code>meta-marvell</code> Layer</strong>: Steps to=
 update the <code>meta-marvell</code> layer to be compatible with Python 3.=
x and the Scarthgap branch.</li>
<li><strong>Resolving Syntax Issues</strong>: Strategies for resolving the =
syntax errors introduced by the gap between the Krogoth and Scarthgap relea=
ses.</li>
</ul>

--WQF7enemsIXrib21Pswy--

