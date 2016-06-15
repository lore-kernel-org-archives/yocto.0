Return-Path: <bartosz.woronicz@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0227BE00CA5; Wed, 15 Jun 2016 04:23:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.112.137 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from emea01-am1-obe.outbound.protection.outlook.com
	(mail-am1on0137.outbound.protection.outlook.com [157.56.112.137])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E0C0E00C9C
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 04:22:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nokia.onmicrosoft.com; 
	s=selector1-nokia-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=jQOeNBKb/J2JYIz1MzL9CfQ3yUVrbKQIPuy9gbUfhbg=;
	b=qYckv3K7Ar3Xp3bplTF1P4R2rYmxfarACply/MQsouJUcyjweLayC9kxwWAJZfJO9O9sUJh55JoqWCr+AHgi4214H9rRh9qSFy9+KFcOPSQsqRJ13TqhyQ/cUXZIrxlWdOA5/nkq7HEXwRa0GBgSCN0OynfKKyMca+bsIJYyYH4=
Received: from VI1PR07MB1053.eurprd07.prod.outlook.com (10.161.111.145) by
	VI1PR07MB1055.eurprd07.prod.outlook.com (10.161.111.147) with Microsoft
	SMTP Server (TLS) id 15.1.517.8; Wed, 15 Jun 2016 11:22:55 +0000
Received: from VI1PR07MB1053.eurprd07.prod.outlook.com ([10.161.111.145]) by
	VI1PR07MB1053.eurprd07.prod.outlook.com ([10.161.111.145]) with mapi id
	15.01.0511.017; Wed, 15 Jun 2016 11:22:55 +0000
From: "Woronicz, Bartosz (Nokia - PL/Wroclaw)" <bartosz.woronicz@nokia.com>
To: Pascal Bach <pascal.bach@siemens.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Yocto git server via http and mirror tarballs
Thread-Index: AQHRxvWeQpSyZt6jfE+1jeBUIvOh+5/qYc9g
Date: Wed, 15 Jun 2016 11:22:55 +0000
Message-ID: <VI1PR07MB1053319307849C7A12BE1E9581550@VI1PR07MB1053.eurprd07.prod.outlook.com>
References: <57613330.9080100@siemens.com>
In-Reply-To: <57613330.9080100@siemens.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bartosz.woronicz@nokia.com; 
x-originating-ip: [131.228.2.19]
x-ms-office365-filtering-correlation-id: fa0e5f58-0651-452a-5931-08d3950f65c7
x-microsoft-exchange-diagnostics: 1; VI1PR07MB1055;
	6:DwEgY93Rp40fwkjT/fGKVH9fq2yqRXW+/ZaVDKDaXYkEhGRcdWfPaV6ANqbJCahA/LePoaAqtz8lWY70sDXCZIGAnotYuzJEjc4NcjEM+3XB8H7DV90xB740KNtEgeNQ+7LkyBHzv+Cxdmp5V9zQGHsbiq74R1DY52KjC9g8g+K5Gs+gj08baPzkysksQimTF38bum7WSAzAaxVV8oGfdEmyMiuF9SRIIUxLLan4r7yQYHPtcC097bimheCwuGoSFhvHF561YOV1LrwfdN2AxA==;
	5:oVoZ3AHjWmnEuh96LYVOjApzVUoonETQYMbrAfTGwclDzJwS0njAnN3/7xnaU3UAuTTKOvI85FDkPDcY5K+Tew3YfvZ9uteuZ8/k86iWdWi3JGxWqEEda1Pc6P+ME965ncKk7JxdPfUxdmt9tzrzvg==;
	24:G/aPvAFnS3moO5ysX6DKDrveGJAWcfi6WiB0I/ksnXgvNyj65Y6Z1Vn2yKcSJapSKXXZrhIn9P6V4l6IZ2rOTmSxp6tmvXeal3N27PPr7VQ=;
	7:5r9qg2sWAuRLV+SbMEms6jgmbEWVm+y1Avn9vWvLNlTej3eEr6OAIvDKuSFk1PM/s4U77QLOMKT3p8voSyJS5BvR8hRTqFlM+QNT7cA0n82mnYjlrdVTN/lXbfcdgwgWtAZJuvLYr6Zh1ZxhRPIKzvHxBRatRTpvGF6QOOEIzwq6BI/QzrlJxdS+IUEn+Myi8UCkhpvzyuZry0SLIfBWmw==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:VI1PR07MB1055;
