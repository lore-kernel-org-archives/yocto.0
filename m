Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D456DE006F3; Wed,  9 Dec 2015 12:35:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.111.103 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bbn0103.outbound.protection.outlook.com [157.56.111.103])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C84F0E0033E
	for <yocto@yoctoproject.org>; Wed,  9 Dec 2015 12:35:46 -0800 (PST)
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com (10.160.113.12) by
	BN3PR0501MB1090.namprd05.prod.outlook.com (10.160.113.12) with
	Microsoft SMTP
	Server (TLS) id 15.1.337.19; Wed, 9 Dec 2015 20:19:41 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) by
	BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) with
	mapi id 15.01.0337.015; Wed, 9 Dec 2015 20:19:41 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Cleanly moving files from one package to another
Thread-Index: AdEyvJ3osGN+mhsrTfSBFGmJ0vOlEA==
Date: Wed, 9 Dec 2015 20:19:40 +0000
Message-ID: <BN3PR0501MB10908B9B84564BC25761049BBBE80@BN3PR0501MB1090.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-originating-ip: [98.100.91.242]
x-microsoft-exchange-diagnostics: 1; BN3PR0501MB1090;
	5:PsOuT+x4ShIIzs+QmUKjHXecLWIN+tyyjriFDb5gMT5tRJxC/y9iVDNfX4a/cp9cbCUWX2Wgh+rMUWTWkAbHCoqCf4lTPP381FIG9vTBuxvz7x25FwGo0wKHU2GRYrtJa3KCiV2d7Vv2dSFP8B8z0A==;
	24:g1S1uvUmx/KoqpEsH1ksMyn+nuIEmIwfdQa9F67CvyeZzt+XtWAQqBUeNx+BqLKdRqlC9s4976brD8bs0HAdVzY40SPkezwFFySYTriWMcM=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR0501MB1090;
x-microsoft-antispam-prvs: <BN3PR0501MB109005851EA7D0AFA3978F83BBE80@BN3PR0501MB1090.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(520078)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:BN3PR0501MB1090; BCL:0; PCL:0; RULEID:;
	SRVR:BN3PR0501MB1090; 
x-forefront-prvs: 0785459C39
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(199003)(164054003)(189002)(5004730100002)(81156007)(66066001)(122556002)(110136002)(189998001)(5001960100002)(74316001)(76576001)(97736004)(106356001)(77096005)(101416001)(92566002)(107886002)(86362001)(87936001)(99286002)(102836003)(5003600100002)(11100500001)(1220700001)(229853001)(5002640100001)(586003)(1096002)(5008740100001)(2501003)(6116002)(3846002)(33656002)(10400500002)(2351001)(105586002)(50986999)(54356999)(450100001)(2900100001)(40100003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR0501MB1090;
	H:BN3PR0501MB1090.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2015 20:19:40.7379 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0501MB1090
Subject: Cleanly moving files from one package to another
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
X-List-Received-Date: Wed, 09 Dec 2015 20:35:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

I'm on poky/dizzy-1.7.3 and I'm using opkg for a package manager.  I have a=
 few script files that are part of one package that really belong with anot=
her.  So I updated both recipes, removed the file from one recipe and added=
 it to the other recipe.  I built everything, made the opkg feed repo and t=
ried to upgrade with "opkg update; opkg upgrade" to see how clean the upgra=
de was.  For each script file I moved from one package to the other I get a=
n error message of the form:

* check_data_file_clashes: Package A wants to install file /path/to/script/=
file
        But that file is already provided by package  * B

I know I can do "opkg upgrade --force-overwrite", but I'd like to make reci=
pe changes so that it upgrades cleanly.  All I've done in the recipes is re=
move the script files from the FILES variable and the do_install step of on=
e recipe and added the script to the FILES variable and do_install step of =
the other recipe.  I know update-alternatives can be used if more than one =
package provides the same binary, but is that necessary in this case when t=
ransferring ownership to another package?  Is there anything else I can do =
in the recipes to prevent the opkg install errors?

Thanks,
Bryan



