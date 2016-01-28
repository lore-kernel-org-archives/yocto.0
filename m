Return-Path: <Daniel.Klauer@gin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FE1CE00838; Thu, 28 Jan 2016 09:54:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.223.36.9 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 6482 seconds by postgrey-1.32 at yocto-www;
	Thu, 28 Jan 2016 09:54:46 PST
Received: from good-out-08.clustermail.de (good-out-08.clustermail.de
	[212.223.36.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22677E00444
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 09:54:46 -0800 (PST)
Received: from frontend-04 ([10.0.0.4] helo=frontend.clustermail.de)
	by smtpout-02.clustermail.de with esmtps
	(TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256) (Exim 4.84)
	(envelope-from <Daniel.Klauer@gin.de>) id 1aOp5g-0004jd-Pv
	for yocto@yoctoproject.org; Thu, 28 Jan 2016 17:06:42 +0100
Received: from [217.6.33.234] (helo=Win2012-02.gin-domain.local)
	by frontend.clustermail.de with esmtpsa (TLSv1.2:AES256-SHA:256)
	(Exim 4.84) (envelope-from <Daniel.Klauer@gin.de>)
	id 1aOp5g-0005gR-Je
	for yocto@yoctoproject.org; Thu, 28 Jan 2016 17:06:36 +0100
Received: from Win2012-02.gin-domain.local (192.168.1.12) by
	Win2012-02.gin-domain.local (192.168.1.12) with Microsoft SMTP Server
	(TLS) id 15.0.1130.7; Thu, 28 Jan 2016 17:06:36 +0100
Received: from Win2012-02.gin-domain.local ([fe80::3db4:55fd:d76e:9d90]) by
	Win2012-02.gin-domain.local ([fe80::3db4:55fd:d76e:9d90%12]) with mapi
	id 15.00.1130.005; Thu, 28 Jan 2016 17:06:36 +0100
From: "Klauer, Daniel" <Daniel.Klauer@gin.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: bitbake git fetcher aborts during do_unpack with
	UnicodeDecodeError
Thread-Index: AQHRWeXcK6ON80FD+E6Swo4bFzgXTA==
Date: Thu, 28 Jan 2016 16:06:36 +0000
Message-ID: <1453997195664.80555@gin.de>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.1.219]
MIME-Version: 1.0
Subject: bitbake git fetcher aborts during do_unpack with UnicodeDecodeError
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
X-List-Received-Date: Thu, 28 Jan 2016 17:54:51 -0000
X-Groupsio-MsgNum: 28138
Content-Language: en-US
Content-Type: multipart/mixed; boundary="_002_145399719566480555ginde_"

--_002_145399719566480555ginde_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,=0A=
=0A=
we're using Yocto (jethro) with some custom recipes that retrieve source co=
de from Git and use AUTOREV, for example:=0A=
=0A=
SRC_URI =3D "git://url/project.git;protocol=3Dssh"=0A=
SRCREV =3D "${AUTOREV}"=0A=
=0A=
Building the image with bitbake works on one machine, but fails on another =
with an error like this (full error attached):=0A=
=0A=
File: '.../poky/bitbake/lib/bb/fetch2/__init__.py', lineno: 812, function: =
runfetchcmd=0A=
     0808:=0A=
    0809:    for var in exportvars:=0A=
     0810:        val =3D d.getVar(var, True)=0A=
     0811:        if val:=0A=
 *** 0812:            cmd =3D 'export ' + var + '=3D\"%s\"; %s' % (val, cmd=
)=0A=
     0813:=0A=
     0814:    logger.debug(1, "Running %s", cmd)=0A=
     0815:=0A=
     0816:    success =3D False=0A=
Exception: UnicodeDecodeError: 'ascii' codec can't decode byte 0xc3 in posi=
tion 17: ordinal not in range(128)=0A=
=0A=
It appears that bitbake's git fetcher is prepending shell export commands f=
or certain environment variables (HOME, PATH, but also others - see [1]) to=
 every shell command it runs via runfetchcmd(). Apparently in our case some=
times at least one of these contains non-ASCII bytes (e.g. UTF8 user names)=
.=0A=
=0A=
This by itself is probably ok, but these byte strings are added to the cmd =
variable, which sometimes is a unicode string - thus causing a decoding to =
Unicode. It happens because FetchMethod.latest_revision() caches the HEAD r=
evision as a string in an SQL database (bb.persist_data.SQLTable) using the=
 Python sqlite3 module, which returns unicode strings when querying text (b=
y default, see [2]). Then this unicode string variable holding the HEAD rev=
 trickles down to runfetchcmd() where it (sometimes) triggers the UnicodeDe=
codeError.=0A=
=0A=
=0A=
Reproducing the issue seems to be as simple as:=0A=
=0A=
    1. $ git clone -b jethro git://git.yoctoproject.org/poky.git=0A=
    2. $ cd poky=0A=
    3. $ mkdir meta/recipes-support/test=0A=
    4. create recipe meta/recipes-support/test/testgit.bb:=0A=
        # just a test recipe=0A=
        LICENSE =3D "CLOSED"=0A=
        SRC_URI =3D "git://github.com/schacon/simplegit.git;protocol=3Dhttp=
s"=0A=
        SRCREV =3D "${AUTOREV}"=0A=
    5. $ source oe-init-build-env=0A=
    6. $ SOCKS5_USER=3D=FC bitbake testgit=0A=
=0A=
I.e. setting one of the environment variables handled by runfetchcmd() to s=
omething containing non-ASCII UTF8 bytes, and building a recipe that uses G=
it and AUTOREV.=0A=
=0A=
=0A=
Now I'm wondering, how to best solve this problem? I don't have much experi=
ence with bitbake or even Python for that matter. The Python sqlite3 module=
 documentation suggests setting text_factory =3D str to get byte strings in=
stead of unicode strings. It seems to solve the problem here, but I have no=
 idea if it's the right solution:=0A=
=0A=
--- a/bitbake/lib/bb/persist_data.py=0A=
+++ b/bitbake/lib/bb/persist_data.py=0A=
@@ -201,6 +201,7 @@ class PersistData(object):=0A=
 def connect(database):=0A=
     connection =3D sqlite3.connect(database, timeout=3D5, isolation_level=
=3DNone)=0A=
     connection.execute("pragma synchronous =3D off;")=0A=
+    connection.text_factory =3D str=0A=
     return connection=0A=
 =0A=
 def persist(domain, d):=0A=
=0A=
=0A=
Best regards,=0A=
Daniel Klauer=0A=
=0A=
[1] http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/bitbake/lib/bb/fetc=
h2/__init__.py?h=3Djethro&id=3D2fb7ee2628e23d7efc9b041bb9daae7c4a8de541#n78=
9=0A=
[2] https://docs.python.org/2/library/sqlite3.html#sqlite-and-python-types=

--_002_145399719566480555ginde_
Content-Type: text/plain; name="full-bitbake-error.txt"
Content-Description: full-bitbake-error.txt
Content-Disposition: attachment; filename="full-bitbake-error.txt"; size=2297;
	creation-date="Thu, 28 Jan 2016 15:44:58 GMT";
	modification-date="Thu, 28 Jan 2016 15:44:58 GMT"
Content-Transfer-Encoding: base64

RVJST1I6IEVycm9yIGV4ZWN1dGluZyBhIHB5dGhvbiBmdW5jdGlvbiBpbiAuLi4vcHJvamVjdC9w
cm9qZWN0LmJiOgoKVGhlIHN0YWNrIHRyYWNlIG9mIHB5dGhvbiBjYWxscyB0aGF0IHJlc3VsdGVk
IGluIHRoaXMgZXhjZXB0aW9uL2ZhaWx1cmUgd2FzOgpGaWxlOiAnYmFzZV9kb191bnBhY2snLCBs
aW5lbm86IDIzLCBmdW5jdGlvbjogPG1vZHVsZT4KICAgICAwMDE5OiAgICBleGNlcHQgYmIuZmV0
Y2gyLkJCRmV0Y2hFeGNlcHRpb24gYXMgZToKICAgICAwMDIwOiAgICAgICAgcmFpc2UgYmIuYnVp
bGQuRnVuY0ZhaWxlZChlKQogICAgIDAwMjE6CiAgICAgMDAyMjoKICoqKiAwMDIzOmJhc2VfZG9f
dW5wYWNrKGQpCiAgICAgMDAyNDoKRmlsZTogJ2Jhc2VfZG9fdW5wYWNrJywgbGluZW5vOiAxOCwg
ZnVuY3Rpb246IGJhc2VfZG9fdW5wYWNrCiAgICAgMDAxNDogICAgYmIudXRpbHMucmVtb3ZlKHBf
ZGlyLCBUcnVlKQogICAgIDAwMTU6CiAgICAgMDAxNjogICAgdHJ5OgogICAgIDAwMTc6ICAgICAg
ICBmZXRjaGVyID0gYmIuZmV0Y2gyLkZldGNoKHNyY191cmksIGQpCiAqKiogMDAxODogICAgICAg
IGZldGNoZXIudW5wYWNrKHJvb3RkaXIpCiAgICAgMDAxOTogICAgZXhjZXB0IGJiLmZldGNoMi5C
QkZldGNoRXhjZXB0aW9uIGFzIGU6CiAgICAgMDAyMDogICAgICAgIHJhaXNlIGJiLmJ1aWxkLkZ1
bmNGYWlsZWQoZSkKICAgICAwMDIxOgogICAgIDAwMjI6CkZpbGU6ICcuLi4vcG9reS9iaXRiYWtl
L2xpYi9iYi9mZXRjaDIvX19pbml0X18ucHknLCBsaW5lbm86IDE2OTUsIGZ1bmN0aW9uOiB1bnBh
Y2sKICAgICAxNjkxOgogICAgIDE2OTI6ICAgICAgICAgICAgaWYgdWQubG9ja2ZpbGU6CiAgICAg
MTY5MzogICAgICAgICAgICAgICAgbGYgPSBiYi51dGlscy5sb2NrZmlsZSh1ZC5sb2NrZmlsZSkK
ICAgICAxNjk0OgogKioqIDE2OTU6ICAgICAgICAgICAgdWQubWV0aG9kLnVucGFjayh1ZCwgcm9v
dCwgc2VsZi5kKQogICAgIDE2OTY6CiAgICAgMTY5NzogICAgICAgICAgICBpZiB1ZC5sb2NrZmls
ZToKICAgICAxNjk4OiAgICAgICAgICAgICAgICBiYi51dGlscy51bmxvY2tmaWxlKGxmKQogICAg
IDE2OTk6CkZpbGU6ICcuLi4vcG9reS9iaXRiYWtlL2xpYi9iYi9mZXRjaDIvZ2l0LnB5JywgbGlu
ZW5vOiAyOTEsIGZ1bmN0aW9uOiB1bnBhY2sKICAgICAwMjg3OiAgICAgICAgICAgICAgICBydW5m
ZXRjaGNtZCgiJXMgY2hlY2tvdXQtaW5kZXggLXEgLWYgLWEiICUgdWQuYmFzZWNtZCwgZCkKICAg
ICAwMjg4OiAgICAgICAgICAgIGVsaWYgbm90IHVkLm5vYnJhbmNoOgogICAgIDAyODk6ICAgICAg
ICAgICAgICAgIGJyYW5jaG5hbWUgPSAgdWQuYnJhbmNoZXNbdWQubmFtZXNbMF1dCiAgICAgMDI5
MDogICAgICAgICAgICAgICAgcnVuZmV0Y2hjbWQoIiVzIGNoZWNrb3V0IC1CICVzICVzIiAlICh1
ZC5iYXNlY21kLCBicmFuY2huYW1lLCBcCiAqKiogMDI5MTogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgdWQucmV2aXNpb25zW3VkLm5hbWVzWzBdXSksIGQpCiAgICAgMDI5MjogICAgICAgICAg
ICAgICAgcnVuZmV0Y2hjbWQoIiVzIGJyYW5jaCAtLXNldC11cHN0cmVhbSAlcyBvcmlnaW4vJXMi
ICUgKHVkLmJhc2VjbWQsIGJyYW5jaG5hbWUsIFwKICAgICAwMjkzOiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBicmFuY2huYW1lKSwgZCkKICAgICAwMjk0OiAgICAgICAgICAgIGVsc2U6CiAg
ICAgMDI5NTogICAgICAgICAgICAgICAgcnVuZmV0Y2hjbWQoIiVzIGNoZWNrb3V0ICVzIiAlICh1
ZC5iYXNlY21kLCB1ZC5yZXZpc2lvbnNbdWQubmFtZXNbMF1dKSwgZCkKRmlsZTogJy4uLi9wb2t5
L2JpdGJha2UvbGliL2JiL2ZldGNoMi9fX2luaXRfXy5weScsIGxpbmVubzogODEyLCBmdW5jdGlv
bjogcnVuZmV0Y2hjbWQKICAgICAwODA4OgogICAgMDgwOTogICAgZm9yIHZhciBpbiBleHBvcnR2
YXJzOgogICAgIDA4MTA6ICAgICAgICB2YWwgPSBkLmdldFZhcih2YXIsIFRydWUpCiAgICAgMDgx
MTogICAgICAgIGlmIHZhbDoKICoqKiAwODEyOiAgICAgICAgICAgIGNtZCA9ICdleHBvcnQgJyAr
IHZhciArICc9XCIlc1wiOyAlcycgJSAodmFsLCBjbWQpCiAgICAgMDgxMzoKICAgICAwODE0OiAg
ICBsb2dnZXIuZGVidWcoMSwgIlJ1bm5pbmcgJXMiLCBjbWQpCiAgICAgMDgxNToKICAgICAwODE2
OiAgICBzdWNjZXNzID0gRmFsc2UKRXhjZXB0aW9uOiBVbmljb2RlRGVjb2RlRXJyb3I6ICdhc2Np
aScgY29kZWMgY2FuJ3QgZGVjb2RlIGJ5dGUgMHhjMyBpbiBwb3NpdGlvbiAxNzogb3JkaW5hbCBu
b3QgaW4gcmFuZ2UoMTI4KQo=

--_002_145399719566480555ginde_--
