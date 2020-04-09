Received: from mx0b-002e3701.pphosted.com (mx0b-002e3701.pphosted.com [148.163.143.35])
 by mx.groups.io with SMTP id smtpd.web10.13204.1586450535155445405
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Apr 2020 09:42:15 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: hpe.com, ip: 148.163.143.35, mailfrom: prvs=036884efd1=sean.mckay@hpe.com)
Received: from pps.filterd (m0134423.ppops.net [127.0.0.1])
	by mx0b-002e3701.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 039Gd1ng009129
	for <yocto@lists.yoctoproject.org>; Thu, 9 Apr 2020 16:42:14 GMT
Received: from g2t2353.austin.hpe.com (g2t2353.austin.hpe.com [15.233.44.26])
	by mx0b-002e3701.pphosted.com with ESMTP id 30a5qrrxct-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Thu, 09 Apr 2020 16:42:14 +0000
Received: from G4W9121.americas.hpqcorp.net (g4w9121.houston.hp.com [16.210.21.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g2t2353.austin.hpe.com (Postfix) with ESMTPS id 6FE138B
	for <yocto@lists.yoctoproject.org>; Thu,  9 Apr 2020 16:42:13 +0000 (UTC)
Received: from G4W9120.americas.hpqcorp.net (2002:10d2:150f::10d2:150f) by
 G4W9121.americas.hpqcorp.net (2002:10d2:1510::10d2:1510) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Thu, 9 Apr 2020 16:42:13 +0000
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (15.241.52.11) by
 G4W9120.americas.hpqcorp.net (16.210.21.15) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2 via Frontend Transport; Thu, 9 Apr 2020 16:42:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hJ61DZd3WXXiRjNZOB2RdOoL5fHoB1C7slpPuJUZdBCidYteSStw30OYnCjudbq66/1rueHW/PMhki4UnDnv6hjZhPD5RegVy8D69TfURqeewDtgQrI5EhvGh71yAi4a62Pg5hJ2bbpoTU4Ed9MAYR74iHSbXfsUopO+ceamMI7IRM+8CUFwWvzJr9/aMcBPnzFXpB6rd4C2XAGG246/wpCGEksqnTjVwaQt9J5PqO8kza/dm61up+qCqKjPNQvNoZD9iBEoFDbC2ui/UdgDsy6ii9r/piLWuvCuLOUKtQdqO+vv11Ra6BDIt/qs1asmovRlN4Q7EDocsPULGRjisw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s/6KAPtlQHLc88FD0Af8v8TGWC+AZbBGyI6JeSnvV3M=;
 b=azXkOQ6zHizj624ksw+ZL1eAG7Qcutzw5Y2adFufocNsgeJKZF8wRQspszNK2jHDCUlAv0LqjYZVB5Rx/4Q6q02jEGvUKU4Cd4N7T4Dr6hx//qYyf5eMlG8eizFkHBHrZY6yCO1rTKUm+ZzVDzalhJPagmlaI9WaVzE2b/G0iHVBtS2etDQs9CIgafnxY5lDKEv3/kSppFVJpPR92+b+SqnKmK/rLx8VZCWOERTeEcAG30sfljtF5cvhNtQ7Aw9foNtKDTbY1Bn3niPhImbmwEPDstvu//dI12DkKtDdREQIumrnRvapSECencBVln6r3d8eYgRBCgrbPiO2757oig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hpe.com; dmarc=pass action=none header.from=hpe.com; dkim=pass
 header.d=hpe.com; arc=none
Received: from TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 (2a01:111:e400:7712::19) by TU4PR8401MB0830.NAMPRD84.PROD.OUTLOOK.COM
 (2a01:111:e400:7710::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15; Thu, 9 Apr
 2020 16:42:11 +0000
Received: from TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::619e:7aed:3043:d9a3]) by TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::619e:7aed:3043:d9a3%6]) with mapi id 15.20.2900.015; Thu, 9 Apr 2020
 16:42:11 +0000
From: "Sean McKay" <sean.mckay@hpe.com>
To: "McKay, Sean" <sean.mckay@hpe.com>,
        "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: sstate causing stripped kernel vs symbols mismatch
