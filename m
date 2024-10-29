Return-Path: <freddy.boman@bastec.se>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B68AFD2AB24
	for <webhook@archiver.kernel.org>; Tue, 29 Oct 2024 11:48:51 +0000 (UTC)
Subject: Building SDK fails after update to scarthgap
To: yocto@lists.yoctoproject.org
From: freddy.boman@bastec.se
X-Originating-Location: Johanneshov, Stockholm County, SE (98.128.186.98)
X-Originating-Platform: Windows Firefox 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 29 Oct 2024 04:48:41 -0700
Message-ID: <P18L.1730202521303663000.RHHQ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="IzKRnRZOw02c3t7WH0Io"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Oct 2024 11:48:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64166

--IzKRnRZOw02c3t7WH0Io
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello everyone.
After updating our internal distro to scarthgap I am encountering the follo=
wing when trying to build the sdk.

nativesdk-qemu-8.2.2.imx-r0 do_compile: oe_runmake failed
.
.
[87/4472] Compiling C object libcommon.fa.p/hw_display_virtio-gpu.c.o
| FAILED: libcommon.fa.p/hw_display_virtio-gpu.c.o
.
.
../hw/display/virtio-gpu.c:36:10: fatal error: virglrenderer.h: No such fil=
e or directory
| =C2=A0 =C2=A036 | #include <virglrenderer.h>
| =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~=
~
| compilation terminated.

Building the image as normal (not populate_sdk) works fine.
Tried adding libvirglrenderer-dev on host but that made no difference.
Building on jammy.

I have no actual need for virgl so removing that from qemu would be a simpl=
e solution.
So if anyone knows how to either fix the problem och get rid of virgl total=
ly I would be most grateful.

/Freddy

--IzKRnRZOw02c3t7WH0Io
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello everyone.</div>
<div>After updating our internal distro to scarthgap I am encountering the =
following when trying to build the sdk.</div>
<div>&nbsp;</div>
<div>&nbsp;nativesdk-qemu-8.2.2.imx-r0 do_compile: oe_runmake failed</div>
<div>.</div>
<div>.</div>
<div>&nbsp;[87/4472] Compiling C object libcommon.fa.p/hw_display_virtio-gp=
u.c.o<br />| FAILED: libcommon.fa.p/hw_display_virtio-gpu.c.o</div>
<div>.</div>
<div>.</div>
<div>&nbsp;../hw/display/virtio-gpu.c:36:10: fatal error: virglrenderer.h: =
No such file or directory<br />| &nbsp; &nbsp;36 | #include &lt;virglrender=
er.h&gt;<br />| &nbsp; &nbsp; &nbsp; | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^~=
~~~~~~~~~~~~~~~<br />| compilation terminated.</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>Building the image as normal (not populate_sdk) works fine.</div>
<div>Tried adding libvirglrenderer-dev on host but that made no difference.=
</div>
<div>Building on jammy.</div>
<div>&nbsp;</div>
<div>I have no actual need for virgl so removing that from qemu would be a =
simple solution.</div>
<div>So if anyone knows how to either fix the problem och get rid of virgl =
totally I would be most grateful.</div>
<div>&nbsp;</div>
<div>/Freddy</div>

--IzKRnRZOw02c3t7WH0Io--

