Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.5792.1575588563830135709
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Dec 2019 15:29:24 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: hpe.com, ip: 140.211.169.56, mailfrom: prvs=0242cc7aa0=sean.mckay@hpe.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD809E010DA; Thu,  5 Dec 2019 15:29:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	PDS_BTC_ID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [148.163.143.35 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.5 PDS_BTC_ID FP reduced Bitcoin ID
Received: from mx0b-002e3701.pphosted.com (mx0b-002e3701.pphosted.com [148.163.143.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85FB3E00A9C
	for <yocto@yoctoproject.org>; Thu,  5 Dec 2019 15:29:21 -0800 (PST)
Received: from pps.filterd (m0134423.ppops.net [127.0.0.1])
	by mx0b-002e3701.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id xB5NQkrd010512
	for <yocto@yoctoproject.org>; Thu, 5 Dec 2019 23:29:21 GMT
Received: from g2t2352.austin.hpe.com (g2t2352.austin.hpe.com [15.233.44.25])
	by mx0b-002e3701.pphosted.com with ESMTP id 2wq721hqce-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Thu, 05 Dec 2019 23:29:20 +0000
Received: from G2W6311.americas.hpqcorp.net (g2w6311.austin.hp.com [16.197.64.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g2t2352.austin.hpe.com (Postfix) with ESMTPS id 33ABD63
	for <yocto@yoctoproject.org>; Thu,  5 Dec 2019 23:29:20 +0000 (UTC)
Received: from G9W8667.americas.hpqcorp.net (16.220.49.26) by
 G2W6311.americas.hpqcorp.net (16.197.64.53) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Thu, 5 Dec 2019 23:29:19 +0000
Received: from G4W10205.americas.hpqcorp.net (2002:10cf:520f::10cf:520f) by
 G9W8667.americas.hpqcorp.net (2002:10dc:311a::10dc:311a) with Microsoft SMTP
 Server (TLS) id 15.0.1367.3; Thu, 5 Dec 2019 23:29:19 +0000
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (15.241.52.12) by
 G4W10205.americas.hpqcorp.net (16.207.82.15) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3 via Frontend Transport; Thu, 5 Dec 2019 23:29:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iyi56UbA1jKwwJxutcHsM9e41GqtFHAitxdlhkY6HtREmfFi5sYI6vaWGVMn8hhmtkr/J0sQ7cMRlD6RICPRKI74xpHRFgEiw0yWsRdNjhfSWy/qHUICZnP76ygd8wbrGjjzBtFAJZ0jt+Gp0p9dLTB84NkyPz/7lOgfQ3P/yNfIqxIwNlB74iMJNbmGeh9mILdrGCFH4C0d/zFSDU5APh9KOM4+FoI5fYyWIzbGdVOgCq3XLUPeRjAsQmR6cTTix9gn7+HXdQiiaOZj+YG5wDs34WUXKfj2Y2voRCO+xiwhk3p74OEQYyPg2yQHDH510SBCBT6xRhw9BAshOqz0Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Vyrg/2/65aMPucV55+UdhpHvQTNnY396w/fEgGkbqA=;
 b=NmJ6zhnLHOBnadAQ04rOMrYwzjgx1+UktTXJcGlHmEpPnbPn/rzXdAUZBr7INZHKBGSs2E7v90lxYBJzc+PiRnDcSPqVrIbZ01b7DKiuJ74I1DUiLmEoY17dPHO3Bi4p7A0AoECEc9/AfP7R4ApQqW1OnRXUIx2nCJIL03cLmp4sj+r7OsBUdzpCJQHwmoZpskJgW02L1bZpDwB7AOu4jXzBoFV45P0CmUXuU3Pcj70wGHaAFm9O0Oz9Ob0orYw6cpOKMhsicVREIGet6LkGgioGpyvAwUkqLiU7i7O7vAgYEDWI3p4CJUBr7QlH8trofkHL82YCE22M0M5nEFiLrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hpe.com; dmarc=pass action=none header.from=hpe.com; dkim=pass
 header.d=hpe.com; arc=none
Received: from CS1PR8401MB0568.NAMPRD84.PROD.OUTLOOK.COM (10.169.98.21) by
 CS1PR8401MB1158.NAMPRD84.PROD.OUTLOOK.COM (10.169.13.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.14; Thu, 5 Dec 2019 23:29:18 +0000
Received: from CS1PR8401MB0568.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::d1fe:bb34:5d7b:3048]) by CS1PR8401MB0568.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::d1fe:bb34:5d7b:3048%11]) with mapi id 15.20.2495.026; Thu, 5 Dec 2019
 23:29:18 +0000
From: "Sean McKay" <sean.mckay@hpe.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: What influences the "latest version" shown in bitbake?
Thread-Topic: What influences the "latest version" shown in bitbake?
Thread-Index: AdWrwjauXTeV5oyWSB2+mQ5uGoA4Bg==
Date: Thu, 5 Dec 2019 23:29:17 +0000
Message-ID: <CS1PR8401MB0568391FF2F8A600CFC2E4A0825C0@CS1PR8401MB0568.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [15.211.195.14]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6c4bf47c-4a3d-426b-182a-08d779daf2d8
x-ms-traffictypediagnostic: CS1PR8401MB1158:
x-microsoft-antispam-prvs: <CS1PR8401MB115847D90FBAFF848D96614F825C0@CS1PR8401MB1158.NAMPRD84.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(136003)(39860400002)(346002)(396003)(366004)(376002)(199004)(189003)(53754006)(316002)(790700001)(7696005)(99286004)(25786009)(6916009)(14444005)(81166006)(71190400001)(71200400001)(14454004)(2906002)(81156014)(478600001)(8676002)(52536014)(5660300002)(64756008)(9686003)(76116006)(66476007)(66446008)(54896002)(66556008)(66946007)(8936002)(74316002)(33656002)(102836004)(55016002)(6506007)(86362001)(186003)(26005);DIR:OUT;SFP:1102;SCL:1;SRVR:CS1PR8401MB1158;H:CS1PR8401MB0568.NAMPRD84.PROD.OUTLOOK.COM;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: hpe.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AIcweRmeKAN3BbddLoj5k0eYTcDcoPvQjOeN0NtT5V/fS2ATh/3E/4dpp9Dfo7Ldkgb7ucXgkAt5mcBbNZU2GKG4rgw6jQTJDUKa24Y8w1pSS8Hs0cCAKQtopIZlMGupCoa688/LzkSR1YwFmRD2tBhi/8faapYor5LYLAY3GgivjYm/sSBGHMOkWfGpaPtvII+ZhW+Hx8oMhFvrr8Wvv+0RP2j5ck0yriq/R8GTba0sLz7My4AbQrolEYJcrPhqf+lEFbfjyKzOoXm4pfjOj1Yr0Fx1rcgb/R4me1ojR2bG8WRMHlAgvUIzVuadETS7RujW1W2KFzKLZxCeazflUsHajMUdKn5IDyUGjXBvK1dsIf3Kz2wTs8SDKf4ec/a3eUwdVM9buUeFdluk8qetcY2OOU5jCvtOhWrfgcMoBI2R5EeoAR4dyz5e8PLPrN5c2cbQ2xByhQUUGzacqpVwZ/IxXW4pgaNgnQkhG6xpAZRzhsftWDk6D22FbCWuqxXj
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c4bf47c-4a3d-426b-182a-08d779daf2d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 23:29:17.9354
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: roK8xCc8+zBaW815Ofa8mzjS82D3HnUGX+ksE18cAWE8dFgiNeTt5qFoOPx+TZA+lIc5VwvXKJfNQZx2cyiH9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CS1PR8401MB1158
X-OriginatorOrg: hpe.com
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-05_10:2019-12-04,2019-12-05 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 spamscore=0 mlxlogscore=956 bulkscore=0 impostorscore=0
 suspectscore=0 adultscore=0 priorityscore=1501 mlxscore=0 malwarescore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-1912050192
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CS1PR8401MB0568391FF2F8A600CFC2E4A0825C0CS1PR8401MB0568_"

--_000_CS1PR8401MB0568391FF2F8A600CFC2E4A0825C0CS1PR8401MB0568_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I'm in the middle of our organization's upgrade to the most recent version =
of poky (3.0) and I'm finding that more recent versions of recipes in our p=
oky layer aren't showing up as the most recent version (bitbake -s) or even=
 accessible if I set the PREFERRED_VERSION in our distro's .conf file.

For a specific example: We're trying to stick with LTS kernel releases, so =
we want to move to linux-yocto 4.19. We have 4.14 in our current codebase, =
but it was manually pulled in (we had a rather old version of poky) so it's=
 in a different layer. Setting the PREFERRED_VERSION to 4.19% doesn't resul=
t in its use, and 4.19 doesn't even show up as an available version if I ru=
n bitbake -s. If I remove the 4.14 bb file, linux-yocto goes away completel=
y as a buildable recipe. The only way that we've found that causes 4.19 to =
show up as an option is to add a (currently mostly empty) linux-yocto_4.19.=
bbappend file in one of the higher layers. (Note that there are 4.14.bbappe=
nds too, partially because of backported fixes, and partially because there=
 are internal patches that we haven't moved forward to 4.19 yet)

Note that someone did manually set all the layer priorities in their respec=
tive .conf files in our codebase, but I didn't think that would necessarily=
 have any effect on the version detection.

Can anyone offer any guidance as to what's causing this behavior? Is there =
documentation somewhere on how bitbake determines the most recent version?

Thanks!
-Sean McKay

--_000_CS1PR8401MB0568391FF2F8A600CFC2E4A0825C0CS1PR8401MB0568_
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
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m in the middle of our organization&#8217;s =
upgrade to the most recent version of poky (3.0) and I&#8217;m finding that=
 more recent versions of recipes in our poky layer aren&#8217;t showing up =
as the most recent version (bitbake -s) or even accessible
 if I set the PREFERRED_VERSION in our distro&#8217;s .conf file.<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">For a specific example: We&#8217;re trying to stick =
with LTS kernel releases, so we want to move to linux-yocto 4.19. We have 4=
.14 in our current codebase, but it was manually pulled in (we had a rather=
 old version of poky) so it&#8217;s in a different
 layer. Setting the PREFERRED_VERSION to 4.19% doesn&#8217;t result in its =
use, and 4.19 doesn&#8217;t even show up as an available version if I run b=
itbake -s. If I remove the 4.14 bb file, linux-yocto goes away completely a=
s a buildable recipe. The only way that we&#8217;ve
 found that causes 4.19 to show up as an option is to add a (currently most=
ly empty) linux-yocto_4.19.bbappend file in one of the higher layers. (Note=
 that there are 4.14.bbappends too, partially because of backported fixes, =
and partially because there are
 internal patches that we haven&#8217;t moved forward to 4.19 yet)<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Note that someone did manually set all the layer pri=
orities in their respective .conf files in our codebase, but I didn&#8217;t=
 think that would necessarily have any effect on the version detection.<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can anyone offer any guidance as to what&#8217;s cau=
sing this behavior? Is there documentation somewhere on how bitbake determi=
nes the most recent version?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks!<o:p></o:p></p>
<p class=3D"MsoNormal">-Sean McKay<o:p></o:p></p>
</div>
</body>
</html>

--_000_CS1PR8401MB0568391FF2F8A600CFC2E4A0825C0CS1PR8401MB0568_--
