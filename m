Return-Path: <alexander.l.elliott@navy.mil>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4EF02E00D46; Tue, 25 Jun 2019 09:46:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [214.24.27.84 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 70 seconds by postgrey-1.32 at yocto-www;
	Tue, 25 Jun 2019 09:46:19 PDT
Received: from UPBD19PA09.eemsg.mail.mil (upbd19pa09.eemsg.mail.mil
	[214.24.27.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6BD6E00CF4
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 09:46:19 -0700 (PDT)
X-EEMSG-check-017: 205706804|UPBD19PA09_EEMSG_MP9.csd.disa.mil
Received: from naeanrfkax23.nmci.navy.mil (HELO
	NAEANRFKAX23o.NADSUSEA.NADS.NAVY.MIL) ([205.85.33.159])
	by UPBD19PA09.eemsg.mail.mil with ESMTP/TLS/DHE-RSA-AES256-SHA256;
	25 Jun 2019 16:45:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=navy.mil; s=dkim1; c=relaxed/simple;
	q=dns/txt; i=@navy.mil; t=1561481105; x=1564073105;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=7pKeqtPMOdLaYg2uTaMkF5FQ9+i5BPkCQdTb2P95bf4=;
	b=CoT9rDYdz5YgeVmj66HwCbYVvP7suKzyZyv7h9TfTXkFkg/kPpAzyxTz1ffKbR/7
	YV1/mJUp8dMgxGOwvFAkqW0M7qKxSFK5nZ4K6pctdP+eG1SBOVApBjUyfokODy6t
	9r6UDNLXgEziOUbw8vbIQ4zwNgXvBSuPYDXReO0BcI8GxY1U2nf+Nb6QmrFMo5I0
	/1d51x+nwjXn8BN0CTRPLl5/8EUeL5v5HlQUufPI+Q9YLGOkmPvl2QjJQqbc0woL
	5bxGT7hKEfFkunduUAPVnEQtGP2DE33SMoBzxT0nMoq0mvUz7TgeFGw+e+1eo/IZ
	JSG1aishl7wt9c2dRbiTwQ==;
X-AuditID: cd55219e-10cc99e000002aaf-93-5d124f91d8ee
Received: from NAEANRFKXH50V.nadsusea.nads.navy.mil (Unknown_Domain
	[205.85.33.242]) (using TLS with cipher AES128-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by NAEANRFKAX23o.NADSUSEA.NADS.NAVY.MIL (Symantec Messaging Gateway)
	with SMTP id ED.4D.10927.19F421D5;
	Tue, 25 Jun 2019 12:45:05 -0400 (EDT)
From: "Elliott, Alexander L CIV USN NAVSURFWARCEN DAH VA (USA)"
	<alexander.l.elliott@navy.mil>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: yocto recipe error
Thread-Index: AQHVK3VGuPrEj7lLMUGgL3G9LqRrBg==
Date: Tue, 25 Jun 2019 16:44:36 +0000
Message-ID: <189257CBB431F1479EBC576E65F28F0C17FF257C@NAEANRFKXM02V.nadsusea.nads.navy.mil>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.26.67.229]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrNLMWRmVeSWpSXmKPExsVyNlTxk+5Ef6FYg6bz2haTXq5hc2D0aD/R
	xxbAGMVlk5Kak1mWWqRvl8CV8X/DZZaCPs6KrVPnMzYwnmXvYuTkkBAwkXi3bgJTFyMXh5DA
	ESaJQ4vmMoMk2AQSJLp/v2MDsUUETCVeHPsCZgsLSEvMmfWOCSKuILG/YwFUjZ5Ee+9vRhCb
	RUBV4uuJfWA2r0C0xLrPbWD1jAJiEt9PrQGzmQXEJW49mc8EcYSAxJI955khbFGJl4//sXYx
	cgDZChKH1/tBlOtJ3Jg6hQ3C1pZYtvA1M8R4QYmTM5+wgNhCApoSz9csZprAKDQLyYZZSNpn
	IWmfhaR9ASPLKkZlP0dXR78gN2/HCCNjPT9Hl+DQYFdHMANIhEXq+Xr6bGKEBPm8HYzNK6wO
	MQpwMCrx8FpoC8UKsSaWFVfmHmKU4GBWEuE98psxRog3JbGyKrUoP76oNCe1+BCjNAeLkjhv
	oFVEjJBAemJJanZqakFqEUyWiYNTqoExgXmOhdGkJ3GLj1VGvDZ9HP79b6zTr/rq45YfhZuu
	LWWfciA5p+zobluWa9cT3varMBQXrrkpqPpsvfH/GD27/3IFb+7rNv7a2H5a1nqK7IRt7mlf
	yrK/yH08qea9PfT25X5Nz+Oz6iKPvqtmVZ6yIvrkrjdZ0QFvA/pfe/Jrzu/Islp+WGebEktx
	RqKhFnNRcSIAwK2vMG4CAAA=
Subject: yocto recipe error
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
X-List-Received-Date: Tue, 25 Jun 2019 16:46:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I am very new to Yocto and having some trouble building a recipe. I am tryi=
ng to add a pre-built application to my Petalinux project.

Here is my recipe:
SUMMARY =3D "Simple evtest application"
SECTION =3D "PEALINUX/apps"
LICENSE =3D "MIT"
LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bc=
f8506ecda2f7b4f302"file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bcf85=
06ecda2f7b4f302

SRC_URI =3D "file://evtest"file://evtest"

S =3D "${WORKDIR}"

RDEPENDS_${PN} =3D "libgcc_s.so.1"

do_install() {
install -d ${D}/${bindir}
install -m 0755 ${S}/evtest ${D}/${bindir}
}

I added the RDEPENDS_${PN} =3D "libgcc_s.so.1" because I got an error that =
said it depended on it; however, I'm still getting the same error even afte=
r adding that line which says:
"ERROR: Nothing PROVIDES 'libgcc_s.so.1' (but /home/.../evtest.bb DEPENDS o=
n or otherwise requires it)"
and also I get
"ERROR: Required build target 'petalinux-user-image' has no buildable provi=
ders. Missing or unbuildable dependency chain was : ['petalinux-user-image'=
, 'evtest', 'libgcc_s.so.1']

Thanks for your time,

Alex



