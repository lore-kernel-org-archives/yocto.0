Return-Path: <jeffrey.pautler@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91A0EE00C44; Mon,  2 Oct 2017 12:43:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.163.158.57 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 312 seconds by postgrey-1.32 at yocto-www;
	Mon, 02 Oct 2017 12:43:10 PDT
Received: from mx0b-00010702.pphosted.com (mx0b-00010702.pphosted.com
	[148.163.158.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00438E00BB7
	for <yocto@yoctoproject.org>; Mon,  2 Oct 2017 12:43:10 -0700 (PDT)
Received: from pps.filterd (m0098779.ppops.net [127.0.0.1])
	by mx0b-00010702.pphosted.com (8.16.0.21/8.16.0.21) with SMTP id
	v92JZrYO004995; Mon, 2 Oct 2017 14:37:56 -0500
Received: from nam01-bn3-obe.outbound.protection.outlook.com
	(mail-bn3nam01lp0176.outbound.protection.outlook.com
	[216.32.180.176])
	by mx0b-00010702.pphosted.com with ESMTP id 2dburdg0mr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Mon, 02 Oct 2017 14:37:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nio365.onmicrosoft.com; s=selector1-ni-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=g7fjyNVBS4pqUxSc4z4UySg0U82ZCQf9iRQG8enjaFk=;
	b=hMRL0I3GQXdHywg/CkdGvFxUGv6Z8QdtrwZ6VpTobRifpJl0dSFUI9WbHuny6CKG//w0EopCWxl7GRjTtOvN7tB4psR8PDtMYGFbYKKqLsyeCAlCaOwcHBuwHEKHpea3vTu0obI97C3NW2+SgmYsmWvCT8tTp1HrEBQxjXlWH2Q=
Received: from DM2PR0401MB1295.namprd04.prod.outlook.com (10.160.218.17) by
	DM2PR0401MB1293.namprd04.prod.outlook.com (10.160.218.156) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.77.7;
	Mon, 2 Oct 2017 19:37:54 +0000
Received: from DM2PR0401MB1295.namprd04.prod.outlook.com
	([fe80::5040:2c84:f7e3:d856]) by
	DM2PR0401MB1295.namprd04.prod.outlook.com
	([fe80::5040:2c84:f7e3:d856%16]) with mapi id 15.20.0077.016;
	Mon, 2 Oct 2017 19:37:54 +0000
From: Jeffrey Pautler <jeffrey.pautler@ni.com>
To: "opkg-devel@googlegroups.com" <opkg-devel@googlegroups.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [opkg-utils PATCH] opkg.py: Fix run-time error in call to ArFile
Thread-Index: AdM7r8cs+kfxt1L2TW+L/9JUO1ZM3w==
Date: Mon, 2 Oct 2017 19:37:54 +0000
Message-ID: <DM2PR0401MB12954FB72F09E9F56E39C758967D0@DM2PR0401MB1295.namprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [130.164.62.168]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM2PR0401MB1293;
	6:jnaFV7lOMDRcBCU0oTPa8se5Z9fH/F6tT4BdCKxCkNN/eZGyq7B21yfl/RnNzr7EiMN6OAOOGm8EEJz4UiYuKsuJ+//GAdS8mdISiKURhu1XEJWmVVvKpLhMPuE9OAxrK9Gcibaq/3ErWkcJvZPIDojlc9fTxYmwj9vxFTtTE7TGW1thGaIewEKsxReWuDYn/7BisFQPHcQsNr8/u6eRpacQLrxLgY+UTEiC65NrlDralBwqNzXFKNYnBWM/kNAcfvVu8O/mQDIdIjz558Zr1a2Ar+uUeY3euhm6k+0ZFzL+th+SA+psFtjnQBJZguNDutVulUCHApZx0em7Kzy5kQ==;
	5:QNA5kB/XLNA2pyyvlLqZFy9BJeYeH1fHODX/Q8jzPiQ0gfibP+jNulV0Px/JzLwNZIF9P27BNKkLSs8/icfoP82xkEKa385pK3oo0k+vw3n6fjvTzZtzm8kH00AQQrrFJ8m7kdeofHhtHR+eEOmTVQ==;
	24:0m/4MxxTneiGY5et3puy4WDSKvQSl8Vc5lVLO8dY/rlu8c0eVW3jEw5aYXDIdOOi7+mpPzanwRN2ClLmeWR/35uCA5VmXECAe7x/hA/8+DI=;
	7:H3ueoWsbvAtFRk1aUraryIdnQR/5rBDUs+umCnG/5WMjLlJUz2LCDNvRJaf0STdPZMN0bktOymz2xh7kzAlDd/grg140afAZEUfoNZ+B84/1vIjk5QbcjypLZrHOBhjVUEvv9vQwKvuXsq0GPERk4/ZmPG99fuNP9T08oS1WAhSNoC/WcEcnYhHHxXgIOP9bskQs3ovtxeV9KGggSLd/pnogQZxlm6hPv1Uro1JqcOI=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 1bff061e-44ca-4373-c53a-08d509cd1371
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254152)(2017052603199)(201703131423075)(201703031133081)(201702281549075);
	SRVR:DM2PR0401MB1293; 
x-ms-traffictypediagnostic: DM2PR0401MB1293:
x-exchange-antispam-report-test: UriScan:(21748063052155)(145744241990776);
x-microsoft-antispam-prvs: <DM2PR0401MB129330136FDAB3D4748BB983967D0@DM2PR0401MB1293.namprd04.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(10201501046)(93006095)(93001095)(3002001)(100000703101)(100105400095)(6041248)(20161123555025)(20161123558100)(20161123564025)(20161123560025)(20161123562025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:DM2PR0401MB1293; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:DM2PR0401MB1293; 
x-forefront-prvs: 0448A97BF2
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6029001)(6009001)(376002)(346002)(189002)(199003)(7736002)(2501003)(5250100002)(14454004)(110136005)(53936002)(6436002)(66066001)(99286003)(316002)(54896002)(55016002)(7696004)(74316002)(6306002)(9686003)(478600001)(6506006)(5660300001)(25786009)(101416001)(54356999)(6116002)(790700001)(102836003)(3846002)(3280700002)(81166006)(81156014)(8676002)(8936002)(50986999)(2900100001)(105586002)(106356001)(86362001)(189998001)(2906002)(33656002)(68736007)(97736004)(3660700001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM2PR0401MB1293;
	H:DM2PR0401MB1295.namprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: ni.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2017 19:37:54.0712 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR0401MB1293
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2017-10-02_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy
	score=30
	priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0
	bulkscore=0
	spamscore=0 clxscore=1011 lowpriorityscore=0 impostorscore=0
	adultscore=0
	classifier=spam adjust=30 reason=mlx scancount=1
	engine=8.0.1-1707230000 definitions=main-1710020283
Subject: [opkg-utils PATCH] opkg.py: Fix run-time error in call to ArFile
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
X-List-Received-Date: Mon, 02 Oct 2017 19:43:11 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM2PR0401MB12954FB72F09E9F56E39C758967D0DM2PR0401MB1295_"

--_000_DM2PR0401MB12954FB72F09E9F56E39C758967D0DM2PR0401MB1295_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Jeffrey Pautler <jeffrey.pautler@ni.com>
---
opkg.py | 2 +-
1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/opkg.py b/opkg.py
index 4d6f020..9131755 100644
--- a/opkg.py
+++ b/opkg.py
@@ -168,7 +168,7 @@ class Package(object):
                 tar =3D tarfile.open(fn, "r", f)
                 tarStream =3D tar.extractfile("./control.tar.gz")
             else:
-                ar =3D ArFile(f, fn)
+                ar =3D arfile.ArFile(f, fn)
                 tarStream =3D ar.open("control.tar.gz")
             tarf =3D tarfile.open("control.tar.gz", "r", tarStream)
             try:
--
2.7.4

--_000_DM2PR0401MB12954FB72F09E9F56E39C758967D0DM2PR0401MB1295_
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
t-size:11.0pt">Signed-off-by: Jeffrey Pautler &lt;jeffrey.pautler@ni.com&gt=
;<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">---<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">opkg.py | 2 &#43;-<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">1 file changed, 1 insertion(&#43;), 1 deletion(-)<o:p></o:p>=
</span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">diff --git a/opkg.py b/opkg.py<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">index 4d6f020..9131755 100644<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">--- a/opkg.py<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&#43;&#43; b/opkg.py<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">@@ -168,7 &#43;168,7 @@ class Package(object):<o:p></o:p></s=
pan></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tar =3D tarfile.open(fn, &quot;r&quot;=
, f)<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tarStream =3D tar.extractfile(&quot;./=
control.tar.gz&quot;)<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; else:<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ar =3D ArFile(f, fn)<o:p></o:p></span></fon=
t></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ar =3D arfile.ArFile(f, fn)<o:p></o:p><=
/span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tarStream =3D ar.open(&quot;control.ta=
r.gz&quot;)<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; tarf =3D tarfile.open(&quot;control.tar.gz&quot;, &quot;r&quot=
;, tarStream)<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; try:<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">--
<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">2.7.4<o:p></o:p></span></font></p>
</div>
</body>
</html>

--_000_DM2PR0401MB12954FB72F09E9F56E39C758967D0DM2PR0401MB1295_--
