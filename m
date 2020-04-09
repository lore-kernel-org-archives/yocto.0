Received: from mx0b-002e3701.pphosted.com (mx0b-002e3701.pphosted.com [148.163.143.35])
 by mx.groups.io with SMTP id smtpd.web10.14188.1586452878484140907
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Apr 2020 10:21:18 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: hpe.com, ip: 148.163.143.35, mailfrom: prvs=036884efd1=sean.mckay@hpe.com)
Received: from pps.filterd (m0150244.ppops.net [127.0.0.1])
	by mx0b-002e3701.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 039HI76G009190;
	Thu, 9 Apr 2020 17:21:17 GMT
Received: from g9t5009.houston.hpe.com (g9t5009.houston.hpe.com [15.241.48.73])
	by mx0b-002e3701.pphosted.com with ESMTP id 30a6axgx6f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 09 Apr 2020 17:21:17 +0000
Received: from G1W8108.americas.hpqcorp.net (g1w8108.austin.hp.com [16.193.72.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g9t5009.houston.hpe.com (Postfix) with ESMTPS id 6A1F66F;
	Thu,  9 Apr 2020 17:21:16 +0000 (UTC)
Received: from G9W8453.americas.hpqcorp.net (2002:10d8:a0d3::10d8:a0d3) by
 G1W8108.americas.hpqcorp.net (2002:10c1:483c::10c1:483c) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Thu, 9 Apr 2020 17:21:16 +0000
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (15.241.52.13) by
 G9W8453.americas.hpqcorp.net (16.216.160.211) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2 via Frontend Transport; Thu, 9 Apr 2020 17:21:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K5X/bKSfEUbeZ5r30mxdIkJDHDeWen9lfDdg0s4eRBMCyQhBY0luX11UL3pXIzn0y/QTXBCxE9o8xERPs682dRscuM/2dOc3/86TWU3ewwb7fJFjCUQ3vw3jKavhMK4vxLoCzFBYI0dRrncbGALys/mVBIQ1zSfIbZfiWOhMuEJTMI376s8jDDIYyZdO99vNkyzNkKejXX78pYMuFaHG1JfUXy0kkQoekJgzC57WhX4YZvoM6euhEj4rBeAc/okoXfsWq1DIIjO+zR2C9xasUiUQOPoUhI6YYXEUNLwV+/IKZHTWnAjJB4zvh2+s/LdTBjDtsCDMMxFl2AYnDW611Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n97qGODC/pr2h+pcodUejV1l9GYv1Zhsoh+ASnwX25E=;
 b=lIvqt698uvETvwo5X/1oXA2wpsifq0VtyUpnPajsdX/uYv3fkqYlxtrP2SOvQxaSB18iQc403ne2RmdxPc2H2wKSgrXNGvsIQIBen8Dob6MJzbhsnRsIl5lZnvHiN3L80+P7bGcjVsG9CgoZVcMEApVJ7QOe2RVAke7XNpDn/YvbzcL5bgXc3I6K6ZOz+2M4Wwf4H26HAiW8XFU4mt2Aqm0fM446deZUbJjZD8Txsl5Vz0i0hiwFUmiZc9xoOSAUoOt6M3EaKgLewq5Nvv/glefPtQSoSWHo4hU3DkkvwzK3vgxBni4quC6UXk2FjUq0epV4vMOqB6Pg0wTqyE6dTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hpe.com; dmarc=pass action=none header.from=hpe.com; dkim=pass
 header.d=hpe.com; arc=none
Received: from TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 (2a01:111:e400:7712::19) by TU4PR8401MB1056.NAMPRD84.PROD.OUTLOOK.COM
 (2a01:111:e400:7713::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.19; Thu, 9 Apr
 2020 17:21:15 +0000
Received: from TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::619e:7aed:3043:d9a3]) by TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::619e:7aed:3043:d9a3%6]) with mapi id 15.20.2900.015; Thu, 9 Apr 2020
 17:21:15 +0000
From: "Sean McKay" <sean.mckay@hpe.com>
To: Joshua Watt <jpewhacker@gmail.com>,
        "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] sstate causing stripped kernel vs symbols mismatch
