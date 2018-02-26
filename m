Return-Path: <carlos.bejar-colonia@philips.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C980E00E4C; Mon, 26 Feb 2018 13:25:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.91 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0091.outbound.protection.outlook.com [104.47.2.91])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F898E00C8E
	for <yocto@yoctoproject.org>; Mon, 26 Feb 2018 13:25:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=philips.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=weRJPZNn3LWagtPeZnrkQ/DWCsGs6qvpGm5KBdxfDEw=;
	b=anxRewXXjMx1WRvGMV6EHe7qqi9kc7lAbN4G/vCIT+smumAu41RUBGN4qjzBYqKFcmB0GdcMeuB1P1ubYvFjseADxghRDQhKeCekieQ2J0vsIJyflQ0n0p/unEva22KbbMEtteBCunN5De8HgsThykr8zMHziN/WnWUd9FyjhN8=
Received: from AM4P122MB0068.EURP122.PROD.OUTLOOK.COM (129.75.167.87) by
	AM4P122MB0066.EURP122.PROD.OUTLOOK.COM (129.75.167.85) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.527.21; Mon, 26 Feb 2018 19:53:17 +0000
Received: from AM4P122MB0068.EURP122.PROD.OUTLOOK.COM
	([fe80::5b5:9473:2863:a17f]) by AM4P122MB0068.EURP122.PROD.OUTLOOK.COM
	([fe80::5b5:9473:2863:a17f%17]) with mapi id 15.20.0527.021;
	Mon, 26 Feb 2018 19:53:17 +0000
From: "Bejar-Colonia, Carlos" <carlos.bejar-colonia@philips.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to pass volume size to ubinize when building ubi file system
Thread-Index: AdOvOzMavCqx7VFcTvyjkfGwhytBpg==
Date: Mon, 26 Feb 2018 19:53:17 +0000
Message-ID: <AM4P122MB00688133D84E316B9F5C86CAD6C10@AM4P122MB0068.EURP122.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=carlos.bejar-colonia@philips.com; 
x-originating-ip: [192.101.81.235]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM4P122MB0066;
	7:JzsePPlOTEqLgWv7Vt4/lgGi4R7Z1aPUnLEBkrRBaBRoYGJPgoES4o063yMkPZKoO1uO149mffT48et0pPob1BIOlqezyZwYvj59gucwJp3QI9eFPOBEGgGlVOdiiVr3TX9kz4RFAMwYVbBKZEm2p+NeeO0dMXGi7xpL0MxKYfM9nu3tQmD06EYob+SybE5pFh/dEAjhSNF3SA3kEeUZ6wPZ9Dqtmb9NiAeiKc5q7GERcpEhDsHLviWxq8G8UM2z
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a7b1f8a4-86d0-4ca3-22cd-08d57d52946e
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(4534165)(4627221)(201703031133081)(201702281549075)(48565401081)(5600026)(4604075)(3008032)(2017052603307)(7153060)(7193020);
	SRVR:AM4P122MB0066; 
x-ms-traffictypediagnostic: AM4P122MB0066:
x-microsoft-antispam-prvs: <AM4P122MB00662CC2C5A7D26C9840B2D7D6C10@AM4P122MB0066.EURP122.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(28532068793085)(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040501)(2401047)(8121501046)(5005006)(93006095)(93001095)(3002001)(10201501046)(3231220)(944501161)(52105095)(6055026)(6041288)(20161123558120)(20161123562045)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(6072148)(201708071742011);
	SRVR:AM4P122MB0066; BCL:0; PCL:0; RULEID:; SRVR:AM4P122MB0066; 
