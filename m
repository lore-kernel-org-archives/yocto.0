Return-Path: <josh@hipro.co.in>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F760E01372
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2012 04:49:57 -0800 (PST)
Received: by iagz35 with SMTP id z35so1052937iag.35
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2012 04:49:57 -0800 (PST)
Received: by 10.50.184.168 with SMTP id ev8mr32927321igc.29.1328705397282;
	Wed, 08 Feb 2012 04:49:57 -0800 (PST)
Received: from [192.168.10.231] ([59.99.251.45])
	by mx.google.com with ESMTPS id l28sm2754036ibc.3.2012.02.08.04.49.55
	(version=SSLv3 cipher=OTHER); Wed, 08 Feb 2012 04:49:56 -0800 (PST)
Message-ID: <1328705392.2662.28.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Yocto Project <yocto@yoctoproject.org>
Date: Wed, 08 Feb 2012 18:19:52 +0530
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1 
Mime-Version: 1.0
Subject: sysroot and boost.m4 library search path problem
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
X-List-Received-Date: Wed, 08 Feb 2012 12:49:58 -0000
X-Groupsio-MsgNum: 4746
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-Wnm8l9+NxCrh2vhYRixs"

--=-Wnm8l9+NxCrh2vhYRixs
Content-Type: multipart/mixed; boundary="=-qMtCs2ETxAqKw+VCGCXI"

--=-qMtCs2ETxAqKw+VCGCXI
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all,
	While trying to build my user space application in yocto, the boost.m4
was looking packages in the host (i.e host contamination, thereby
resulting in configure error). This appears to be a problem in boost.m4
which ignores the sysroot option while searching for libraries. In the
libtool recipe of yocto I find that --with-sysroot option has been
renamed to --with-libtool-sysroot.=20

To address this problem, I've written a patch for boost.m4 specifically
for yocto. I believe this will be helpful to others who are using boost
libraries. I guess, I have to send a separate patch to boost.m4
maintainer using '$with-sysroot' variable.

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-qMtCs2ETxAqKw+VCGCXI
Content-Disposition: attachment; filename="boost.m4.patch"
Content-Type: text/x-patch; name="boost.m4.patch"; charset="UTF-8"
Content-Transfer-Encoding: base64

