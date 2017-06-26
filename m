Return-Path: <yannick.koehler@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D91D3E009A0; Mon, 26 Jun 2017 09:16:14 -0700 (PDT)
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
Received: from g2t1383g.austin.hpe.com (g2t1383g.austin.hpe.com [15.233.16.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CBB9E00718
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 09:16:13 -0700 (PDT)
Received: from g2t2352.austin.hpe.com (g2t2352.austin.hpe.com [15.233.44.25])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g2t1383g.austin.hpe.com (Postfix) with ESMTPS id 96DCF14B2
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 16:16:13 +0000 (UTC)
Received: from G2W6309.americas.hpqcorp.net (g2w6309.austin.hp.com
	[16.197.64.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g2t2352.austin.hpe.com (Postfix) with ESMTPS id 4F827E1
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 16:16:12 +0000 (UTC)
Received: from G9W8454.americas.hpqcorp.net (2002:10d8:a104::10d8:a104) by
	G2W6309.americas.hpqcorp.net (2002:10c5:4033::10c5:4033) with Microsoft
	SMTP Server (TLS) id 15.0.1178.4; Mon, 26 Jun 2017 16:16:12 +0000
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (15.241.52.11) by
	G9W8454.americas.hpqcorp.net (16.216.161.4) with Microsoft SMTP
	Server (TLS)
	id 15.0.1178.4 via Frontend Transport; Mon, 26 Jun 2017 16:16:12 +0000
Received: from TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM (10.162.187.157) by
	TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM (10.162.187.157) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1199.15; Mon, 26 Jun 2017 16:16:11 +0000
Received: from TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM ([10.162.187.157]) by
	TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM ([10.162.187.157]) with mapi id
	15.01.1199.017; Mon, 26 Jun 2017 16:16:11 +0000
From: "Koehler, Yannick" <yannick.koehler@hpe.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: question regarding share state cache and task dependencies.
Thread-Index: AdLul301opk+7PAxRVWpAp+uMRLM4g==
Date: Mon, 26 Jun 2017 16:16:10 +0000
Message-ID: <TU4PR84MB0176F6A52E3E3970EB57C1FAEDDF0@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=hpe.com; 
x-originating-ip: [15.219.163.10]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; TU4PR84MB0176;
	7:4T9icCQR3fgRJixTtWLbkFtj3jtTJ0LYvauoYB4Cllb93nr1barySycoDrlIgkfLCDz+1KzUnuSRLlK4Q6hEVTOoFhbizeTnJws6smWoAzhYrAw6maRcSsV2oZV6w9ALYp/Qedr552mfbaM86wKG67rmaMectNZYDI5ugrBv8mGGNwVtRgAudGHbkNhAgoDDAmHR4AGj5C1wkM00pHAVduJ7NiOUpcclOhfz0ba3pI2JbQFRahbpb4w2nqM7slfxUiZFWtfZ4B4ln83TkgR4fB7eC8AWRhesz/jq6887QnjFFBoHAFBHZqkY7oIrGcBrsmtZ66QQ+HDNRlNSgMEcYvAV9KflVMZOyOQec77jRSv2mO2c4+vZdxJcobbIinZcRprHfTIL3vwXG+7k25oRpYWkG3aIM4lbxa0Mvsi1A21TuRBjIjL9ywuTy2j1zBvPeW8UZOnCJEqfnolGBASp5wQjHEX0Y8tW1/KDEPTQuxDE2AvYbC56hBbwccwTa5x+gGXWHDv7+RLsiN6/aFfuS8fTeXJRmH/NiX97EaC9C0tZAsmdDn6DsggXe+CI5eK7TbiFlTKHaq9bMPgYsBlmkGyAwYnxlZK8o7ezjb6pp0Xam93SfeR8Tqvqx3YnHAUFwByy9DIuAJrIYaFdlV09lJW4vkbO0x3fZM5YLOkjw6r9esf4lVi+5CSQklMzCOt8wWfvPa4oYulsDesG/SHpsLwHkAr+WdnzfbcI0/0fzU8z7hqqodRKPMGA+tCYgrp7BVCoRgm6mhQSvItDBS2aS9oi2vU6Y7EgyYJGlAqa5pc=
x-ms-office365-filtering-correlation-id: edcdc70a-ac35-4a85-09d4-08d4bcaea8ea
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254075)(48565401081)(300000503095)(300135400095)(201703131423075)(201703031133081)(300000504095)(300135200095)(300000505095)(300135600095);
	SRVR:TU4PR84MB0176; 
x-ms-traffictypediagnostic: TU4PR84MB0176:
x-microsoft-antispam-prvs: <TU4PR84MB01767CACEE87421810D629F3EDDF0@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(236129657087228);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(5005006)(8121501046)(100000703101)(100105400095)(10201501046)(93006095)(93001095)(3002001)(6055026)(6041248)(20161123558100)(20161123560025)(20161123555025)(20161123564025)(20161123562025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(6072148)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:TU4PR84MB0176; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:TU4PR84MB0176; 
x-forefront-prvs: 0350D7A55D
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(39840400002)(39400400002)(39850400002)(39410400002)(39860400002)(39450400003)(77096006)(122556002)(5640700003)(54356999)(50986999)(305945005)(33656002)(2900100001)(6916009)(3280700002)(86362001)(74316002)(2351001)(5660300001)(3660700001)(7736002)(81166006)(8936002)(1730700003)(66066001)(8676002)(14454004)(478600001)(2501003)(6436002)(102836003)(6116002)(6506006)(2906002)(7696004)(189998001)(53936002)(55016002)(3846002)(25786009)(110136004)(38730400002)(9686003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TU4PR84MB0176;
	H:TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2017 16:16:10.9323 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR84MB0176
X-OriginatorOrg: hpe.com
Subject: question regarding share state cache and task dependencies.
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
X-List-Received-Date: Mon, 26 Jun 2017 16:16:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I was wondering, reading about the shared state cache system, why are the t=
ask / recipe dependencies being honored when executing a setscene task?  Si=
nce there is a "sanity" check that no two package write to the same output =
files, then could we just run the setscene task without honoring the depend=
encies and get all the files in place at maximum speed ?  Right now, the sy=
stem seems to install each package dependencies in the same order it was bu=
ilt, but since this is pre-built, I failed to see why the order mater anymo=
re, given the sanity check above.  The dependency should be used to determi=
ne what setscene to execute, but then they should just pump out as fast as =
possible in any given order.

--
Yannick Koehler

