Return-Path: <don.schoppe@connecteddev.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1FD2E00C87; Wed,  3 Jul 2019 12:52:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.79.139 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-eopbgr790139.outbound.protection.outlook.com [40.107.79.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B28A7E00BF7
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2019 12:52:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=connecteddev.onmicrosoft.com; s=selector1-connecteddev-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=5pGZbBlmARP8mEp8dFI2LngN+zVEfMQsxarE/ZFMtFk=;
	b=q56NnNL5lw8neBlcCUMND0U0WTtOkE9ZNoT1VsS3SNV8VvsxFmCwswa8Z+8d53CA41gugVHRwg5CGaZdtMz5oKsJ042ldkqqefqKTiVamhp1mzBZbvszga4rXxSFDDFk+IST8tUiwnHOlgGiRZ36ZjZ8rQ3tNUnnzfW3uK3QPTA=
Received: from BN6PR17MB1252.namprd17.prod.outlook.com (10.173.236.138) by
	BN6PR17MB1458.namprd17.prod.outlook.com (10.175.194.18) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2032.18; Wed, 3 Jul 2019 19:52:39 +0000
Received: from BN6PR17MB1252.namprd17.prod.outlook.com
	([fe80::e43e:8bad:8f97:b36c]) by
	BN6PR17MB1252.namprd17.prod.outlook.com
	([fe80::e43e:8bad:8f97:b36c%7]) with mapi id 15.20.2052.010;
	Wed, 3 Jul 2019 19:52:39 +0000
From: Don Schoppe <don.schoppe@connecteddev.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Building .wic with luks encrypted rootfs
Thread-Index: AdUx1uzZQUn5JkkCRMSJuVBwjADMCA==
Date: Wed, 3 Jul 2019 19:52:38 +0000
Message-ID: <BN6PR17MB1252A92618EFF415CFBB1D1084FB0@BN6PR17MB1252.namprd17.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=don.schoppe@connecteddev.com; 
x-originating-ip: [174.99.222.202]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1ae519c1-4089-4a11-513e-08d6fff000e9
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
	SRVR:BN6PR17MB1458; 
x-ms-traffictypediagnostic: BN6PR17MB1458:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <BN6PR17MB1458A98BB71934530F571FEA84FB0@BN6PR17MB1458.namprd17.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00872B689F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(346002)(39830400003)(376002)(366004)(136003)(189003)(199004)(51874003)(55016002)(508600001)(6306002)(3846002)(44832011)(25786009)(486006)(9686003)(54896002)(2906002)(256004)(6116002)(66066001)(14444005)(476003)(5640700003)(68736007)(9326002)(5660300002)(6436002)(52536014)(790700001)(1730700003)(81166006)(81156014)(6506007)(14454004)(186003)(26005)(33656002)(76116006)(73956011)(66556008)(66446008)(71200400001)(64756008)(66476007)(71190400001)(66946007)(86362001)(102836004)(2351001)(99286004)(7696005)(74316002)(7736002)(8676002)(2501003)(8936002)(53936002)(6916009)(316002)(142923001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR17MB1458;
	H:BN6PR17MB1252.namprd17.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: connecteddev.com does not
	designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: eiORmia6yD9Vg9MaRl/qxsI2THEEzuwpXUw6jFz0av+xS5FdJFGGyWSRNycgHfYDgl9g2PV1OmYEXIK4NwoWN5w1UYEQIs1BRi+ojZSFUg3VLLdLmDirKxTjOtGpqV8Ehn355jVYPdXfQC9iV1Sx4LUpGEtGO5Aa9QBkmE+cC3HSXH9MDEnvItTk+or1MavOxQx+kCRi9lNwZtkXyXe+htAWvHACjehBpF6FEnr7eFhytTCemd78OhNx1UEu7YZ73z0naNd8TSeJ6F8gbQCu4kCevv+f+kTw5T77LvjT56co0YQ4uTpY4B+R6+VU0ImpEKy8JLisCUnb0jxA30i4CZySHpUBFD1Zy+tjpnj1lExW+T0zCFWqPht0ozoTX7BGW2BkWDHJ/JMo9KJNL7Z51SDk76IDqcPj03Ph4Te0HBo=
MIME-Version: 1.0
X-OriginatorOrg: connecteddev.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ae519c1-4089-4a11-513e-08d6fff000e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2019 19:52:39.0019 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bc3620fa-cd13-4c3a-91ad-fdac8e256a00
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: don.schoppe@connecteddev.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR17MB1458
Subject: Building .wic with luks encrypted rootfs
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
X-List-Received-Date: Wed, 03 Jul 2019 19:52:43 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN6PR17MB1252A92618EFF415CFBB1D1084FB0BN6PR17MB1252namp_"

--_000_BN6PR17MB1252A92618EFF415CFBB1D1084FB0BN6PR17MB1252namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

We would like to use a luks encrypted rootfs with the SAMA5D2. We've includ=
ed meta-encrypted-storage (https://github.com/jiazhang0/meta-secure-core/tr=
ee/master/meta-encrypted-storage) in our Yocto configuration. This leverage=
s an initramfs with cryptsetup and init scripts to unlock and mount an encr=
ypted rootfs during boot.

The issue we have is not knowing how to automatically build the encrypted r=
ootfs and package it into the .wic file during the Yocto build process. Tod=
ay our Yocto build produces a .wic with a boot partition and a plain rootfs=
 which is then flashed to eMMC. We would like to replace the plain rootfs i=
n the .wic with an encrypted one.

The basic steps to create a luks encrypted file system look something like =
this:

cryptsetup luksFormat /dev/mmcblkxxx keyfile cryptroot
cryptsetup luksOpen -d keyfile /dev/mmcblkxxx cryptroot
mkfs.ext4 /dev/mapper/cryptroot
mount  /dev/mapper/cryptroot /mnt/cryptroot
cp -ax /mnt/path-to-rootfs/* /mnt/cryptroot  # populate luks encrypted part=
ition
unmount /mnt/crtyproot
cryptsetup luksClose cryptroot

Where would we incorporate this into the BB recipes? Or is this a case wher=
e we would need to make changes / extension so the WIC scripts and/or plugi=
ns?

Thanks in advance for any suggestions.

Regards,
Don

--_000_BN6PR17MB1252A92618EFF415CFBB1D1084FB0BN6PR17MB1252namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We would like to use a luks encrypted rootfs with th=
e SAMA5D2. We've included meta-encrypted-storage (https://github.com/jiazha=
ng0/meta-secure-core/tree/master/meta-encrypted-storage) in our Yocto confi=
guration. This leverages an initramfs
 with cryptsetup and init scripts to unlock and mount an encrypted rootfs d=
uring boot.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The issue we have is not knowing how to automaticall=
y build the encrypted rootfs and package it into the .wic file during the Y=
octo build process. Today our Yocto build produces a .wic with a boot parti=
tion and a plain rootfs which is then
 flashed to eMMC. We would like to replace the plain rootfs in the .wic wit=
h an encrypted one.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The basic steps to create a luks encrypted file syst=
em look something like this:
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">cryptsetup luksFormat /de=
v/mmcblkxxx keyfile cryptroot<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">cryptsetup luksOpen -d ke=
yfile /dev/mmcblkxxx cryptroot<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">mkfs.ext4 /dev/mapper/cry=
ptroot <o:p>
</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">mount&nbsp; /dev/mapper/c=
ryptroot /mnt/cryptroot<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">cp -ax /mnt/path-to-rootf=
s/* /mnt/cryptroot&nbsp; # populate luks encrypted partition<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">unmount /mnt/crtyproot<o:=
p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">cryptsetup luksClose cryp=
troot<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Where would we incorporate this into the BB recipes?=
 Or is this a case where we would need to make changes / extension so the W=
IC scripts and/or plugins?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks in advance for any suggestions. <o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Don<o:p></o:p></p>
</div>
</body>
</html>

--_000_BN6PR17MB1252A92618EFF415CFBB1D1084FB0BN6PR17MB1252namp_--
