Return-Path: <meier.dennis@siemens.com>
Received: from gecko.sbs.de (gecko.sbs.de [194.138.37.40])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63236E00B88
	for <yocto@yoctoproject.org>; Wed,  9 Apr 2014 05:31:52 -0700 (PDT)
Received: from mail1.sbs.de (localhost [127.0.0.1])
	by gecko.sbs.de (8.14.3/8.14.3) with ESMTP id s39CVfrf001552;
	Wed, 9 Apr 2014 14:31:42 +0200
Received: from DEFTHW99ERJMSX.ww902.siemens.net
	(defthw99erjmsx.ww902.siemens.net [139.22.70.135])
	by mail1.sbs.de (8.14.3/8.14.3) with ESMTP id s39CVehm001334
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 9 Apr 2014 14:31:40 +0200
Received: from DENBGAT9ERIMSX.ww902.siemens.net (139.22.70.138) by
	DEFTHW99ERJMSX.ww902.siemens.net (139.22.70.135) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Wed, 9 Apr 2014 14:31:40 +0200
Received: from DEFTHW99EI0MSX.ww902.siemens.net ([169.254.5.248]) by
	DENBGAT9ERIMSX.ww902.siemens.net ([139.22.70.138]) with mapi id
	14.03.0181.006; Wed, 9 Apr 2014 14:31:40 +0200
From: "Meier, Dennis" <meier.dennis@siemens.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto-docs] [PATCH] Extended description of the ${D} variable
Thread-Index: Ac9T76d/Q7UGnNsuS9CqfbNlX5SkSw==
Date: Wed, 9 Apr 2014 12:31:39 +0000
Message-ID: <6F22A92316C68C42A591A48A6291DA9DD77EAD@DEFTHW99EI0MSX.ww902.siemens.net>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [139.22.70.25]
MIME-Version: 1.0
Subject: [yocto-docs] [PATCH] Extended description of the ${D} variable
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
X-List-Received-Date: Wed, 09 Apr 2014 12:31:55 -0000
X-Groupsio-MsgNum: 18904
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_6F22A92316C68C42A591A48A6291DA9DD77EADDEFTHW99EI0MSXww9_"

--_002_6F22A92316C68C42A591A48A6291DA9DD77EADDEFTHW99EI0MSXww9_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

In comparision to ${S}, the variable ${D} isn't documented very well in the=
 ref-manual. I wanted to improve on that a little bit.
Please review the attached patch (on correctness of the statements especial=
ly).

It would be cool to see this mainline soon.

With best regards,
Dennis Meier

Siemens Building Technologies Division HQ (dARE of 5280)
Infrastructure & Cities Sector
Building Technologies
Control Products & Systems
IC BT CPS R&D ZG FW CCP
Gubelstrasse 22
6300 Zug, Switzerland=20
Tel: +41 41 724-2028
mailto:meier.dennis@siemens.com



--_002_6F22A92316C68C42A591A48A6291DA9DD77EADDEFTHW99EI0MSXww9_
Content-Type: application/octet-stream;
	name="0001-Extended-description-of-the-D-variable-to.patch"
Content-Description: 0001-Extended-description-of-the-D-variable-to.patch
Content-Disposition: attachment;
	filename="0001-Extended-description-of-the-D-variable-to.patch"; size=1290;
	creation-date="Wed, 09 Apr 2014 12:26:58 GMT";
	modification-date="Wed, 09 Apr 2014 12:26:38 GMT"
Content-Transfer-Encoding: base64

RnJvbSAyOTMxM2M3ZTU3NzBkZmMzOWUzM2YzYjlmYTlkMWRhMjMyODc2MmNmIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBEZW5uaXMgTWVpZXIgPG1laWVyLmRlbm5pc0BzaWVtZW5zLmNv
bT4KRGF0ZTogV2VkLCA5IEFwciAyMDE0IDE0OjEzOjE3ICswMjAwClN1YmplY3Q6IFtQQVRDSF0g
RXh0ZW5kZWQgZGVzY3JpcHRpb24gb2YgdGhlICR7RH0gdmFyaWFibGUgdG8gYmV0dGVyIGV4cGxh
aW4KIGl0cyBwdXJwb3NlLgoKLS0tCiBkb2N1bWVudGF0aW9uL3JlZi1tYW51YWwvcmVmLXZhcmlh
Ymxlcy54bWwgfCAgIDExICsrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RvY3VtZW50YXRpb24vcmVmLW1hbnVh
bC9yZWYtdmFyaWFibGVzLnhtbCBiL2RvY3VtZW50YXRpb24vcmVmLW1hbnVhbC9yZWYtdmFyaWFi
bGVzLnhtbAppbmRleCAwM2QyMDM0Li4xYTgzNzBkIDEwMDY0NAotLS0gYS9kb2N1bWVudGF0aW9u
L3JlZi1tYW51YWwvcmVmLXZhcmlhYmxlcy54bWwKKysrIGIvZG9jdW1lbnRhdGlvbi9yZWYtbWFu
dWFsL3JlZi12YXJpYWJsZXMueG1sCkBAIC0xNDMxLDcgKzE0MzEsMTYgQEAKIAogICAgICAgICA8
Z2xvc3NlbnRyeSBpZD0ndmFyLUQnPjxnbG9zc3Rlcm0+RDwvZ2xvc3N0ZXJtPgogICAgICAgICAg
ICAgPGdsb3NzZGVmPgotICAgICAgICAgICAgICAgIDxwYXJhPlRoZSBkZXN0aW5hdGlvbiBkaXJl
Y3RvcnkuPC9wYXJhPgorICAgICAgICAgICAgICAgIDxwYXJhPgorICAgICAgICAgICAgICAgICAg
ICBUaGUgZGVzdGluYXRpb24gZGlyZWN0b3J5LiAKKyAgICAgICAgICAgICAgICAgICAgVGhlIGxv
Y2F0aW9uIGluIHRoZSA8dWxpbmsgdXJsPScmWU9DVE9fRE9DU19ERVZfVVJMOyNidWlsZC1kaXJl
Y3RvcnknPkJ1aWxkIERpcmVjdG9yeTwvdWxpbms+CisgICAgICAgICAgICAgICAgICAgICwgd2hl
cmUgY29tcG9uZW50cyBhcmUgaW5zdGFsbGVkIGJ5IHRoZSBkb19pbnN0YWxsKCkgdGFzay4KKyAg
ICAgICAgICAgICAgICAgICAgVGhpcyAgZGVmYXVsdHMgdG86CisgICAgICAgICAgICAgICAgICAg
IDxsaXRlcmFsbGF5b3V0IGNsYXNzPSdtb25vc3BhY2VkJz4KKyAgICAgICAgICAgICAgICAgICAg
ICAgICR7V09SS0RJUn0vaW1hZ2UKKyAgICAgICAgICAgICAgICAgICAgPC9saXRlcmFsbGF5b3V0
PgorCisgICAgICAgICAgICAgICAgPC9wYXJhPgogICAgICAgICAgICAgPC9nbG9zc2RlZj4KICAg
ICAgICAgPC9nbG9zc2VudHJ5PgogCi0tIAoxLjcuMTAuNAoK

--_002_6F22A92316C68C42A591A48A6291DA9DD77EADDEFTHW99EI0MSXww9_--
