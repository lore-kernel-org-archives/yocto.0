Return-Path: <jonas.brich@bmw.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CCADC433F5
	for <webhook@archiver.kernel.org>; Fri,  8 Oct 2021 13:47:01 +0000 (UTC)
Received: from esa2.hc324-48.eu.iphmx.com (esa2.hc324-48.eu.iphmx.com
 [207.54.68.120])
 by mx.groups.io with SMTP id smtpd.web10.9453.1633700818391386910
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Oct 2021 06:47:00 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1
 header.b=EPzVnRrZ;
 spf=pass (domain: bmw.de, ip: 207.54.68.120,
 mailfrom: prvs=908ae7fb5=jonas.brich@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1633700818; x=1665236818;
  h=from:to:subject:date:message-id:mime-version;
  bh=Eynhv8ISjRRHqROOLQLhs7YxHksVhoTK4gu2YZZ/tNA=;
  b=EPzVnRrZu5IKLCDlKtWOJe8UJpyX3xbgzfES/yke+ZvwLUGkba3t8zLj
   fQwK29Ru/9/v1pS1DuE04d4NiKpwOrwVWPbqH0T+OuX0rcV2ZmcrQ4xZ1
   D9zp+naGjFoZPMKPguhntm+WsmKZx51rMIzKtoL5od0Gs+87R94kY3yw5
   0=;
Received: from esagw3.bmwgroup.com (HELO esagw3.muc) ([160.46.252.35]) by
 esa2.hc324-48.eu.iphmx.com with ESMTP/TLS; 08 Oct 2021 15:46:54 +0200
Received: from esabb2.muc ([160.50.100.34])  by esagw3.muc with ESMTP/TLS;
 08 Oct 2021 15:46:54 +0200
Received: from smucm29k.bmwgroup.net (HELO SMUCM29K.europe.bmw.corp)
 ([160.46.167.42])
 by esabb2.muc with ESMTP/TLS; 08 Oct 2021 15:46:54 +0200
Received: from SMUCM29J.europe.bmw.corp (160.46.167.41) by
 SMUCM29K.europe.bmw.corp
 (160.46.167.42) with Microsoft SMTP Server (TLS;
 Fri, 8 Oct 2021 15:46:53 +0200
Received: from SMUCM29J.europe.bmw.corp ([160.46.167.41]) by
 SMUCM29J.europe.bmw.corp ([160.46.167.41]) with mapi id 15.00.1497.018; Fri,
 8 Oct 2021 15:46:53 +0200
From: <Jonas.Brich@bmw.de>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-selinux][dunfell][PATCH] libselinux: Backport NULL pointer fix
 from 3.1
Thread-Topic: [meta-selinux][dunfell][PATCH] libselinux: Backport NULL pointer
 fix from 3.1
Thread-Index: AQHXvEktApP/YafBckychEccfJ8FKg==
Date: Fri, 8 Oct 2021 13:46:53 +0000
Message-ID: <1633700814142.2401@bmw.de>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
Content-Type: multipart/mixed; boundary="_004_16337008141422401bmwde_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Oct 2021 13:47:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54999

--_004_16337008141422401bmwde_
Content-Type: multipart/alternative; boundary="_000_16337008141422401bmwde_"

--_000_16337008141422401bmwde_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attached the diff.


Thanks


BMW Car IT GmbH
Jonas Brich
Spezialist Entwicklung
Lise-Meitner-Str. 14
89081 Ulm

Tel.:  +49 731 3780 4292
Mail: jonas.brich@bmw.de
Web: http://www.bmw-carit.de
----------------------------------------------------------------------
BMW Car IT GmbH
Geschaeftsfuehrer: Kai-Uwe Balszuweit und Michael B=F6ttrich
Sitz und Registergericht: Muenchen HRB 134810
----------------------------------------------------------------------

--_000_16337008141422401bmwde_
Content-Type: text/html; charset="iso-8859-1"
Content-ID: <19DF18CB5583C54BA1382EE637EFCC48@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none"><!--P{margin-top:0;margin-b=
ottom:0;} p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}--></style>
</head>
<body dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#F=
FFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Attached the diff.</p>
<p><br>
</p>
<p>Thanks<br>
</p>
<p><br>
</p>
<div id=3D"Signature">
<div name=3D"divtagdefaultwrapper" style=3D"font-family:Calibri,Arial,Helve=
tica,sans-serif; font-size:; margin:0">
<div style=3D"font-family:Tahoma; font-size:13px">
<div style=3D"font-family:Tahoma; font-size:13px">
<div style=3D"font-family:Tahoma; font-size:13px"><br>
<b>BMW Car IT GmbH</b><br>
Jonas Brich<br>
Spezialist Entwicklung<br>
Lise-Meitner-Str. 14<br>
89081 Ulm<br>
<br>
Tel.:&nbsp; &#43;49 731 3780 4292<br>
Mail: jonas.brich@bmw.de<br>
Web: http://www.bmw-carit.de<br>
<font size=3D"1">----------------------------------------------------------=
------------<br>
BMW Car IT GmbH<br>
Geschaeftsfuehrer: Kai-Uwe Balszuweit und Michael B=F6ttrich</font></div>
<div style=3D"font-family:Tahoma; font-size:13px"><font size=3D"1">Sitz und=
 Registergericht: Muenchen HRB 134810<br>
