Return-Path: <ali.ahmad@rtl-corp.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78B9CC4332F
	for <webhook@archiver.kernel.org>; Sat, 10 Dec 2022 12:11:32 +0000 (UTC)
Subject: Re: Make recipe conditionally download code from Git Repo #yocto
To: yocto@lists.yoctoproject.org
From: ali.ahmad@rtl-corp.com
X-Originating-Location: Melbourne, Victoria, AU (120.21.122.100)
X-Originating-Platform: Linux Firefox 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 10 Dec 2022 04:11:27 -0800
References: <CANNYZj8fDsCWXCRxCZBMx-ujohUu5wXmGQq1BkP_a_JsfdUHAQ@mail.gmail.com>
In-Reply-To: <CANNYZj8fDsCWXCRxCZBMx-ujohUu5wXmGQq1BkP_a_JsfdUHAQ@mail.gmail.com>
Message-ID: <19362.1670674287260661939@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="7rxFWKiUf4uOqN93Jf0q"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 10 Dec 2022 12:11:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58776

--7rxFWKiUf4uOqN93Jf0q
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank you for getting back.

Context/Use case:
My current recipe always checks out code from the git repo before building =
it.
During development, I want to first build my code successfully before pushi=
ng it to the repo. Hence I want the recipe to check if the code exists at a=
 certain location on the file system. If it does, it should build that. If =
it doesn't it should checkout the code from the repo before building it.

Thanks

--7rxFWKiUf4uOqN93Jf0q
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank you for getting back.<br /><br />Context/Use case:<br />My current re=
cipe always checks out code from the git repo before building it.<br />Duri=
ng development, I want to first build my code successfully before pushing i=
t to the repo. Hence I want the recipe to check if the code exists at a cer=
tain location on the file system. If it does, it should build that. If it d=
oesn't it should checkout the code from the repo before building it.<br /><=
br />Thanks

--7rxFWKiUf4uOqN93Jf0q--

