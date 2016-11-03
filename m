Return-Path: <Thomas.Thorne@net2edge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 770CEE00C92; Thu,  3 Nov 2016 07:29:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.135 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0135.outbound.protection.outlook.com [104.47.2.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB8D5E00C43
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 07:29:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=transitionnetworks.onmicrosoft.com; s=selector1-net2edge-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=OL7HS9dfC0zb5/xgZp1MdAfVCuOii14b4bOOalpo9tE=;
	b=N/e0SPhYRovwWwg1GnxavzMoW8pMfUfSzrrbM4wRj1morGzAhbKekg15ts+E/nTWy7N9bBlxwdIrIJChJ37RuUqZBGv6f5Ns+YxiCcjzfhF+EbzB4Tp5cWP0aMRxFWsoD46dvX08qaz9fFk4YXv2hkiC4CANxjD1MzM45qAq/Gk=
Received: from DB6PR0701MB1879.eurprd07.prod.outlook.com (10.168.10.151) by
	DB6PR0701MB1878.eurprd07.prod.outlook.com (10.168.10.150) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.707.1; Thu, 3 Nov 2016 11:57:42 +0000
Received: from DB6PR0701MB1879.eurprd07.prod.outlook.com ([10.168.10.151]) by
	DB6PR0701MB1879.eurprd07.prod.outlook.com ([10.168.10.151]) with
	mapi id 15.01.0707.004; Thu, 3 Nov 2016 11:57:42 +0000
From: Thomas Thorne <Thomas.Thorne@net2edge.com>
To: Gary Thomas <gary@mlbassoc.com>
Thread-Topic: [yocto] How do I used Yocto to build an sdcard image for my
	Raspberry Pi 3 Model B?
Thread-Index: AQHSNQqEfdxswGkrfkuACWfeyICKLaDGv9EAgAA5AyCAAB/wAIAAArGQ
Date: Thu, 3 Nov 2016 11:57:42 +0000
Message-ID: <DB6PR0701MB1879B53C0A23029012B0505FD3A30@DB6PR0701MB1879.eurprd07.prod.outlook.com>
References: <150d439e-c90f-9252-ab12-6ba0ac99668c@Net2Edge.com>
	<7EEDF13B-E1D4-46F1-99B9-1419B69F3DD1@gmail.com>
	<DB6PR0701MB1879F74E3194F73877BCB7E0D3A30@DB6PR0701MB1879.eurprd07.prod.outlook.com>
	<391b493a-2f09-163b-a411-c56715997d0f@mlbassoc.com>
In-Reply-To: <391b493a-2f09-163b-a411-c56715997d0f@mlbassoc.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Thomas.Thorne@net2edge.com; 
x-originating-ip: [81.128.174.58]
x-ms-office365-filtering-correlation-id: 2ca4fe1d-a745-458f-31a6-08d403e09e3a
x-microsoft-exchange-diagnostics: 1; DB6PR0701MB1878;
	7:B0hOsHIcm6Y3UZZSo/FVWjT8StfKNVaL4+h7X4M2+BJJIh9uMTlz73plvVTf0xifc4PnDBonnJFGfjK9BZ50CHDOv+5G26O6AHbkHZxWguedena5jndmzGe+9uwx5MiaSe6ee31M21nrdb8ZKYXulXJC4QBZZ1Zy2fwCgOUa0XLyWbDYubTqW0SnHNWRKr98bsierfjrr3qQUQ2GgCqd8sCrkJ30hOonEa97A7n8zEJqX1jpeIdhSZN8mDi12ZP5zrEmHVjEeb6mfMH9/za8iM8QIbHTHgk2pYR8uwqbgCZK9Qli/uXhGcdoL4u4SZ4jpytZ+UgZyBASK1/1XXmrM98Y8ydc7dD5TsCPj8UHS1k=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB6PR0701MB1878;
x-microsoft-antispam-prvs: <DB6PR0701MB18782F8EC01C48B364C04068D3A30@DB6PR0701MB1878.eurprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(166708455590820);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6042046)(6043046);
	SRVR:DB6PR0701MB1878; BCL:0; PCL:0; RULEID:;
	SRVR:DB6PR0701MB1878; 
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(40764003)(199003)(189002)(3660700001)(10400500002)(66066001)(86362001)(11100500001)(586003)(6116002)(106356001)(189998001)(4326007)(3846002)(15975445007)(8936002)(33656002)(345774005)(3280700002)(81156014)(87936001)(2900100001)(81166006)(76576001)(54356999)(50986999)(76176999)(2906002)(9686002)(97736004)(5660300001)(68736007)(101416001)(7846002)(7696004)(8676002)(110136003)(122556002)(19580395003)(19580405001)(102836003)(305945005)(2950100002)(74316002)(5002640100001)(93886004)(105586002)(106116001)(92566002)(77096005)(1720100001)(6916009)(7736002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB6PR0701MB1878;
	H:DB6PR0701MB1879.eurprd07.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: net2edge.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: net2edge.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2016 11:57:42.7053 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 851184e8-8658-4a6a-973d-aa012bcc8794
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0701MB1878
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How do I used Yocto to build an sdcard image for my Raspberry Pi 3 Model B?
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
X-List-Received-Date: Thu, 03 Nov 2016 14:29:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

May have solved the issue.  Thank you for your help. =20

> What do you get from this?
>    % bitbake rpi-test-image -e | grep ^IMAGE_FSTYPES

I get:
thomasthorne@thorne-ul-dt:~/work/rpi-layer/build$ bitbake rpi-test-image -e=
 | grep ^IMAGE_FSTYPES
IMAGE_FSTYPES_DEBUGFS=3D"tar.xz ext3"
IMAGE_FSTYPES=3D"tar.xz ext3"

Presumably because I have in my local.conf:
IMAGE_FSTYPES =3D "tar.xz ext3"

If I update that to be "tar.xz ext3 sdimg" I get error messages such as:
$ bitbake rpi-test-image -e | grep ^IMAGE_FSTYPES
ERROR: /home/thomasthorne/work/yocto-rpi/meta-raspberrypi/recipes-core/imag=
es/rpi-test-image.bb: No IMAGE_CMD defined for IMAGE_FSTYPES entry 'sdimg' =
- possibly invalid type name or missing support class
ERROR: /home/thomasthorne/work/yocto-rpi/meta-raspberrypi/recipes-core/imag=
es/rpi-hwup-image.bb: No IMAGE_CMD defined for IMAGE_FSTYPES entry 'sdimg' =
- possibly invalid type name or missing support class
ERROR: /home/thomasthorne/work/yocto-rpi/meta-raspberrypi/recipes-core/imag=
es/rpi-basic-image.bb: No IMAGE_CMD defined for IMAGE_FSTYPES entry 'sdimg'=
 - possibly invalid type name or missing support class
ERROR: /home/thomasthorne/work/rpi-layer/meta-rpi/images/qt5-basic-image.bb=
: No IMAGE_CMD defined for IMAGE_FSTYPES entry 'sdimg' - possibly invalid t=
ype name or missing support class
ERROR: /home/thomasthorne/work/rpi-layer/meta-rpi/images/console-image.bb: =
No IMAGE_CMD defined for IMAGE_FSTYPES entry 'sdimg' - possibly invalid typ=
e name or missing support class
ERROR: Failed to parse recipe: /home/thomasthorne/work/yocto-rpi/meta-raspb=
errypi/recipes-core/images/rpi-hwup-image.bb
ERROR: /home/thomasthorne/work/rpi-layer/meta-rpi/images/audio-image.bb: No=
 IMAGE_CMD defined for IMAGE_FSTYPES entry 'sdimg' - possibly invalid type =
name or missing support class
ERROR: /home/thomasthorne/work/rpi-layer/meta-rpi/images/qt5-image.bb: No I=
MAGE_CMD defined for IMAGE_FSTYPES entry 'sdimg' - possibly invalid type na=
me or missing support class

> If it doesn't say (at least)
>    IMAGE_FSTYPES=3D"tar.bz2 ext3 rpi-sdimg"
> then try making those settings in your local.conf

That might help.  I seem to now get:

$ bitbake rpi-test-image -e | grep ^IMAGE_FSTYPES
IMAGE_FSTYPES_DEBUGFS=3D"tar.xz ext3 rpi-sdimg"
IMAGE_FSTYPES=3D"tar.xz ext3 rpi-sdimg"

So the system is happy with the rpi-sdimg but not sdimg on its own. =20

Now when I perform `$ bitbake rpi-test-image` I get a few warnings about li=
cense files and then the baking seems to fail with an error about "dd: fail=
ed to open '/rpi-test-image-raspberrypi3-20161103111232.rootfs.rpi-sdimg': =
Permission denied". That is documented as do_image_rpi_sdimg failed with oe=
-core in krogoth branch https://github.com/agherzan/meta-raspberrypi/issues=
/30 for the meta-raspberrypi layer.  That error is resolved on a krogoth sp=
ecific branch for the meta-raspberrypi later.  Checking out that branch ins=
tead of master allows the SD card image creation to succeed.  I can now see=
 sdimg files:

$ ls tmp/deploy/images/raspberrypi3/*.rpi-sdimg
tmp/deploy/images/raspberrypi3/rpi-test-image-raspberrypi3-20161103113408.r=
ootfs.rpi-sdimg
tmp/deploy/images/raspberrypi3/rpi-test-image-raspberrypi3.rpi-sdimg

Once again thank you for your assistance. =20

If you use the Raspberry Pi StackExchange site, please add your suggestion =
of including rpi-sdimg as an answer to http://raspberrypi.stackexchange.com=
/questions/57155/how-do-i-used-yocto-to-build-an-sdcard-image-for-my-raspbe=
rry-pi-3-model-b  If you do not use that site then I will add an answer wit=
h an attribution to you & this list later today. =20

Grateful Regards,=20

Thomas A. F. Thorne  Software Engineer  Net2Edge


