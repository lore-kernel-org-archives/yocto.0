Return-Path: <evinoth1206@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76DABC43334
	for <webhook@archiver.kernel.org>; Tue,  7 Jun 2022 10:36:50 +0000 (UTC)
Subject: Re: How to remove the python3 from Yocto SDK
To: yocto@lists.yoctoproject.org
From: "Vinothkumar Eswaran" <evinoth1206@gmail.com>
X-Originating-Location: =?utf-8?b?SGVpZGVuaGVpbSwgQmFkZW4tV8O8cnR0ZW1iZXJn?=
 =?utf-8?b?LCBERSAoNDYuNS4xMzkuMTAp?=
X-Originating-Platform: Windows Chrome 102
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 07 Jun 2022 03:36:41 -0700
References: 
 <CANNYZj_kJrXDCG7xnVVRhHvNpTFCkPFyayNBBVAga7zrhKuXKQ@mail.gmail.com>
In-Reply-To: 
 <CANNYZj_kJrXDCG7xnVVRhHvNpTFCkPFyayNBBVAga7zrhKuXKQ@mail.gmail.com>
Message-ID: <12370.1654598201864880141@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="glaOmsv8ZcbaZiOl28E6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jun 2022 10:36:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57285

--glaOmsv8ZcbaZiOl28E6
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks Alex for your reply. What kind of testing you mean ?

The problem is when other teams use Yocto sdk after sourcing it, python3 is=
 pointing to the one from SDK and not from the host. During the build for s=
ome analysis, the team require python modules which is not part of the stan=
dard yocto sdk. These python modules are already installed to the host. Bec=
ause of the PATH change, the build fails with no python modules found.=C2=
=A0The python modules the team use is customized ones and adding it to imag=
e is not an option here.

--glaOmsv8ZcbaZiOl28E6
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p style=3D"line-height: 1.42857;">Thanks Alex for your reply. What kind of=
 testing you mean ?</p>
<p style=3D"line-height: 1.42857;">The problem is when other teams use Yoct=
o sdk after sourcing it, python3 is pointing to the one from SDK and not fr=
om the host. During the build for some analysis, the team require python mo=
dules which is not part of the standard yocto sdk. These python modules are=
 already installed to the host. Because of the PATH change, the build fails=
 with no python modules found.&nbsp;The python modules the team use is cust=
omized ones and adding it to image is not an option here.</p>

--glaOmsv8ZcbaZiOl28E6--