----------------------------------------------------------------------</fon=
t><br>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_16337008141422401bmwde_--

--_004_16337008141422401bmwde_
Content-Type: text/x-patch; name="67803f9.diff"
Content-Description: 67803f9.diff
Content-Disposition: attachment; filename="67803f9.diff"; size=2852;
	creation-date="Fri, 08 Oct 2021 13:44:13 GMT";
	modification-date="Fri, 08 Oct 2021 13:44:13 GMT"
Content-Transfer-Encoding: base64

RnJvbSA2NzgwM2Y5MzkyMTBmOTk1ZmI0ZTM5YjNiNjdjNTdjYTIzOTU5NzI4IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBKb25hcyBCcmljaCA8Sm9uYXMuQnJpY2hAYm13LmRlPgpEYXRl
OiBGcmksIDA4IE9jdCAyMDIxIDE0OjQ3OjE0ICswMjAwClN1YmplY3Q6IFtQQVRDSF0gbGlic2Vs
aW51eDogQmFja3BvcnQgTlVMTCBwb2ludGVyIGZpeCBmcm9tIDMuMQoKVXNpbmcgZnVuY3Rpb24g
cmVzdG9yZWNvbl9pbml0IGluc2lkZSBzZWxpbnV4X3Jlc3RvcmVjb24uYyBjYW4KcmVzdWx0IGlu
IGEgTlVMTCBwb2ludGVyLiBUaGlzIGhhcHBlbnMgYmVjYXVzZSBmdW5jdGlvbgpzZWxpbnV4X3Jl
c3RvcmVjb25fc2V0X3NlaGFuZGxlIGNhbiByZXR1cm4gYSBOVUxMIHBvaW50ZXIuIEJ1dAppdCBp
cyBub3QgY2hlY2tlZCBhbmQgZGlyZWN0bHkgZ2l2ZW4gdG8gdGhlIG5leHQgZnVuY3Rpb24uCgpU
aGlzIHByb2JsZW0gaXMgYWxyZWFkeSBmaXhlZCBpbiBsaWJzZWxpbnV4IDMuMSBhbmQgYWJvdmUu
ClRoZXJlZm9yZSBiYWNrcG9ydCB0aGlzIGZpeC4KClVwc3RyZWFtLVN0YXR1czogQmFja3BvcnQg
W2h0dHBzOi8vZ2l0aHViLmNvbS9TRUxpbnV4UHJvamVjdC9zZWxpbnV4L2NvbW1pdC8wOGY1ZTMw
MTc3MjE4ZmFlN2NlOWY1YzhkNjg1NjY5MDEyNmIyYjMwXQpJc3N1ZTogTUdVUlNVLTcyNTkKQ2hh
bmdlLUlkOiBJY2U1YzdjOTQ5ODc0NDFiYTUzNDMxYWVmZmMyMDBjMGI5YzU2OTdhNAotLS0KCmRp
ZmYgLS1naXQgYS9yZWNpcGVzLXNlY3VyaXR5L3NlbGludXgvbGlic2VsaW51eC8wMDAxLUZpeC1O
VUxMLXBvaW50ZXItdXNlLWluLXNlbGludXhfcmVzdG9yZWNvbl9zZXRfc2VoYW5kbGUucGF0Y2gg
Yi9yZWNpcGVzLXNlY3VyaXR5L3NlbGludXgvbGlic2VsaW51eC8wMDAxLUZpeC1OVUxMLXBvaW50
ZXItdXNlLWluLXNlbGludXhfcmVzdG9yZWNvbl9zZXRfc2VoYW5kbGUucGF0Y2gKbmV3IGZpbGUg
bW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMC4uOGE5ZmI3YwotLS0gL2Rldi9udWxsCisrKyBiL3Jl
Y2lwZXMtc2VjdXJpdHkvc2VsaW51eC9saWJzZWxpbnV4LzAwMDEtRml4LU5VTEwtcG9pbnRlci11
c2UtaW4tc2VsaW51eF9yZXN0b3JlY29uX3NldF9zZWhhbmRsZS5wYXRjaApAQCAtMCwwICsxLDMw
IEBACitGcm9tIDA4ZjVlMzAxNzcyMThmYWU3Y2U5ZjVjOGQ2ODU2NjkwMTI2YjJiMzAgTW9uIFNl
cCAxNyAwMDowMDowMCAyMDAxCitGcm9tOiBKaSBRaW4gPGppcWluLmppQGh1YXdlaS5jb20+CitE
YXRlOiBTdW4sIDE0IEp1biAyMDIwIDIxOjIwOjIzIC0wNDAwCitTdWJqZWN0OiBbUEFUQ0hdIGxp
YnNlbGludXg6IEZpeCBOVUxMIHBvaW50ZXIgdXNlIGluCisgc2VsaW51eF9yZXN0b3JlY29uX3Nl
dF9zZWhhbmRsZQorCitlcnJvciBvY2N1ciB3aGVuIHNlbGludXhfcmVzdG9yZWNvbl9kZWZhdWx0
X2hhbmRsZSByZXR1cm4gTlVMTCBpbgorcmVzdG9yZWNvbl9pbml0LgorCitmaXhlczogaHR0cHM6
Ly9naXRodWIuY29tL1NFTGludXhQcm9qZWN0L3NlbGludXgvaXNzdWVzLzI0OQorCitTaWduZWQt
b2ZmLWJ5OiBKaSBRaW4gPGppcWluLmppQGh1YXdlaS5jb20+CitBY2tlZC1ieTogU3RlcGhlbiBT
bWFsbGV5IDxzdGVwaGVuLnNtYWxsZXkud29ya0BnbWFpbC5jb20+CistLS0KKyBsaWJzZWxpbnV4
L3NyYy9zZWxpbnV4X3Jlc3RvcmVjb24uYyB8IDIgKysKKyAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspCisKK2RpZmYgLS1naXQgYS9saWJzZWxpbnV4L3NyYy9zZWxpbnV4X3Jlc3RvcmVj
b24uYyBiL2xpYnNlbGludXgvc3JjL3NlbGludXhfcmVzdG9yZWNvbi5jCitpbmRleCBkMWNlODMw
YzUuLjY5OTNiZTZmZCAxMDA2NDQKKy0tLSBhL2xpYnNlbGludXgvc3JjL3NlbGludXhfcmVzdG9y
ZWNvbi5jCisrKysgYi9saWJzZWxpbnV4L3NyYy9zZWxpbnV4X3Jlc3RvcmVjb24uYworQEAgLTEx
NTQsNiArMTE1NCw4IEBAIHZvaWQgc2VsaW51eF9yZXN0b3JlY29uX3NldF9zZWhhbmRsZShzdHJ1
Y3Qgc2VsYWJlbF9oYW5kbGUgKmhuZGwpCisgCXNpemVfdCBudW1fc3BlY2ZpbGVzLCBmY19kaWdl
c3RfbGVuOworIAorIAlmY19zZWhhbmRsZSA9IChzdHJ1Y3Qgc2VsYWJlbF9oYW5kbGUgKikgaG5k
bDsKKysJaWYgKCFmY19zZWhhbmRsZSkKKysJCXJldHVybjsKKyAKKyAJLyogQ2hlY2sgaWYgZGln
ZXN0IHJlcXVlc3RlZCBpbiBzZWxhYmVsX29wZW4oMyksIGlmIHNvIHVzZSBpdC4gKi8KKyAJaWYg
KHNlbGFiZWxfZGlnZXN0KGZjX3NlaGFuZGxlLCAmZmNfZGlnZXN0LCAmZmNfZGlnZXN0X2xlbiwK
ZGlmZiAtLWdpdCBhL3JlY2lwZXMtc2VjdXJpdHkvc2VsaW51eC9saWJzZWxpbnV4XzMuMC5iYiBi
L3JlY2lwZXMtc2VjdXJpdHkvc2VsaW51eC9saWJzZWxpbnV4XzMuMC5iYgppbmRleCAxN2EyNWE5
Li4wMWY5YjdiIDEwMDY0NAotLS0gYS9yZWNpcGVzLXNlY3VyaXR5L3NlbGludXgvbGlic2VsaW51
eF8zLjAuYmIKKysrIGIvcmVjaXBlcy1zZWN1cml0eS9zZWxpbnV4L2xpYnNlbGludXhfMy4wLmJi
CkBAIC0xMyw0ICsxMyw1IEBACiAgICAgICAgIGZpbGU6Ly9saWJzZWxpbnV4LWRlZmluZS1GRF9D
TE9FWEVDLWFzLW5lY2Vzc2FyeS5wYXRjaCBcCiAgICAgICAgIGZpbGU6Ly8wMDAxLUZpeC1idWls
ZGluZy1hZ2FpbnN0LW11c2wtYW5kLXVDbGliYy1saWJjLWxpYnJhcmllcy5wYXRjaCBcCiAgICAg
ICAgIGZpbGU6Ly8wMDAxLWxpYnNlbGludXgtZXhwb3J0LWZsdXNoX2NsYXNzX2NhY2hlLWNhbGwt
aXQtb24tcG9saWMucGF0Y2ggXAorICAgICAgICBmaWxlOi8vMDAwMS1GaXgtTlVMTC1wb2ludGVy
LXVzZS1pbi1zZWxpbnV4X3Jlc3RvcmVjb25fc2V0X3NlaGFuZGxlLnBhdGNoIFwKICAgICAgICAg
Igo=

--_004_16337008141422401bmwde_--

