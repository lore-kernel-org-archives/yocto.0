Received: from mx0a-002e3701.pphosted.com (mx0a-002e3701.pphosted.com [148.163.147.86])
 by mx.groups.io with SMTP id smtpd.web11.2205.1586286183849778954
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Apr 2020 12:03:04 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: hpe.com, ip: 148.163.147.86, mailfrom: prvs=03668feaba=sean.mckay@hpe.com)
Received: from pps.filterd (m0150241.ppops.net [127.0.0.1])
	by mx0a-002e3701.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 037Ixqdo027441
	for <yocto@lists.yoctoproject.org>; Tue, 7 Apr 2020 19:03:03 GMT
Received: from g9t5008.houston.hpe.com (g9t5008.houston.hpe.com [15.241.48.72])
	by mx0a-002e3701.pphosted.com with ESMTP id 307xu3e63p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 07 Apr 2020 19:03:03 +0000
Received: from G9W8453.americas.hpqcorp.net (g9w8453.houston.hp.com [16.216.160.211])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g9t5008.houston.hpe.com (Postfix) with ESMTPS id 7080268
	for <yocto@lists.yoctoproject.org>; Tue,  7 Apr 2020 19:03:02 +0000 (UTC)
Received: from G1W8108.americas.hpqcorp.net (2002:10c1:483c::10c1:483c) by
 G9W8453.americas.hpqcorp.net (2002:10d8:a0d3::10d8:a0d3) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Tue, 7 Apr 2020 19:03:02 +0000
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (15.241.52.11) by
 G1W8108.americas.hpqcorp.net (16.193.72.60) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2 via Frontend Transport; Tue, 7 Apr 2020 19:03:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YU8c/RqPxNpBoUERMVoeeHTjnsR3ZetyuBMOxFIONUQwNeuDC2yQgyHESaBtyhk4dt2UKrtaQdhqc3GHGJKEubdCuxuPmpeBriWDCzRalBH9PhY2GH1tdEbuq371iMHE24Xy8g6W2dhLXQObH3KJudPni5Ryafey9IduRBLIAQLBFoqZXuufpsP8wxQW4bT4PotvAEToUcl2hZbrG1gU0H3p8Pe9eXDsu70Q/wQ41NS6lk/oYZtLfcSUO2FWR139xgnODT2Fn9bWymc0/xEI90jLXoKQCNtdqO+vKOnTd2VYlHECzL8IXHKXh1YXa+S2bcNZD9OdG/Og4h0gAyyHdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MbqaRB2LiADVeduhpV+ns8RgW7/LixZfoYwbLRnLinA=;
 b=I3mycP3jbe0Gbw/k3Fpg3+ZknpHnaTe4OfUieLNr147POvgVFz2qldq99zLt25kLOlbkhxqFqWH1HM+SJBBQjxqRvaUelfJgLuv6gI8XTKXKoltIJG/p/zhqCgpK/6nyuZxfI4aOIsm4liQHck1SwBaVp7xuYdUj1tkw/7bSn8kIoOys790ubdumSrSRpU8+Wk6N+2X8+NaV4B7K5sYKw4HbTgcrjBcPTqCWKiHhH9PxdBRSZSLoNUJZ+zhgDcknCzSQlyM9mSErwaxnqq67+hQDZXxCzBgiKz2gwcvn+dbB5FX4OR4q6xEKhQB9ULolll6pk0DQCbRIfm+PI3rihw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hpe.com; dmarc=pass action=none header.from=hpe.com; dkim=pass
 header.d=hpe.com; arc=none
Received: from TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 (2a01:111:e400:7712::19) by TU4PR8401MB0445.NAMPRD84.PROD.OUTLOOK.COM
 (2a01:111:e400:770a::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15; Tue, 7 Apr
 2020 19:03:01 +0000
Received: from TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::d52b:149f:c4d3:a17b]) by TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::d52b:149f:c4d3:a17b%5]) with mapi id 15.20.2878.021; Tue, 7 Apr 2020
 19:03:00 +0000
