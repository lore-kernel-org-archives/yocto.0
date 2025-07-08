Return-Path: <an_aire@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF689C83F0A
	for <webhook@archiver.kernel.org>; Tue,  8 Jul 2025 12:20:23 +0000 (UTC)
Subject: packages aren't added to eSDK sysroot
To: yocto@lists.yoctoproject.org
From: "Andre" <an_aire@yahoo.com>
X-Originating-Location: DE (91.217.199.10)
X-Originating-Platform: Windows Firefox 140
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 08 Jul 2025 05:20:18 -0700
Message-ID: <Wbln.1751977218969341818.0K3Y@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="lA5IcaUDbExQnPtISX4h"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Jul 2025 12:20:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65626

--lA5IcaUDbExQnPtISX4h
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I bumped into a strange problem during transition from dunfell to scarthgap=
.
On scarthgap, the packages added with IMAGE_INSTALL aren't present in eSDK =
sysroot though present in the standard SDK sysroot.
I need them in the sysroot of eSDK as it was on dunfell.

Similar issue was already reported ( https://lists.yoctoproject.org/g/yocto=
/topic/library_not_getting_added_to/90448012 ) by someone in 2022.

A simple test.
1) compile poky as is on scarthgap.
2) provide a recipe for "some-new-package" and edit local.conf:
IMAGE_INSTALL:append =3D "some-new-package"
3) generate SDK and eSDK with populate_sdk respectively populate_sdk_ext.
In result "some-new-package" is apparent in the sysroot of SDK and not appa=
rent in the sysroot of eSDK.

I haven't found any clue in docs. Dunfell and scarthgap are clearly giving =
different results for eSDK. Please advise. Thank you so much in advance!

--lA5IcaUDbExQnPtISX4h
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div>I bumped into a strange problem during transition from dunfell to scar=
thgap.<br />On scarthgap, the packages added with IMAGE_INSTALL aren't pres=
ent in eSDK sysroot though present in the standard SDK sysroot.<br />I need=
 them in the sysroot of eSDK as it was on dunfell.</div>
<div>&nbsp;</div>
<div>Similar issue was already <a href=3D"https://lists.yoctoproject.org/g/=
yocto/topic/library_not_getting_added_to/90448012" target=3D"_blank" rel=3D=
"noopener">reported</a> by someone in 2022.</div>
<div>&nbsp;</div>
<div>A simple test.<br />1) compile poky as is on scarthgap.<br />2) provid=
e a recipe for "some-new-package" and edit local.conf:</div>
<div>IMAGE_INSTALL:append =3D "some-new-package"<br />3) generate SDK and e=
SDK with populate_sdk respectively populate_sdk_ext.<br />In result "some-n=
ew-package" is apparent in the sysroot of SDK and not apparent in the sysro=
ot of eSDK.</div>
<div>&nbsp;</div>
<div>I haven't found any clue in docs. Dunfell and scarthgap are clearly gi=
ving different results for eSDK. Please advise. Thank you so much in advanc=
e!</div>
</div>

--lA5IcaUDbExQnPtISX4h--

