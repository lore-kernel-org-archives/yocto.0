Received: from mx0b-002e3701.pphosted.com (mx0b-002e3701.pphosted.com [148.163.143.35])
 by mx.groups.io with SMTP id smtpd.web10.2155.1582930310540749719
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Feb 2020 14:51:50 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: hpe.com, ip: 148.163.143.35, mailfrom: prvs=032750bdbe=sean.mckay@hpe.com)
Received: from pps.filterd (m0134423.ppops.net [127.0.0.1])
	by mx0b-002e3701.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 01SMmSDI003741
	for <yocto@lists.yoctoproject.org>; Fri, 28 Feb 2020 22:51:49 GMT
Received: from g9t5009.houston.hpe.com (g9t5009.houston.hpe.com [15.241.48.73])
	by mx0b-002e3701.pphosted.com with ESMTP id 2yfbn1r4k8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Fri, 28 Feb 2020 22:51:49 +0000
Received: from G1W8108.americas.hpqcorp.net (g1w8108.austin.hp.com [16.193.72.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g9t5009.houston.hpe.com (Postfix) with ESMTPS id 2B48670
	for <yocto@lists.yoctoproject.org>; Fri, 28 Feb 2020 22:51:49 +0000 (UTC)
Received: from G9W8453.americas.hpqcorp.net (2002:10d8:a0d3::10d8:a0d3) by
 G1W8108.americas.hpqcorp.net (2002:10c1:483c::10c1:483c) with Microsoft SMTP
 Server (TLS) id 15.0.1367.3; Fri, 28 Feb 2020 22:51:48 +0000
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (15.241.52.12) by
 G9W8453.americas.hpqcorp.net (16.216.160.211) with Microsoft SMTP Server
 (TLS) id 15.0.1367.3 via Frontend Transport; Fri, 28 Feb 2020 22:51:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FJ1Kw1Fi4Op7erEhoD+cdGFzwrAuXwnRXkV1JgRKOp9t/F5u7hmrhJKmTzMYak8WNvJA6Mmxb3M677P6OTnLnjy2XGPpdL2uTiYk+Vw7iOswtpvmyJalCfxt+nei5FCXIbqFn7Y9/RpAarUwNIoy4PP2tqA7ztiVLjl1mmyV9tbJHLP1pkoUEhN76nguEBWeiYkAmLEiHM3hcIaCS4JTR3IVzbYqcZ6MleUocHp3KTfGJSnjMLtucJyXctU9T3UvfS7irRNS51frbXQbyg02jO7MdkqYbGF5Pb+n4Yf1bs1dC0RM4M2HKc5pXLshbDFsyAWa/Mk1aFiG7jI8wqMg2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BKoVaQj7K2RS76vz2HGwZvdtjVEKNNl13TQHl5/VY08=;
 b=epoVF9zHNiDp3KB38NEpVm8HXIILwrnxX+0twp2LbLGknNQMdkZCzQa8ySYvr+wFuYSmF3ETnj61Bn3wknHyrCG4sN+OUg700UgmU0YJh/5ikhmIFpeyK/MLmiiN+leVs9fbETCOpw9mgVdL2sx6lBy2BGL8haYp6Ri9ttDnm2/TsMadal5vT/8f1QvJuf3gDEfkWZZ4v2QAH28CLHIC20C6Jr9jl19Gr9suvVbSP6esQ1YvfB+1fkAsJzGJBXqGR0JRnZ2jlAQI6FejV1yySSeJGPzUn6QcYiajGIHoF6r9KkqFFBzST9QN7sOGd6GtMOFmh74pjSvIWQuUA23B6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hpe.com; dmarc=pass action=none header.from=hpe.com; dkim=pass
 header.d=hpe.com; arc=none
Received: from TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 (2a01:111:e400:7712::19) by TU4PR8401MB0733.NAMPRD84.PROD.OUTLOOK.COM
 (2a01:111:e400:7712::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14; Fri, 28 Feb
 2020 22:51:47 +0000
Received: from TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::d52b:149f:c4d3:a17b]) by TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::d52b:149f:c4d3:a17b%5]) with mapi id 15.20.2772.012; Fri, 28 Feb 2020
 22:51:47 +0000
From: "Sean McKay" <sean.mckay@hpe.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Should changing a task in the .bb file cause the task to be rerun?
Thread-Topic: Should changing a task in the .bb file cause the task to be
 rerun?
