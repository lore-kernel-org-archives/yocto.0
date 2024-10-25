Return-Path: <hchanuy@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DDC8D0C61B
	for <webhook@archiver.kernel.org>; Fri, 25 Oct 2024 14:32:58 +0000 (UTC)
Subject: Re: [yocto] How to add postinst and prerm scripts to a recipe?
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: "Uy Ha" <hchanuy@gmail.com>
X-Originating-Location: Helsinki, Uusimaa, FI (87.92.135.50)
X-Originating-Platform: Linux Firefox 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 25 Oct 2024 07:32:51 -0700
References: <CANNYZj-dV0yju36AhSXKpKaHRf0yXfZ1mikvuC47P-hb5jtgFw@mail.gmail.com>
In-Reply-To: <CANNYZj-dV0yju36AhSXKpKaHRf0yXfZ1mikvuC47P-hb5jtgFw@mail.gmail.com>
Message-ID: <7175.1729866771934814016@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="v8iKfV4QNAcGHErZGH3u"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Oct 2024 14:32:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64128

--v8iKfV4QNAcGHErZGH3u
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm just not really sure what `pkg_prerm` does. Does it create a script tha=
t will be run when the package is removed? or does it run entirely during b=
itbake build step?

--v8iKfV4QNAcGHErZGH3u
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I'm just not really sure what `pkg_prerm` does. Does it create a scrip=
t that will be run when the package is removed? or does it run entirely dur=
ing bitbake build step?</div>
<div>&nbsp;</div>

--v8iKfV4QNAcGHErZGH3u--

