Return-Path: <MohammadJamal.Mohiuddin@ncr.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E382E00B93; Mon, 15 Oct 2018 08:05:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,KHOP_DYNAMIC,RCVD_IN_DNSWL_LOW
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.163.148.55 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  2.0 KHOP_DYNAMIC Relay looks like a dynamic address
X-Greylist: delayed 2020 seconds by postgrey-1.32 at yocto-www;
	Mon, 15 Oct 2018 08:05:44 PDT
Received: from mx0a-00209e01.pphosted.com (mx0a-00209e01.pphosted.com
	[148.163.148.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACC96E00A0A
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2018 08:05:44 -0700 (PDT)
Received: from pps.filterd (m0115755.ppops.net [127.0.0.1])
	by mx0a-00209e01.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w9FETt4A022781
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2018 10:32:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ncr.com;
	h=from : to : subject :
	date : message-id : references : in-reply-to : content-type :
	mime-version; s=mail; bh=aYhBSjYaq7CInyAy7UOphLU04oWEnmxe1oQu2Agso4o=; 
	b=AelJbK+es6qohdVqqeKwuAQAS+1/uXry8W3qp/8WFdieQ6vYKZulirs3obaUljYfUhmG
	2DTSbxkBCWt+60fwF5i3FwweESznIU4PaM+084X0MiPrqrKBZqMqHcoqoeQrQPDtviRp
	bLI/pd+VdIJHb6aUELry8z2fzaUe7pWY2cdGTwyAE+6T4aj4WjWKgZTKEBJopUzXJNrN
	3nl5V8ylQOGcn9H0Ynqyv3xTNsJmUpxgw/1VJItDD+l9cfxzbpKzZxsyTMqODzOoQL8J
	7pkMiVT3aUAArCkEv6J4mas3dspZKvBvVbtZACT/bESMax74yeXeAv5fuUWA01NpjS9f
	SA== 
Received: from nam03-dm3-obe.outbound.protection.outlook.com
	(mail-dm3nam03lp0023.outbound.protection.outlook.com [207.46.163.23])
	by mx0a-00209e01.pphosted.com with ESMTP id 2n4skeh905-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT)
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2018 10:32:03 -0400
Received: from DM5PR15MB1913.namprd15.prod.outlook.com (10.174.247.141) by
	DM5PR15MB1548.namprd15.prod.outlook.com (10.173.222.139) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1228.23; Mon, 15 Oct 2018 14:32:01 +0000
Received: from DM5PR15MB1913.namprd15.prod.outlook.com
	([fe80::69b5:5565:b566:22f]) by DM5PR15MB1913.namprd15.prod.outlook.com
	([fe80::69b5:5565:b566:22f%6]) with mapi id 15.20.1228.027;
	Mon, 15 Oct 2018 14:32:01 +0000
From: "Mohammad, Jamal M" <MohammadJamal.Mohiuddin@ncr.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: populate_sdk fails when multilib enabled
Thread-Index: AdRkkN3ech+qI+/RQK2rSe7C5LEJ0wAAu/xQ
Date: Mon, 15 Oct 2018 14:32:01 +0000
Message-ID: <DM5PR15MB1913471EC9EC1AB9E9A29923F0FD0@DM5PR15MB1913.namprd15.prod.outlook.com>
References: <DM5PR15MB19130691D868BC70C4E9C840F0FD0@DM5PR15MB1913.namprd15.prod.outlook.com>
In-Reply-To: <DM5PR15MB19130691D868BC70C4E9C840F0FD0@DM5PR15MB1913.namprd15.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Enabled=True;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_SiteId=ae4df1f7-611e-444f-897e-f964e1205171;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Owner=mm185399@ncr.com; 
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_SetDate=2018-10-15T14:16:11.2105422Z;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Name=Confidential;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Application=Microsoft
	Azure Information Protection;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Extended_MSFT_Method=Manual;
	Sensitivity=Confidential
x-originating-ip: [124.123.53.72]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM5PR15MB1548;
	6:IDF1Ggnv3SK8jqkPi4S/I034p0K8ziNYgJOUAKzUEs+b27wommLtV/DZqUmGWG1PWUFJgJBrbyWlDB6LPCPxz7Kh8D/VA54Kv9RyUQIPToxQkuL+nJgW6iCav5EKsM3Q2SOvGFvSqOnazhKtpCo0D5K/MJjQwjPL0OG7CJBZ3AcZQe2HSqJKLyIFEPHJA8ZuhpvucgCGjVWjAK7n4hocMm5yTO7YCfwJu+Npw04XB4sU3mn9p6yWlLqU7mfg44iqPfu9k4uQKU/9VYSK2/G7OGftmiZXU3CWP3k7Xi/cBYiVypswH8V2pRxcgR+qKYqY1wJpdN0jlf/Yg6+kcG9grBwnBGlbKzu2R6LP/HAqd5UR27bUIFRCG0LUlhALat3AyP7C/Q5lCQnI4dn6GcU8Aau4GcYya4dfedDj4cTgeP+nOKMtyDJvFADWyWm3rw3rC//hbRLPTSOOe4LarcPbjA==;
	5:3xFNcdIjfhiRqm+Q6kdps/YCTAkeCi5RsOKrVagL4/HhXya/63v7PgAU15cnrpgyDsZOw5o2dqEhqRXK4m8XD6ub7mMOq6cfvZ9U2uQBFay+6YatcLLfRgKVkCKikqrkSxdPnfynnSlfMWIZeP4oCw0E+b194vidHhnxpJTS/Z8=;
	7:x/jIOiaWDEn/+0Q5A9/XIOh43HIs2Vk49XkmAjMb2N8eErqUDNsNPM0bT/A5zjHTbqN36MeGWQxfO8M4fZ5N5YSuIMVXeG3qc2xDjMcfyHI1k3W4GEtjxKB/rbwoPX89XV9RX2pzqibdg6bn9TuqoqTkrfS/qOH8TShLdJhyegsRFqCji7dQQDYUvE2QB9N8OoUvt8oswj5xuDqF9Y45ORpTnW7OpShZUuWIGvxisRbKwkSAxC96QAbmCdqk5VEV
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: f633ad56-e7e2-479d-8ebe-08d632aaf8b9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600074)(711020)(4618075)(2017052603328)(7153060)(7193020);
	SRVR:DM5PR15MB1548; 
