Return-Path: <Bjorn.Arnelid@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 832B3E0140A
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 05:36:08 -0700 (PDT)
Received: from SESTOEX05.enea.se ([fe80::41cb:8d2e:2e90:a183]) by
	SESTOEX08.enea.se ([fe80::fda4:d8b2:80c9:b320%24]) with mapi id
	14.02.0298.004; Fri, 31 Aug 2012 14:36:02 +0200
From: =?iso-8859-1?Q?Bj=F6rn_Arnelid?= <Bjorn.Arnelid@enea.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Patch to poky-eclipse
Thread-Index: Ac2HbI5nOdh8qFCiQO6DegJ38rXr1w==
Date: Fri, 31 Aug 2012 12:36:04 +0000
Message-ID: <3978FA4917A02149AA33ECE70914C515037D2017@sestoex05.enea.se>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.140.18]
MIME-Version: 1.0
Subject: Patch to poky-eclipse
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 31 Aug 2012 12:36:09 -0000
X-Groupsio-MsgNum: 9021
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_3978FA4917A02149AA33ECE70914C515037D2017sestoex05enease_"

--_004_3978FA4917A02149AA33ECE70914C515037D2017sestoex05enease_
Content-Type: multipart/alternative;
	boundary="_000_3978FA4917A02149AA33ECE70914C515037D2017sestoex05enease_"

--_000_3978FA4917A02149AA33ECE70914C515037D2017sestoex05enease_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi, I hope this is the right place to send a patch, if not could someone pl=
eace point me in the right direction for sending patches.

YoctoSDKUtils: Avoid NullPointerException when setting Yocto Properties

[Yocto Bugzilla] -- https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D301=
9

When using a Toolchain where sysroot is not named <arch>-pokysdk-linux a Nu=
llPointerException is thrown when trying to apply changes in Yocto Preferen=
ces.
It should be possible to use Toolchains with a sysroot named <arch>-<organi=
zationName>sdk-linux with the plugin.

static private String findHostArch(File sysroot_dir) now accept folders nam=
ed *sdk-linux instead of *-pokysdk-linux. checkYoctoSDK will also return SD=
KCheckResults.TOOLCHAIN_NO_SYSROOT if findHostArch returns null.


Signed-off-by: Bj=F6rn Arnelid <bjorn.arnelid@enea.com>


--_000_3978FA4917A02149AA33ECE70914C515037D2017sestoex05enease_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin-bottom:=
0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">Hi, I hope this is the right place to send a patch, if not could som=
eone pleace point me in the right direction for sending patches.
<br>
<br>
YoctoSDKUtils: Avoid NullPointerException when setting Yocto Properties&nbs=
p; <br>
<br>
[Yocto Bugzilla] -- https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D301=
9<br>
<br>
When using a Toolchain where sysroot is not named &lt;arch&gt;-pokysdk-linu=
x a NullPointerException is thrown when trying to apply changes in Yocto Pr=
eferences.
<br>
It should be possible to use Toolchains with a sysroot named &lt;arch&gt;-&=
lt;organizationName&gt;sdk-linux with the plugin.
<br>
<br>
static private String findHostArch(File sysroot_dir) now accept folders nam=
ed *sdk-linux instead of *-pokysdk-linux. checkYoctoSDK will also return SD=
KCheckResults.TOOLCHAIN_NO_SYSROOT if findHostArch returns null.<br>
<br>
<pre><font face=3D"Tahoma">Signed-off-by: Bj=F6rn Arnelid &lt;bjorn.arnelid=
@enea.com&gt;</font></pre>
<br>
</div>
</body>
</html>

--_000_3978FA4917A02149AA33ECE70914C515037D2017sestoex05enease_--

--_004_3978FA4917A02149AA33ECE70914C515037D2017sestoex05enease_
Content-Type: text/x-patch;
	name="0001-YoctoSDKUtils-Avoid-NullPointerException-when-settin.patch"
Content-Description: 0001-YoctoSDKUtils-Avoid-NullPointerException-when-settin.patch
Content-Disposition: attachment;
	filename="0001-YoctoSDKUtils-Avoid-NullPointerException-when-settin.patch";
	size=2773; creation-date="Fri, 31 Aug 2012 12:34:12 GMT";
	modification-date="Fri, 31 Aug 2012 12:34:12 GMT"
Content-Transfer-Encoding: base64

