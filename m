Return-Path: <zhenhua.luo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8780EE00C28; Thu, 28 Jul 2016 01:08:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.58 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0058.outbound.protection.outlook.com [104.47.2.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0CCDE00B1A
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2016 01:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=RusO74BHENzX/zVql10GxnCbd5EyTAYl1Jza3F4kLm8=;
	b=sTW+q2+EagK4sK30pjU2LOHkKCcWMlr/v2d1y3vAOuw/F6Oklmc0ShKVEP8ZfnRdE2mJZ0CpRYYu22atLJvwZ4kUsVQjPwUmAt3hHA34eTRHozKbTNVkDsnDvdxGxCMbNb9OG74n3r0or82y5PDuPzeEDjBbZpDJ2vmbNVGxmiI=
Received: from DB6PR0401MB2630.eurprd04.prod.outlook.com (10.169.225.139) by
	DB6PR0401MB2630.eurprd04.prod.outlook.com (10.169.225.139) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384)
	id 15.1.557.8; Thu, 28 Jul 2016 07:53:56 +0000
Received: from DB6PR0401MB2630.eurprd04.prod.outlook.com ([10.169.225.139]) by
	DB6PR0401MB2630.eurprd04.prod.outlook.com ([10.169.225.139]) with
	mapi id 15.01.0557.009; Thu, 28 Jul 2016 07:53:56 +0000
From: Zhenhua Luo <zhenhua.luo@nxp.com>
To: Oliver Graute <oliver.graute@gmail.com>
Thread-Topic: [yocto] Can't replace login.defs with shadow-sysroot bbappend
Thread-Index: AQHR6KGKz1Ddpk92ZUWAtcMzCWFjBqAtdvBA
Date: Thu, 28 Jul 2016 07:53:56 +0000
Message-ID: <DB6PR0401MB26302D6732DC448BFDD81B67EE000@DB6PR0401MB2630.eurprd04.prod.outlook.com>
References: <20160728072611.GA26257@graute-opti>
In-Reply-To: <20160728072611.GA26257@graute-opti>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=zhenhua.luo@nxp.com; 
x-originating-ip: [192.158.241.86]
x-ms-office365-filtering-correlation-id: 51802d9a-acf4-4307-9fc5-08d3b6bc53e4
x-microsoft-exchange-diagnostics: 1; DB6PR0401MB2630;
	6:vsW9GCqT0SvkqEwO7dtC6UtsApZRuvgUJaA/wyMBawf4loH/oynmvQowvkezOKu4cyrne/XI/mIB5UtEnVlnTUH0igwfri8SRCbS9OeJ8PomSIqzra/fbOvc+ZQ5KfIKxCn0DdsNcfl0qRphXKeJFAxZ17cfK03J7NCCziKRb9PxEMPgl1w4BNJbnvEdnmvFj/Gx8ADSuEeBXFVNnGQw20wYYexr8DFaNXumOEvGjNS/P3VuxT+OY9x8lzcdgYQ+tyQpySxzy2IZHWKx0WxfGqfUHUSQyMJUHFBlK/hAt6onMuVz906VEY7av5VSo0dU5BHOl9ay9xUCeqb7Nr0FWg==;
	5:KJ2o3UFyra9m2Mq/2jFNBrQWkizwwRtmobM8Uw6+EsEq0kwU5Q1Ep5OSPHbiMPoRaxxRpREmbclWQqdUtP2HlXrMNs5U5tsy8sD2f0tumRIWKMlOcWu70JD8qHe7GvtCMHBrurlmYSk1gnPefYe6kQ==;
	24:jp6yU/5RCUXcwsaPyKdepgNIG1s0mUzaAFq0gDyOGknwruhqPg5T+4X5G6F07zG6V2S7GIkalnKRsfX9mAq1pDd5CqN0Fn31H8SDo6Y7YnQ=;
	7:mO5TAm08rj1Kaop3XHruaNFUxTgjcZzsBjm7sFmZpAim5TWOsWmF8BQUyo41+XTsp6TKx17jczMrj0rDcSqY5myR/Oz8y9BvDUYJEFPUNjNTncrR+5qvGXvTKT13c3nlDzmLe4in4BIfyJ+OMyv9XQZ/0uq6kzUKc/Gq9fCZWRO7mO8uDrMFJrL4mNI3eABr6nX5ebm2vs5kYIAZqcoYqhVAeTc65docfXrtrMvbidUM1uAOmODnALKXnx1KaZgP
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB6PR0401MB2630;
x-microsoft-antispam-prvs: <DB6PR0401MB263021647B0BDD12554D1764EE000@DB6PR0401MB2630.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(788757137089);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6055026);
	SRVR:DB6PR0401MB2630; BCL:0; PCL:0; RULEID:;
	SRVR:DB6PR0401MB2630; 
