Return-Path: <sona.sarmadi@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02C04E00832; Thu, 19 Mar 2015 09:13:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id A7221E0076B;
	Thu, 19 Mar 2015 09:13:54 -0700 (PDT)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.03.0224.002; Thu, 19 Mar 2015 17:13:48 +0100
From: Sona Sarmadi <sona.sarmadi@enea.com>
To: "yocto-security@yoctoproject.org" <yocto-security@yoctoproject.org>
Thread-Topic: [openssl-announce] OpenSSL Security Advisory
Thread-Index: AQHQYlUEZWmO6M7V9Uugmmjb8tIyqJ0j+aXw
Date: Thu, 19 Mar 2015 16:13:47 +0000
Message-ID: <3230301C09DEF9499B442BBE162C5E48258B244E@SESTOEX04.enea.se>
References: <20150319141202.GA1887@openssl.org>
In-Reply-To: <20150319141202.GA1887@openssl.org>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.1.188]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: FW: [openssl-announce] OpenSSL Security Advisory
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
X-List-Received-Date: Thu, 19 Mar 2015 16:13:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

FYI,

-----Original Message-----
From: openssl-announce [mailto:openssl-announce-bounces@openssl.org] On Beh=
alf Of OpenSSL
Sent: den 19 mars 2015 15:12
To: OpenSSL Developer ML; OpenSSL User Support ML; OpenSSL Announce ML
Subject: [openssl-announce] OpenSSL Security Advisory

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

OpenSSL Security Advisory [19 Mar 2015]
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

OpenSSL 1.0.2 ClientHello sigalgs DoS (CVE-2015-0291) =3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Severity: High

If a client connects to an OpenSSL 1.0.2 server and renegotiates with an in=
valid signature algorithms extension a NULL pointer dereference will occur.
This can be exploited in a DoS attack against the server.

This issue affects OpenSSL version: 1.0.2

OpenSSL 1.0.2 users should upgrade to 1.0.2a.

This issue was was reported to OpenSSL on 26th February 2015 by David Ramos=
 of Stanford University. The fix was developed by Stephen Henson and Matt C=
aswell of the OpenSSL development team.

Reclassified: RSA silently downgrades to EXPORT_RSA [Client] (CVE-2015-0204=
) =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

Severity: High

This security issue was previously announced by the OpenSSL project and cla=
ssified as "low" severity. This severity rating has now been changed to "hi=
gh".

This was classified low because it was originally thought that server RSA e=
xport ciphersuite support was rare: a client was only vulnerable to a MITM =
attack against a server which supports an RSA export ciphersuite. Recent st=
udies have shown that RSA export ciphersuites support is far more common.

This issue affects OpenSSL versions: 1.0.1, 1.0.0 and 0.9.8.

OpenSSL 1.0.1 users should upgrade to 1.0.1k.
OpenSSL 1.0.0 users should upgrade to 1.0.0p.
OpenSSL 0.9.8 users should upgrade to 0.9.8zd.

This issue was reported to OpenSSL on 22nd October 2014 by Karthikeyan Bhar=
gavan of the PROSECCO team at INRIA. The fix was developed by Stephen Henso=
n of the OpenSSL core team. It was previously announced in the OpenSSL secu=
rity advisory on 8th January 2015.

Multiblock corrupted pointer (CVE-2015-0290) =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D

Severity: Moderate

OpenSSL 1.0.2 introduced the "multiblock" performance improvement. This fea=
ture only applies on 64 bit x86 architecture platforms that support AES NI =
instructions. A defect in the implementation of "multiblock" can cause Open=
SSL's internal write buffer to become incorrectly set to NULL when using no=
n-blocking IO. Typically, when the user application is using a socket BIO f=
or writing, this will only result in a failed connection. However if some o=
ther BIO is used then it is likely that a segmentation fault will be trigge=
red, thus enabling a potential DoS attack.

This issue affects OpenSSL version: 1.0.2

OpenSSL 1.0.2 users should upgrade to 1.0.2a.

