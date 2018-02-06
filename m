Return-Path: <yannick.koehler@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E4E0E00DC6; Tue,  6 Feb 2018 10:52:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.233.16.89 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 450 seconds by postgrey-1.32 at yocto-www;
	Tue, 06 Feb 2018 10:52:10 PST
Received: from g2t1383g.austin.hpe.com (g2t1383g.austin.hpe.com [15.233.16.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E094E00D5F
	for <yocto@yoctoproject.org>; Tue,  6 Feb 2018 10:52:10 -0800 (PST)
Received: from g9t5009.houston.hpe.com (g9t5009.houston.hpe.com [15.241.48.73])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g2t1383g.austin.hpe.com (Postfix) with ESMTPS id 738552AE
	for <yocto@yoctoproject.org>; Tue,  6 Feb 2018 18:44:40 +0000 (UTC)
Received: from G1W8106.americas.hpqcorp.net (g1w8106.austin.hp.com
	[16.193.72.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g9t5009.houston.hpe.com (Postfix) with ESMTPS id 3BDD466
	for <yocto@yoctoproject.org>; Tue,  6 Feb 2018 18:44:39 +0000 (UTC)
Received: from G4W8056.americas.hpqcorp.net (2002:10d2:12f6::10d2:12f6) by
	G1W8106.americas.hpqcorp.net (2002:10c1:483d::10c1:483d) with Microsoft
	SMTP Server (TLS) id 15.0.1178.4; Tue, 6 Feb 2018 18:44:21 +0000
Received: from G4W10205.americas.hpqcorp.net (16.207.82.15) by
	G4W8056.americas.hpqcorp.net (16.210.18.246) with Microsoft SMTP Server
	(TLS) id 15.0.1178.4; Tue, 6 Feb 2018 18:44:20 +0000
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (15.241.52.10) by
	G4W10205.americas.hpqcorp.net (16.207.82.15) with Microsoft SMTP
	Server (TLS)
	id 15.0.1178.4 via Frontend Transport; Tue, 6 Feb 2018 18:44:20 +0000
Received: from TU4PR8401MB0767.NAMPRD84.PROD.OUTLOOK.COM (10.169.45.143) by
	TU4PR8401MB0992.NAMPRD84.PROD.OUTLOOK.COM (10.169.47.21) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.464.11; Tue, 6 Feb 2018 18:44:19 +0000
Received: from TU4PR8401MB0767.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::1583:27da:8b78:595d]) by
	TU4PR8401MB0767.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::1583:27da:8b78:595d%18]) with mapi id 15.20.0464.016;
	Tue, 6 Feb 2018 18:44:19 +0000
