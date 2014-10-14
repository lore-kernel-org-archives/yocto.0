Return-Path: <sona.sarmadi@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF6EEE00853; Tue, 14 Oct 2014 07:39:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id BCF95E007C1
	for <yocto@yoctoproject.org>; Tue, 14 Oct 2014 07:39:30 -0700 (PDT)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.03.0158.001; Tue, 14 Oct 2014 16:39:25 +0200
From: Sona Sarmadi <sona.sarmadi@enea.com>
To: "openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Thread-Topic: [oss-security] Truly scary SSL 3.0 vuln to be revealed soon:
Thread-Index: AQHP56BCEucTJt1X1Uauj1I8gN6wCpwvqK4w
Date: Tue, 14 Oct 2014 14:39:24 +0000
Message-ID: <3230301C09DEF9499B442BBE162C5E4825766DAD@SESTOEX04.enea.se>
References: <3230301C09DEF9499B442BBE162C5E48257669F3@SESTOEX04.enea.se>
	<20141014131541.090af81a@pc>
In-Reply-To: <20141014131541.090af81a@pc>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.1.188]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: FW: [oss-security] Truly scary SSL 3.0 vuln to be revealed soon:
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
X-List-Received-Date: Tue, 14 Oct 2014 14:39:41 -0000
X-Groupsio-MsgNum: 21803
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_3230301C09DEF9499B442BBE162C5E4825766DADSESTOEX04enease_"

--_002_3230301C09DEF9499B442BBE162C5E4825766DADSESTOEX04enease_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,

It seems that another vulnerability is coming soon, the advice is disable S=
SLv3.:
http://www.theregister.co.uk/2014/10/14/nasty_ssl_30_vulnerability_to_drop_=
tomorrow/


From Hanno B=F6ck [hanno@hboeck.de]:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Whether it's scary or not I have an advice for you: Disable SSLv3.

It causes a lot of headache already. I once had to debug a rather subtle is=
sue in combination with SNI.
The problem: Browsers downgrade out of protocol to SSLv3 if they can't conn=
ect via TLS. They do this in order to support broken server implementations=
. However this downgrade can also be triggered by bad or slow internet conn=
ections - and then you'll loose SNI. So sometimes your visitors will get th=
e wrong certificate presented.
I solved this for my servers by disabling SSLv3. It was a minor problem whe=
n I did this but it is almost no problem today.

You will lock out IE6 users on Windows XP. However even people who use Wind=
ows XP+IE and installed their updates have TLS 1.0 support.
I also encountered a small number of people who had manually disabled TLS 1=
.0 in firefox for unknown reasons. However this was a few years ago. Curren=
t Firefox versions make it harder to do this. I assume the reason was that =
they thought "v3 sound newer than v1.0".

A number of people already recommend disabling SSLv3, e.g. the Qualys confi=
guration guide. Disable it now - no matter if the rumors about a serious vu=
ln are true, you'll be safe.

BR - Sona=20

--_002_3230301C09DEF9499B442BBE162C5E4825766DADSESTOEX04enease_
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: signature.asc
Content-Disposition: attachment; filename="signature.asc"; size=836;
	creation-date="Tue, 14 Oct 2014 14:39:24 GMT";
	modification-date="Tue, 14 Oct 2014 14:39:24 GMT"
Content-Transfer-Encoding: base64

LS0tLS1CRUdJTiBQR1AgU0lHTkFUVVJFLS0tLS0NClZlcnNpb246IEdudVBHIHYyDQoNCmlRSWNC
QUVCQ2dBR0JRSlVQUVhkQUFvSkVLV0lBSEs3dFI1Q1I0WVFBTWdabE8xSzI2cmVxWGN1RWNhTXJL
MksNClVVUDlHTDJtdmk2SlFEQ2dDdHRsTkxEZVBIWlNUQjJGTXhxTlJhRm1QU21hNHdyQVFvUkl0
YWovcnVzUkpoWWUNCmxUSjIrZEY1dDdyTkJJUnlMTFNJTjY0eEtwT3Y0eGVaR3dVTUtjSjc2ajlB
SzY1ZVJ4YTJZVHRtM1dzN3pBL3ENCkVSaCtsSURTRElndkpvVEwrOGtsZWx3L3IyZEJMOGdteVN3
WUxXR2FZNkJGRDRCSnFIbW5qRTN5dmxzZG5xL2wNCkZVSGU3TnltQXIvWEYvNVdNbnliY0hHM3Zm
ZTIyRktUSWFkaDhNanJ5dWRiVy9qNnBGbEExS1pIcWphcmpWT2UNCmZ4U1hGdENRMzZaejNyeXdm
UmpscnZyeS9mRDB0U05DNjFrVEhwOFFGVmtERitaZURVUWhWUHJzVXVWQmIzZkkNCkpPditzcE9S
WUtyWHZ2YU5IanJocWc2N055WlczbFhJVHgzU0N4RXlrcVpJNE8yNGo5TEFGc0lOVHYwN2t3cUEN
CndHZlBWS1Yrck9rU2FOVVduZGYzRHFnZTdKMXJxOHdXUkhiQnhSYlVXL2hxdmZQbUJ6S3pQQzdZ
SmVYUUdXemUNCnpUNFJzMms3TS9FanhHT2NiTVppSWVYc0pHQXo1TDhqYnVybkI5aFhqN0NmVU5R
Q09DZE9mUkNWdmlhd3NDWE8NCmlwbkl4RkRLM3NZcVIyMGs4MnpmNG5hRFFwbGJQM0dGcXB6Q09q
bUdlT0dKV1dWcjB3ZzJmVDA2eHNsY1lBTVUNCmJqQ1BPc2ZmT0tQSHh5R05MVnZwcEU0SndYZm5O
dWEzWHV6aXp1enBrRGxsS2J3bkQwNGJhOXFaNk4vQlpQYWUNCkoxZDU4eDhPcEtvbmkzSHYrSy9k
DQo9am5Tcw0KLS0tLS1FTkQgUEdQIFNJR05BVFVSRS0tLS0tDQo=

--_002_3230301C09DEF9499B442BBE162C5E4825766DADSESTOEX04enease_--