This issue was reported to OpenSSL on 13th February 2015 by Daniel Danner a=
nd Rainer Mueller. The fix was developed by Matt Caswell of the OpenSSL dev=
elopment team.

Segmentation fault in DTLSv1_listen (CVE-2015-0207) =3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Severity: Moderate

The DTLSv1_listen function is intended to be stateless and processes the in=
itial ClientHello from many peers. It is common for user code to loop over =
the call to DTLSv1_listen until a valid ClientHello is received with an ass=
ociated cookie. A defect in the implementation of DTLSv1_listen means that =
state is preserved in the SSL object from one invocation to the next that c=
an lead to a segmentation fault. Errors processing the initial ClientHello =
can trigger this scenario. An example of such an error could be that a DTLS=
1.0 only client is attempting to connect to a DTLS1.2 only server.

This issue affects OpenSSL version: 1.0.2

OpenSSL 1.0.2 DTLS users should upgrade to 1.0.2a.

This issue was reported to OpenSSL on 27th January 2015 by Per Allansson. T=
he fix was developed by Matt Caswell of the OpenSSL development team.

Segmentation fault in ASN1_TYPE_cmp (CVE-2015-0286) =3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Severity: Moderate

The function ASN1_TYPE_cmp will crash with an invalid read if an attempt is=
 made to compare ASN.1 boolean types. Since ASN1_TYPE_cmp is used to check =
certificate signature algorithm consistency this can be used to crash any c=
ertificate verification operation and exploited in a DoS attack. Any applic=
ation which performs certificate verification is vulnerable including OpenS=
SL clients and servers which enable client authentication.

This issue affects all current OpenSSL versions: 1.0.2, 1.0.1, 1.0.0 and 0.=
9.8.

OpenSSL 1.0.2 users should upgrade to 1.0.2a OpenSSL 1.0.1 users should upg=
rade to 1.0.1m.
OpenSSL 1.0.0 users should upgrade to 1.0.0r.
OpenSSL 0.9.8 users should upgrade to 0.9.8zf.

This issue was discovered and fixed by Stephen Henson of the OpenSSL develo=
pment team.

Segmentation fault for invalid PSS parameters (CVE-2015-0208) =3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D

Severity: Moderate

The signature verification routines will crash with a NULL pointer derefere=
nce if presented with an ASN.1 signature using the RSA PSS algorithm and in=
valid parameters. Since these routines are used to verify certificate signa=
ture algorithms this can be used to crash any certificate verification oper=
ation and exploited in a DoS attack. Any application which performs certifi=
cate verification is vulnerable including OpenSSL clients and servers which=
 enable client authentication.

This issue affects OpenSSL version: 1.0.2

OpenSSL 1.0.2 users should upgrade to 1.0.2a

This issue was was reported to OpenSSL on 31st January 2015 by Brian Carpen=
ter and a fix developed by Stephen Henson of the OpenSSL development team.

ASN.1 structure reuse memory corruption (CVE-2015-0287) =3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Severity: Moderate

Reusing a structure in ASN.1 parsing may allow an attacker to cause memory =
corruption via an invalid write. Such reuse is and has been strongly discou=
raged and is believed to be rare.

Applications that parse structures containing CHOICE or ANY DEFINED BY comp=
onents may be affected. Certificate parsing (d2i_X509 and related
functions) are however not affected. OpenSSL clients and servers are not af=
fected.

This issue affects all current OpenSSL versions: 1.0.2, 1.0.1, 1.0.0 and 0.=
9.8.

OpenSSL 1.0.2 users should upgrade to 1.0.2a OpenSSL 1.0.1 users should upg=
rade to 1.0.1m.
OpenSSL 1.0.0 users should upgrade to 1.0.0r.
OpenSSL 0.9.8 users should upgrade to 0.9.8zf.

This issue was discovered by Emilia K=C3=A4sper and a fix developed by Step=
hen Henson of the OpenSSL development team.

PKCS7 NULL pointer dereferences (CVE-2015-0289) =3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Severity: Moderate

