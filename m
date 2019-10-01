Return-Path: <Raxeshkumar.Oriya@ncr.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 109F8E00D4F; Tue,  1 Oct 2019 03:49:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_WEB autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [148.163.152.55 listed in list.dnswl.org]
	*  1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [165.225.104.81 listed in dnsbl.sorbs.net]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 14954 seconds by postgrey-1.32 at yocto-www;
	Tue, 01 Oct 2019 03:49:04 PDT
Received: from mx0b-00209e01.pphosted.com (mx0b-00209e01.pphosted.com
	[148.163.152.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A21AE00D35
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2019 03:49:04 -0700 (PDT)
Received: from pps.filterd (m0115756.ppops.net [127.0.0.1])
	by mx0b-00209e01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
	x916cqg0029757
	for <yocto@yoctoproject.org>; Tue, 1 Oct 2019 02:39:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ncr.com;
	h=from : to : cc : subject
	: date : message-id : content-type : mime-version; s=mail;
	bh=z4yAK5D9F7O+/NRR2T9UUqtt4Vbd+cZSBi86+iyTPiE=;
	b=OPz4GoLlHCYUUGylRWwSIfThSw65/wRhhI91HHMB4w+3XOe5JYQuz7P30J6KcB079Vkk
	E8Q9vbNZJhfdqy96IT+Qv7cX//Ks0S4+9JgynAcOp21xRa5lRngiocQ6aHt8Dt8OE4Su
	ViPEogv0IjbpocEafKFV6kEOLs9O8UY2bvYTJPujfjeyF6+i5XoBEPNyZQ22iLDpGSbA
	HuswRhjUW7w3LrciUbQud/SB/blmCHA9JTig3k/Md99VYWaD65jBRAa3OySvooW8FPlB
	O7YiXQEWHVifdl30oiWKJxy6/MiJlZZWeKFubdaVy7E6vp/SjkD1mFLFeiCu7aT2nym0
	hw== 
Received: from nam01-sn1-obe.outbound.protection.outlook.com
	(mail-sn1nam01lp2051.outbound.protection.outlook.com [104.47.32.51])
	by mx0b-00209e01.pphosted.com with ESMTP id 2vbxsk0p76-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Tue, 01 Oct 2019 02:39:48 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=D9BB7vCv5KSaQ/RSaHznoP77CsLcboKi2cUlAvvpI6Yw+INPVc2LhWc3wOdCnxhKpIjIkFpIYSXh9Oo1BbVMdz9/amI3C0U/PalhU+OlL5QnamUs9u3k3qnAk09vqR5WbCoG3drGvEvvXhzxT//K+j5C6tq/pbyuI9TwAYrBroI3AooGmblX3JGeVYGTxtp8yspcgf3+K27DlXRN+s9THroIYzttnXGV3pm2zoFeW6GqB1T77LTC0bX6Z25zyYGdYCy1UmmLe1JdoeJYFzIMjfsZzBHXRFN8O/z13W0KqsIBoJhTcINWn1tWRFX7gb74OULzUtddlzI0po+rtUWiKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=z4yAK5D9F7O+/NRR2T9UUqtt4Vbd+cZSBi86+iyTPiE=;
	b=Wrn4kmiVD0/6FbXt9LPxlyIGPjjfJQ9e312VMh9XknBAJBVI8mIa1zbCQC2/0LeTrYR1Tf1fj2ZEFIVcwmG6HrwUYJBF+PqgFOYWhPx7X1RGoGtYItvE6eO+t61/gq1JHI4SgM9ZJ+a5qtZcRLa+J8okmlV7xObtUo+dAY9DKbNN9r4CbhmJ5xU89M1E4N+IKGlClc5rVWnl9G6CNjlxiCetCj1cX5zbnDgiOAm2iDEN6bMYx1/G8H/PzmzDmtFWB9AoqvB6LUOI+oc1XqLgtByeqZKv05OhmT4hy8QfTH2e0MKZbsTaMYURlGooiKWtkBhKjiDi2Rsk6vuSoIpatw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=ncr.com; dmarc=pass action=none header.from=ncr.com;
	dkim=pass header.d=ncr.com; arc=none
Received: from CY4PR15MB1878.namprd15.prod.outlook.com (10.172.78.151) by
	CY4PR15MB1656.namprd15.prod.outlook.com (10.175.116.136) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2305.18; Tue, 1 Oct 2019 06:39:47 +0000
Received: from CY4PR15MB1878.namprd15.prod.outlook.com
	([fe80::c50d:31bc:eed2:44b1]) by
	CY4PR15MB1878.namprd15.prod.outlook.com
	([fe80::c50d:31bc:eed2:44b1%12]) with mapi id 15.20.2305.022;
	Tue, 1 Oct 2019 06:39:47 +0000
From: "Oriya, Raxesh" <Raxeshkumar.Oriya@ncr.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: meta-selinux warrior support
Thread-Index: AdV4IiC+SI7gd174SwyMV7TSlb7IZg==
Date: Tue, 1 Oct 2019 06:39:46 +0000
Message-ID: <CY4PR15MB18783DA507FC9EBF565795B5FD9D0@CY4PR15MB1878.namprd15.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Enabled=True;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_SiteId=ae4df1f7-611e-444f-897e-f964e1205171;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Owner=ro185046@ncr.com; 
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_SetDate=2019-10-01T06:39:44.2516634Z;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Name=Confidential;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Application=Microsoft
	Azure Information Protection;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_ActionId=c8284f43-c132-48a4-a9aa-82671294b78d;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Extended_MSFT_Method=Manual
x-originating-ip: [165.225.104.81]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4267797f-ffbc-48b1-e18b-08d7463a26e1
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: CY4PR15MB1656:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR15MB16567F21742BF4F8E195EB19FD9D0@CY4PR15MB1656.namprd15.prod.outlook.com>
x-from-ncr-tenant: Processed
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0177904E6B
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(4636009)(396003)(366004)(346002)(136003)(376002)(39860400002)(199004)(189003)(2501003)(81166006)(7736002)(9686003)(478600001)(81156014)(54906003)(1730700003)(6506007)(26005)(316002)(54896002)(6306002)(256004)(8936002)(14444005)(2351001)(2906002)(6436002)(7696005)(55016002)(5640700003)(86362001)(9326002)(8676002)(6916009)(486006)(476003)(33656002)(25786009)(71200400001)(74316002)(3480700005)(66066001)(14454004)(71190400001)(66476007)(66556008)(64756008)(66946007)(52536014)(66446008)(76116006)(55236004)(102836004)(5660300002)(99286004)(186003)(4326008)(3846002)(6116002)(790700001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR15MB1656;
	H:CY4PR15MB1878.namprd15.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ncr.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gRzFykEVUg2cFP+huXaDBW10XIRZ2ASrViAUVGMQ5VKznlmMcKBhzAeiBnVgJx38jhuPNmnVbm070XTAp/I7YL0OXLDp1IAJTe5wEriSs/U2CtWRMnZJHmON0HyYCXOBg0zS7cYd3Cw+PYnsLtetNRYUgJcksnWkfSfqW8O3suSA9UAEeDiCw1Wn7xo/hWjILZJlEtBBvr6+kHBBGFW4KnYKdccBr8AWVOWl77xVnx/I2giiJv3mNqSNJ570jPalOwHboeM540UhB7WqVPS5th5Enj2UCsDbfEiaAvHtXSid+eZ9Y3qgZfMAtaCyThCgy7DDgnRf8lYtVc06Jk2BevpeuvhHKAq8VG7B1Mdp5uGsPhEvzIRBBOjPl6DEvD3zX7DtVJpdwVqIyfu7sfcEh14WRTBaxGbtOUWM+6GIKyY=
MIME-Version: 1.0
X-OriginatorOrg: ncr.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4267797f-ffbc-48b1-e18b-08d7463a26e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2019 06:39:46.8760 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ae4df1f7-611e-444f-897e-f964e1205171
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qYinH/wct9HszT1nzJKheebTegPwkbahT+IWiKn3d1bAIjmeGR5YNGPc/jdeCiWu+MV2D9JRehTrVXXO1X9fvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR15MB1656
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
	definitions=2019-10-01_03:2019-09-30,2019-10-01 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	suspectscore=0 mlxscore=0 phishscore=0 malwarescore=0 clxscore=1011
	lowpriorityscore=0 spamscore=0 impostorscore=0 adultscore=0
	mlxlogscore=999 bulkscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.12.0-1908290000 definitions=main-1910010063
X-Mailman-Approved-At: Fri, 04 Oct 2019 08:37:50 -0700
Cc: "C M, Kiran Reddy" <kiran.reddy@ncr.com>, "Mohammad,
	Jamal M" <MohammadJamal.Mohiuddin@ncr.com>
Subject: meta-selinux warrior support
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
X-List-Received-Date: Tue, 01 Oct 2019 10:49:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR15MB18783DA507FC9EBF565795B5FD9D0CY4PR15MB1878namp_"

--_000_CY4PR15MB18783DA507FC9EBF565795B5FD9D0CY4PR15MB1878namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,



I am getting the below error when I am trying to integrate 'meta-selinux' i=
nto our yocto solution. This error also happens when I just build 'core-ima=
ge-selinux' by including the required layers in warrior branch. Can anyone =
provide a fix for this..



local.conf contains the following lines:

---------

DISTRO_FEATURES_append =3D " acl xattr pam selinux"

PREFERRED_PROVIDER_virtual/refpolicy ?=3D "refpolicy-mls"

---------



ERROR: glib-2.0-native-1_2.58.3-r0 do_configure: meson failed

ERROR: glib-2.0-native-1_2.58.3-r0 do_configure: Function failed: do_config=
ure (log file is located at /home/panther2/warrior/build/tmp/work/x86_64-li=
nux/glib-2.0-native/1_2.58.3-r0/temp/log.do_configure.34545)

ERROR: Logfile of failure stored in: /home/panther2/warrior/build/tmp/work/=
x86_64-linux/glib-2.0-native/1_2.58.3-r0/temp/log.do_configure.34545

Log data follows:

| DEBUG: Executing shell function do_configure

| NOTE: Executing meson -Ddtrace=3Dfalse -Dfam=3Dfalse -Dsystemtap=3Dfalse =
-Dselinux=3Dfalse -Dlibmount=3Dtrue -Dman=3Dfalse -Dselinux=3Ddisabled -Din=
ternal_pcre=3Dfalse -Dinstalled_tests=3Dfalse...

| The Meson build system

| Version: 0.49.2

| Source dir:

| /home/panther2/warrior/build/tmp/work/x86_64-linux/glib-2.0-native/1_2

| .58.3-r0/glib-2.58.3 Build dir:

| /home/panther2/warrior/build/tmp/work/x86_64-linux/glib-2.0-native/1_2

| .58.3-r0/build

| Build type: native build

|

| meson.build:1:0: ERROR:  Value disabled is not boolean (true or false).

|

| A full log can be found at

| /home/panther2/warrior/build/tmp/work/x86_64-linux/glib-2.0-native/1_2

| .58.3-r0/build/meson-logs/meson-log.txt

| ERROR: meson failed



Thanks,

Raxesh


--_000_CY4PR15MB18783DA507FC9EBF565795B5FD9D0CY4PR15MB1878namp_
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
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
<p class=3D"MsoPlainText">Hi,<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">I am getting the below error when I am trying to =
integrate 'meta-selinux' into our yocto solution. This error also happens w=
hen I just build 'core-image-selinux' by including the required layers in w=
arrior branch. Can anyone provide
 a fix for this.. <o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">local.conf contains the following lines:<o:p></o:=
p></p>
<p class=3D"MsoPlainText">---------<o:p></o:p></p>
<p class=3D"MsoPlainText">DISTRO_FEATURES_append =3D &quot; acl xattr pam s=
elinux&quot; <o:p></o:p></p>
<p class=3D"MsoPlainText">PREFERRED_PROVIDER_virtual/refpolicy ?=3D &quot;r=
efpolicy-mls&quot;<o:p></o:p></p>
<p class=3D"MsoPlainText">---------<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">ERROR: glib-2.0-native-1_2.58.3-r0 do_configure: =
meson failed<o:p></o:p></p>
<p class=3D"MsoPlainText">ERROR: glib-2.0-native-1_2.58.3-r0 do_configure: =
Function failed: do_configure (log file is located at /home/panther2/warrio=
r/build/tmp/work/x86_64-linux/glib-2.0-native/1_2.58.3-r0/temp/log.do_confi=
gure.34545)<o:p></o:p></p>
<p class=3D"MsoPlainText">ERROR: Logfile of failure stored in: /home/panthe=
r2/warrior/build/tmp/work/x86_64-linux/glib-2.0-native/1_2.58.3-r0/temp/log=
.do_configure.34545<o:p></o:p></p>
<p class=3D"MsoPlainText">Log data follows:<o:p></o:p></p>
<p class=3D"MsoPlainText">| DEBUG: Executing shell function do_configure<o:=
p></o:p></p>
<p class=3D"MsoPlainText">| NOTE: Executing meson -Ddtrace=3Dfalse -Dfam=3D=
false -Dsystemtap=3Dfalse -Dselinux=3Dfalse -Dlibmount=3Dtrue -Dman=3Dfalse=
 -Dselinux=3Ddisabled -Dinternal_pcre=3Dfalse -Dinstalled_tests=3Dfalse...<=
o:p></o:p></p>
<p class=3D"MsoPlainText">| The Meson build system<o:p></o:p></p>
<p class=3D"MsoPlainText">| Version: 0.49.2<o:p></o:p></p>
<p class=3D"MsoPlainText">| Source dir: <o:p></o:p></p>
<p class=3D"MsoPlainText">| /home/panther2/warrior/build/tmp/work/x86_64-li=
nux/glib-2.0-native/1_2<o:p></o:p></p>
<p class=3D"MsoPlainText">| .58.3-r0/glib-2.58.3 Build dir: <o:p></o:p></p>
<p class=3D"MsoPlainText">| /home/panther2/warrior/build/tmp/work/x86_64-li=
nux/glib-2.0-native/1_2<o:p></o:p></p>
<p class=3D"MsoPlainText">| .58.3-r0/build<o:p></o:p></p>
<p class=3D"MsoPlainText">| Build type: native build<o:p></o:p></p>
<p class=3D"MsoPlainText">|<o:p></o:p></p>
<p class=3D"MsoPlainText">| meson.build:1:0: ERROR:&nbsp; Value disabled is=
 not boolean (true or false).<o:p></o:p></p>
<p class=3D"MsoPlainText">|<o:p></o:p></p>
<p class=3D"MsoPlainText">| A full log can be found at <o:p></o:p></p>
<p class=3D"MsoPlainText">| /home/panther2/warrior/build/tmp/work/x86_64-li=
nux/glib-2.0-native/1_2<o:p></o:p></p>
<p class=3D"MsoPlainText">| .58.3-r0/build/meson-logs/meson-log.txt<o:p></o=
:p></p>
<p class=3D"MsoPlainText">| ERROR: meson failed<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Thanks,<o:p></o:p></p>
<p class=3D"MsoPlainText">Raxesh<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_CY4PR15MB18783DA507FC9EBF565795B5FD9D0CY4PR15MB1878namp_--