From: "Sean McKay" <sean.mckay@hpe.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: sstate causing stripped kernel vs symbols mismatch
Thread-Topic: sstate causing stripped kernel vs symbols mismatch
Thread-Index: AdYM/Bywfuw62hpBQNahLbh35mSTBQ==
Date: Tue, 7 Apr 2020 19:03:00 +0000
Message-ID: <TU4PR8401MB11515FC6348D7E24918F9BA482C30@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2601:204:cb03:2202:5c3e:42dd:b631:1835]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0b3c5454-34e6-4a88-a645-08d7db264afb
x-ms-traffictypediagnostic: TU4PR8401MB0445:
x-microsoft-antispam-prvs: <TU4PR8401MB04453562A6B7410F4BF8184582C30@TU4PR8401MB0445.NAMPRD84.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 036614DD9C
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFTY:;SFS:(10019020)(39860400002)(366004)(346002)(136003)(396003)(376002)(8676002)(7696005)(8936002)(2906002)(81156014)(316002)(81166006)(86362001)(66476007)(186003)(64756008)(66556008)(71200400001)(66446008)(66946007)(76116006)(33656002)(478600001)(55016002)(5660300002)(9686003)(6506007)(6916009)(52536014);DIR:OUT;SFP:1102;
received-spf: None (protection.outlook.com: hpe.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IHOKjZUt9PFSw+zF9hMCuWIHbyXcDJsCsxU9jYEyaDFfcZ4FJu2kQObxTgTWaOPW+bh/bYJjE3htyWOB4EdgYg4/1mQZ7SKwjqwgKfuH7m/jTci876qV4tnb54FDdCquIfvRWW8D0PKeVwX8ClWwsfFD43cpsnCnvUnnDM8vg00o6qOlOJOzpctCy9xppIrNnzLNVqfzg5o0GFPzheO4QbpC2WDMNzzZGXKRVIYRbOB7j+xl1jOOFlftteesKZu0U2qyIqHtS3E0kRauKjnOR2ytd5OBRmsTyAQTJiWgxOtvRH5ZL4q30hRyP8jfabs0f2lp5PdgyfCCNa7IGe51M0VIYTDOIZ2UdfGPd56nbt936C+mB/t7Sn4uPgntV0tRQbvlAcRc5FK7lG/6pLaV7jM3wNNp6HoAqUVtBofNgUN2kNJhEbBSsT4RJFSd/JZ3
x-ms-exchange-antispam-messagedata: IQ3a2p0n3XNSBdXzJqQzsFRbiU1vg4KTZgnoUGM9LuR/rgoIHIAkDXVgttOAPe4eWNKzGyjAZx1Zm6X6GB3s9Xv5Aif8WJmPDPPSKJx97SebGPfO+zdZRFaFks0xXj2EwgX+kMywGYMQIClJhz/HZ7s4a1sarRQDRl4az4KUpcN3WdS1/qLQWxRojAErmIJvJz3cZnJSvdOCL25ckiJ65w==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b3c5454-34e6-4a88-a645-08d7db264afb
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2020 19:03:00.8261
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z/dy9FQErP3qELTn3hrJAdzQFx/7KTFL8srVwHpx1TETgaDV7b3JfY+1G9dnF2Sy1Lu0VNdcpNLQLXmTY+MgTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR8401MB0445
X-OriginatorOrg: hpe.com
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.676
 definitions=2020-04-07_08:2020-04-07,2020-04-07 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 lowpriorityscore=0 malwarescore=0 impostorscore=0 priorityscore=1501
 spamscore=0 suspectscore=0 adultscore=0 mlxscore=0 phishscore=0
 bulkscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004070152
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_TU4PR8401MB11515FC6348D7E24918F9BA482C30TU4PR8401MB1151_"

--_000_TU4PR8401MB11515FC6348D7E24918F9BA482C30TU4PR8401MB1151_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

We've discovered that (quite frequently) the kernel that we deploy doesn't =
match the unstripped one that we're saving for debug symbols. I've traced t=
he issue to a combination of an sstate miss for the kernel do_deploy step c=
ombined with an sstate hit for do_package_write_rpm. (side note: we know we=
 have issues with sstate reuse/stamps including things they shouldn't which=
 is why we hit this so much. We're working on that too)

The result is that when our debug rootfs is created (where we added the ker=
nel symbols), it's got the version of the kernel from the sstate cached rpm=
 files, but since do_deploy had an sstate miss, the entire kernel gets rebu=
ilt to satisfy that dependency chain. Since the kernel doesn't have reprodu=
cible builds working, the resulting pair of kernels don't match each other =
for debug purposes.

So, I have two questions to start:

  1.  What is the recommended way to be getting debug symbols for the kerne=
l, since do_deploy doesn't seem to have a debug counterpart (which is why w=
e originally just set things up to add the rpm to the generated debug rootf=
s)
  2.  Does this seem like a bug that should be fixed? If so, what would be =
the recommended solution (more thoughts below)?

Even if there's a task somewhere that does what I'm looking for, this seems=
 like a bit of a bug. I generally feel like we want to be able to trust sst=
ate, so the fact that forking dependencies that each generate their own sst=
ate objects can be out of sync is a bit scary.
I've thought of several ways around this, but I can't say I like any of the=
m.

  *   (extremely gross hack) Create a new task to use instead of do_deploy =
that depends on do_packagegroup_write_rpm. Unpack the restored (or built) R=
PMs and use those blobs to deploy the kernel and symbols to the image direc=
tory.
  *   (gross hack with painful effects on build time) Disable sstate for do=
_package_write_rpm and do_deploy. Possibly replace with sstate logic for th=
e kernel's do_install step (side question - why doesn't do_install generate=
 sstate? It seems like it should be able to, since the point is to drop eve=
rything into the image directory)
  *   (possibly better, but sounds hard) Change the sstate logic so that if=
 anything downstream of a do_compile task needs to be rerun, everything dow=
