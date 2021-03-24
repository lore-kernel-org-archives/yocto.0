Subject: Adding x86 machine to BSP layer for unit tests on host #rocko #sdk #native
To: yocto@lists.yoctoproject.org
From: bschaefer@pivotalcommware.com
X-Originating-Location: Seattle, Washington, US (104.156.106.29)
X-Originating-Platform: Windows Chrome 89
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 24 Mar 2021 16:40:40 -0700
Message-ID: <ESAd.1616629240565143682.5TJL@lists.yoctoproject.org>
X-Groupsio-MsgNum: 52850
Content-Type: multipart/mixed; boundary="f9KZJU5RXdZhSKC8rqqB"

--f9KZJU5RXdZhSKC8rqqB
Content-Type: multipart/alternative; boundary="oVkxl5EmmttiUmpmtvRw"

--oVkxl5EmmttiUmpmtvRw
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

Currently using Rocko to generate toolchains for ARM targets.

Our BSP layer that is able to build a toolchain for our target architectur=
e, ARM. I'd like to be able to add an x86 machine to this layer that genera=
tes an SDK our team can use to compile unit tests to run on our host machin=
es. Adding x86.conf to layer/conf/machine/x86.conf and setting up the envir=
onment seems to work successfully. I run the command "bitbake image-new -c =
populate_sdk" and things are going until gcc-runtime recipe. I get the foll=
owing error:

ERROR: gcc-runtime-7.3.0-r0 do_package: QA Issue: libmpx is listed in PACK=
AGES multiple times, this leads to packaging errors. [packages-list]

Does anyone have an idea of what may be going on? Attached find x86.conf f=
ile. Please let me know if I'm not taking the right steps to generate an SD=
K that can be used to compile our binaries for unit tests on our hosts.

Thanks!

--oVkxl5EmmttiUmpmtvRw
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />Currently using Rocko to generate toolchains for ARM targ=
ets.<br /><br />Our BSP layer that is able to build a toolchain for our tar=
get architecture, ARM. I'd like to be able to add an x86 machine to this la=
yer that generates an SDK our team can use to compile unit tests to run on =
our host machines. Adding x86.conf to layer/conf/machine/x86.conf and setti=
ng up the environment seems to work successfully. I run the command "bitbak=
e image-new -c populate_sdk" and things are going until gcc-runtime recipe.=
 I get the following error:<br />
<div>&nbsp;</div>
<div>ERROR: gcc-runtime-7.3.0-r0 do_package: QA Issue: libmpx is listed in=
 PACKAGES multiple times, this leads to packaging errors. [packages-list]</=
div>
<div>&nbsp;</div>
Does anyone have an idea of what may be going on? Attached find x86.conf f=
ile. Please let me know if I'm not taking the right steps to generate an SD=
K that can be used to compile our binaries for unit tests on our hosts.<br =
/><br />Thanks!

--oVkxl5EmmttiUmpmtvRw--

--f9KZJU5RXdZhSKC8rqqB
Content-Type: text/plain; name="x86.conf.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="x86.conf.txt"

I0BUWVBFOiBNYWNoaW5lDQojQE5BTUU6IEdlbmVyaWMgeDg2XzY0DQojQERFU0NSSVBUSU9OOiBN
YWNoaW5lIGNvbmZpZ3VyYXRpb24gZm9yIGdlbmVyaWMgeDg2XzY0ICg2NC1iaXQpIFBDcyBhbmQg
c2VydmVycy4gU3VwcG9ydHMgYSBtb2RlcmF0ZWx5IHdpZGUgcmFuZ2Ugb2YgZHJpdmVycyB0aGF0
IHNob3VsZCBib290IGFuZCBiZSAgICAgdXNhYmxlIG9uICJ0eXBpY2FsIiBoYXJkd2FyZS4NCg0K
REVGQVVMVFRVTkUgPz0gImNvcmUyLTY0Ig0KcmVxdWlyZSBjb25mL21hY2hpbmUvaW5jbHVkZS90
dW5lLWNvcmUyLmluYw0KDQpJTUFHRV9GU1RZUEVTID0gInRhci5neiINCg0KTUFDSElORV9GRUFU
VVJFUyArPSAieDg2Ig0K

--f9KZJU5RXdZhSKC8rqqB--
