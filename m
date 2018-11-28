Return-Path: <MohammadJamal.Mohiuddin@ncr.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7733BE00C46; Wed, 28 Nov 2018 04:53:58 -0800 (PST)
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
	*      [148.163.152.55 listed in list.dnswl.org]
Received: from mx0b-00209e01.pphosted.com (mx0b-00209e01.pphosted.com
	[148.163.152.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 200FFE00CF3
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 04:53:46 -0800 (PST)
Received: from pps.filterd (m0094031.ppops.net [127.0.0.1])
	by mx0b-00209e01.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	wASCnUli022453
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 07:53:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ncr.com;
	h=from : to : subject :
	date : message-id : references : in-reply-to : content-type :
	mime-version; s=mail; bh=nnQIAiuX4HY0jp6Q79IAFW97KhgUY/MyMearG9dM5V4=; 
	b=Hp3YYYgJBj8CR5end1chkvrax1akaijDXkOTmFw28zgk2rhq94QgAz2mXkhyF+z6Idhz
	a4QT8YnyDrM3ZA1K7DWZYjTUo/bx2mEgxUrvDaoipd0Zh+vc3Fjx/SXZNDEAnwnFzn0W
	t0kUG4On6BhJ+ZlmGgcz7hSSWVbBR4xvxLRAAf6j1/54tBeG+VQx4Q+wp2cUa1Y5P7Uu
	maumHgbpWhvIt1aZ1TRIlbxAchy+cLGCXuL+JhykA4v00MUAyU41K54+gclUckMS2Nxq
	bPuauLblmwktmEm2aJ8BX61Lmj6pIHWaWaVmCy07+A1rsz3Y0XE/Yi4CvFesaoXOCO/3
	QQ== 
Received: from nam04-sn1-obe.outbound.protection.outlook.com
	(mail-sn1nam04lp0088.outbound.protection.outlook.com [216.32.180.88])
	by mx0b-00209e01.pphosted.com with ESMTP id 2p1sy30h81-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 07:53:46 -0500
Received: from DM5PR15MB1913.namprd15.prod.outlook.com (10.174.247.141) by
	DM5PR15MB1882.namprd15.prod.outlook.com (10.174.247.23) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1361.19; Wed, 28 Nov 2018 12:53:44 +0000
Received: from DM5PR15MB1913.namprd15.prod.outlook.com
	([fe80::7d7c:1475:ba88:aa93]) by
	DM5PR15MB1913.namprd15.prod.outlook.com
	([fe80::7d7c:1475:ba88:aa93%5]) with mapi id 15.20.1361.019;
	Wed, 28 Nov 2018 12:53:44 +0000
From: "Mohammad, Jamal M" <MohammadJamal.Mohiuddin@ncr.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Thread-Topic: Flashing Yocto Images using Clonezilla
Thread-Index: AdSHGNj20B047RtnQx6aIRwkIFsucAAAH4oQ
Date: Wed, 28 Nov 2018 12:53:44 +0000
Message-ID: <DM5PR15MB19138E7516E9D62F7A9B0DDCF0D10@DM5PR15MB1913.namprd15.prod.outlook.com>
References: <DM5PR15MB191367BA40C2CC899F5A8810F0D10@DM5PR15MB1913.namprd15.prod.outlook.com>
In-Reply-To: <DM5PR15MB191367BA40C2CC899F5A8810F0D10@DM5PR15MB1913.namprd15.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Enabled=True;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_SiteId=ae4df1f7-611e-444f-897e-f964e1205171;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Owner=mm185399@ncr.com; 
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_SetDate=2018-11-28T12:51:42.6947223Z;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Name=Confidential;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Application=Microsoft
	Azure Information Protection;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Extended_MSFT_Method=Manual;
	Sensitivity=Confidential
x-originating-ip: [32.66.192.217]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM5PR15MB1882;
	6:o3ulr+xHfMByQ8cc0BsmiDgVpeK0a1Y2UrYg5dkDX+wyTqTeva2rrKmpztoFHOKV6432Hn3m6XBiXfSDL7JUiWnpLxPd2IeWcc++BMhpsNaq8ni1qVXoDZP+PFZTDi2DeZkAjfc5SBdjXLhjDXtTrPveAgpCG46FUykfrhVMT6UAWSYldRxnD2RSTP7LgJVrDJGrCgABj1per78Gr89aFWzXsxKLRSo9isW/9Va1QmTzw2FOJ3OaOC+q3L5C0BLxDTHR5wMzwVW3HTmOGEPYUxLq1fawqN17b/dou75alUh11kuIz6HbPw2iGpQ5Lq3GUIwC81bQom8r+GkLj2XR4yNXCBjO/UMj77+oKCTDePYOoKIljeC0u6hxG1Y05kp9USOhcvN2skT9HuNQs4j/LMK07EKgwsAqWiB58ee8HEODygr5dCVUePg3vHmk4hxzzp8TlKiTkEeNbrf8l5+aEw==;
	5:Uqt8U8UwKAwfQFbAtkAAigoINs6v94oBFQ6T4aQSuRIKCgEGfKC4oPJTevJa6e8y+K1fJPK52HCoFw6NqJiULt1Yx5asz5BACLvNuN6lh0zRk7UjUjNJrRPH3xjO2fAcxpECnCz3Hab/gBjtqNE9PsOyt7LaZsC5t24IUFRNTPo=;
	7:0x+IwRcb2yckWDnMpmx3i7GOhTrDh7ONsdJdVUb6sRWPoBt6Ro5bQ4F3j/nzjI45p/cJGchadNFBHYOxg2GNaOl8ncoEjRFHCfJYcjz41iXzLAlMklwI8atcZ16V6xzQMQen51pxIgZ3+B6AxjMbrA==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 557d9dc5-e2ea-4140-a53e-08d6553087da
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390098)(7020095)(4652040)(8989299)(5600074)(711020)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:DM5PR15MB1882; 
x-ms-traffictypediagnostic: DM5PR15MB1882:
x-from-ncr-tenant: Processed
x-microsoft-antispam-prvs: <DM5PR15MB1882B23848AE9852C6390421F0D10@DM5PR15MB1882.namprd15.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(10201501046)(93006095)(93001095)(3002001)(3231443)(999002)(944501410)(52105112)(6055026)(148016)(149066)(150057)(6041310)(20161123560045)(20161123558120)(20161123564045)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(201708071742011)(7699051)(76991095);
	SRVR:DM5PR15MB1882; BCL:0; PCL:0; RULEID:; SRVR:DM5PR15MB1882; 
x-forefront-prvs: 0870212862
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(136003)(39860400002)(396003)(376002)(346002)(366004)(189003)(199004)(6306002)(33656002)(53936002)(316002)(5660300001)(81156014)(186003)(8676002)(8936002)(9686003)(71200400001)(86362001)(72206003)(446003)(11346002)(55016002)(54896002)(478600001)(256004)(486006)(99286004)(9326002)(71190400001)(476003)(81166006)(76176011)(7696005)(14454004)(97736004)(25786009)(93156006)(66066001)(106356001)(105586002)(6436002)(7736002)(68736007)(2906002)(6506007)(6916009)(26005)(790700001)(3846002)(6116002)(102836004)(74316002)(2940100002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR15MB1882;
	H:DM5PR15MB1913.namprd15.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ncr.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: hg2Ad4G/571U12ngAzXmop8b6hSuRcF+CgZ+OFYTIUT5P8tIi4XgFmRldq5QInJVQgWUGIaATT8ohSNb5FKxBOSVlUC2qMUAZ2lKZUnaNyl3VTlkbX1Dd2+cg15NWzJepzswqHZKUX9E6+1hNAl7GJAQmcyuD3gKf5oHpQKxWKrrH32nIqMHpJ/c18LvVN5hf5DcBG+1apFUIei5Mi4OAjjyiPCTaUDQuqiT8435YcMs9OxykB35g2AcQmiH4B474GMTWZlgCYuZZphAN+pCrSCxWBnPGqL/228rVJh0+i/HDJPur++Pr1qFLUMnAgaGboV7QwRzNRHhbNjAkE6t0UduL6J47kk3M8E1PUye2Rk=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: ncr.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 557d9dc5-e2ea-4140-a53e-08d6553087da
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2018 12:53:44.4447 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ae4df1f7-611e-444f-897e-f964e1205171
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR15MB1882
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-11-28_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=310 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1810050000 definitions=main-1811280114
Subject: Flashing Yocto Images using Clonezilla
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
X-List-Received-Date: Wed, 28 Nov 2018 12:53:58 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR15MB19138E7516E9D62F7A9B0DDCF0D10DM5PR15MB1913namp_"

--_000_DM5PR15MB19138E7516E9D62F7A9B0DDCF0D10DM5PR15MB1913namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Guys,


We are using meta-intel layer to generate .hddimg.

We can flash the generated .hddimg using Bootable Thumb Drive, but using th=
is mechanism in manufacturing is not a good solution.

We need some way to flash the Yocto Image using clonezilla, as hddimg is no=
t recognized by clonezilla.

Do we need to add any IMAGE_FSTYPES to make it work. Or is there any other =
solutions to flash Yocto Images over PXE Boot

Thanks for your time and patience
Regards,
Jamal,
Software Specialist
NCR Corporation

--_000_DM5PR15MB19138E7516E9D62F7A9B0DDCF0D10DM5PR15MB1913namp_
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
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:12.0pt;ma=
rgin-left:0in;background:white;vertical-align:baseline">
We are using meta-intel layer to generate .hddimg.<o:p></o:p></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:12.0pt;ma=
rgin-left:0in;background:white;vertical-align:baseline">
We can flash the generated .hddimg using Bootable Thumb Drive, but using th=
is mechanism in manufacturing is not a good solution.<o:p></o:p></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:12.0pt;ma=
rgin-left:0in;background:white;vertical-align:baseline">
We need some way to flash the Yocto Image using clonezilla, as hddimg is no=
t recognized by clonezilla.<o:p></o:p></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:12.0pt;ma=
rgin-left:0in;background:white;vertical-align:baseline">
Do we need to add any IMAGE_FSTYPES to make it work. Or is there any other =
solutions to flash Yocto Images over PXE Boot<o:p></o:p></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:12.0pt;ma=
rgin-left:0in;background:white;vertical-align:baseline">
Thanks for your time and patience<o:p></o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Jamal,<o:p></o:p></p>
<p class=3D"MsoNormal">Software Specialist<o:p></o:p></p>
<p class=3D"MsoNormal">NCR Corporation<o:p></o:p></p>
</div>
</body>
</html>

--_000_DM5PR15MB19138E7516E9D62F7A9B0DDCF0D10DM5PR15MB1913namp_--
