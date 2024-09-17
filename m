Return-Path: <naveenkumar.muthusamy@thalesgroup.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80106C3600E
	for <webhook@archiver.kernel.org>; Tue, 17 Sep 2024 11:01:48 +0000 (UTC)
Subject: creating recipe for python package pydantic_core, pyside2, shiboken2 #kernel #kirkstone #yocto
To: yocto@lists.yoctoproject.org
From: "MUTHUSAMY Naveenkumar" <naveenkumar.muthusamy@thalesgroup.com>
X-Originating-Location: US (136.226.245.83)
X-Originating-Platform: Windows Firefox 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 17 Sep 2024 04:01:47 -0700
Message-ID: <Qyiv.1726570907877570927.DyS2@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="DqjsgRqI32wkSaNmeO33"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Sep 2024 11:01:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63849

--DqjsgRqI32wkSaNmeO33
Content-Type: multipart/alternative; boundary="I1m1Gzyz65XJRe66fHuE"

--I1m1Gzyz65XJRe66fHuE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I am trying to add the below python packages to the Yocto image which we ar=
e creating for out custom board. I am able to see that packages is successf=
ully placed in /usr/lib.python3.10/site-packages.

The issue we are facing is that, when we try to import the pyside2 using im=
port pyside2, we get the import error

File "<stdin>", line 1, in <module>

File "/usr/lib/python3.10/site-packages/pyside2/__init__.py", line 107, in =
<module>

_setupQtDirectories()

File "/usr/lib/python3.10/site-packages/pyside2/__init__.py", line 58, in _=
setupQtDirectories

import shiboken2

File "/usr/lib/python3.10/site-packages/shiboken2/__init__.py", line 27, in=
 <module>

from .shiboken2 import *

ImportError: /usr/lib/python3.10/site-packages/shiboken2/shiboken2.abi3.so:=
 cannot open shared object file: No such file or directory

And also pydantic_core

import pydantic_core

File "/usr/lib/python3.10/site-packages/pydantic_core/__init__.py", line 6,=
 in <module>

