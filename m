Return-Path: <H.Wulff@kruss.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36CB6D185C3
	for <webhook@archiver.kernel.org>; Thu,  8 Jan 2026 10:37:11 +0000 (UTC)
Subject: Best practice: Howto update/modify a patch?
To: yocto@lists.yoctoproject.org
From: "H. Wulff" <H.Wulff@kruss.de>
X-Originating-Location: Uetersen, Schleswig-Holstein, DE (91.11.211.118)
X-Originating-Platform: Linux Firefox 146
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 08 Jan 2026 02:37:09 -0800
Message-ID: <QrFW.1767868629280061069.Q3fC@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="CTBhPaNZHqLR9ecKZFdJ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Jan 2026 10:37:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66137

--CTBhPaNZHqLR9ecKZFdJ
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

Hi!

From time to time I get in the situation to update/modify an existing patch=
. When I use `devtool`, the old patches will be applied, and results in an =
additional patch. The newly created patch modifies the same code area(s) as=
 the old patch(es). OK.

So, I wonder whether there exists best practice to update/modify an existin=
g patch?

Thanks for any hints.

BR,=20
H. Wulff

--CTBhPaNZHqLR9ecKZFdJ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi!</p>

<p>From time to time I get in the situation to update/modify an existing pa=
tch. When I use <code>devtool</code>, the old patches will be applied, and =
results in an additional patch. The newly created patch modifies the same c=
ode area(s) as the old patch(es). OK.</p>

<p>So, I wonder whether there exists best practice to update/modify an exis=
ting patch?</p>

<p>Thanks for any hints.</p>

<p>BR,
H. Wulff</p>

--CTBhPaNZHqLR9ecKZFdJ--

