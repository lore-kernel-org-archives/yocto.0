Return-Path: <MohammadJamal.Mohiuddin@ncr.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37A0EE00C87; Tue, 20 Nov 2018 21:16:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [148.163.148.55 listed in list.dnswl.org]
Received: from mx0a-00209e01.pphosted.com (mx0a-00209e01.pphosted.com
	[148.163.148.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF091E00C4B
	for <yocto@yoctoproject.org>; Tue, 20 Nov 2018 21:16:52 -0800 (PST)
Received: from pps.filterd (m0131213.ppops.net [127.0.0.1])
	by mx0b-00209e01.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	wAL5Di3s019630
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2018 00:16:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ncr.com;
	h=from : to : subject :
	date : message-id : content-type : mime-version; s=mail;
	bh=EKhEID2VSNxI6zqmodANKrHr+XdfWo42TFu2DXqnRU0=;
	b=l59FRSaAbQgOMZWSAflvx6QZZGsLXtID24+3YPnH271MgvmC3gu4ul43tPzjzici8/vP
	sf4t/12cN5I0XM8+NasgaKB3OF+AxdTEcijBnQ22JYsuMvl8nHYpbvESqeLgsPxSkRUQ
	7HtVBiIx5N40WhmErApmQsHLGuVrrz5SJ1K2Gqi8gbSfZ4dxeiF2LKlhGpOKdO8Sv/ye
	B5odc5XSkGVPgM7Q5B8i2k1TNe1nLXXSkTXYjUrXJNlrU14evsJIa87/MRThCgo5njfW
	60I9i8GkZKfZnAq4Lqq/r6g49CPBtOkULOVguVxlLypZBfMhs5t0OLGj43jz8E8VcKh9
	oA== 
Received: from nam03-co1-obe.outbound.protection.outlook.com
	(mail-co1nam03lp0017.outbound.protection.outlook.com [216.32.181.17])
	by mx0b-00209e01.pphosted.com with ESMTP id 2nvy398ewp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2018 00:16:51 -0500
Received: from DM5PR15MB1913.namprd15.prod.outlook.com (10.174.247.141) by
	DM5PR15MB1530.namprd15.prod.outlook.com (10.173.220.150) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1339.26; Wed, 21 Nov 2018 05:16:50 +0000
Received: from DM5PR15MB1913.namprd15.prod.outlook.com
	([fe80::7d7c:1475:ba88:aa93]) by
	DM5PR15MB1913.namprd15.prod.outlook.com
	([fe80::7d7c:1475:ba88:aa93%5]) with mapi id 15.20.1339.027;
	Wed, 21 Nov 2018 05:16:50 +0000
From: "Mohammad, Jamal M" <MohammadJamal.Mohiuddin@ncr.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Thread-Topic: PXE Boot on Yocto Intel Hardware
Thread-Index: AdSBWWTGTAzfwWflQ0u/MSjbmY75ew==
Date: Wed, 21 Nov 2018 05:16:50 +0000
Message-ID: <DM5PR15MB19137630D6DB44E0E7A8BA27F0DA0@DM5PR15MB1913.namprd15.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Enabled=True;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_SiteId=ae4df1f7-611e-444f-897e-f964e1205171;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Owner=mm185399@ncr.com; 
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_SetDate=2018-11-21T05:16:47.2259829Z;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Name=Confidential;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Application=Microsoft
	Azure Information Protection;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Extended_MSFT_Method=Manual;
	Sensitivity=Confidential
x-originating-ip: [104.129.196.205]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM5PR15MB1530;
	6:JzP+oF7a/0afzJde7wqeX46bNeDVFvp8jQR9mfwwz3mm4xyIffaopKxt5FdLeK5Jbx0H0uOuIZKrhyuW2OkcjJZC5DCleKU+GtxUwKwM7LJ2SyGHQm37hLOxiqk9QR4gM05LfXHz15rWubycnZxoLvtiANeOUpzagdJ4PYS8Pt1dRC48nKwPZurKMLQ3h/DsKmyjneNXd8879qYYKdlOFAFYAbCK5i23Pwi/Ll1Oeavgls3YwXt1Fo1qK949ABVybGRBzlG5X5amqR9bpSdA856w+jLVpL6MYFCTMZfQ/FN1iHAR7z9pBDONQ59Kvvaf3qGvBOsS7rvM9KQJAsaXvfhAsx3EkSe32CuUM/G4Q84VYDF8Xwp5NbNxRgER4GpPBKtAxSOj+bXf3YF9z+J9I5DxW2uarHLzFzFzQBzeE6VKCITJidyNU1To4IatB9IevilvAbZ/UVuLJPPd8wcScg==;
	5:viPe/fsO9eCvlxH6KylWtR/sMMYgVhuLRcBTtovrxiYc1JRuPrO+RSJzNd4izwcOaEPRo/wzagYGam586P9WaoUPJw/JDM/bsTsmKUqqDwx5xoJRZGjNboOl0nASb04E117e4ldtmca03puO6ZgJj7FS7ikhXEqXGMG5jR5N+UE=;
	7:y7MYSMlbqPW2WJxsHA0jKzc8DZjNYvS1BzK/T7f0su9cjpDbNeCj/nPa1DFCAlMOvtNE2dXb+rrrXacdIQ1mIrsMGO9P3oGrzUQuDplSuDkh485+v7R/3ahAgfTAzeYYMppYTPPYYJuhdu0pBWC5Dg==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 14281d47-21e6-4360-6f2e-08d64f708ace
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390098)(7020095)(4652040)(8989299)(5600074)(711020)(4618075)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:DM5PR15MB1530; 
x-ms-traffictypediagnostic: DM5PR15MB1530:
x-from-ncr-tenant: Processed
x-microsoft-antispam-prvs: <DM5PR15MB153057C6114FB220C90C7DFCF0DA0@DM5PR15MB1530.namprd15.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(3231442)(944501410)(52105112)(10201501046)(93006095)(93001095)(3002001)(6055026)(148016)(149066)(150057)(6041310)(20161123558120)(20161123562045)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(201708071742011)(7699051)(76991095);
	SRVR:DM5PR15MB1530; BCL:0; PCL:0; RULEID:; SRVR:DM5PR15MB1530; 
x-forefront-prvs: 08635C03D4
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39860400002)(366004)(136003)(396003)(376002)(346002)(199004)(189003)(81156014)(81166006)(5660300001)(74316002)(25786009)(106356001)(6436002)(26005)(33656002)(478600001)(6506007)(102836004)(186003)(316002)(7736002)(72206003)(86362001)(55236004)(2900100001)(97736004)(8936002)(105586002)(8676002)(53936002)(9326002)(6916009)(256004)(9686003)(2906002)(71190400001)(14454004)(66066001)(71200400001)(54896002)(6306002)(6116002)(476003)(790700001)(68736007)(99286004)(7696005)(486006)(3846002)(55016002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR15MB1530;
	H:DM5PR15MB1913.namprd15.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ncr.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: 08d7wq1eYM9BpTeEYncUY7ojtMshOFhj9q3iRp/CDhzti/b2nOvv4ER8Qr6K5jGqqfmbDJIessy9wC5CNOgFGvXKBq67mZNZ6ySpYnsLc6Yki3MyPd9jjg7u3L0kUTVx47QPcoe8nfGwswViEeSMt7JEyAddBJQ4A6Wir6AFwcUYDGTyXil4WoyQ1/m/v03/tbXMFUtfRWKDgPxs8lGyOu+7+PEq59njfHLc5hzaFk+ozDECo01tpbZUYxhfmmC9vO2x+6ef9n2QDDDelO0DMuISKQDp3AJOZZ1rOTprV8HZE2RvY8X8yUaCFt+ICtqcDOf2Y3OjB0qNYwN915X9S8YfbnT2CzwDdJuCZ3NrrDA=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: ncr.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14281d47-21e6-4360-6f2e-08d64f708ace
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2018 05:16:50.1813 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ae4df1f7-611e-444f-897e-f964e1205171
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR15MB1530
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-11-21_02:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=740 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1810050000 definitions=main-1811210048
Subject: PXE Boot on Yocto Intel Hardware
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
X-List-Received-Date: Wed, 21 Nov 2018 05:16:54 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR15MB19137630D6DB44E0E7A8BA27F0DA0DM5PR15MB1913namp_"

--_000_DM5PR15MB19137630D6DB44E0E7A8BA27F0DA0DM5PR15MB1913namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Guys,

We are trying to set up PXE boot in Yocto.

Our hardware is Apollo Lake based SoC (intel-core-i7), I used tftp32 utilit=
y, started dns, tftp and dhcp server and put "bootx64.efi" as boot file

When I do "PXE Boot" from hardware, it successfully copies the bootx64.efi =
file into the hardware and displays GRUB cli.

What should I do for me to flash the .hddimg over PXE

Thanks for your time and patience.

Regards,
Jamal,
Software Specialist,
NCR Corporation

--_000_DM5PR15MB19137630D6DB44E0E7A8BA27F0DA0DM5PR15MB1913namp_
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
<p class=3D"MsoNormal">Hi Guys,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are trying to set up PXE boot in Yocto.<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Our hardware is Apollo Lake based SoC (intel-core-i7=
), I used tftp32 utility, started dns, tftp and dhcp server and put &quot;b=
ootx64.efi&quot; as boot file<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When I do &quot;PXE Boot&quot; from hardware, it suc=
cessfully copies the bootx64.efi file into the hardware and displays GRUB c=
li.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What should I do for me to flash the .hddimg over PX=
E<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks for your time and patience.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Jamal,<o:p></o:p></p>
<p class=3D"MsoNormal">Software Specialist,<o:p></o:p></p>
<p class=3D"MsoNormal">NCR Corporation<o:p></o:p></p>
</div>
</body>
</html>

--_000_DM5PR15MB19137630D6DB44E0E7A8BA27F0DA0DM5PR15MB1913namp_--
