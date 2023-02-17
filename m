Return-Path: <davidskeck@fastmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42F6FC05027
	for <webhook@archiver.kernel.org>; Fri, 17 Feb 2023 05:08:31 +0000 (UTC)
Subject: Importance of ECC RAM on the build computer
To: yocto@lists.yoctoproject.org
From: davidskeck@fastmail.com
X-Originating-Location: US (198.54.135.118)
X-Originating-Platform: Linux Firefox 109
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 16 Feb 2023 21:08:24 -0800
Message-ID: <D36X.1676610504336239737.JLfk@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="flbCJksojUBctT7yrx1u"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Feb 2023 05:08:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59236

--flbCJksojUBctT7yrx1u
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Is there generally suggested advice regarding the importance of ECC on the =
build computer? I'm very new to Yocto so I'm not sure if there is a chance =
the final build image could experience some corruption due to flipped bits =
in RAM or if I'm totally overthinking this. It is also possible that Yocto =
does some kind of CRC checking of its own that makes this a non-issue. Any =
guidance would be appreciated. Thank you!

--flbCJksojUBctT7yrx1u
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Is there generally suggested advice regarding the importance of ECC on the =
build computer? I'm very new to Yocto so I'm not sure if there is a chance =
the final build image could experience some corruption due to flipped bits =
in RAM or if I'm totally overthinking this. It is also possible that Yocto =
does some kind of CRC checking of its own that makes this a non-issue. Any =
guidance would be appreciated. Thank you!

--flbCJksojUBctT7yrx1u--

