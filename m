Return-Path: <crane2018@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38F0BEE4993
	for <webhook@archiver.kernel.org>; Wed, 23 Aug 2023 13:50:57 +0000 (UTC)
Subject: Re: EXTRA_USERS_PARAMS doesn't work to generate password for root and add new users
To: yocto@lists.yoctoproject.org
From: "Crane" <crane2018@gmail.com>
X-Originating-Location: Port Hope, Ontario, CA (72.38.198.131)
X-Originating-Platform: Windows Chrome 116
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 23 Aug 2023 06:50:56 -0700
References: <0e3b4324-7a93-3643-84d9-a1d47afbbefb@koansoftware.com>
In-Reply-To: <0e3b4324-7a93-3643-84d9-a1d47afbbefb@koansoftware.com>
Message-ID: <4243.1692798656387052619@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="qhtxgqeGonZatk9VcARy"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Aug 2023 13:50:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60858

--qhtxgqeGonZatk9VcARy
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 23, 2023 at 03:45 AM, Mauro wrote:

>=20
> You can put the encrypted password (the result of the "openssl passwd -6
> root" command) directly in the variable, taking care to put a "\" before
> the three "$" contained in the string. Something like this:
>=20
> EXTRA_USERS_PARAMS=3D" usermod -p
> '\$6\$CEM0hANiVS9VXN8N\$Q9XK1KTpq2faq2fNbSRLNeeA4mmQsl8g1Gwl3QnTPlRPb5ljC=
Aa./bbhffcthXxUen4jSFL6HKGQPlHZNQkfA/'
> root; useradd -p
> '\$6\$5wVybJkbuowR0iMi\$tnEJEEbXbcRfksKRSt7rjlY1hRERrjqFOlCaa0s1ivISxAHT7=
MFdcnZvVbRHgkqRSYzA1oLUxtR0LuvDTMPR5/'
> crane; "

Tried as well. And a \ is added automatically in front of $, so no need to =
add it. But still not working.
There must be something else missing. Anyway to debug in this case?

--qhtxgqeGonZatk9VcARy
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 23, 2023 at 03:45 AM, Mauro wrote:<br />
<blockquote>You can put the encrypted password (the result of the "openssl =
passwd -6 root" command) directly in the variable, taking care to put a "\"=
 before the three "$" contained in the string. Something like this:<br /><b=
r />EXTRA_USERS_PARAMS=3D" usermod -p '\$6\$CEM0hANiVS9VXN8N\$Q9XK1KTpq2faq=
2fNbSRLNeeA4mmQsl8g1Gwl3QnTPlRPb5ljCAa./bbhffcthXxUen4jSFL6HKGQPlHZNQkfA/' =
root; useradd -p '\$6\$5wVybJkbuowR0iMi\$tnEJEEbXbcRfksKRSt7rjlY1hRERrjqFOl=
Caa0s1ivISxAHT7MFdcnZvVbRHgkqRSYzA1oLUxtR0LuvDTMPR5/' crane; "</blockquote>
Tried as well. And a \ is added automatically in front of $, so no need to =
add it. But still not working.<br />There must be something else missing. A=
nyway to debug in this case?

--qhtxgqeGonZatk9VcARy--