from ._pydantic_core import (

ModuleNotFoundError: No module named 'pydantic_core._pydantic_core'

I have added my recipe files with this. Kindly check and let me know the is=
sues and anything wrong

--I1m1Gzyz65XJRe66fHuE
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">Hi all,</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">I am trying to add the=
 below python packages to the Yocto image which we are creating for out cus=
tom board. I am able to see that packages is successfully placed in /usr/li=
b.python3.10/site-packages.</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">The issue we are facin=
g is that, when we try to import the pyside2 using import pyside2, we get t=
he import error =C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0 <span style=3D"=
color: #2e75b6;">File &#34;&lt;stdin&gt;&#34;, line 1, in &lt;module&gt;</s=
pan></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"color: =
#2e75b6;">=C2=A0 File &#34;/usr/lib/python3.10/site-packages/pyside2/__init=
__.py&#34;, line 107, in &lt;module&gt;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"color: =
#2e75b6;">=C2=A0=C2=A0=C2=A0 _setupQtDirectories()</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"color: =
#2e75b6;">=C2=A0 File &#34;/usr/lib/python3.10/site-packages/pyside2/__init=
__.py&#34;, line 58, in _setupQtDirectories</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"color: =
#2e75b6;">=C2=A0=C2=A0=C2=A0 import shiboken2</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"color: =
#2e75b6;">=C2=A0 File &#34;/usr/lib/python3.10/site-packages/shiboken2/__in=
it__.py&#34;, line 27, in &lt;module&gt;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"color: =
#2e75b6;">=C2=A0=C2=A0=C2=A0 from .shiboken2 import *</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"color: =
#2e75b6;">ImportError: /usr/lib/python3.10/site-packages/shiboken2/shiboken=
2.abi3.so: cannot open shared object file: No such file or directory</span>=
</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"color: =
#2e75b6;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">And also pydantic_core=
</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"color: =
#1f4e79;">=C2=A0=C2=A0=C2=A0 import pydantic_core</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"color: =
#1f4e79;">=C2=A0 File &#34;/usr/lib/python3.10/site-packages/pydantic_core/=
__init__.py&#34;, line 6, in &lt;module&gt;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"color: =
#1f4e79;">=C2=A0=C2=A0=C2=A0 from ._pydantic_core import (</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"color: =
#1f4e79;">ModuleNotFoundError: No module named &#39;pydantic_core._pydantic=
_core&#39;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"color: =
#1f4e79;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"color: =
#1f4e79;">I have added my recipe files with this. Kindly check and let me k=
now the issues and anything wrong<br/></span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
</div>

--I1m1Gzyz65XJRe66fHuE--

--DqjsgRqI32wkSaNmeO33
Content-Type: application/octet-stream; name="python3-pydantic-core_2.23.1.bb"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="python3-pydantic-core_2.23.1.bb"

ClNVTU1BUlkgPSAiQ29yZSBmdW5jdGlvbmFsaXR5IGZvciBQeWRhbnRpYyB2YWxpZGF0aW9uIGFu
ZCBzZXJpYWxpemF0aW9uIgpIT01FUEFHRSA9ICJOb25lIgoKTElDRU5TRSA9ICJDTE9TRUQiClNS
Q19VUkkgPSAiaHR0cHM6Ly9maWxlcy5weXRob25ob3N0ZWQub3JnL3BhY2thZ2VzL2E3LzAyLzdi
ODVhZTJjMzQ1MmU2YjlmNDNiODk0ODJkYzJhMmJhNzcxYzMxZDg2ZDkzYzJhNWEyNTA4NzBiMjQz
Yi9weWRhbnRpY19jb3JlLTIuMjMuMy1wcDMxMC1weXB5MzEwX3BwNzMtbWFueWxpbnV4XzJfMTdf
YWFyY2g2NC5tYW55bGludXgyMDE0X2FhcmNoNjQud2hsO2Rvd25sb2FkZmlsZW5hbWU9cHlkYW50
aWNfY29yZS0ke1BWfS56aXA7c3ViZGlyPSR7QlB9IgoKU1JDX1VSSVttZDVzdW1dID0gIjViNTZh
OTdjNDFkZDU2NzUwZmY5OGU1MzBmZDY3MzZjIgpTUkNfVVJJW3NoYTI1NnN1bV0gPSAiMGRkYTAy
OTBhNmY2MDg1MDQ4ODJkOWY3NjUwOTc1YjQ2NTFmZjkxYzg1NjczMzQxNzg5YTQ3NmIxMTU5ZjIx
MSIKCgpJTlNBTkVfU0tJUDoke1BOfSA9ICJsZGZsYWdzIgojSU5TQU5FX1NLSVA6JHtQTn0gKz0g
ImFyY2giIAojSU5TQU5FX1NLSVA6JHtQTn0gKz0gImZpbGUtcmRlcHMiCklOSElCSVRfUEFDS0FH
RV9TVFJJUCA9ICIxIgpJTkhJQklUX1NZU1JPT1RfU1RSSVAgPSAiMSIKSU5ISUJJVF9QQUNLQUdF
X0RFQlVHX1NQTElUID0gIjEiClNPTElCUyA9ICIuc28iCkZJTEVTX1NPTElCU0RFViA9ICIiCgpp
bmhlcml0IHB5dGhvbjMtZGlyIAoKZG9fdW5wYWNrW2RlcGVuZHNdICs9ICJ1bnppcC1uYXRpdmU6
ZG9fcG9wdWxhdGVfc3lzcm9vdCIKCldITF9CUE49IiR7QCBkLmdldFZhcignQlBOJykucmVwbGFj
ZShkLmdldFZhcignUFlUSE9OX1BOJykrJy0nLCAnJywgMSl9IgpXSExfQlA9IiR7QCBkLmdldFZh
cignQlAnKS5yZXBsYWNlKGQuZ2V0VmFyKCdQWVRIT05fUE4nKSsnLScsICcnLCAxKX0iCldITF9Q
Tj0iJHtAIGQuZ2V0VmFyKCdQTicpLnJlcGxhY2UoZC5nZXRWYXIoJ1BZVEhPTl9QTicpKyctJywg
JycsIDEpfSIKCkRFUEVORFMgKz0gInB5dGhvbjMtcGlwLW5hdGl2ZSIKCkZJTEVTOiR7UE59ICs9
ICIke2xpYmRpcn0vKiIKCmRvX2luc3RhbGwoKSB7CiAgICAjIENyZWF0ZSBkZXN0aW5hdGlvbiBk
aXJlY3RvcmllcwogICAgaW5zdGFsbCAtbSAwNzU1IC1kICR7RH0ke2xpYmRpcn0vJHtQWVRIT05f
RElSfS9zaXRlLXBhY2thZ2VzL3B5ZGFudGljX2NvcmUKICAgIGluc3RhbGwgLW0gMDc1NSAtZCAk
e0R9JHtsaWJkaXJ9LyR7UFlUSE9OX0RJUn0vc2l0ZS1wYWNrYWdlcy9weWRhbnRpY19jb3JlLTIu
MjMuMy5kaXN0LWluZm8KCiAgICAjIENvcHkgYWxsIGZpbGVzIGFuZCBkaXJlY3RvcmllcyByZWN1
cnNpdmVseSBmcm9tIHNvdXJjZSB0byBkZXN0aW5hdGlvbgogICAgY3AgLXIgJHtTfS9weWRhbnRp
Y19jb3JlLyogJHtEfSR7bGliZGlyfS8ke1BZVEhPTl9ESVJ9L3NpdGUtcGFja2FnZXMvcHlkYW50
aWNfY29yZS8KICAgIGNwIC1yICR7U30vcHlkYW50aWNfY29yZS0yLjIzLjMuZGlzdC1pbmZvLyog
JHtEfSR7bGliZGlyfS8ke1BZVEhPTl9ESVJ9L3NpdGUtcGFja2FnZXMvcHlkYW50aWNfY29yZS0y
LjIzLjMuZGlzdC1pbmZvLwp9CgoKCg==

--DqjsgRqI32wkSaNmeO33
Content-Type: application/octet-stream; name="python3-pyside2_5.15.14.bb"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="python3-pyside2_5.15.14.bb"

ClNVTU1BUlkgPSAiUHlzaWRlMiBGcmFtZXdvcmsgZm9yIFFUIGFwcGxpY2F0aW9uIGRldmVsb3Bt
ZW50IgpBVVRIT1IgPSAiUVQgZm9yIHB5dGhvbiIKTElDRU5TRSA9ICJDTE9TRUQiCkxJQ19GSUxF
U19DSEtTVU0gPSAiIgoKU1JDX1VSSSA9ICJodHRwczovL2ZpbGVzLnB5dGhvbmhvc3RlZC5vcmcv
cGFja2FnZXMvYzIvOWEvNzhjYThiYWRhNmNmNGQyNzk4ZTBjODIzYzAyNWM1OTA1MTdkNzQ0NDU4
MzdmNGViNTBiZmRkY2U4NzM3L1B5U2lkZTItNS4xNS4yLjEtNS4xNS4yLWNwMzUuY3AzNi5jcDM3
LmNwMzguY3AzOS5jcDMxMC1hYmkzLW1hbnlsaW51eDFfeDg2XzY0LndobDtkb3dubG9hZGZpbGVu
YW1lPXB5c2lkZTItJHtQVn0uemlwO3N1YmRpcj0ke0JQfSIKClNSQ19VUklbbWQ1c3VtXSA9ICI2
ZTdlM2U4N2U0YzNkYmY2NTBkNzk0OGEyODAwYmUyZSIKU1JDX1VSSVtzaGEyNTZzdW1dID0gIjIz
ODg2YzYzOTFlYmQ5MTZlODM1ZmExYjVhZTY2OTM4MDQ4NTA0ZmQzYTI5MzRhZTMxODlhOTZjZDVh
YzBiNDYiCgpJTlNBTkVfU0tJUDoke1BOfSA9ICJsZGZsYWdzIgpJTlNBTkVfU0tJUDoke1BOfSAr
PSAiYXJjaCIgCklOU0FORV9TS0lQOiR7UE59ICs9ICJmaWxlLXJkZXBzIgojSU5TQU5FX1NLSVA6
JHtQTn0gPSAiaW5zdGFsbGVkLXZzLXNoaXBwZWQiCklOSElCSVRfUEFDS0FHRV9TVFJJUCA9ICIx
IgpJTkhJQklUX1NZU1JPT1RfU1RSSVAgPSAiMSIKSU5ISUJJVF9QQUNLQUdFX0RFQlVHX1NQTElU
ID0gIjEiClNPTElCUyA9ICIuc28iCkZJTEVTX1NPTElCU0RFViA9ICIiCgppbmhlcml0IHB5dGhv
bjMtZGlyIAoKZG9fdW5wYWNrW2RlcGVuZHNdICs9ICJ1bnppcC1uYXRpdmU6ZG9fcG9wdWxhdGVf
c3lzcm9vdCIKCldITF9CUE49IiR7QCBkLmdldFZhcignQlBOJykucmVwbGFjZShkLmdldFZhcign
UFlUSE9OX1BOJykrJy0nLCAnJywgMSl9IgpXSExfQlA9IiR7QCBkLmdldFZhcignQlAnKS5yZXBs
YWNlKGQuZ2V0VmFyKCdQWVRIT05fUE4nKSsnLScsICcnLCAxKX0iCldITF9QTj0iJHtAIGQuZ2V0
VmFyKCdQTicpLnJlcGxhY2UoZC5nZXRWYXIoJ1BZVEhPTl9QTicpKyctJywgJycsIDEpfSIKCkRF
UEVORFMgKz0gInB5dGhvbjMtcGlwLW5hdGl2ZSIKCkZJTEVTOiR7UE59ICs9ICIke2xpYmRpcn0v
KiIKCgpkb19pbnN0YWxsKCkgewoKICAjIENyZWF0ZSBkZXN0aW5hdGlvbiBkaXJlY3Rvcmllcwog
ICAgaW5zdGFsbCAtbSAwNzU1IC1kICR7RH0ke2xpYmRpcn0vJHtQWVRIT05fRElSfS9zaXRlLXBh
Y2thZ2VzL3B5c2lkZTIKICAgIGluc3RhbGwgLW0gMDc1NSAtZCAke0R9JHtsaWJkaXJ9LyR7UFlU
SE9OX0RJUn0vc2l0ZS1wYWNrYWdlcy9weXNpZGUyLTUuMTUuMi4xLmRpc3QtaW5mbwogICAgCiAg
ICBjcCAtciAke1N9L1B5U2lkZTIvKiAke0R9JHtsaWJkaXJ9LyR7UFlUSE9OX0RJUn0vc2l0ZS1w
YWNrYWdlcy9weXNpZGUyLwogICAgY3AgLXIgJHtTfS9QeVNpZGUyLTUuMTUuMi4xLmRpc3QtaW5m
by8qICR7RH0ke2xpYmRpcn0vJHtQWVRIT05fRElSfS9zaXRlLXBhY2thZ2VzL3B5c2lkZTItNS4x
NS4yLjEuZGlzdC1pbmZvLwp9Cgo=

--DqjsgRqI32wkSaNmeO33
Content-Type: application/octet-stream; name="python3-shiboken2_5.15.2.1.bb"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="python3-shiboken2_5.15.2.1.bb"

ClNVTU1BUlkgPSAiU2hpYm9rZW4yIEZyYW1ld29yayBmb3IgUVQgYXBwbGljYXRpb24gZGV2ZWxv
cG1lbnQiCkhPTUVQQUdFID0gImh0dHBzOi8vd3d3LnB5c2lkZS5vcmcvIgoKClNSQ19VUkkgPSAi
aHR0cHM6Ly9maWxlcy5weXRob25ob3N0ZWQub3JnL3BhY2thZ2VzL2E2LzBlL2MxOTUzYmIwOGY0
NWUwZjE3MDNlN2RjMTUzZTljOTRiYTMwNDJjMjgyZWJjZDk0Y2FkYTM4NWE5Y2RiMy9zaGlib2tl
bjItNS4xNS4yLjEtNS4xNS4yLWNwMzUuY3AzNi5jcDM3LmNwMzguY3AzOS5jcDMxMC1hYmkzLW1h
bnlsaW51eDFfeDg2XzY0LndobDtkb3dubG9hZGZpbGVuYW1lPXNoaWJva2VuMi0ke1BWfS56aXA7
c3ViZGlyPSR7QlB9IgoKCkxJQ0VOU0UgPSAiQ0xPU0VEIgojTElDX0ZJTEVTX0NIS1NVTSA9ICJm
aWxlOi8vJHtTfS9zaGlib2tlbjItNS4xNS4yLjEuZGlzdC1pbmZvL01FVEFEQVRBO21kNT05N2Fl
ODAxOWJjZjFhZTIwM2RkMWNlZmM0ZmIyMTJjNSIKClBZUElfUEFDS0FHRSA9ICJzaGlib2tlbjIi
CgpTUkNfVVJJW21kNXN1bV0gPSAiNTc5MmUwZGM0YzcyNGY1ZjQxNjYzOTcxZmRhM2E5NDYiClNS
Q19VUklbc2hhMjU2c3VtXSA9ICI2M2RlYmZjYzUzMWI2YTJiNDk4NWFhOWI3MTQzM2QyYWQzYmFj
NTQyYWNmZmM3MjljYzBlY2FhMzg1NDM5MGMwIgoKSU5TQU5FX1NLSVA6JHtQTn0gPSAibGRmbGFn
cyIKSU5TQU5FX1NLSVA6JHtQTn0gKz0gImFyY2giIApJTlNBTkVfU0tJUDoke1BOfSArPSAiZmls
ZS1yZGVwcyIKI0lOU0FORV9TS0lQOiR7UE59ID0gImluc3RhbGxlZC12cy1zaGlwcGVkIgpJTkhJ
QklUX1BBQ0tBR0VfU1RSSVAgPSAiMSIKSU5ISUJJVF9TWVNST09UX1NUUklQID0gIjEiCklOSElC
SVRfUEFDS0FHRV9ERUJVR19TUExJVCA9ICIxIgpTT0xJQlMgPSAiLnNvIgpGSUxFU19TT0xJQlNE
RVYgPSAiIgoKaW5oZXJpdCBweXRob24zLWRpciAKCmRvX3VucGFja1tkZXBlbmRzXSArPSAidW56
aXAtbmF0aXZlOmRvX3BvcHVsYXRlX3N5c3Jvb3QiCgpXSExfQlBOPSIke0AgZC5nZXRWYXIoJ0JQ
TicpLnJlcGxhY2UoZC5nZXRWYXIoJ1BZVEhPTl9QTicpKyctJywgJycsIDEpfSIKV0hMX0JQPSIk
e0AgZC5nZXRWYXIoJ0JQJykucmVwbGFjZShkLmdldFZhcignUFlUSE9OX1BOJykrJy0nLCAnJywg
MSl9IgpXSExfUE49IiR7QCBkLmdldFZhcignUE4nKS5yZXBsYWNlKGQuZ2V0VmFyKCdQWVRIT05f
UE4nKSsnLScsICcnLCAxKX0iCgpERVBFTkRTICs9ICJweXRob24zLXBpcC1uYXRpdmUiCgpGSUxF
Uzoke1BOfSArPSAiJHtsaWJkaXJ9LyoiCgoKZG9faW5zdGFsbCgpIHsKCiAgIyBDcmVhdGUgZGVz
dGluYXRpb24gZGlyZWN0b3JpZXMKICAgIGluc3RhbGwgLW0gMDc1NSAtZCAke0R9JHtsaWJkaXJ9
LyR7UFlUSE9OX0RJUn0vc2l0ZS1wYWNrYWdlcy9zaGlib2tlbjIKICAgIGluc3RhbGwgLW0gMDc1
NSAtZCAke0R9JHtsaWJkaXJ9LyR7UFlUSE9OX0RJUn0vc2l0ZS1wYWNrYWdlcy9zaGlib2tlbjIt
NS4xNS4yLjEuZGlzdC1pbmZvCiAgICAKICAgIGNwIC1yICR7U30vc2hpYm9rZW4yLyogJHtEfSR7
bGliZGlyfS8ke1BZVEhPTl9ESVJ9L3NpdGUtcGFja2FnZXMvc2hpYm9rZW4yLwogICAgY3AgLXIg
JHtTfS9zaGlib2tlbjItNS4xNS4yLjEuZGlzdC1pbmZvLyogJHtEfSR7bGliZGlyfS8ke1BZVEhP
Tl9ESVJ9L3NpdGUtcGFja2FnZXMvc2hpYm9rZW4yLTUuMTUuMi4xLmRpc3QtaW5mby8KfQoK

--DqjsgRqI32wkSaNmeO33--

