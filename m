Return-Path: <vincent.daanen@orthotaxy.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71E40E0090A; Fri, 23 Mar 2018 08:39:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.115 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0115.outbound.protection.outlook.com [104.47.2.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99006E007DA
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 08:39:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=orthotaxy.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=eUImd+QEfESqF1VLz+z2Izhk1SjdXujm8HpTvHahioc=;
	b=eKJzf+G0ed4lCzD+xqbrAgMrkFR6aLzvTPCmJXKXfCK5FuP1te4l97KoCyRyO2voaUgoCI0lP5d9QUcpq2bVx/00XZMRnXowt7kDifVeRQZi90ZfYC06dP2hvscmEapNnKKGZLa8PzI4GdSnCSah2QqXeigvs2KixrcJ/KSJ2q0=
Received: from VI1P192MB0143.EURP192.PROD.OUTLOOK.COM (10.175.180.135) by
	VI1P192MB0381.EURP192.PROD.OUTLOOK.COM (52.134.24.20) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.588.14; Fri, 23 Mar 2018 15:07:15 +0000
Received: from VI1P192MB0143.EURP192.PROD.OUTLOOK.COM
	([fe80::b85b:37d9:45a2:c505]) by VI1P192MB0143.EURP192.PROD.OUTLOOK.COM
	([fe80::b85b:37d9:45a2:c505%18]) with mapi id 15.20.0609.010;
	Fri, 23 Mar 2018 15:07:15 +0000
From: Vincent Daanen <vincent.daanen@orthotaxy.com>
To: Stephano Cetola <stephano.cetola@linux.intel.com>
Thread-Topic: [yocto] how to "compute" path to install module file
Thread-Index: AdPBqG3vmHBD7DQ1T6SGrF4Y5N0r+AAOoU2AAAvCV9A=
Date: Fri, 23 Mar 2018 15:07:15 +0000
Message-ID: <VI1P192MB0143E0CCD5E6798208CD21468DA80@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
References: <VI1P192MB0143E912A128CECB0C06CF998DA90@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
	<329cf42d-0deb-648a-728a-a22289d05ed7@linux.intel.com>
In-Reply-To: <329cf42d-0deb-648a-728a-a22289d05ed7@linux.intel.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=vincent.daanen@orthotaxy.com; 
x-originating-ip: [152.77.102.34]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1P192MB0381;
	7:hxpkN1IXmMb4y9VmPlTNhfbUm7AXU/KnST8PBKBESKqG6lZBtRTdf1F/Hng68OcIC6O2tINKIKHYZk1ta4Iryi4LKMWP/CuITPu0BkRfpiYCd3KvhVb2m9x0XKI4v26DHf843K40jd1JeWDiuQm/mVxLzQZYFkyvc3phvJngIvOlB7PQyCfMJTOgaT5A1zm+U9Erox6XebhEqBi83C1D7WMKQxHs4JNZDIrcKFKak7V6VLx4ZAsckH+tuwI58zgm
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 04fb216b-506d-4bae-8083-08d590cfc351
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4604075)(3008032)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:VI1P192MB0381; 
x-ms-traffictypediagnostic: VI1P192MB0381:
x-microsoft-antispam-prvs: <VI1P192MB0381A9B9722F639A928917A48DA80@VI1P192MB0381.EURP192.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(166708455590820);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(3002001)(10201501046)(93006095)(93001095)(3231221)(944501327)(52105095)(6041310)(20161123562045)(2016111802025)(20161123558120)(20161123564045)(20161123560045)(6072148)(6043046)(201708071742011);
	SRVR:VI1P192MB0381; BCL:0; PCL:0; RULEID:; SRVR:VI1P192MB0381; 
x-forefront-prvs: 0620CADDF3
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(346002)(39830400003)(366004)(376002)(39380400002)(189003)(199004)(99286004)(446003)(11346002)(8936002)(8676002)(3660700001)(3280700002)(74316002)(97736004)(5250100002)(81166006)(25786009)(81156014)(2900100001)(5660300001)(76176011)(6436002)(4326008)(105586002)(53546011)(7696005)(2906002)(86362001)(66066001)(6506007)(55016002)(966005)(106356001)(26005)(53936002)(102836004)(33656002)(6246003)(316002)(14454004)(478600001)(6306002)(9686003)(186003)(6116002)(3846002)(305945005)(6916009)(7736002)(229853002)(68736007);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1P192MB0381;
	H:VI1P192MB0143.EURP192.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: orthotaxy.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: kNwVAH3nPeq8Ut6BXS0QCROVxu6jxV76B93/R9Q4NrkI9ALec9jcDI5GNWt4mcfLKT2MaLolLVkK8H3oL5/Aplh8WXCdBvWLTHbsfBdEm+5hX6xbfVrDKN2VcFWt59vRicsWuyw1Mx5n19zvM9a/eeWzdY5ihbxYjwbqYyRhUkPQQQ/NZyFEf18DAnQBDrQUHA+9+O9NyX5RncTm3xxlEQYcpoVckp3bIGH3okZTtfbfG8zUVK8GhrMZYIS6Tlt9k25Ho3TSm40b60BdPJGjfvpvzB35IAIpc/VlLgyTmWGaN/iUj1tmBg1zTPKQmFyQYOykoZ9sJG/9INLS3S73+g==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: orthotaxy.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04fb216b-506d-4bae-8083-08d590cfc351
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2018 15:07:15.1227 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0c838133-9c42-4d53-8cbc-7a36ef5279a7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P192MB0381
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to "compute" path to install module file
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
X-List-Received-Date: Fri, 23 Mar 2018 15:39:11 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi=20
Thanks for your answer, it helps me to get module installation work.

But now I have another problem ... Stay tune the mail willarrive soon on th=
e mailing list

> On 3/22/18 12:31 AM, Vincent Daanen wrote:
> > Hi,
> >=20
> > I'm porting the makefile to build SocketCan for Ixxat on yocto. At=20
> > this time I successfully build the module file.
>
> Have you checked out the CANopen drivers?
> https://github.com/ros-industrial/ros_canopen
> https://github.com/bmwcarit/meta-ros/tree/master/recipes-ros/ros-canopen
>
> There are already recipes for this if it happens to work for your part.
>
> Just figured I'd mention it :)
>
> For adding the Ixxat driver, this documentation might help:
> https://www.yoctoproject.org/docs/current/kernel-dev/kernel-dev.html#work=
ing-with-out-of-tree modules
>
> >=20
> > Build fails with the following error:
> >=20
> > nothing provides kernel-module-ixx-pci-4.12.14-yocto-standard needed=20
> > by kernel-module-ixxat-candriver-1.0-r0.qemux86_64
>
> Do you have a recipe that provides ixx-pci? If so it needs to say:
>
> PROVIDES =3D "ixx-pci"
>
> https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var=
-PROVIDES
>
> Also, you need to be sure that it is being built, so I would add that rec=
ipe into some RDEPENDS variable, > > for example:
>
> MACHINE_ESSENTIAL_EXTRA_RDEPENDS +=3D "ixx-pci"
>
> (in this case in your machine conf, assuming the package name is "ixx-pci=
")
>
> >=20
> > I don't understand how yocto computes to module filename. It adds the=20
> > kernel-version to the default filename...
>
> check out the "module_pattern" variables in:
> meta/classes/kernel-module-split.bbclass
>
> I believe this is done during packaging.
>
> Cheers,
> Stephano


