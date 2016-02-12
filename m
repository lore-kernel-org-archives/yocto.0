Return-Path: <jrdavid@8d.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A8C7E00C0B; Fri, 12 Feb 2016 07:56:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_05,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [64.254.227.119 listed in list.dnswl.org]
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0106]
X-Greylist: delayed 375 seconds by postgrey-1.32 at yocto-www;
	Fri, 12 Feb 2016 07:56:31 PST
Received: from hermes.holo.8d.com (hermes.holo.8d.com [64.254.227.119])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D91A3E00C05
	for <yocto@yoctoproject.org>; Fri, 12 Feb 2016 07:56:31 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by hermes.holo.8d.com (Postfix) with ESMTP id 7461A46000A
	for <yocto@yoctoproject.org>; Fri, 12 Feb 2016 10:50:15 -0500 (EST)
X-Virus-Scanned: amavisd-new at 8d.com
Received: from hermes.holo.8d.com ([127.0.0.1])
	by localhost (hermes.holo.8d.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B0AaLaDfwHq0 for <yocto@yoctoproject.org>;
	Fri, 12 Feb 2016 10:50:15 -0500 (EST)
X-Virus-Scanned: amavisd-new at 8d.com
Received: from jrdavid.usine.8d.com (jrdavid.usine.8d.com [192.168.142.155])
	by hermes.holo.8d.com (Postfix) with ESMTPSA id 2ACB9460008
	for <yocto@yoctoproject.org>; Fri, 12 Feb 2016 10:50:15 -0500 (EST)
From: =?utf-8?Q?Jean-Ren=C3=A9_David?= <jrdavid@8d.com>
Message-Id: <2ED5DCA0-7B5D-44E2-90C3-008B851C9029@8d.com>
Date: Fri, 12 Feb 2016 10:50:14 -0500
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Mailer: Apple Mail (2.3112)
Subject: Changing provider/version on target sysroot only
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
X-List-Received-Date: Fri, 12 Feb 2016 15:56:35 -0000
X-Groupsio-MsgNum: 28455
Content-Type: multipart/signed;
	boundary="Apple-Mail=_A635E80E-93CA-40F4-AEBF-86AC5A61322C";
	protocol="application/pkcs7-signature"; micalg=sha1

--Apple-Mail=_A635E80E-93CA-40F4-AEBF-86AC5A61322C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hello,

I'm trying to reproduce an existing linux image using yocto. It's a =
rather old image. I'm fine using the latest stable version of yocto but =
I need the packages on the target sysroot to match the versions I have =
in the old image.

How do I specifiy a provider/version for a package on the target =
sysroot, while keeping the stock version for native and host sdk?

Thanks,

--=20
JR=

--Apple-Mail=_A635E80E-93CA-40F4-AEBF-86AC5A61322C
Content-Disposition: attachment;
	filename=smime.p7s
Content-Type: application/pkcs7-signature;
	name=smime.p7s
Content-Transfer-Encoding: base64

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
AzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTE2MDIxMjE1NTAxNVowIwYJKoZIhvcNAQkE
MRYEFH9PXnfPh/F85fhaqk2Ps5PGJJIwMIHzBgkrBgEEAYI3EAQxgeUwgeIwgdQxCzAJBgNVBAYT
AkNBMQ8wDQYDVQQIEwZRdWViZWMxETAPBgNVBAcTCE1vbnRyZWFsMR0wGwYDVQQKExQ4RCBUZWNo
bm9sb2dpZXMgSW5jLjEWMBQGA1UECxMNU3lzQWRtaW4gZHB0LjE+MDwGA1UEAxM1OEQgVGVjaG5v
bG9naWVzIFJvb3QgQ2VydGlmaWNhdGUgQXV0aG9yaXR5IDIwMTEuMTIuMDIxKjAoBgkqhkiG9w0B
CQEWG3N5c2FkbWluLnNzbGNlcnRzLmNhQDhkLmNvbQIJAPmj/OdWS2K2MIH1BgsqhkiG9w0BCRAC
CzGB5aCB4jCB1DELMAkGA1UEBhMCQ0ExDzANBgNVBAgTBlF1ZWJlYzERMA8GA1UEBxMITW9udHJl
YWwxHTAbBgNVBAoTFDhEIFRlY2hub2xvZ2llcyBJbmMuMRYwFAYDVQQLEw1TeXNBZG1pbiBkcHQu
MT4wPAYDVQQDEzU4RCBUZWNobm9sb2dpZXMgUm9vdCBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkgMjAx
MS4xMi4wMjEqMCgGCSqGSIb3DQEJARYbc3lzYWRtaW4uc3NsY2VydHMuY2FAOGQuY29tAgkA+aP8
51ZLYrYwDQYJKoZIhvcNAQEBBQAEggIAOog/P6Z18eQZ7K7MjcdNGa3OPX9GKbR14chuBECeiyZA
dinmJARA1odw+4H2ADapR0rRCoTowzqaPiH3ykShtydKgM/Z+SFulR1dE2R6nE0fn1+cd2xMeamf
Ex38zoSbgjNCICHC9VtJh+pcZ+b54V7cingyIwrkA9ZNXfF/PDUGPnHt9NZmYwuzh2J4htyU2W3t
g8X39a6AafMrwp2JI0HSI4dFiHTUcHcadM0aTNGvct2+MudgtGxH5W85KVYw2utAObMlk7/uANr1
KRrmqXPAtrnmZdf/wyR36Sh55j4POzfjEiiCsqFAY+ZGQzkLHB+4QtxWEagc/KFa1xME7cesXR06
+cTnvtsGIJeAZsqrcdl4mSMP0F7HgFNjVYK6zYqra/R5I81gkpcijCQyLd2QuwfvaEIcGgZMQ+U2
gGrq7SvE+5QlACKFrobfE9EZ2C3TZR2UwiydDWp6qHgyPgbXZGTjdxjdzi4zmreLpi3PJHcwUm0M
NxMUebGXmubOWBjVbnPhhyxDdZ/SKJBch/TNiAfmnTnSKgYGpSjlg9WrwbvRvo/tC9fpPD0xG6y+
wpubq3SEkTMgg2BDRBq5pZk9Ugt7HoJD2sH2wvGEvEz6K/J9FkWtTRPzZImX2QXhpSfgEVMHrcAw
L+n/fQBcIWHkNUoZecmlWpqYRUg0gsAAAAAAAAA=

--Apple-Mail=_A635E80E-93CA-40F4-AEBF-86AC5A61322C--