RnJvbSBmOGY0OTYxZjdiNWQ0NGFlOTJiZjliNTc4OTU1ZjQwYWUyMzQyMTc5IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiA9P1VURi04P3E/Qmo9QzM9QjZybj0yMEFybmVsaWQ/PSA8Ymph
ckBiamFyLUxhdGl0dWRlLUQ2MzAuKG5vbmUpPgpEYXRlOiBGcmksIDMxIEF1ZyAyMDEyIDE0OjMx
OjAzICswMjAwClN1YmplY3Q6IFtQQVRDSF0gWW9jdG9TREtVdGlsczogQXZvaWQgTnVsbFBvaW50
ZXJFeGNlcHRpb24gd2hlbiBzZXR0aW5nIFlvY3RvCiBQcm9wZXJ0aWVzCk1JTUUtVmVyc2lvbjog
MS4wCkNvbnRlbnQtVHlwZTogdGV4dC9wbGFpbjsgY2hhcnNldD1VVEYtOApDb250ZW50LVRyYW5z
ZmVyLUVuY29kaW5nOiA4Yml0CgpbWW9jdG8gQnVnemlsbGFdIC0tIGh0dHBzOi8vYnVnemlsbGEu
eW9jdG9wcm9qZWN0Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MzAxOQoKV2hlbiB1c2luZyBhIFRvb2xj
aGFpbiB3aGVyZSBzeXNyb290IGlzIG5vdCBuYW1lZCA8YXJjaD4tcG9reXNkay1saW51eCBhIE51
bGxQb2ludGVyRXhjZXB0aW9uIGlzIHRocm93biB3aGVuIHRyeWluZyB0byBhcHBseSBjaGFuZ2Vz
IGluIFlvY3RvIFByZWZlcmVuY2VzLgpJdCBzaG91bGQgYmUgcG9zc2libGUgdG8gdXNlIFRvb2xj
aGFpbnMgd2l0aCBhIHN5c3Jvb3QgbmFtZWQgPGFyY2g+LTxvcmdhbml6YXRpb25OYW1lPnNkay1s
aW51eCB3aXRoIHRoZSBwbHVnaW4uCgpzdGF0aWMgcHJpdmF0ZSBTdHJpbmcgZmluZEhvc3RBcmNo
KEZpbGUgc3lzcm9vdF9kaXIpIG5vdyBhY2NlcHQgZm9sZGVycyBuYW1lZCAqc2RrLWxpbnV4IGlu
c3RlYWQgb2YgKi1wb2t5c2RrLWxpbnV4LiBjaGVja1lvY3RvU0RLIHdpbGwgYWxzbyByZXR1cm4g
U0RLQ2hlY2tSZXN1bHRzLlRPT0xDSEFJTl9OT19TWVNST09UIGlmIGZpbmRIb3N0QXJjaCByZXR1
cm5zIG51bGwuCgpTaWduZWQtb2ZmLWJ5OiBCasO2cm4gQXJuZWxpZCA8Ympvcm4uYXJuZWxpZEBl
bmVhLmNvbT4KLS0tCiAuLi4vc3JjL29yZy95b2N0by9zZGsvaWRlL1lvY3RvU0RLVXRpbHMuamF2
YSAgICAgICB8ICAgMjAgKysrKysrKysrKysrKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNSBp
bnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3BsdWdpbnMvb3JnLnlv
Y3RvLnNkay5pZGUvc3JjL29yZy95b2N0by9zZGsvaWRlL1lvY3RvU0RLVXRpbHMuamF2YSBiL3Bs
dWdpbnMvb3JnLnlvY3RvLnNkay5pZGUvc3JjL29yZy95b2N0by9zZGsvaWRlL1lvY3RvU0RLVXRp
bHMuamF2YQppbmRleCA2YmU5MGJlLi43NDlmYWM3IDEwMDY0NAotLS0gYS9wbHVnaW5zL29yZy55
b2N0by5zZGsuaWRlL3NyYy9vcmcveW9jdG8vc2RrL2lkZS9Zb2N0b1NES1V0aWxzLmphdmEKKysr
IGIvcGx1Z2lucy9vcmcueW9jdG8uc2RrLmlkZS9zcmMvb3JnL3lvY3RvL3Nkay9pZGUvWW9jdG9T
REtVdGlscy5qYXZhCkBAIC0xMDAsNyArMTAwLDE3IEBAIHB1YmxpYyBjbGFzcyBZb2N0b1NES1V0
aWxzIHsKIAkJCUZpbGUgc3lzcm9vdF9kaXIgPSBuZXcgRmlsZShzeXNyb290X2Rpcl9zdHIpOwog
CQkJaWYgKCFzeXNyb290X2Rpci5leGlzdHMoKSkKIAkJCQlyZXR1cm4gU0RLQ2hlY2tSZXN1bHRz
LlRPT0xDSEFJTl9OT19TWVNST09UOwotCQkJU3RyaW5nIHRvb2xjaGFpbl9ob3N0X2FyY2ggPSBm
aW5kSG9zdEFyY2goc3lzcm9vdF9kaXIpOworCQkJCisJCQlTdHJpbmcgdG9vbGNoYWluX2hvc3Rf
YXJjaCA9IG51bGw7CisJCQkKKwkJCXRyeSAKKwkJCXsKKwkJCQl0b29sY2hhaW5faG9zdF9hcmNo
ID0gZmluZEhvc3RBcmNoKHN5c3Jvb3RfZGlyKTsKKwkJCX0KKwkJCWNhdGNoKE51bGxQb2ludGVy
RXhjZXB0aW9uIGUpIAorCQkJeworCQkJCXJldHVybiBTREtDaGVja1Jlc3VsdHMuVE9PTENIQUlO
X05PX1NZU1JPT1Q7CisJCQl9CiAJCQkKIAkJCWlmICghdG9vbGNoYWluX2hvc3RfYXJjaC5lcXVh
bHNJZ25vcmVDYXNlKHBsYXRmb3JtKSkgewogCQkJCWlmICghcGxhdGZvcm0ubWF0Y2hlcygiaVxc
ZDg2IikgfHwgIXRvb2xjaGFpbl9ob3N0X2FyY2gubWF0Y2hlcygiaVxcZDg2IikpCkBAIC01NzYs
NyArNTg2LDcgQEAgcHVibGljIGNsYXNzIFlvY3RvU0RLVXRpbHMgewogCXN0YXRpYyBwcml2YXRl
IFN0cmluZyBmaW5kSG9zdEFyY2goRmlsZSBzeXNyb290X2RpcikgewogCQlGaWxlbmFtZUZpbHRl
ciBuYXRpdmVGaWx0ZXIgPSBuZXcgRmlsZW5hbWVGaWx0ZXIoKSB7CiAJCQlwdWJsaWMgYm9vbGVh
biBhY2NlcHQoRmlsZSBkaXIsIFN0cmluZyBuYW1lKSB7Ci0JCQkJaWYgKG5hbWUuZW5kc1dpdGgo
Ii1wb2t5c2RrLWxpbnV4IikpIHsKKwkJCQlpZiAobmFtZS5lbmRzV2l0aCgic2RrLWxpbnV4Iikp
IHsKIAkJCQkJcmV0dXJuIHRydWU7CiAJCQkJfSBlbHNlIHsKIAkJCQkJcmV0dXJuIGZhbHNlOwpA
QCAtNTkwLDExICs2MDAsMTEgQEAgcHVibGljIGNsYXNzIFlvY3RvU0RLVXRpbHMgewogCQlmb3Ig
KEZpbGUgZmlsZSA6IGZpbGVzKSB7CiAJCQlpZiAoZmlsZS5pc0RpcmVjdG9yeSgpKSB7CiAJCQkJ
U3RyaW5nIHBhdGggPSBmaWxlLmdldE5hbWUoKTsKLQkJCQlhcmNoID0gcGF0aC5zdWJzdHJpbmco
MCwgcGF0aC5pbmRleE9mKCItcG9reXNkay1saW51eCIpKTsKKwkJCQlTdHJpbmdbXSBzdWJQYXRo
ID0gcGF0aC5zcGxpdCgiLSIpOworCQkJCWFyY2ggPSBzdWJQYXRoWzBdOwogCQkJfSBlbHNlIAog
CQkJCWNvbnRpbnVlOwogICAgICAgICB9CiAJCXJldHVybiBhcmNoOwogCX0KLX0KLQorfQpcIE5v
IG5ld2xpbmUgYXQgZW5kIG9mIGZpbGUKLS0gCjEuNy45LjUKCg==

--_004_3978FA4917A02149AA33ECE70914C515037D2017sestoex05enease_--
