Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 640ACE006F3; Mon,  2 Nov 2015 11:47:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.111.132 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 9202 seconds by postgrey-1.32 at yocto-www;
	Mon, 02 Nov 2015 11:47:12 PST
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bon0132.outbound.protection.outlook.com [157.56.111.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9EA4E0034B
	for <yocto@yoctoproject.org>; Mon,  2 Nov 2015 11:47:12 -0800 (PST)
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com (10.160.113.12) by
	BN3PR0501MB1090.namprd05.prod.outlook.com (10.160.113.12) with
	Microsoft SMTP
	Server (TLS) id 15.1.312.18; Mon, 2 Nov 2015 17:13:48 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) by
	BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) with
	mapi id 15.01.0312.014; Mon, 2 Nov 2015 17:13:48 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: COPY_LIC_DIRS, COPY_LIC_MANIFEST and firmware upgrades
Thread-Index: AdEVjjmV0BQgio+BR8W6nugceOMBXw==
Date: Mon, 2 Nov 2015 17:13:48 +0000
Message-ID: <BN3PR0501MB1090167F43DDD94ECB562845BB2C0@BN3PR0501MB1090.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-originating-ip: [98.100.91.242]
x-microsoft-exchange-diagnostics: 1; BN3PR0501MB1090;
	5:1ThvC+EIRswEwWwBrSatvK+7mFZGbSei5NiczwAUtIxUkhLGRXxQaYvLea01WNyqSiXbQJbb3GvMo3badFsBwXlio4mr9uhnh7fYD0g231xNlo0hC1coeJdvN8a1rup3LT4bT3GNDaurUPzOphAATw==;
	24:UCfsIa1qXIMbjZDqOjEGN5UtEs7JqjXlEgKsjcbiiHdEGGnMZwlZEHAnSOMqdnBNdYReK6dvBq6RvDsDt3JHNx7rv+gLxNZfzpJaKg4GO9Y=;
	20:ovJTf9amUP/Hgb8uZyAZxR5n9ylaizv4GIdELnEpeepFAf5matPPBibENXtRc7Ysa81gsID4ZOpPLkE3AOlBgg==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR0501MB1090;
x-microsoft-antispam-prvs: <BN3PR0501MB109003848595738EF097003CBB2C0@BN3PR0501MB1090.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(520078)(8121501046)(10201501046)(3002001);
	SRVR:BN3PR0501MB1090; BCL:0; PCL:0; RULEID:;
	SRVR:BN3PR0501MB1090; 
x-forefront-prvs: 0748FF9A04
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(189002)(199003)(164054003)(110136002)(2900100001)(66066001)(81156007)(50986999)(97736004)(99286002)(106356001)(11100500001)(5008740100001)(86362001)(450100001)(107886002)(101416001)(33656002)(54356999)(92566002)(5002640100001)(2351001)(189998001)(76576001)(229853001)(77096005)(74316001)(87936001)(5001960100002)(10400500002)(5003600100002)(122556002)(40100003)(105586002)(102836002)(5004730100002)(5007970100001)(2501003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR0501MB1090;
	H:BN3PR0501MB1090.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2015 17:13:48.4952 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0501MB1090
Subject: COPY_LIC_DIRS, COPY_LIC_MANIFEST and firmware upgrades
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
X-List-Received-Date: Mon, 02 Nov 2015 19:47:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

I'm on poky/dizzy-1.7.2 and I've been using COPY_LIC_DIRS and COPY_LIC_MANI=
FEST to include the license text on my image.  I noticed something about th=
e way it operates and I'm wondering if it's a problem when it comes to Free=
 and Open Source Software compliance.

If I build an image with COPY_LIC_MANIFEST and COPY_LIC_DIRS both set to 1,=
 then the image is generated with the directory /usr/share/common-licenses =
that include all the licenses for all the packages in the image.  There is =
also /usr/share/common-licenses/license.manifest which summarizes all the l=
icenses in the directory.  Let's call this starting point image version A.

Later on in development I add package "foo-extra" to the image.  I add "foo=
-extra" to the RDEPENDS list for package "foo" which now needs the new pack=
age for proper operation.  The built image now includes in /usr/share/commo=
n-licenses/foo-extra the license for the new package.  We'll call this imag=
e version B.

If I ship a product that was burned with image verison A then it has all th=
e licenses for all the packages that were installed in the image.  Likewise=
, if I ship a product that was burned with image version B then it has all =
the licenses for all the packages that were installed in the image.  Howeve=
r, if a product ships with image version A and then is upgraded to image ve=
rsion B then package "foo-extra" is installed due to dependencies but the l=
icense for "foo-extra" is not included in the upgrade.  The /usr/share/comm=
on-licenses directory is not tied to any package, so firmware upgrade does =
not add, modify or remove any of the licenses in /usr/share/common-licenses=
.

Is this a problem when it comes to FOSS compliance?  If so, is there a sugg=
ested way of including the new licenses for firmware upgrades?

Thanks,
Bryan

