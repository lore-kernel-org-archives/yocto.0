Return-Path: <amolgore.allusr@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB0ECE776FD
	for <webhook@archiver.kernel.org>; Tue,  3 Oct 2023 19:13:25 +0000 (UTC)
Subject: Uart5 enable on Raspberry PI B  #raspberrypi
To: yocto@lists.yoctoproject.org
From: amolgore.allusr@gmail.com
X-Originating-Location: Pune, Maharashtra, IN (116.75.56.238)
X-Originating-Platform: Linux Firefox 118
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 03 Oct 2023 12:13:25 -0700
Message-ID: <oMgO.1696360405040212364.t3DF@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="yzzjy6AZmUERw0qqQkCx"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 19:13:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61224

--yzzjy6AZmUERw0qqQkCx
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I am looking for guidance on enabling uart5 on raspberrypi 4B board. I have=
 added ENABLE_UART =3D 1 in local.conf. I have successfully build kirkstone=
 branch and booted successfully. Even i am able to see the consol on defaul=
t uart channel.

I now=C2=A0 would like enable the urat5 on raspberry pi 4b and add simple c=
/python code to transmit test data through raspberry board. Mainly i am loo=
king for steps how to map this uart5 to tty , how to configure tty and How =
use tty to send data on uart5 channel.

Thank You,
Amol

--yzzjy6AZmUERw0qqQkCx
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />I am looking for guidance on enabling uart5 on raspberryp=
i 4B board. I have added ENABLE_UART =3D 1 in local.conf. I have successful=
ly build kirkstone branch and booted successfully. Even i am able to see th=
e consol on default uart channel.<br /><br />I now&nbsp; would like enable =
the urat5 on raspberry pi 4b and add simple c/python code to transmit test =
data through raspberry board. Mainly i am looking for steps how to map this=
 uart5 to tty , how to configure tty and How use tty to send data on uart5 =
channel.<br /><br />Thank You,<br />Amol

--yzzjy6AZmUERw0qqQkCx--

