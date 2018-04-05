Return-Path: <MohammadJamal.Mohiuddin@ncr.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 234FAE00994; Thu,  5 Apr 2018 05:59:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.163.148.55 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 4339 seconds by postgrey-1.32 at yocto-www;
	Thu, 05 Apr 2018 05:59:33 PDT
Received: from mx0a-00209e01.pphosted.com (mx0a-00209e01.pphosted.com
	[148.163.148.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 009D9E00843
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2018 05:59:33 -0700 (PDT)
Received: from pps.filterd (m0131214.ppops.net [127.0.0.1])
	by mx0b-00209e01.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w35BdUfX026000
	for <yocto@yoctoproject.org>; Thu, 5 Apr 2018 07:47:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ncr.com;
	h=from : to : subject :
	date : message-id : content-type : mime-version; s=mail;
	bh=LFBubKe9VcRZdY7MXyFSqKDlwY3dTyDCsqyRqqh3RLs=;
	b=f7kU9mtpONT/yLRGROsyWmLCrtt8U9pyTSbM+WbK6WmNn77cot/5BPIG/goAnNMmP0BG
	xxROe1Tj6+bdlUABeFM3LsHJ9GxeK0xjI59wmIWVAyiW1Rl19ejRqNrt1rLt9M/gUSWm
	xi74VTjm16AiKvjA4mbCl8JGNCL9QcIRfd5/YhNR+Ttz5FaE2Ny2SIl2ToFYnZOSwEZm
	RJj7Z1lMVVswDMUDzBj5B7G8F2/esj9kcBLdfHO18jTDzlbjBDv74wsOa8TsnOJjbhcR
	97hecuj+pb4BXpyf3LaLtMcgNOEnrsBpfjdMtNUacpnPJ2xoZjVa7f6+fL8v7+iRXow0
	lg== 
Received: from nam01-bn3-obe.outbound.protection.outlook.com
	(mail-bn3nam01lp0176.outbound.protection.outlook.com
	[216.32.180.176])
	by mx0b-00209e01.pphosted.com with ESMTP id 2h5gw4s1kp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Thu, 05 Apr 2018 07:47:14 -0400
Received: from CY1PR15MB0126.namprd15.prod.outlook.com (10.162.46.146) by
	CY1PR15MB0859.namprd15.prod.outlook.com (10.169.22.137) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.653.12; Thu, 5 Apr 2018 11:47:11 +0000
Received: from CY1PR15MB0126.namprd15.prod.outlook.com
	([fe80::303b:a31e:e791:cc3a]) by
	CY1PR15MB0126.namprd15.prod.outlook.com
	([fe80::303b:a31e:e791:cc3a%16]) with mapi id 15.20.0631.013;
	Thu, 5 Apr 2018 11:47:11 +0000
From: "Mohammad, Jamal M" <MohammadJamal.Mohiuddin@ncr.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: No support for grubenv in efi mode
Thread-Index: AdPM06YymWc2IkJJQbeVtH2piY1b1A==
Date: Thu, 5 Apr 2018 11:47:11 +0000
Message-ID: <CY1PR15MB012615EE6CDFA0885FC1A0B6F0BB0@CY1PR15MB0126.namprd15.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [32.66.192.216]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CY1PR15MB0859;
	7:rIH/bDcJeDuxfAtJYkEP89mKuhuAuxWJc9gH9SeMVzWxIcxv3M0A4OdDs7/4tWvcx2SrkRKI4ip0X/IsTBd5iFwm0n+40sQpbN2xEucSXB0mwonjws8yHLI5H9hmOg8xzpNSx0+ydEbPh0rGd75hH0ZTwOVMeuTjuGVrq5TLOjse2+tW11Zq1z8Ly9wrmVg43/6ngojxWEkHb1qsFuWDn2ERvvw6hB6E0+irFpdL/YZM97YHkJlc8gKN618b7PP1
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 4d0c4e2d-7b20-48fb-8ed3-08d59aeaf821
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4604075)(3008032)(48565401081)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:CY1PR15MB0859; 
x-ms-traffictypediagnostic: CY1PR15MB0859:
x-from-ncr-tenant: Processed
x-microsoft-antispam-prvs: <CY1PR15MB0859BFB9C115EEB56F425E05F0BB0@CY1PR15MB0859.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(28532068793085)(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(3231221)(944501327)(52105095)(93006095)(93001095)(3002001)(10201501046)(6055026)(6041310)(20161123560045)(20161123564045)(20161123562045)(20161123558120)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(6072148)(201708071742011);
	SRVR:CY1PR15MB0859; BCL:0; PCL:0; RULEID:; SRVR:CY1PR15MB0859; 
x-forefront-prvs: 06339BAE63
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(376002)(39380400002)(396003)(346002)(39860400002)(366004)(199004)(189003)(3846002)(3280700002)(6116002)(790700001)(74316002)(3660700001)(7736002)(6506007)(25786009)(186003)(99286004)(5660300001)(2906002)(2900100001)(7696005)(53936002)(316002)(9686003)(54896002)(6306002)(6436002)(5640700003)(55016002)(68736007)(86362001)(5630700001)(8936002)(9326002)(97736004)(26005)(1730700003)(81156014)(486006)(8676002)(33656002)(5250100002)(2351001)(2501003)(81166006)(6916009)(66066001)(106356001)(476003)(478600001)(105586002)(14454004)(102836004)(72206003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR15MB0859;
	H:CY1PR15MB0126.namprd15.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ncr.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: 5vU/3cdHOONCnaxM0NBbctIfUwZl7tZrcDAXOaYn5dKslotaS1g5dvUCOLDqIXTOfCn3b+ZqgvnUXA/XD9bhcfia9f4Yeq/nm2PvroU6RDkuJBx15/l3BgE6Kst4HheVFzZhUj5EI55QmOt8/Ztfr+LzT+ebm/rGUjeIf/tFxlYbkxNJzgAx+zKu26pPVbbDx/RvMXHB97+XiPJPeLRGsA6Jhn6Ar09Hu50WKgy259yJ6pNMEpfOe444pzlQCh8l3hPR7MWzN6VIrm8IT66qmbQE+t52N/KOnInklwz7sskqhIt3TWg5wxo+iF2LOojX+Tyg/yuiCG49emmZh7uMhUq0JUsz+nBwQRkFDYbw56IXD3qVRAGq6aCBJHWCSBWTmyFUYxAVGDLl4+LgJx2XEx5YsnF8qqyiSqdWuekP0m8=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: ncr.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d0c4e2d-7b20-48fb-8ed3-08d59aeaf821
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2018 11:47:11.7360 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ae4df1f7-611e-444f-897e-f964e1205171
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR15MB0859
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2018-04-05_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=711 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1711220000 definitions=main-1804050125
X-Mailman-Approved-At: Sun, 08 Apr 2018 13:41:55 -0700
Subject: No support for grubenv in efi mode
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
X-List-Received-Date: Thu, 05 Apr 2018 12:59:35 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR15MB012615EE6CDFA0885FC1A0B6F0BB0CY1PR15MB0126namp_"

--_000_CY1PR15MB012615EE6CDFA0885FC1A0B6F0BB0CY1PR15MB0126namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Guys,

I was trying to add grubenv to My Yocto Project in EFI Mode..By default the=
 recipe grub-efi_2.02.bb doesn't create that, so I added the following code=
:

do_deploy_append_class-target() {
grub-editenv grubenv create
}


Running bitbake throws an error that grub-editenv: not found

What is the reason for this error and how can I add grubenv in efi mode ( G=
RUB ).

Thanks and Regards,
Jamal

--_000_CY1PR15MB012615EE6CDFA0885FC1A0B6F0BB0CY1PR15MB0126namp_
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
code
	{mso-style-priority:99;
	font-family:"Courier New";}
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
<p class=3D"MsoNormal">I was trying to add grubenv to My Yocto Project in E=
FI Mode..<span style=3D"font-size:11.5pt;font-family:&quot;Arial&quot;,sans=
-serif;color:#242729;background:white">By default the recipe grub-efi_2.02.=
bb doesn't create that, so I added the following
 code:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">do_deploy_append_class-target() { <o:p></o:p></p>
<p class=3D"MsoNormal">grub-editenv grubenv create <o:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt;background:white;vertical-alig=
n:baseline">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"=
>Running bitbake throws an error that&nbsp;grub-editenv: not found<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What is the reason for this error and how can I add =
grubenv in efi mode ( GRUB ).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks and Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Jamal<o:p></o:p></p>
</div>
</body>
</html>

--_000_CY1PR15MB012615EE6CDFA0885FC1A0B6F0BB0CY1PR15MB0126namp_--
