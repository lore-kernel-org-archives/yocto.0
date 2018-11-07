Return-Path: <MohammadJamal.Mohiuddin@ncr.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51E95E009AA; Wed,  7 Nov 2018 02:29:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,KHOP_DYNAMIC,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
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
	*  0.7 KHOP_DYNAMIC Relay looks like a dynamic address
Received: from mx0a-00209e01.pphosted.com (mx0a-00209e01.pphosted.com
	[148.163.148.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08B60E00950
	for <yocto@yoctoproject.org>; Wed,  7 Nov 2018 02:29:57 -0800 (PST)
Received: from pps.filterd (m0131213.ppops.net [127.0.0.1])
	by mx0b-00209e01.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	wA7AO3dP005258; Wed, 7 Nov 2018 05:29:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ncr.com;
	h=from : to : subject :
	date : message-id : references : in-reply-to : content-type :
	mime-version; s=mail; bh=tiNpPCG/m1ODqywIPefjfXelXHiNGrbeLbcyNjXibtk=; 
	b=pPL/i/LQfKVSBlda9MTxFt5u8txeg8xu82rgHiFsb89uO5XpHHEdv1uIrBGsbRvY2b4A
	5Hj9xyqx/0KeL9oJsyA7Gsk40Bv5rIIfXMzaF0A5bv0RkUgWE+kBEMIPlSCtjlB1pNxw
	1vQFhyDfWxQJ6QdDcH5wEYfqIoHuCpB3ugT1otxZa7bwjHdclxk4JsLgp6R7DEb0LU1m
	2Ap9oW16Ou1OFt2Mw7dYUmq9VHJrUSridShd98uWbfzp0ORuENQv7uAcV2pEgHkCp9P/
	xe5PYtNj1rcZ/dCEQh5is2n3W7BnwBw210jvdUIJxDTGFVydLCRRbPPsfZUyNACMuPvX
	hQ== 
Received: from nam04-co1-obe.outbound.protection.outlook.com
	(mail-co1nam04lp0049.outbound.protection.outlook.com [216.32.181.49])
	by mx0b-00209e01.pphosted.com with ESMTP id 2nkv1egrac-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Wed, 07 Nov 2018 05:29:56 -0500
Received: from DM5PR15MB1913.namprd15.prod.outlook.com (10.174.247.141) by
	DM5PR15MB1337.namprd15.prod.outlook.com (10.173.210.15) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1294.27; Wed, 7 Nov 2018 10:29:55 +0000
Received: from DM5PR15MB1913.namprd15.prod.outlook.com
	([fe80::7d1f:70f2:7b3a:ef41]) by
	DM5PR15MB1913.namprd15.prod.outlook.com
	([fe80::7d1f:70f2:7b3a:ef41%5]) with mapi id 15.20.1294.034;
	Wed, 7 Nov 2018 10:29:55 +0000
From: "Mohammad, Jamal M" <MohammadJamal.Mohiuddin@ncr.com>
To: ChenQi <Qi.Chen@windriver.com>, Yocto-mailing-list <yocto@yoctoproject.org>
Thread-Topic: [yocto] lib32-ncurses not installing in rootfs
Thread-Index: AdR2evPOy7Ra1pToQYKtScxdl/2mjQAAgmYAAAASdhAAAdaTEA==
Date: Wed, 7 Nov 2018 10:29:55 +0000
Message-ID: <DM5PR15MB1913C273D40F5C0B96F89AB1F0C40@DM5PR15MB1913.namprd15.prod.outlook.com>
References: <DM5PR15MB1913AB2A45AB39D4E13747C0F0C40@DM5PR15MB1913.namprd15.prod.outlook.com>
	<4bdb31ad-0680-364f-e03a-adb208843b0c@windriver.com>
	<DM5PR15MB19136741E6F723877E25D769F0C40@DM5PR15MB1913.namprd15.prod.outlook.com>
In-Reply-To: <DM5PR15MB19136741E6F723877E25D769F0C40@DM5PR15MB1913.namprd15.prod.outlook.com>
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
x-microsoft-exchange-diagnostics: 1; DM5PR15MB1337;
	6:ejAvHZeCyXKX3uqHvD2GCUgfc6mQxOs7SbKL6ywAWKRNTKyStAJf0RpqZLM4idZYdikHf5mXf1Xf7VSu1Qeqbjy3wrneGN1BdIacyG7j2HmNyZ4RV6m0H7FRnm0Oa2P7zpapGs0OemGFqNjEeYJ+V9Qp93Ss+F+4RyFEf4MgQgfl36OtMzEc9LZCahX/SeMmWTxV0fcHFhjWnyCKh8uv+SPNJq59CVRPosUqqutSdE5eD2/6DYZxhopAg/8fehmgfjRPeIUN4NOBVmR6AwDzXEXMjNl+xu5EOWFemPAC9mufH1ASznS4hNeuxm0xem9mfdirYYHShih+kXEQl4yo2Zz1qMiyV9XsyzKcOG128OSR3Gh55uiN0hz6eV0iLwTzE4Xz6OM2v3dStZtbhlrJ/ydIQC+xahXlEUEZrvyK74d+5YcM9+yJhvmI58C1XM96vSfLgGsOTSIgiQx/0ol/3A==;
	5:7CeJ0NNxVLhnPQI9QpiLAc2PsWNbcWYYwaOXRSsAFKyQr+VHVw8ceHmWKzBG0Zgl0ePPtaXuET7fiNvhKrq9lAY6cCpl9Ad9JR0XjHLD0xbUiRapthTaF1NfgPtoRNnG+jRkXj/kxTexr4NTfTAoZ8NTVhf4zk+2UGO1ExBc//o=;
	7:KWiSCdf9Y64h9SS0/sR9WXA/FTkvTgym7hdYUnLoh07KAkNwTTRhAyxxHH5SfxakYCWmTHfKFrj1PVq4c6EANtQakZ4afDBKnm8s7KJ56ByU6mPXqQj5+d5IXR7JpBD4XlEJ+7U3fiHC25cJceB1Ww==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 6cc1fe27-739f-43de-e7c0-08d6449bf5dc
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989299)(5600074)(711020)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:DM5PR15MB1337; 
x-ms-traffictypediagnostic: DM5PR15MB1337:
x-from-ncr-tenant: Processed
x-microsoft-antispam-prvs: <DM5PR15MB133733885DE1530EB1176A0FF0C40@DM5PR15MB1337.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(17755550239193)(110640500709094)(21748063052155)(28532068793085)(190501279198761)(227612066756510);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(3231382)(944501410)(52105095)(3002001)(10201501046)(93006095)(93001095)(6055026)(148016)(149066)(150057)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(20161123560045)(20161123564045)(20161123558120)(201708071742011)(7699051)(76991095);
	SRVR:DM5PR15MB1337; BCL:0; PCL:0; RULEID:; SRVR:DM5PR15MB1337; 
x-forefront-prvs: 08497C3D99
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(396003)(366004)(376002)(39860400002)(136003)(346002)(199004)(189003)(229853002)(86362001)(446003)(68736007)(93156006)(105586002)(71200400001)(106356001)(71190400001)(7696005)(476003)(72206003)(6246003)(2906002)(486006)(478600001)(78486014)(5660300001)(2900100001)(6436002)(97736004)(316002)(2940100002)(11346002)(54896002)(55016002)(99286004)(102836004)(186003)(256004)(110136005)(9686003)(236005)(6306002)(7736002)(5024004)(8936002)(8676002)(81166006)(81156014)(53936002)(76176011)(3846002)(26005)(74316002)(33656002)(66066001)(25786009)(53546011)(6506007)(14454004)(6116002)(790700001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR15MB1337;
	H:DM5PR15MB1913.namprd15.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ncr.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: Q6ZEtHBy5uDZGlRnyhDzx7kJ2F2wMaIzyXc1ieiJKdzXMkdi9yuiFJGrib8VXH7dfTzhrx5PP7MdV3wJeUy+AnZ4iPFtZ3QYil/IQcP2r6z5c0eu8i4bfyW/a0eC8guuV2umBXEKSzXT50VYVZFs+rDHuLQ85i7n8O9HrIHeNQbQ2NyhvjTMW7mXdwhQks3iJx37IR+ABSSf1ofk4nHRwE6f7v4W8fxOdiqtgxTkRtbEc89BI993Y8LHT6waCv3z5SulAlexweYjpgXoYJFFCCd6G86ha8cghnREGzO2PKNAQwu6PVIBNWL3EybQaj82yac3lvDFUZGaJGGfuGxW5jT01fm4z+4bnufY1nJxwT8=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: ncr.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cc1fe27-739f-43de-e7c0-08d6449bf5dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2018 10:29:55.3527 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ae4df1f7-611e-444f-897e-f964e1205171
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR15MB1337
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-11-07_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1807170000 definitions=main-1811070096
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
X-List-Received-Date: Wed, 07 Nov 2018 10:29:59 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR15MB1913C273D40F5C0B96F89AB1F0C40DM5PR15MB1913namp_"

--_000_DM5PR15MB1913C273D40F5C0B96F89AB1F0C40DM5PR15MB1913namp_
Content-Type: text/plain; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

I see libncurses.so file in ncurses-dev folder in packages-split folder.. D=
o I need to add lib32-ncurses-dev in local.conf

From: Mohammad, Jamal M
Sent: Wednesday, November 7, 2018 3:08 PM
To: 'ChenQi' <Qi.Chen@windriver.com>; Yocto-mailing-list <yocto@yoctoprojec=
t.org>
Subject: RE: [yocto] lib32-ncurses not installing in rootfs

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
To: Mohammad, Jamal M <MohammadJamal.Mohiuddin@ncr.com<mailto:MohammadJamal=
.Mohiuddin@ncr.com>>; Yocto-mailing-list <yocto@yoctoproject.org<mailto:yoc=
to@yoctoproject.org>>
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




--_000_DM5PR15MB1913C273D40F5C0B96F89AB1F0C40DM5PR15MB1913namp_
Content-Type: text/html; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle25
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
<p class=3D"MsoNormal"><span style=3D"color:windowtext">I see libncurses.so=
 file in ncurses-dev folder in packages-split folder.. Do I need to add lib=
32-ncurses-dev in local.conf<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>&nbsp;</o:p></=
span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"color:windowtext">From:</span></b>=
<span style=3D"color:windowtext"> Mohammad, Jamal M
<br>
<b>Sent:</b> Wednesday, November 7, 2018 3:08 PM<br>
<b>To:</b> 'ChenQi' &lt;Qi.Chen@windriver.com&gt;; Yocto-mailing-list &lt;y=
octo@yoctoproject.org&gt;<br>
<b>Subject:</b> RE: [yocto] lib32-ncurses not installing in rootfs<o:p></o:=
p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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
text">=86</span><span style=3D"color:windowtext">=80=80 bin<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">&nbsp;&nbsp;&nbsp; =
=81&nbsp;&nbsp; </span><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:windowtext">=86</span><span style=3D"color:windowtext">=80=80 tpu=
t<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">&nbsp;&nbsp;&nbsp; =
=81&nbsp;&nbsp; =84=80=80 tset<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">&nbsp;&nbsp;&nbsp; =
=84=80=80 share<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; =84=80=80 tabset<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=3D"font-=
family:&quot;Arial&quot;,sans-serif;color:windowtext">=86</span><span style=
=3D"color:windowtext">=80=80 std<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=3D"font-=
family:&quot;Arial&quot;,sans-serif;color:windowtext">=86</span><span style=
=3D"color:windowtext">=80=80 stdcrt<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=3D"font-=
family:&quot;Arial&quot;,sans-serif;color:windowtext">=86</span><span style=
=3D"color:windowtext">=80=80 vt100<o:p></o:p></span></p>
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
<span style=3D"color:windowtext"> ChenQi [<a href=3D"mailto:Qi.Chen@windriv=
er.com">mailto:Qi.Chen@windriver.com</a>]
<br>
<b>Sent:</b> Wednesday, November 7, 2018 3:04 PM<br>
<b>To:</b> Mohammad, Jamal M &lt;<a href=3D"mailto:MohammadJamal.Mohiuddin@=
ncr.com">MohammadJamal.Mohiuddin@ncr.com</a>&gt;; Yocto-mailing-list &lt;<a=
 href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>&gt;<br>
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
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
</blockquote>
<p><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DM5PR15MB1913C273D40F5C0B96F89AB1F0C40DM5PR15MB1913namp_--