Thread-Topic: sstate causing stripped kernel vs symbols mismatch
Thread-Index: AdYM/Bywfuw62hpBQNahLbh35mSTBQBkWi8A
Date: Thu, 9 Apr 2020 16:42:11 +0000
Message-ID: <TU4PR8401MB11518EBC3EB5C53C1A3DE46082C10@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
References: <16039EE1565C42EA.9427@lists.yoctoproject.org>
In-Reply-To: <16039EE1565C42EA.9427@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [73.220.75.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: de70098e-88ad-4f15-269e-08d7dca4f3b5
x-ms-traffictypediagnostic: TU4PR8401MB0830:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TU4PR8401MB08303F6D4D55BC6FD1B27EF582C10@TU4PR8401MB0830.NAMPRD84.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0368E78B5B
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFTY:;SFS:(10019020)(396003)(136003)(39860400002)(376002)(366004)(346002)(53546011)(55016002)(9686003)(6506007)(71200400001)(186003)(110136005)(316002)(86362001)(7696005)(33656002)(66946007)(8676002)(81156014)(26005)(2906002)(8936002)(66446008)(81166007)(5660300002)(66556008)(478600001)(64756008)(52536014)(66476007)(76116006);DIR:OUT;SFP:1102;
received-spf: None (protection.outlook.com: hpe.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZHKrXZOQzEKST1nVz/b1Th9inMSJE/+J0dsMtjK6hwelONt/WOZJ+2BGWpEbIb3ZlMWQXoqsseKISjsRYK5k/8olGXOj4VzxOdxjP53d6W9jXCo/s2ejgw4SMH5Ssb0OKWdiksXWa/HZkspf+0NaSLHlPzS6QOL1PlZjw/Hphou3yS6CF0diuwSUG3iY+kU7QHbGA3jz9cSQ9CVF9R1jvwHRMFqlA6fYKf4dYR52TxVim559he814VYtDuRJlhAnljJrjb2+sHU1wJiDvnCIGJNB1kGd+ke0QofcR8U/DDxl1LfX3OcNZwBdLVLdKM3QtS/JTa5IfqmVLa+a6LAoCUk4sa9vXQx+vh9dioCM6NxiaCA7o9ZRm4bFwlrpilGjeLSr+7Vc7R1sOBL5pdXvjYz3pR6lROIUaEHRfxdhFBGVNPI+HbD06stLFE8OvUBP
x-ms-exchange-antispam-messagedata: pbp7SQmVEjVWxRRCyWF2+fuIWdhYOr2RfDr1SKOmyJx+lC6zlo7HkvwynAoV9p0DpHvqhISVRacagFzyrPJWcJ2YjEJBues+zJ5tqzLLf5SOUYhdVGElaK7xnmVwTiAS455tb3glOlP/1EJqHvx5OQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: de70098e-88ad-4f15-269e-08d7dca4f3b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2020 16:42:11.6217
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FqettoHAdrjuwuwh8iSiuje7lt/lo9b7VdR9Ei89W+lInWrj7NEeR7Z3h7EMD6FkB0fccWf5Pzi9j+AsoUpb2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR8401MB0830
X-OriginatorOrg: hpe.com
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.676
 definitions=2020-04-09_06:2020-04-07,2020-04-09 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 phishscore=0
 suspectscore=0 impostorscore=0 mlxscore=0 lowpriorityscore=0 clxscore=1015
 malwarescore=0 spamscore=0 priorityscore=1501 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004090121
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_TU4PR8401MB11518EBC3EB5C53C1A3DE46082C10TU4PR8401MB1151_"

--_000_TU4PR8401MB11518EBC3EB5C53C1A3DE46082C10TU4PR8401MB1151_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Anyone have any thoughts or guidance on this?
It seems like a pretty major bug to me.

We're willing to put the work in to fix it, and if it's not something the u=
pstream community is interested in, I'll just pick a solution for us and go=
 with it.

But if it's something that we'd like me to upstream, I'd like some feedback=
 on which path I should start walking down before I start taking things apa=
rt.

Cheers!
-Sean

From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf=
 Of Sean McKay
Sent: Tuesday, April 7, 2020 12:03 PM
To: yocto@lists.yoctoproject.org
Subject: [yocto] sstate causing stripped kernel vs symbols mismatch

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

--_000_TU4PR8401MB11518EBC3EB5C53C1A3DE46082C10TU4PR8401MB1151_
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
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
	{mso-list-id:1390415697;
	mso-list-template-ids:1987976372;}
@list l3
	{mso-list-id:1660647697;
	mso-list-template-ids:-1840223498;}
@list l3:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4
	{mso-list-id:1981841367;
	mso-list-type:hybrid;
	mso-list-template-ids:-481146376 -1329417890 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l4:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l4:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l4:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l4:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l4:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l4:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l4:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l4:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l4:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l5
	{mso-list-id:2112816626;
	mso-list-template-ids:1723115400;}
@list l5:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l5:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l5:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l5:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l5:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l5:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l5:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l5:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l5:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
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
<p class=3D"MsoNormal">Anyone have any thoughts or guidance on this?<o:p></=
o:p></p>
<p class=3D"MsoNormal">It seems like a pretty major bug to me.<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We&#8217;re willing to put the work in to fix it, an=
d if it&#8217;s not something the upstream community is interested in, I&#8=
217;ll just pick a solution for us and go with it.<br>
<br>
But if it&#8217;s something that we&#8217;d like me to upstream, I&#8217;d =
like some feedback on which path I should start walking down before I start=
 taking things apart.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Cheers!<o:p></o:p></p>
<p class=3D"MsoNormal">-Sean<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> yocto@lists.yoctoproject.org &lt;yocto@=
lists.yoctoproject.org&gt;
<b>On Behalf Of </b>Sean McKay<br>
<b>Sent:</b> Tuesday, April 7, 2020 12:03 PM<br>
<b>To:</b> yocto@lists.yoctoproject.org<br>
<b>Subject:</b> [yocto] sstate causing stripped kernel vs symbols mismatch<=
o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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
lfo3">What is the recommended way to be getting debug symbols for the kerne=
l, since do_deploy doesn&#8217;t seem to have a debug counterpart (which is=
 why we originally just set things up to add
 the rpm to the generated debug rootfs)<o:p></o:p></li><li class=3D"MsoList=
Paragraph" style=3D"margin-left:0in;mso-list:l0 level1 lfo3">Does this seem=
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
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l4 level1 =
lfo6">(extremely gross hack) Create a new task to use instead of do_deploy =
that depends on do_packagegroup_write_rpm. Unpack the restored (or built) R=
PMs and use those blobs to deploy the
 kernel and symbols to the image directory.<o:p></o:p></li><li class=3D"Mso=
ListParagraph" style=3D"margin-left:0in;mso-list:l4 level1 lfo6">(gross hac=
k with painful effects on build time) Disable sstate for do_package_write_r=
pm and do_deploy. Possibly replace with sstate logic for the kernel&#8217;s=
 do_install step (side question
 &#8211; why doesn&#8217;t do_install generate sstate? It seems like it sho=
uld be able to, since the point is to drop everything into the image direct=
ory)<o:p></o:p></li><li class=3D"MsoListParagraph" style=3D"margin-left:0in=
;mso-list:l4 level1 lfo6">(possibly better, but sounds hard) Change the sst=
ate logic so that if anything downstream of a do_compile task needs to be r=
erun,
<i>everything</i> downstream of it needs to be rerun and sstate reuse for t=
hat recipe is not allowed (basically all or nothing sstate). Maybe with a f=
lag that&#8217;s allowed in the bitbake file to indicate that a recipe
<i>does</i> have reproducible builds and that different pieces are allowed =
to come from sstate in that case.<o:p></o:p></li><li class=3D"MsoListParagr=
aph" style=3D"margin-left:0in;mso-list:l4 level1 lfo6">(fix the symptoms bu=
t not the problem) Figure out how to get linux-yocto building in a reproduc=
ible fashion and pretend the problem doesn&#8217;t exist.<o:p></o:p></li></=
ul>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If you&#8217;re interested, this is quite easy to re=
produce &#8211; these are my repro steps<o:p></o:p></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 level1 =
lfo9">Check out a clean copy of zeus (22.0.2)<o:p></o:p></li><li class=3D"M=
soListParagraph" style=3D"margin-left:0in;mso-list:l1 level1 lfo9">Add kern=
el-image to core-image-minimal in whatever fashion you choose (I just dumpe=
d it in the RDEPENDS for packagegroup-core-boot for testing)<o:p></o:p></li=
><li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 level1=
 lfo9">bitbake core-image-minimal<o:p></o:p></li><li class=3D"MsoListParagr=
