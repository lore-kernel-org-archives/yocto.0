Return-Path: <jmeyron@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA52ECDDE6A
	for <webhook@archiver.kernel.org>; Thu, 24 Oct 2024 09:52:36 +0000 (UTC)
Subject: Re: [yocto] bitbake: enforce variables to be defined?
To: "Quentin Schulz" <quentin.schulz@cherry.de>, yocto@lists.yoctoproject.org
From: "Jocelyn Meyron" <jmeyron@gmail.com>
X-Originating-Location: Amsterdam, North Holland, NL (165.225.240.117)
X-Originating-Platform: Windows Firefox 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 24 Oct 2024 02:52:32 -0700
References: <567180e3-3c9c-4422-9e93-b8b206ade10c@cherry.de>
In-Reply-To: <567180e3-3c9c-4422-9e93-b8b206ade10c@cherry.de>
Message-ID: <16955.1729763552548028616@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="4A53P6J20Ixx18KhU96I"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Oct 2024 09:52:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64107

--4A53P6J20Ixx18KhU96I
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks Quentin for your answer.

I know that I can do that but my question was more to know if there were sy=
stematic way to tell BitBake to insert "set -u" in all do_* tasks in my lay=
er.

--4A53P6J20Ixx18KhU96I
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Thanks Quentin for your answer.</div>
<div>&nbsp;</div>
<div>I know that I can do that but my question was more to know if there we=
re systematic way to tell BitBake to insert "set -u" in all do_* tasks in m=
y layer.</div>

--4A53P6J20Ixx18KhU96I--

