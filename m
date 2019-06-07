Return-Path: <peter.t.smith@ge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA82DE00C43; Fri,  7 Jun 2019 03:05:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [67.231.149.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 8015 seconds by postgrey-1.32 at yocto-www;
	Fri, 07 Jun 2019 03:05:28 PDT
Received: from mx0a-00176a03.pphosted.com (mx0a-00176a03.pphosted.com
	[67.231.149.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E3BFE00A00
	for <yocto@yoctoproject.org>; Fri,  7 Jun 2019 03:05:28 -0700 (PDT)
Received: from pps.filterd (m0047962.ppops.net [127.0.0.1])
	by m0047962.ppops.net-00176a03. (8.16.0.27/8.16.0.27) with SMTP id
	x577nFmv046913
	for <yocto@yoctoproject.org>; Fri, 7 Jun 2019 03:51:53 -0400
From: "Smith, Peter1 (GE Renewable Energy)" <peter.t.smith@ge.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-security] AppArmor 2.11 no longer available on Ubuntu
	archive (sumo branch)
Thread-Index: AdUdBZcvoxt64H99T6emAmBmOpbYvg==
Date: Fri, 7 Jun 2019 07:51:39 +0000
Message-ID: <VI1P101MB01576372CF3A49D74933DBC3DE100@VI1P101MB0157.NAMP101.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5Lmh0bWwiIHA9ImM6XHVzZXJzXDIxMjUzNDY3NFxhcHBkYXRhXHJvYW1pbmdcMDlkODQ5YjYtMzJkMy00YTQwLTg1ZWUtNmI4NGJhMjllMzViXG1zZ3NcbXNnLTEzYTg5YTZlLTg4ZjktMTFlOS04M2E5LWEwOGNmZGUwYTQ0NVxhbWUtdGVzdFwxM2E4OWE3MC04OGY5LTExZTktODNhOS1hMDhjZmRlMGE0NDVib2R5Lmh0bWwiIHN6PSIzMzM4IiB0PSIxMzIwNDM2NzQ5Nzk5NzE5OTUiIGg9ImRvRDVuNlh6YXJ6MFI1WTc2aG9lemF5akdkVT0iIGlkPSIiIGJsPSIwIiBibz0iMSIvPjwvbWV0YT4=
x-originating-ip: [205.173.90.140]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0fba40f8-e398-464a-6e6e-08d6eb1cf986
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
	SRVR:VI1P101MB0175; 
x-ms-traffictypediagnostic: VI1P101MB0175:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <VI1P101MB0175B846697B1F29C3DC4001DE100@VI1P101MB0175.NAMP101.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0061C35778
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(376002)(136003)(346002)(396003)(366004)(39860400002)(199004)(189003)(790700001)(6116002)(3846002)(6506007)(1730700003)(102836004)(5640700003)(7696005)(2906002)(476003)(486006)(316002)(86362001)(478600001)(8936002)(68736007)(81156014)(2420400007)(81166006)(71190400001)(71200400001)(15650500001)(14454004)(4744005)(8676002)(53936002)(2351001)(99286004)(76116006)(55016002)(5660300002)(25786009)(256004)(6916009)(7736002)(14444005)(66446008)(64756008)(66556008)(66476007)(6436002)(66066001)(66946007)(73956011)(52536014)(2501003)(6306002)(74316002)(9686003)(186003)(7110500001)(54896002)(33656002)(26005);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1P101MB0175;
	H:VI1P101MB0157.NAMP101.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ge.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6wRN0AYiwDg6Av95bfNuUi1Tnl59u0hQSc093oJTnKifuEtMsxPwu3V7wemTlmN+yzwkzrtewazvQZ3WVdI3R6EVNmYK5x8UbbqRrG61MzoezVQKum25WBF9brexcX4ClsvXRcWu8oO/d422+WqILixDhvxX6cZA0lA303XHB0IE/SChwopcIA0YDI0Y9Xw6llkS22y7WaYQNcnazXpC3Vt5OhP4mfCujpDZzgSi+sQz3wh4www1gH4kQASYW0i5zpZYwCZ5k7lSU3s0g3y3rMykjUHt1JPCXpsWyNHa9n1y52tc21LuI3VtEUry7tIsUwV1iSRCz6SbLnwsj5BsNfCa+xR6oqQSUxuoxZs9qSo+Ihqjv/8iGuUn9g0gFz8vXzbLLpgKzD22tS67p9yHJ/Na1uTdqhs6F9XoMQmVeak=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fba40f8-e398-464a-6e6e-08d6eb1cf986
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2019 07:51:39.6701 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 15ccb6d1-d335-4996-b6f9-7b6925f08121
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 212534674@ge.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P101MB0175
X-OriginatorOrg: ge.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-06-07_03:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
	priorityscore=1501 malwarescore=0
	suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
	lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=702
	adultscore=0
	classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
	definitions=main-1906070056
Subject: [meta-security] AppArmor 2.11 no longer available on Ubuntu archive (sumo branch)
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
X-List-Received-Date: Fri, 07 Jun 2019 10:05:29 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1P101MB01576372CF3A49D74933DBC3DE100VI1P101MB0157NAMP_"

--_000_VI1P101MB01576372CF3A49D74933DBC3DE100VI1P101MB0157NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

We are building with meta-security (from sumo branch) which currently uses =
v2.11 of AppArmor, it seems overnight that the source archive has been remo=
ved from the Ubuntu archives. Does anyone know if this is a deliberate acti=
on, or if not who to contact to get it put back.

Peter Smith

Senior Emerging Technologies Engineer
Grid Solutions
GE Renewable Energy

-NON PUBLIC-




--_000_VI1P101MB01576372CF3A49D74933DBC3DE100VI1P101MB0157NAMP_
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">We are building with meta-security (from sumo branch=
) which currently uses v2.11 of AppArmor, it seems overnight that the sourc=
e archive has been removed from the Ubuntu archives. Does anyone know if th=
is is a deliberate action, or if not
 who to contact to get it put back.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.0pt;font-family:&quot;=
Arial&quot;,sans-serif;color:#4472C4;mso-fareast-language:EN-GB">Peter Smit=
h<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-GB"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:gray;background:white;mso-fareast-language:EN-GB"=
>Senior Emerging Technologies Engineer</span><span style=3D"mso-fareast-lan=
guage:EN-GB"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:gray;mso-fareast-language:EN-GB">Grid Solutions<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:gray;mso-fareast-language:EN-GB">GE Renewable Ene=
rgy<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:gray;mso-fareast-language:EN-GB"><o:p>&nbsp;</o:p=
></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"FR" style=3D"color:red;mso-fareast-=
language:EN-GB">-NON PUBLIC-<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:gray;mso-fareast-language:EN-GB"><o:p>&nbsp;</o:p=
></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_VI1P101MB01576372CF3A49D74933DBC3DE100VI1P101MB0157NAMP_--