x-ms-traffictypediagnostic: DM5PR15MB1548:
x-from-ncr-tenant: Processed
x-microsoft-antispam-prvs: <DM5PR15MB154822D2CD0F9CAF45B47CE7F0FD0@DM5PR15MB1548.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(163750095850)(21748063052155)(28532068793085)(190501279198761)(227612066756510);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(3231355)(944501410)(52105095)(3002001)(10201501046)(93006095)(93001095)(6055026)(149066)(150057)(6041310)(20161123560045)(20161123558120)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(20161123562045)(201708071742011)(7699051)(76991067);
	SRVR:DM5PR15MB1548; BCL:0; PCL:0; RULEID:; SRVR:DM5PR15MB1548; 
x-forefront-prvs: 0826B2F01B
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(979002)(396003)(136003)(366004)(346002)(376002)(39860400002)(189003)(199004)(53474002)(316002)(99286004)(8676002)(81156014)(1730700003)(9686003)(81166006)(74316002)(446003)(11346002)(476003)(86362001)(102836004)(7736002)(478600001)(97736004)(5640700003)(2501003)(5250100002)(2351001)(6506007)(55016002)(33656002)(7696005)(76176011)(186003)(6306002)(105586002)(54896002)(25786009)(106356001)(53936002)(2900100001)(5630700001)(256004)(26005)(66066001)(6916009)(8936002)(5660300001)(2940100002)(93156006)(2906002)(68736007)(9326002)(790700001)(72206003)(71190400001)(71200400001)(14454004)(6116002)(3846002)(486006)(6436002)(969003)(989001)(999001)(1009001)(1019001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR15MB1548;
	H:DM5PR15MB1913.namprd15.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ncr.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: hoSnxrtlZz1T7nXW/EzyiUIwatK9pzYCJ5HE4NwcS5C+xpAVRplQF82V7eBGOddM1mTKxNApqsG2UMYYCHaUVZQeHmzmyZOkY59H0GO7RzpC/UEy1ma74awa3DqGBz3xYOqFtxa/WT33XR4DDX16Q3E067aEPX6ENX3jSc2xGCuuUzVTZLsqjWsHmQmbfl5+SsFwY73oBDGF1wEq692rqoAXKEwHa4naqK2/MzUjp+isAg8VqcvhXQVcsVS5JGZSrPLqPYdckXnlLN8xUuT/c3tEj+IlqeLkIKmNRe4GkS/e/woFNpSVvTWiBI5woVIcqCRJjr5t1DFIYzL6tEALZvw93PjjnaVbQt+PBbax9Iw=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: ncr.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f633ad56-e7e2-479d-8ebe-08d632aaf8b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2018 14:32:01.7122 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ae4df1f7-611e-444f-897e-f964e1205171
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR15MB1548
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-10-15_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=949 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1807170000 definitions=main-1810150132
X-Mailman-Approved-At: Mon, 15 Oct 2018 09:30:49 -0700
Subject: populate_sdk fails when multilib enabled
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
X-List-Received-Date: Mon, 15 Oct 2018 15:05:57 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR15MB1913471EC9EC1AB9E9A29923F0FD0DM5PR15MB1913namp_"

--_000_DM5PR15MB1913471EC9EC1AB9E9A29923F0FD0DM5PR15MB1913namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Guys,

I am having customized Apollo Lake Board.

Using generic meta-intel layer with MACHINE=3Dintel-corei7-64, Branch =3D s=
umo

We wanted to support 32-bit libraries, so added multilib in local.conf

require conf/multilib.conf
MULTILIBS =3D "multilib:lib32"
DEFAULTTUNE_virtclass-multilib-lib32 =3D "x86"


IMAGE_INSTALL_append =3D " openssh dpkg gnutls lib32-glibc lib32-libgcc lib=
32-libstdc++ lib32-gnutls lib32-freetype lib32-libx11 lib32-ncurses lib32-d=
pkg lsof cronie logrotate lib32-libxml2 screen mg eudev libudev s"
EXTRA_IMAGE_FEATURES ?=3D " ssh-server-openssh debug-tweaks tools-debug "

When I ran the following command: bitbake -c populate_sdk core-image-minima=
l, it fails with the following..


Some packages could not be installed. This may mean that you have
requested an impossible situation or if you are using the unstable
distribution that some required packages have not yet been created
or been moved out of Incoming.
The following information may help to resolve the situation:

The following packages have unmet dependencies:
lib32-packagegroup-core-standalone-sdk-target : Depends: lib32-glibc-gconv-=
cp1252 but it is not installable
                                                 Depends: lib32-glibc-gconv=
-ibm850 but it is not installable
                                                 Depends: lib32-glibc-gconv=
-iso8859-1 but it is not installable
                                                 Depends: lib32-glibc-gconv=
-iso8859-15 but it is not installable
                                                 Depends: lib32-glibc-local=
edata-i18n but it is not installable
                                                 Depends: lib32-libatomic-d=
ev but it is not installable
                                                 Depends: lib32-libatomic1 =
but it is not installable
                                                 Depends: lib32-libc6 but i=
t is not installable
                                                 Depends: lib32-libc6-dbg b=
ut it is not installable
                                                 Depends: lib32-libc6-dev b=
ut it is not installable
                                                 Depends: lib32-libc6-threa=
d-db but it is not installable
                                                 Depends: lib32-libc6-utils=
 but it is not installable
                                                 Depends: lib32-libgcc-s-de=
v but it is not installable
                                                 Depends: lib32-libgcc1 but=
 it is not installable
                                                 Depends: lib32-libsegfault=
 but it is not installable
                                                 Depends: lib32-libstdc++-d=
ev but it is not installable
                                                 Depends: lib32-libstdc++6 =
but it is not installable
                                                 Recommends: lib32-libssp-d=
ev but it is not installable
                                                 Recommends: lib32-libssp0 =
but it is not installable
E: Unable to correct problems, you have held broken packages.

Please help me in resolving this problem.. Appreciate your efforts and time=
.

Thanks and Regards,
Jamal
NCR Corporation


--_000_DM5PR15MB1913471EC9EC1AB9E9A29923F0FD0DM5PR15MB1913namp_
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
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle22
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
<p class=3D"MsoNormal">I am having customized Apollo Lake Board.<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Using generic meta-intel layer with MACHINE=3Dintel-=
corei7-64, Branch =3D sumo<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We wanted to support 32-bit libraries, so added mult=
ilib in local.conf<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"background:#EFF0F1;vertical-align:baseline"=
>require conf/multilib.conf<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"background:#EFF0F1;vertical-align:baseline"=
>MULTILIBS =3D &quot;multilib:lib32&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"background:#EFF0F1;vertical-align:baseline"=
>DEFAULTTUNE_virtclass-multilib-lib32 =3D &quot;x86&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">IMAGE_INSTALL_append =3D &quot; openssh dpkg gnutls =
lib32-glibc lib32-libgcc lib32-libstdc&#43;&#43; lib32-gnutls lib32-freetyp=
e lib32-libx11 lib32-ncurses lib32-dpkg lsof cronie logrotate lib32-libxml2=
 screen mg eudev libudev s&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">EXTRA_IMAGE_FEATURES ?=3D &quot; ssh-server-openssh =
debug-tweaks tools-debug &quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When I ran the following command: bitbake -c populat=
e_sdk core-image-minimal, it fails with the following..<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Some packages could not be installed. This may mean =
that you have<o:p></o:p></p>
<p class=3D"MsoNormal">requested an impossible situation or if you are usin=
g the unstable<o:p></o:p></p>
<p class=3D"MsoNormal">distribution that some required packages have not ye=
t been created<o:p></o:p></p>
<p class=3D"MsoNormal">or been moved out of Incoming.<o:p></o:p></p>
<p class=3D"MsoNormal">The following information may help to resolve the si=
tuation:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The following packages have unmet dependencies:<o:p>=
</o:p></p>
<p class=3D"MsoNormal">lib32-packagegroup-core-standalone-sdk-target : Depe=
nds: lib32-glibc-gconv-cp1252 but it is not installable<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; Depends: lib32-glibc-gconv-ibm850 but it is not installable<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; Depends: lib32-glibc-gconv-iso8859-1 but it is not installable<=
o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; Depends: lib32-glibc-gconv-iso8859-15 but it is not installable=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; Depends: lib32-glibc-localedata-i18n but it is not installable<=
o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;Depends: lib32-libatomic-dev but it is not installable<o:p></o:=
p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; Depends: lib32-libatomic1 but it is not installable<o:p></o:p><=
/p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; Depends: lib32-libc6 but it is not installable<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; Depends: lib32-libc6-dbg but it is not installable<o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; Depends: lib32-libc6-dev but it is not installable<o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;Depends: lib32-libc6-thread-db but it is not installable<o:p></=
o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; Depends: lib32-libc6-utils but it is not installable<o:p></o:p>=
</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; Depends: lib32-libgcc-s-dev but it is not installable<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; Depends: lib32-libgcc1 but it is not installable<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; Depends: lib32-libsegfault but it is not installable<o:p></o:p>=
</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; Depends: lib32-libstdc&#43;&#43;-dev but it is not installable<=
o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; Depends: lib32-libstdc&#43;&#43;6 but it is not installable<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;Recommends: lib32-libssp-dev but it is not installable<o:p></o:=
p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; Recommends: lib32-libssp0 but it is not installable<o:p></o:p><=
/p>
<p class=3D"MsoNormal">E: Unable to correct problems, you have held broken =
packages.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Please help me in resolving this problem.. Appreciat=
e your efforts and time.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks and Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Jamal<o:p></o:p></p>
<p class=3D"MsoNormal">NCR Corporation<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DM5PR15MB1913471EC9EC1AB9E9A29923F0FD0DM5PR15MB1913namp_--