Thread-Topic: [yocto] sstate causing stripped kernel vs symbols mismatch
Thread-Index: AdYM/Bywfuw62hpBQNahLbh35mSTBQBkWi8AAACybgAAAAmrIA==
Date: Thu, 9 Apr 2020 17:21:15 +0000
Message-ID: <TU4PR8401MB115164EF01BE99951B1C721782C10@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
References: <16039EE1565C42EA.9427@lists.yoctoproject.org>
 <TU4PR8401MB11518EBC3EB5C53C1A3DE46082C10@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
 <c0573df2-dbcd-592e-ba2e-d54424e320b3@gmail.com>
In-Reply-To: <c0573df2-dbcd-592e-ba2e-d54424e320b3@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [73.220.75.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 83e332f2-99b0-4bd7-8a08-08d7dcaa688c
x-ms-traffictypediagnostic: TU4PR8401MB1056:
x-microsoft-antispam-prvs: <TU4PR8401MB105646A9AEF10B08083F51E582C10@TU4PR8401MB1056.NAMPRD84.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0368E78B5B
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFTY:;SFS:(10019020)(376002)(396003)(346002)(136003)(366004)(39860400002)(66556008)(66946007)(26005)(53546011)(66476007)(7696005)(110136005)(76116006)(186003)(64756008)(5660300002)(52536014)(6506007)(81166007)(316002)(9686003)(55016002)(71200400001)(86362001)(2906002)(8676002)(66446008)(81156014)(478600001)(8936002)(966005)(33656002);DIR:OUT;SFP:1102;
received-spf: None (protection.outlook.com: hpe.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IS+b5fT4Pb1cvu5TJ6QFy2kcng/selp2CUwXypLwCMZOrtX/1S5KtbksqfcUQ5lZht+nxXgeLaMb0lmtQ7vC1qA+YHeHiOQNYYOf7QHPcp3YEIGX7DtqZzWX2HapqFalbAxenLnxlp99jbTKBRDviJnyNstNefeJZjyyc6ILW2l0ycqS6r9WDa0Rn+9AiKv1JKiZO7j3rBTflZTImOAaKPL3RzkurserfRCclf7eg8wapL+sNFHllsqLGOjJ5WK/CFioJbTBXiPOXswSU9jn+Np3v8r+SkfaEunXSPzjEiKqj3SjDaZr8EdLdIe9HiOIlAARJ1PoPBv5e242Zyx2srbPZ/249ruGlTofcT8G9UUsmsA+jX9T6endwadGIkfhY6c8w88K0Gx8fmWjSLdQldmjNjJ4jj98D3X+ALMBMCIuFuRps/0VAz/BioVdLKhGDpjzJNi5ek/z0c5Tb5hmXCToX31fkKfaEXkVzX/1xZs0wyKC6SSCRP6ZfU9RugPy7aXzVJlQGfxzMDJ+lvzfLg==
x-ms-exchange-antispam-messagedata: RqhNFNegDmswIojkZDhwot3tqaHLlLvkJa0UlsvwPpVw66QbNb1yRWdmja7dZmYWEx4KdkKnshZmpjuKVTdWlD4RpRcBFBqvtl6iWBnkmQ6e5kZ+p53jINK64i1FRiA/dCFN0AfO1L/zNQYCS2Uggw==
x-ms-exchange-transport-forked: True
X-MS-Exchange-CrossTenant-Network-Message-Id: 83e332f2-99b0-4bd7-8a08-08d7dcaa688c
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2020 17:21:15.1686
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /7k/pJXTaAopEE+0NKGCalXjZl9HQb+oukdnTpon3i1vH/5QVdIyTYW4LE6GuhfCU9gu3BNSSn2WON4nIQMQyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR8401MB1056
X-OriginatorOrg: hpe.com
X-Proofpoint-UnRewURL: 6 URL's were un-rewritten
MIME-Version: 1.0
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.676
 definitions=2020-04-09_06:2020-04-07,2020-04-09 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 mlxlogscore=999 bulkscore=0
 priorityscore=1501 phishscore=0 mlxscore=0 malwarescore=0 spamscore=0
 clxscore=1011 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004090124
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_TU4PR8401MB115164EF01BE99951B1C721782C10TU4PR8401MB1151_"

--_000_TU4PR8401MB115164EF01BE99951B1C721782C10TU4PR8401MB1151_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I don't know offhand, but the kernel documentation seems relatively straigh=
tforward.
I can start investigating in that direction and see how complex it looks l=
ike it's going to be.

When you say that reproducible builds are turned on by default, is there a=
 flag somewhere that can be used to turn that off that I need to gate these=
 changes behind? Or can they be made globally so that the reproducibility c=
an't be turned off (easily)?


Do we expect to generally be okay with letting this sort of race condition=
 remain in sstate? I concede that it's probably okay, since I think the ker=
nel is the only thing with this kind of forking task tree behavior after do=
_compile, and if we get 100% reproducible builds working, it's not overly r=
elevant... but it seems like it probably deserves a warning somewhere in th=
e documentation.

I can also bring this question to the next technical meeting (I know I jus=
t missed one) if it seems the sort of thing we need to get consensus.

Cheers!
-Sean



From: Joshua Watt <jpewhacker@gmail.com>
Sent: Thursday, April 9, 2020 10:00 AM
To: McKay, Sean <sean.mckay@hpe.com>; yocto@lists.yoctoproject.org
Subject: Re: [yocto] sstate causing stripped kernel vs symbols mismatch



On 4/9/20 11:42 AM, Sean McKay wrote:
Anyone have any thoughts or guidance on this?
It seems like a pretty major bug to me.

We're willing to put the work in to fix it, and if it's not something the =
upstream community is interested in, I'll just pick a solution for us and g=
o with it.

But if it's something that we'd like me to upstream, I'd like some feedbac=
k on which path I should start walking down before I start taking things ap=
art.



We have had a recent push for reproducible builds (and they are now enable=
d by default). Do you have any idea how much effort it would take to make t=
he kernel build reproducibly? It's something we probably want anyway, and c=
an add to the automated testing infrastructure to ensure it doesn't regress=
.







Cheers!
-Sean

From: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <y=
octo@lists.yoctoproject.org><mailto:yocto@lists.yoctoproject.org> On Behalf=
 Of Sean McKay
Sent: Tuesday, April 7, 2020 12:03 PM
To: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>
Subject: [yocto] sstate causing stripped kernel vs symbols mismatch

Hi all,

We've discovered that (quite frequently) the kernel that we deploy doesn't=
 match the unstripped one that we're saving for debug symbols. I've traced =
the issue to a combination of an sstate miss for the kernel do_deploy step =
combined with an sstate hit for do_package_write_rpm. (side note: we know w=
e have issues with sstate reuse/stamps including things they shouldn't whic=
h is why we hit this so much. We're working on that too)

The result is that when our debug rootfs is created (where we added the ke=
rnel symbols), it's got the version of the kernel from the sstate cached rp=
m files, but since do_deploy had an sstate miss, the entire kernel gets reb=
uilt to satisfy that dependency chain. Since the kernel doesn't have reprod=
ucible builds working, the resulting pair of kernels don't match each other=
 for debug purposes.

So, I have two questions to start:

  1.  What is the recommended way to be getting debug symbols for the kern=
el, since do_deploy doesn't seem to have a debug counterpart (which is why =
we originally just set things up to add the rpm to the generated debug root=
fs)
  2.  Does this seem like a bug that should be fixed? If so, what would be=
 the recommended solution (more thoughts below)?

Even if there's a task somewhere that does what I'm looking for, this seem=
s like a bit of a bug. I generally feel like we want to be able to trust ss=
tate, so the fact that forking dependencies that each generate their own ss=
tate objects can be out of sync is a bit scary.
I've thought of several ways around this, but I can't say I like any of th=
em.

  *   (extremely gross hack) Create a new task to use instead of do_deploy=
 that depends on do_packagegroup_write_rpm. Unpack the restored (or built) =
RPMs and use those blobs to deploy the kernel and symbols to the image dire=
ctory.
  *   (gross hack with painful effects on build time) Disable sstate for d=
o_package_write_rpm and do_deploy. Possibly replace with sstate logic for t=
he kernel's do_install step (side question - why doesn't do_install generat=
e sstate? It seems like it should be able to, since the point is to drop ev=
erything into the image directory)
  *   (possibly better, but sounds hard) Change the sstate logic so that i=
f anything downstream of a do_compile task needs to be rerun, everything do=
wnstream of it needs to be rerun and sstate reuse for that recipe is not al=
lowed (basically all or nothing sstate). Maybe with a flag that's allowed i=
n the bitbake file to indicate that a recipe does have reproducible builds =
and that different pieces are allowed to come from sstate in that case.
  *   (fix the symptoms but not the problem) Figure out how to get linux-y=
octo building in a reproducible fashion and pretend the problem doesn't exi=
st.


If you're interested, this is quite easy to reproduce - these are my repro=
 steps

  *   Check out a clean copy of zeus (22.0.2)
  *   Add kernel-image to core-image-minimal in whatever fashion you choos=
e (I just dumped it in the RDEPENDS for packagegroup-core-boot for testing)
  *   bitbake core-image-minimal
  *   bitbake -c clean core-image-minimal linux-yocto (or just wipe your w=
hole build dir, since everything should come from sstate now)
  *   Delete the sstate object(s) for linux-yocto's deploy task.
  *   bitbake core-image-minimal
  *   Compare the BuildID hashes for the kernel in the two locations using=
 file (you'll need to use the kernel's extract-vmlinux script to get it out=
 of the bzImage)

     *   file tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/roo=
tfs/boot/vmlinux-5.2.28-yocto-standard
     *   ./tmp/work-shared/qemux86-64/kernel-source/scripts/extract-vmlinu=
x tmp/deploy/images/qemux86-64/bzImage > vmlinux-deploy && file vmlinux-dep=
loy

Anyone have thoughts or suggestions?

Cheers!
-Sean McKay





--_000_TU4PR8401MB115164EF01BE99951B1C721782C10TU4PR8401MB1151_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii=
">
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
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}
span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
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
	mso-list-template-ids:380149702 67698705 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
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
	mso-list-template-ids:-1357338820 -189595654 67698691 67698693 67698689 6=
