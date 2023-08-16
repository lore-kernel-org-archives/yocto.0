Return-Path: <nicolas.wirth@speedgoat.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AB3C001B0
	for <webhook@archiver.kernel.org>; Wed, 16 Aug 2023 10:54:38 +0000 (UTC)
Subject: How to switch between package version ?
To: yocto@lists.yoctoproject.org
From: "Nicolas Wirth" <nicolas.wirth@speedgoat.ch>
X-Originating-Location: Baechli, Nidwalden, CH (146.4.107.86)
X-Originating-Platform: Windows Chrome 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 16 Aug 2023 03:54:38 -0700
Message-ID: <S9ea.1692183278145152073.JK8M@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="wcKSjGiA1Xlq2MpahWot"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Aug 2023 10:54:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60805

--wcKSjGiA1Xlq2MpahWot
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello everyone, I hope you're all doing well.

I began learning how to use Yocto three months ago. I believe I now have a =
general understanding of how Yocto operates and how to integrate it into my=
 project. However, I've encountered a question for which I'm struggling to =
find a straightforward answer.

Imagine a scenario where, due to certain constraints, you've opted for a sp=
ecific version of Yocto and have commenced work with it. As development pro=
gresses, you realize the necessity for a particular version of a library (s=
uch as boost). After searching for the recipe, you locate it within the met=
a layer and include it in your image. Subsequently, you realize that the ve=
rsion you've incorporated isn't the precise one you intended; rather, the v=
ersion of the library you require is present within an older branch of Yoct=
o.

My question is as follows: Without altering your existing Yocto version, ho=
w can you utilize this "older" version of the desired library?

--wcKSjGiA1Xlq2MpahWot
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello everyone, I hope you're all doing well.</div>
<div>&nbsp;</div>
<div>I began learning how to use Yocto three months ago. I believe I now ha=
ve a general understanding of how Yocto operates and how to integrate it in=
to my project. However, I've encountered a question for which I'm strugglin=
g to find a straightforward answer.</div>
<div>&nbsp;</div>
<div>Imagine a scenario where, due to certain constraints, you've opted for=
 a specific version of Yocto and have commenced work with it. As developmen=
t progresses, you realize the necessity for a particular version of a libra=
ry (such as boost). After searching for the recipe, you locate it within th=
e meta layer and include it in your image. Subsequently, you realize that t=
he version you've incorporated isn't the precise one you intended; rather, =
the version of the library you require is present within an older branch of=
 Yocto.</div>
<div>&nbsp;</div>
<div>My question is as follows: Without altering your existing Yocto versio=
n, how can you utilize this "older" version of the desired library?</div>

--wcKSjGiA1Xlq2MpahWot--

