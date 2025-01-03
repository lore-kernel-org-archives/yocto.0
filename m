Return-Path: <thejas.raj@mindteck.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09780E77188
	for <webhook@archiver.kernel.org>; Fri,  3 Jan 2025 06:26:44 +0000 (UTC)
Subject: do_package_qa error regarding libGL.so.1()(64bit) dependency #kirkstone #sdk #yocto
To: yocto@lists.yoctoproject.org
From: thejas.raj@mindteck.com
X-Originating-Location: Bengaluru, Karnataka, IN (14.142.4.2)
X-Originating-Platform: Linux Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 02 Jan 2025 22:26:32 -0800
Message-ID: <gCbn.1735885592927614865.X1IH@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="pbFgQhCfHFB0gSPpNwyU"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Jan 2025 06:26:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64493

--pbFgQhCfHFB0gSPpNwyU
Content-Type: multipart/alternative; boundary="oQvSFrryG6CsccyT3E16"

--oQvSFrryG6CsccyT3E16
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hey,

I'm trying to build a package incorporating a custom meta layer for incorpo=
rating pylon5 package containing the bin, lib, include files.
During the build's do_package_qa, this error pops up :

ERROR: pylon-trial-1.0-r0 do_package_qa: QA Issue: /opt/pylon5/bin/platform=
s/libqxcb.so contained in package pylon-trial requires libGL.so.1()(64bit),=
 but no providers found in RDEPENDS:pylon-trial? [file-rdeps]
ERROR: pylon-trial-1.0-r0 do_package_qa: Fatal QA errors were found, failin=
g task.

FYI, I'm using the kirkstone version and I've attached the recipe for your =
reference

Thanks in advance

--oQvSFrryG6CsccyT3E16
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hey,</div>
<div>&nbsp;</div>
<div>I'm trying to build a package incorporating a custom meta layer for in=
corporating pylon5 package containing the bin, lib, include files.</div>
<div>During the build's do_package_qa, this error pops up :</div>
<div>&nbsp;</div>
<div><span style=3D"font-family: 'courier new', courier;">ERROR: pylon-tria=
l-1.0-r0 do_package_qa: QA Issue: /opt/pylon5/bin/platforms/libqxcb.so cont=
ained in package pylon-trial requires libGL.so.1()(64bit), but no providers=
 found in RDEPENDS:pylon-trial? [file-rdeps]</span><br /><span style=3D"fon=
t-family: 'courier new', courier;">ERROR: pylon-trial-1.0-r0 do_package_qa:=
 Fatal QA errors were found, failing task.</span><br /><br /><span style=3D=
"font-family: 'courier new', courier;"></span></div>
<div>FYI, I'm using the kirkstone version and I've attached the recipe for =
your reference</div>
<div>&nbsp;</div>
<div>Thanks in advance</div>

--oQvSFrryG6CsccyT3E16--

--pbFgQhCfHFB0gSPpNwyU
Content-Type: application/octet-stream; name="pylon-trial.bb"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="pylon-trial.bb"

U1VNTUFSWSA9ICJweWxvbiByZWNpcGUiCkRFU0NSSVBUSU9OID0gIlJlY2lwZSBjcmVhdGVkIGJ5
IGJpdGJha2UtbGF5ZXJzIgpMSUNFTlNFID0gIkNMT1NFRCIKClNSQ19VUkk9ImZpbGU6Ly9weWxv
blNESy01LjAuMTIuMTE4MjkteDg2XzY0LnRhci5neiIKIApTUkNfVVJJW21kNXN1bV09IjVkZTlj
MzNiOGRjMDRmOTFhODU2MDgxNGY2ZjMzZjg1IgpTUkNfVVJJW3NoYTI1NnN1bV09IjM3YzkxYWJl
NTQxMzNhMjMyYzk0YTUwMzE2MDQ0ZWJmNGQ1MDYxMTNhOWJkMjFhOTRiOGEzYmJjMmMxZGU4ZjAi
CiAKUyA9ICIke1dPUktESVJ9IgoKZG9faW5zdGFsbCgpIHsKICAgIAoKICAgIAlpbnN0YWxsIC1k
ICR7RH0vb3B0CiAgICAJY3AgLXJmICR7U30vcHlsb241ICR7RH0vb3B0IAogICAgICAgIAogICAg
ICAgIAoKfQoKSU5ISUJJVF9QQUNLQUdFX1NUUklQID0gIjEiCklOSElCSVRfU1lTUk9PVF9TVFJJ
UCA9ICIxIgpTT0xJQlMgPSAiLnNvIgpGSUxFU19TT0xJQlNERVYgPSAiIgpJTlNBTkVfU0tJUDok
e1BOfSArPSAiIGFscmVhZHktc3RyaXBwZWQgbGRmbGFncyBkZXYtZGVwcyBkZXYtc28iCgpERVBF
TkRTID0gImdsaWJjIgpSREVQRU5EUzoke1BOfSArPSAiIFwKICAgIGxpYmdsdm5kIFwKICAgIGxp
YnNtIFwKICAgIGxpYmljZSBcCiAgICBsaWJ4Y2IgXAogICAgbGlieHJlbmRlciBcCiAgICBsaWJ4
ZXh0IFwKICAgIGxpYngxMSBcCiAgICBmb250Y29uZmlnIFwKICAgIGZyZWV0eXBlIFwKIgoKRklM
RVM6JHtQTn0gKz0gIi9vcHQvKiIK

--pbFgQhCfHFB0gSPpNwyU--

