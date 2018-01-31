Return-Path: <pieter.cardoen@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9570E00D41; Wed, 31 Jan 2018 10:39:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_HOTMAIL_RCVD2,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pieter.cardoen[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.67.100 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3599 seconds by postgrey-1.32 at yocto-www;
	Wed, 31 Jan 2018 10:39:10 PST
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
	(mail-oln040092067100.outbound.protection.outlook.com [40.92.67.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46968E0085E
	for <yocto@yoctoproject.org>; Wed, 31 Jan 2018 10:39:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=YRDzLOiWb/1MQ1jUsFobn2Ec/SJppmmTrwTdSA5dh+c=;
	b=m9FNtE77f5VFZosP8+cQzOYnxYrDBemATxVOAosMjvUOcRzT0fCwW0fGHT32E6QeESsbhvt+rN11xRHLmjO29taNK6zGHzX47W/hGfeXmpxT27SYfMJI+6SoyGB9bvPK+FwMVcf/ArB7vzaDB4khoScjhwZEVkxuLQl1M+qzPkWvXFP81mAuOyGGu4ubufQy2xp5tRWOQZZyApDRnI66VM/IphJbpF8kODBPfl9LvPA7EgKb1gtYionNCVaqvXLHgH+eDvLbFYQqxCTlJxyTqid5XgSMu0NcJZCas/5ooCbm8xPZ8XEg1wn4z0W33kRYFH8ObhBf1hpELMmkOJ1uSQ==
Received: from VE1EUR02FT014.eop-EUR02.prod.protection.outlook.com
	(10.152.12.51) by VE1EUR02HT034.eop-EUR02.prod.protection.outlook.com
	(10.152.13.73) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.444.13;
	Wed, 31 Jan 2018 15:06:59 +0000
Received: from AM4PR08MB2899.eurprd08.prod.outlook.com (10.152.12.56) by
	VE1EUR02FT014.mail.protection.outlook.com (10.152.12.148) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.444.13 via Frontend Transport; Wed, 31 Jan 2018 15:06:58 +0000
Received: from AM4PR08MB2899.eurprd08.prod.outlook.com
	([fe80::59ea:637e:20f4:3629]) by
	AM4PR08MB2899.eurprd08.prod.outlook.com
	([fe80::59ea:637e:20f4:3629%13]) with mapi id 15.20.0444.016;
	Wed, 31 Jan 2018 15:06:59 +0000
From: Pieter Cardoen <pieter.cardoen@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: gcc leak-sanitizer on arm target
Thread-Index: AQHTmqOYPgAv7p01o0mHhRtkfr5ToQ==
Date: Wed, 31 Jan 2018 15:06:59 +0000
Message-ID: <AM4PR08MB289977F5166DA17908D660498EFB0@AM4PR08MB2899.eurprd08.prod.outlook.com>
Accept-Language: nl-BE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:6BC32DF90E6F56A2C19879D8D383DDC8316D0E3916B7DAC139A7A956CA81E741;
	UpperCasedChecksum:AD800FBEE3D62112C0A5E534BE99E3A0E1A078575827FA7E52BCB10B82A68A10;
	SizeAsReceived:6880; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [FjQK/t0Zt4lavk73Mwes/TMcYQO2XgCJ]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VE1EUR02HT034;
	6:4BlKyLFSZQO58peycF5X6ydIz7GXP8S8KGojITw6TozTY+E0AGvGnH3bNWQsfaJzinAWieFmPwA/TNWWYIwFG9/VvrAgRuT96K230ogPUGT33JbBn+jmtz9eU/fThkB6lOb3xjEZMQb85tRgiRaUBtTsHOTFs/bubVMqZVMS3pX1KoYPHFrA2oP0ka5qZ7Y1fJmefpam6P/8mCdaGPF7zjgE3VIX51lRS5QdJO9Qgjsrx6G/16vxjjgYaTOeeXTFJ/vp50WxM0Fpawu99Fu+yXjTNYTPFAOTtDv0YQs9EmcdEsitPrIWmBLFxLTUpZwhMexqXCLi9BEvgc7XYWSy8HUUET6wmZchHRY9dAaxaT4=;
	5:qRm9yIRz0Od3a7lcMhdNoXPuR3HZfJ4hAc6bzf1XJfg7GIcB7Qm3NfGc1WXreVDUmxzCfgtNZDpS2+0UoHnFUSvoJPqWeNhG1buSyR6m0W7UXW0WsdN8ERDd/+eDIOLe0ypgmGjZDZ+dedXKbSwLQAP1JGGWHFTxSZuNrciw264=;
	24:/2zqEnAIZ0MZ563dLYnTh0hOsZ30MDY1KrVHRcnY0dpN45gSrygcsCTNQ/4AM6Z/4t5Ph/tQtGbYSJ5YY7hL8hGk+/YXJP2T9xCBqWecuMY=;
	7:ZSq8ASOBk1ohAa0hU3CZ3NDf95guxBgpql0JvXXm0GsUhw7cs7A9oaeOPVxGW5GRdJZbK0WeKiaiK8WeFwSeAXKNQXVFJnDjvW+lngeb+A6akHPN8OdGDnj/BeA9HDpJZPzFomSH18+fBWr1WWINOkM/b53m1/IJal8al4OWtCiR3hhoRpN5qgA9nfyLdXomcf6rcYGKqf8vOpy3qdzoeyxHvzxbI26E03JVNj6Ej4YmIiwsUtuALfCQKk9hjwia
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125374)(1701031045);
	SRVR:VE1EUR02HT034; 
x-ms-traffictypediagnostic: VE1EUR02HT034:
x-ms-office365-filtering-correlation-id: 20ec1cb3-ac5f-4713-35db-08d568bc46c2
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:VE1EUR02HT034; BCL:0; PCL:0; RULEID:; SRVR:VE1EUR02HT034; 
x-forefront-prvs: 056929CBB8
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:VE1EUR02HT034;
	H:AM4PR08MB2899.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:;
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20ec1cb3-ac5f-4713-35db-08d568bc46c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2018 15:06:59.1972 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR02HT034
Subject: gcc leak-sanitizer on arm target
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
X-List-Received-Date: Wed, 31 Jan 2018 18:39:12 -0000
Content-Language: nl-BE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear

I am having trouble to enable leak sanitizer and thread sanitizer for my ar=
m target. If I enable gcc-sanitizers, I only have these libraries on the ta=
rget rootfs:
* libasan.so.3
* libasan.so.3.0.0
* libsanitizer.spec
* libubsan.so.0
* libubsan.so.0.0.0

liblsan.so.* and libtsan.so.* is missing.

I took a look into the build directory:
tmp/work/cortexa9hf-neon-poky-linux-gnueabi/gcc-sanitizers/6.2.0-r0/gcc-6.2=
.0/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/libsanitizer/

in file asan/Makefile, I find "toolexeclib_LTLIBRARIES =3D libasan.la"
while in file lsan/Makefiel, it is commented out: "#toolexeclib_LTLIBRARIES=
 =3D liblsan.la"

Is it possible to compile the leak and thread sanitizer library for arm?

Thanks
Pieter=

