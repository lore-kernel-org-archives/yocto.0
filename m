Return-Path: <MohammadJamal.Mohiuddin@ncr.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 155D6E00C1B; Wed,  7 Nov 2018 01:38:25 -0800 (PST)
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
	*      [148.163.148.55 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.7 KHOP_DYNAMIC Relay looks like a dynamic address
Received: from mx0a-00209e01.pphosted.com (mx0a-00209e01.pphosted.com
	[148.163.148.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED9F9E00C10
	for <yocto@yoctoproject.org>; Wed,  7 Nov 2018 01:38:22 -0800 (PST)
Received: from pps.filterd (m0131213.ppops.net [127.0.0.1])
	by mx0b-00209e01.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	wA79YWWe017714; Wed, 7 Nov 2018 04:38:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ncr.com;
	h=from : to : subject :
	date : message-id : references : in-reply-to : content-type :
	mime-version; s=mail; bh=IhmLXGbjam++eybCVuaEZy4VJ/FPXMYT+72Bh+ZZw4c=; 
	b=otOwsxlAOqnoBsKLfpvcvunB4Y7sWHAkBh5DfkxQCXuUmN25gFbC3fsqGwWdkGTe8ki8
	aKPPox7RuBsd1DNNrW+hl7cJtzuMGh1g4EP1a8kmVd9rW344GinyIpeVSvkF29ci1iXx
	62gtRfkaTWFTkDEUyBp+OuCAHzKgbrwuRTBj3RSKsa7JXSGo0+ceE7cHNMckx+dTWfbn
	P6sg0cbzzWaI6Z9HpTvByfAwnQ0iknII41EMIoBpRW7N/YGG7PNE49Rt0wWVdlcQSBjI
	GUzVNw7befOLuLzaV6NGtaYgSkwkBMOL7Suu6xnF7vhU0Zed4V1tbewAuvC7J+YhNGFE
	VQ== 
Received: from nam04-bn3-obe.outbound.protection.outlook.com
	(mail-bn3nam04lp0115.outbound.protection.outlook.com
	[216.32.180.115])
	by mx0b-00209e01.pphosted.com with ESMTP id 2nkv1egg0p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Wed, 07 Nov 2018 04:38:21 -0500
Received: from DM5PR15MB1913.namprd15.prod.outlook.com (10.174.247.141) by
	DM5PR15MB1532.namprd15.prod.outlook.com (10.173.222.135) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1294.26; Wed, 7 Nov 2018 09:38:19 +0000
Received: from DM5PR15MB1913.namprd15.prod.outlook.com
	([fe80::7d1f:70f2:7b3a:ef41]) by
	DM5PR15MB1913.namprd15.prod.outlook.com
	([fe80::7d1f:70f2:7b3a:ef41%5]) with mapi id 15.20.1294.034;
	Wed, 7 Nov 2018 09:38:19 +0000
From: "Mohammad, Jamal M" <MohammadJamal.Mohiuddin@ncr.com>
To: ChenQi <Qi.Chen@windriver.com>, Yocto-mailing-list <yocto@yoctoproject.org>
Thread-Topic: [yocto] lib32-ncurses not installing in rootfs
Thread-Index: AdR2evPOy7Ra1pToQYKtScxdl/2mjQAAgmYAAAASdhA=
Date: Wed, 7 Nov 2018 09:38:19 +0000
Message-ID: <DM5PR15MB19136741E6F723877E25D769F0C40@DM5PR15MB1913.namprd15.prod.outlook.com>
References: <DM5PR15MB1913AB2A45AB39D4E13747C0F0C40@DM5PR15MB1913.namprd15.prod.outlook.com>
	<4bdb31ad-0680-364f-e03a-adb208843b0c@windriver.com>
In-Reply-To: <4bdb31ad-0680-364f-e03a-adb208843b0c@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Enabled=True;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_SiteId=ae4df1f7-611e-444f-897e-f964e1205171;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Owner=mm185399@ncr.com; 
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_SetDate=2018-11-07T09:38:15.8564805Z;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Name=Confidential;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Application=Microsoft
	Azure Information Protection;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Extended_MSFT_Method=Manual;
	Sensitivity=Confidential
x-originating-ip: [124.123.53.238]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM5PR15MB1532;
	6:+IcXb3VB/Wx9Wuw94LUprwOiYZ6RzscYWaNi+P4C4iJNDSUsiRHsKPDfF5dafA6MKsARp9durehoU+NSUF8NxtyOKUvL31A3bZ4vpGtFbKnnrtP8N0ODagqu3JJaT9Sc5FPg5OcxvEjWd8bvQeEMDD3yt8pjXLzEzDHQ6SI28myVDeueE8RjBoQcnZ8Ot+QIpzp9RSgElgRu1wzmioJaq3FEJDlXelUTyHb3eh5xVqr2Ev4LYhYVo+QYNcer3UIENEezWIt5AyabZzk7hLwDlI7AEs3REJv8x5tRuslDgHCh3JNw2TtUD/uxX+5ay+x7MFM78ipQMvLLIFJkYrg9R4W0SgNJYRmoTBCjaBNAmKzctQNZpkouTQGVvNvK5fsxEVvOzUJqCv35pdh2Tqc/gi5scQ/+Nx0tUQj3PuMZ/tf8txEMY/gXn4EonfnCMyanPuDDfD0lMLhz33MAR3gdKQ==;
	5:5OiO8Rp3efRkgwhnKida6H7Ag1/XM4gKygcvKxyh3ftIUOMqW1Git9t9vsLSQ9uyAweEL1/nmhtbEUvAPh3zPY02Ljow7nwovYyfXmxxrb8wlyJTrdprweeM8gz/NH4IHM22v3zFfdZWLTGKFEcrbGFcJzR1GnViD0wQL+5LzPY=;
	7:AI+6RW3FLfoepv5AD5XHxZo5uSVUK/5VHWqxFAiSzkkAOAZBdx9ZgJx7UAQBRJDo/E0GgBOvsUX2O9oR0EitblFrIfRI7cVb596jKkfTmrAkY2tscue5FAua7QWpxrG6ZhSCGZV8l1185rvF0NAdqA==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: efe76c3a-5854-40f9-3894-08d64494c0b5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989299)(5600074)(711020)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:DM5PR15MB1532; 
x-ms-traffictypediagnostic: DM5PR15MB1532:
x-from-ncr-tenant: Processed
x-microsoft-antispam-prvs: <DM5PR15MB15325639C853658E69E7DC3AF0C40@DM5PR15MB1532.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(17755550239193)(110640500709094)(21748063052155)(28532068793085)(190501279198761)(227612066756510);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(10201501046)(3002001)(3231382)(944501410)(52105095)(93006095)(93001095)(6055026)(148016)(149066)(150057)(6041310)(20161123564045)(20161123558120)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(201708071742011)(7699051)(76991095);
	SRVR:DM5PR15MB1532; BCL:0; PCL:0; RULEID:; SRVR:DM5PR15MB1532; 
x-forefront-prvs: 08497C3D99
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(136003)(366004)(396003)(346002)(39860400002)(376002)(189003)(199004)(476003)(790700001)(72206003)(446003)(316002)(106356001)(33656002)(53546011)(6506007)(6116002)(3846002)(6246003)(8676002)(2900100001)(11346002)(86362001)(66066001)(110136005)(14454004)(8936002)(5660300001)(6436002)(486006)(78486014)(229853002)(99286004)(186003)(256004)(5024004)(105586002)(54896002)(55016002)(81156014)(68736007)(9686003)(7696005)(76176011)(2906002)(6306002)(81166006)(71200400001)(25786009)(74316002)(102836004)(26005)(53936002)(71190400001)(7736002)(97736004)(478600001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR15MB1532;
	H:DM5PR15MB1913.namprd15.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ncr.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: FNQQOgHw3DZa2bsw/aRdLUBUE/CAqqh4kqUT1d42Q7AHrMAb9nNzbgcJutDjuunlPX7mdWJIVOjv82JEolY1TT+YjXisobfgec6z9H5OJVRftFfttH15ChkWTSdHbhVRX7/zjufiJUq7rGOgHzcLf4vMbu8gyBcq1XTESLjGeyo1TU/P9KnMxLmt6vQR2DRrO/KXTBm0AEaITv2Cn5gDSfPFUmJl14eKe6R+6koPLRtRgtwBo/g/7zSwd2l5bqWRRuqBKhh8bO+Cfc4K077Xv+iJF0Xa6GgafWi2Qd1wiZjUBRqD4cMMJGQCKNXWS0Oy/MTNySt6n7btddBb7f+//0K2/8ziSNI4yZgt60mEnvE=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: ncr.com
X-MS-Exchange-CrossTenant-Network-Message-Id: efe76c3a-5854-40f9-3894-08d64494c0b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2018 09:38:19.6803 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ae4df1f7-611e-444f-897e-f964e1205171
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR15MB1532
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-11-07_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1807170000 definitions=main-1811070088
Subject: Re: lib32-ncurses not installing in rootfs
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
X-List-Received-Date: Wed, 07 Nov 2018 09:38:25 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR15MB19136741E6F723877E25D769F0C40DM5PR15MB1913namp_"

--_000_DM5PR15MB19136741E6F723877E25D769F0C40DM5PR15MB1913namp_
Content-Type: text/plain; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

There are many directories inside packages-split folder , lib32-ncurses, li=
b32-ncurses-dbg, lib32-ncurses-dev, lib32-ncurses-doc

Looking into lib32-ncurses,

lib32-ncurses
=84=80=80 usr
    =86=80=80 bin
    =81   =86=80=80 tput
    =81   =84=80=80 tset
    =84=80=80 share
        =84=80=80 tabset
            =86=80=80 std
            =86=80=80 stdcrt
            =86=80=80 vt100
            =84=80=80 vt300

It doesn't have lib folder, so where are the libncurses.so missing..

From: ChenQi [mailto:Qi.Chen@windriver.com]
Sent: Wednesday, November 7, 2018 3:04 PM
To: Mohammad, Jamal M <MohammadJamal.Mohiuddin@ncr.com>; Yocto-mailing-list=
 <yocto@yoctoproject.org>
Subject: Re: [yocto] lib32-ncurses not installing in rootfs

*External Message* - Use caution before opening links or attachments


Check the packages-split/ directory to see how files are put in each packag=
e.
I guess these files are packages into other packages derived from the ncurs=
es recipe.

Best Regards,
Chen Qi

On 11/07/2018 05:21 PM, Mohammad, Jamal M wrote:
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





--_000_DM5PR15MB19136741E6F723877E25D769F0C40DM5PR15MB1913namp_
Content-Type: text/html; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dkoi8-r">
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
	font-family:"Calibri",sans-serif;
	color:black;}
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
	font-family:"Courier New";
	color:black;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle23
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
<body bgcolor=3D"white" lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:windowtext">There are many dire=
ctories inside packages-split folder , lib32-ncurses, lib32-ncurses-dbg, li=
b32-ncurses-dev, lib32-ncurses-doc<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">Looking into lib32-=
ncurses,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">lib32-ncurses<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">=84=80=80 usr<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">&nbsp;&nbsp;&nbsp; =
</span><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:window=
text">=86</span><span style=3D"color:windowtext">=80=80</span><span style=
=3D"color:windowtext"> bin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">&nbsp;&nbsp;&nbsp; =
=81&nbsp;&nbsp; </span><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:windowtext">=86</span><span style=3D"color:windowtext">=80=80</sp=
an><span style=3D"color:windowtext"> tput<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">&nbsp;&nbsp;&nbsp; =
=81&nbsp;&nbsp; =84=80=80 tset<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">&nbsp;&nbsp;&nbsp; =
=84=80=80 share<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; =84=80=80 tabset<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=3D"font-=
family:&quot;Arial&quot;,sans-serif;color:windowtext">=86</span><span style=
=3D"color:windowtext">=80=80</span><span style=3D"color:windowtext"> std<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=3D"font-=
family:&quot;Arial&quot;,sans-serif;color:windowtext">=86</span><span style=
=3D"color:windowtext">=80=80</span><span style=3D"color:windowtext"> stdcrt=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=3D"font-=
family:&quot;Arial&quot;,sans-serif;color:windowtext">=86</span><span style=
=3D"color:windowtext">=80=80</span><span style=3D"color:windowtext"> vt100<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =84=80=80 vt300<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">It doesn&#8217;t ha=
ve lib folder, so where are the libncurses.so missing..
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>&nbsp;</o:p></=
span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"color:windowtext">From:</span></b>=
<span style=3D"color:windowtext"> ChenQi [mailto:Qi.Chen@windriver.com]
<br>
<b>Sent:</b> Wednesday, November 7, 2018 3:04 PM<br>
<b>To:</b> Mohammad, Jamal M &lt;MohammadJamal.Mohiuddin@ncr.com&gt;; Yocto=
-mailing-list &lt;yocto@yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] lib32-ncurses not installing in rootfs<o:p></o:=
p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"3" cellpadding=
=3D"0" style=3D"background:yellow">
<tbody>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b>*External Message* - Use caution before opening l=
inks or attachments</b><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Check the packages-split/ directory to see how files=
 are put in each package.<br>
I guess these files are packages into other packages derived from the ncurs=
es recipe.<br>
<br>
Best Regards,<br>
Chen Qi<br>
<br>
On 11/07/2018 05:21 PM, Mohammad, Jamal M wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">Hi Guys,<o:p></o:p></p>
<p class=3D"MsoNormal">I am trying to add 32-bit ncurses into my root file =
system<o:p></o:p></p>
<p class=3D"MsoNormal">I am using intel yocto bsp sumo branch<o:p></o:p></p=
>
<p class=3D"MsoNormal">Here is my local.conf:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">require conf/multilib.conf<o:p></o:p></p>
<p class=3D"MsoNormal">DEFAULTTUNE_virtclass-multilib-lib32 =3D &quot;x86&q=
uot;<o:p></o:p></p>
<p class=3D"MsoNormal">IMAGE_INSTALL_append =3D &quot; dpkg gnutls lib32-gl=
ibc lib32-libgcc lib32-libstdc&#43;&#43; lib32-gnutls lib32-freetype lib32&=
nbsp;&nbsp;&nbsp; -libx11 lib32-ncurses lib32-dpkg python3-six&quot;<o:p></=
o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">ncurses folder is present in tmp<o:p></o:p></p>
<p class=3D"MsoNormal">build/tmp/work/x86-pokymllib32-linux/lib32-ncurses/6=
.0&#43;20171125-r0<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">The image folder is created and has the libraries<o:=
p></o:p></p>
<p class=3D"MsoNormal">build/tmp/work/x86-pokymllib32-linux/lib32-ncurses/6=
.0&#43;20171125-r0/image/lib<o:p></o:p></p>
<p class=3D"MsoNormal">libncurses.so.5&nbsp; libncurses.so.5.9&nbsp; libncu=
rsesw.so.5&nbsp; libncursesw.so.5.9&nbsp; libtinfo.so.5&nbsp; libtinfo.so.5=
.9<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">But these files are not present in root file system.=
<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"font-variant-ligatures:
          normal;font-variant-caps: normal;font-variant-numeric:
          inherit;font-variant-east-asian: inherit;font-stretch:
          inherit;line-height:inherit;box-sizing: inherit;orphans:
          2;widows: 2;-webkit-text-stroke-width:
          0px;text-decoration-style: initial;text-decoration-color:
          initial;word-spacing:0px">
How can i debug or what should be my next step to get them into root file s=
ystem. which log files should I look<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"font-variant-ligatures:
          normal;font-variant-caps: normal;font-variant-numeric:
          inherit;font-variant-east-asian: inherit;font-stretch:
          inherit;line-height:inherit;box-sizing: inherit;orphans:
          2;widows: 2;-webkit-text-stroke-width:
          0px;text-decoration-style: initial;text-decoration-color:
          initial;word-spacing:0px">
Thanks for your time.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Jamal,<o:p></o:p></p>
<p class=3D"MsoNormal">Software Specialist,<o:p></o:p></p>
<p class=3D"MsoNormal">NCR Corporation<o:p></o:p></p>
<p class=3D"MsoNormal"><br>
<br>
<o:p></o:p></p>
</blockquote>
<p><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DM5PR15MB19136741E6F723877E25D769F0C40DM5PR15MB1913namp_--
