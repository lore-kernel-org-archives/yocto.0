Return-Path: <jmeyron@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6BEED78311
	for <webhook@archiver.kernel.org>; Mon,  2 Dec 2024 12:13:18 +0000 (UTC)
Subject: Re: [yocto] Unable to find gdb in tmp/sysroots directory
To: "Khem Raj" <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
From: "Jocelyn Meyron" <jmeyron@gmail.com>
X-Originating-Location: CH (147.161.182.80)
X-Originating-Platform: Windows Firefox 133
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 02 Dec 2024 04:13:11 -0800
References: <CAMKF1sqXW=kxkudU6mrWf6=MwttYUHKDz36hS-jkod9FaBRQQQ@mail.gmail.com>
In-Reply-To: <CAMKF1sqXW=kxkudU6mrWf6=MwttYUHKDz36hS-jkod9FaBRQQQ@mail.gmail.com>
Message-ID: <14717.1733141591025344835@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Mn4Ftjbo5rTL6EzClcgO"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 Dec 2024 12:13:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64384

--Mn4Ftjbo5rTL6EzClcgO
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Khem,

Thanks for your answer: you're right but the documentation for version 4.0.=
4 still says that I should find gdb in the sysroots folder.

I checked a bit more the documentation and here it says that this folder is=
 not used anymore https://docs.yoctoproject.org/4.0.4/singleindex.html#buil=
d-tmp-sysroots so I would suggest to update the documentation (the error is=
 still present in version 5.0.5)

--Mn4Ftjbo5rTL6EzClcgO
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Khem,</div>
<div>&nbsp;</div>
<div>Thanks for your answer: you're right but the documentation for version=
 4.0.4 still says that I should find gdb in the sysroots folder.</div>
<div>&nbsp;</div>
<div>I checked a bit more the documentation and here it says that this fold=
er is not used anymore <a href=3D"https://docs.yoctoproject.org/4.0.4/singl=
eindex.html#build-tmp-sysroots" target=3D"_blank" rel=3D"noopener">https://=
docs.yoctoproject.org/4.0.4/singleindex.html#build-tmp-sysroots</a> so I wo=
uld suggest to update the documentation (the error is still present in vers=
ion 5.0.5)</div>

--Mn4Ftjbo5rTL6EzClcgO--

