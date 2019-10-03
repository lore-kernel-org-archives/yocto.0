Return-Path: <MohammadJamal.Mohiuddin@ncr.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F331CE00D5F; Wed,  2 Oct 2019 21:40:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [148.163.152.55 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 4998 seconds by postgrey-1.32 at yocto-www;
	Wed, 02 Oct 2019 21:40:13 PDT
Received: from mx0b-00209e01.pphosted.com (mx0b-00209e01.pphosted.com
	[148.163.152.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B95CDE00D38
	for <yocto@yoctoproject.org>; Wed,  2 Oct 2019 21:40:13 -0700 (PDT)
Received: from pps.filterd (m0094031.ppops.net [127.0.0.1])
	by mx0b-00209e01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
	x9338vrq017840
	for <yocto@yoctoproject.org>; Wed, 2 Oct 2019 23:16:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ncr.com;
	h=from : to : cc : subject
	: date : message-id : content-type : mime-version; s=mail;
	bh=xR0TS+44CTnWef5hjvQbYmNwNaZX6Kdkhu8OmoFyGGE=;
	b=RLna/E97JtwDKeHNStWUD74DG0r/JEbB4+Q0PUvkO4m+rJvB3ST+OCkomBetU1tgYBA4
	ZrSMQ25sRELCIqTM6y4fjJGEVdIlrO9lPwXONrzMu4ff8tYjTJDRrBsGJ18zSEEZJJ09
	Qf/DfgRlLpRvtLBkvnGeqCDg5cnG0w+hpOB+cnlszIPAhcXaRY3c3awgJrOkg3SvmXsW
	g5f0hjXPliPyto4kv3+LFHMou1IyJRrUZaYf+0weeF50ZQuMxQ4MITjwbg9JQZsioh3D
	7aJCFT1p79wZnJb6FiuXVhE47QjviMviqcP2sKEeK5kZ7XYbQdtn+aLkmGui23d4rCyP
	pA== 
Received: from nam01-by2-obe.outbound.protection.outlook.com
	(mail-by2nam01lp2050.outbound.protection.outlook.com [104.47.34.50])
	by mx0b-00209e01.pphosted.com with ESMTP id 2vd31s974j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Wed, 02 Oct 2019 23:16:54 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=hZbzQX+F7hoTK3V6BBQYqUIV0cC9Rp89+Kva4kUKFZd+psYbg+ii3ucbTfyC6txdXQnPtBECk/yKGe5ekLBUfqoOO21XTbIv+R9fp+jkw3i8WiiQqixt+aoLv07HY0eIkUXRD60xnReUzCz+Ce5sHLIXdbll2Nr9Yez2UvFcGf/AZHWxGT/+p7ZVr+vF/MPkELeC+kelRATetrLQkdL8idYZMKd5UXyHZO18wslte77h3gPT3evygMsYm1YEmLRhtXqpWxsGLbZCwPRTmepPTyzO3fSImQ151ziyBXGsDfyNV+voTKlOvKjAbfJXAuHQ+2oTzdVpxOeqv7XkI2eo9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=xR0TS+44CTnWef5hjvQbYmNwNaZX6Kdkhu8OmoFyGGE=;
	b=Tj2eAjWFytl2RYA30s26YOqxFsLWcBRDsW5GhRi/GIGp0Jo887v8cpLZrZCFODdOVjkCNfuFeTRsNkxbsGs8DJjdEUCOi5TkHKqACSrAk4YvwqTfLIWcSjze6XNioVnVW7qngTjK1xZfrR/sMXeN6SwpVouwjxNllYFkXqcuxP73+FxN0Ka8BGn3q6yg+nTW+hwGBMkDdJtVuY9QZ7pC2Ue0ckeXUysU0zYpw4VlQlC9DX7CgeHzAd1RQrz2yQnpGhG38Q7VHxZSeEX5VfR+JftPQhKuhaHb8d93K2PSgJhWVXBrPJ3yLy+Au+Fgwbsroxsgwnsg+mla8+YTDHNpYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=ncr.com; dmarc=pass action=none header.from=ncr.com;
	dkim=pass header.d=ncr.com; arc=none
Received: from BYAPR15MB2693.namprd15.prod.outlook.com (20.179.156.222) by
	BYAPR15MB2615.namprd15.prod.outlook.com (20.179.155.220) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2305.20; Thu, 3 Oct 2019 03:16:52 +0000
Received: from BYAPR15MB2693.namprd15.prod.outlook.com
	([fe80::7ce5:cc64:3200:bbd9]) by
	BYAPR15MB2693.namprd15.prod.outlook.com
	([fe80::7ce5:cc64:3200:bbd9%2]) with mapi id 15.20.2305.023;
	Thu, 3 Oct 2019 03:16:52 +0000
From: "Mohammad, Jamal M" <MohammadJamal.Mohiuddin@ncr.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Clamav fails at configure stage when including pcre
Thread-Index: AdV5mPBgLNe+OQogQAKOB+vXpt9jew==
Date: Thu, 3 Oct 2019 03:16:51 +0000
Message-ID: <BYAPR15MB26932E8C48A902DEFC4C6D43F09F0@BYAPR15MB2693.namprd15.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Enabled=True;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_SiteId=ae4df1f7-611e-444f-897e-f964e1205171;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Owner=mm185399@ncr.com; 
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_SetDate=2019-10-03T03:16:49.1086231Z;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Name=Confidential;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Application=Microsoft
	Azure Information Protection;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_ActionId=7275386c-e918-4cc1-99c1-fb9028f9e2e9;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Extended_MSFT_Method=Manual
x-originating-ip: [165.225.104.86]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 812f32e0-c576-4a13-a443-08d747b02310
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: BYAPR15MB2615:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR15MB2615754D4AAF6921152E52E2F09F0@BYAPR15MB2615.namprd15.prod.outlook.com>
x-from-ncr-tenant: Processed
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01792087B6
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(4636009)(39860400002)(376002)(136003)(396003)(366004)(346002)(199004)(189003)(53754006)(54896002)(6306002)(4744005)(99286004)(55016002)(486006)(66066001)(5640700003)(6916009)(6506007)(5660300002)(52536014)(2906002)(86362001)(9686003)(3846002)(6116002)(790700001)(9326002)(6436002)(2501003)(14454004)(8936002)(316002)(2351001)(81156014)(81166006)(8676002)(1730700003)(4326008)(33656002)(76116006)(14444005)(256004)(54906003)(476003)(7736002)(74316002)(66446008)(64756008)(66556008)(66476007)(66946007)(55236004)(102836004)(25786009)(7696005)(478600001)(71200400001)(71190400001)(26005)(186003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR15MB2615;
	H:BYAPR15MB2693.namprd15.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ncr.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eJDiUaUZh2U6/8KYISBtTIPQW3ehtqm1yrs/KYmeIKGKbFKkJrd82jsbXcZrw+zYsbXrfxDcg8g2BQBpW7TrxqJjilCIdrIKIvD9g3e6esPcQDmSck3kE0n0Fn7papO87DEPEdx1tiYt/mXpPFJu8IqJkvnFf6Dry6JXiaXi+1PMG2j0KeG8SWNuLUFCqKiTWbbVRlcXJWovCon2PNtOrgEpngnqFgBM/OPBJiRBW1NudEJXLUviBIuBj75Qjw2u6AibH560bvcqdeW5xxQ44GMplSnPDEOzbQAxVWnBreAdx9boEjnBY6SDDFuOWGWgZ+z7idGp2gPaHUmZsqB7+nSIMotP7/SWF1ALrolJxDXo2hxRFx6bt0nQzIvT9Kwdu10rPgOIn5MV7Nb3Bzwm3mKOx40GT92ViYYjG94c1SY=
MIME-Version: 1.0
X-OriginatorOrg: ncr.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 812f32e0-c576-4a13-a443-08d747b02310
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2019 03:16:52.1555 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ae4df1f7-611e-444f-897e-f964e1205171
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NBGxQzq4ivc8n9hB4EW9oPyosPgBA2WBJFxrsqDiD5TUmVTt0Nb4KeprtNlL++rlrjzt3c0ofYUdYqD42QQ4Jw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB2615
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
	definitions=2019-10-03_01:2019-10-01,2019-10-03 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	mlxscore=0 malwarescore=0
	spamscore=0 suspectscore=0 clxscore=1011 adultscore=0 impostorscore=0
	lowpriorityscore=0 bulkscore=0 priorityscore=1501 mlxlogscore=999
	phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.12.0-1908290000 definitions=main-1910030029
Cc: "C M, Kiran Reddy" <kiran.reddy@ncr.com>, "Oriya,
	Raxesh" <Raxeshkumar.Oriya@ncr.com>
Subject: Clamav fails at configure stage when including pcre
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
X-List-Received-Date: Thu, 03 Oct 2019 04:40:15 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR15MB26932E8C48A902DEFC4C6D43F09F0BYAPR15MB2693namp_"

--_000_BYAPR15MB26932E8C48A902DEFC4C6D43F09F0BYAPR15MB2693namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

To avoid lot of PCRE Warning messages which appear when we try to run 'clam=
scan'.

I have added the following line in my local.conf file to include PCRE suppo=
rt in clamav.

PACKAGECONFIG_append_pn-clamav =3D " pcre"

When I now build clamav using bitbake, it fails at the configuration stage =
with the following error:

| checking for X509_VERIFY_PARAM_new in -lssl... yes
| checking for libjson installation... no
| checking for pcre2-config... no
| checking for pcre-config... no
| configure: error: cannot locate libpcre2 or libpcre at /home/panther2/pan=
ther2_warrior/build/tmp/work/corei7-64-poky-linux/clamav/0.99.4-r0/recipe-s=
ysroot/usr/lib64
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at /home/panthe=
r2/panther2_warrior/build/tmp/work/corei7-64-poky-linux/clamav/0.99.4-r0/te=
mp/log.do_configure.81033)

Can you please provide a solution to this problem.

Regards,
Jamal,
Software Specialist,
NCR Corporation


--_000_BYAPR15MB26932E8C48A902DEFC4C6D43F09F0BYAPR15MB2693namp_
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
<p class=3D"MsoNormal">Hi All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">To avoid lot of PCRE Warning messages which appear w=
hen we try to run &#8216;clamscan&#8217;.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have added the following line in my local.conf fil=
e to include PCRE support in clamav.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><i>PACKAGECONFIG_append_pn-clamav =3D &quot; pcre&qu=
ot;<o:p></o:p></i></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When I now build clamav using bitbake, it fails at t=
he configuration stage with the following error:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">| checking for X509_VERIFY_PARAM_new in -lssl... yes=
<o:p></o:p></p>
<p class=3D"MsoNormal">| checking for libjson installation... no<o:p></o:p>=
</p>
<p class=3D"MsoNormal">| checking for pcre2-config... no<o:p></o:p></p>
<p class=3D"MsoNormal">| checking for pcre-config... no<o:p></o:p></p>
<p class=3D"MsoNormal">| configure: error: cannot locate libpcre2 or libpcr=
e at /home/panther2/panther2_warrior/build/tmp/work/corei7-64-poky-linux/cl=
amav/0.99.4-r0/recipe-sysroot/usr/lib64<o:p></o:p></p>
<p class=3D"MsoNormal">| WARNING: exit code 1 from a shell command.<o:p></o=
:p></p>
<p class=3D"MsoNormal">| ERROR: Function failed: do_configure (log file is =
located at /home/panther2/panther2_warrior/build/tmp/work/corei7-64-poky-li=
nux/clamav/0.99.4-r0/temp/log.do_configure.81033)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can you please provide a solution to this problem.<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Jamal,<o:p></o:p></p>
<p class=3D"MsoNormal">Software Specialist,<o:p></o:p></p>
<p class=3D"MsoNormal">NCR Corporation<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BYAPR15MB26932E8C48A902DEFC4C6D43F09F0BYAPR15MB2693namp_--