x-forefront-prvs: 05954A7C45
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(376002)(366004)(39860400002)(39380400002)(346002)(199004)(189003)(55904004)(374574003)(186003)(25786009)(8676002)(5640700003)(55016002)(478600001)(6436002)(68736007)(316002)(59450400001)(86362001)(54896002)(81156014)(6306002)(7696005)(1730700003)(81166006)(8936002)(53936002)(97736004)(9686003)(14454004)(99286004)(2906002)(3280700002)(5630700001)(33656002)(66066001)(26005)(5660300001)(6116002)(3846002)(74316002)(790700001)(7736002)(6506007)(105586002)(2501003)(102836004)(6916009)(2351001)(106356001)(2900100001)(3660700001)(5250100002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM4P122MB0066;
	H:AM4P122MB0068.EURP122.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: philips.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: sqKnjux7Pnii+VsQt5SpmA96m3Q02+H6fvv+Im8gzH0YZGrRdyHsS11ZyBj/YLJoqf2qZRb1GKsUEsnOOdlhoWs0IGUVpt4gq78Yg0IjfPH6goipL1cxkzwMuBl5SV0AxHA3LRP43BsilBVY/V1DWvWohlTx6qA6t3QVoGn7ehw=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: philips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7b1f8a4-86d0-4ca3-22cd-08d57d52946e
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2018 19:53:17.3048 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1a407a2d-7675-4d17-8692-b3ac285306e4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4P122MB0066
Subject: How to pass volume size to ubinize when building ubi file system
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
X-List-Received-Date: Mon, 26 Feb 2018 21:25:26 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM4P122MB00688133D84E316B9F5C86CAD6C10AM4P122MB0068EURP_"

--_000_AM4P122MB00688133D84E316B9F5C86CAD6C10AM4P122MB0068EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Yocto Team,

I need to set the "vol_size" used by ubinize, when building a ubi filesyste=
m.
Looks like, by default, Yocto doesn't set the vol_size during the build.

Only these params are set in poky/meta/classes/image_types.bbclass

        echo vol_id=3D0 >> ubinize${vname}-${IMAGE_NAME}.cfg
        echo vol_type=3Ddynamic >> ubinize${vname}-${IMAGE_NAME}.cfg
        echo vol_name=3D${UBI_VOLNAME} >> ubinize${vname}-${IMAGE_NAME}.cfg
        echo vol_flags=3Dautoresize >> ubinize${vname}-${IMAGE_NAME}.cfg
        mkfs.ubifs -r ${IMAGE_ROOTFS} -o ${IMGDEPLOYDIR}/${IMAGE_NAME}${vna=
me}${IMAGE_NAME_SUFFIX}.ubifs ${mkubifs_args}

Is there a way to set the vol_size without modifying image_types.bbclass?

Thanks,
Carlos

________________________________
The information contained in this message may be confidential and legally p=
rotected under applicable law. The message is intended solely for the addre=
ssee(s). If you are not the intended recipient, you are hereby notified tha=
t any use, forwarding, dissemination, or reproduction of this message is st=
rictly prohibited and may be unlawful. If you are not the intended recipien=
t, please contact the sender by return e-mail and destroy all copies of the=
 original message.

--_000_AM4P122MB00688133D84E316B9F5C86CAD6C10AM4P122MB0068EURP_
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
<p class=3D"MsoNormal">Hello Yocto Team,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I need to set the &quot;vol_size&quot; used by ubini=
ze, when building a ubi filesystem.<o:p></o:p></p>
<p class=3D"MsoNormal">Looks like, by default, Yocto doesn't set the vol_si=
ze during the build.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Only these params are set in poky/meta/classes/image=
_types.bbclass<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo vol_=
id=3D0 &gt;&gt; ubinize${vname}-${IMAGE_NAME}.cfg<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo vol_=
type=3Ddynamic &gt;&gt; ubinize${vname}-${IMAGE_NAME}.cfg<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo vol_=
name=3D${UBI_VOLNAME} &gt;&gt; ubinize${vname}-${IMAGE_NAME}.cfg<o:p></o:p>=
</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo vol_=
flags=3Dautoresize &gt;&gt; ubinize${vname}-${IMAGE_NAME}.cfg<o:p></o:p></p=
>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mkfs.ubif=
s -r ${IMAGE_ROOTFS} -o ${IMGDEPLOYDIR}/${IMAGE_NAME}${vname}${IMAGE_NAME_S=
UFFIX}.ubifs ${mkubifs_args}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there a way to set the vol_size without modifying=
 image_types.bbclass?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Carlos<o:p></o:p></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1">The information contained in=
 this message may be confidential and legally protected under applicable la=
w. The message is intended solely for the addressee(s). If you are not the =
intended recipient, you are hereby notified
 that any use, forwarding, dissemination, or reproduction of this message i=
s strictly prohibited and may be unlawful. If you are not the intended reci=
pient, please contact the sender by return e-mail and destroy all copies of=
 the original message.<br>
</font>
</body>
</html>

--_000_AM4P122MB00688133D84E316B9F5C86CAD6C10AM4P122MB0068EURP_--