The PKCS#7 parsing code does not handle missing outer ContentInfo correctly=
.
An attacker can craft malformed ASN.1-encoded PKCS#7 blobs with missing con=
tent and trigger a NULL pointer dereference on parsing.

Applications that verify PKCS#7 signatures, decrypt PKCS#7 data or otherwis=
e parse PKCS#7 structures from untrusted sources are affected. OpenSSL clie=
nts and servers are not affected.

This issue affects all current OpenSSL versions: 1.0.2, 1.0.1, 1.0.0 and 0.=
9.8.

OpenSSL 1.0.2 users should upgrade to 1.0.2a OpenSSL 1.0.1 users should upg=
rade to 1.0.1m.
OpenSSL 1.0.0 users should upgrade to 1.0.0r.
OpenSSL 0.9.8 users should upgrade to 0.9.8zf.

This issue was reported to OpenSSL on February 16th 2015 by Michal Zalewski=
 (Google) and a fix developed by Emilia K=C3=A4sper of the OpenSSL developm=
ent team.

Base64 decode (CVE-2015-0292)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

Severity: Moderate

A vulnerability existed in previous versions of OpenSSL related to the proc=
essing of base64 encoded data. Any code path that reads base64 data from an=
 untrusted source could be affected (such as the PEM processing routines).
Maliciously crafted base 64 data could trigger a segmenation fault or memor=
y corruption. This was addressed in previous versions of OpenSSL but has no=
t been included in any security advisory until now.

This issue affects OpenSSL versions: 1.0.1, 1.0.0 and 0.9.8.

OpenSSL 1.0.1 users should upgrade to 1.0.1h.
OpenSSL 1.0.0 users should upgrade to 1.0.0m.
OpenSSL 0.9.8 users should upgrade to 0.9.8za.

The fix for this issue can be identified by commits d0666f289a (1.0.1),
84fe686173 (1.0.0) and 9febee0272 (0.9.8). This issue was originally report=
ed by Robert Dugal and subsequently by David Ramos.

DoS via reachable assert in SSLv2 servers (CVE-2015-0293) =3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

Severity: Moderate

A malicious client can trigger an OPENSSL_assert (i.e., an abort) in server=
s that both support SSLv2 and enable export cipher suites by sending a spec=
ially crafted SSLv2 CLIENT-MASTER-KEY message.

This issue affects all current OpenSSL versions: 1.0.2, 1.0.1, 1.0.0 and 0.=
9.8.

OpenSSL 1.0.2 users should upgrade to 1.0.2a OpenSSL 1.0.1 users should upg=
rade to 1.0.1m.
OpenSSL 1.0.0 users should upgrade to 1.0.0r.
OpenSSL 0.9.8 users should upgrade to 0.9.8zf.

This issue was discovered by Sean Burford (Google) and Emilia K=C3=A4sper (=
OpenSSL development team) in March 2015 and the fix was developed by Emilia=
 K=C3=A4sper.

Empty CKE with client auth and DHE (CVE-2015-1787) =3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Severity: Moderate

If client auth is used then a server can seg fault in the event of a DHE ci=
phersuite being selected and a zero length ClientKeyExchange message being =
sent by the client. This could be exploited in a DoS attack.

This issue affects OpenSSL version: 1.0.2

OpenSSL 1.0.2 users should upgrade to 1.0.2a.

This issue was discovered and the fix was developed by Matt Caswell of the =
OpenSSL development team.

Handshake with unseeded PRNG (CVE-2015-0285) =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D

Severity: Low

Under certain conditions an OpenSSL 1.0.2 client can complete a handshake w=
ith an unseeded PRNG. The conditions are:
- - The client is on a platform where the PRNG has not been seeded automati=
cally, and the user has not seeded manually
- - A protocol specific client method version has been used (i.e. not
SSL_client_methodv23)
- - A ciphersuite is used that does not require additional random data from=
 the PRNG beyond the initial ClientHello client random (e.g. PSK-RC4-SHA).

