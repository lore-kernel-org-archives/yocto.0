Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B319E009DF; Thu,  3 May 2018 07:20:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rksyeung[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.10.68 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
	(mail-oln040092010068.outbound.protection.outlook.com [40.92.10.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15EBAE008D2
	for <yocto@yoctoproject.org>; Thu,  3 May 2018 07:20:53 -0700 (PDT)
Received: from BN3NAM04HT120.eop-NAM04.prod.protection.outlook.com
	(10.152.93.110) by CO1NAM04HT122.eop-NAM04.prod.protection.outlook.com
	(10.152.90.215) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.715.13;
	Thu, 3 May 2018 12:47:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=G3Q32S3qaPCBsvb63z+wj6Fqyka9YbgB9OflilGXQ8k=;
	b=BoOMaOZDVlMdScBlpF24DeLEz04q4hNhY7jW5OMZBBczg0durMo6udaQ7nTlkrMCumkv+420issqRykBcRCSV2ZSrl4rJ//JNvHED1kKZLJ3XPc1ZGesJALGnISbsq6wm0dUP/LKKy32m/Q/rBYhlsLpzPjf4+jCgly/XlgsnEQILZPZs5cKlSF6VkSGFRJmM6Xg+RGZlLknGp3rIwDhZ4oq6ioiwVFrB6yfV1XLVq30W53UBPbc4sGZonP2c45/trJcl6A47Y3gDSgPTP/p6eYq1l+GXPTpRUurblvOd97H88IRvFqRwGjgss7RWBayx5szVWRiM/6O+hMFfsJPWw==
Received: from BN3NAM04FT013.eop-NAM04.prod.protection.outlook.com
	(10.152.92.60) by BN3NAM04HT120.eop-NAM04.prod.protection.outlook.com
	(10.152.93.110) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.715.13;
	Tue, 1 May 2018 19:51:57 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.92.53) by
	BN3NAM04FT013.mail.protection.outlook.com (10.152.92.152) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.715.13 via Frontend Transport; Tue, 1 May 2018 19:51:57 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::5125:a765:f3d4:40f8]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::5125:a765:f3d4:40f8%18]) with mapi id 15.20.0715.018;
	Tue, 1 May 2018 19:51:56 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: TI TLK10031 Driver Needed
Thread-Index: AQHT4YWZqTQvrpweLky0wye80cxVxg==
Date: Tue, 1 May 2018 19:51:56 +0000
Message-ID: <MWHPR19MB118333915F5E542DE68C340EC5810@MWHPR19MB1183.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:8FBE303932F9E1CAA94EFD9DD875506FB83E7D172921F7EA14EED149DCBB2E1B;
	UpperCasedChecksum:CB024E3949092C63CCA0925F27508B75D114CA09537F96363691C9C44E10701D;
	SizeAsReceived:6836; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [lE4idGlaOfqAJ91YNLcXEFGQ2CepRNjZ]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BN3NAM04HT120;
	7:QGFI1Fm4sHr3dnQX8go1zwH+pE4SHQXqnJSMwBru+pTHmSohuDrVWjC7BwQXP0uK2v0dKmTUch20BABOjt67IVdkcpEyV9Wzbw1yRrfDtJr6lsYWQOo3M7Q+naH3C70PijcvPtSGWatmXZ4YtYdCAkA4ngUuxh8ylfi/T2vKkD9sOESXUhCOhIZwSXe7WndGTgqklmBpJnW3xzOvXkEhqQs/5NVYv6JDiGtkZqT6p9yooaY9e7E6oE/e+GKv1Jc7;
	23:2PclmsbspbY1pnah5K6ct9qV1GiN8ljaKMkR1mgSlVUE/7s1wLpDb9ATj2VwozqgVQ3GMkdVrjDjlOkJxgBeSGRX2/BZkE/ujtAe86SwyEKe4tZy5ZUK+ANGz6e1N/R+XlJ2yWuAK3XXGlKdKcqwFA==
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125374)(1603101448)(1701031045);
	SRVR:BN3NAM04HT120; 
X-MS-TrafficTypeDiagnostic: BN3NAM04HT120:|BN3NAM04HT120:|BN3NAM04HT120:|CO1NAM04HT122:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:BN3NAM04HT120; BCL:0; PCL:0; RULEID:; SRVR:BN3NAM04HT120; 
x-forefront-prvs: 06592CCE58
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:BN3NAM04HT120;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:;
x-microsoft-antispam-message-info: 1ISHKQw2IWhNYqSzlA2vqQsabKMLfR1p89LejjOM/dQ3IRkv2XSOP6ck9i9qo2KZqutHs6IbleXTFWp70XupKtSsFQ+KgBKdovQMToc6a6G8asRSJ6KlDfuZnk6KQiSqimfQmrQ8dvMruz1njjFr89JuEXYwhHUP3DQJrMMX3NQXE2UKpA3VttqJDGxbDtZj
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 7cc09457-549b-4d94-afef-08d5af9cfef3
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cc09457-549b-4d94-afef-08d5af9cfef3
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2018 19:51:56.9466 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3NAM04HT120
X-Microsoft-Exchange-Diagnostics: 1; CO1NAM04HT122;
	23:Q4qLr6ACdy599RLib+BO+DmlsGG8OcouN+ekWq+qYHmhW1XtzW75rTWzEBWf4Xa/qVkIViv+nkH7HfLR81CwJlSLY2ksNH6jiWRqpcynvb/dd5Yg9sBbH2Je5py1ifgS3RUVbUexWJuQ0ufuqz0HYw==
X-OriginatorOrg: hotmail.com
Subject: TI TLK10031 Driver Needed
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
X-List-Received-Date: Thu, 03 May 2018 14:20:55 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB118333915F5E542DE68C340EC5810MWHPR19MB1183namp_"

--_000_MWHPR19MB118333915F5E542DE68C340EC5810MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

What is the best way to search for existing driver support (in particular, =
driver for TLK10031) in YP?  I search my own Poky source and its build tree=
, but find nothing.  I saw on google returned result mentioning of one inst=
ance for a similar chip (TLK10232), but don't know which branch/repo it's f=
rom.


Thanks,

Raymond

--_000_MWHPR19MB118333915F5E542DE68C340EC5810MWHPR19MB1183namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">What is the best way to search fo=
r existing driver support (in particular, driver for TLK10031) in YP? &nbsp=
;I search my own Poky source and its build tree, but find nothing. &nbsp;I =
saw on google returned result mentioning of
 one instance for a similar chip (TLK10232), but don't know which branch/re=
po it's from.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Thanks,</p>
<p style=3D"margin-top:0;margin-bottom:0">Raymond</p>
</div>
</body>
</html>

--_000_MWHPR19MB118333915F5E542DE68C340EC5810MWHPR19MB1183namp_--
