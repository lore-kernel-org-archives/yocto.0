Return-Path: <yannick.koehler@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F889E00BB1; Fri, 11 Aug 2017 06:29:44 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80BA1E00B67
	for <yocto@yoctoproject.org>; Fri, 11 Aug 2017 06:29:43 -0700 (PDT)
Received: from g4t3427.houston.hpe.com (g4t3427.houston.hpe.com
	[15.241.140.73])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g9t1613g.houston.hpe.com (Postfix) with ESMTPS id B165960277
	for <yocto@yoctoproject.org>; Fri, 11 Aug 2017 13:29:42 +0000 (UTC)
Received: from G1W8108.americas.hpqcorp.net (g1w8108.austin.hp.com
	[16.193.72.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g4t3427.houston.hpe.com (Postfix) with ESMTPS id D2B2D5C
	for <yocto@yoctoproject.org>; Fri, 11 Aug 2017 13:29:41 +0000 (UTC)
Received: from G4W9120.americas.hpqcorp.net (2002:10d2:150f::10d2:150f) by
	G1W8108.americas.hpqcorp.net (2002:10c1:483c::10c1:483c) with Microsoft
	SMTP Server (TLS) id 15.0.1178.4; Fri, 11 Aug 2017 13:29:41 +0000
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (15.241.52.12) by
	G4W9120.americas.hpqcorp.net (16.210.21.15) with Microsoft SMTP
	Server (TLS)
	id 15.0.1178.4 via Frontend Transport; Fri, 11 Aug 2017 13:29:41 +0000
Received: from TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM (10.162.187.157) by
	TU4PR84MB0174.NAMPRD84.PROD.OUTLOOK.COM (10.162.187.155) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.1.1320.16; Fri, 11 Aug 2017 13:29:40 +0000
Received: from TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM ([10.162.187.157]) by
	TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM ([10.162.187.157]) with mapi id
	15.01.1320.019; Fri, 11 Aug 2017 13:29:40 +0000
From: "Koehler, Yannick" <yannick.koehler@hpe.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to configure multi-lines under kernel_module_<modname>
	variables?
Thread-Index: AdMSpVjpoeZvkdZTRr6pc8cKiFALrQ==
Date: Fri, 11 Aug 2017 13:29:40 +0000
Message-ID: <TU4PR84MB0176AAF94BB682B979BF7648ED890@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=yannick.koehler@hpe.com; 
x-originating-ip: [15.219.163.10]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; TU4PR84MB0174;
	6:N5yXu5tHlrCCOaMdZTCyFEGNNqVG3tn3wgflQXpIP/NecdD1e+LRxZBxEIK/Ba94Ijp6XW+es3rLtLGZvPDj4Te1RMqqEl8xzh+hlHlxUMcvGwsS6kp3nXNzf7hxNfq4WlwDdy5Y8YhCc0aOTUmQGvCx9wOodzuRhtzKZztgEDrvC4LP0SZtWKD1ypF18mmmN9PX5Xukq0X8ObTnCMRiXCJcWymczxXuya4Wg4naXaCp5PyueiAzCsK/KwVAbF2Dlse/hWtdrjmmJkVTEAKKQE4E4jZOmYtZw1DfANpXwIxyrwyA7LsAJFrv+pYIszjAUQ6KFvdTsqFwviML82zJnQ==;
	5:TyvaDAj59Zk2Glqsz6tCpEsMHB6aIMG8HI8m4eTYIaqURhMUYHjWD5tGwjc096jxcsWWKbcxa5TFF/9z25RJzfzY8MKCFQO7BW7Rpf8v8aCP2fxf6MTZjWigPSLJEczGBU9d3J+Bnop69x3bJjzQgw==;
	24:pxFIF0FSXoUlqlo4OwZUhTzM8HdzcWL3q1Ju+ufDkHUUffgwMfi87Fbvm/4OY4qTHaga8FNSHG46lwmXkfWxTqIv0rr5as0COvwMtN0NEsc=;
	7:lq7vrx/ywF3pz8ywJN4GCtNvDDme7p/mp32l7TvJ6M2yL3pdEQQvVuu2giPJ7yVvDKCf3sywagjwSJGrLp7rVfhpFV2xyXRcHq2zYrKTIlyiOuTm8EoIWzUNBh4DItjv1NX3NJqa4qBhXuAfOCIDyh2INYDRJOaUt8qO5hTlGTST19u1c0wzMSxr5LBUilwkS85lzBS7IXI0FcDxvXuWW4W9eKDoV1RBShEQfL+hm9c=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 2bb3b655-130e-4127-dd52-08d4e0bd04f4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254152)(300000503095)(300135400095)(48565401081)(2017052603031)(201703131423075)(201703031133081)(201702281549075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:TU4PR84MB0174; 
x-ms-traffictypediagnostic: TU4PR84MB0174:
x-exchange-antispam-report-test: UriScan:;
x-microsoft-antispam-prvs: <TU4PR84MB01749BC65B7789DBCC64F0E1ED890@TU4PR84MB0174.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(8121501046)(5005006)(100000703101)(100105400095)(93006095)(93001095)(10201501046)(3002001)(6055026)(6041248)(20161123560025)(20161123555025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123562025)(20161123564025)(20161123558100)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:TU4PR84MB0174; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:TU4PR84MB0174; 
x-forefront-prvs: 03965EFC76
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(39860400002)(199003)(189002)(86362001)(189998001)(5640700003)(478600001)(77096006)(6436002)(55016002)(25786009)(33656002)(97736004)(6506006)(53936002)(105586002)(2900100001)(6116002)(106356001)(2351001)(102836003)(9686003)(3846002)(6916009)(3280700002)(110136004)(3660700001)(2501003)(14454004)(81166006)(8936002)(8676002)(81156014)(1730700003)(101416001)(305945005)(7736002)(2906002)(68736007)(66066001)(7696004)(74316002)(5660300001)(50986999)(54356999);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TU4PR84MB0174;
	H:TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: hpe.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2017 13:29:40.1742 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR84MB0174
X-OriginatorOrg: hpe.com
Subject: How to configure multi-lines under kernel_module_<modname> variables?
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
X-List-Received-Date: Fri, 11 Aug 2017 13:29:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I would like to have the following content under my modname.conf.  It appea=
rs that the module_conf_<modname> is a single-line variable, and I am tryin=
g using \n to add a newline character but that doesn't appear to be working=
.

	module_conf_modname :=3D  "options modname op1=3D0\n"
	module_conf_modname_append =3D "install modname /sbin/modprobe 2ndmodname;=
 /sbin/modprobe -ignore-install modname $CMDLINE_OPTS"

Result in the following file content

	options modname opt1=3D0\ninstall modname /sbin/modprobe 2ndmodname; /sbin=
/modprobe -ignore-install modname $CMDLINE_OPTS

Expected

	options modname opt1=3D0
	install modname /sbin/modprobe 2ndmodname; /sbin/modprobe -ignore-install =
modname $CMDLINE_OPTS

Any help appreciated.

--
Yannick Koehler

