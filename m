Return-Path: <yannick.koehler@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26A8EE00BCC; Mon, 26 Jun 2017 06:05:34 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE373E00BB7
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 06:05:32 -0700 (PDT)
Received: from g9t5008.houston.hpe.com (g9t5008.houston.hpe.com [15.241.48.72])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g9t1613g.houston.hpe.com (Postfix) with ESMTPS id 11DCF615B5
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 13:05:32 +0000 (UTC)
Received: from G9W9209.americas.hpqcorp.net (g9w9209.houston.hpecorp.net
	[16.220.66.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g9t5008.houston.hpe.com (Postfix) with ESMTPS id 418A580
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 13:05:30 +0000 (UTC)
Received: from G4W10204.americas.hpqcorp.net (2002:10cf:5210::10cf:5210) by
	G9W9209.americas.hpqcorp.net (2002:10dc:429c::10dc:429c) with Microsoft
	SMTP Server (TLS) id 15.0.1178.4; Mon, 26 Jun 2017 13:05:29 +0000
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (15.241.52.11) by
	G4W10204.americas.hpqcorp.net (16.207.82.16) with Microsoft SMTP
	Server (TLS)
	id 15.0.1178.4 via Frontend Transport; Mon, 26 Jun 2017 13:05:29 +0000
Received: from TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM (10.162.187.157) by
	TU4PR84MB0175.NAMPRD84.PROD.OUTLOOK.COM (10.162.187.156) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1199.15; Mon, 26 Jun 2017 13:05:28 +0000
Received: from TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM ([10.162.187.157]) by
	TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM ([10.162.187.157]) with mapi id
	15.01.1199.017; Mon, 26 Jun 2017 13:05:28 +0000
From: "Koehler, Yannick" <yannick.koehler@hpe.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Shared State Cache and STAGING_KERNEL_DIR
Thread-Index: AdLue5l5UYbYDEv9RPqMv0AcOU6F5g==
Date: Mon, 26 Jun 2017 13:05:28 +0000
Message-ID: <TU4PR84MB017619472AF3598611EB9D00EDDF0@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=hpe.com; 
x-originating-ip: [15.219.163.10]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; TU4PR84MB0175;
	7:t1PfqWL4bLGnoEHW16vEwYi6yKTBSnRU1j+XywYSzVdMe2e8/TJV4RgSVggBFiKoRj/TFZdS8YATSnwcmCOBCYBzOeT16SlRD0xb5496E/iSaxpXtBwJUYYjIjd6JrmPVVb5d8h0ZqsZDgSsdF8Kdx3vST0X59iWEbfEWzKityfvu5hpFotPsogSmpQFL/+zTj/K1EcpTCLon3fpxBwm2vyeuAUJTuTNANo8uWaA4lFoAH07sZy06FxIOzdXZOoWWFNsj15NS+1BZ0ku6uHUxQohyho7u67L+gNotj905N/eixOQSNmQ8KIiY7TPdRCdryKDJOe1VdfD1pEJDLzjLtTwdywJDvqKVk6+kF5L9QxF8qP+1ziybUd5/LNAAqnOu/71RMwPLTuFGjzuZgflD17v3Tn4ApTKMmMin+n3DkbNsLEIo3nEeHTYyzuQCdM57UxBlWOu7PUCROgyRiAsOl27MIHW943T57nrcJkB+P+3y03eDxA4eXNjBsPjD7PNbJHeWIoTersQtgFZcxjLe+Mbujt1f/d7vNG14c26xo3fCS4Tr2KcCbX0IPLSQhaM8HXt7E0Luk/Zyvz+shHAXN4o4HtR5RVVz+x+970AVM+0331zBQGw/FAPK0eYkik2fpOko6v1+7jPfgodl+RyjIeoQFP85WUQ2ot64I0yPj1mHjvOUPOU59nFVGS5d/wzrAoMFPH0pPJdpkJ7KAu71v20tU4xuTRwIp0L1LTBgoUkm5dZ4H8ijNK3wGJ+7Eoxk4MpDhTDoZPlJnBueJouM4wvBtFd3kgp0n/EGlpaOf4=
x-ms-office365-filtering-correlation-id: a921e3e4-a73b-4c6f-8b46-08d4bc9404c3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254075)(48565401081)(300000503095)(300135400095)(201703131423075)(201703031133081)(201702281549075)(300000504095)(300135200095)(300000505095)(300135600095);
	SRVR:TU4PR84MB0175; 
x-ms-traffictypediagnostic: TU4PR84MB0175:
x-microsoft-antispam-prvs: <TU4PR84MB017523C34E8A8F4AD1A84765EDDF0@TU4PR84MB0175.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(236129657087228)(247924648384137);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(5005006)(8121501046)(3002001)(93006095)(93001095)(10201501046)(100000703101)(100105400095)(6055026)(6041248)(20161123562025)(20161123564025)(20161123560025)(20161123555025)(20161123558100)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(6072148)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:TU4PR84MB0175; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:TU4PR84MB0175; 
x-forefront-prvs: 0350D7A55D
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(39840400002)(39450400003)(39410400002)(39400400002)(39850400002)(39860400002)(38730400002)(1730700003)(50986999)(110136004)(54356999)(8936002)(9686003)(8676002)(55016002)(81166006)(6116002)(2351001)(102836003)(86362001)(7736002)(122556002)(53936002)(3846002)(66066001)(2501003)(189998001)(3280700002)(74316002)(305945005)(33656002)(7696004)(3660700001)(6436002)(2900100001)(77096006)(5660300001)(6916009)(25786009)(14454004)(2906002)(478600001)(6506006);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TU4PR84MB0175;
	H:TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2017 13:05:28.5847 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR84MB0175
X-OriginatorOrg: hpe.com
Subject: Shared State Cache and STAGING_KERNEL_DIR
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
X-List-Received-Date: Mon, 26 Jun 2017 13:05:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

  I am in need of assistance.  I have a package that install headers requir=
ed for a kernel modules build out-of-tree.  To enable the kernel module to =
build, I install the required header files under STAGING_KERNEL_DIR, and it=
 works for the first build, subsequent builds failed due to the shared stat=
e cache artefact missing the files installed in the STAGING_KERNEL_DIR fold=
er as this is not part of the output content looked at to build the .ipk fi=
les (I assume).

  As such, I would like to understand what would be the correct approach fo=
r me to have headers shared across multiple package at the kernel level.  I=
 understand that for user space, we install to /usr/include and that then g=
ets packaged and re-install to the sysroot using STAGING_INCDIR.  Is there =
a similar system for kernel level sharing of header files?

 I am thinking of 2 approach to solve my solution, one would be to install =
the header under STAGING_INCDIR and then add a CFLAGS to my kernel module t=
o include the STAGING_INCDIR during compilation.  This looks like a hack to=
 me since this folder was not intended to be used for kernel space building=
.

  Second solution I can think of, is to instruct the Shared State Cache sys=
tem to look for output change in STAGING_KERNEL_DIR and record those, so th=
at they get somehow restored.  I have attempted to do so by adding=20

     do_install[sstate-outputdirs] +=3D "${STAGING_KERNEL_DIR}"

  statement, but it didn't appear to have worked successfully.

  Any help would be appreciated.

--
Yannick Koehler