Thread-Index: AdXuiL6uK0y0gl2pQLikRTwB+tl67g==
Date: Fri, 28 Feb 2020 22:51:47 +0000
Message-ID: <TU4PR8401MB115177E1CDF301758DE3E72A82E80@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [15.211.195.13]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 80dc788e-c2c0-4d44-4b71-08d7bca0ca6a
x-ms-traffictypediagnostic: TU4PR8401MB0733:
x-microsoft-antispam-prvs: <TU4PR8401MB0733C56D66DA04F3CAF1C16F82E80@TU4PR8401MB0733.NAMPRD84.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0327618309
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(396003)(39860400002)(136003)(376002)(346002)(366004)(189003)(199004)(8676002)(55016002)(8936002)(6506007)(81156014)(316002)(7696005)(9686003)(33656002)(6916009)(86362001)(76116006)(478600001)(5660300002)(66946007)(4744005)(2906002)(81166006)(64756008)(52536014)(26005)(66476007)(71200400001)(66556008)(66446008)(186003)(142923001);DIR:OUT;SFP:1102;SCL:1;SRVR:TU4PR8401MB0733;H:TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: hpe.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2MQf9LOMN7sC0c11tvUww4QXTNjiS1begUYvWT0/Aw4aItZmwd+eDP7RWGjFaM5+lLCxmsJom2Wd+uIGFqdJZTI3JlzqcMDP8NPNBQN6tjO1PLObkQqvRJZmq2ReaN46HjGuc5hdCdOfNKrSIssrqLSKsN/MohA3GV5jUYZjdcF1390N6HWQRbYLe9OAwuutoHyBRoTELWiP0zP302nvNn0IG3JLI8zU9syp5ZcjP37VDEOFyCYVx3rfYIL/K7zYHYuLTVlPW20TodmVVpqaKk16/QvOGGkQIiQ0xrNxQ6UCDx0AggHdPYGHFT81GMoC8S3lppjdfw1Z1w/b869gw5fLGJ6Z5mr0Fq3FQ464AOS/WfrjmQRFllYRL5sQ+r4ftSi4eV1UvqxTj0G2aNHm7Ibo1cQDnaPZ+1ll7aMY+sqq16e2/+MSjWq9zZxFVP151gH8vw+Z3bAEyFqwcCPLOMm4EoQhTHrUnyItjo8XjZHB3C7NhPkNwkJce8jlCYCD
x-ms-exchange-antispam-messagedata: LPCm+ADmdUVoVWTD+4EFbzviwxkTbNQyE1SPe8l9j3CDlcpmrIqDx8YdDTBuWR/ev66L2t4R0fyrTIiHPzFSus6mq13OJj9JeV5m2FcppnAmSE6V6f8PiI65Lqgtho20iJ1VOe7Sk9iycFwv4RsR4Q==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 80dc788e-c2c0-4d44-4b71-08d7bca0ca6a
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2020 22:51:47.1508
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PUpSPZS25eHD+ROucZAPoiDGNBXmyVeCnHyrLqPqlnEoYkgWP5YyxKtcepClZUdilOHDiLNa00xUvSd5rt7T2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR8401MB0733
X-OriginatorOrg: hpe.com
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.572
 definitions=2020-02-28_08:2020-02-28,2020-02-28 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=988
 suspectscore=0 mlxscore=0 phishscore=0 bulkscore=0 clxscore=1011
 spamscore=0 adultscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002280164
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_TU4PR8401MB115177E1CDF301758DE3E72A82E80TU4PR8401MB1151_"

--_000_TU4PR8401MB115177E1CDF301758DE3E72A82E80TU4PR8401MB1151_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

This is probably a fairly short question (I hope):
I'm working on a branch based on zeus. I found a bug in the way that one of=
 our recipes was handling something during do_configure (which caused an er=
ror to pop up in a do_compile task). When I modified the do_configure task =
(do_configure_append, actually) to behave properly (which involved changing=
 the actual commands run in that function) and reran bitbake -c compile <re=
cipe>, the do_configure task wasn't rerun despite the change to the functio=
n's code.

Is it safe to assume this means we've done something to mess up the way our=
 system is processing things? Or is that expected behavior? If the latter (=
which I don't really expect), is there an explanation somewhere for why cha=
nging the commands in a task doesn't prompt bitbake to rerun the task?

Cheers!
-Sean McKay

--_000_TU4PR8401MB115177E1CDF301758DE3E72A82E80TU4PR8401MB1151_
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
<p class=3D"MsoNormal">This is probably a fairly short question (I hope):<o=
:p></o:p></p>
<p class=3D"MsoNormal">I&#8217;m working on a branch based on zeus. I found=
 a bug in the way that one of our recipes was handling something during do_=
configure (which caused an error to pop up in a do_compile task). When I mo=
dified the do_configure task (do_configure_append,
 actually) to behave properly (which involved changing the actual commands =
run in that function) and reran bitbake -c compile &lt;recipe&gt;, the do_c=
onfigure task wasn&#8217;t rerun despite the change to the function&#8217;s=
 code.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is it safe to assume this means we&#8217;ve done som=
ething to mess up the way our system is processing things? Or is that expec=
ted behavior? If the latter (which I don&#8217;t really expect), is there a=
n explanation somewhere for why changing the commands
 in a task doesn&#8217;t prompt bitbake to rerun the task?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Cheers!<o:p></o:p></p>
<p class=3D"MsoNormal">-Sean McKay<o:p></o:p></p>
</div>
</body>
</html>

--_000_TU4PR8401MB115177E1CDF301758DE3E72A82E80TU4PR8401MB1151_--
