Return-Path: <MohammadJamal.Mohiuddin@ncr.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D23DE00AE4; Tue, 24 Apr 2018 21:01:53 -0700 (PDT)
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
Received: from mx0b-00209e01.pphosted.com (mx0b-00209e01.pphosted.com
	[148.163.152.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 008B7E00A75
	for <yocto@yoctoproject.org>; Tue, 24 Apr 2018 21:01:51 -0700 (PDT)
Received: from pps.filterd (m0094032.ppops.net [127.0.0.1])
	by mx0b-00209e01.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w3P3t39x000525
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 00:01:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ncr.com;
	h=from : to : subject :
	date : message-id : content-type : mime-version; s=mail;
	bh=4aFWprFVkpqkffTmUhz13lgX5lQhudkRQ8jt5SnmmVg=;
	b=NSzCR2UX2rPd1rffi200UiEOBE50Tawj+eOlifrSdrxdZbvDOKsiU3AekT+tFxZHoO+B
	67IC0W2xMeCxezJ8KCDXzWDhlW9IRIWlIgXZ/iZ+Yb4M1ot+im+yq9GdWhqhKO0/KRGv
	I4mvBvyEQnhaeTH4KrkygkIlmzoW6J/nqLPkAIp5XFhoqTRVhTaP/I+VDHcM6mgvgK4s
	/EyAoQjrMWWspY6/Mt/mqYmqRgB7Lit2gSwbD+Yz2TEX1P6cGtsJwbXXU9E1E4OB22Bq
	trGY5cg31tktfB32kr6/NxmYtUHc2f/KvdQLxzp5lNpy7F7HvhLtaIvVOQXwQes9/sJX
	iQ== 
Received: from nam01-sn1-obe.outbound.protection.outlook.com
	(mail-sn1nam01lp0111.outbound.protection.outlook.com
	[207.46.163.111])
	by mx0b-00209e01.pphosted.com with ESMTP id 2hjj2s81k5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 00:01:50 -0400
Received: from MWHPR15MB1760.namprd15.prod.outlook.com (10.174.255.13) by
	MWHPR15MB1742.namprd15.prod.outlook.com (10.174.255.7) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.696.13; Wed, 25 Apr 2018 04:01:49 +0000
Received: from MWHPR15MB1760.namprd15.prod.outlook.com
	([fe80::c5dc:8f8b:510c:a360]) by
	MWHPR15MB1760.namprd15.prod.outlook.com
	([fe80::c5dc:8f8b:510c:a360%17]) with mapi id 15.20.0696.019;
	Wed, 25 Apr 2018 04:01:49 +0000
From: "Mohammad, Jamal M" <MohammadJamal.Mohiuddin@ncr.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] pygtk package in yocto
Thread-Index: AdPcSYti+7O6PAQ+Sr2K6gzvisZtmw==
Date: Wed, 25 Apr 2018 04:01:49 +0000
Message-ID: <MWHPR15MB1760BB8DDF46322CF5BCD7EBF08F0@MWHPR15MB1760.namprd15.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [32.66.192.218]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MWHPR15MB1742;
	7:oRzhwxVqv67JihetpbIYGn1PWz11BFhK4H+e+D1dA8VNpvRWykEA80xsn5xiINEonCyPEul22W173dOtup/V6A59xhpWbV/Tkcl+kV9ul6fhpkiQb51NixMYYG+qUItKgAfC1famzDvBROvDq567VmBjhFG8PJxs/lnbKzryphoCXVCfT2TDbATewb/wPYd8WKWquAFi0G7s//oh0J63J9VDEYo5p29UCoXVjoB8t4rjDnkf2DR3G15SmeKR3jMz
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(48565401081)(5600026)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:MWHPR15MB1742; 
x-ms-traffictypediagnostic: MWHPR15MB1742:
x-from-ncr-tenant: Processed
x-microsoft-antispam-prvs: <MWHPR15MB17423BB41DFB75785D558F54F08F0@MWHPR15MB1742.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(28532068793085)(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(93006095)(93001095)(3002001)(10201501046)(3231232)(944501410)(52105095)(6055026)(6041310)(20161123558120)(20161123562045)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(6072148)(201708071742011);
	SRVR:MWHPR15MB1742; BCL:0; PCL:0; RULEID:; SRVR:MWHPR15MB1742; 
x-forefront-prvs: 06530126A4
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(376002)(39380400002)(396003)(346002)(39860400002)(366004)(40764003)(199004)(189003)(57704003)(486006)(2501003)(476003)(186003)(7736002)(68736007)(5660300001)(86362001)(5250100002)(106356001)(2900100001)(1857600001)(6916009)(5640700003)(53936002)(14454004)(55016002)(99286004)(102836004)(6506007)(7696005)(74316002)(72206003)(478600001)(6436002)(25786009)(5630700001)(9686003)(6306002)(54896002)(26005)(33656002)(97736004)(3660700001)(2906002)(3280700002)(8676002)(6116002)(3846002)(790700001)(81156014)(1730700003)(9326002)(8936002)(81166006)(316002)(2351001)(66066001)(105586002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR15MB1742;
	H:MWHPR15MB1760.namprd15.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ncr.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: obRgH/ZGfOBFJCeK0p8noU3ympQX0ZqJo10jPhpn9+vDzGebRJNFjfp/0HtqjdyMHo9kiKgB4e9gRY6+6sZxaWtn5S74CYtO3ufwvu5fxzsQL76DmFJS7Sq0tuNaQTHKIU4s46Ko+SaHdreC8onbiZDPzEKL/fTwdQWW9S7eEjqkL5nq3lJdqOzgUCLXcKeA
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 15a3bfa0-e0d2-4d72-2084-08d5aa614535
X-OriginatorOrg: ncr.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15a3bfa0-e0d2-4d72-2084-08d5aa614535
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2018 04:01:49.1202 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ae4df1f7-611e-444f-897e-f964e1205171
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR15MB1742
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-04-25_01:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=742 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1711220000 definitions=main-1804250033
X-Mailman-Approved-At: Fri, 27 Apr 2018 12:07:45 -0700
Subject: pygtk package in yocto
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
X-List-Received-Date: Wed, 25 Apr 2018 04:01:53 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR15MB1760BB8DDF46322CF5BCD7EBF08F0MWHPR15MB1760namp_"

--_000_MWHPR15MB1760BB8DDF46322CF5BCD7EBF08F0MWHPR15MB1760namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Guys,

I am using the latest branch of poky and meta-oe . I need pygtk package for=
 one of my application as it's one of the requirement for it to run.

Pygtk is supported in Jethro branch. Do I need to switch to Jethro branch f=
or my project or did anyone port pygtk recipe port for the latest version.

Please help.

Thanks for your help and time

Regards,
Jamal

--_000_MWHPR15MB1760BB8DDF46322CF5BCD7EBF08F0MWHPR15MB1760namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:m=3D"http://sc=
hemas.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-=
html40">
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
<p class=3D"MsoNormal">Hi Guys,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am using the latest branch of poky and meta-oe . I=
 need pygtk package for one of my application as it&#8217;s one of the requ=
irement for it to run.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Pygtk is supported in Jethro branch. Do I need to sw=
itch to Jethro branch for my project or did anyone port pygtk recipe port f=
or the latest version.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Please help.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks for your help and time<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Jamal<o:p></o:p></p>
</div>
</body>
</html>

--_000_MWHPR15MB1760BB8DDF46322CF5BCD7EBF08F0MWHPR15MB1760namp_--
