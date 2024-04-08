Return-Path: <duy.dang.yw@renesas.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29BAFC67861
	for <webhook@archiver.kernel.org>; Mon,  8 Apr 2024 09:25:31 +0000 (UTC)
Subject: Any recommendation to make software layer Yocto Compatible?
To: yocto@lists.yoctoproject.org
From: "Duy" <duy.dang.yw@renesas.com>
X-Originating-Location: Singapore, SG (165.225.231.71)
X-Originating-Platform: Windows Chrome 122
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 08 Apr 2024 02:25:30 -0700
Message-ID: <vZmm.1712568330433528726.9xnh@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="KiwpSAySoT5KHJNbeEbZ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Apr 2024 09:25:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62900

--KiwpSAySoT5KHJNbeEbZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm currently trying to make my software layer Yocto compatible. Running yo=
cto-check-layer script is a convenient way.
But in practice, I found that for software layer, it is difficult to make i=
t pass test_signatures case. It requires to put the condition check to ever=
y variable or function appending in bbappend file. With a deep customizing =
software layer, it reduces code readability.
Can anyone share your experience in making a software layer Yocto compatibl=
e while keeping it easy to read?

Best regards,
Duy

--KiwpSAySoT5KHJNbeEbZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I'm currently trying to make my software layer Yocto compati=
ble. Running yocto-check-layer script is a convenient way.<br />But in prac=
tice, I found that for software layer, it is difficult to make it pass test=
_signatures case. It requires to put the condition check to every variable =
or function appending in bbappend file. With a deep customizing software la=
yer, it reduces code readability.<br />Can anyone share your experience in =
making a software layer Yocto compatible while keeping it easy to read?<br =
/><br />Best regards,<br />Duy

--KiwpSAySoT5KHJNbeEbZ--

