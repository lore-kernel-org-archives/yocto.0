Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E774DC433EF
	for <webhook@archiver.kernel.org>; Tue, 14 Dec 2021 07:13:44 +0000 (UTC)
Subject: libsdl2 virtual/nativesdk-libgles2 issue
To: yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (122.166.120.168)
X-Originating-Platform: Linux Chrome 95
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 13 Dec 2021 23:13:35 -0800
Message-ID: <qvTa.1639466015163538291.dcYp@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="YEqJsilf1J9EuCDiEUvA"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Dec 2021 07:13:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55573

--YEqJsilf1J9EuCDiEUvA
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,

I am facing a problem libsdl2 while building the core-image-base. Can anybo=
dy know this please suggest me.

NOTE: Resolving any missing task queue dependencies
ERROR: Nothing PROVIDES 'virtual/nativesdk-libgles2' (but virtual:nativesdk=
:/home/sateesh/sample-kde/openembedded-core/meta/recipes-graphics/libsdl2/l=
ibsdl2_2.0.12.bb DEPENDS on or otherwise requires it). Close matches:
virtual/nativesdk-libgl
virtual/nativesdk-libsdl
virtual/nativesdk-libsdl2
NOTE: Runtime target 'nativesdk-qemu' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['nativesdk-qemu', 'nativesdk-=
libsdl2', 'virtual/nativesdk-libgles2']
NOTE: Runtime target 'nativesdk-packagegroup-sdk-host' is unbuildable, remo=
ving...
Missing or unbuildable dependency chain was: ['nativesdk-packagegroup-sdk-h=
ost', 'nativesdk-qemu', 'nativesdk-libsdl2', 'virtual/nativesdk-libgles2']
ERROR: Required build target 'core-image-base' has no buildable providers.
Missing or unbuildable dependency chain was: ['core-image-base', 'nativesdk=
-packagegroup-sdk-host', 'nativesdk-qemu', 'nativesdk-libsdl2', 'virtual/na=
tivesdk-libgles2']

--
Regards,
Sateesh

--YEqJsilf1J9EuCDiEUvA
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,<br />&nbsp;<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;I am facing a problem libsdl2 while building the core-image-base. Can=
 anybody know this please suggest me.&nbsp;<br /><br />
<div>NOTE: Resolving any missing task queue dependencies</div>
<div>ERROR: Nothing PROVIDES 'virtual/nativesdk-libgles2' (but virtual:nati=
vesdk:/home/sateesh/sample-kde/openembedded-core/meta/recipes-graphics/libs=
dl2/libsdl2_2.0.12.bb DEPENDS on or otherwise requires it). Close matches:<=
/div>
<div>&nbsp; virtual/nativesdk-libgl</div>
<div>&nbsp; virtual/nativesdk-libsdl</div>
<div>&nbsp; virtual/nativesdk-libsdl2</div>
<div>NOTE: Runtime target 'nativesdk-qemu' is unbuildable, removing...</div=
>
<div>Missing or unbuildable dependency chain was: ['nativesdk-qemu', 'nativ=
esdk-libsdl2', 'virtual/nativesdk-libgles2']</div>
<div>NOTE: Runtime target 'nativesdk-packagegroup-sdk-host' is unbuildable,=
 removing...</div>
<div>Missing or unbuildable dependency chain was: ['nativesdk-packagegroup-=
sdk-host', 'nativesdk-qemu', 'nativesdk-libsdl2', 'virtual/nativesdk-libgle=
s2']</div>
<div>ERROR: Required build target 'core-image-base' has no buildable provid=
ers.</div>
<div>Missing or unbuildable dependency chain was: ['core-image-base', 'nati=
vesdk-packagegroup-sdk-host', 'nativesdk-qemu', 'nativesdk-libsdl2', 'virtu=
al/nativesdk-libgles2']</div>
<div>&nbsp;</div>
-- <br />Regards,<br />Sateesh

--YEqJsilf1J9EuCDiEUvA--

