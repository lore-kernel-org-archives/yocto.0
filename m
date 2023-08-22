Return-Path: <crane2018@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AB1BEE4996
	for <webhook@archiver.kernel.org>; Tue, 22 Aug 2023 15:16:49 +0000 (UTC)
Subject: Re: EXTRA_USERS_PARAMS doesn't work to generate password for root and add new users
To: yocto@lists.yoctoproject.org
From: "Crane" <crane2018@gmail.com>
X-Originating-Location: Port Hope, Ontario, CA (72.38.198.131)
X-Originating-Platform: Windows Chrome 116
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 22 Aug 2023 08:16:41 -0700
References: <b0b315a3-a549-6a86-58ae-417709a5344f@koansoftware.com>
In-Reply-To: <b0b315a3-a549-6a86-58ae-417709a5344f@koansoftware.com>
Message-ID: <19830.1692717401104034546@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="7TZylpTdJZGfRJ7mQ4cL"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Aug 2023 15:16:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60850

--7TZylpTdJZGfRJ7mQ4cL
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks Mauro for your input.

I referred two posts from Koan Software in my work. One is to use devtool t=
o modify recipe and another one is to add system service to image. Very cle=
arly explained. Thanks!

Good point. I tried, but in my case it looks still not generating the passw=
ord and also no new user added.
And I am afraid that the $ symbol in the encrypted password string might pr=
event it from being applied. I tried to add \ before $ symbol. And it's als=
o not working.

Wondering what else might be still missing.

--7TZylpTdJZGfRJ7mQ4cL
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks Mauro for your input.&nbsp;<br /><br />I referred two posts from Koa=
n Software in my work. One is to use devtool to modify recipe and another o=
ne is to add system service to image. Very clearly explained. Thanks!<br />=
<br />Good point. I tried, but in my case it looks still not generating the=
 password and also no new user added.&nbsp;<br />And I am afraid that the $=
 symbol in the encrypted password string might prevent it from being applie=
d. I tried to add \ before $ symbol. And it's also not working.&nbsp;<br />=
<br />Wondering what else might be still missing.

--7TZylpTdJZGfRJ7mQ4cL--