7698691 67698693 67698689 67698691 67698693;}
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
	{mso-list-id:589854524;
	mso-list-template-ids:945345032;}
@list l3
	{mso-list-id:1542551430;
	mso-list-template-ids:1185341186;}
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
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
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
	{mso-list-id:1862282070;
	mso-list-template-ids:-1979527210;}
@list l4:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l5
	{mso-list-id:1981841367;
	mso-list-type:hybrid;
	mso-list-template-ids:-481146376 -1329417890 67698691 67698693 67698689 6=
7698691 67698693 67698689 67698691 67698693;}
@list l5:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l5:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l5:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l5:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l5:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l5:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l5:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l5:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l5:level9
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I don&#8217;t know offhand, but the kernel document=
ation seems relatively straightforward.<o:p></o:p></p>
<p class=3D"MsoNormal">I can start investigating in that direction and see=
 how complex it looks like it&#8217;s going to be.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When you say that reproducible builds are turned on=
 by default, is there a flag somewhere that can be used to turn that off th=
at I need to gate these changes behind? Or can they be made globally so tha=
t the reproducibility can&#8217;t be turned
 off (easily)?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Do we expect to generally be okay with letting this=
 sort of race condition remain in sstate? I concede that it&#8217;s probabl=
y okay, since I think the kernel is the only thing with this kind of forkin=
g task tree behavior after do_compile, and
 if we get 100% reproducible builds working, it&#8217;s not overly relevan=
