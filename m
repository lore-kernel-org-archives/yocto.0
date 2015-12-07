Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA43EE0049B; Mon,  7 Dec 2015 13:32:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.111.141 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bon0141.outbound.protection.outlook.com [157.56.111.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5902AE0049B
	for <yocto@yoctoproject.org>; Mon,  7 Dec 2015 13:32:18 -0800 (PST)
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com (10.160.113.12) by
	BN3PR0501MB1091.namprd05.prod.outlook.com (10.160.113.13) with
	Microsoft SMTP
	Server (TLS) id 15.1.337.19; Mon, 7 Dec 2015 21:32:14 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) by
	BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) with
	mapi id 15.01.0337.015; Mon, 7 Dec 2015 21:32:14 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Best practice for files copied directly into sysroot?
Thread-Index: AQHRLEysoQoJ6J+2nk2wyet0ibQyrJ62bU7wgAAg6ICAA1QhAIAA6nUAgAUJkICAACIPgIAAGiXQ
Date: Mon, 7 Dec 2015 21:32:14 +0000
Message-ID: <BN3PR0501MB1090361F542BEB748C1D199ABB090@BN3PR0501MB1090.namprd05.prod.outlook.com>
References: <CAOsp8o_WfYUB2nBXmGdVTF27RmkjzbvYJrHrW+R-Lv-P8WzS3A@mail.gmail.com>
	<BN3PR0501MB109081CFF721741E6E0189EDBB0C0@BN3PR0501MB1090.namprd05.prod.outlook.com>
	<5665C66D.7060305@gmail.com>
	<2501407.zVkQ18lSQ3@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <2501407.zVkQ18lSQ3@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-originating-ip: [98.100.91.242]
x-microsoft-exchange-diagnostics: 1; BN3PR0501MB1091;
	5:5MdU4bi94hvoB0qQK7piPROOa7OQWnczHkM8dkRkDqgafgL+kuwgLHTuYWnwILnHzMk/GaUKjyZXi2STjOXqt2VRKu/90zp0iCv2tCwIOrmP8hbJ1B2vHiemH10h8SCYcbOySAl78dcOk5oYk4RrXg==;
	24:8zVXzrxpSQiaj22MQAbdeU3vLqFpYcTh9C1j85ahmZSC3ay+BTWvHWTNcQ9KO7iqLrnUl8//TCTWjEh9cRUZ5TouD3Rz+l/hIep8lzbpC+0=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR0501MB1091;
x-microsoft-antispam-prvs: <BN3PR0501MB10918C3FD7B7A25041D75B7ABB090@BN3PR0501MB1091.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(228905959029699)(57590538094435);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(520078)(8121501046)(3002001)(10201501046);
	SRVR:BN3PR0501MB1091; BCL:0; PCL:0; RULEID:;
	SRVR:BN3PR0501MB1091; 
x-forefront-prvs: 078310077C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(24454002)(199003)(479174004)(13464003)(189002)(377454003)(3846002)(97736004)(92566002)(586003)(5002640100001)(5001960100002)(50986999)(5004730100002)(105586002)(86362001)(40100003)(76176999)(6116002)(106356001)(1096002)(76576001)(99286002)(5008740100001)(122556002)(102836003)(66066001)(1220700001)(110136002)(81156007)(189998001)(2950100001)(54356999)(5003600100002)(11100500001)(93886004)(106116001)(2900100001)(101416001)(10400500002)(87936001)(19580395003)(77096005)(74316001)(19580405001)(33656002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR0501MB1091;
	H:BN3PR0501MB1090.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2015 21:32:14.5518 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0501MB1091
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Best practice for files copied directly into sysroot?
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
X-List-Received-Date: Mon, 07 Dec 2015 21:32:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Paul,

> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: Monday, December 07, 2015 2:50 PM
> To: Bryan Evenson <bevenson@melinkcorp.com>
> Cc: yocto@yoctoproject.org; Trevor Woerner <twoerner@gmail.com>;
> Michael Habibi <mikehabibi@gmail.com>
> Subject: Re: [yocto] Best practice for files copied directly into sysroot=
?
>=20
> On Mon, 07 Dec 2015 12:48:29 Trevor Woerner wrote:
> > On 12/04/15 09:03, Bryan Evenson wrote:
> > > Although I am having issues with the license; I haven't figured out w=
here
> > > to put it and what to set LIC_FILES_CHKSUM to in the recipe so that
> > > bitbake can find the license.  If anyone has a good answer for that, =
let
> > > me know.
> > You could try:
> >     LICENSE =3D "CLOSED"
> >
> > then you don't need a checksum line.
>=20
> This is legitimate of course only when the source is in fact closed (and =
even
> then, there may be redistribution conditions that you might want to track=
).
>=20
> There are several more appropriate ways to solve this issue:
>=20
> 1) The proper way is to point to a file in the fetched/unpacked sources. =
To do
> this, LIC_FILES_CHKSUM should specify one or more paths relative to ${S}
> (i.e.
> where the sources are unpacked to) each prefixed by file:// .
>=20

Ah, now I see the example in the manual: "Specifying the LIC_FILES_CHKSUM V=
ariable".  In my case I have the license as a separate file in my files/ di=
rectory for the recipe. So in my case I now set:

LIC_FILES_CHECKSUM =3D "file://${WORKDIR}/license.txt;md5=3Dblahblah"
SRC_URI =3D "file://${BP}.tar.gz \
    file://license.txt \
    "

Now the do_license step is finding the license in the WORKDIR and I no long=
er have any warnings about the license.

Thanks!
Bryan

> 2) If there is no file in the sources describing the license, then add on=
e in
> SRC_URI, or point to a common one in ${COMMON_LICENSE_DIR} if
> appropriate.
> These are then copied into ${WORKDIR} automatically and can be referred t=
o
> in
> LIC_FILES_CHKSUM from there.
>=20
> Cheers,
> Paul
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre

