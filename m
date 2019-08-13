Return-Path: <harish.tg@aptiv.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36B9AE00D98; Tue, 13 Aug 2019 02:59:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [69.195.251.241 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from usflmia-meg1.delphi.com (usflmia-meg1.delphi.com
	[69.195.251.241])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2ABBFE00D59
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 02:59:46 -0700 (PDT)
Received: from 10492-US-DLP001.delphiauto.net (unknown [10.201.250.13]) by
	usflmia-meg1.delphi.com with smtp
	id 3d90_3462_5e89166b_d1b8_4cda_a33f_94d9800cbd60;
	Tue, 13 Aug 2019 05:59:45 -0400
Received: from usflmia-gw2.delphi.com ([10.192.117.25])
	by 10492-US-DLP001.delphiauto.net (8.13.8/8.13.8) with ESMTP id
	x7D9xjR2030637
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 05:59:45 -0400
Received: from mx0a-00275a01.pphosted.com (mx0a-00275a01.pphosted.com
	[148.163.157.133]) by usflmia-gw2.delphi.com with smtp
	(TLS: TLSv1/SSLv3,256bits,ECDHE-RSA-AES256-GCM-SHA384)
	id 3b4d_82b9_befbb76f_7dc9_4065_9099_9dcbbdff02a8;
	Tue, 13 Aug 2019 05:59:44 -0400
Received: from pps.filterd (m0109022.ppops.net [127.0.0.1])
	by mx0a-00275a01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
	x7D9thNW018179
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 09:59:44 GMT
Received: from nam04-bn3-obe.outbound.protection.outlook.com
	(mail-bn3nam04lp2051.outbound.protection.outlook.com [104.47.46.51])
	by mx0a-00275a01.pphosted.com with ESMTP id 2ubr0c8fsc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 09:59:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=Hhu2eJNaR3yRVCnJpspaJVZfgILP+RLPucMVnHaYDDPr60S3Dy77EDBVQTMhPUIrRm5v8/6TQpDsC1DPk3PGyggyKagbGyXMLDXpMtf+enK71/9pjmhZOjTyujMM7ppRndT0o0r7c3Rb3ClEIypZWKw/4lFIalIdzzfFMi1a5VXoRwfxBsFK6bbeE2FQkf1UBfI+t2Boea8YioaB62nyhzt4YnuhIkf38bsVaJkSVSwSSz0Y7HuFduVCYtgDT2fbJH+XwpGjFK0pRc0NwsQ5yxNinD9bgQBWnSrGB2ccfZNnxqjB3veYC9QOI1J07hkUmosomwzB80ljVzP/qf4/Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=iWPbl2MtjWop1njOvvrp4+P8+Hno/2CJO8TVhsgd44o=;
	b=dNls2iVBK+Q6VrLcGo63S26cXeljBnGO6YgD//JJ0szMqH9XPu5fKFieL+Cs4fefL3QI4B+C7RkyusWmAYq2D3Fm567rktUF+jsIe/ctj7G5zWDHv4tDoV6nSZ6FE/c+5staNYa0TlB9aIqjv2yJo+82eHZbS37OgKM+flB4Z8qiFpnPXkF/hUPHM2vJzKMIQVdwANWYXjt4zwcWyocvjPoqRCetZQHKEKC6mfG5ZwrTheOkPnjTOMNahmkO0sDkNk8rF0llDTy5fhYlhpVgbhlJ1d2Sk0o9xZKHqZZo36DLY/XEdgR/bxm7NagCDF3+iRBIet/pNiA5CJbIKTeZnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=aptiv.com; dmarc=pass action=none header.from=aptiv.com; 
	dkim=pass header.d=aptiv.com; arc=none
Received: from CY4P197MB0038.NAMP197.PROD.OUTLOOK.COM (129.75.105.85) by
	CY4P197MB0037.NAMP197.PROD.OUTLOOK.COM (129.75.105.84) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2157.23; Tue, 13 Aug 2019 09:59:42 +0000
Received: from CY4P197MB0038.NAMP197.PROD.OUTLOOK.COM
	([fe80::a050:56d:7a46:c6f3]) by CY4P197MB0038.NAMP197.PROD.OUTLOOK.COM
	([fe80::a050:56d:7a46:c6f3%12]) with mapi id 15.20.2157.022;
	Tue, 13 Aug 2019 09:59:42 +0000
From: "Tg, Harish" <harish.tg@aptiv.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: please help on compiling my kernel
Thread-Index: AdVRvYkWSBb8lJGQRyGX6ib2lmR6tQ==
Date: Tue, 13 Aug 2019 09:59:42 +0000
Message-ID: <CY4P197MB0038F07389371519B604F466FBD20@CY4P197MB0038.NAMP197.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [1.6.70.242]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fc05efd1-07b9-4ae0-6815-08d71fd4f658
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
	SRVR:CY4P197MB0037; 
x-ms-traffictypediagnostic: CY4P197MB0037:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <CY4P197MB003722C56A3EEFD09D2C1CDEFBD20@CY4P197MB0037.NAMP197.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01283822F8
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(366004)(346002)(376002)(39860400002)(396003)(136003)(189003)(199004)(476003)(790700001)(6116002)(55016002)(7696005)(52536014)(99286004)(7736002)(71200400001)(2501003)(71190400001)(3846002)(6916009)(74316002)(486006)(25786009)(14454004)(5640700003)(478600001)(6306002)(14444005)(256004)(9686003)(54896002)(86362001)(53936002)(6506007)(26005)(6436002)(102836004)(66066001)(2906002)(8676002)(1730700003)(33656002)(9326002)(8936002)(5660300002)(2351001)(66476007)(64756008)(66946007)(81156014)(66446008)(186003)(66556008)(76116006)(81166006)(316002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY4P197MB0037;
	H:CY4P197MB0038.NAMP197.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: aptiv.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SoIhSgyUYB2x3eL1c7nqyM2iXNccuDEPHwu2+TyJPylGyuRjdru48u9iVf+yLzevqDpj2awRj0HI4mMnMWcbbeWPKyj/B+IYwqDNlSq35V1D6oAAJOBOaDUUDEwSAz4e1pQVOOP2GDp2thLzSbwozOhx8qHAm1Yt+DQsIygzxIsuLZ+Kiq3SGPZvji979AUcDcGCVHgFo5xY1nK3lyz4AFNZh4IQe6fhT1tR8M7OKaZW9J9xpaQIQt9y8wzuSZirXtSs12++eK2CgV9gZVR6LfLpm6bpZSTnBUxXpYtbuX+a7WWJOd6wgK8yElkyLLfMbivw99pRsroPg6DS55ASI5ocxc0uKvb3oVEq6qrKQD3FDE+Xu5iTd/Q5TZOfVvV4DHn0/3B4U6IXVKch11aJYFHUVv5gx6gkHEByDneLcqI=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: aptiv.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc05efd1-07b9-4ae0-6815-08d71fd4f658
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2019 09:59:42.1571 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6b1311e5-123f-49db-acdf-8847c2d00bed
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +LE/VW3xrKM9s+7N4OlwpH8jcQNjlkgjVBrpPXmSNfekmyPL2UjHFOpX1y5gSex5emH3NYuagZ42IG9qk4uHjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4P197MB0037
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-08-13_04:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=676 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1906280000 definitions=main-1908130107
X-RCIS-Action: ALLOW
X-MEG-POLICY: ALLOW
Subject: please help on compiling my kernel
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
X-List-Received-Date: Tue, 13 Aug 2019 09:59:49 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4P197MB0038F07389371519B604F466FBD20CY4P197MB0038NAMP_"

--_000_CY4P197MB0038F07389371519B604F466FBD20CY4P197MB0038NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Guys,
                 I am facing a strange issue which was working/compiling ea=
rlier. I did a clean and retried. Now I am getting this error with the comm=
and "bitbake -c compile -f linux-ti-staging":

WARNING: linux-ti-staging-4.4.45+gitAUTOINC+89944627d5-r1a.arago5 do_fetch:=
 Failed to fetch URL git://git.omapzoom.org/kernel/omap;protocol=3Dgit;bran=
ch=3Dp-ti-lsk-linux-4.4.y-next, attempting MIRRORS if available
ERROR: linux-ti-staging-4.4.45+gitAUTOINC+89944627d5-r1a.arago5 do_fetch: F=
etcher failure: Fetch command failed with exit code 128, output:
fatal: Not a git repository (or any parent up to mount point /mnt/yocto)
Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYSTEM not set).

ERROR: linux-ti-staging-4.4.45+gitAUTOINC+89944627d5-r1a.arago5 do_fetch: F=
unction failed: Fetcher failure for URL: 'git://git.omapzoom.org/kernel/oma=
p;protocol=3Dgit;branch=3Dp-ti-lsk-linux-4.4.y-next'. Unable to fetch URL f=
rom any source.
ERROR: Logfile of failure stored in: /mnt/yocto/yocto_repo/build/arago-tmp-=
external-linaro-toolchain/work/delphi_jlr_isp_proto-linux-gnueabi/linux-ti-=
staging/4.4.45+gitAUTOINC+89944627d5-r1a.arago5/temp/log.do_fetch.102021
ERROR: Task 2 (/mnt/yocto/yocto_repo/sources/meta-ti/recipes-kernel/linux/l=
inux-ti-staging_4.4.bb, do_fetch) failed with exit code '1'

Kindly help with this. Thanks.

Regards,
Harish.

--_000_CY4P197MB0038F07389371519B604F466FBD20CY4P197MB0038NAMP_
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
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
<p class=3D"MsoNormal">Hi Guys,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I am facing a strange issue wh=
ich was working/compiling earlier. I did a clean and retried. Now I am gett=
ing this error with the command &#8220;bitbake -c compile -f linux-ti-stagi=
ng&#8221;:
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">WARNING: linux-ti-staging-4.4.45&#43;gitAUTOINC&#43;=
89944627d5-r1a.arago5 do_fetch: Failed to fetch URL git://git.omapzoom.org/=
kernel/omap;protocol=3Dgit;branch=3Dp-ti-lsk-linux-4.4.y-next, attempting M=
IRRORS if available<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: linux-ti-staging-4.4.45&#43;gitAUTOINC&#43;89=
944627d5-r1a.arago5 do_fetch: Fetcher failure: Fetch command failed with ex=
it code 128, output:<o:p></o:p></p>
<p class=3D"MsoNormal">fatal: Not a git repository (or any parent up to mou=
nt point /mnt/yocto)<o:p></o:p></p>
<p class=3D"MsoNormal">Stopping at filesystem boundary (GIT_DISCOVERY_ACROS=
S_FILESYSTEM not set).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: linux-ti-staging-4.4.45&#43;gitAUTOINC&#43;89=
944627d5-r1a.arago5 do_fetch: Function failed: Fetcher failure for URL: 'gi=
t://git.omapzoom.org/kernel/omap;protocol=3Dgit;branch=3Dp-ti-lsk-linux-4.4=
.y-next'. Unable to fetch URL from any source.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /mnt/yocto/yoct=
o_repo/build/arago-tmp-external-linaro-toolchain/work/delphi_jlr_isp_proto-=
linux-gnueabi/linux-ti-staging/4.4.45&#43;gitAUTOINC&#43;89944627d5-r1a.ara=
go5/temp/log.do_fetch.102021<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task 2 (/mnt/yocto/yocto_repo/sources/meta-ti=
/recipes-kernel/linux/linux-ti-staging_4.4.bb, do_fetch) failed with exit c=
ode '1'<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Kindly help with this. Thanks.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Harish.<o:p></o:p></p>
</div>
</body>
</html>

--_000_CY4P197MB0038F07389371519B604F466FBD20CY4P197MB0038NAMP_--