From: "Koehler, Yannick" <yannick.koehler@hpe.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Install files in sysroot but not rootfs (ala -dev)
Thread-Index: AdOfehz7DfZaFLn2TpyTstVRo3I87A==
Date: Tue, 6 Feb 2018 18:44:19 +0000
Message-ID: <TU4PR8401MB0767D8CD30F4E69A51226771EDFD0@TU4PR8401MB0767.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=yannick.koehler@hpe.com; 
x-originating-ip: [15.219.163.10]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; TU4PR8401MB0992;
	6:ytV0xuATLTN7xR0hKVdmabX4mS18fKrXvUj74/vya0gL6s11x0nXaDsDGe/yn/pSqfUE5CKVoPlaYy9Y69wWrOkp8y6AJWGlsEYqPrh3uRaK65/Q865DVL3TeG8BX2eHf0MiYD7XLpQZbOTiGfVz6sGa3UtyvJS06hEMc5gqMU/p9DR+M3OkheU7o8ivm9MhALRPzy4zGh6jf09hztPOLgIfktn740gAt0F/vaMiQPDA7gZ1zl4AeEDA+tNnP899G/SJmXX/v2vCogvFxkKSVO+LfEPYmI9mSwx/zXFYZRYrxH0uc+UfUhKImYKNGQG7iuEkUCV2dPLvfpA7ORWCn5OEwnphvzzbdRqQzm1GD/ACNA3HX/LECr1rdiwhxvZA;
	5:c5sfHIbsP6x/2eWLdpmSsw6ei0k72LLngTN8Un0c4UJ5KGMfYxVJcdUJ4vw8JBu9/a5dnniyW0OBiCaTWtH1QYoJ0RPih2NC1UvucOtQ4lmkkpaW0LQmFV3jq2GRArqlhRVCOOg1r5EluE/gV7eJT3Y8+24Tihm6ui0+uz7C1E0=;
	24:GmO/nCi+gZ5r1nQPpT3of/K+kY+66X+ViZViIjh7Qvo9KOzHUQo6hcntjybd+/0+1VhfFre74wEGTDAD8+JUtUSX/GpO7Z1stjN0SiSwmMU=;
	7:BrLDJ8MIHXUh962FRWGGEMJwu8W2HwDViDpba+1NXySh/kbVJbNfk+6Jml5HYcfzinvao4ykHs5T5zG1VMdxX1A5yZUc15eAYr37omEUaB1bLOeDq/T2VYUkTq6EYDjJk+3hPaRnJKGi9z4xzOARU9O/sxE0kkCa+ry2yjLgYZEYzVLmG9c4pybh7MxqVErb7e74hgnj77Y016D1x7wMvy8/sJysNQ9h0Cwn3pgN6AM8cEHPExmFA8VuS6AC/vqD
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a34049ad-4903-4913-3721-08d56d91a1dc
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(8989060)(48565401081)(4534165)(4627221)(201703031133081)(201702281549075)(8990040)(5600026)(4604075)(3008032)(2017052603307)(7153060)(7193020);
	SRVR:TU4PR8401MB0992; 
x-ms-traffictypediagnostic: TU4PR8401MB0992:
x-microsoft-antispam-prvs: <TU4PR8401MB099291531603945E4D465896EDFD0@TU4PR8401MB0992.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040501)(2401047)(5005006)(8121501046)(3231101)(2400082)(944501161)(10201501046)(93006095)(93001095)(3002001)(6055026)(6041288)(20161123558120)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(20161123560045)(6072148)(201708071742011);
	SRVR:TU4PR8401MB0992; BCL:0; PCL:0; RULEID:;
	SRVR:TU4PR8401MB0992; 
x-forefront-prvs: 0575F81B58
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39380400002)(39860400002)(396003)(366004)(346002)(376002)(189003)(199004)(2501003)(102836004)(6506007)(8676002)(3846002)(105586002)(97736004)(86362001)(74316002)(6116002)(7736002)(316002)(305945005)(25786009)(68736007)(8936002)(66066001)(6916009)(53936002)(55016002)(81166006)(81156014)(6436002)(5640700003)(9686003)(5660300001)(2906002)(2351001)(5250100002)(478600001)(99286004)(106356001)(3660700001)(3280700002)(33656002)(2900100001)(1730700003)(186003)(7696005)(14454004)(26005);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TU4PR8401MB0992;
	H:TU4PR8401MB0767.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: hpe.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: mo+UzDHt/ez04pZMl/4QHCM7QxJi5kzdLB5YoAKQn6Oip/I5egg77R8TMjwBg4DLBiF5qmW6Qfci+XxUXXEn8g==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a34049ad-4903-4913-3721-08d56d91a1dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2018 18:44:19.5261 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR8401MB0992
X-OriginatorOrg: hpe.com
Subject: Install files in sysroot but not rootfs (ala -dev)
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
X-List-Received-Date: Tue, 06 Feb 2018 18:52:11 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have some file to install in the sysroot/${MACHINE}/usr/share/cmake/Modul=
es, but when I do so, those files also end up on the target.

Is moving those files from FILES_${PN} to FILES_${PN}-dev the proper way to=
 fix that and what is the logic that make it so that -dev packages are inst=
alled in the sysroot but not in the rootfs?

--
Yannick Koehler

