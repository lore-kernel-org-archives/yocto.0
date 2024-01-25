Return-Path: <an010@live.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92D3C47258
	for <webhook@archiver.kernel.org>; Thu, 25 Jan 2024 12:18:54 +0000 (UTC)
Subject: Re: [yocto] Multiple images on the same hardware
To: Alexander Kanavin <alex.kanavin@gmail.com>,yocto@lists.yoctoproject.org
From: "Aleksandar Nikolic" <an010@live.com>
X-Originating-Location: DE (147.161.169.87)
X-Originating-Platform: Windows Chrome 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 25 Jan 2024 04:18:47 -0800
References: <CANNYZj-T2Aj7=KGsAoe78-y3BBzJ0+Hfz0puj3VntD2hBqE7OQ@mail.gmail.com>
In-Reply-To: <CANNYZj-T2Aj7=KGsAoe78-y3BBzJ0+Hfz0puj3VntD2hBqE7OQ@mail.gmail.com>
Message-ID: <27265.1706185127772242958@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="HcOxvrIeovFRbFGiwnKF"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Jan 2024 12:18:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62290

--HcOxvrIeovFRbFGiwnKF
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I thought that could be an issue with multiple machines, thanks for the con=
firmation.

How am I supposed to decide which kernel config fragments are included in w=
hich image though, since they go into SRC_URI? The same problem arises if t=
he same userspace package needs to be built slightly differently for differ=
ent products
That's not something I can easily control in the image recipe.

Multiple recipes for multiple products is one way to solve this, but I don'=
t find that as an elegant way of solving this problem.

Aleksandar

--HcOxvrIeovFRbFGiwnKF
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I thought that could be an issue with multiple machines, thanks for the con=
firmation.<br /><br />How am I supposed to decide which kernel config fragm=
ents are included in which image though, since they go into SRC_URI? The sa=
me problem arises if the same userspace package needs to be built slightly =
differently for different products<br />That's not something I can easily c=
ontrol in the image recipe. <br /><br />Multiple recipes for multiple produ=
cts is one way to solve this, but I don't find that as an elegant way of so=
lving this problem.<br /><br />Aleksandar

--HcOxvrIeovFRbFGiwnKF--

