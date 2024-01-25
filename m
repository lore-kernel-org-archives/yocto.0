Return-Path: <an010@live.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFABAC47258
	for <webhook@archiver.kernel.org>; Thu, 25 Jan 2024 09:37:43 +0000 (UTC)
Subject: Using Yocto for development on the host
To: yocto@lists.yoctoproject.org
From: "Aleksandar Nikolic" <an010@live.com>
X-Originating-Location: DE (147.161.169.87)
X-Originating-Platform: Windows Chrome 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 25 Jan 2024 01:37:42 -0800
Message-ID: <44c1.1706175462811078525.y4F1@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ruM40NwxQtCORLfUWOy3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Jan 2024 09:37:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62282

--ruM40NwxQtCORLfUWOy3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

is there a way to use Yocto for development on the host as well? Usually it=
 is easier to develop code and run some basic testing on the host, however,=
 I would like to avoid to have to set up the same (or at least a similar) e=
nvironment by using Docker for example - some of the issues being having th=
e same versions of dependencies and their config files, the same or similar=
 compiler flags, etc. - this would be a lot of work in Docker after an from=
 e.g. Kirkstone to Scarthgap.

I know we could use the SDK and run the code in QEMU, but this also require=
s a "bit more"=C2=A0work, is however, IMHO, better than using Docker for th=
e same purpose?

Any thoughts, ideas or proposals?

Aleksandar

--ruM40NwxQtCORLfUWOy3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />is there a way to use Yocto for development on the host as w=
ell? Usually it is easier to develop code and run some basic testing on the=
 host, however, I would like to avoid to have to set up the same (or at lea=
st a similar) environment by using Docker for example - some of the issues =
being having the same versions of dependencies and their config files, the =
same or similar compiler flags, etc. - this would be a lot of work in Docke=
r after an from e.g. Kirkstone to Scarthgap.<br /><br />I know we could use=
 the SDK and run the code in QEMU, but this also requires a "bit more"&nbsp=
;work, is however, IMHO, better than using Docker for the same purpose?<br =
/><br />Any thoughts, ideas or proposals?<br /><br />Aleksandar

--ruM40NwxQtCORLfUWOy3--