x-forefront-prvs: 00179089FD
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(189002)(13464003)(377454003)(199003)(11100500001)(76176999)(50986999)(5002640100001)(9686002)(8676002)(97736004)(74316002)(19580405001)(54356999)(586003)(81156014)(81166006)(105586002)(3660700001)(2906002)(3280700002)(77096005)(4326007)(19580395003)(189998001)(110136002)(7846002)(305945005)(8936002)(5003600100003)(3846002)(10400500002)(122556002)(66066001)(68736007)(106116001)(6116002)(2900100001)(2950100001)(86362001)(106356001)(101416001)(7736002)(7696003)(15975445007)(33656002)(87936001)(76576001)(102836003)(92566002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0401MB2630;
	H:DB6PR0401MB2630.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: nxp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2016 07:53:56.5539 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0401MB2630
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can't replace login.defs with shadow-sysroot bbappend
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
X-List-Received-Date: Thu, 28 Jul 2016 08:08:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Oliver,=20

The following line in shadow-sysroot.bb disables the final binary packages =
generation. You can try to add bbappend for shadow to do the customization.=
=20

# don't create any packages
# otherwise: dbus-dev depends on shadow-sysroot-dev which depends on shadow=
-sysroot
# and this has another copy of /etc/login.defs already provided by shadow
PACKAGES =3D ""


Best Regards,

Zhenhua

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Oliver Graute
> Sent: Thursday, July 28, 2016 3:26 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] Can't replace login.defs with shadow-sysroot bbappend
>=20
> Hello list,
>=20
> i'm trying to replace /etc/login.defs on the target with my own one. So I
> created a shadow-sysroot_%.bbappend file with this content:
>=20
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${BPN}:"
>=20
> # As we're overriding login.defs_shadow-sysroot we have to readd the
> checksum for it here # as it's containing the license for this component
> LIC_FILES_CHKSUM =3D "file://login.defs_shadow-
> sysroot;md5=3D286ba0946b3b8a300da3893d7b3af060"
>=20
> SRC_URI_append =3D " file://login.defs_shadow-sysroot "
>=20
> S =3D "${WORKDIR}"
>=20
> do_install_append() {
> 	install -d ${D}${sysconfdir}
> 	install -p -m 755 ${S}/login.defs_shadow-sysroot
> ${D}${sysconfdir}/login.defs }
>=20
> FILES_${PN} =3D "${D}${sysconfdir}/login.defs"
>=20
>=20
> If I run "bitbake shadow-sysroot" everything seems fine. But on the targe=
t
> there is no package shadow-sysroot after a complete image build. Just the=
se:
>=20
> opkg list  | grep shadow
> shadow - 4.2.1-r0
> shadow-base - 4.2.1-r0
> shadow-securetty - 4.2.1-r3
>=20
> If I explicit added shadow-sysroot to my fsl-image.bb where I put all my =
other
> packages for the target in I get this error.
>=20
> bitbake fsl-image
>=20
> Collected errors:
>  * opkg_prepare_url_for_install: Couldn't find anything to satisfy 'shado=
w-
> sysroot'.
>=20
> ERROR: Function failed: do_rootfs
>=20
>=20
> Some clue what is wrong here? I'am on jethro yocto branch.
>=20
> Best regards,
>=20
> Oliver
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