t&#8230; but it seems like it probably deserves a warning somewhere in the =
documentation.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I can also bring this question to the next technica=
l meeting (I know I just missed one) if it seems the sort of thing we need =
to get consensus.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Cheers!<o:p></o:p></p>
<p class=3D"MsoNormal">-Sean<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in=
 0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Joshua Watt &lt;jpewhacker@gmail.com&g=
t; <br>
<b>Sent:</b> Thursday, April 9, 2020 10:00 AM<br>
<b>To:</b> McKay, Sean &lt;sean.mckay@hpe.com&gt;; yocto@lists.yoctoprojec=
t.org<br>
<b>Subject:</b> Re: [yocto] sstate causing stripped kernel vs symbols mism=
atch<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On 4/9/20 11:42 AM, Sean McKay wrote:<o:p></o:p></p=
>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">Anyone have any thoughts or guidance on this?<o:p><=
/o:p></p>
<p class=3D"MsoNormal">It seems like a pretty major bug to me.<o:p></o:p><=
/p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">We&#8217;re willing to put the work in to fix it, a=
nd if it&#8217;s not something the upstream community is interested in, I&#=
8217;ll just pick a solution for us and go with it.<br>
<br>
But if it&#8217;s something that we&#8217;d like me to upstream, I&#8217;d=
 like some feedback on which path I should start walking down before I star=