nstream of it needs to be rerun and sstate reuse for that recipe is not all=
owed (basically all or nothing sstate). Maybe with a flag that's allowed in=
 the bitbake file to indicate that a recipe does have reproducible builds a=
nd that different pieces are allowed to come from sstate in that case.
  *   (fix the symptoms but not the problem) Figure out how to get linux-yo=
cto building in a reproducible fashion and pretend the problem doesn't exis=
t.


If you're interested, this is quite easy to reproduce - these are my repro =
steps

  *   Check out a clean copy of zeus (22.0.2)
  *   Add kernel-image to core-image-minimal in whatever fashion you choose=
 (I just dumped it in the RDEPENDS for packagegroup-core-boot for testing)
  *   bitbake core-image-minimal
  *   bitbake -c clean core-image-minimal linux-yocto (or just wipe your wh=
ole build dir, since everything should come from sstate now)
  *   Delete the sstate object(s) for linux-yocto's deploy task.
  *   bitbake core-image-minimal
  *   Compare the BuildID hashes for the kernel in the two locations using =
file (you'll need to use the kernel's extract-vmlinux script to get it out =
of the bzImage)
     *   file tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/root=
fs/boot/vmlinux-5.2.28-yocto-standard
     *   ./tmp/work-shared/qemux86-64/kernel-source/scripts/extract-vmlinux=
 tmp/deploy/images/qemux86-64/bzImage > vmlinux-deploy && file vmlinux-depl=
oy

Anyone have thoughts or suggestions?

Cheers!
-Sean McKay

