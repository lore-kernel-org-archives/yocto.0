Return-Path: <pandeymayank96@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBC9EC27C6E
	for <webhook@archiver.kernel.org>; Fri, 14 Jun 2024 05:15:26 +0000 (UTC)
Subject: Re: [yocto] [scarthgap] Failure with python + ncurses combination with Yocto 5.0 (and even 4.3) upgrades #yocto
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: "Mayank Pandey" <pandeymayank96@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (202.164.25.5)
X-Originating-Platform: Mac Chrome 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 13 Jun 2024 22:15:16 -0700
References: <CANNYZj9PxY1kQAxRvPXGj4F=sroDpVvjKeFjsyPZrP-5mpgMJg@mail.gmail.com>
In-Reply-To: <CANNYZj9PxY1kQAxRvPXGj4F=sroDpVvjKeFjsyPZrP-5mpgMJg@mail.gmail.com>
Message-ID: <7491.1718342116951942235@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="lNgbiZu5KkIhRCejENHF"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jun 2024 05:15:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63342

--lNgbiZu5KkIhRCejENHF
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex
Thanks for the input. The thing is, the issue is not coming in the plain po=
ky build, that I had tried already. In the custom build that we have, the i=
ssue is coming. We don't get this in kirkstone (4.0) but beyond that we are=
 getting the problem with the upgrades. Any pointers as to where we should =
look at to fix this? I read a suggestion on a forum that we can disable Wim=
plicit-function-declaration for this specific case, but that is pretty much=
 a hack and won't be building the curses module with Python.
Any other suggestions on where to look for?

--lNgbiZu5KkIhRCejENHF
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex<br />Thanks for the input. The thing is, the issue is not coming in=
 the plain poky build, that I had tried already. In the custom build that w=
e have, the issue is coming. We don't get this in kirkstone (4.0) but beyon=
d that we are getting the problem with the upgrades. Any pointers as to whe=
re we should look at to fix this? I read a suggestion on a forum that we ca=
n disable Wimplicit-function-declaration for this specific case, but that i=
s pretty much a hack and won't be building the curses module with Python.&n=
bsp;<br />Any other suggestions on where to look for?&nbsp;

--lNgbiZu5KkIhRCejENHF--

