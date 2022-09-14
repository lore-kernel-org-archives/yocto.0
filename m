Return-Path: <mahendrasondagar08@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A3A8C6FA82
	for <webhook@archiver.kernel.org>; Wed, 14 Sep 2022 18:16:36 +0000 (UTC)
Subject: install: cannot create regular file Permission denied #dunfell
To: yocto@lists.yoctoproject.org
From: "Mahendra Sondagar" <mahendrasondagar08@gmail.com>
X-Originating-Location: Kosamba, Gujarat, IN (103.238.110.72)
X-Originating-Platform: Linux Firefox 93
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 14 Sep 2022 11:16:26 -0700
Message-ID: <OPcU.1663179386288137669.KD6c@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="jiuBxsZ2xdKU55MXLqY9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Sep 2022 18:16:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58042

--jiuBxsZ2xdKU55MXLqY9
Content-Type: multipart/alternative; boundary="zDvVVOINFYLPaWEdyCXH"

--zDvVVOINFYLPaWEdyCXH
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi.. there

Hope all are doing well

I'm working with the Yocto dunfell branch with the STM32MP1
My goal is to add the test.sh script in to the rootfs of the Yocto custom i=
mage (in to the bindir)

That's how, i have created the recipes file called "recipes-support"
Inside that, i have created "net-cfg" file
the files under net-cfg file at where, i have kept test.sh file
here is the tree structure

.
=E2=94=94=E2=94=80=E2=94=80 net-cfg
=E2=94=9C=E2=94=80=E2=94=80 files
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 test.sh
=E2=94=94=E2=94=80=E2=94=80 net-cfg_1.0.bb

I have installed the image with the custom-image.bb file as a
IMAGE_INSTALL +=3D "net-cfg"

The content of the net-cfg_1.0.bb are as follows
---------------------------------------------------------------------------=
-----------
SUMMARY=3D "Script files for the testing"
SRC_URI =3D " file://test.sh"

LICENSE =3D "CLOSED"

do_install() {
install -d ${D}${bindir}
install -m 0755 ${WORKDIR}/test.sh ${D}${bindir} /
}

FILES_${PN} +=3D "${bindir}/test.sh"

---------------------------------------------------------------------------=
-----------

During the baking the image, i got the error like *| install: cannot create=
 regular file '/test.sh': Permission denied*

I have attached the full error logs here

Can any one help me here to figure out the issue ?

Thanks
Mahendra

--zDvVVOINFYLPaWEdyCXH
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi.. there</p>
<p>Hope all are doing well <br /><br />I'm working with the Yocto dunfell b=
ranch with the STM32MP1<br />My goal is to add the test.sh script in to the=
 rootfs of the Yocto custom image (in to the bindir)<br /><br />That's how,=
 i have created the recipes file called "recipes-support"<br />Inside that,=
 i have created "net-cfg" file <br />the files under net-cfg file at where,=
 i have kept test.sh file <br />here is the tree structure <br /><br />.<br=
 />=E2=94=94=E2=94=80=E2=94=80 net-cfg<br />&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=
=94=80=E2=94=80 files<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=
=94=E2=94=80=E2=94=80 test.sh<br />&nbsp;&nbsp;&nbsp; =E2=94=94=E2=94=80=E2=
=94=80 net-cfg_1.0.bb<br /><br />I have installed the image with the custom=
-image.bb file as a <br />IMAGE_INSTALL +=3D "net-cfg"<br /><br />The conte=
nt of the net-cfg_1.0.bb are as follows <br />-----------------------------=
---------------------------------------------------------<br />SUMMARY=3D "=
Script files for the testing"<br />SRC_URI =3D " file://test.sh"<br /><br /=
>LICENSE =3D "CLOSED"<br /><br />do_install() {<br />&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; install -d ${D}${bindir}<br />&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; install -m 0755 ${WORKDIR}/test.sh ${D}${bindir} /<br />=
}<br /><br />FILES_${PN} +=3D "${bindir}/test.sh"<br /><br />--------------=
------------------------------------------------------------------------<br=
 /><br />During the baking the image, i got the error like<strong> | instal=
l: cannot create regular file '/test.sh': Permission denied</strong><br /><=
br />I have attached the full error logs here</p>
<p>Can any one help me here to figure out the issue ?<br /><br />Thanks <br=
 />Mahendra</p>

--zDvVVOINFYLPaWEdyCXH--

--jiuBxsZ2xdKU55MXLqY9
Content-Type: text/plain; name="error.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="error.txt"