x-microsoft-antispam-prvs: <VI1PR07MB1055A5AEBD362E485971CAD881550@VI1PR07MB1055.eurprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(158342451672863);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046);
	SRVR:VI1PR07MB1055; BCL:0; PCL:0; RULEID:; SRVR:VI1PR07MB1055; 
x-forefront-prvs: 09749A275C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(13464003)(377454003)(71364002)(189002)(199003)(40764003)(3280700002)(2906002)(101416001)(3660700001)(54356999)(33656002)(5008740100001)(86362001)(76576001)(11100500001)(8676002)(76176999)(50986999)(19580395003)(19580405001)(586003)(66066001)(15975445007)(92566002)(5001770100001)(3846002)(97736004)(106356001)(81156014)(81166006)(6116002)(8936002)(2900100001)(2950100001)(2501003)(122556002)(10400500002)(106116001)(107886002)(105586002)(74316001)(189998001)(102836003)(9686002)(68736007)(5003600100002)(87936001)(5004730100002)(77096005)(5002640100001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR07MB1055;
	H:VI1PR07MB1053.eurprd07.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; CAT:NONE; LANG:en; CAT:NONE; 
received-spf: None (protection.outlook.com: nokia.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nokia.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2016 11:22:55.2264 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5d471751-9675-428d-917b-70f44f9630b0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR07MB1055
Subject: Re: Yocto git server via http and mirror tarballs
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
X-List-Received-Date: Wed, 15 Jun 2016 11:23:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I set in .gitconfig to always use https:// (don't forget 'git' at the end o=
f path) instead git:// for yoctoproject url

[url "https://git.yoctoproject.org/git/"]
        insteadOf =3D git://git.yoctoproject.org/

Kind regards,
Bartosz Woronicz
Engineer, Software Configuration (SCM)
Nokia Networks - PL/Wroclaw

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Pascal Bach
Sent: Wednesday, June 15, 2016 12:51 PM
To: yocto@yoctoproject.org
Subject: [yocto] Yocto git server via http and mirror tarballs

Hi

Because of firewall restrictions I'm not always not able to access the git.=
yoctoproject.org via the git protocol but I'm required to use http.

By default most of the recipes in Poky recipes use the git protocol not the=
 http protocol. For example yocto-kernel-tools points to repositories "git:=
//git.yoctoproject.org/yocto-kernel-tools" instead of "http://git.yoctoproj=
ect.org/git/yocto-kernel-tools".

To work around this issue I added a mirror rules for rewriting the protocol=
 like this:

MIRRORS +=3D "\
    git://git.yoctoproject.org/.*                               git://git.y=
octoproject.org/git/PATH;protocol=3Dhttp \n \
    "

This seems to work and I'm able to fetch the sources even when git access i=
s not possible.

But when I then enable BB_GENERATE_MIRROR_TARBALLS =3D "1" I'm starting to =
get different tarball names depending on what protocol was used.
For example "git2_git.yoctoproject.org.yocto-kernel-tools.git.tar.gz" vs "g=
it2_git.yoctoproject.org.git.yocto-kernel-tools.git.tar.gz".

I assume this happens because the first tarball was create while git access=
 was possible, while the second one was created when only http was possible=
:
git.yoctoproject.org/git =3D> git.yoctoproject.org.git
git.yoctoproject.org     =3D> git.yoctoproject.org

Is there any way to prevent the tarballs from having different names? For e=
xample derive the name always from the original URL not the mirror one?

Or is there a better way to achieve what we are doing with MIRROR?

Thanks for your help.

Pascal
--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

