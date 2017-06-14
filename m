Return-Path: <nicolas.adell@actia.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC42AE00B8F; Wed, 14 Jun 2017 13:26:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.65 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0065.outbound.protection.outlook.com [104.47.2.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CECE7E00B77
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 13:25:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=actia.fr; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=e6cIXaCfIZPkENy/xYm+m8v3uwDhm9gzoqbrUsZIJ0o=;
	b=draB0jWYe1n8d8VqhQKcufH8uk2Gxzm604voHole5+PgMXt7oDURHVj5/Epyf2IXLeNnz5dK4/NrWbdgvphK2aVvf/YAZsMWXy3VrPWSnJKz/Ib1AZKzqfNjWQoGIjRGnqPfw5YoFNgFkiG4XMa7Jhp6pLNr4fMDto39TEygO0g=
Received: from DB6PR0101MB2517.eurprd01.prod.exchangelabs.com (10.169.221.150)
	by DB6PR0101MB2519.eurprd01.prod.exchangelabs.com (10.169.222.7) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1178.14;
	Wed, 14 Jun 2017 06:51:55 +0000
Received: from DB6PR0101MB2517.eurprd01.prod.exchangelabs.com
	([fe80::eca7:e2e:68ab:5d74]) by
	DB6PR0101MB2517.eurprd01.prod.exchangelabs.com
	([fe80::eca7:e2e:68ab:5d74%17]) with mapi id 15.01.1178.013;
	Wed, 14 Jun 2017 06:51:55 +0000
From: Nicolas ADELL <nicolas.adell@actia.fr>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] How to package the signed kernel modules into the
	filesystem ?
Thread-Index: AQHS5NnzdW03CrNyQUyTx43JEVoKcg==
Date: Wed, 14 Jun 2017 06:51:55 +0000
Message-ID: <DB6PR0101MB2517CD981E48E94ABA6B5F9D85C30@DB6PR0101MB2517.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=actia.fr; 
x-originating-ip: [2a01:111:e400:5366:cafe::dc]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DB6PR0101MB2519;
	7:dkcMZPRmEagx7fpWH7yQOoduWa1JB9urzzmcj1HN+JcJKACjJ7yqqF5hg//e459fGp9Gi1El8ZiB72uMeJ0gVumOzuybYUgyoUqeF1w1wTMq1v43W1gpPCDxqj9sG+Jh5GmJQEmijDqHHS3U0p5ZAE+JEz3VKRhksAeHrlrtdf1sdptvIn+e07uxUOMieU0AloMXKgR862V4FFhrgsxy5IVfxzU0Txx09KSXmFNVmRPIKwGeHBDZi7v6AmUtA9eQkvX+dx6YagkJ/VZJPy9bvgkaZE14wL8Dh1Ciidfp9zzj3HYpujFudlzfyikb7aIUESAjQTGt3bR0J/Rw0RCPHLzqa18GL+XyAX2muV0JsdTojHh4iP59J3cC7dmYnJMjXraLTSkADHwRy0BrB/10CM1BUU12cWo9Z+qG4Jb6IoKMvD6dyPNiTVhRpee5JQ9k1B0qfVhRdWOdWwcWfwfwVgJssAQ6sF00fOCitIDIT6NHFG8tW5HUmFSP3KSKbyYAEdbqIL3wbG8SS/EmR2YQLfcjp6Y23ajeDDQAdEFqr7KX5q9O6qn0XUITnLNFZ2Bicfr0NdLs3Lcp7/EDQ8i/VjlyNmMDR+N6EbZOctQqv1sowC6bnOQe24Hj4fw7/gDryysYumkVdS+vXDu0tOKGv8jfj3wPcMQRPLK58WRtpZ/Vbs8JDb2FThVsy2Xo6wd3EUChHDxtAFFB2/zSi7zenW3G8CfiuZpDLp4Rl1hocfYxPE7THTzfsSDjDmlpRAW3vUEWkcRYDAE/iM/HGH1jGYuqo/t0xOoTlkG/6PV9/Xc=
x-ms-office365-filtering-correlation-id: 37abaaf3-9a45-4631-ce15-08d4b2f1d8b0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(201703131423075)(201703031133081);
	SRVR:DB6PR0101MB2519; 
x-ms-traffictypediagnostic: DB6PR0101MB2519:
x-microsoft-antispam-prvs: <DB6PR0101MB25198B45180254814C4C589485C30@DB6PR0101MB2519.eurprd01.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(17755550239193);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(8121501046)(5005006)(93006095)(93001095)(100000703101)(100105400095)(10201501046)(3002001)(6041248)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(20161123560025)(20161123555025)(20161123562025)(20161123564025)(6072148)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:DB6PR0101MB2519; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:DB6PR0101MB2519; 
x-forefront-prvs: 033857D0BD
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(39830400002)(39450400003)(39410400002)(39400400002)(110136004)(5250100002)(33656002)(2501003)(38730400002)(8676002)(8936002)(2351001)(14454004)(478600001)(53936002)(7696004)(6916009)(189998001)(2900100001)(2906002)(5660300001)(74316002)(6506006)(99286003)(7736002)(3280700002)(50986999)(6436002)(9686003)(74482002)(54356999)(3660700001)(1730700003)(6116002)(81166006)(86362001)(55016002)(305945005)(25786009)(102836003)(5640700003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0101MB2519;
	H:DB6PR0101MB2517.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: actia.fr
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2017 06:51:55.4587 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 86314f06-03e8-4460-82f3-a44f992a19c7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0101MB2519
Subject: How to package the signed kernel modules into the filesystem ?
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
X-List-Received-Date: Wed, 14 Jun 2017 20:26:02 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I am working with kernel 3.10.17 and poky daisy.

The kernel was patched to support certificates list & trusted keyring.

I managed to build the kernel both with an own keypair (signature done manu=
ally post-build) and with the CONFIG_MODULE_SIG_ALL option enabled.

In the second case, I noticed that signed modules are not included in the /=
lib/modules directory of the filesystem image, although the variable MACHIN=
E_EXTRA_RRECOMMENDS contains "kernel-modules" into the machine configuratio=
n.

All modules integrated inside the filesystem remained unsigned. They do not=
 include the digital signature normally appended at their end.

Once flashed with the rootfs, the proper certificate is loaded on the devic=
e, but 'lsmod' command returns an empty list of loaded modules.

However, signed modules are packaged into the modules.tgz file. That's why =
modules are loaded as expected if I untar the archive's content on the devi=
ce.

It might be possible to run a custom command by overloading the ROOTFS_POST=
PROCESS_COMMAND variable but is there a more appropriate way to proceed ?

Best regards,

Nicolas=

