Return-Path: <mschepers@telspandata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 670E4E00DFC; Wed, 13 Nov 2019 09:42:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FORGED_SPF_HELO, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.76.43 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
	(mail-eopbgr760043.outbound.protection.outlook.com [40.107.76.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA6AFE00B7A
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 09:42:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=EWbadJhIBJqSIsLKnFnnEL3dWAisBRyS0gY4WKCTYLjWt/fxXVmkS/F7CprW2BtF5XToSgmaIz0dVjdCQCK1MihrZbh7Ym+6/gn3QstdYciUbBdatoNSujiJTIPnH70CdqJhzflYg4lNhRmlZ2RXGks1eIj9ocLq6JfdJmKLmuoWJdGqUJQekngXAIlwnL8cHCHDRXPJZBqonkXHUOar3mEUf7t8xFxcUMU/XpR6xN8TmeT4QRWKNKDyOOZwCz37yscMRfg6LJGWdzS+m/SrZJ6/Kbg1diZUJToFotpOISzuMqEdbjAasLRkBMnkx9eVMYN4z1n2wUkbZgdgwVpyHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=7nC6zMc4TX4ImSyVMtejTk9Smztros2oQ7NRFikWJzA=;
	b=IhMxDGSSoGdEousYd0Bg41NRkNSC+JplH5EJORRm1KKtYBK3wo13A9CWbN7jpVJkX8BxAQt/ZJq81e16wLLnmZd7+HgjBJi/xAxM6WxP4jRs4E5Ah6T7G0LQo/3pe1TpATNeFiavmk6ypOx/B5DimvzvUZL2vuT6Nc8orf5KhKhThH9+MGWE15mKuysCO3ErxrE96mCH57AL0ECj0jW6MBMdnrnuCaD+/Yn5jn6p91q0SD9g40kA7EFDa4HwYieESWvYOMZ7Up7A5qIMSzto5sdZ7vPwqEdAE0RvDl/xhhusI6TOGfGJsx7erxyzlUCw2wyyHCX2SQrzl2rW22BaDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=telspandata.com; dmarc=pass action=none
	header.from=telspandata.com; dkim=pass header.d=telspandata.com;
	arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=telspandata.onmicrosoft.com; s=selector2-telspandata-onmicrosoft-com; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=7nC6zMc4TX4ImSyVMtejTk9Smztros2oQ7NRFikWJzA=;
	b=LNtkGpjWU10bFb+waYZCLcGg6fA8AmRIGaKB8dMP3BvI5rVpYVrULd3s7NyyZiPtt4FiofglY+CvRmI/QerkcYx4hheiLFT1lq56WCJbYGl7PORKNjIXVR/CAQhfnWH6m5QVyyoJqRRgE2i8/TIYDWhgsdk6fan0/N5zr7ZLu1Y=
Received: from DM6PR16MB2665.namprd16.prod.outlook.com (20.177.217.12) by
	DM6PR16MB3612.namprd16.prod.outlook.com (20.178.226.97) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2430.25; Wed, 13 Nov 2019 17:42:27 +0000
Received: from DM6PR16MB2665.namprd16.prod.outlook.com
	([fe80::ad5a:a3f7:308c:61af]) by
	DM6PR16MB2665.namprd16.prod.outlook.com
	([fe80::ad5a:a3f7:308c:61af%6]) with mapi id 15.20.2430.027;
	Wed, 13 Nov 2019 17:42:26 +0000
From: Matt Schepers <mschepers@telspandata.com>
To: Khem Raj <raj.khem@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] bitbake <image> -c populate_sdk generates locale error
Thread-Index: AQHVmj0x4qmec3didEG61NlhTGgDEaeJVK4AgAAJxNM=
Date: Wed, 13 Nov 2019 17:42:26 +0000
Message-ID: <DM6PR16MB26656E06A4BA31EF5188D138B0760@DM6PR16MB2665.namprd16.prod.outlook.com>
References: <DM6PR16MB266559B45615FC4236E9561CB0760@DM6PR16MB2665.namprd16.prod.outlook.com>,
	<209718cf01e176ba2e1ec5c57fafa8c99eacaf91.camel@gmail.com>
In-Reply-To: <209718cf01e176ba2e1ec5c57fafa8c99eacaf91.camel@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=mschepers@telspandata.com; 
x-originating-ip: [96.69.169.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f60939cd-28fa-47af-c604-08d76860d922
x-ms-traffictypediagnostic: DM6PR16MB3612:
x-microsoft-antispam-prvs: <DM6PR16MB3612026630D3AAB887903553B0760@DM6PR16MB3612.namprd16.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(366004)(39830400003)(396003)(376002)(136003)(346002)(199004)(189003)(149574003)(33656002)(99286004)(81166006)(476003)(6246003)(446003)(71190400001)(14444005)(71200400001)(256004)(11346002)(486006)(66066001)(86362001)(81156014)(26005)(53546011)(2906002)(7736002)(316002)(305945005)(8676002)(8936002)(102836004)(110136005)(76176011)(186003)(74316002)(7696005)(6506007)(52536014)(6436002)(2501003)(508600001)(4001150100001)(5660300002)(9686003)(3846002)(66446008)(64756008)(66556008)(66946007)(66476007)(55016002)(76116006)(14454004)(25786009)(6116002)(229853002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR16MB3612;
	H:DM6PR16MB2665.namprd16.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: telspandata.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mf6j4HGWWmpSHSzwf4xILhzfFZwTwaCJa0o/5GECVejUZ1AdIV9znZpY8X/FZZg/XZd+Y6nV3orRBl8mXC/SwiccphXiJnEWtXdwToctlmhTDZibWi3/FzSMnlXZb0DM67p6yh8ntktYdOebcwY0dJtIkMcRzP8LdQZozW6krMKwJZr42MGiYeywrEafO7bthGETqYOMoP6crzM5uRQFPu+0KUueCMnEnPAUhieSTcv7Au8DMncXUrRFzscb0GJCzyhAqx+N/ypJWYAI5nxm3oZxqXckrotj48epFUDD6wUHgvPmrnD7Hs0/lvC9ASiJGDx8HjGm20eJo597vC535vCZdsl0McHo/X4J1yz9VP4i+gIx1qy38vduo6n47J0ZNqE80OQ2t/FHbuske9imp0yLup0CRFyiBjxgh8YLlVs1sIffsjtViEOy7+W28/SH
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: telspandata.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f60939cd-28fa-47af-c604-08d76860d922
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 17:42:26.3499 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 980119cc-b60c-4c4d-84e8-5d25446e5dc3
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WnhScyO7Q0ezgU996yMlQtpkwOgKjnTbtxVXS0YJaAe7p2ICmmUQgxQ8IrKVwSeY+KzibhpxaQoaltdn0gV0EP5m4Xzq97kKVjafF9OS95U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR16MB3612
Subject: Re: bitbake <image> -c populate_sdk generates locale error
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
X-List-Received-Date: Wed, 13 Nov 2019 17:42:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Khem,=0A=
=0A=
Thank you, but that didn't work. However I have found a fix: I had 'SDK_VEN=
DOR=3D"telspan"' set in the image recipe. When I removed this line yocto no=
w builds an SDK. I have no idea why this was causing a problem, it was work=
ing previously. =0A=
=0A=
Thanks for reaching out to me!=0A=
=0A=
________________________________________=0A=
From: Khem Raj <raj.khem@gmail.com>=0A=
Sent: Wednesday, November 13, 2019 10:05 AM=0A=
To: Matt Schepers; yocto@yoctoproject.org=0A=
Subject: Re: [yocto] bitbake <image> -c populate_sdk generates locale error=
=0A=
=0A=
On Wed, 2019-11-13 at 16:12 +0000, Matt Schepers wrote:=0A=
> Hi,=0A=
>=0A=
> When I run 'bitbake <image> -c populate_sdk' I get an error about the=0A=
> locale not being found. I have tried setting the locale in local.conf=0A=
> but that didn't seem to help. The odd thing is that 'bitbake <image>'=0A=
> works just fine.=0A=
>=0A=
> Respectfully,=0A=
> Matt Schepers=0A=
>=0A=
> ERROR: telspan-dh3-1.0-r0 do_populate_sdk: Error executing a python=0A=
> function in exec_python_func() autogenerated:=0A=
>=0A=
> The stack trace of python calls that resulted in this=0A=
> exception/failure was:=0A=
> File: 'exec_python_func() autogenerated', lineno: 2, function:=0A=
> <module>=0A=
>      0001:=0A=
>  *** 0002:do_populate_sdk(d)=0A=
>      0003:=0A=
> File:=0A=
> '/home/mschepers/dh3_yocto/yocto/build/../meta/poky/meta/classes/popu=0A=
> late_sdk_base.bbclass', lineno: 152, function: do_populate_sdk=0A=
>      0148:=0A=
>      0149:    populate_sdk(d)=0A=
>      0150:=0A=
>      0151:fakeroot python do_populate_sdk() {=0A=
>  *** 0152:    populate_sdk_common(d)=0A=
>      0153:}=0A=
>      0154:SSTATETASKS +=3D "do_populate_sdk"=0A=
>      0155:SSTATE_SKIP_CREATION_task-populate-sdk =3D '1'=0A=
>      0156:do_populate_sdk[cleandirs] =3D "${SDKDEPLOYDIR}"=0A=
>      ....=0A=
>      ....=0A=
>      ....=0A=
> File:=0A=
> '/home/mschepers/dh3_yocto/yocto/build/../meta/poky/meta/lib/oe/sdk.p=0A=
> y', lineno: 45, function: generate_locale_archive=0A=
>      0041:    # Need to set this so cross-localedef knows where the=0A=
> archive is=0A=
>      0042:    env =3D dict(os.environ)=0A=
>      0043:    env["LOCALEARCHIVE"] =3D oe.path.join(localedir, "locale-=
=0A=
> archive")=0A=
>      0044:=0A=
>  *** 0045:    for name in os.listdir(localedir):=0A=
>      0046:        path =3D os.path.join(localedir, name)=0A=
>      0047:        if os.path.isdir(path):=0A=
>      0048:            try:=0A=
>      0049:                cmd =3D ["cross-localedef", "--verbose"]=0A=
> Exception: FileNotFoundError: [Errno 2] No such file or directory:=0A=
> '/home/mschepers/dh3_yocto/yocto/build/tmp/work/dh3a10-poky-linux-=0A=
> gnueabi/telspan-dh3/1.0-r0/sdk/image/opt/poky/2.5.2/sysroots/x86_64-=0A=
> telspan-linux/usr/lib/locale'=0A=
>=0A=
=0A=
this means the locales on sdk host are not installed properly, so=0A=
perhaps just renstalling locales on SDK host might help. since you seem=0A=
to be on 2.5 release check if you have nativesdk-glibc recipe=0A=
available, if you do then perhaps adding something like=0A=
=0A=
SDK_DEPENDS +=3D "nativesdk-glibc-locale"=0A=
=0A=
in local.conf or preferably meta/classes/populate_sdk_base.bbclass=0A=
might help. But I must also note that a bit of work has gone into SDK=0A=
host locale issue since 2.5 release so you might have to do a bit of=0A=
digging to see needed patches to get it going on 2.5=0A=
=0A=
> ERROR: telspan-dh3-1.0-r0 do_populate_sdk: Function failed:=0A=
> do_populate_sdk=0A=
> ERROR: Logfile of failure stored in:=0A=
> /home/mschepers/dh3_yocto/yocto/build/tmp/work/dh3a10-poky-linux-=0A=
> gnueabi/telspan-dh3/1.0-r0/temp/log.do_populate_sdk.27826=0A=
> ERROR: Task (/home/mschepers/dh3_yocto/yocto/build/../meta/meta-=0A=
> telspan/recipes-core/images/telspan-dh3.bb:do_populate_sdk) failed=0A=
> with exit code '1'=0A=
=0A=