t taking things apart.<o:p></o:p></p>
</blockquote>
<p><o:p>&nbsp;</o:p></p>
<p>We have had a recent push for reproducible builds (and they are now ena=
bled by default). Do you have any idea how much effort it would take to mak=
e the kernel build reproducibly? It's something we probably want anyway, an=
d can add to the automated testing
 infrastructure to ensure it doesn't regress.<o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
<p><o:p>&nbsp;</o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal"><br>
<br>
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Cheers!<o:p></o:p></p>
<p class=3D"MsoNormal">-Sean<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in=
 0in 0in">
<p class=3D"MsoNormal"><b>From:</b> <a href=3D"mailto:yocto@lists.yoctopro=
ject.org">yocto@lists.yoctoproject.org</a>
<a href=3D"mailto:yocto@lists.yoctoproject.org">&lt;yocto@lists.yoctoproje=
ct.org&gt;</a> <b>
On Behalf Of </b>Sean McKay<br>
<b>Sent:</b> Tuesday, April 7, 2020 12:03 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org">yocto@lists.yoc=
toproject.org</a><br>
<b>Subject:</b> [yocto] sstate causing stripped kernel vs symbols mismatch=
<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Hi all, <o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">We&#8217;ve discovered that (quite frequently) the =
kernel that we deploy doesn&#8217;t match the unstripped one that we&#8217;=
re saving for debug symbols. I&#8217;ve traced the issue to a combination o=
f an sstate miss for the kernel do_deploy step combined with
 an sstate hit for do_package_write_rpm. (side note: we know we have issue=
s with sstate reuse/stamps including things they shouldn&#8217;t which is w=
hy we hit this so much. We&#8217;re working on that too)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">The result is that when our debug rootfs is created=
 (where we added the kernel symbols), it&#8217;s got the version of the ker=
nel from the sstate cached rpm files, but since do_deploy had an sstate mis=
s, the entire kernel gets rebuilt to satisfy
 that dependency chain. Since the kernel doesn&#8217;t have reproducible b=
uilds working, the resulting pair of kernels don&#8217;t match each other f=
or debug purposes.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">So, I have two questions to start:<o:p></o:p></p>
<ol style=3D"margin-top:0in" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1=
 lfo3">What is the recommended way to be getting debug symbols for the kern=
el, since do_deploy doesn&#8217;t seem to have a debug counterpart (which i=
s why we originally just set things up to add
 the rpm to the generated debug rootfs)<o:p></o:p></li><li class=3D"MsoLis=
tParagraph" style=3D"margin-left:0in;mso-list:l0 level1 lfo3">Does this see=
m like a bug that should be fixed? If so, what would be the recommended sol=
ution (more thoughts below)?<o:p></o:p></li></ol>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Even if there&#8217;s a task somewhere that does wh=
at I&#8217;m looking for, this seems like a bit of a bug. I generally feel =
like we want to be able to trust sstate, so the fact that forking dependenc=
ies that each generate their own sstate objects
 can be out of sync is a bit scary.<o:p></o:p></p>
<p class=3D"MsoNormal">I&#8217;ve thought of several ways around this, but=
 I can&#8217;t say I like any of them.<o:p></o:p></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l5 level1=
 lfo6">(extremely gross hack) Create a new task to use instead of do_deploy=
 that depends on do_packagegroup_write_rpm. Unpack the restored (or built) =
