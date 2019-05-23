Return-Path: <harish.tg@aptiv.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05337E00994; Thu, 23 May 2019 06:08:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [69.195.251.241 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
X-Greylist: delayed 500 seconds by postgrey-1.32 at yocto-www;
	Thu, 23 May 2019 06:07:58 PDT
Received: from usflmia-meg1.delphi.com (usflmia-meg1.delphi.com
	[69.195.251.241])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82795E00951
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 06:07:58 -0700 (PDT)
Received: from 10492-US-DLP003.delphiauto.net (unknown [10.201.250.15]) by
	usflmia-meg1.delphi.com with smtp
	id 571a_89da_30d57b42_8ea7_4219_b138_a273287d5087;
	Thu, 23 May 2019 08:56:55 -0400
Received: from usflmia-gw2.delphi.com ([10.192.117.25])
	by 10492-US-DLP003.delphiauto.net (8.13.8/8.13.8) with ESMTP id
	x4NCxaIb030865
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 08:59:37 -0400
Received: from mx0a-00275a01.pphosted.com (mx0a-00275a01.pphosted.com
	[148.163.157.133]) by usflmia-gw2.delphi.com with smtp
	(TLS: TLSv1/SSLv3,256bits,ECDHE-RSA-AES256-GCM-SHA384)
	id 1d94_f746_09f0a118_95a9_47f5_9e66_da0fd37b2939;
	Thu, 23 May 2019 08:56:54 -0400
Received: from pps.filterd (m0121501.ppops.net [127.0.0.1])
	by mx0a-00275a01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
	x4NCtkSI012355
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 08:59:35 -0400
Received: from nam03-by2-obe.outbound.protection.outlook.com
	(mail-by2nam03lp2055.outbound.protection.outlook.com [104.47.42.55])
	by mx0a-00275a01.pphosted.com with ESMTP id 2snu58ravp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 08:59:35 -0400
Received: from BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM (129.75.106.24) by
	BN6P197MB0052.NAMP197.PROD.OUTLOOK.COM (129.75.106.27) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1900.18; Thu, 23 May 2019 12:59:34 +0000
Received: from BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM
	([fe80::6c86:e18e:fac4:6bf5]) by BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM
	([fe80::6c86:e18e:fac4:6bf5%8]) with mapi id 15.20.1900.020;
	Thu, 23 May 2019 12:59:34 +0000
From: "Tg, Harish" <harish.tg@aptiv.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: EXT SENDER - yocto Digest, Vol 104, Issue 95
Thread-Index: AQHVEKJktXx0yxcK9kKNv1vrSBjDyKZ4rPPg
Date: Thu, 23 May 2019 12:59:34 +0000
Message-ID: <BN6P197MB004909BFF82584B53EF5DF24FB010@BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM>
References: <mailman.14370.1558531613.2881.yocto@yoctoproject.org>
In-Reply-To: <mailman.14370.1558531613.2881.yocto@yoctoproject.org>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [1.6.70.242]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 15890c28-4cc5-4738-e111-08d6df7e8114
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
	SRVR:BN6P197MB0052; 
x-ms-traffictypediagnostic: BN6P197MB0052:
x-ms-exchange-purlcount: 6
x-microsoft-antispam-prvs: <BN6P197MB0052BF0BB78BB2CB392DDE1BFB010@BN6P197MB0052.NAMP197.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(366004)(376002)(136003)(39840400004)(396003)(346002)(27574002)(10533003)(13464003)(18543002)(199004)(189003)(86362001)(2351001)(9686003)(6306002)(6246003)(66066001)(2501003)(53936002)(5640700003)(7736002)(305945005)(55016002)(74316002)(486006)(476003)(25786009)(446003)(81156014)(8676002)(68736007)(316002)(8936002)(6436002)(33656002)(1730700003)(81166006)(52536014)(229853002)(76116006)(73956011)(66946007)(66476007)(66556008)(64756008)(66446008)(71190400001)(71200400001)(6916009)(186003)(5660300002)(99286004)(6506007)(102836004)(26005)(53546011)(7696005)(14444005)(256004)(5024004)(966005)(478600001)(76176011)(11346002)(14454004)(2906002)(6116002)(3846002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN6P197MB0052;
	H:BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: aptiv.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: a2MGQIiAHQ+JPAdjknGPiQAu9Dfu5eifECLymNUG+zTigGkYowmOVt6UD2Ds+PHTcFOzURqDDSrYlWcVFT9iyoWFbTDg2TFIKClFo/SxW2N08vslNSJTaRv6dbErVABbf4fn6YJ1ajlIG9YENnPqy5I37ievvHir4+RZMJn2OTTiVUQiMPR5P5vNYeCzYW7e1M0XDebnEvCbAy2BXUqi0InLiYcU6xRKamM1SGPm5mA1hc+grnFY35jEPFR2roIKb++eIegwF/vuNGWBG9ZTgI7PU4IaLaWVGdigUh+0cAiCXpUGnl5aFlnZTM+WENSAgRFfzHbwZQhv1sCrV7q9brYzNcWS4Sx6nRrxmblsynNIIuqFnxIHmVAfVzhMM749aNF/J5VM7aQzbadzajblO8adHf64nNhfwiNgdQatk9s=
MIME-Version: 1.0
X-OriginatorOrg: aptiv.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15890c28-4cc5-4738-e111-08d6df7e8114
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 12:59:34.3405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6b1311e5-123f-49db-acdf-8847c2d00bed
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6P197MB0052
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-05-23_11:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1810050000 definitions=main-1905230091
X-RCIS-Action: ALLOW
X-MEG-POLICY: ALLOW
Subject: Re: EXT SENDER - yocto Digest, Vol 104, Issue 95
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
X-List-Received-Date: Thu, 23 May 2019 13:08:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
     I have a question. How to add commands like "ubiattach" to /usr/bin of=
 rootfs image. I struggling with the recipes. I do not want to write my own=
 recipe but I need to edit some recipe and add the command. Which is the pl=
ace? I am using yocto for my project on TI platform and Linux.
Kindly help.


Thanks,
Harish.

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of yocto-request@yoctoproject.org
Sent: Wednesday, May 22, 2019 6:57 PM
To: yocto@yoctoproject.org
Subject: EXT SENDER - yocto Digest, Vol 104, Issue 95

Send yocto mailing list submissions to
	yocto@yoctoproject.org

To subscribe or unsubscribe via the World Wide Web, visit
	https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject.=
org_listinfo_yocto&d=3DDwICAg&c=3DQM_z7khAIdagwHt-12JlKA&r=3D4dfUpqj68eYAfV=
Js5uk2XkolcOQysOP5VncSFx6bkao&m=3DswLBJyRzgqx-Ix1dnv04ZhN6a_WVQSmQSW5YYLg3h=
40&s=3Da4sSVLnzzAP3ZRYs01WvSaiSc9QQmfaT7zdBRe0HcwM&e=3D
or, via email, send a message with subject or body 'help' to
	yocto-request@yoctoproject.org

You can reach the person managing the list at
	yocto-owner@yoctoproject.org

When replying, please edit your Subject line so it is more specific than "R=
e: Contents of yocto digest..."


Today's Topics:

   1. GPLv3 package present in rootfs (virendra kumar thakur)
   2. Building single package as image, respecting dependencies
      (Norman Stetter)


----------------------------------------------------------------------

Message: 1
Date: Wed, 22 May 2019 18:55:45 +0530
From: virendra kumar thakur <coolveer07@gmail.com>
To: yocto@yoctoproject.org
Subject: [yocto] GPLv3 package present in rootfs
Message-ID:
	<CANGFfGamnoJ-YB=3Dm7cvN4XBWieY8V53s+pRfg00e1-AwwqztBg@mail.gmail.com>
Content-Type: text/plain; charset=3D"utf-8"

Hello team,

I want to remove some GPLv3 package from rootfs, but it is still present.

I am using INCOMPATIBLE_LICENSE =3D "GPL-3.0 LGPL-3.0 AGPL-3. 0"

still some package gnutls, libidn2, libassuan, are added into rootfs.
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.yoctoproj=
ect.org_pipermail_yocto_attachments_20190522_fb9ebe67_attachment-2D0001.htm=
l&d=3DDwICAg&c=3DQM_z7khAIdagwHt-12JlKA&r=3D4dfUpqj68eYAfVJs5uk2XkolcOQysOP=
5VncSFx6bkao&m=3DswLBJyRzgqx-Ix1dnv04ZhN6a_WVQSmQSW5YYLg3h40&s=3DBBPanVhjmd=
OQaYXZFeb4RWi9MdRpGYBFLmqihDeSAds&e=3D>

------------------------------

Message: 2
Date: Wed, 22 May 2019 12:36:18 +0000
From: Norman Stetter <Norman.Stetter@garz-fricke.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [yocto] Building single package as image, respecting
	dependencies
Message-ID:
	<A24DC035FE5F8F4BAE7F63FB1B07D7BC5327B1@SRV24.hamburg.garz-fricke.de>
Content-Type: text/plain; charset=3D"iso-8859-1"

Hi there,

I am currently working on a minimal CLI only system.
The image is based on 'core-image-base' using sysvinit and busybox.
To reduce image size and boot time, I removed as many packages as possible.=
 For some application cases I will need python3 though.
My idea was to have python3 as some kind of add-on in a squashfs image, tha=
t can be mounted only when needed.

So I tried to build an image only containing the python3 package, but as li=
ttle as possible otherwise, like this:

inherit image
IMAGE_FSTYPES =3D "squashfs-xz"
DEFAULT_TASK_PROVIDER =3D ""
DISTRO_EXTRA_RDEPENDS =3D ""
DISTRO_FEATURES =3D ""
POKY_DEFAULT_EXTRA_RDEPENDS =3D ""
IMAGE_FEATURES =3D ""
IMAGE_LINGUAS =3D ""
CORE_IMAGE_BASE_INSTALL =3D ""
RDEPENDS_${PN} =3D ""
PACKAGE_EXCLUDE =3D "busybox openssl run-postinsts update-rc.d"
VIRTUAL-RUNTIME_dev_manager =3D ""
VIRTUAL-RUNTIME_login_manager =3D ""
VIRTUAL-RUNTIME_init_manager =3D ""
VIRTUAL-RUNTIME_initscripts =3D ""
VIRTUAL-RUNTIME_keymaps =3D ""
VIRTUAL-RUNTIME_base-utils =3D ""
PREFERRED_PROVIDER_virtual/base-utils =3D ""

IMAGE_INSTALL =3D "python3"

But like this I can only manually exclude packages I already have in my mai=
n OS image. Some packages can't be excluded at all, as python3 depends on t=
hem and won't build if they are excluded.

Is there a way to have dependencies between images? So I could have the pyt=
hon-image build know which dependencies are already built into my OS image =
and therefore not include them itself?

Or would it be better to avoid building a second image and rather build 'py=
thon3' with my OS-image, adding it to PACKAGE_EXCLUDE and from within this =
build process pack all python3 files into an image? If I were to pursue thi=
s method, any suggestions on how to separate the python3 files from the res=
t of my rootfs, including the necessary dependencies?

Any advice and idea is much appreciated.

Mit freundlichen Gr??en / Best regards
Norman Stetter
SW ENWICKLUNG EMBEDDED SYSTEMS
Garz & Fricke GmbH

21079 Hamburg
Direct: +49 40 791899 - 477
Fax: +49 40 791899 - 39
Norman.Stetter@garz-fricke.com
https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__www.garz-2Dfricke.com=
&d=3DDwICAg&c=3DQM_z7khAIdagwHt-12JlKA&r=3D4dfUpqj68eYAfVJs5uk2XkolcOQysOP5=
VncSFx6bkao&m=3DswLBJyRzgqx-Ix1dnv04ZhN6a_WVQSmQSW5YYLg3h40&s=3Dfl8zX_T74tP=
17S2Md1xvMmXVmWrPLjwZO929euOi-f4&e=3D<https://urldefense.proofpoint.com/v2/=
url?u=3Dhttp-3A__www.garz-2Dfricke.com_&d=3DDwICAg&c=3DQM_z7khAIdagwHt-12Jl=
KA&r=3D4dfUpqj68eYAfVJs5uk2XkolcOQysOP5VncSFx6bkao&m=3DswLBJyRzgqx-Ix1dnv04=
ZhN6a_WVQSmQSW5YYLg3h40&s=3DjJytG_UXo6f8Dg1w9Rx7ZBrPvaIZd6dT0SEaTMhqRpw&e=
=3D>
WE MAKE IT YOURS!
[cid:image001.jpg@01D510A9.7F9CD640]
Sitz der Gesellschaft: D-21079 Hamburg
Registergericht: Amtsgericht Hamburg, HRB 60514
Gesch?ftsf?hrer: Matthias Fricke, Manfred Garz, Marc-Michael Braun

-------------- next part --------------
An HTML attachment was scrubbed...
URL: <https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.yoctoproj=
ect.org_pipermail_yocto_attachments_20190522_063fd326_attachment.html&d=3DD=
wICAg&c=3DQM_z7khAIdagwHt-12JlKA&r=3D4dfUpqj68eYAfVJs5uk2XkolcOQysOP5VncSFx=
6bkao&m=3DswLBJyRzgqx-Ix1dnv04ZhN6a_WVQSmQSW5YYLg3h40&s=3DnJpIij2wJ-ToI13ns=
1riHcQrZ9SCYkkyh-eRg-FKydE&e=3D>
-------------- next part --------------
A non-text attachment was scrubbed...
Name: image001.jpg
Type: image/jpeg
Size: 14804 bytes
Desc: image001.jpg
URL: <https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.yoctoproj=
ect.org_pipermail_yocto_attachments_20190522_063fd326_attachment.jpg&d=3DDw=
ICAg&c=3DQM_z7khAIdagwHt-12JlKA&r=3D4dfUpqj68eYAfVJs5uk2XkolcOQysOP5VncSFx6=
bkao&m=3DswLBJyRzgqx-Ix1dnv04ZhN6a_WVQSmQSW5YYLg3h40&s=3DuyxqA24JcBr0zBhHwT=
fA8XtqX5ObrRkNMFNlD3Htpos&e=3D>

------------------------------

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject.o=
rg_listinfo_yocto&d=3DDwICAg&c=3DQM_z7khAIdagwHt-12JlKA&r=3D4dfUpqj68eYAfVJ=
s5uk2XkolcOQysOP5VncSFx6bkao&m=3DswLBJyRzgqx-Ix1dnv04ZhN6a_WVQSmQSW5YYLg3h4=
0&s=3Da4sSVLnzzAP3ZRYs01WvSaiSc9QQmfaT7zdBRe0HcwM&e=3D


End of yocto Digest, Vol 104, Issue 95
**************************************