If the handshake succeeds then the client random that has been used will ha=
ve been generated from a PRNG with insufficient entropy and therefore the o=
utput may be predictable.

For example using the following command with an unseeded openssl will succe=
ed on an unpatched platform:

openssl s_client -psk 1a2b3c4d -tls1_2 -cipher PSK-RC4-SHA

This issue affects OpenSSL version: 1.0.2

OpenSSL 1.0.2 users should upgrade to 1.0.2a.

This issue was discovered and the fix was developed by Matt Caswell of the =
OpenSSL development team.

Use After Free following d2i_ECPrivatekey error (CVE-2015-0209) =3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Severity: Low

A malformed EC private key file consumed via the d2i_ECPrivateKey function =
could cause a use after free condition. This, in turn, could cause a double=
 free in several private key parsing functions (such as d2i_PrivateKey or E=
VP_PKCS82PKEY) and could lead to a DoS attack or memory corruption for appl=
ications that receive EC private keys from untrusted sources. This scenario=
 is considered rare.

This issue affects all current OpenSSL versions: 1.0.2, 1.0.1, 1.0.0 and 0.=
9.8.

OpenSSL 1.0.2 users should upgrade to 1.0.2a OpenSSL 1.0.1 users should upg=
rade to 1.0.1m.
OpenSSL 1.0.0 users should upgrade to 1.0.0r.
OpenSSL 0.9.8 users should upgrade to 0.9.8zf.

This issue was discovered by the BoringSSL project and fixed in their commi=
t 517073cd4b. The OpenSSL fix was developed by Matt Caswell of the OpenSSL =
development team.

X509_to_X509_REQ NULL pointer deref (CVE-2015-0288) =3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Severity: Low

The function X509_to_X509_REQ will crash with a NULL pointer dereference if=
 the certificate key is invalid. This function is rarely used in practice.

This issue affects all current OpenSSL versions: 1.0.2, 1.0.1, 1.0.0 and 0.=
9.8.

OpenSSL 1.0.2 users should upgrade to 1.0.2a OpenSSL 1.0.1 users should upg=
rade to 1.0.1m.
OpenSSL 1.0.0 users should upgrade to 1.0.0r.
OpenSSL 0.9.8 users should upgrade to 0.9.8zf.

This issue was discovered by Brian Carpenter and a fix developed by Stephen=
 Henson of the OpenSSL development team.

Note
=3D=3D=3D=3D

As per our previous announcements and our Release Strategy (https://www.ope=
nssl.org/about/releasestrat.html), support for OpenSSL versions
1.0.0 and 0.9.8 will cease on 31st December 2015. No security updates for t=
hese releases will be provided after that date. Users of these releases are=
 advised to upgrade.

References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

URL for this Security Advisory:
https://www.openssl.org/news/secadv_20150319.txt

Note: the online version of the advisory may be updated with additional det=
ails over time.

For details of OpenSSL severity classifications please see:
https://www.openssl.org/about/secpolicy.html

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVCs3bAAoJENnE0m0OYESRxuYH/iQAugnk+JYPe14KVYAoIHWS
W63200SoPK4v6Sl6v7CbBzWPXLUe16n4ESlycrmiowAviOAroZKL+yk7iv/SHStL
cQN8tx26vzESIgKKWUyMKUsm82JF08dJiZjiw/l+I7ntM+jMkXmvf1bMF2FqmzYl
5dBJmZqUK5sz6sue78iQT5yznJkJ+106oJUVXTHb3NVya4WMDzQ9IFgYFtfaZCQI
kRy355VZcEl1ePVYFxE0fDQ2mzBeEejsv8eeOs9VRv5yMnV5dV35RQeKS5YxFXsP
sT+ToTkNBF6yMt1HEAMR+2viisUvJDQHePLCodJSqGlfsgOVlM8N3pY6NPT8fDM=3D
=3DI76k
-----END PGP SIGNATURE-----
_______________________________________________
openssl-announce mailing list
To unsubscribe: https://mta.openssl.org/mailman/listinfo/openssl-announce

