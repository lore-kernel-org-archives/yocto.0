Return-Path: <MohammadJamal.Mohiuddin@ncr.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6274E00C1C; Wed,  7 Nov 2018 01:21:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,KHOP_DYNAMIC,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [148.163.152.55 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.7 KHOP_DYNAMIC Relay looks like a dynamic address
Received: from mx0b-00209e01.pphosted.com (mx0b-00209e01.pphosted.com
	[148.163.152.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62398E00C19
	for <yocto@yoctoproject.org>; Wed,  7 Nov 2018 01:21:40 -0800 (PST)
Received: from pps.filterd (m0094032.ppops.net [127.0.0.1])
	by mx0b-00209e01.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	wA79JGVt007497
	for <yocto@yoctoproject.org>; Wed, 7 Nov 2018 04:21:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ncr.com;
	h=from : to : subject :
	date : message-id : content-type : mime-version; s=mail;
	bh=2wWbIwbAxHjk5qMQutDGOgVcM2noZCgfTaziGWHXxIU=;
	b=T6g/tZSAREFe8uTtu80ehfth7RHdkiP6gw/ueRlYZPDun2c/iaj8EF7ItwMWtH6bD4In
	WAoNrGim1/RNQapOJ3qNjuixVTbraO1XchL1DIXpTvGSNcldvJ1bKCEGIwJkRyTIrfWF
	UzfKlE/apE8MlzqhPJ9HL5IrZcdDs4ehDWmiVwzfdOtrQJqv5GrBtBXL1qIse8jXo30g
	4RwgcOTUREy1OOmVsiGw4BovmRsVkgdhdZ6+6V4F8DNppYZFz8Lmvat5pxdMYtkDt0t8
	uiT+D0ZeQDFRt7fDcw3+65YJAtQSrxiofKppGxCb2GBBtqt/pYnLK0z1vwvVSWEPRUc7
	Ow== 
Received: from nam01-bn3-obe.outbound.protection.outlook.com
	(mail-bn3nam01lp0182.outbound.protection.outlook.com
	[216.32.180.182])
	by mx0b-00209e01.pphosted.com with ESMTP id 2nkvre05xv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Wed, 07 Nov 2018 04:21:39 -0500
Received: from DM5PR15MB1913.namprd15.prod.outlook.com (10.174.247.141) by
	DM5PR15MB1818.namprd15.prod.outlook.com (10.174.247.7) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1294.25; Wed, 7 Nov 2018 09:21:37 +0000
Received: from DM5PR15MB1913.namprd15.prod.outlook.com
	([fe80::7d1f:70f2:7b3a:ef41]) by
	DM5PR15MB1913.namprd15.prod.outlook.com
	([fe80::7d1f:70f2:7b3a:ef41%5]) with mapi id 15.20.1294.034;
	Wed, 7 Nov 2018 09:21:37 +0000
From: "Mohammad, Jamal M" <MohammadJamal.Mohiuddin@ncr.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Thread-Topic: lib32-ncurses not installing in rootfs
Thread-Index: AdR2evPOy7Ra1pToQYKtScxdl/2mjQ==
Date: Wed, 7 Nov 2018 09:21:37 +0000
Message-ID: <DM5PR15MB1913AB2A45AB39D4E13747C0F0C40@DM5PR15MB1913.namprd15.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Enabled=True;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_SiteId=ae4df1f7-611e-444f-897e-f964e1205171;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Owner=mm185399@ncr.com; 
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_SetDate=2018-11-07T09:21:34.7072577Z;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Name=Confidential;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Application=Microsoft
	Azure Information Protection;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Extended_MSFT_Method=Manual;
	Sensitivity=Confidential
x-originating-ip: [124.123.53.238]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM5PR15MB1818;
	6:BZ1Vu69nhW3sxVqE0rxaK9NPtlCsYgqz8e63O0y9kZ9wIn+WhjdW9t0OVOnZYPr+L/W8/Bc9BHpFimEneHV6S+5ZBMOz8E21TwPlT0/GzShrJlS50+z7QB67ssJkNE2SdfClxwhdGJfGuK6ApHOc8KQKN9GMH81cbV1rzykmDLpRc0DEMa8FkKaPcPqjSnb4J7+UFovLrphuG4xrNsZWbbGy5KY+5UvHTa8pGPukfTW1LPAgdE2GNF9fgjeRESMf5OrxXuj6V49nq0irolUGTCk5lZRWaOWH4gmrrvi/ZNur2x1EBXYUr95ZDH4eobO/3yde58ttAhXmm99WgKok2NP35RCGMGsD91ncEWuMF7RB1qeUlsvXzbvtfaq/HfMGdobkUMwTQRBjS0YTJCQM2NfVAJANM60ai2D5CQIf9e2jMW9ivR40zxpYC20QOh4LYEoYcEnSu/jUHiq+mZVriA==;
	5:Euwyxvkku2OoOFj060bK3xhR1rFO9OX/kIN38JwnrQ5v7ZoHoo3241zeAkOEftS5CkVty4GScgKWqfUhF+bw095R3rW5aD1dK/90Ls+ZD57lMomYWFXDCHPUGwpy0LdB2ijy4Uhe2Psc92czDFh3poE9x/TC8J4SCi7sTmEgF2U=;
	7:tJwqz5/WKkGUMAbmfwd+pejyX93zwVYgqtsUylkORND49ZG8JOsqWRJkbTHtBeBCIuzy/J0E26e1rpY6knbzY/Zgjn1uZBEjMAa3ZZx80uJmHJfFXq4OUBb6snV2aRWx9/9vzTprRrRfXmIdNuhAhg==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 4e839284-65c6-401e-7de6-08d644926b54
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989299)(5600074)(711020)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:DM5PR15MB1818; 
x-ms-traffictypediagnostic: DM5PR15MB1818:
x-from-ncr-tenant: Processed
x-microsoft-antispam-prvs: <DM5PR15MB18187ED072BDF351237880A5F0C40@DM5PR15MB1818.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155)(28532068793085)(190501279198761)(227612066756510);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(93006095)(93001095)(3002001)(3231382)(944501410)(52105095)(10201501046)(6055026)(148016)(149066)(150057)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(20161123564045)(20161123558120)(20161123560045)(201708071742011)(7699051)(76991095);
	SRVR:DM5PR15MB1818; BCL:0; PCL:0; RULEID:; SRVR:DM5PR15MB1818; 
x-forefront-prvs: 08497C3D99
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(136003)(376002)(39860400002)(396003)(366004)(346002)(199004)(189003)(81156014)(8936002)(81166006)(86362001)(25786009)(74316002)(6916009)(7696005)(97736004)(476003)(6436002)(486006)(71200400001)(256004)(78486014)(9326002)(72206003)(71190400001)(68736007)(2900100001)(7736002)(99286004)(478600001)(8676002)(53936002)(106356001)(14454004)(5660300001)(33656002)(66066001)(54896002)(105586002)(55016002)(6506007)(6306002)(9686003)(26005)(186003)(2906002)(3846002)(790700001)(102836004)(6116002)(316002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR15MB1818;
	H:DM5PR15MB1913.namprd15.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ncr.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: AMOa9QBenCPFPn0drxsKxQomMwP+ts1aJo/OtMF/GLAsaP4UD00LdAUfWbd18CgkTysOyjx3RmAYDVZ1bEX6op5s9lAVqa5hGFTHR+uG0csefQLWk9kJeshrNOa2nD4d+eeXmgttVK+1use9MZzqVsu6lVYg7wwNyC7h518sQ0ts2Mz5k3RUCCA/qGJALcHVeB7jpZiAjnq1Phq5XhtwG1xra3NvqIDKJft0q8w465WcaCIkE6NmZlP/PoFlH+ClrgzgkYol1hbSfF3OHMvvB9GLTLGjg1AjCuWKf4R2dejrEpYX1eGfLQ+KUPHd0Zdi1rYgNthYtKYoOuV0dkzNYX/sfinXQo+SiTrm81uaA1M=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: ncr.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e839284-65c6-401e-7de6-08d644926b54
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2018 09:21:37.4686 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ae4df1f7-611e-444f-897e-f964e1205171
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR15MB1818
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-11-07_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=702 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1807170000 definitions=main-1811070086
Subject: lib32-ncurses not installing in rootfs
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
X-List-Received-Date: Wed, 07 Nov 2018 09:21:41 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR15MB1913AB2A45AB39D4E13747C0F0C40DM5PR15MB1913namp_"

--_000_DM5PR15MB1913AB2A45AB39D4E13747C0F0C40DM5PR15MB1913namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Guys,
I am trying to add 32-bit ncurses into my root file system
I am using intel yocto bsp sumo branch
Here is my local.conf:

require conf/multilib.conf
DEFAULTTUNE_virtclass-multilib-lib32 =3D "x86"
IMAGE_INSTALL_append =3D " dpkg gnutls lib32-glibc lib32-libgcc lib32-libst=
dc++ lib32-gnutls lib32-freetype lib32    -libx11 lib32-ncurses lib32-dpkg =
python3-six"

ncurses folder is present in tmp
build/tmp/work/x86-pokymllib32-linux/lib32-ncurses/6.0+20171125-r0

The image folder is created and has the libraries
build/tmp/work/x86-pokymllib32-linux/lib32-ncurses/6.0+20171125-r0/image/li=
b
libncurses.so.5  libncurses.so.5.9  libncursesw.so.5  libncursesw.so.5.9  l=
ibtinfo.so.5  libtinfo.so.5.9

But these files are not present in root file system.
How can i debug or what should be my next step to get them into root file s=
ystem. which log files should I look
Thanks for your time.

Regards,
Jamal,
Software Specialist,
NCR Corporation

--_000_DM5PR15MB1913AB2A45AB39D4E13747C0F0C40DM5PR15MB1913namp_
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
code
	{mso-style-priority:99;
	font-family:"Courier New";}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
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
<p class=3D"MsoNormal">I am trying to add 32-bit ncurses into my root file =
system<o:p></o:p></p>
<p class=3D"MsoNormal">I am using intel yocto bsp sumo branch<o:p></o:p></p=
>
<p class=3D"MsoNormal">Here is my local.conf:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">require conf/multilib.conf<o:p></o:p></p>
<p class=3D"MsoNormal">DEFAULTTUNE_virtclass-multilib-lib32 =3D &quot;x86&q=
uot;<o:p></o:p></p>
<p class=3D"MsoNormal">IMAGE_INSTALL_append =3D &quot; dpkg gnutls lib32-gl=
ibc lib32-libgcc lib32-libstdc&#43;&#43; lib32-gnutls lib32-freetype lib32&=
nbsp;&nbsp;&nbsp; -libx11 lib32-ncurses lib32-dpkg python3-six&quot;<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ncurses folder is present in tmp<o:p></o:p></p>
<p class=3D"MsoNormal">build/tmp/work/x86-pokymllib32-linux/lib32-ncurses/6=
.0&#43;20171125-r0<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The image folder is created and has the libraries<o:=
p></o:p></p>
<p class=3D"MsoNormal">build/tmp/work/x86-pokymllib32-linux/lib32-ncurses/6=
.0&#43;20171125-r0/image/lib<o:p></o:p></p>
<p class=3D"MsoNormal">libncurses.so.5&nbsp; libncurses.so.5.9&nbsp; libncu=
rsesw.so.5&nbsp; libncursesw.so.5.9&nbsp; libtinfo.so.5&nbsp; libtinfo.so.5=
.9<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">But these files are not present in root file system.=
<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"font-variant-ligatures: normal;font-variant=
-caps: normal;font-variant-numeric: inherit;font-variant-east-asian: inheri=
t;font-stretch: inherit;line-height:inherit;box-sizing: inherit;orphans: 2;=
widows: 2;-webkit-text-stroke-width: 0px;text-decoration-style: initial;tex=
t-decoration-color: initial;word-spacing:0px">
How can i debug or what should be my next step to get them into root file s=
ystem. which log files should I look<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"font-variant-ligatures: normal;font-variant=
-caps: normal;font-variant-numeric: inherit;font-variant-east-asian: inheri=
t;font-stretch: inherit;line-height:inherit;box-sizing: inherit;orphans: 2;=
widows: 2;-webkit-text-stroke-width: 0px;text-decoration-style: initial;tex=
t-decoration-color: initial;word-spacing:0px">
Thanks for your time.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Jamal,<o:p></o:p></p>
<p class=3D"MsoNormal">Software Specialist,<o:p></o:p></p>
<p class=3D"MsoNormal">NCR Corporation<o:p></o:p></p>
</div>
</body>
</html>

--_000_DM5PR15MB1913AB2A45AB39D4E13747C0F0C40DM5PR15MB1913namp_--
