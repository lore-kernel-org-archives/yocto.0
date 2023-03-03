Return-Path: <tamtamis@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D29D4C64EC4
	for <webhook@archiver.kernel.org>; Fri,  3 Mar 2023 11:23:45 +0000 (UTC)
Subject: Re: Question about psuedo abort errors
To: yocto@lists.yoctoproject.org
From: "Tamis" <tamtamis@gmail.com>
X-Originating-Location: Vienna, AT (165.225.200.199)
X-Originating-Platform: Windows Chrome 110
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 03 Mar 2023 03:23:36 -0800
References: <20767.1677248558097551153@lists.yoctoproject.org>
In-Reply-To: <20767.1677248558097551153@lists.yoctoproject.org>
Message-ID: <3840.1677842616787706133@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="jCI6d1wmlWehMvw0vw2x"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Mar 2023 11:23:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59342

--jCI6d1wmlWehMvw0vw2x
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Richard,

I tested with both kirkstone and master pseudo.
I also cleaned again whole tmp and tested with latest dunfell and error sti=
ll persists.

When we change the SRCREV of the recipe the install will fail with the pseu=
do error.
We need to cleansstate the recipe in order to work again or in order to fix=
 that permanently we are now thinking to RM_WORK also that recipe.

Would you require some more traces in order to see something more?

--jCI6d1wmlWehMvw0vw2x
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello Richard,</p>
<p>I tested with both kirkstone and master pseudo.<br />I also cleaned agai=
n whole tmp and tested with latest dunfell and error still persists.<br /><=
br />When we change the SRCREV of the recipe the install will fail with the=
 pseudo error.<br />We need to cleansstate the recipe in order to work agai=
n or in order to fix that permanently we are now thinking to RM_WORK also t=
hat recipe.</p>
<p>Would you require some more traces in order to see something more?</p>

--jCI6d1wmlWehMvw0vw2x--

