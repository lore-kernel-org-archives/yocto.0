Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.2950.1575409673969402709
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 13:47:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sri.com header.s=selector1 header.b=fxGb/kOu;
 spf=permerror, err=parse error for token &{10 18 salesforce.com}: parse error for token &{10 18 spf.mandrillapp.com}: limit exceeded (domain: sri.com, ip: 140.211.169.56, mailfrom: aaron.solochek@sri.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 899DAE00EBE; Tue,  3 Dec 2019 13:47:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_SPF_HELO,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [40.107.89.85 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.9 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from GCC02-BL0-obe.outbound.protection.outlook.com (mail-bl2gcc02on2085.outbound.protection.outlook.com [40.107.89.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1FB8E00EBB
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2019 13:47:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AM7KZrD5c3o8wb5Dwx9Nz3UBf0FG65TARhtbK2k3D26UVufJa6vNLzh2VS3najZZ8i9sRb/qCIohnXAgvS8QveYFfvKvYjVFQE6dDz6m2ue327X+FjZ1flxnGljyo6fSPKcgWSKBTOYXc/v8d8Vx/OjZmZuU88K4eli1lq3cJ37++P3Cawtr5OjqYnoamOOl32w1WjfnFF00uyrG2BB4BH6dj9xclz5vUAjakDH1hhRMbUcik1zsVzOukuHlcrjhIQWLpuf+6HrNXoXisHXEJZTH/7cyg+8ltbmHEADTGhD+Mm09fLE5aY6sPXeDFqoyIjlVId5dYqWNsCPjBHOCBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mq7gYhRnneLG1jeTBaOUjFqtI/qescCImv9grvRLg/o=;
 b=TFRRhyycMSSpqs7vhshCIhB0cUSiR7mjddQycqs/RxzM/sCklfgYEGJ4UDMUbumIXs5VLiLrdTPOZ1vJLxl5P2sevO+m4fuwN+3otFLiZlhObuvA3U7lzBiehbgczRN31MQUkeinXD/5cUrbnFxqxodIlZqlCw/eExYR/WiIVPiJ/h7HkiUXvCMvAm0EOtyJhd4q/e0fIAQvVsr1qvNPh30zXUExpfDCU/gguxYEHSlLUl4Xo2O5SW+V0gCqP4OVEaTP1WGu2aIZUC97j+/oWERfF4ZlE/R0as9A1eaSEW7jp3/dwGSXjpZgQoMtMMwR3X2s9qZPZeQTacm8XQrWEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sri.com; dmarc=pass action=none header.from=sri.com; dkim=pass
 header.d=sri.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sri.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mq7gYhRnneLG1jeTBaOUjFqtI/qescCImv9grvRLg/o=;
 b=fxGb/kOu3+3IK2AAy0+gWdXUhjXRYiHeFT9wvZXoSk7puS+lVY1SKVhsXl7D7kjpYddfrVVBXClOeDTPFH6/GA9Iu91TrRMo/hSdfwK2NVPoKoXG8OLFzrxtAuT35x2WmzgZmOO8CVnhFMJ5avp73KTQYmJ06e10ksw7voU5vmI=
Received: from BN6PR09MB1203.namprd09.prod.outlook.com (10.172.18.137) by
 BN6PR09MB1393.namprd09.prod.outlook.com (10.172.22.136) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.22; Tue, 3 Dec 2019 21:47:47 +0000
Received: from BN6PR09MB1203.namprd09.prod.outlook.com
 ([fe80::c900:bcda:b7b9:7c26]) by BN6PR09MB1203.namprd09.prod.outlook.com
 ([fe80::c900:bcda:b7b9:7c26%9]) with mapi id 15.20.2495.014; Tue, 3 Dec 2019
 21:47:47 +0000
From: "Aaron Solochek" <aaron.solochek@sri.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: error trying to add repo file to image
Thread-Topic: error trying to add repo file to image
Thread-Index: AdWqIdOZrD1trHIcQZy6p/hvIYBA7Q==
Date: Tue, 3 Dec 2019 21:47:47 +0000
Message-ID: 
 <BN6PR09MB1203BD9D84AD6552086EB1D79A420@BN6PR09MB1203.namprd09.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aaron.solochek@sri.com; 
x-originating-ip: [130.33.8.138]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: db16a2da-adc2-4b29-67c8-08d7783a6fb9
x-ms-traffictypediagnostic: BN6PR09MB1393:
x-microsoft-antispam-prvs: 
 <BN6PR09MB1393CF3ED0BA7BD4B6AA60099A420@BN6PR09MB1393.namprd09.prod.outlook.com>
x-safelist: Domain-whitelisted
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 02408926C4
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(376002)(346002)(396003)(366004)(39850400004)(136003)(20264003)(199004)(189003)(6506007)(5640700003)(7736002)(26005)(9686003)(256004)(7696005)(74316002)(66556008)(6436002)(4744005)(86362001)(478600001)(6306002)(54896002)(14454004)(2351001)(55016002)(102836004)(9326002)(64756008)(76116006)(66946007)(52536014)(81156014)(66476007)(1730700003)(8676002)(66446008)(33656002)(25786009)(5660300002)(71200400001)(71190400001)(44832011)(3846002)(6116002)(790700001)(6916009)(186003)(2906002)(316002)(81166006)(2501003)(99286004)(8936002);DIR:OUT;SFP:1101;SCL:1;SRVR:BN6PR09MB1393;H:BN6PR09MB1203.namprd09.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: sri.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 dtwqfUwrJHIvFpBFbOxi8U5XSGE8erngw68cswvLJQ6ZloKfiXvgdaimAAt++eRJDrGDa4G6Pml9ZosTOwKIw+P2bZQdi3RKesI0guJnQfy2Iutvm0eeY02gdpcc6xNPKLuBku3kZZamB+Ej5zuYuGhVOQijP4eHU9IW7aXoBNDposIq0mKfFIyGg9TImQOYl3U27ppyDQIap/fAiI5a7XBG6nx0sdoVHvrk/vfMgQbKo3XPXIcNtuQ2c8S1u5htDn8x/PbvVkEFkddxTx0lE1jg8tTAY5kZbeDOnyhxMLc3nT+Ettit+y8imBVWCiAY9Pqu6aivEmhimZlge+aS0fTKUIuYe7BJFDF6weBodqk83vcJpOZEZjO3S8stZzHV6aEr5W2flUWdns+KcThuHTyPLSYsEvO+5vdGjb5LqKZVyj9+2Sg0VWNO/V+3XsqC
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: sri.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db16a2da-adc2-4b29-67c8-08d7783a6fb9
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2019 21:47:47.3632
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 40779d33-79c4-4626-b8bf-140c4d5e9075
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UW2pNdE/ZBwCf9KjQEoFekbbTAcigbg1twxguR80OkL7zk3gy4Gk+Zvmym23KhXCp/YXFwCd793mUO1aPkQFeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR09MB1393
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN6PR09MB1203BD9D84AD6552086EB1D79A420BN6PR09MB1203namp_"

--_000_BN6PR09MB1203BD9D84AD6552086EB1D79A420BN6PR09MB1203namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I am trying to make an image (this is for an i.MX8, although I don't think =
it matters for this question) that contains a dnf repo in it. I created a d=
nf_%.bbappend file in my layer with the following contents:

LICENSE =3D "CLOSED"
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"

SRC_URI +=3D " \
        file://my.repo \
        "

do_install_append () {
    install -d ${D}${sysconfdir}/yum.repos.d/
    install -m 0644 ${WORKDIR}/my.repo ${D}${sysconfdir}/yum.repos.d/
}

FILES_${PN} +=3D " \
    ${sysconfdir}/yum.repos.d/my.repo \
    "

This same structure works fine for base-files, but for dnf I get the follow=
ing error:

[log_check] Failed to synchronize cache for repo 'oe-packages', disabling.


Can anyone tell me what is happening and how to fix it?

Thank you.

-Aaron

--_000_BN6PR09MB1203BD9D84AD6552086EB1D79A420BN6PR09MB1203namp_
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
	{font-family:Courier;
	panose-1:2 7 4 9 2 2 5 2 4 4;}
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to make an image (this is for an i.MX8, =
although I don&#8217;t think it matters for this question) that contains a =
dnf repo in it. I created a dnf_%.bbappend file in my layer with the follow=
ing contents:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:12.0pt;font-family:Courier">LICENSE =3D &quot;CLOSED&quot;<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:12.0pt;font-family:Courier">FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR=
}/files:&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:12.0pt;font-family:Courier"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:12.0pt;font-family:Courier">SRC_URI &#43;=3D &quot; \<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:12.0pt;font-family:Courier">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; f=
ile://my.repo \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:12.0pt;font-family:Courier">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &=
quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:12.0pt;font-family:Courier"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:12.0pt;font-family:Courier">do_install_append () {<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:12.0pt;font-family:Courier">&nbsp;&nbsp;&nbsp; install -d ${D}${sysconfd=
ir}/yum.repos.d/<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:12.0pt;font-family:Courier">&nbsp;&nbsp;&nbsp; install -m 0644 ${WORKDIR=
}/my.repo ${D}${sysconfdir}/yum.repos.d/<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:12.0pt;font-family:Courier">}<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:12.0pt;font-family:Courier"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:12.0pt;font-family:Courier">FILES_${PN} &#43;=3D &quot; \<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:12.0pt;font-family:Courier">&nbsp;&nbsp;&nbsp; ${sysconfdir}/yum.repos.d=
/my.repo \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:12.0pt;font-family:Courier">&nbsp;&nbsp;&nbsp; &quot;<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:12.0pt;font-family:Courier"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">This same structure works fine for base-files, but f=
or dnf I get the following error:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:Courier;=
color:#BF0000">[log_check] Failed to synchronize cache for repo 'oe-package=
s', disabling.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:Courier;=
color:#BF0000"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:Courier;=
color:#BF0000"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">Can anyone tell me what is happening and how to fix =
it?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-Aaron<o:p></o:p></p>
</div>
</body>
</html>

--_000_BN6PR09MB1203BD9D84AD6552086EB1D79A420BN6PR09MB1203namp_--