TG9nIGRhdGEgZm9sbG93czoKfCBERUJVRzogRXhlY3V0aW5nIHB5dGhvbiBmdW5jdGlvbiBleHRl
bmRfcmVjaXBlX3N5c3Jvb3QKfCBOT1RFOiBEaXJlY3QgZGVwZW5kZW5jaWVzIGFyZSBbJy9ob21l
L21haGVuZHJhL1NUTTMyTVBVX3dvcmtzcGFjZS9EaWdpa2V5X1lvY3RvU2VyaWVzL0RpZ2lrZXlf
WW9jdG8vcG9reS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvcXVpbHQvcXVpbHQtbmF0aXZlXzAuNjYu
YmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS9tYWhlbmRyYS9TVE0zMk1QVV93b3Jrc3Bh
Y2UvRGlnaWtleV9Zb2N0b1Nlcmllcy9EaWdpa2V5X1lvY3RvL3Bva3kvbWV0YS9yZWNpcGVzLWNv
cmUvZ2xpYmMvZ2xpYmNfMi4zMS5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1YWw6bmF0
aXZlOi9ob21lL21haGVuZHJhL1NUTTMyTVBVX3dvcmtzcGFjZS9EaWdpa2V5X1lvY3RvU2VyaWVz
L0RpZ2lrZXlfWW9jdG8vcG9reS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvcGF0Y2gvcGF0Y2hfMi43
LjYuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS9tYWhlbmRyYS9TVE0zMk1QVV93b3Jr
c3BhY2UvRGlnaWtleV9Zb2N0b1Nlcmllcy9EaWdpa2V5X1lvY3RvL3Bva3kvbWV0YS9yZWNpcGVz
LWRldnRvb2xzL2djYy9nY2MtcnVudGltZV85LjMuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2
aXJ0dWFsOm5hdGl2ZTovaG9tZS9tYWhlbmRyYS9TVE0zMk1QVV93b3Jrc3BhY2UvRGlnaWtleV9Z
b2N0b1Nlcmllcy9EaWdpa2V5X1lvY3RvL3Bva3kvbWV0YS9yZWNpcGVzLWRldnRvb2xzL3BzZXVk
by9wc2V1ZG9fZ2l0LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAnL2hvbWUvbWFoZW5kcmEvU1RN
MzJNUFVfd29ya3NwYWNlL0RpZ2lrZXlfWW9jdG9TZXJpZXMvRGlnaWtleV9Zb2N0by9wb2t5L21l
dGEvcmVjaXBlcy1kZXZ0b29scy9nY2MvZ2NjLWNyb3NzXzkuMy5iYjpkb19wb3B1bGF0ZV9zeXNy
b290J10KfCBOT1RFOiBJbnN0YWxsZWQgaW50byBzeXNyb290OiBbXQp8IE5PVEU6IFNraXBwaW5n
IGFzIGFscmVhZHkgZXhpc3RzIGluIHN5c3Jvb3Q6IFsncXVpbHQtbmF0aXZlJywgJ2dsaWJjJywg
J3BhdGNoLW5hdGl2ZScsICdnY2MtcnVudGltZScsICdwc2V1ZG8tbmF0aXZlJywgJ2djYy1jcm9z
cy1hcm0nLCAnYXV0b21ha2UtbmF0aXZlJywgJ2xpYnRvb2wtbmF0aXZlJywgJ2F0dHItbmF0aXZl
JywgJ2F1dG9jb25mLW5hdGl2ZScsICdnbnUtY29uZmlnLW5hdGl2ZScsICdsaWJnY2MnLCAnbGlu
dXgtbGliYy1oZWFkZXJzJywgJ2xpYm1wYy1uYXRpdmUnLCAnbXBmci1uYXRpdmUnLCAnYmludXRp
bHMtY3Jvc3MtYXJtJywgJ3h6LW5hdGl2ZScsICd0ZXhpbmZvLWR1bW15LW5hdGl2ZScsICd6bGli
LW5hdGl2ZScsICdnbXAtbmF0aXZlJywgJ2ZsZXgtbmF0aXZlJywgJ2dldHRleHQtbWluaW1hbC1u
YXRpdmUnLCAnbTQtbmF0aXZlJ10KfCBERUJVRzogUHl0aG9uIGZ1bmN0aW9uIGV4dGVuZF9yZWNp
cGVfc3lzcm9vdCBmaW5pc2hlZAp8IERFQlVHOiBFeGVjdXRpbmcgc2hlbGwgZnVuY3Rpb24gZG9f
aW5zdGFsbAp8IGluc3RhbGw6IGNhbm5vdCBjcmVhdGUgcmVndWxhciBmaWxlICcvdGVzdC5zaCc6
IFBlcm1pc3Npb24gZGVuaWVkCnwgaW5zdGFsbDogb21pdHRpbmcgZGlyZWN0b3J5ICcvaG9tZS9t
YWhlbmRyYS9TVE0zMk1QVV93b3Jrc3BhY2UvRGlnaWtleV9Zb2N0b1Nlcmllcy9EaWdpa2V5X1lv
Y3RvL3Bva3kvYnVpbGQtbXAxL3RtcC93b3JrL2NvcnRleGE3dDJoZi1uZW9uLXZmcHY0LXBva3kt
bGludXgtZ251ZWFiaS9uZXQtY2ZnLzEuMC1yMC9pbWFnZS91c3IvYmluJwp8IFdBUk5JTkc6IGV4
aXQgY29kZSAxIGZyb20gYSBzaGVsbCBjb21tYW5kLgp8IEVSUk9SOiBFeGVjdXRpb24gb2YgJy9o
b21lL21haGVuZHJhL1NUTTMyTVBVX3dvcmtzcGFjZS9EaWdpa2V5X1lvY3RvU2VyaWVzL0RpZ2lr
ZXlfWW9jdG8vcG9reS9idWlsZC1tcDEvdG1wL3dvcmsvY29ydGV4YTd0MmhmLW5lb24tdmZwdjQt
cG9reS1saW51eC1nbnVlYWJpL25ldC1jZmcvMS4wLXIwL3RlbXAvcnVuLmRvX2luc3RhbGwuMTgy
NTInIGZhaWxlZCB3aXRoIGV4aXQgY29kZSAxCkVSUk9SOiBUYXNrICgvaG9tZS9tYWhlbmRyYS9T
VE0zMk1QVV93b3Jrc3BhY2UvRGlnaWtleV9Zb2N0b1Nlcmllcy9EaWdpa2V5X1lvY3RvL21ldGEt
Y3VzdG9tL3JlY2lwZXMtc3VwcG9ydC9uZXQtY2ZnL25ldC1jZmdfMS4wLmJiOmRvX2luc3RhbGwp
IGZhaWxlZCB3aXRoIGV4aXQgY29kZSAnMScKTk9URTogVGFza3MgU3VtbWFyeTogQXR0ZW1wdGVk
IDM3MTEgdGFza3Mgb2Ygd2hpY2ggMzcxMCBkaWRuJ3QgbmVlZCB0byBiZSByZXJ1biBhbmQgMSBm
YWlsZWQuCk5PVEU6IFRoZSBlcnJvcnMgZm9yIHRoaXMgYnVpbGQgYXJlIHN0b3JlZCBpbiAvaG9t
ZS9tYWhlbmRyYS9TVE0zMk1QVV93b3Jrc3BhY2UvRGlnaWtleV9Zb2N0b1Nlcmllcy9EaWdpa2V5
X1lvY3RvL3Bva3kvYnVpbGQtbXAxL3RtcC9sb2cvZXJyb3ItcmVwb3J0L2Vycm9yX3JlcG9ydF8y
MDIyMDkxNDE4MTM1OS50eHQKWW91IGNhbiBzZW5kIHRoZSBlcnJvcnMgdG8gYSByZXBvcnRzIHNl
cnZlciBieSBydW5uaW5nOgogIHNlbmQtZXJyb3ItcmVwb3J0IC9ob21lL21haGVuZHJhL1NUTTMy
TVBVX3dvcmtzcGFjZS9EaWdpa2V5X1lvY3RvU2VyaWVzL0RpZ2lrZXlfWW9jdG8vcG9reS9idWls
ZC1tcDEvdG1wL2xvZy9lcnJvci1yZXBvcnQvZXJyb3JfcmVwb3J0XzIwMjIwOTE0MTgxMzU5LnR4
dCBbLXMgc2VydmVyXQpOT1RFOiBUaGUgY29udGVudHMgb2YgdGhlc2UgbG9ncyB3aWxsIGJlIHBv
c3RlZCBpbiBwdWJsaWMgaWYgeW91IHVzZSB0aGUgYWJvdmUgY29tbWFuZCB3aXRoIHRoZSBkZWZh
dWx0IHNlcnZlci4gUGxlYXNlIGVuc3VyZSB5b3UgcmVtb3ZlIGFueSBpZGVudGlmeWluZyBvciBw
cm9wcmlldGFyeSBpbmZvcm1hdGlvbiB3aGVuIHByb21wdGVkIGJlZm9yZSBzZW5kaW5nLgoKU3Vt
bWFyeTogMSB0YXNrIGZhaWxlZDoKICAvaG9tZS9tYWhlbmRyYS9TVE0zMk1QVV93b3Jrc3BhY2Uv
RGlnaWtleV9Zb2N0b1Nlcmllcy9EaWdpa2V5X1lvY3RvL21ldGEtY3VzdG9tL3JlY2lwZXMtc3Vw
cG9ydC9uZXQtY2ZnL25ldC1jZmdfMS4wLmJiOmRvX2luc3RhbGwKU3VtbWFyeTogVGhlcmUgd2Vy
ZSAyIFdBUk5JTkcgbWVzc2FnZXMgc2hvd24uClN1bW1hcnk6IFRoZXJlIHdhcyAxIEVSUk9SIG1l
c3NhZ2Ugc2hvd24sIHJldHVybmluZyBhIG5vbi16ZXJvIGV4aXQgY29kZS4KCnJlYWwJMG0xOS42
ODFzCnVzZXIJMG0xLjM3M3MKc3lzCTBtMC4xOTlzCgo=

--jiuBxsZ2xdKU55MXLqY9--

