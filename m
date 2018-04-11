Return-Path: <MohammadJamal.Mohiuddin@ncr.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C996EE00B1A; Tue, 10 Apr 2018 21:48:48 -0700 (PDT)
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
Received: from mx0a-00209e01.pphosted.com (mx0a-00209e01.pphosted.com
	[148.163.148.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DAFEE00944
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2018 21:48:47 -0700 (PDT)
Received: from pps.filterd (m0131214.ppops.net [127.0.0.1])
	by mx0b-00209e01.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w3B4i2X6017181; Wed, 11 Apr 2018 00:48:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ncr.com;
	h=from : to : subject :
	date : message-id : references : in-reply-to : content-type :
	mime-version; s=mail; bh=+DLLxwRvdaSfBAncy3TzNUGA5Dq/AODfIe1kXam8Mj0=; 
	b=XzxjaTSLrd0klyOto2pd0soL/ZvN7YWpUjrdpdRsh2v/HVNUFcKsOP3Jx3ptmbzVB1wm
	LQj/MDA+5FgqGjzPnSwgy1qfAkR5vse7THtiQIHQ4htJBq2fQw+qpAK5iJGRPfOY0om9
	RcWwq11QUHorRrefwNMR+Cy3J0v7dpcL0vN0OqZFH8npyeznQk23Gbx03CPwPj2I6h7H
	YgAFtsSBJRE8F7o6VC274ySvxlSVRda4kPOrTipGZfbqAzpZHOGlZKiWHVV4cKhVgPJH
	GOsSvfk99Ww8np//FLlodTNYwPW1RmnAyjjfkGLNo9jEsyMJRMiUO+1n/zd18vusT7t6
	4w== 
Received: from nam03-co1-obe.outbound.protection.outlook.com
	(mail-co1nam03lp0019.outbound.protection.outlook.com [216.32.181.19])
	by mx0b-00209e01.pphosted.com with ESMTP id 2h9a94ren8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Wed, 11 Apr 2018 00:48:46 -0400
Received: from MWHPR15MB1760.namprd15.prod.outlook.com (10.174.255.13) by
	MWHPR15MB1247.namprd15.prod.outlook.com (10.175.3.9) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.653.12; Wed, 11 Apr 2018 04:48:44 +0000
Received: from MWHPR15MB1760.namprd15.prod.outlook.com
	([fe80::18dc:d0cd:c704:9419]) by
	MWHPR15MB1760.namprd15.prod.outlook.com
	([fe80::18dc:d0cd:c704:9419%18]) with mapi id 15.20.0653.018;
	Wed, 11 Apr 2018 04:48:44 +0000
From: "Mohammad, Jamal M" <MohammadJamal.Mohiuddin@ncr.com>
To: Raymond Yeung <rksyeung@hotmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: Yocto Boot Question
Thread-Index: AQHT0O/6gwl+jwmcWUK7Bu54LcEQmKP6/oKA
Date: Wed, 11 Apr 2018 04:48:44 +0000
Message-ID: <MWHPR15MB1760096987CE2D2371B9FE0DF0BD0@MWHPR15MB1760.namprd15.prod.outlook.com>
References: <MWHPR19MB11834B837C90D26A2F737FE4C5BE0@MWHPR19MB1183.namprd19.prod.outlook.com>
In-Reply-To: <MWHPR19MB11834B837C90D26A2F737FE4C5BE0@MWHPR19MB1183.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [27.59.246.14]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MWHPR15MB1247;
	7:GGd5AoCUg2jKUmZEu+w5xraiAgN9vSr72IK6dzk2tzCEsZzH1GfsGtvF5JX1C8vDUN4+x2AZxhJFLT7BJ2QHe6aZ8dV/lXJEsSOHy7OLjjhZdLkRZL8oHjPPEorOHBnIVohOFZwrdI+Sq5DOiRZTVqQbtpHOlaF5YB4yNtwKEQczbZmGa2MQRosfLgoRdlv9+NR5bVxb85pi50+J3zs48Cyji0LDAkgpARZ0B9q/aoG6VwyrEZb1jNllUm5cN9oc
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(3008032)(48565401081)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:MWHPR15MB1247; 
x-ms-traffictypediagnostic: MWHPR15MB1247:
x-from-ncr-tenant: Processed
x-microsoft-antispam-prvs: <MWHPR15MB124753FB3B152E81C2FAFD71F0BD0@MWHPR15MB1247.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(28532068793085)(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(3002001)(93006095)(93001095)(10201501046)(3231221)(944501327)(52105095)(6055026)(6041310)(20161123564045)(20161123558120)(20161123562045)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(6072148)(201708071742011);
	SRVR:MWHPR15MB1247; BCL:0; PCL:0; RULEID:; SRVR:MWHPR15MB1247; 
x-forefront-prvs: 0639027A9E
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39860400002)(39380400002)(346002)(376002)(366004)(396003)(189003)(199004)(6506007)(66066001)(59450400001)(102836004)(72206003)(446003)(6246003)(316002)(53936002)(2900100001)(3480700004)(478600001)(476003)(186003)(14454004)(8936002)(110136005)(11346002)(2501003)(5660300001)(790700001)(229853002)(6306002)(86362001)(54896002)(5250100002)(9686003)(6116002)(76176011)(106356001)(99286004)(7116003)(486006)(3846002)(55016002)(105586002)(53546011)(39060400002)(81166006)(2906002)(26005)(68736007)(7696005)(3280700002)(25786009)(97736004)(7736002)(33656002)(8676002)(3660700001)(81156014)(6436002)(74316002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR15MB1247;
	H:MWHPR15MB1760.namprd15.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ncr.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: Hqyv7FUO6SlWkB9Vyq5v0K91pZD2+RT0AKXDtXLN/ZZ/Dw4pxO4t73jwTK+GRuqBfVqMmQGsZin6rcAn3HiT4iWkxUmpDL8iybvZba0TdainHeHgCti64yPX/Yqs8NJ9lxLg69GSUhxOOLlH+GOZd1RaMyffY/UeLDbkFcnH8+S3SV6gjwwY223mWnMY/q7MEyHnzaOb3mEOzlgQNOQ9+AINKC+7oQ7pE7lcbmaDhlsv1VIU8V0UvwwsEuhmWPZ7dg2GcsmiVz5jO0/W6Bi1fNJbeOXtxK/Tcy8TzdPUIpK8n/xL5tf5TYXkIznYkbuHiaBtRPfi3SU4MDtMkvDLl0ctodFqosNwjw1yHbiRyHEcMVJjfEdap2bQ5feZzIaFA2TuPje5jGa/CIauoxG35yc+S+5S0wJHHUTJHL61F4E=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 7a09719e-d625-4213-3c32-08d59f67818d
X-OriginatorOrg: ncr.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a09719e-d625-4213-3c32-08d59f67818d
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2018 04:48:44.5086 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ae4df1f7-611e-444f-897e-f964e1205171
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR15MB1247
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-04-11_01:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1711220000 definitions=main-1804110044
X-Mailman-Approved-At: Fri, 13 Apr 2018 08:20:18 -0700
Subject: Re: Yocto Boot Question
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
X-List-Received-Date: Wed, 11 Apr 2018 04:48:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR15MB1760096987CE2D2371B9FE0DF0BD0MWHPR15MB1760namp_"

--_000_MWHPR15MB1760096987CE2D2371B9FE0DF0BD0MWHPR15MB1760namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I also faced a similar issue while installing on Intel machine, switching t=
o other machine I was able to install and boot successfully.. I have not tr=
ied network boot option..

Which is the board you are using and what is the machine type?

Regards,
Jamal

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Raymond Yeung
Sent: Tuesday, April 10, 2018 10:53 PM
To: yocto@yoctoproject.org
Subject: [yocto] Yocto Boot Question


Hi,



I've successfully booted a BSP using USB thumb drive (.hddimg type).  I've =
two follow-up questions -



  1.  The BIOS offers "Serial Install" which seems to copy the USB boot ima=
ge over to SSD.  Would SSD be using the same .hddimg type?  Right now, afte=
r the above install, when I switch boot order to try both SSD (0 and 1), bo=
oting doesn't seem to work.
  2.  When using network boot option, what image type should I use?


It would be great if details have already been documented somewhere.



Thanks,

Raymond

--_000_MWHPR15MB1760096987CE2D2371B9FE0DF0BD0MWHPR15MB1760namp_
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
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
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
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal-compose;
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
/* List Definitions */
@list l0
	{mso-list-id:644940803;
	mso-list-template-ids:343841770;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">I also faced a similar issue while installing on In=
tel machine, switching to other machine I was able to install and boot succ=
essfully.. I have not tried network boot option..<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Which is the board you are using and what is the ma=
chine type?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Jamal<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> yocto-bounces@yoctoproject.org=
 [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Raymond Yeung<br>
<b>Sent:</b> Tuesday, April 10, 2018 10:53 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Yocto Boot Question<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div id=3D"divtagdefaultwrapper">
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">H=
i,<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">I=
've successfully booted a BSP using USB thumb drive (.hddimg type). &nbsp;I=
've two follow-up questions -<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
o:p>&nbsp;</o:p></span></p>
<ol start=3D"1" type=3D"1">
<li class=3D"MsoNormal" style=3D"color:black;mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto;mso-list:l0 level1 lfo1">
<span style=3D"font-family:&quot;Calibri&quot;,sans-serif">The BIOS offers =
&quot;Serial Install&quot; which seems to copy the USB boot image over to S=
SD. &nbsp;Would SSD be using the same .hddimg type? &nbsp;Right now, after =
the above install, when I switch boot order to try both SSD (0 and
 1), booting doesn't seem to work.<o:p></o:p></span></li><li class=3D"MsoNo=
rmal" style=3D"color:black;mso-margin-top-alt:auto;mso-margin-bottom-alt:au=
to;mso-list:l0 level1 lfo1">
<span style=3D"font-family:&quot;Calibri&quot;,sans-serif">When using netwo=
rk boot option, what image type should I use?<o:p></o:p></span></li></ol>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">I=
t would be great if details have already been documented somewhere.<o:p></o=
:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">T=
hanks,<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">R=
aymond<o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_MWHPR15MB1760096987CE2D2371B9FE0DF0BD0MWHPR15MB1760namp_--
