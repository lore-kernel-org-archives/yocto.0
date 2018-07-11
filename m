Return-Path: <Lukasz.Zemla@woodward.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59465E00DF0; Wed, 11 Jul 2018 12:48:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [204.27.169.37 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1808 seconds by postgrey-1.32 at yocto-www;
	Wed, 11 Jul 2018 12:48:55 PDT
Received: from MEGOut2.woodward.com (megout2.woodward.com [204.27.169.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 967EEE0044F
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2018 12:48:55 -0700 (PDT)
Received: from RKFDHC1.woodward.com (unknown [10.1.100.158]) by
	MEGOut2.woodward.com with smtp
	id 2a84_105c_8fc5bdff_b0f9_4214_a347_7d9f52842050;
	Wed, 11 Jul 2018 14:18:46 -0500
Received: from COIL-ExMb1.woodward.com (10.51.100.64) by RKFDHC1.woodward.com
	(10.1.100.158) with Microsoft SMTP Server (TLS) id 8.3.485.1;
	Wed, 11 Jul 2018 14:16:12 -0500
Received: from KempHC2.woodward.com (10.25.100.52) by COIL-ExMb1.woodward.com
	(10.51.100.64) with Microsoft SMTP Server (TLS) id 15.0.1263.5;
	Wed, 11 Jul 2018 14:16:12 -0500
Received: from KempMail2.woodward.com ([169.254.1.139]) by
	KempHC2.woodward.com ([172.20.1.2]) with mapi; Wed, 11 Jul 2018 21:16:11
	+0200
From: Lukasz Zemla <Lukasz.Zemla@woodward.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 11 Jul 2018 21:16:09 +0200
Thread-Topic: How to split rootfs image?
Thread-Index: AdQZS5X0tXCQjx8sQmGik2SID2V+Eg==
Message-ID: <CE2E43470FE5444A811B580382FE5EDF4C405D0DFA@KEMPMAIL2.woodward.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Mailman-Approved-At: Sun, 15 Jul 2018 12:23:35 -0700
Subject: How to split rootfs image?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 11 Jul 2018 19:48:56 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CE2E43470FE5444A811B580382FE5EDF4C405D0DFAKEMPMAIL2wood_"

--_000_CE2E43470FE5444A811B580382FE5EDF4C405D0DFAKEMPMAIL2wood_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
X-NAIMIME-Disclaimer: 1
X-NAIMIME-Modified: 1

Dear All,



Because of some formal reasons, we would like to split our rootfs image i=
nto 2 parts:

1. base system - to be reused between different project variants, typical=
 rootfs content.

2. application/data - less critical application, configuration, data, log=
s.



How to generate in Yocto application/data image(2)?

It is about generation of empty image containing only requested packages,=
 like Package-A, Package-B...



We tried following:



inherit image

IMAGE_FEATURES =3D ""

DISTRO_FEATURES =3D ""



IMAGE_INSTALL =3D " \

               Package-A \

               Package-B \

               "

IMAGE_FSTYPES =3D "ubi tar.gz"



But it produces classical rootfs image with (unwanted): bin, boot, etc, l=
ib... We'd prefer to have it built in an efficient way, so we'd like to a=
void generating full image and then removing files by hand in postprocess=
 command.



Thank you in advance,

Lukasz



***=0D
The information in this email is confidential and intended solely for the=
 individual or entity to whom it is addressed.  If you have received this=
 email in error please notify the sender by return e-mail, delete this em=
ail, and refrain from any disclosure or action based on the information.=0D
***

--_000_CE2E43470FE5444A811B580382FE5EDF4C405D0DFAKEMPMAIL2wood_
Content-Type: text/HTML;
  charset="utf-8"
Content-Transfer-Encoding: base64
X-NAIMIME-Disclaimer: 1
X-NAIMIME-Modified: 1

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+PGhlYWQ+PE1FVEEgSFRUUC1FUVVJVj0iQ29udGVudC1UeXBlIiBDT05U
RU5UPSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9dXMtYXNjaWkiPjxtZXRhIG5hbWU9R2VuZXJhdG9yIGNv
bnRlbnQ9Ik1pY3Jvc29mdCBXb3JkIDE1IChmaWx0ZXJlZCBtZWRpdW0pIj48c3R5bGU+PCEtLQov
KiBGb250IERlZmluaXRpb25zICovCkBmb250LWZhY2UKCXtmb250LWZhbWlseToiQ2FtYnJpYSBN
YXRoIjsKCXBhbm9zZS0xOjIgNCA1IDMgNSA0IDYgMyAyIDQ7fQpAZm9udC1mYWNlCgl7Zm9udC1m
YW1pbHk6Q2FsaWJyaTsKCXBhbm9zZS0xOjIgMTUgNSAyIDIgMiA0IDMgMiA0O30KLyogU3R5bGUg
RGVmaW5pdGlvbnMgKi8KcC5Nc29Ob3JtYWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbAoJ
e21hcmdpbjowY207CgltYXJnaW4tYm90dG9tOi4wMDAxcHQ7Cglmb250LXNpemU6MTEuMHB0OwoJ
Zm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7Cgltc28tZmFyZWFzdC1sYW5ndWFnZTpF
Ti1VUzt9CmE6bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsKCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7
Cgljb2xvcjojMDU2M0MxOwoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9CmE6dmlzaXRlZCwg
c3Bhbi5Nc29IeXBlcmxpbmtGb2xsb3dlZAoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsKCWNvbG9y
OiM5NTRGNzI7Cgl0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO30KcC5Nc29QbGFpblRleHQsIGxp
Lk1zb1BsYWluVGV4dCwgZGl2Lk1zb1BsYWluVGV4dAoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsK
CW1zby1zdHlsZS1saW5rOiJQbGFpbiBUZXh0IENoYXIiOwoJbWFyZ2luOjBjbTsKCW1hcmdpbi1i
b3R0b206LjAwMDFwdDsKCWZvbnQtc2l6ZToxMS4wcHQ7Cglmb250LWZhbWlseToiQ2FsaWJyaSIs
c2Fucy1zZXJpZjsKCW1zby1mYXJlYXN0LWxhbmd1YWdlOkVOLVVTO30Kc3Bhbi5FbWFpbFN0eWxl
MTcKCXttc28tc3R5bGUtdHlwZTpwZXJzb25hbC1jb21wb3NlOwoJZm9udC1mYW1pbHk6IkNhbGli
cmkiLHNhbnMtc2VyaWY7Cgljb2xvcjp3aW5kb3d0ZXh0O30Kc3Bhbi5QbGFpblRleHRDaGFyCgl7
bXNvLXN0eWxlLW5hbWU6IlBsYWluIFRleHQgQ2hhciI7Cgltc28tc3R5bGUtcHJpb3JpdHk6OTk7
Cgltc28tc3R5bGUtbGluazoiUGxhaW4gVGV4dCI7Cglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fu
cy1zZXJpZjt9Ci5Nc29DaHBEZWZhdWx0Cgl7bXNvLXN0eWxlLXR5cGU6ZXhwb3J0LW9ubHk7Cglm
b250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsKCW1zby1mYXJlYXN0LWxhbmd1YWdlOkVO
LVVTO30KQHBhZ2UgV29yZFNlY3Rpb24xCgl7c2l6ZTo2MTIuMHB0IDc5Mi4wcHQ7CgltYXJnaW46
NzAuODVwdCA3MC44NXB0IDcwLjg1cHQgNzAuODVwdDt9CmRpdi5Xb3JkU2VjdGlvbjEKCXtwYWdl
OldvcmRTZWN0aW9uMTt9Ci0tPjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+CjxvOnNo
YXBlZGVmYXVsdHMgdjpleHQ9ImVkaXQiIHNwaWRtYXg9IjEwMjYiIC8+CjwveG1sPjwhW2VuZGlm
XS0tPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPgo8bzpzaGFwZWxheW91dCB2OmV4dD0iZWRpdCI+
CjxvOmlkbWFwIHY6ZXh0PSJlZGl0IiBkYXRhPSIxIiAvPgo8L286c2hhcGVsYXlvdXQ+PC94bWw+
PCFbZW5kaWZdLS0+PC9oZWFkPjxib2R5IGxhbmc9UEwgbGluaz0iIzA1NjNDMSIgdmxpbms9IiM5
NTRGNzIiPjxkaXYgY2xhc3M9V29yZFNlY3Rpb24xPjxwIGNsYXNzPU1zb1BsYWluVGV4dD48c3Bh
biBsYW5nPUVOLVVTPkRlYXIgQWxsLDxvOnA+PC9vOnA+PC9zcGFuPjwvcD48cCBjbGFzcz1Nc29Q
bGFpblRleHQ+PHNwYW4gbGFuZz1FTi1VUz48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+PHAg
Y2xhc3M9TXNvUGxhaW5UZXh0PjxzcGFuIGxhbmc9RU4tVVM+QmVjYXVzZSBvZiBzb21lIGZvcm1h
bCByZWFzb25zLCB3ZSB3b3VsZCBsaWtlIHRvIHNwbGl0IG91ciByb290ZnMgaW1hZ2UgaW50byAy
IHBhcnRzOiA8bzpwPjwvbzpwPjwvc3Bhbj48L3A+PHAgY2xhc3M9TXNvUGxhaW5UZXh0PjxzcGFu
IGxhbmc9RU4tVVM+MS4gYmFzZSBzeXN0ZW0gLSB0byBiZSByZXVzZWQgYmV0d2VlbiBkaWZmZXJl
bnQgcHJvamVjdCB2YXJpYW50cywgdHlwaWNhbCByb290ZnMgY29udGVudC4gPG86cD48L286cD48
L3NwYW4+PC9wPjxwIGNsYXNzPU1zb1BsYWluVGV4dD48c3BhbiBsYW5nPUVOLVVTPjIuIGFwcGxp
Y2F0aW9uL2RhdGEgLSBsZXNzIGNyaXRpY2FsIGFwcGxpY2F0aW9uLCBjb25maWd1cmF0aW9uLCBk
YXRhLCBsb2dzLjxvOnA+PC9vOnA+PC9zcGFuPjwvcD48cCBjbGFzcz1Nc29QbGFpblRleHQ+PHNw
YW4gbGFuZz1FTi1VUz48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+PHAgY2xhc3M9TXNvUGxh
aW5UZXh0PjxzcGFuIGxhbmc9RU4tVVM+SG93IHRvIGdlbmVyYXRlIGluIFlvY3RvIGFwcGxpY2F0
aW9uL2RhdGEgaW1hZ2UoMik/IDxvOnA+PC9vOnA+PC9zcGFuPjwvcD48cCBjbGFzcz1Nc29QbGFp
blRleHQ+PHNwYW4gbGFuZz1FTi1VUz5JdCBpcyBhYm91dCBnZW5lcmF0aW9uIG9mIGVtcHR5IGlt
YWdlIGNvbnRhaW5pbmcgb25seSByZXF1ZXN0ZWQgcGFja2FnZXMsIGxpa2UgUGFja2FnZS1BLCBQ
YWNrYWdlLUIuLi48bzpwPjwvbzpwPjwvc3Bhbj48L3A+PHAgY2xhc3M9TXNvUGxhaW5UZXh0Pjxz
cGFuIGxhbmc9RU4tVVM+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPjxwIGNsYXNzPU1zb1Bs
YWluVGV4dD48c3BhbiBsYW5nPUVOLVVTPldlIHRyaWVkIGZvbGxvd2luZzogPG86cD48L286cD48
L3NwYW4+PC9wPjxwIGNsYXNzPU1zb1BsYWluVGV4dD48c3BhbiBsYW5nPUVOLVVTPjxvOnA+Jm5i
c3A7PC9vOnA+PC9zcGFuPjwvcD48cCBjbGFzcz1Nc29QbGFpblRleHQ+PHNwYW4gbGFuZz1FTi1V
Uz5pbmhlcml0IGltYWdlPG86cD48L286cD48L3NwYW4+PC9wPjxwIGNsYXNzPU1zb1BsYWluVGV4
dD48c3BhbiBsYW5nPUVOLVVTPklNQUdFX0ZFQVRVUkVTID0gJnF1b3Q7JnF1b3Q7IDxvOnA+PC9v
OnA+PC9zcGFuPjwvcD48cCBjbGFzcz1Nc29QbGFpblRleHQ+PHNwYW4gbGFuZz1FTi1VUz5ESVNU
Uk9fRkVBVFVSRVMgPSAmcXVvdDsmcXVvdDsgPG86cD48L286cD48L3NwYW4+PC9wPjxwIGNsYXNz
PU1zb1BsYWluVGV4dD48c3BhbiBsYW5nPUVOLVVTPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwv
cD48cCBjbGFzcz1Nc29QbGFpblRleHQ+PHNwYW4gbGFuZz1FTi1VUz5JTUFHRV9JTlNUQUxMID0g
JnF1b3Q7IFw8bzpwPjwvbzpwPjwvc3Bhbj48L3A+PHAgY2xhc3M9TXNvUGxhaW5UZXh0PjxzcGFu
IGxhbmc9RU4tVVM+Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IFBhY2thZ2UtQSBcPG86cD48
L286cD48L3NwYW4+PC9wPjxwIGNsYXNzPU1zb1BsYWluVGV4dD48c3BhbiBsYW5nPUVOLVVTPiZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyBQYWNrYWdlLUIgXDxvOnA+PC9vOnA+PC9zcGFuPjwv
cD48cCBjbGFzcz1Nc29QbGFpblRleHQ+PHNwYW4gbGFuZz1FTi1VUz4mbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsgJnF1b3Q7IDxvOnA+PC9vOnA+PC9zcGFuPjwvcD48cCBjbGFzcz1Nc29QbGFp
blRleHQ+PHNwYW4gbGFuZz1FTi1VUz5JTUFHRV9GU1RZUEVTID0gJnF1b3Q7dWJpIHRhci5neiZx
dW90OyA8bzpwPjwvbzpwPjwvc3Bhbj48L3A+PHAgY2xhc3M9TXNvUGxhaW5UZXh0PjxzcGFuIGxh
bmc9RU4tVVM+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPjxwIGNsYXNzPU1zb1BsYWluVGV4
dD48c3BhbiBsYW5nPUVOLVVTPkJ1dCBpdCBwcm9kdWNlcyBjbGFzc2ljYWwgcm9vdGZzIGltYWdl
IHdpdGggKHVud2FudGVkKTogYmluLCBib290LCBldGMsIGxpYi4uLiBXZSdkIHByZWZlciB0byBo
YXZlIGl0IGJ1aWx0IGluIGFuIGVmZmljaWVudCB3YXksIHNvIHdlJ2QgbGlrZSB0byBhdm9pZCBn
ZW5lcmF0aW5nIGZ1bGwgaW1hZ2UgYW5kIHRoZW4gcmVtb3ZpbmcgZmlsZXMgYnkgaGFuZCBpbiBw
b3N0cHJvY2VzcyBjb21tYW5kLjxvOnA+PC9vOnA+PC9zcGFuPjwvcD48cCBjbGFzcz1Nc29QbGFp
blRleHQ+PHNwYW4gbGFuZz1FTi1VUz48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+PHAgY2xh
c3M9TXNvUGxhaW5UZXh0PlRoYW5rIHlvdSBpbiBhZHZhbmNlLDxvOnA+PC9vOnA+PC9wPjxwIGNs
YXNzPU1zb1BsYWluVGV4dD5MdWthc3o8bzpwPjwvbzpwPjwvcD48cCBjbGFzcz1Nc29Ob3JtYWw+
PG86cD4mbmJzcDs8L286cD48L3A+PC9kaXY+CjxESVY+PFA+PEhSPgoqKio8QlI+ClRoZSBpbmZv
cm1hdGlvbiBpbiB0aGlzIGVtYWlsIGlzIGNvbmZpZGVudGlhbCBhbmQgaW50ZW5kZWQgc29sZWx5
IGZvciB0aGUgaW5kaXZpZHVhbCBvciBlbnRpdHkgdG8gd2hvbSBpdCBpcyBhZGRyZXNzZWQuICBJ
ZiB5b3UgaGF2ZSByZWNlaXZlZCB0aGlzIGVtYWlsIGluIGVycm9yIHBsZWFzZSBub3RpZnkgdGhl
IHNlbmRlciBieSByZXR1cm4gZS1tYWlsLCBkZWxldGUgdGhpcyBlbWFpbCwgYW5kIHJlZnJhaW4g
ZnJvbSBhbnkgZGlzY2xvc3VyZSBvciBhY3Rpb24gYmFzZWQgb24gdGhlIGluZm9ybWF0aW9uLjxC
Uj4KKioqCjwvUD48L0RJVj4KPC9ib2R5PjwvaHRtbD4=

--_000_CE2E43470FE5444A811B580382FE5EDF4C405D0DFAKEMPMAIL2wood_--