RPMs and use those blobs to deploy the
 kernel and symbols to the image directory.<o:p></o:p></li><li class=3D"Ms=
oListParagraph" style=3D"margin-left:0in;mso-list:l5 level1 lfo6">(gross ha=
ck with painful effects on build time) Disable sstate for do_package_write_=
rpm and do_deploy. Possibly replace with sstate logic for the kernel&#8217;=
s do_install step (side question
 &#8211; why doesn&#8217;t do_install generate sstate? It seems like it sh=
ould be able to, since the point is to drop everything into the image direc=
tory)<o:p></o:p></li><li class=3D"MsoListParagraph" style=3D"margin-left:0i=
n;mso-list:l5 level1 lfo6">(possibly better, but sounds hard) Change the ss=
tate logic so that if anything downstream of a do_compile task needs to be =
rerun,
<i>everything</i> downstream of it needs to be rerun and sstate reuse for =
that recipe is not allowed (basically all or nothing sstate). Maybe with a =
flag that&#8217;s allowed in the bitbake file to indicate that a recipe
<i>does</i> have reproducible builds and that different pieces are allowed=
 to come from sstate in that case.<o:p></o:p></li><li class=3D"MsoListParag=
raph" style=3D"margin-left:0in;mso-list:l5 level1 lfo6">(fix the symptoms b=
ut not the problem) Figure out how to get linux-yocto building in a reprodu=
cible fashion and pretend the problem doesn&#8217;t exist.<o:p></o:p></li><=
/ul>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">If you&#8217;re interested, this is quite easy to r=
eproduce &#8211; these are my repro steps<o:p></o:p></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 level1=
 lfo9">Check out a clean copy of zeus (22.0.2)<o:p></o:p></li><li class=3D"=
MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 level1 lfo9">Add ker=
nel-image to core-image-minimal in whatever fashion you choose (I just dump=
ed it in the RDEPENDS for packagegroup-core-boot for testing)<o:p></o:p></l=
i><li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 level=
1 lfo9">bitbake core-image-minimal<o:p></o:p></li><li class=3D"MsoListParag=
raph" style=3D"margin-left:0in;mso-list:l1 level1 lfo9">bitbake -c clean co=
re-image-minimal linux-yocto (or just wipe your whole build dir, since ever=
ything should come from sstate now)<o:p></o:p></li><li class=3D"MsoListPara=
graph" style=3D"margin-left:0in;mso-list:l1 level1 lfo9">Delete the sstate =
object(s) for linux-yocto&#8217;s deploy task.<o:p></o:p></li><li class=3D"=
MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 level1 lfo9">bitbake=
 core-image-minimal<o:p></o:p></li><li class=3D"MsoListParagraph" style=3D"=
margin-left:0in;mso-list:l1 level1 lfo9">Compare the BuildID hashes for the=
 kernel in the two locations using file (you&#8217;ll need to use the kerne=
l&#8217;s extract-vmlinux script to get it out of the bzImage)<o:p></o:p></=
li></ul>
<ul style=3D"margin-top:0in" type=3D"disc">
<ul style=3D"margin-top:0in" type=3D"circle">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 level2=
 lfo9">file tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/rootfs=
/boot/vmlinux-5.2.28-yocto-standard<o:p></o:p></li><li class=3D"MsoListPara=
graph" style=3D"margin-left:0in;mso-list:l1 level2 lfo9">./tmp/work-shared/=
qemux86-64/kernel-source/scripts/extract-vmlinux tmp/deploy/images/qemux86-=
64/bzImage &gt; vmlinux-deploy &amp;&amp; file vmlinux-deploy<o:p></o:p></l=
i></ul>
</ul>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Anyone have thoughts or suggestions?<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Cheers!<o:p></o:p></p>
<p class=3D"MsoNormal">-Sean McKay<o:p></o:p></p>
<p class=3D"MsoNormal"><br>
<br>
<o:p></o:p></p>
<pre><o:p></o:p></pre>
</blockquote>
</div>
</body>
</html>

--_000_TU4PR8401MB115164EF01BE99951B1C721782C10TU4PR8401MB1151_--
