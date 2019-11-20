Return-Path: <prvs=02270736e7=raxeshkumar.oriya@ncr.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 113F6E00E25; Tue, 19 Nov 2019 22:45:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_WEB autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [148.163.152.55 listed in list.dnswl.org]
	*  1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [165.225.104.81 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mx0b-00209e01.pphosted.com (mx0b-00209e01.pphosted.com
	[148.163.152.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE2BCE00B7A
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2019 22:45:38 -0800 (PST)
Received: from pps.filterd (m0094031.ppops.net [127.0.0.1])
	by mx0b-00209e01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
	xAK6iehX018029
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2019 01:45:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ncr.com;
	h=from : to : subject :
	date : message-id : content-type : mime-version; s=mail;
	bh=zinedADkTEirCyritKZMJlaRiWMwEeeu1D9h2/RVZEs=;
	b=J64G/2/N2cqNqoiOgg6YlYmW7rWigsjLNTO8WjJ3zPO8wguYGPHdCBn2jd97hVheW68G
	dfXO+vl5E541ZjnMfjPA36eW3UL+kNrRt3PlHf736tyfgWmLJ0zYKLmlaE5MwCl81ZSi
	b503kVRFS5pphO1EfFv6runPT1GkqsZBkeawT7U8eR7iO5oRdOEo43sledTE0FpGTQQb
	E8VDvydegP75AdS9qehiftNmjPZFFdFn+jfns6nUnvyrg2nffvCC7/tDemtmsiT0t1w2
	0MIFlaqj5rUifNzOQryHn5jrhBfVUt3uAUERi97+jnpVnr0xUT52uwhS/OA/Rd/mVA9b
	2A== 
Received: from nam04-bn3-obe.outbound.protection.outlook.com
	(mail-bn3nam04lp2056.outbound.protection.outlook.com [104.47.46.56])
	by mx0b-00209e01.pphosted.com with ESMTP id 2wd0g4g04c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT)
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2019 01:45:37 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=bciWpf/zSIgqa4ATqdLHhQx2Pfru1pBn6jvxmXEdioGu53UqXXFS1bxOjYp/stPgdLJlqcHi/TZ5keF5W18YfAFg7JogaHAN9rhSdMspsmjL2sedFBVrA3nI7SE10UdB5ZCJa4sjhATG28f87NuIO3Uog6AYD9Rg54amS0jPI0PIOE1B/xGRgml20HJw+gnw98cyLcxfBFChL7D297tonVAX9VrXrNO62Ac4nhhGhRkV4lYC4AD9klrJxsZesWj6Yn9a1tOCIf2ZhR86VOIq9DtoM+whZTk1+yz5rUzY9WCuaQrRMmkdeV+Yg5Lk9SCxWKVyOJX3ys6bwh5reoh12w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=zinedADkTEirCyritKZMJlaRiWMwEeeu1D9h2/RVZEs=;
	b=jUYbdJUHgDMWLIPEklHTwiks1N+djRcX7mrRXob+1MO1MEG5CZYYV43qiToU4j/VHkGykpGPQbk8O3JJKPpRuNN6n+ZAe8ICAUArxaH41efnIZmkqFT32Q8+NcAZyfX1Wkv6/rk8QLYhZbQ/e1DqM8kyxXIW61e9sW5mB1uN8KQ9HIo/CJmJpsyp0hCXif34IYi8aqH1JTxfcUB8m9tk6e3K1XkEX0k10aKbcRRwxl/EQ6oFI94bvuRBINEx9fMd0Cs+piV4+xGeejVQKaFvimzwOVXTgV9SX6jSsAVHllC5jCXGkImvxtZCYfNcc0W+s5HFZvSSo6n2Jn347I/46g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=ncr.com; dmarc=pass action=none header.from=ncr.com;
	dkim=pass header.d=ncr.com; arc=none
Received: from CY4PR15MB1878.namprd15.prod.outlook.com (10.172.78.151) by
	CY4PR15MB1656.namprd15.prod.outlook.com (10.175.116.136) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2451.28; Wed, 20 Nov 2019 06:40:36 +0000
Received: from CY4PR15MB1878.namprd15.prod.outlook.com
	([fe80::39c9:53d2:6ee1:3e7]) by CY4PR15MB1878.namprd15.prod.outlook.com
	([fe80::39c9:53d2:6ee1:3e7%12]) with mapi id 15.20.2451.031;
	Wed, 20 Nov 2019 06:40:36 +0000
From: "Oriya, Raxesh" <Raxeshkumar.Oriya@ncr.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Device is unable to BOOT or INSTALL with generated .hddimg
Thread-Index: AdWfbWaW7yJ6oa0aRxKMt1ZywRdOow==
Date: Wed, 20 Nov 2019 06:40:35 +0000
Message-ID: <CY4PR15MB18781274173A1FD5FA1540DAFD4F0@CY4PR15MB1878.namprd15.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Enabled=True;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_SiteId=ae4df1f7-611e-444f-897e-f964e1205171;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Owner=ro185046@ncr.com; 
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_SetDate=2019-11-20T06:40:34.1818699Z;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Name=Confidential;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Application=Microsoft
	Azure Information Protection;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_ActionId=3fa23100-05fe-4f84-b0fc-08069ecb0d55;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Extended_MSFT_Method=Manual
dlp-product: dlpe-windows
dlp-version: 11.3.0.17
dlp-reaction: no-action
x-originating-ip: [165.225.104.81]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 24cd01e8-4582-49fd-260d-08d76d848cba
x-ms-traffictypediagnostic: CY4PR15MB1656:
x-microsoft-antispam-prvs: <CY4PR15MB165614C0A30E04D0CBA77315FD4F0@CY4PR15MB1656.namprd15.prod.outlook.com>
x-from-ncr-tenant: Processed
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 02272225C5
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(376002)(366004)(136003)(396003)(39860400002)(346002)(189003)(199004)(2501003)(1730700003)(102836004)(9686003)(55236004)(486006)(81156014)(2906002)(476003)(54896002)(316002)(2351001)(6916009)(8676002)(81166006)(99286004)(256004)(14444005)(71200400001)(71190400001)(86362001)(5024004)(7736002)(5660300002)(52536014)(478600001)(74316002)(6306002)(14454004)(8936002)(6506007)(26005)(186003)(33656002)(5640700003)(55016002)(6436002)(64756008)(66556008)(66476007)(76116006)(66446008)(66946007)(66066001)(790700001)(6116002)(3846002)(7696005)(25786009)(142923001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR15MB1656;
	H:CY4PR15MB1878.namprd15.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ncr.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: K/rk7CFTHeHHtgks9Hg/4CLn6iXNuQ6JFRwhTmbnD1UuHQZFJMdav9kN36wXUe4iJqNAkqmphbGKy62uDfYbBQ8VtAXvdXsrVYUV6rAP4VG5EdOeUzCLxXiFeCj8Qml7MBHEi2VewGl18hlKgHu9o+YyIxICEp2QY6q+0S5OLiPmr7ShYbhEHvBjCyhRMTyrE8pQLx7cI+Xy+9y5sKNM9zj3Ee7+VTzN7puHvlNXULxiwy6WOODU8tKZvkj6Bg5c56udNFDBN68FNnkLbdcWCE12W0GJ08YPxO1/olHJlpWfRV0AvxFX8fzmP14xOsj2e/2uE+D7pvKbjFld4xsSHQPNtQm9YfuYG9x4tb8aeHK2HnGJ+Q/rmvJaxl/8SDmXhm/Dy3CLnUFoqlZ9zRowtL3XtCPJ5T6bcMj/b2hzEfE1aN5TOr9GAnfJx2Z0OETv
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ncr.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24cd01e8-4582-49fd-260d-08d76d848cba
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2019 06:40:35.9385 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ae4df1f7-611e-444f-897e-f964e1205171
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /KLvUva5xiHxFlKLGJEN77igT2qphHyMSSh9dIy6+c4JEClfo2X7SGBFs/BrtjIv3AzwI36shvgJgKT3gFEXfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR15MB1656
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
	definitions=2019-11-20_01:2019-11-15,2019-11-20 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	adultscore=0
	priorityscore=1501 bulkscore=0 impostorscore=0 mlxlogscore=815
	suspectscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0 mlxscore=0
	phishscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx
	scancount=1
	engine=8.12.0-1910280000 definitions=main-1911200060
Subject: Device is unable to BOOT or INSTALL with generated .hddimg
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
X-List-Received-Date: Wed, 20 Nov 2019 06:45:41 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR15MB18781274173A1FD5FA1540DAFD4F0CY4PR15MB1878namp_"

--_000_CY4PR15MB18781274173A1FD5FA1540DAFD4F0CY4PR15MB1878namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

I have device which has following configuration:

- Chipset architecture - `Intel NM10 express`
- Processor - `Atom D2550 Dual Core`
- Display - `DVI`
- Volatile Memory - `2GB DDR3`
- Storage - `16GB`

**Objective**: Device should run yocto embededded OS successfully

What I have done,

- Downloaded three required yocto layers for warrior branch i.e. 1. poky 2.=
 meta-openembedded 3. meta-intel
- Modified `local.conf` with `MACHINE ??=3D "intel-core2-32"`
- Ran `source poky/oe-init-build-env`
- Generated `.hddimg` by bitbake `core-image-minimal`
- Flashed `.hddimg` to thumb drive through `dd` command

Attached thumb drive to device and I could see BOOT and INSTALL option, upo=
n clicking any of them nothing happens(not even logs) i.e. Blank screen

Troubleshooting I tried out are,

1. Tried to boot `lubuntu` and it was successful
2. Replaced kernel & initrd of `lubuntu` with yocto's one and booting was s=
uccessful which indicates there is no issue with kernel or initrd in `.hddi=
mg` generated by yocto
3. Tried some experiment with `syslinux` as well but didn't work out

Regards,
Raxesh


--_000_CY4PR15MB18781274173A1FD5FA1540DAFD4F0CY4PR15MB1878namp_
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
<p class=3D"MsoNormal">All, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have device which has following configuration:<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- Chipset architecture - `Intel NM10 express`<o:p></=
o:p></p>
<p class=3D"MsoNormal">- Processor - `Atom D2550 Dual Core`<o:p></o:p></p>
<p class=3D"MsoNormal">- Display - `DVI`<o:p></o:p></p>
<p class=3D"MsoNormal">- Volatile Memory - `2GB DDR3`<o:p></o:p></p>
<p class=3D"MsoNormal">- Storage - `16GB`<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">**Objective**: Device should run yocto embededded OS=
 successfully<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What I have done,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- Downloaded three required yocto layers for warrior=
 branch i.e. 1. poky 2. meta-openembedded 3. meta-intel<o:p></o:p></p>
<p class=3D"MsoNormal">- Modified `local.conf` with `MACHINE ??=3D &quot;in=
tel-core2-32&quot;`<o:p></o:p></p>
<p class=3D"MsoNormal">- Ran `source poky/oe-init-build-env`<o:p></o:p></p>
<p class=3D"MsoNormal">- Generated `.hddimg` by bitbake `core-image-minimal=
`<o:p></o:p></p>
<p class=3D"MsoNormal">- Flashed `.hddimg` to thumb drive through `dd` comm=
and<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Attached thumb drive to device and I could see BOOT =
and INSTALL option, upon clicking any of them nothing happens(not even logs=
) i.e. Blank screen<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Troubleshooting I tried out are,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">1. Tried to boot `lubuntu` and it was successful<o:p=
></o:p></p>
<p class=3D"MsoNormal">2. Replaced kernel &amp; initrd of `lubuntu` with yo=
cto's one and booting was successful which indicates there is no issue with=
 kernel or initrd in `.hddimg` generated by yocto<o:p></o:p></p>
<p class=3D"MsoNormal">3. Tried some experiment with `syslinux` as well but=
 didn't work out<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Raxesh<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_CY4PR15MB18781274173A1FD5FA1540DAFD4F0CY4PR15MB1878namp_--
