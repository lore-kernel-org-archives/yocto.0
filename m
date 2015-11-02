Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC394E006F6; Mon,  2 Nov 2015 13:55:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.111.117 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bon0117.outbound.protection.outlook.com [157.56.111.117])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00787E005B3
	for <yocto@yoctoproject.org>; Mon,  2 Nov 2015 13:55:04 -0800 (PST)
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com (10.160.113.12) by
	BN3PR0501MB1091.namprd05.prod.outlook.com (10.160.113.13) with
	Microsoft SMTP
	Server (TLS) id 15.1.312.18; Mon, 2 Nov 2015 21:55:02 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) by
	BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) with
	mapi id 15.01.0312.014; Mon, 2 Nov 2015 21:55:02 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Martin Jansa <martin.jansa@gmail.com>
Thread-Topic: [yocto] COPY_LIC_DIRS, COPY_LIC_MANIFEST and firmware upgrades
Thread-Index: AdEVjjmV0BQgio+BR8W6nugceOMBXwAH1jMAAALQc6A=
Date: Mon, 2 Nov 2015 21:55:01 +0000
Message-ID: <BN3PR0501MB1090B21718BCC23F3350B08EBB2C0@BN3PR0501MB1090.namprd05.prod.outlook.com>
References: <BN3PR0501MB1090167F43DDD94ECB562845BB2C0@BN3PR0501MB1090.namprd05.prod.outlook.com>
	<20151102203219.GB28051@jama>
In-Reply-To: <20151102203219.GB28051@jama>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-originating-ip: [98.100.91.242]
x-microsoft-exchange-diagnostics: 1; BN3PR0501MB1091;
	5:5HqA+kL53K+/V9i7Dvw/9Nre9m6cB/I+O51DNZT6kGFbh1LpitlBXWWXXOjgtNvIQsKqw6cZLn26trnzwOMDmLM9Alw4agfgY7iZivcXkNdYWz7n5+N6YhxYBlBEqhsJaE0QftkSG0bRI96ehu1DLA==;
	24:qW4FvXNM0wdDBfxixsXETUIPj5uNAgoC/FkkaeXkDs9FxSxashBOA4bDQWF3bqzwZliivVAa8K8YTIpomOl4ziyMv0Id5ZlvqZethE/4+Sc=;
	20:iFqYHBPOokqT+s5vUuToMnEn/A8Jp52Oo0aYcsC7zSeHb+ioo79AQpWQPekDZOnl58VgV03rhmbDpu0QstNrkA==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR0501MB1091;
x-microsoft-antispam-prvs: <BN3PR0501MB10913597EBDFD172F15DC6F8BB2C0@BN3PR0501MB1091.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(520078)(5005006)(8121501046)(10201501046)(3002001);
	SRVR:BN3PR0501MB1091; BCL:0; PCL:0; RULEID:;
	SRVR:BN3PR0501MB1091; 
x-forefront-prvs: 0748FF9A04
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(979002)(6009001)(13464003)(51914003)(199003)(377454003)(24454002)(189002)(5007970100001)(77096005)(40100003)(5002640100001)(5003600100002)(10400500002)(5008740100001)(76576001)(92566002)(50986999)(33656002)(105586002)(54356999)(74316001)(86362001)(2900100001)(5004730100002)(106356001)(87936001)(99286002)(76176999)(101416001)(110136002)(19580405001)(97736004)(19580395003)(11100500001)(102836002)(122556002)(189998001)(66066001)(5001960100002)(5001920100001)(15975445007)(81156007)(2950100001)(969003)(989001)(999001)(1009001)(1019001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR0501MB1091;
	H:BN3PR0501MB1090.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2015 21:55:01.9104 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0501MB1091
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: COPY_LIC_DIRS, COPY_LIC_MANIFEST and firmware upgrades
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
X-List-Received-Date: Mon, 02 Nov 2015 21:55:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Martin,

> -----Original Message-----
> From: Martin Jansa [mailto:martin.jansa@gmail.com]
> Sent: Monday, November 02, 2015 3:32 PM
> To: Bryan Evenson <bevenson@melinkcorp.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] COPY_LIC_DIRS, COPY_LIC_MANIFEST and firmware
> upgrades
>=20
> On Mon, Nov 02, 2015 at 05:13:48PM +0000, Bryan Evenson wrote:
> > All,
> >
> > I'm on poky/dizzy-1.7.2 and I've been using COPY_LIC_DIRS and
> COPY_LIC_MANIFEST to include the license text on my image.  I noticed
> something about the way it operates and I'm wondering if it's a problem
> when it comes to Free and Open Source Software compliance.
> >
> > If I build an image with COPY_LIC_MANIFEST and COPY_LIC_DIRS both set
> to 1, then the image is generated with the directory /usr/share/common-
> licenses that include all the licenses for all the packages in the image.=
  There is
> also /usr/share/common-licenses/license.manifest which summarizes all the
> licenses in the directory.  Let's call this starting point image version =
A.
> >
> > Later on in development I add package "foo-extra" to the image.  I add
> "foo-extra" to the RDEPENDS list for package "foo" which now needs the
> new package for proper operation.  The built image now includes in
> /usr/share/common-licenses/foo-extra the license for the new package.
> We'll call this image version B.
> >
> > If I ship a product that was burned with image verison A then it has al=
l the
> licenses for all the packages that were installed in the image.  Likewise=
, if I
> ship a product that was burned with image version B then it has all the
> licenses for all the packages that were installed in the image.  However,=
 if a
> product ships with image version A and then is upgraded to image version =
B
> then package "foo-extra" is installed due to dependencies but the license=
 for
> "foo-extra" is not included in the upgrade.  The /usr/share/common-licens=
es
> directory is not tied to any package, so firmware upgrade does not add,
> modify or remove any of the licenses in /usr/share/common-licenses.
> >
> > Is this a problem when it comes to FOSS compliance?  If so, is there a
> suggested way of including the new licenses for firmware upgrades?
>=20
> You can also enable LICENSE_CREATE_PACKAGE which should create <pkg>-
> lic packages rrecommended from <pkg> so they should get installed togethe=
r
> with image upgrade, see:
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3743

Thanks for the information, I'll give this a try.  I noticed I don't see an=
y reference to LICENSE_CREATE_PACKAGE in the Yocto documentation.  Should I=
 add a bug in Bugzilla to add documentation for this variable?

Regards,
Bryan

>=20
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

