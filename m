Return-Path: <sampathkumar.n@rently.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B336E69E9F
	for <webhook@archiver.kernel.org>; Tue,  3 Dec 2024 10:33:43 +0000 (UTC)
Subject: Re: [yocto] Unable to build airbrake npm module in Yocto Scarthgap #devtool #scarthgap #npm #bitbake
To: "Gyorgy Sarvari" <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
From: sampathkumar.n@rently.com
X-Originating-Location: Puducherry, Union Territory of Puducherry, IN (106.197.91.193)
X-Originating-Platform: Linux Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 03 Dec 2024 02:33:34 -0800
References: <f4977ec4-949d-4d1d-a154-5c84c56ca242@gmail.com>
In-Reply-To: <f4977ec4-949d-4d1d-a154-5c84c56ca242@gmail.com>
Message-ID: <10227.1733222014291083252@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="zbTVxRGu13WcVHAw3XDK"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Dec 2024 10:33:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64390

--zbTVxRGu13WcVHAw3XDK
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am able to fix the issue.
meta-oe has 20.12.0, but i required 20.13.0, so i added the recipe for that=
. But missed to include nodejs-oe-cache-20.13.
after including that, it is working fine now.

Thanks...

--zbTVxRGu13WcVHAw3XDK
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I am able to fix the issue.</div>
<div>meta-oe has 20.12.0, but i required 20.13.0, so i added the recipe for=
 that. But missed to include nodejs-oe-cache-20.13.</div>
<div>after including that, it is working fine now.</div>
<div>&nbsp;</div>
<div>Thanks...</div>

--zbTVxRGu13WcVHAw3XDK--

