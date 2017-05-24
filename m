Return-Path: <yannick.koehler@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 394D1E00B7D; Wed, 24 May 2017 07:39:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.241.32.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from g9t1613g.houston.hpe.com (g9t1613g.houston.hpe.com
	[15.241.32.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FEA2E00BA3
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 07:39:39 -0700 (PDT)
Received: from g2t2352.austin.hpe.com (g2t2352.austin.hpe.com [15.233.44.25])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g9t1613g.houston.hpe.com (Postfix) with ESMTPS id 099D860CBF
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 14:39:39 +0000 (UTC)
Received: from G9W8456.americas.hpqcorp.net (g9w8456.houston.hp.com
	[16.216.161.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g2t2352.austin.hpe.com (Postfix) with ESMTPS id BD6525E
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 14:39:37 +0000 (UTC)
Received: from G2W6309.americas.hpqcorp.net (2002:10c5:4033::10c5:4033) by
	G9W8456.americas.hpqcorp.net (2002:10d8:a15f::10d8:a15f) with Microsoft
	SMTP Server (TLS) id 15.0.1178.4; Wed, 24 May 2017 14:39:37 +0000
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (15.241.52.11) by
	G2W6309.americas.hpqcorp.net (16.197.64.51) with Microsoft SMTP
	Server (TLS)
	id 15.0.1178.4 via Frontend Transport; Wed, 24 May 2017 14:39:37 +0000
Received: from TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM (10.162.187.157) by
	TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM (10.162.187.157) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1101.14; Wed, 24 May 2017 14:39:36 +0000
Received: from TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM ([10.162.187.157]) by
	TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM ([10.162.187.157]) with mapi id
	15.01.1101.022; Wed, 24 May 2017 14:39:36 +0000
From: "Koehler, Yannick (HPN Aruba)" <yannick.koehler@hpe.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Can Yocto treat layers like an external package?
Thread-Index: AdLUmnD972ngOwSuSRSKs1N8pfbtWw==
Date: Wed, 24 May 2017 14:39:36 +0000
Message-ID: <TU4PR84MB01764490D3BCFABC79D8BAC8EDFE0@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=hpe.com; 
x-originating-ip: [15.219.163.10]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; TU4PR84MB0176;
	7:2mLL9ZpuV0Oc6Nw6TRwWkcz39IWs4t6gVwifPzmL/QkaHLvOTcrkRv7Ycec3GcPpGCSNh09Yx+PoaESPJkrzQken6FMffnoyZjEjAAD0po0HeigKzGaAs3izOrgrvFnydJOR6+xCeLmUtmgyd/PzrRzeJKMlatAk2zoJA5zIQplITrUbeLaFV/aH6XcUSGXatWEHKWgKh/vNLv8wBLT5Fj2f5aQTLs7GA+ec8cVHYR1Za3W0obVix/W5s1Y49l03BXbORuX/QIBaABZ9Bsm/dRhKzIXND8M6hToZJ/gVNv0bhPlKhLTncbIJdd5+/CM26ikmTtYG6yEzBwES26CftQ==
x-ms-traffictypediagnostic: TU4PR84MB0176:
x-ms-office365-filtering-correlation-id: 2919dba7-efb9-49e5-8f9c-08d4a2b2b35d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(48565401081)(201703131423075)(201703031133081)(201702281549075);
	SRVR:TU4PR84MB0176; 
x-microsoft-antispam-prvs: <TU4PR84MB0176A753CA044BA462AE87DBEDFE0@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040450)(601004)(2401047)(8121501046)(5005006)(93006095)(93001095)(10201501046)(3002001)(6055026)(6041248)(20161123560025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(20161123555025)(20161123564025)(20161123562025)(6072148);
	SRVR:TU4PR84MB0176; BCL:0; PCL:0; RULEID:; SRVR:TU4PR84MB0176; 
x-forefront-prvs: 031763BCAF
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(39840400002)(39850400002)(39860400002)(39400400002)(39410400002)(39450400003)(6116002)(102836003)(3846002)(189998001)(2501003)(5640700003)(77096006)(6506006)(6436002)(33656002)(86362001)(478600001)(7696004)(122556002)(25786009)(6916009)(5660300001)(66066001)(110136004)(38730400002)(50986999)(54356999)(7736002)(2906002)(9686003)(3280700002)(55016002)(74316002)(3660700001)(305945005)(1730700003)(81166006)(8676002)(8936002)(2351001)(53936002)(2900100001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TU4PR84MB0176;
	H:TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2017 14:39:36.2193 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR84MB0176
X-OriginatorOrg: hpe.com
Subject: Can Yocto treat layers like an external package?
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
X-List-Received-Date: Wed, 24 May 2017 14:39:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

In our development with Yocto, we use vendor provided layers.  At this time=
 we have to pull those manually (using git or submodule or other technics) =
to get the vendor layer on disk before bitbake can start.  Does Yocto allow=
 to automatically pull a yocto layer given a uri, branch and other informat=
ion, similar way as it can pull the source of a package?

This way, we could omit the vendor layer stuff from our git and instead hav=
e Yocto fetch the layer from its source (honoring all the premirror and mir=
ror stuff).  The layer specification would be similar to SRC_URI format wit=
h an additional parameter to indicate locally where to put the files, maybe=
 with a default of vendor/<layer-name> structure?

	git://git@mylayer.company.com/layer-name.git;protocol=3Dssh;branch=3Dmaste=
r

This would pull into=20

	vendors/layer-name

Prior to parse all reccipes?

--
Yannick Koehler

