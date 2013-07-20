Return-Path: <r10kindsofpeople@gmail.com>
Received: from mail-ob0-f175.google.com (mail-ob0-f175.google.com
	[209.85.214.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5C72E0140D
	for <yocto@yoctoproject.org>; Sat, 20 Jul 2013 06:35:29 -0700 (PDT)
Received: by mail-ob0-f175.google.com with SMTP id xn12so6439026obc.6
	for <yocto@yoctoproject.org>; Sat, 20 Jul 2013 06:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=n1f6emQd2h1EeQz7KOk2VUeSUHZAism9f+Oy+jWZS1M=;
	b=kqNwtVekKrZd2YVFtx6L9+wjRd3cTAq1cwxiBfOPjDXY1Jw+jaF4UnpmfQCd/69oeJ
	RXqgf+Cd4Eg0uy1+WHEbRSa54WIApQM7l4jtldyP0qIq4ItMG9gQqlxiLjoQDpqGNasy
	7bvQ83lKlxr7aMpxcgttZZNZpP/UZXQzEnWr11T26R5gd3/dxiFxz3MhG7fuZ8HcewxY
	GzmS01sk+pNlOu3mmlBT+w59TflqSPTXRWUQ3tY+mEThUCVKRUz4hMMm7GNAHJKL/xBC
	g8tmCQRkcDxDNj4WaLF/GRpV+mHinHIA7BdDcuQpJmnWr7xViIe1wFXuyk0l767OgmyI
	T73Q==
MIME-Version: 1.0
X-Received: by 10.60.45.38 with SMTP id j6mr21212928oem.56.1374327328512; Sat,
	20 Jul 2013 06:35:28 -0700 (PDT)
Received: by 10.76.86.138 with HTTP; Sat, 20 Jul 2013 06:35:28 -0700 (PDT)
Date: Sat, 20 Jul 2013 09:35:28 -0400
Message-ID: <CAE8H0+W7NXnYtRqgPAv-i-QC34eJxoPidD3um4brYwkYUZWs7g@mail.gmail.com>
From: r10kindsofpeople <r10kindsofpeople@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: ADT 1.4.1 can't get i686-nativesdk?
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
X-List-Received-Date: Sat, 20 Jul 2013 13:35:30 -0000
X-Groupsio-MsgNum: 15061
Content-Type: multipart/mixed; boundary=089e015367ec389fa804e1f184ca

--089e015367ec389fa804e1f184ca
Content-Type: multipart/alternative; boundary=089e015367ec389fa404e1f184c8

--089e015367ec389fa404e1f184c8
Content-Type: text/plain; charset=ISO-8859-1

...continuing the process of updating to dylan, trying to use the released
packages...

I tried installing the ADT from the tarball, modifying the .conf to only
install for x86, minimal-dev.
YOCTOADT_REPO="http://adtrepo.yoctoproject.org/1.4.1"

With luck the whole .conf file is attached.

I'm getting the following error...help, please?  Is is possible that one of
the scripts isn't using the YOCTOADT_REPO setting?  Or do I have it set
incorrectly?

John

Start installing selected native ADT for archs: x86...
Successfully create directory /opt/poky/1.4.1//var/lib/opkg.
Updating opkg...
Downloading
http://adtrepo-dev.yoctoproject.org//1.4.1-73f103bf9b2cdf985464dc53bf4f1cfd71d4531f-dylan/adt-ipk/i686-nativesdk/Packages
.
Collected errors:
 * opkg_download: Failed to download
http://adtrepo-dev.yoctoproject.org//1.4.1-73f103bf9b2cdf985464dc53bf4f1cfd71d4531f-dylan/adt-ipk/i686-nativesdk/Packages,
wget returned 8.
opkg update process ended...
Installing pseudo nativesdk ...

Unknown package 'nativesdk-pseudo'.
Collected errors:
 * opkg_install_cmd: Cannot install package nativesdk-pseudo.

--089e015367ec389fa404e1f184c8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>...continuing the process of updating to dylan, tryin=
g to use the released packages...</div><div><br></div><div>I tried installi=
ng the ADT from the tarball, modifying the .conf to only install for x86, m=
inimal-dev.</div>
<div><div>YOCTOADT_REPO=3D&quot;<a href=3D"http://adtrepo.yoctoproject.org/=
1.4.1">http://adtrepo.yoctoproject.org/1.4.1</a>&quot;</div></div><div><br>=
</div><div>With luck the whole .conf file is attached.</div><div><br></div>
<div>I&#39;m getting the following error...help, please? =A0Is is possible =
that one of the scripts isn&#39;t using the YOCTOADT_REPO setting? =A0Or do=
 I have it set incorrectly?</div><div><br></div><div>John</div><div><br></d=
iv>
<div>Start installing selected native ADT for archs: x86...</div><div>Succe=
ssfully create directory /opt/poky/1.4.1//var/lib/opkg.</div><div>Updating =
opkg...</div><div>Downloading <a href=3D"http://adtrepo-dev.yoctoproject.or=
g//1.4.1-73f103bf9b2cdf985464dc53bf4f1cfd71d4531f-dylan/adt-ipk/i686-native=
sdk/Packages">http://adtrepo-dev.yoctoproject.org//1.4.1-73f103bf9b2cdf9854=
64dc53bf4f1cfd71d4531f-dylan/adt-ipk/i686-nativesdk/Packages</a>.</div>
<div>Collected errors:</div><div>=A0* opkg_download: Failed to download <a =
href=3D"http://adtrepo-dev.yoctoproject.org//1.4.1-73f103bf9b2cdf985464dc53=
bf4f1cfd71d4531f-dylan/adt-ipk/i686-nativesdk/Packages">http://adtrepo-dev.=
yoctoproject.org//1.4.1-73f103bf9b2cdf985464dc53bf4f1cfd71d4531f-dylan/adt-=
ipk/i686-nativesdk/Packages</a>, wget returned 8.</div>
<div>opkg update process ended...</div><div>Installing pseudo nativesdk ...=
</div><div><br></div><div>Unknown package &#39;nativesdk-pseudo&#39;.</div>=
<div>Collected errors:</div><div>=A0* opkg_install_cmd: Cannot install pack=
age nativesdk-pseudo.</div>
<div><br></div></div>

--089e015367ec389fa404e1f184c8--

--089e015367ec389fa804e1f184ca
Content-Type: application/octet-stream; name="adt_installer.conf"
Content-Disposition: attachment; filename="adt_installer.conf"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hjcuwzfc0

IyBZb2N0byBBRFQgSW5zdGFsbGVyIENvbmZpZ3VyYXRpb24gRmlsZQojCiMgQ29weXJpZ2h0IDIw
MTAtMjAxMSBieSBJbnRlbCBDb3JwLgojCiMgUGVybWlzc2lvbiBpcyBoZXJlYnkgZ3JhbnRlZCwg
ZnJlZSBvZiBjaGFyZ2UsIHRvIGFueSBwZXJzb24gb2J0YWluaW5nIGEgY29weSAKIyBvZiB0aGlz
IHNvZnR3YXJlIGFuZCBhc3NvY2lhdGVkIGRvY3VtZW50YXRpb24gZmlsZXMgKHRoZSAiU29mdHdh
cmUiKSwgdG8gZGVhbCAKIyBpbiB0aGUgU29mdHdhcmUgd2l0aG91dCByZXN0cmljdGlvbiwgaW5j
bHVkaW5nIHdpdGhvdXQgbGltaXRhdGlvbiB0aGUgcmlnaHRzIAojIHRvIHVzZSwgY29weSwgbW9k
aWZ5LCBtZXJnZSwgcHVibGlzaCwgZGlzdHJpYnV0ZSwgc3VibGljZW5zZSwgYW5kL29yIHNlbGwg
CiMgY29waWVzIG9mIHRoZSBTb2Z0d2FyZSwgYW5kIHRvIHBlcm1pdCBwZXJzb25zIHRvIHdob20g
dGhlIFNvZnR3YXJlIGlzIAojIGZ1cm5pc2hlZCB0byBkbyBzbywgc3ViamVjdCB0byB0aGUgZm9s
bG93aW5nIGNvbmRpdGlvbnM6CgojIFRoZSBhYm92ZSBjb3B5cmlnaHQgbm90aWNlIGFuZCB0aGlz
IHBlcm1pc3Npb24gbm90aWNlIHNoYWxsIGJlIGluY2x1ZGVkIGluIAojIGFsbCBjb3BpZXMgb3Ig
c3Vic3RhbnRpYWwgcG9ydGlvbnMgb2YgdGhlIFNvZnR3YXJlLgoKIyBUSEUgU09GVFdBUkUgSVMg
UFJPVklERUQgIkFTIElTIiwgV0lUSE9VVCBXQVJSQU5UWSBPRiBBTlkgS0lORCwgRVhQUkVTUyBP
UiAKIyBJTVBMSUVELCBJTkNMVURJTkcgQlVUIE5PVCBMSU1JVEVEIFRPIFRIRSBXQVJSQU5USUVT
IE9GIE1FUkNIQU5UQUJJTElUWSwgCiMgRklUTkVTUyBGT1IgQSBQQVJUSUNVTEFSIFBVUlBPU0Ug
QU5EIE5PTklORlJJTkdFTUVOVC4gSU4gTk8gRVZFTlQgU0hBTEwgVEhFIAojIEFVVEhPUlMgT1Ig
Q09QWVJJR0hUIEhPTERFUlMgQkUgTElBQkxFIEZPUiBBTlkgQ0xBSU0sIERBTUFHRVMgT1IgT1RI
RVIgCiMgTElBQklMSVRZLCBXSEVUSEVSIElOIEFOIEFDVElPTiBPRiBDT05UUkFDVCwgVE9SVCBP
UiBPVEhFUldJU0UsIEFSSVNJTkcgRlJPTSwgCiMgT1VUIE9GIE9SIElOIENPTk5FQ1RJT04gV0lU
SCBUSEUgU09GVFdBUkUgT1IgVEhFIFVTRSBPUiBPVEhFUiBERUFMSU5HUyBJTiAKIyBUSEUgU09G
VFdBUkUuCgoKIyBZb3VyIHlvY3RvIGRpc3RybyByZXBvc2l0b3J5LCB0aGlzIHNob3VsZCBpbmNs
dWRlIElQS0cgYmFzZWQgcGFja2FnZXMgYW5kIHJvb3QgZmlsZXN5c3RlbSBmaWxlcyB3aGVyZSB0
aGUgaW5zdGFsbGF0aW9uIGlzIGJhc2VkIG9uCgpZT0NUT0FEVF9SRVBPPSJodHRwOi8vYWR0cmVw
by55b2N0b3Byb2plY3Qub3JnLzEuNC4xIgoKIyBUaGUgZm9sbG93aW5nIGFyZSBmb3Igc3lzdGVt
IHdpZGUgc2V0dXAKIyBUYXJnZXQgYXJjaGl0ZWN0dXJlcyB0aGF0IHlvdSB3YW50IHRvIHNldHVw
IGhvc3QgY3Jvc3MgZGV2IGVudmlyb25tZW50IGZvcgojIHZhbGlkIHZhbHVlcyBhcmU6IGFybSwg
eDg2LCB4ODZfNjQsIHBwYywgbWlwcyB3aXRoIHNwYWNlIHNlcGFyYXRpb24gYmV0d2VlbiBlbnRy
aWVzCllPQ1RPQURUX1RBUkdFVFM9Ing4NiIKIyBXaGV0aGVyIGluc3RhbGwgcWVtdSBvciBub3Qs
IHZhbGlkIGVudHJpZXMgYXJlOiBZL04KWU9DVE9BRFRfUUVNVT0iWSIKIyBXaGV0aGVyIGluc3Rh
bGwgdXNlci1tb2RlIG5mcyBvciBub3QsIHZhbGlkIGVudHJpZXMgYXJlOiBZL04uICBJZiB5b3Ug
d2FudCB0byB1c2UgWW9jdG8gRWNsaXBzZSBwbHVnLWluIGFzIHlvdXIgZGV2IElERSwgeW91IG5l
ZWQgdG8gc2VsZWN0IGJvdGggcWVtdSBhbmQgTkZTCllPQ1RPQURUX05GU19VVElMPSJZIgoKIyBU
aGVzZSAyIHZhbHVlcyB3aWxsIGJlIHN1cHBvcnRlZCBpbiB0aGUgZnVydHVyZSBpbnN0YWxsZXIK
I1lPQ1RPQURUX0JJVEJBS0U9IlkiCiNZT0NUT0FEVF9NRVRBREFUQT0iWSIKCiNUaGUgZm9sbG93
aW5ncyBhcmUgZm9yIHNldHRpbmcgdXAgc3BlY2lmaWMgdGFyZ2V0IGFyY2hpdGVjdHVyZQojWU9D
VE9BRFRfUk9PVEZTXyRhcmNoIGlzIGZvciBzcGVjaWZ5aW5nIHdoYXQgcm9vdCBmaWxlc3lzdGVt
IGltYWdlIGZpbGVzIHlvdSB3YW50IHRvIGRvd25sb2FkIGZyb20gdGhlIHJlcG9zaXRvcnkuIFRo
ZSB2YWxpZCB2YWx1ZXMgdG8gcmVwbGFjZSAkYXJjaCBhcmU6IGFybSwgeDg2LCB4ODZfNjQsIHBv
d2VycGMsIG1pcHMuICBUaGUgdmFsaWQgaW1hZ2UgZmlsZXMgYXJlOiBtaW5pbWFsLCBtaW5pbWFs
LWRldiwgc2F0bywgc2F0by1kZXYsIHNhdG8tc2RrLGxzYiwgbHNiLWRldiwgbHNiLXNkay4gIElm
IHlvdSB3YW50IHRvIGRvd25sb2FkIG11bHRpcGxlIGltYWdlcywgdGhlIGVudHJpZXMgYXJlIHNw
YWNlIHNlcGFyYXRlZAojWU9DVE9BRFRfUk9PVEZTX2FybT0ibWluaW1hbCBzYXRvLXNkayIKI1Nw
ZWNpZnkgd2hpY2ggcm9vdCBmaWxlc3lzdGVtIGZpbGUgdG8gdXNlIHRvIGV4dHJhY3QgYXMgdGFy
Z2V0IHN5c3Jvb3QuICBQbGVhc2UgZW5zdXJlIHRoZSBlbnRyeSBpcyBpbiB0aGUgbGlzdCBvZiBk
b3dubG9hZGVkIHJvb3QgZmlsZXN5c3RlbSBmaWxlcyB0aGF0IHNwZWNpZmllZCBhYm92ZSBpbiBZ
T0NUT0FEVF9ST09URlNfJGFyY2gKI1lPQ1RPQURUX1RBUkdFVF9TWVNST09UX0lNQUdFX2FybT0i
c2F0by1zZGsiCiNUaGUgbG9jYXRpb24gd2hlcmUgdGhlIHRhcmdldCBzeXNyb290IHdpbGwgYmUg
c2V0dXAKI1lPQ1RPQURUX1RBUkdFVF9TWVNST09UX0xPQ19hcm09IiRIT01FL3Rlc3QteW9jdG8v
YXJtIgoKI0hlcmUncyBhbm90aGVyIGV4YW1wbGUgZm9yIHNldHRpbmcgdXAgdGFyZ2V0IGFyY2gg
b2YgeDg2LCBieSB1bmNvbW1lbnRpbmcgaXQgd2lsbCB0cmlnZ2VyIHRoZSBpbnN0YWxsZXIgdG8g
ZG93bmxvYWQgYW5kIHNldHVwIDIgc3lzcm9vdCBlbnZpcm9ubWVudCBmb3IgMiB0YXJnZXQgYXJj
aGVzOiBhcm0gYW5kIHg4Ni4gIElmIHlvdSB3YW50IHRvIGFkZCBtb3JlIHRhcmdldCBhcmNoIHN1
cHBvcnQsIHlvdSBjYW4gYXBwZW5kIG1vcmUgZW50cmllcyBieSBmb2xsb3dpbmcgdGhlc2Ugc2Ft
cGxlcwpZT0NUT0FEVF9ST09URlNfeDg2PSJtaW5pbWFsLWRldiIKWU9DVE9BRFRfVEFSR0VUX1NZ
U1JPT1RfSU1BR0VfeDg2PSJtaW5pbWFsLWRldiIKWU9DVE9BRFRfVEFSR0VUX1NZU1JPT1RfTE9D
X3g4Nj0iJEhPTUUvdGVzdC15b2N0by94ODYiCgojSGVyZSdzIHNvbWUgdGVtcGxhdGUgb2Ygb3Ro
ZXIgYXJjaGVzLCB3aGljaCB5b3UgbmVlZCB0byBjaGFuZ2UgdGhlIHZhbHVlIGluICIiCiNZT0NU
T0FEVF9ST09URlNfeDg2XzY0PSJzYXRvLXNkayIKI1lPQ1RPQURUX1RBUkdFVF9TWVNST09UX0lN
QUdFX3g4Nl82ND0ic2F0by1zZGsiCiNZT0NUT0FEVF9UQVJHRVRfU1lTUk9PVF9MT0NfeDg2XzY0
PSIkSE9NRS90ZXN0LXlvY3RvL3g4Nl82NCIKCiNZT0NUT0FEVF9ST09URlNfcHBjPSJzYXRvLXNk
ayIKI1lPQ1RPQURUX1RBUkdFVF9TWVNST09UX0lNQUdFX3BwYz0ic2F0by1zZGsiCiNZT0NUT0FE
VF9UQVJHRVRfU1lTUk9PVF9MT0NfcHBjPSIkSE9NRS90ZXN0LXlvY3RvL3BwYyIKCiNZT0NUT0FE
VF9ST09URlNfbWlwcz0ic2F0by1zZGsiCiNZT0NUT0FEVF9UQVJHRVRfU1lTUk9PVF9JTUFHRV9t
aXBzPSJzYXRvLXNkayIKI1lPQ1RPQURUX1RBUkdFVF9TWVNST09UX0xPQ19taXBzPSIkSE9NRS90
ZXN0LXlvY3RvL21pcHMiCg==

--089e015367ec389fa804e1f184ca--
