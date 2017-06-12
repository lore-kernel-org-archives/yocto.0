Return-Path: <nicolas.adell@actia.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B912DE00AE6; Mon, 12 Jun 2017 04:33:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.86 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3647 seconds by postgrey-1.32 at yocto-www;
	Mon, 12 Jun 2017 04:33:33 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0086.outbound.protection.outlook.com [104.47.2.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB9DDE00A9B
	for <yocto@yoctoproject.org>; Mon, 12 Jun 2017 04:33:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=actia.fr; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=e6cIXaCfIZPkENy/xYm+m8v3uwDhm9gzoqbrUsZIJ0o=;
	b=c8gIDbfMHjZJG3BXNNrFLr9XJwKVPbn50D+3zA9irgWDekFmmIgILz4IYmt8PZgLG0Sdcb9wAsKtGWAgf9i4rbeXBT9ucwHHP3Nh34GxomE1kvzH0qg7pkCBjwKjtuh4RIpWc+rKvfLM4B7gikyCcnaNIOmaXAibH4i2vywHSM0=
Received: from AM3PR01MB1089.eurprd01.prod.exchangelabs.com (10.163.10.143) by
	AM3PR01MB1091.eurprd01.prod.exchangelabs.com (10.163.10.145) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1157.12;
	Mon, 12 Jun 2017 10:00:15 +0000
Received: from AM3PR01MB1089.eurprd01.prod.exchangelabs.com
	([fe80::288b:572f:55ff:cdf6]) by
	AM3PR01MB1089.eurprd01.prod.exchangelabs.com
	([fe80::288b:572f:55ff:cdf6%14]) with mapi id 15.01.1157.017;
	Mon, 12 Jun 2017 10:00:15 +0000
From: Nicolas ADELL <nicolas.adell@actia.fr>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] How to package the signed kernel modules into the
	filesystem ?
Thread-Index: AQHS417XCe/KDjSdbEyOltZrBt9tWQ==
Date: Mon, 12 Jun 2017 10:00:15 +0000
Message-ID: <AM3PR01MB1089AACE4858F4712780636085CD0@AM3PR01MB1089.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=actia.fr; 
x-originating-ip: [2603:10a6:207:5:cafe::ac]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM3PR01MB1091;
	7:KOdII9crNZML/Ld0myPm0DNTzV+Ll/ea1Aa4syX4BgPCCvY3w45xOz6zd1+W6V1Y2V8s5Y9BZIB2TdRTj4XuEN2NCWl/vfvZOko6PV9NMnjqe6U5xJWbbjTgDgSE3ZubsuPY98IUwlp9cwMn8w6ChYePQRLKEVU+dpXG5CcP1mz1pxo/J5KSFGSkWFhDaYfbbLcwczDg0ZJse5jniiCAURtS1GbLVMDALNTeWxyAN1uWT/rUkpRh7KQwfzJyMpa8hmFgRYV6NO7QZ+dBa8y1uH3vh/K+NnzDOI5bi8Ape5YNbv/7M02ukMtH7R5wEHTzYcbN7Oh4sAhGrDrkPw0rGw==
x-ms-traffictypediagnostic: AM3PR01MB1091:
x-ms-office365-filtering-correlation-id: 3a40a3c3-a06b-4581-0ee5-08d4b179d318
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(201703131423075)(201703031133081);
	SRVR:AM3PR01MB1091; 
x-microsoft-antispam-prvs: <AM3PR01MB10919434FB7D96DAFAC22D7085CD0@AM3PR01MB1091.eurprd01.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(17755550239193);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001)(100000703101)(100105400095)(93006095)(93001095)(6041248)(20161123562025)(20161123560025)(20161123555025)(20161123558100)(20161123564025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(6072148)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:AM3PR01MB1091; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:AM3PR01MB1091; 
x-forefront-prvs: 03361FCC43
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(39450400003)(39400400002)(39410400002)(39840400002)(2906002)(6436002)(110136004)(54356999)(6506006)(5250100002)(38730400002)(2501003)(99286003)(55016002)(74316002)(478600001)(9686003)(25786009)(86362001)(14454004)(2351001)(5640700003)(50986999)(6916009)(3660700001)(3280700002)(74482002)(81166006)(53936002)(8936002)(7736002)(2900100001)(189998001)(5660300001)(1730700003)(8676002)(305945005)(33656002)(102836003)(7696004);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM3PR01MB1091;
	H:AM3PR01MB1089.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: actia.fr
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2017 10:00:15.5248 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 86314f06-03e8-4460-82f3-a44f992a19c7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM3PR01MB1091
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
X-List-Received-Date: Mon, 12 Jun 2017 11:33:37 -0000
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