--_000_TU4PR8401MB11515FC6348D7E24918F9BA482C30TU4PR8401MB1151_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
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
/* List Definitions */
@list l0
	{mso-list-id:375159432;
	mso-list-type:hybrid;
	mso-list-template-ids:380149702 67698705 67698713 67698715 67698703 676987=
13 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:386297133;
	mso-list-type:hybrid;
	mso-list-template-ids:-1357338820 -189595654 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2
	{mso-list-id:1981841367;
	mso-list-type:hybrid;
	mso-list-template-ids:-481146376 -1329417890 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l2:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l2:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l2:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l2:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We&#8217;ve discovered that (quite frequently) the k=
ernel that we deploy doesn&#8217;t match the unstripped one that we&#8217;r=
e saving for debug symbols. I&#8217;ve traced the issue to a combination of=
 an sstate miss for the kernel do_deploy step combined with
 an sstate hit for do_package_write_rpm. (side note: we know we have issues=
 with sstate reuse/stamps including things they shouldn&#8217;t which is wh=
y we hit this so much. We&#8217;re working on that too)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The result is that when our debug rootfs is created =
(where we added the kernel symbols), it&#8217;s got the version of the kern=
el from the sstate cached rpm files, but since do_deploy had an sstate miss=
, the entire kernel gets rebuilt to satisfy
 that dependency chain. Since the kernel doesn&#8217;t have reproducible bu=
ilds working, the resulting pair of kernels don&#8217;t match each other fo=
r debug purposes.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So, I have two questions to start:<o:p></o:p></p>
<ol style=3D"margin-top:0in" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo1">What is the recommended way to be getting debug symbols for the kerne=
l, since do_deploy doesn&#8217;t seem to have a debug counterpart (which is=
 why we originally just set things up to add
 the rpm to the generated debug rootfs)<o:p></o:p></li><li class=3D"MsoList=
Paragraph" style=3D"margin-left:0in;mso-list:l0 level1 lfo1">Does this seem=
 like a bug that should be fixed? If so, what would be the recommended solu=
tion (more thoughts below)?<o:p></o:p></li></ol>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Even if there&#8217;s a task somewhere that does wha=
t I&#8217;m looking for, this seems like a bit of a bug. I generally feel l=
ike we want to be able to trust sstate, so the fact that forking dependenci=
es that each generate their own sstate objects
 can be out of sync is a bit scary.<o:p></o:p></p>
<p class=3D"MsoNormal">I&#8217;ve thought of several ways around this, but =
I can&#8217;t say I like any of them.<o:p></o:p></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l2 level1 =
lfo3">(extremely gross hack) Create a new task to use instead of do_deploy =
that depends on do_packagegroup_write_rpm. Unpack the restored (or built) R=
PMs and use those blobs to deploy the
 kernel and symbols to the image directory.<o:p></o:p></li><li class=3D"Mso=
ListParagraph" style=3D"margin-left:0in;mso-list:l2 level1 lfo3">(gross hac=
k with painful effects on build time) Disable sstate for do_package_write_r=
pm and do_deploy. Possibly replace with sstate logic for the kernel&#8217;s=
 do_install step (side question
 &#8211; why doesn&#8217;t do_install generate sstate? It seems like it sho=
uld be able to, since the point is to drop everything into the image direct=
ory)<o:p></o:p></li><li class=3D"MsoListParagraph" style=3D"margin-left:0in=
;mso-list:l2 level1 lfo3">(possibly better, but sounds hard) Change the sst=
ate logic so that if anything downstream of a do_compile task needs to be r=
erun,
<i>everything</i> downstream of it needs to be rerun and sstate reuse for t=
hat recipe is not allowed (basically all or nothing sstate). Maybe with a f=
lag that&#8217;s allowed in the bitbake file to indicate that a recipe
<i>does</i> have reproducible builds and that different pieces are allowed =
to come from sstate in that case.<o:p></o:p></li><li class=3D"MsoListParagr=
aph" style=3D"margin-left:0in;mso-list:l2 level1 lfo3">(fix the symptoms bu=
t not the problem) Figure out how to get linux-yocto building in a reproduc=
ible fashion and pretend the problem doesn&#8217;t exist.<o:p></o:p></li></=
ul>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If you&#8217;re interested, this is quite easy to re=
produce &#8211; these are my repro steps<o:p></o:p></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 level1 =
lfo2">Check out a clean copy of zeus (22.0.2)<o:p></o:p></li><li class=3D"M=
soListParagraph" style=3D"margin-left:0in;mso-list:l1 level1 lfo2">Add kern=
el-image to core-image-minimal in whatever fashion you choose (I just dumpe=
d it in the RDEPENDS for packagegroup-core-boot for testing)<o:p></o:p></li=
><li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 level1=
 lfo2">bitbake core-image-minimal<o:p></o:p></li><li class=3D"MsoListParagr=
aph" style=3D"margin-left:0in;mso-list:l1 level1 lfo2">bitbake -c clean cor=
e-image-minimal linux-yocto (or just wipe your whole build dir, since every=
thing should come from sstate now)<o:p></o:p></li><li class=3D"MsoListParag=
raph" style=3D"margin-left:0in;mso-list:l1 level1 lfo2">Delete the sstate o=
bject(s) for linux-yocto&#8217;s deploy task.<o:p></o:p></li><li class=3D"M=
soListParagraph" style=3D"margin-left:0in;mso-list:l1 level1 lfo2">bitbake =
core-image-minimal<o:p></o:p></li><li class=3D"MsoListParagraph" style=3D"m=
argin-left:0in;mso-list:l1 level1 lfo2">Compare the BuildID hashes for the =
kernel in the two locations using file (you&#8217;ll need to use the kernel=
&#8217;s extract-vmlinux script to get it out of the bzImage)<o:p></o:p></l=
i><ul style=3D"margin-top:0in" type=3D"circle">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 level2 =
lfo2">file tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/rootfs/=
boot/vmlinux-5.2.28-yocto-standard<o:p></o:p></li><li class=3D"MsoListParag=
raph" style=3D"margin-left:0in;mso-list:l1 level2 lfo2">./tmp/work-shared/q=
emux86-64/kernel-source/scripts/extract-vmlinux tmp/deploy/images/qemux86-6=
4/bzImage &gt; vmlinux-deploy &amp;&amp; file vmlinux-deploy<o:p></o:p></li=
></ul>
</ul>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Anyone have thoughts or suggestions?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Cheers!<o:p></o:p></p>
<p class=3D"MsoNormal">-Sean McKay<o:p></o:p></p>
</div>
</body>
</html>

--_000_TU4PR8401MB11515FC6348D7E24918F9BA482C30TU4PR8401MB1151_--
