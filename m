Return-Path: <MohammadJamal.Mohiuddin@ncr.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F99FE00AF9; Mon,  9 Apr 2018 23:30:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.163.152.55 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 8754 seconds by postgrey-1.32 at yocto-www;
	Mon, 09 Apr 2018 23:30:43 PDT
Received: from mx0b-00209e01.pphosted.com (mx0b-00209e01.pphosted.com
	[148.163.152.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34F07E00932
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2018 23:30:43 -0700 (PDT)
Received: from pps.filterd (m0115756.ppops.net [127.0.0.1])
	by mx0b-00209e01.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w3A44lZj018465; Tue, 10 Apr 2018 00:04:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ncr.com;
	h=from : to : subject :
	date : message-id : references : in-reply-to : content-type :
	mime-version; s=mail; bh=cAU5nB2um7CqZC39CbVMp6ewz9DqtXW/sMnUCRx7vWI=; 
	b=HzdUjNMMrY422Y9RC0kDu5j7yZpxi5x6JG2/jjDTbtwUbeOKFVQbGI1x0eBtbJU/TFFq
	WM/HjSNOLeM0sDvyya2Snhlu3WEIUO6fv/MBYldFAXLz5VbSzjWOrjaAD+JNKzyHKbK6
	JHpkNpvcmQdPbwS7Aefb18q2Cw5w+1OTOG+mEYuWAzTm6IcDFQzqz6Tyq40X0GwSPGmG
	2kwSIo8/CbXozQXJmqAOiAk8M9n1dbHx/xA2DDQKdj1Brn0ErviwUb7kQzsBKL/uRfAw
	YHD2aT3Qylcpt5PKgHIBZATgQSODG7gbhbgn6M73R6XSfsMlBNBoXMIV3ML3eA8U1cUh
	Iw== 
Received: from nam03-dm3-obe.outbound.protection.outlook.com
	(mail-dm3nam03lp0016.outbound.protection.outlook.com [207.46.163.16])
	by mx0b-00209e01.pphosted.com with ESMTP id 2h8krx8jff-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Tue, 10 Apr 2018 00:04:47 -0400
Received: from MWHPR15MB1760.namprd15.prod.outlook.com (10.174.255.13) by
	MWHPR15MB1950.namprd15.prod.outlook.com (10.175.8.147) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.653.12; Tue, 10 Apr 2018 04:04:45 +0000
Received: from MWHPR15MB1760.namprd15.prod.outlook.com
	([fe80::18dc:d0cd:c704:9419]) by
	MWHPR15MB1760.namprd15.prod.outlook.com
	([fe80::18dc:d0cd:c704:9419%18]) with mapi id 15.20.0653.017;
	Tue, 10 Apr 2018 04:04:45 +0000
From: "Mohammad, Jamal M" <MohammadJamal.Mohiuddin@ncr.com>
To: Raymond Yeung <rksyeung@hotmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: MACHINE .conf file
Thread-Index: AQHT0GVlI9Cod6P6j0GTVlJPOS7ab6P5YTjw
Date: Tue, 10 Apr 2018 04:04:45 +0000
Message-ID: <MWHPR15MB17606B0E25E90F5BE03FE7C0F0BE0@MWHPR15MB1760.namprd15.prod.outlook.com>
References: <MWHPR19MB1183F00410877C3D80A2A59AC5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
	<5e7c67e4-3f79-aece-0d1b-a1494acda442@intel.com>
	<MWHPR19MB118326D76F8C45037C1BA6E6C5BA0@MWHPR19MB1183.namprd19.prod.outlook.com>,
	<34bdb916-5d2b-a478-4b83-3a47e39db01d@intel.com>,
	<MWHPR19MB1183424006F2FD5C8DCFCC2AC5B90@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB1183CD97B36C1A2EC8442554C5BF0@MWHPR19MB1183.namprd19.prod.outlook.com>
In-Reply-To: <MWHPR19MB1183CD97B36C1A2EC8442554C5BF0@MWHPR19MB1183.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [32.66.192.218]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MWHPR15MB1950;
	7:hvLtmZiFqpfFJqaxH4ZApQqvoe/grWAsygKZVwXhuC5TdWEMfR75Gb9ji/xmAuedsUvi2UV6MQ0et7Wn0Nq5udQ2pM/KkNJB3d8pvEZ+BlOJ0w3EkX8w9m0B5LGrn1dw4/aSqRNIA8XrzLEIlo4C+uWofrtw6JqhY8j23mJJwiaGj7wpfKb7L4BV+IoAXDvrR/3Cdjwdfg2C2aKwnWEAAlwRYIqjMS6oH32/C4D9WsIeFSoWtZiHxD0Sgihz6/wB
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(3008032)(48565401081)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:MWHPR15MB1950; 
x-ms-traffictypediagnostic: MWHPR15MB1950:
x-from-ncr-tenant: Processed
x-microsoft-antispam-prvs: <MWHPR15MB195000AC1443BF51C1243B3FF0BE0@MWHPR15MB1950.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(28532068793085)(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(93006095)(93001095)(3002001)(3231221)(944501327)(52105095)(10201501046)(6055026)(6041310)(20161123562045)(20161123560045)(20161123558120)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(6072148)(201708071742011);
	SRVR:MWHPR15MB1950; BCL:0; PCL:0; RULEID:; SRVR:MWHPR15MB1950; 
x-forefront-prvs: 0638FD5066
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39380400002)(346002)(366004)(376002)(39860400002)(396003)(199004)(189003)(110136005)(9686003)(446003)(99286004)(7736002)(3280700002)(3846002)(74316002)(76176011)(25786009)(6506007)(59450400001)(5660300001)(186003)(3660700001)(6306002)(11346002)(53546011)(7696005)(2906002)(2900100001)(55016002)(54896002)(26005)(316002)(476003)(478600001)(8936002)(6246003)(790700001)(81166006)(93886005)(5250100002)(53936002)(106356001)(8676002)(81156014)(33656002)(2501003)(66066001)(6436002)(6116002)(86362001)(68736007)(229853002)(105586002)(97736004)(486006)(72206003)(14454004)(39060400002)(102836004)(142923001)(21314002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR15MB1950;
	H:MWHPR15MB1760.namprd15.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ncr.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: 1dJ2jfi4u+nSqMyyQJYlygcW0Mw7UzZOOaHbw6rcBVWD1mqZds21w4xJk16aeiXpLEcdvOabcZLns0r5wMgJ14ZfTfgHZ94YadfjritDyHv0jCAVchYur1mRwYy9EnyQQxbiO/u+xGl5LYcOvhGLWXvXVZFkbapqT2deTIBJSy+4uy+vI9n5CZPOluHCuhcW36+7H402dfalgMxeaOpOsRrtw44xYJc5/b1MVkgfPy/N/6b+6wFtRLHDYFixkQyuWWMTPTphJNRDo76bH1v7gvPOQQ92Xrq528HrEDhXYsW9L0WUbJnQ6e2XO3hvWJ/3eEYu5kEOpApr2Bgu24bT8Efh2DARNznUKFhqdFNjhCCrvjUdEogOtfFngM/+02jWplLOjrn4SSjDb2lC1A85ntAcVoOgqWOFxigeFFwCnWY=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 6c8fc7d1-3d1f-4f47-593d-08d59e983229
X-OriginatorOrg: ncr.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c8fc7d1-3d1f-4f47-593d-08d59e983229
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2018 04:04:45.4862 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ae4df1f7-611e-444f-897e-f964e1205171
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR15MB1950
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-04-09_11:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1711220000 definitions=main-1804100042
X-Mailman-Approved-At: Tue, 10 Apr 2018 09:11:57 -0700
Subject: Re: MACHINE .conf file
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
X-List-Received-Date: Tue, 10 Apr 2018 06:30:46 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR15MB17606B0E25E90F5BE03FE7C0F0BE0MWHPR15MB1760namp_"

--_000_MWHPR15MB17606B0E25E90F5BE03FE7C0F0BE0MWHPR15MB1760namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Did you add meta-intel layer in conf/bblayers.conf file.. It will be presen=
t in that directory.

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Raymond Yeung
Sent: Tuesday, April 10, 2018 1:42 AM
To: yocto@yoctoproject.org
Subject: [yocto] MACHINE .conf file


Some questions about MACHINE:

1. I'd customized MACHINE (=3D"intel-corei7-64") variable in conf/local.con=
f under my build directory, as per document, and had successfully generated=
 an image for my H/W.  However, I don't seem to find "intel-corei7-64.conf"=
 file in meta/conf/machine under poky source directory.  Is this normal?

2. How many machine files are there per target machine, and should it be in=
 meta/conf/machine under source directory (similar to #1, but just a confir=
mation for me)?

3. To install an "external" .ko in the root filesystem, my understanding is=
 I need to add its name to MACHINE_XXX_RRECOMMENDS (or one of the other 3) =
in machine .conf file.  If there's only 1 machine file, this is obvious.  I=
f not, where should I put it?
Raymond

--_000_MWHPR15MB17606B0E25E90F5BE03FE7C0F0BE0MWHPR15MB1760namp_
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Did you add meta-intel layer in conf/bblayers.conf =
file.. It will be present in that directory.<o:p></o:p></span></p>
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
<b>Sent:</b> Tuesday, April 10, 2018 1:42 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] MACHINE .conf file<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div id=3D"divtagdefaultwrapper">
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">S=
ome questions about MACHINE:<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">1. I'd customized MACHINE (=3D&quot;intel-corei7-64&quot=
;)&nbsp;variable in conf/local.conf under my build directory, as per docume=
nt, and had successfully generated an image for my H/W. &nbsp;However,
 I don't seem to find&nbsp;&quot;intel-corei7-64.conf&quot; file in meta/co=
nf/machine under poky&nbsp;source&nbsp;directory. &nbsp;Is this normal?
<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">2.&nbsp;How many machine files are there per target mach=
ine, and should it be in meta/conf/machine under source directory (similar =
to #1, but just a confirmation for me)?<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-f=
amily:&quot;Calibri&quot;,sans-serif;color:black">3.&nbsp;To install an &qu=
ot;external&quot; .ko in the root filesystem, my understanding is I need to=
 add its name to MACHINE_XXX_RRECOMMENDS (or one of the other 3)
 in machine .conf file. &nbsp;If there's only 1 machine file, this is obvio=
us. &nbsp;If not, where should I put it?<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Raymond<o:p></o:p></span></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_MWHPR15MB17606B0E25E90F5BE03FE7C0F0BE0MWHPR15MB1760namp_--
