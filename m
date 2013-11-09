Return-Path: <vidal.develone@gmail.com>
Received: from mail-qc0-f173.google.com (mail-qc0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38A3EE00461
	for <yocto@yoctoproject.org>; Sat,  9 Nov 2013 14:00:08 -0800 (PST)
Received: by mail-qc0-f173.google.com with SMTP id l13so3015162qcy.32
	for <yocto@yoctoproject.org>; Sat, 09 Nov 2013 14:00:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=tiGQTEbTq1WFwQuvcpjd4FZrngx6d7Eq6Y82iLIkcIc=;
	b=NjHVk8TB33fNsNjulw0tYpNWlM5sH4p+nf3DgmTsJOmagJpH12sweoymPRNk8BDfrH
	Wncu+PKKh+9kX2ORpeMqs70k68T4K0F3nxC9SEEQS54rxNvm3EB6vqd0xSs+zlhb/tJv
	lacWudMZn8Oc0HDFK866gKe3x2zSTvu4KQZkbnNTUF/9Drbt9THbaH5Bn+wCyNHwpJin
	8tMj3Y8fuqqfPyWidzBNebLyr/akIYhRHtDfaCQO2J35DTQuovG2iStgP2MlKWSdEYIB
	spu90WjOsFK+xq/uAxA3CRngKLa5l24TQ3gkdeoMsKZjsfI65+MclkAZ/V2LHFtQQ2C4
	SIOg==
MIME-Version: 1.0
X-Received: by 10.49.108.65 with SMTP id hi1mr16681122qeb.24.1384034407996;
	Sat, 09 Nov 2013 14:00:07 -0800 (PST)
Received: by 10.140.37.81 with HTTP; Sat, 9 Nov 2013 14:00:07 -0800 (PST)
Date: Sat, 9 Nov 2013 15:00:07 -0700
Message-ID: <CANwz6nzM8eq2dEAEa-_ZDdWMyvhEKFcxiqRZ6-CmOgWENNxPNw@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Yocto zedboard v4l-utils & 3.6.0 kernel with C920 webcam sucess
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
X-List-Received-Date: Sat, 09 Nov 2013 22:00:16 -0000
Content-Type: multipart/alternative; boundary=047d7bea38683ee2ff04eac59fa0

--047d7bea38683ee2ff04eac59fa0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello all,
I finally was able to get the modules needed to support the C920 webcam.
The modules needed were a total of eight.
 tree 3.6.0-digilent-13.01-00002-g06b3889
3.6.0-digilent-13.01-00002-g06b3889
=E2=94=9C=E2=94=80=E2=94=80 kernel
=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 drivers
=E2=94=82       =E2=94=94=E2=94=80=E2=94=80 media
=E2=94=82           =E2=94=94=E2=94=80=E2=94=80 video
=E2=94=82               =E2=94=9C=E2=94=80=E2=94=80 gspca
=E2=94=82               =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 gspca_main.=
ko
=E2=94=82               =E2=94=9C=E2=94=80=E2=94=80 uvc
=E2=94=82               =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 uvcvideo.ko
=E2=94=82               =E2=94=9C=E2=94=80=E2=94=80 v4l2-common.ko
=E2=94=82               =E2=94=9C=E2=94=80=E2=94=80 v4l2-int-device.ko
=E2=94=82               =E2=94=9C=E2=94=80=E2=94=80 videobuf2-core.ko
=E2=94=82               =E2=94=9C=E2=94=80=E2=94=80 videobuf2-memops.ko
=E2=94=82               =E2=94=9C=E2=94=80=E2=94=80 videobuf2-vmalloc.ko
=E2=94=82               =E2=94=94=E2=94=80=E2=94=80 videodev.ko
=E2=94=9C=E2=94=80=E2=94=80 myled.ko
=E2=94=94=E2=94=80=E2=94=80 pmodoled-gpio.ko

6 directories, 10 files
I built the core-image-sato for the zedboard which installed 1463 RPMs.  I
built a core-image-sato-sdk for the beagleboard with boost qt-mobility-x11
gsl gnuplot gnuradio boost, v4l-utils and python-netserver
which I installed with the rpm command increased the package count to 1559.

I used the boneCV for capture routine Modifications, added the -F mode for
H264 capture and associated help detail
 *  www.derekmolloy.ie on the zedboard and raw2mpg4 on Fedora18x86_64.
ffmpeg is my next task.

git remote show origin
* remote origin
  Fetch URL: https://github.com/derekmolloy/boneCV.git
  Push  URL: https://github.com/derekmolloy/boneCV.git
  HEAD branch: master
  Remote branch:
    master tracked
  Local branch configured for 'git pull':
    master merges with remote master
  Local ref configured for 'git push':
    master pushes to master (up to date)

Thanks all for all the support.

--047d7bea38683ee2ff04eac59fa0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdj48ZGl2PjxkaXY+PGRpdj48ZGl2PkhlbGxvIGFsbCw8YnI+PC9k
aXY+SSBmaW5hbGx5IHdhcyBhYmxlIHRvIGdldCB0aGUgbW9kdWxlcyBuZWVkZWQgdG8gc3VwcG9y
dCB0aGUgQzkyMCB3ZWJjYW0uPGJyPjwvZGl2PlRoZSBtb2R1bGVzIG5lZWRlZCB3ZXJlIGEgdG90
YWwgb2YgZWlnaHQuPGJyPg0KDQoNCgkNCgkNCgkNCgk8c3R5bGUgdHlwZT0idGV4dC9jc3MiPlAg
eyBtYXJnaW4tYm90dG9tOiAwLjA4aW47IGRpcmVjdGlvbjogbHRyOyBjb2xvcjogcmdiKDAsIDAs
IDApOyB9UC53ZXN0ZXJuIHsgZm9udC1mYW1pbHk6ICJMaWJlcmF0aW9uIFNlcmlmIiwiVGltZXMg
TmV3IFJvbWFuIixzZXJpZjsgZm9udC1zaXplOiAxMnB0OyB9UC5jamsgeyBmb250LWZhbWlseTog
IldlblF1YW5ZaSBaZW4gSGVpIFNoYXJwIjsgZm9udC1zaXplOiAxMnB0OyB9UC5jdGwgeyBmb250
LWZhbWlseTogIkRlamFWdSBTYW5zIjsgZm9udC1zaXplOiAxMnB0OyB9PC9zdHlsZT4gdHJlZSAz
LjYuMC1kaWdpbGVudC0xMy4wMS0wMDAwMi1nMDZiMzg4OTxicj4NCjMuNi4wLWRpZ2lsZW50LTEz
LjAxLTAwMDAyLWcwNmIzODg5PGJyPuKUnOKUgOKUgCBrZXJuZWw8YnI+4pSCwqDCoCDilJTilIDi
lIAgZHJpdmVyczxicj7ilILCoMKgwqDCoMKgwqAg4pSU4pSA4pSAIG1lZGlhPGJyPuKUgsKgwqDC
oMKgwqDCoMKgwqDCoMKgIOKUlOKUgOKUgCB2aWRlbzxicj7ilILCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIOKUnOKUgOKUgCBnc3BjYTxicj7ilILCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIOKUgsKgwqAg4pSU4pSA4pSAIGdzcGNhX21haW4ua288YnI+4pSCwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCDilJzilIDilIAgdXZjPGJyPuKUgsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAg4pSCwqDCoCDilJTilIDilIAgdXZjdmlkZW8ua288YnI+DQrilILCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIOKUnOKUgOKUgCB2NGwyLWNvbW1vbi5rbzxicj7ilILCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIOKUnOKUgOKUgCB2NGwyLWludC1kZXZpY2Uua288YnI+4pSCwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCDilJzilIDilIAgdmlkZW9idWYyLWNvcmUua288YnI+
4pSCwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCDilJzilIDilIAgdmlkZW9idWYyLW1lbW9w
cy5rbzxicj7ilILCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIOKUnOKUgOKUgCB2aWRlb2J1
ZjItdm1hbGxvYy5rbzxicj7ilILCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIOKUlOKUgOKU
gCB2aWRlb2Rldi5rbzxicj4NCuKUnOKUgOKUgCBteWxlZC5rbzxicj7ilJTilIDilIAgcG1vZG9s
ZWQtZ3Bpby5rbzxicj48YnI+NiBkaXJlY3RvcmllcywgMTAgZmlsZXM8YnI+PC9kaXY+SSBidWls
dCB0aGUgY29yZS1pbWFnZS1zYXRvIGZvciB0aGUgemVkYm9hcmQgd2hpY2ggaW5zdGFsbGVkIDE0
NjMgUlBNcy7CoCBJIGJ1aWx0IGEgY29yZS1pbWFnZS1zYXRvLXNkayBmb3IgdGhlIGJlYWdsZWJv
YXJkIHdpdGggYm9vc3QgcXQtbW9iaWxpdHkteDExIGdzbCBnbnVwbG90IGdudXJhZGlvIGJvb3N0
LCB2NGwtdXRpbHMgYW5kIHB5dGhvbi1uZXRzZXJ2ZXI8YnI+DQo8L2Rpdj53aGljaCBJIGluc3Rh
bGxlZCB3aXRoIHRoZSBycG0gY29tbWFuZCBpbmNyZWFzZWQgdGhlIHBhY2thZ2UgY291bnQgdG8g
MTU1OS48YnI+PC9kaXY+PGRpdj48YnI+SSB1c2VkIHRoZSBib25lQ1YgZm9yIGNhcHR1cmUgcm91
dGluZSBNb2RpZmljYXRpb25zLCBhZGRlZCB0aGUgLUYgbW9kZSBmb3IgSDI2NCBjYXB0dXJlIGFu
ZCBhc3NvY2lhdGVkIGhlbHAgZGV0YWlsPGJyPsKgKsKgIDxhIGhyZWY9Imh0dHA6Ly93d3cuZGVy
ZWttb2xsb3kuaWUiPnd3dy5kZXJla21vbGxveS5pZTwvYT4gb24gdGhlIHplZGJvYXJkIGFuZCBy
YXcybXBnNCBvbiBGZWRvcmExOHg4Nl82NC4gwqAgZmZtcGVnIGlzIG15IG5leHQgdGFzay48YnI+
DQrCoDxicj5naXQgcmVtb3RlIHNob3cgb3JpZ2luPGJyPiogcmVtb3RlIG9yaWdpbjxicj7CoCBG
ZXRjaCBVUkw6IDxhIGhyZWY9Imh0dHBzOi8vZ2l0aHViLmNvbS9kZXJla21vbGxveS9ib25lQ1Yu
Z2l0Ij5odHRwczovL2dpdGh1Yi5jb20vZGVyZWttb2xsb3kvYm9uZUNWLmdpdDwvYT48YnI+wqAg
UHVzaMKgIFVSTDogPGEgaHJlZj0iaHR0cHM6Ly9naXRodWIuY29tL2RlcmVrbW9sbG95L2JvbmVD
Vi5naXQiPmh0dHBzOi8vZ2l0aHViLmNvbS9kZXJla21vbGxveS9ib25lQ1YuZ2l0PC9hPjxicj4N
CsKgIEhFQUQgYnJhbmNoOiBtYXN0ZXI8YnI+wqAgUmVtb3RlIGJyYW5jaDo8YnI+wqDCoMKgIG1h
c3RlciB0cmFja2VkPGJyPsKgIExvY2FsIGJyYW5jaCBjb25maWd1cmVkIGZvciAmIzM5O2dpdCBw
dWxsJiMzOTs6PGJyPsKgwqDCoCBtYXN0ZXIgbWVyZ2VzIHdpdGggcmVtb3RlIG1hc3Rlcjxicj7C
oCBMb2NhbCByZWYgY29uZmlndXJlZCBmb3IgJiMzOTtnaXQgcHVzaCYjMzk7Ojxicj7CoMKgwqAg
bWFzdGVyIHB1c2hlcyB0byBtYXN0ZXIgKHVwIHRvIGRhdGUpPGJyPg0KPGJyPjwvZGl2PlRoYW5r
cyBhbGwgZm9yIGFsbCB0aGUgc3VwcG9ydC48YnI+PGJyPjwvZGl2Pg0K

--047d7bea38683ee2ff04eac59fa0--
