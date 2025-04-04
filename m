Return-Path: <robert.vanrooyen@multitracks.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D96DC36010
	for <webhook@archiver.kernel.org>; Fri,  4 Apr 2025 22:02:06 +0000 (UTC)
Subject: #bitbake #yocto Assistance with simple .bb file for compressed local file inclusion in rootfs
To: yocto@lists.yoctoproject.org
From: robert.vanrooyen@multitracks.com
X-Originating-Location: Vancouver, British Columbia, CA (170.203.207.14)
X-Originating-Platform: Windows Chrome 134
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 04 Apr 2025 15:01:58 -0700
Message-ID: <tgtz.1743804118728136318.wKQG@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="rktDZSIMbNxy7qADyBoP"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Apr 2025 22:02:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65108

--rktDZSIMbNxy7qADyBoP
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to install a .tgz file into the root file system via a .bb file=
 referencing a local "files" directory that contains the .tgz. After some r=
esearch and a bit of trial and error, I have a sanitized candidate .bb file=
 shown below. Unfortunately, it isn't working as expected in that the file =
does not get uncompressed nor is it copied to the appropriate location for =
distribution by bitbake to the rootfs. Any assistance on what is likely a t=
rivial exercise for seasoned Yocto developers would be greatly appreciated.=
 Note that I actually have to .tgz files that need to be installed, so if t=
he solution can include both of them rather than separate .bb files for eac=
h that would be great.

SUMMARY =3D "Summary"
DESCRIPTION =3D "Descriptioon"
LICENSE =3D "CLOSED"
SRC_URI =3D "file://test.tgz"
S =3D "${WORKDIR}/test"
do_install () {
install -d ${D}/usr/local/test
cp -r ${S}/* ${D}/usr/local/test
}
INSANE_SKIP:${PN} +=3D "already-stripped"
FILES:${PN} =3D "/usr/local/test/*"

Cheers,

Robert

--rktDZSIMbNxy7qADyBoP
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div>
<div>&nbsp;</div>
<div>I am trying to install a .tgz file into the root file system via a .bb=
 file referencing a local "files" directory that contains the .tgz. After s=
ome research and a bit of trial and error, I have a sanitized candidate .bb=
 file shown below. Unfortunately, it isn't working as expected in that the =
file does not get uncompressed nor is it copied to the appropriate location=
 for distribution by bitbake to the rootfs. Any assistance on what is likel=
y a trivial exercise for seasoned Yocto developers would be greatly appreci=
ated. Note that I actually have to .tgz files that need to be installed, so=
 if the solution can include both of them rather than separate .bb files fo=
r each that would be great.</div>
<div>&nbsp;</div>
<div>
<div>SUMMARY =3D "Summary"<br />DESCRIPTION =3D "Descriptioon"</div>
<div>LICENSE =3D "CLOSED"</div>
<div>SRC_URI =3D "file://test.tgz"</div>
<div>S =3D "${WORKDIR}/test"</div>
<div>do_install () {<br />&nbsp; &nbsp; install -d ${D}/usr/local/test<br /=
>&nbsp; &nbsp; cp -r ${S}/* ${D}/usr/local/test<br />}</div>
<div>INSANE_SKIP:${PN} +=3D "already-stripped"</div>
<div>FILES:${PN} =3D "/usr/local/test/*"</div>
</div>
<div>&nbsp;</div>
<div>Cheers,</div>
<div>&nbsp;</div>
<div>Robert</div>

--rktDZSIMbNxy7qADyBoP--

