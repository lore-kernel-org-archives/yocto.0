Return-Path: <gary@missionsecure.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC74DECAAD5
	for <webhook@archiver.kernel.org>; Fri,  2 Sep 2022 15:38:56 +0000 (UTC)
Subject: Zeus: Python 3.7 patch for threading.py memory leak
To: yocto@lists.yoctoproject.org
From: "Gary Huband" <gary@missionsecure.com>
X-Originating-Location: Charlottesville, Virginia, US (216.197.64.240)
X-Originating-Platform: Linux Firefox 104
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 02 Sep 2022 08:38:48 -0700
Message-ID: <iHzP.1662133128710201480.er3Y@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="n16MlazifVmREPZvdpOo"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 02 Sep 2022 15:38:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57972

--n16MlazifVmREPZvdpOo
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm using Yocto Zeus and found that there is a memory leak in Python 3.7 th=
reading.py

https://github.com/python/cpython/commit/c10c2ec7a0e06975e8010c56c9c3270f8e=
a322ec
As far as I know, this was not fixed until Python 3.9.
What is the easiest way to incorporate this fix into Zeus?=C2=A0 Create a p=
atch with devtool?=C2=A0 Upgrade Python to at least 3.9?

--n16MlazifVmREPZvdpOo
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I'm using Yocto Zeus and found that there is a memory leak in Python 3.7=
 threading.py</p>
<p><a href=3D"https://github.com/python/cpython/commit/c10c2ec7a0e06975e801=
0c56c9c3270f8ea322ec" target=3D"_blank" rel=3D"noopener">https://github.com=
/python/cpython/commit/c10c2ec7a0e06975e8010c56c9c3270f8ea322ec</a><br />As=
 far as I know, this was not fixed until Python 3.9.<br />What is the easie=
st way to incorporate this fix into Zeus?&nbsp; Create a patch with devtool=
?&nbsp; Upgrade Python to at least 3.9?</p>

--n16MlazifVmREPZvdpOo--