aph" style=3D"margin-left:0in;mso-list:l1 level1 lfo9">bitbake -c clean cor=
e-image-minimal linux-yocto (or just wipe your whole build dir, since every=
thing should come from sstate now)<o:p></o:p></li><li class=3D"MsoListParag=
raph" style=3D"margin-left:0in;mso-list:l1 level1 lfo9">Delete the sstate o=
bject(s) for linux-yocto&#8217;s deploy task.<o:p></o:p></li><li class=3D"M=
soListParagraph" style=3D"margin-left:0in;mso-list:l1 level1 lfo9">bitbake =
core-image-minimal<o:p></o:p></li><li class=3D"MsoListParagraph" style=3D"m=
argin-left:0in;mso-list:l1 level1 lfo9">Compare the BuildID hashes for the =
kernel in the two locations using file (you&#8217;ll need to use the kernel=
&#8217;s extract-vmlinux script to get it out of the bzImage)<o:p></o:p></l=
i><ul style=3D"margin-top:0in" type=3D"circle">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 level2 =
lfo9">file tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/rootfs/=
boot/vmlinux-5.2.28-yocto-standard<o:p></o:p></li><li class=3D"MsoListParag=
raph" style=3D"margin-left:0in;mso-list:l1 level2 lfo9">./tmp/work-shared/q=
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

--_000_TU4PR8401MB11518EBC3EB5C53C1A3DE46082C10TU4PR8401MB1151_--
