Return-Path: <jeffrey.pautler@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 846F9E00C77; Thu,  5 Oct 2017 07:39:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.163.156.75 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1992 seconds by postgrey-1.32 at yocto-www;
	Thu, 05 Oct 2017 07:39:16 PDT
Received: from mx0b-00010702.pphosted.com (mx0a-00010702.pphosted.com
	[148.163.156.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54D21E00C1A
	for <yocto@yoctoproject.org>; Thu,  5 Oct 2017 07:39:16 -0700 (PDT)
Received: from pps.filterd (m0098781.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.21/8.16.0.21) with SMTP id
	v95E5sOZ016562; Thu, 5 Oct 2017 09:06:02 -0500
Received: from nam01-sn1-obe.outbound.protection.outlook.com
	(mail-sn1nam01lp0113.outbound.protection.outlook.com
	[207.46.163.113])
	by mx0a-00010702.pphosted.com with ESMTP id 2ddhfp1qcu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Thu, 05 Oct 2017 09:06:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nio365.onmicrosoft.com; s=selector1-ni-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=XSw/5Zi2hDfOUhhZbS5LIonbN7i4ZW89lbnVJsA4ijE=;
	b=K9Lofe3vrdj4gWvHm4YWDoBnHIr+ChBELeHkY0NceCIF8+Lb4kM5hlG6ZYNczioXxDXPFBMLHlne2BjkbiwAZk5gkmXwE8RJFKBG/GTHUVdDgph9Omf7sQLp1jThc81LgkjOjjIuEc2SxALcXibKCa51mkIAAbrf1y8k2dq46gY=
Received: from DM2PR0401MB1295.namprd04.prod.outlook.com (10.160.218.17) by
	DM2PR0401MB1296.namprd04.prod.outlook.com (10.160.218.18) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.7; Thu, 5 Oct 2017 14:06:00 +0000
Received: from DM2PR0401MB1295.namprd04.prod.outlook.com
	([fe80::5040:2c84:f7e3:d856]) by
	DM2PR0401MB1295.namprd04.prod.outlook.com
	([fe80::5040:2c84:f7e3:d856%16]) with mapi id 15.20.0077.018;
	Thu, 5 Oct 2017 14:06:00 +0000
From: Jeffrey Pautler <jeffrey.pautler@ni.com>
To: "opkg-devel@googlegroups.com" <opkg-devel@googlegroups.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [opkg-utils PATCH] opkg.py: Remove reformatting of description
	field
Thread-Index: AdM94rqTyFwvFCQiRteCnDYnhPVjAA==
Date: Thu, 5 Oct 2017 14:05:59 +0000
Message-ID: <DM2PR0401MB12950A2DEEDA65AD88CDD7F096700@DM2PR0401MB1295.namprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [130.164.62.168]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM2PR0401MB1296;
	6:X34RVRbN+uTbGK58lqPzO27e0Oksr6UPAEfT5bBUuahAx8Mb0SohYdrmP024PaVcs2aKn46BPqjDn9WEFWVJfHqPLib0F7Ef6CvJonj8kPb/vX52jhE0IiNZ2GEIqxJX0Uy/5Prg05B89doCcDlnhflt1V7Qtzx2MivazMVBDEV3vMQfE8wXKXjeMM1MHwP9OlnHM2Ap79vhCUK36nzkTEuQVWX0PIZhVIMcnnoC7/aQVsPaeWtqy1BE+Cl0M/NASFfZIcTye+1RPVm1vOh/a+uD/re8h+AceJXqCOpdDM8KCMsO0oXxvt5chrz2H3pbtFzp8zCmm8Mt0u99EOLOwg==;
	5:l6wRPBGcZIkDJeH0aYaPcGjH1q+K8927iPNkCYbPkiPU+hTvt7Bk2C15bkFo4ypXQgY5jt4ZD/Io9jWZcDHYDb7vs5AqD6jlQ0uQg32oQPt4w3sn8/eHhjFnLLwGQLMr/bimgR9+67+RLLoADsz7eg==;
	24:bI0soXvooKLSk9RVNvCKGMi8sNFkIosdk8dDoiiFCo0yuRTDxWRe3TvElQ5ho2DVFPFG26PFmo7zKGRUkrWIrxX944nBIytGWGTGyYQhioA=;
	7:1UTjbkHJ/I4pqnDlFvCCCXyRexcfkEySj1TvjpJmudydDI4JxaozQXi8NxaNDHrq9ApqrbOlOYdplD4cavo9kvLQmA/jtBuGruRa44HsMBRpqd4y5eHx4IMOXxXm7yhi33w82J0ZsRInW0BA7Vp2vzTkNkew236bhKWtWSJAYQ54bsLnB02/DduF8O++TO64lZfv5CwkZ0Wmp5zt/63okOPF9UY/lKUFOYSAoBBclBs=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: e80d639d-6498-4f02-e666-08d50bfa34ff
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254152)(2017052603199)(201703131423075)(201703031133081)(201702281549075);
	SRVR:DM2PR0401MB1296; 
x-ms-traffictypediagnostic: DM2PR0401MB1296:
x-exchange-antispam-report-test: UriScan:(21748063052155)(145744241990776);
x-microsoft-antispam-prvs: <DM2PR0401MB1296D823DF5336B94A98C36996700@DM2PR0401MB1296.namprd04.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(93006095)(93001095)(10201501046)(3002001)(100000703101)(100105400095)(6041248)(20161123558100)(20161123555025)(20161123562025)(20161123564025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123560025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:DM2PR0401MB1296; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:DM2PR0401MB1296; 
x-forefront-prvs: 04519BA941
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(376002)(346002)(189002)(50944005)(288314003)(199003)(3660700001)(7736002)(3846002)(25786009)(81166006)(97736004)(8936002)(478600001)(8676002)(81156014)(74316002)(5250100002)(68736007)(790700001)(66066001)(6506006)(2501003)(6116002)(3280700002)(102836003)(2906002)(6436002)(316002)(2900100001)(54356999)(86362001)(55016002)(575784001)(189998001)(54896002)(14454004)(53936002)(106356001)(99286003)(105586002)(110136005)(5660300001)(7696004)(101416001)(6306002)(50986999)(33656002)(9686003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM2PR0401MB1296;
	H:DM2PR0401MB1295.namprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: ni.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2017 14:05:59.9989 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR0401MB1296
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2017-10-05_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy
	score=30
	priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0
	bulkscore=0
	spamscore=0 clxscore=1011 lowpriorityscore=0 impostorscore=0
	adultscore=0
	classifier=spam adjust=30 reason=mlx scancount=1
	engine=8.0.1-1707230000 definitions=main-1710050198
Subject: [opkg-utils PATCH] opkg.py: Remove reformatting of description field
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
X-List-Received-Date: Thu, 05 Oct 2017 14:39:18 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM2PR0401MB12950A2DEEDA65AD88CDD7F096700DM2PR0401MB1295_"

--_000_DM2PR0401MB12950A2DEEDA65AD88CDD7F096700DM2PR0401MB1295_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

The Debian Policy Manual describes the format of the description field.
This includes information about how lines might be wrapped by programs
displaying this information, how to mark lines to not be wrapped, how
to mark a line as blank, and how leading spaces on a multi-line
description might be deleted.

By reformatting the description field in opkg.py, we are breaking many
of these behaviors and taking control of formatting away from the
author of the control file. Instead, we should simply copy the
description field with no reformatting.

Signed-off-by: Jeffrey Pautler <jeffrey.pautler@ni.com>
---
opkg.py | 8 ++------
1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/opkg.py b/opkg.py
index 9131755..c0cdcd5 100644
--- a/opkg.py
+++ b/opkg.py
@@ -230,7 +230,7 @@ class Package(object):
                 name =3D lineparts.group(1).lower()
                 value =3D lineparts.group(2)
                 while 1:
-                    line =3D control.readline()
+                    line =3D control.readline().rstrip()
                     if not line: break
                     if line[0] !=3D ' ': break
                     value =3D value + '\n' + line
@@ -480,11 +480,7 @@ class Package(object):
         if self.installed_size: out =3D out + "InstalledSize: %d\n" % int(=
self.installed_size)
         if self.filename: out =3D out + "Filename: %s\n" % (self.filename)
         if self.source: out =3D out + "Source: %s\n" % (self.source)
-        if self.description:
-            printable_description =3D textwrap.dedent(self.description).st=
rip()
-            summary =3D printable_description.split('\n', 1)[0]
-            printable_description =3D printable_description.split('\n', 1)=
[-1].strip()
-            out =3D out + "Description: %s\n%s\n" % (summary, textwrap.fil=
l(printable_description, width=3D74, initial_indent=3D' ', subsequent_inden=
t=3D' '))
+        if self.description: out =3D out + "Description: %s\n" % (self.des=
cription)
         if self.oe: out =3D out + "OE: %s\n" % (self.oe)
         if self.homepage: out =3D out + "HomePage: %s\n" % (self.homepage)
         if self.license: out =3D out + "License: %s\n" % (self.license)
--
2.7.4

--_000_DM2PR0401MB12950A2DEEDA65AD88CDD7F096700DM2PR0401MB1295_
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
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">The Debian Policy Manual describes the format of the descrip=
tion field.<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">This includes information about how lines might be wrapped b=
y programs<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">displaying this information, how to mark lines to not be wra=
pped, how<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">to mark a line as blank, and how leading spaces on a multi-l=
ine<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">description might be deleted.<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">By reformatting the description field in opkg.py, we are bre=
aking many<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">of these behaviors and taking control of formatting away fro=
m the<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">author of the control file. Instead, we should simply copy t=
he<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">description field with no reformatting.<o:p></o:p></span></f=
ont></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">Signed-off-by: Jeffrey Pautler &lt;jeffrey.pautler@ni.com&gt=
;<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">---<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">opkg.py | 8 &#43;&#43;------<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">1 file changed, 2 insertions(&#43;), 6 deletions(-)<o:p></o:=
p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">diff --git a/opkg.py b/opkg.py<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">index 9131755..c0cdcd5 100644<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">--- a/opkg.py<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&#43;&#43; b/opkg.py<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">@@ -230,7 &#43;230,7 @@ class Package(object):<o:p></o:p></s=
pan></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; name =3D lineparts.group(1).lower()<o:=
p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; value =3D lineparts.group(2)<o:p></o:p=
></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; while 1:<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; line =3D control.re=
adline()<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; line =3D contro=
l.readline().rstrip()<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if not line: b=
reak<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if line[0] !=
=3D ' ': break<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; value =3D valu=
e &#43; '\n' &#43; line<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">@@ -480,11 &#43;480,7 @@ class Package(object):<o:p></o:p></=
span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if self.ins=
talled_size: out =3D out &#43; &quot;InstalledSize: %d\n&quot; % int(self.i=
nstalled_size)<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if self.fil=
ename: out =3D out &#43; &quot;Filename: %s\n&quot; % (self.filename)<o:p><=
/o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if self.sou=
rce: out =3D out &#43; &quot;Source: %s\n&quot; % (self.source)<o:p></o:p><=
/span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if self.descript=
ion:<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; printable_description =3D textwrap.dedent(self.description).strip()=
<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; summary =3D printable_description.split('\n', 1)[0]<o:p></o:p></spa=
n></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; printable_description =3D printable_description.split('\n', 1)[-1].=
strip()<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; out =3D out &#43; &quot;Description: %s\n%s\n&quot; % (summary, tex=
twrap.fill(printable_description, width=3D74, initial_indent=3D' ', subsequ=
ent_indent=3D' '))<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if self.desc=
ription: out =3D out &#43; &quot;Description: %s\n&quot; % (self.descriptio=
n)<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if self.oe:=
 out =3D out &#43; &quot;OE: %s\n&quot; % (self.oe)<o:p></o:p></span></font=
></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if self.hom=
epage: out =3D out &#43; &quot;HomePage: %s\n&quot; % (self.homepage)<o:p><=
/o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if self.lic=
ense: out =3D out &#43; &quot;License: %s\n&quot; % (self.license)<o:p></o:=
p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">--
<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">2.7.4<o:p></o:p></span></font></p>
</div>
</body>
</html>

--_000_DM2PR0401MB12950A2DEEDA65AD88CDD7F096700DM2PR0401MB1295_--
