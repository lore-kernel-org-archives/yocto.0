Return-Path: <Pascal.Mues@aptiv.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C417CE00B6F; Wed, 10 Oct 2018 00:37:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [69.195.251.241 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 587 seconds by postgrey-1.32 at yocto-www;
	Wed, 10 Oct 2018 00:37:00 PDT
Received: from usflmia-meg1.delphi.com (usflmia-meg1.delphi.com
	[69.195.251.241])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64EC4E0097C
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2018 00:37:00 -0700 (PDT)
Received: from 10492-US-DLP002.delphiauto.net (unknown [10.201.250.14]) by
	usflmia-meg1.delphi.com with smtp
	id 6362_2169_52e5300f_3db2_40d2_9b11_e249474b323b;
	Wed, 10 Oct 2018 03:20:02 -0400
Received: from usflmia-gw2.delphi.com ([10.192.117.25])
	by 10492-US-DLP002.delphiauto.net (8.13.8/8.13.8) with ESMTP id
	w9A7RBok020409
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2018 03:27:11 -0400
Received: from mx0b-00275a01.pphosted.com (mx0b-00275a01.pphosted.com
	[208.86.201.154]) by usflmia-gw2.delphi.com with smtp
	(TLS: TLSv1/SSLv3,256bits,ECDHE-RSA-AES256-GCM-SHA384)
	id 1beb_aa68_b8650758_d85b_4892_b66d_b4d91090e551;
	Tue, 09 Oct 2018 23:18:22 -0400
Received: from pps.filterd (m0109027.ppops.net [127.0.0.1])
	by mx0b-00275a01.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w9A7KmWd018258
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2018 03:27:11 -0400
Received: from service.017d.mgd.msft.net ([206.191.237.4])
	by mx0b-00275a01.pphosted.com with ESMTP id 2n1cvvg1hf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT)
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2018 03:27:11 -0400
Received: from BN1PR68MB021.017d.mgd.msft.net (141.251.75.147) by
	BN1PR68MB022.017d.mgd.msft.net (141.251.75.148) with Microsoft SMTP
	Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1185.30; Wed, 10 Oct 2018 07:27:10 +0000
Received: from BN1PR68MB021.017d.mgd.msft.net ([141.251.75.147]) by
	BN1PR68MB021.017d.mgd.msft.net ([141.251.75.147]) with mapi id
	15.20.1207.024; Wed, 10 Oct 2018 07:27:10 +0000
From: "Mues, Pascal" <Pascal.Mues@aptiv.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: if for SRCREV
Thread-Index: AdRgamcUsMpr1QH9QjWyPVDJS4yNcQ==
Date: Wed, 10 Oct 2018 07:27:10 +0000
Message-ID: <6e68dfa9ccbd4e569c5ed30ec5fb84a1@BN1PR68MB021.017d.mgd.msft.net>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [141.251.75.4]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN1PR68MB022:
MIME-Version: 1.0
X-CrossPremisesHeadersFilteredBySendConnector: BN1PR68MB022.017d.mgd.msft.net
X-OrganizationHeadersPreserved: BN1PR68MB022.017d.mgd.msft.net
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-10-10_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=754 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1807170000 definitions=main-1810100075
X-RCIS-Action: ALLOW
X-MEG-POLICY: ALLOW
X-Mailman-Approved-At: Wed, 10 Oct 2018 01:48:05 -0700
Subject: if for SRCREV
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
X-List-Received-Date: Wed, 10 Oct 2018 07:37:01 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_6e68dfa9ccbd4e569c5ed30ec5fb84a1BN1PR68MB021017dmgdmsft_"

--_000_6e68dfa9ccbd4e569c5ed30ec5fb84a1BN1PR68MB021017dmgdmsft_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

on my recipe I would like to distinguish between release and other build.
The release shall just stay on a fixed "stable" version - where the other s=
tuff shall just build latest greatest.
The easiest idea was have an environment variable set and check on recipe i=
f this exist to switch the srcrev for Git.
As a pseudo code:

if env(Release)
   SRCREV =3D "613b64e3ba8e796e27e86560020d39d9dfd0407d"
else
   SRCREV =3D "autorev"

Unfortunately, I wasn't able to find anything how this could be done.
Someone can help?

BR
Pascal
***************************************************************************=
************* Note: If the reader of this message is not the intended recip=
ient, or an employee or agent responsible for delivering this message to th=
e intended recipient, you are hereby notified that any dissemination, distr=
ibution or copying of this communication is strictly prohibited. If you hav=
e received this communication in error, please notify us immediately by rep=
lying to the message and deleting it from your computer. Thank you. *******=
***************************************************************************=
******

--_000_6e68dfa9ccbd4e569c5ed30ec5fb84a1BN1PR68MB021017dmgdmsft_
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
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">on my recipe I would like to distinguish between rel=
ease and other build.<o:p></o:p></p>
<p class=3D"MsoNormal">The release shall just stay on a fixed &#8220;stable=
&#8221; version &#8211; where the other stuff shall just build latest great=
est.<o:p></o:p></p>
<p class=3D"MsoNormal">The easiest idea was have an environment variable se=
t and check on recipe if this exist to switch the srcrev for Git.<o:p></o:p=
></p>
<p class=3D"MsoNormal"><span lang=3D"PT-BR">As a pseudo code: <o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"PT-BR"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">if env(Release)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; &nbsp;<span lang=3D"PT-BR">SRCREV =3D &quot;6=
13b64e3ba8e796e27e86560020d39d9dfd0407d&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"PT-BR">else<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"PT-BR">&nbsp;&nbsp; SRCREV =3D &quot;a=
utorev&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"PT-BR"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">Unfortunately, I wasn&#8217;t able to find anything =
how this could be done.<o:p></o:p></p>
<p class=3D"MsoNormal">Someone can help?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">BR<o:p></o:p></p>
<p class=3D"MsoNormal">Pascal<o:p></o:p></p>
</div>
***************************************************************************=
************* Note: If the reader of this message is not the intended recip=
ient, or an employee or agent responsible for delivering this message to th=
e intended recipient, you are hereby
 notified that any dissemination, distribution or copying of this communica=
tion is strictly prohibited. If you have received this communication in err=
or, please notify us immediately by replying to the message and deleting it=
 from your computer. Thank you.
 **************************************************************************=
**************
</body>
</html>

--_000_6e68dfa9ccbd4e569c5ed30ec5fb84a1BN1PR68MB021017dmgdmsft_--