ZGlmZiAtLWdpdCBhL2Jvb3N0Lm00IGIvYm9vc3QubTQNCmluZGV4IGIxY2IxYjEuLjRmMWEwZDEg
MTAwNjQ0DQotLS0gYS9ib29zdC5tNA0KKysrIGIvYm9vc3QubTQNCkBAIC0zNzQsMTMgKzM3NCwy
NyBAQCBmb3IgYm9vc3RfcnRvcHRfIGluICRib29zdF9ydG9wdCAnJyAtZDsgZG8NCiAgICAgY2Fz
ZSAkYm9vc3RfZmFpbGVkX2xpYnMgaW4gIygNCiAgICAgICAqQCRib29zdF9saWJAKikgY29udGlu
dWU7Ow0KICAgICBlc2FjDQotICAgICMgSWYgd2l0aF9ib29zdCBpcyBlbXB0eSwgd2UnbGwgc2Vh
cmNoIGluIC9saWIgZmlyc3QsIHdoaWNoIGlzIG5vdCBxdWl0ZQ0KLSAgICAjIHJpZ2h0IHNvIGlu
c3RlYWQgd2UnbGwgdHJ5IHRvIGEgbG9jYXRpb24gYmFzZWQgb24gd2hlcmUgdGhlIGhlYWRlcnMg
YXJlLg0KLSAgICBib29zdF90bXBfbGliPSR3aXRoX2Jvb3N0DQotICAgIHRlc3QgeCIkd2l0aF9i
b29zdCIgPSB4ICYmIGJvb3N0X3RtcF9saWI9JHtib29zdF9jdl9pbmNfcGF0aCUvaW5jbHVkZX0N
Ci0gICAgZm9yIGJvb3N0X2xkcGF0aCBpbiAiJGJvb3N0X3RtcF9saWIvbGliIiAnJyBcDQotICAg
ICAgICAgICAgIC9vcHQvbG9jYWwvbGliKiAvdXNyL2xvY2FsL2xpYiogL29wdC9saWIqIC91c3Iv
bGliKiBcDQotICAgICAgICAgICAgICIkd2l0aF9ib29zdCIgQzovQm9vc3QvbGliIC9saWIqDQor
ICAgICMgSWYgd2l0aF9ib29zdCBpcyBlbXB0eSwgd2UnbGwgc2VhcmNoIGluIC9saWIgZmlyc3Qs
IHdoaWNoIGlzIG5vdA0KKyAgICAjIHF1aXRlIHJpZ2h0IHNvIGluc3RlYWQgd2UnbGwgdHJ5IHRv
IGEgbG9jYXRpb24gYmFzZWQgb24gd2hlcmUNCisgICAgIyB0aGUgaGVhZGVycyBhcmUuICBJZiB3
aXRoX3N5c3Jvb3QgaXMgc3BlY2lmaWVkIHRoZW4gd2UgcHJlcGVuZA0KKyAgICAjIHdpdGhfc3lz
cm9vdCBwYXRoIHRvIHRoZSBib29zdF90bXBfbGliIHZhcmlhYmxlDQorICAgIGlmIFtbIC16ICR7
d2l0aF9saWJ0b29sX3N5c3Jvb3QreHh4fSBdXTsgdGhlbg0KKyAgICAgICAjIHdpdGhfc3lzcm9v
dCB2YXJpYWJsZSBub3Qgc2V0IGF0IGFsbA0KKyAgICAgIGJvb3N0X3RtcF9saWI9JHt3aXRoX2Jv
b3N0fS9saWINCisgICAgICB0ZXN0IHgiJHdpdGhfYm9vc3QiID0geCAmJiBib29zdF90bXBfbGli
PSIke2Jvb3N0X2N2X2luY19wYXRoJS9pbmNsdWRlfSBcDQorICAgICAgICAgICAvb3B0L2xvY2Fs
L2xpYiogL3Vzci9sb2NhbC9saWIqIC9vcHQvbGliKiAvdXNyL2xpYiogXA0KKyAgICAgICAgICAg
JHt3aXRoX2Jvb3N0fSBDOi9Cb29zdC9saWIgL2xpYioiDQorICAgIGVsc2UNCisgICAgICBib29z
dF90bXBfbGliPSIke3dpdGhfbGlidG9vbF9zeXNyb290fS8ke2Jvb3N0X2N2X2luY19wYXRoJS9p
bmNsdWRlfSBcDQorICAgICAgICAgICAgICAgICAgJHt3aXRoX2xpYnRvb2xfc3lzcm9vdH0vb3B0
L2xvY2FsL2xpYiogXA0KKyAgICAgICAgICAgICAgICAgICR7d2l0aF9saWJ0b29sX3N5c3Jvb3R9
L3Vzci9sb2NhbC9saWIqIFwNCisgICAgICAgICAgICAgICAgICAke3dpdGhfbGlidG9vbF9zeXNy
b290fS9saWIqIFwNCisgICAgICAgICAgICAgICAgICAke3dpdGhfbGlidG9vbF9zeXNyb290fS91
c3IvbGliKiBcDQorICAgICAgICAgICAgICAgICAgJHt3aXRoX2xpYnRvb2xfc3lzcm9vdH0vb3B0
L2xpYiogXA0KKyAgICAgICAgICAgICAgICAgICR7d2l0aF9saWJ0b29sX3N5c3Jvb3R9L0Jvb3N0
L2xpYiAke3dpdGhfYm9vc3R9Ig0KKyAgICBmaQ0KKw0KKyAgICBmb3IgYm9vc3RfbGRwYXRoIGlu
ICRib29zdF90bXBfbGliDQogICAgIGRvDQogICAgICAgdGVzdCAtZSAiJGJvb3N0X2xkcGF0aCIg
fHwgY29udGludWUNCiAgICAgICBib29zdF9zYXZlX0xERkxBR1M9JExERkxBR1MNCkBAIC0xMTA3
LDExICsxMTIxLDExIEBAIGJvb3N0X3VzZV9zb3VyY2U9Og0KIHRlc3QgLWYgY29uZnRlc3QuJGFj
X29iamV4dCAmJiBhY19leHQ9JGFjX29iamV4dCAmJiBib29zdF91c2Vfc291cmNlPWZhbHNlICYm
DQogICBfQVNfRUNIT19MT0coW3JlLXVzaW5nIHRoZSBleGlzdGluZyBjb25mdGVzdC4kYWNfb2Jq
ZXh0XSkNCiBBU19JRihbX0FDX0RPX1NUREVSUigkYWNfbGluaykgJiYgew0KLQkgdGVzdCAteiAi
JGFjX1tdX0FDX0xBTkdfQUJCUkVWW11fd2Vycm9yX2ZsYWciIHx8DQotCSB0ZXN0ICEgLXMgY29u
ZnRlc3QuZXJyDQorICAgICAgICB0ZXN0IC16ICIkYWNfW11fQUNfTEFOR19BQkJSRVZbXV93ZXJy
b3JfZmxhZyIgfHwNCisgICAgICAgIHRlc3QgISAtcyBjb25mdGVzdC5lcnINCiAgICAgICAgfSAm
JiB0ZXN0IC1zIGNvbmZ0ZXN0JGFjX2V4ZWV4dCAmJiB7DQotCSB0ZXN0ICIkY3Jvc3NfY29tcGls
aW5nIiA9IHllcyB8fA0KLQkgJGFzX2V4ZWN1dGFibGVfcCBjb25mdGVzdCRhY19leGVleHQNCisg
ICAgICAgIHRlc3QgIiRjcm9zc19jb21waWxpbmciID0geWVzIHx8DQorICAgICAgICAkYXNfZXhl
Y3V0YWJsZV9wIGNvbmZ0ZXN0JGFjX2V4ZWV4dA0KIGRubCBGSVhNRTogdXNlIEFTX1RFU1RfWCBp
bnN0ZWFkIHdoZW4gMi42MSBpcyB3aWRlc3ByZWFkIGVub3VnaC4NCiAgICAgICAgfV0sDQogICAg
ICAgWyQyXSwNCg==

--=-qMtCs2ETxAqKw+VCGCXI--

--=-Wnm8l9+NxCrh2vhYRixs
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk8yb3AACgkQWw85XwuSFMJWoQCfQ15h1WYpFnZyXunYHi+eiVLa
h1wAnjWzEKpIjM/OuSHcPWNpJcRCoTwi
=VMoO
-----END PGP SIGNATURE-----

--=-Wnm8l9+NxCrh2vhYRixs--
