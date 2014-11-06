Return-Path: <prvs=6387b4dcc0=jeffrey.wang@ll.mit.edu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B7EEE00860; Thu,  6 Nov 2014 16:03:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [129.55.12.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
X-Greylist: delayed 3016 seconds by postgrey-1.32 at yocto-www;
	Thu, 06 Nov 2014 16:03:05 PST
Received: from mx1.ll.mit.edu (MX1.LL.MIT.EDU [129.55.12.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57D99E0084E
	for <yocto@yoctoproject.org>; Thu,  6 Nov 2014 16:03:05 -0800 (PST)
Received: from LLE2K10-HUB02.mitll.ad.local (LLE2K10-HUB02.mitll.ad.local) by
	mx1.ll.mit.edu (unknown) with ESMTP id sA6NClN5019475 for
	<yocto@yoctoproject.org>; Thu, 6 Nov 2014 18:12:47 -0500
Message-ID: <545C0067.1080506@ll.mit.edu>
Date: Thu, 6 Nov 2014 18:12:39 -0500
From: Jeff Wang <jeffrey.wang@ll.mit.edu>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
X-Originating-IP: [172.25.192.145]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.12.52, 1.0.28,
	0.0.0000
	definitions=2014-11-06_07:2014-11-06, 2014-11-06,
	1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	suspectscore=1 phishscore=0
	adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1
	engine=7.0.1-1402240000 definitions=main-1411060181
X-Mailman-Approved-At: Fri, 07 Nov 2014 08:25:52 -0800
Subject: Test in do_patch() fails for annotated tags
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
X-List-Received-Date: Fri, 07 Nov 2014 00:03:18 -0000
X-Groupsio-MsgNum: 22097
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha1; boundary="------------ms070403000506090600070801"

--------------ms070403000506090600070801
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Commit 92c1ece6c347030d48995a36f4c67861356e59d3 causes the test in=20
do_patch() in kernel-yocto.bbclass to fail if ${machine_srcrev} is an=20
annotated tag. The check is meant to ensure that ${machine_srcrev} is an =

ancestor of HEAD, but if ${machine_srcrev} is a tag, then "$(git=20
rev-parse --verify ${machine_srcrev})" evaluates to the SHA of the tag=20
instead of what it's pointing to.

Replacing "$(git rev-parse --verify ${machine_srcrev})" with "$(git=20
rev-parse --verify ${machine_srcrev}~0)" seems to fix the problem. See=20
http://stackoverflow.com/a/1863712/1454667

--=20
Jeff Wang



--------------ms070403000506090600070801
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIJtzCCBLww
ggOkoAMCAQICASkwDQYJKoZIhvcNAQEFBQAwVDELMAkGA1UEBhMCVVMxHzAdBgNVBAoTFk1JVCBM
aW5jb2xuIExhYm9yYXRvcnkxDDAKBgNVBAsTA1BLSTEWMBQGA1UEAxMNTUlUTEwgUm9vdCBDQTAe
Fw0xMzEyMTcwMDAwMDBaFw0yMDEyMzEyMzU5NTlaMFExCzAJBgNVBAYTAlVTMR8wHQYDVQQKExZN
SVQgTGluY29sbiBMYWJvcmF0b3J5MQwwCgYDVQQLEwNQS0kxEzARBgNVBAMTCk1JVExMIENBLTMw
ggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDaMFJ1bXy25bW03EbqHwHSSpyQVlAAC2gc
KS9SlQRfqMW8F3yZAjncbIthG4CjgdYml7v+LMVc59IkOzpQzmi+8I59eDZsmANiUEL0kNwsEUif
Semk671G+mNZKLG0LnpyvAnlSzlA923G0p16TksleXagrDfDyWKFSLF49vFZp3WbtkwopqC+b3NP
Js/oW6YpHF5gmNKkHb5wBiOgYYRtJUfLHy7MebrECgEwfFrxvL7IPPwnOTqw/2KKWA/eJdIagICa
HIHO+VBDlA01Y/4Saj2PP+6QqFhUH9XB3G2iq48CqfiJ8MAhoz121vTlzLWBcAVI/dn+JSTHIFll
Q5F/AgMBAAGjggGaMIIBljASBgNVHRMBAf8ECDAGAQH/AgEAMB0GA1UdDgQWBBTXYGYOe0mNdUwN
/c9G3sjHEofKvzAfBgNVHSMEGDAWgBRnqnrP9AqmuXK1iqDSnfIQw0PtKTAOBgNVHQ8BAf8EBAMC
AYYwZgYIKwYBBQUHAQEEWjBYMC0GCCsGAQUFBzAChiFodHRwOi8vY3JsLmxsLm1pdC5lZHUvZ2V0
dG8/TExSQ0EwJwYIKwYBBQUHMAGGG2h0dHA6Ly9vY3NwLmxsLm1pdC5lZHUvb2NzcDAzBgNVHR8E
LDAqMCigJqAkhiJodHRwOi8vY3JsLmxsLm1pdC5lZHUvZ2V0Y3JsP0xMUkNBMIGSBgNVHSAEgYow
gYcwDQYLKoZIhvcSAgEDAQYwDQYLKoZIhvcSAgEDAQgwDQYLKoZIhvcSAgEDAQcwDQYLKoZIhvcS
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
QrH+mAAAAAAAAA==

--------------ms070403000506090600070801--
