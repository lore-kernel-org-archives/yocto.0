Return-Path: <jswensen@mmm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EC9AE00D25; Fri, 24 Jun 2016 10:28:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [136.229.8.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp-277A-C.mmm.com (smtp-277a-c.mmm.com [136.229.8.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26B2AE00D1E
	for <yocto@yoctoproject.org>; Fri, 24 Jun 2016 10:28:06 -0700 (PDT)
Received: from mailgate01.mmm.com (unknown [136.229.2.23])
	by Websense Email with ESMTPS id BD1195389C611;
	Fri, 24 Jun 2016 17:28:00 +0000 (GMT)
X-ExtLoop1: 1
Received: from mail-bn1blp0190.outbound.protection.outlook.com (HELO
	na01-bn1-obe.outbound.protection.outlook.com) ([207.46.163.190])
	by mailgate01c.mmm.com with ESMTP/TLS/AES256-SHA;
	24 Jun 2016 12:28:04 -0500
Received: from BY2PR0301MB2117.namprd03.prod.outlook.com (10.163.197.146) by
	BY2PR0301MB2120.namprd03.prod.outlook.com (10.163.197.149) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.523.12;
	Fri, 24 Jun 2016 17:28:00 +0000
Received: from BY2PR0301MB2117.namprd03.prod.outlook.com ([10.163.197.146]) by
	BY2PR0301MB2117.namprd03.prod.outlook.com ([10.163.197.146]) with
	mapi id 15.01.0523.019; Fri, 24 Jun 2016 17:28:01 +0000
From: Jake Swensen <jswensen@mmm.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] question: yocto-bsp tool warnings
Thread-Index: AQHRzj3BVexg3PhW50qANPuf9wXjwg==
Date: Fri, 24 Jun 2016 17:28:00 +0000
Message-ID: <BY2PR0301MB2117CC7C148664D5DDAE8F03C52E0@BY2PR0301MB2117.namprd03.prod.outlook.com>
References: <BY2PR0301MB21179A1F8E3485090A97527BC52D0@BY2PR0301MB2117.namprd03.prod.outlook.com>,
	<576D4589.3060402@windriver.com>
In-Reply-To: <576D4589.3060402@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=jswensen@mmm.com; 
x-originating-ip: [132.245.81.165]
x-ms-office365-filtering-correlation-id: 2a0e15b2-fd9b-49e7-288a-08d39c54e44b
x-microsoft-exchange-diagnostics: 1; BY2PR0301MB2120;
	6:QpsQqf1oE8lv4Fm7PQlbrx2NfMIPyVovAIxAOcZIo4Jy/aJhuPt2TKAjpjkMQuU7OdCF5P7g+IZ1uRWnOkr2h2pwylFMSBZcWdLhgbQHnE01W9wa46PqO0ZZI9RQc7tSDxZ33zCQUTEjR5ZZiTPTBxe8M/UFDc8rkWv+UczcYKOR3ted1dIaquSvmXzcEgv9I9ySxX2j5AiMmWVP/e1eZ8V/LlK7cqJXn5oYk3jNMJSgN7qdrhhEiDm4M59x5UP3Sw6U3Ud5q6mE2RSlMJqxF1fa+Xy3SKOVXEPZJZbMFfk0RzBxVgHbEODC4d8nKphp;
	5:7wEk2os/KDD5yy9KL5Lc2kXfgCG6U+2YAcOJ5TffyOwO69f3pawf1nhlLaWGY61W+n8cOGpuzNuG58W9tPUAPleSChLtyegfixHfzbJs212m38Hpuo+QV4uuZe/OyDUFDkJizdm+nFc3iCkjxdRrXA==;
	24:V8lxsAmusEeVF+gn+fNByad5PGTiHaloIdaJClyNBdTl91dFVkOgnyyT/ZA7XtvmybLigxWp04fP2AHdgxJlAHLw3nARMbPPdNUxqA14oEs=;
	7:5Py68x4ykulTqvRLaCCr/nHciFm1mu89SunDS1/ya2/FSz2vYZaQ3YMfVqI9Oq/Jub0ltKIwRStAfrOUDbJDPxp4NoKC/eFGQC/lCcBqyOMXqSGFXf9J69CSI2WH7Uuuuezwn5hcr2B9lbVEjFAyI0HCfxoq6glR1VfjkTUYi07tTZu5kpa8a6z62NXGc+bjMkT33JKA09E6YDNeg9+4tjH2kW/yk2oJPq+Lkk7dvz/vOgCUcmN5Lln65L/PpZ+LeTuxHJMn4zwudN6F6vKzEA==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY2PR0301MB2120;
x-microsoft-antispam-prvs: <BY2PR0301MB2120949B149534B8FF183A7AC52E0@BY2PR0301MB2120.namprd03.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(192374486261705)(264703809997249)(228905959029699); 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:BY2PR0301MB2120; BCL:0; PCL:0; RULEID:;
	SRVR:BY2PR0301MB2120; 
x-forefront-prvs: 0983EAD6B2
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(189002)(24454002)(377454003)(199003)(377424004)(7846002)(105586002)(6116002)(3846002)(5003600100003)(3660700001)(66066001)(106356001)(106116001)(7736002)(54356999)(50986999)(122556002)(305945005)(76176999)(102836003)(2906002)(5001770100001)(7696003)(97736004)(101416001)(8936002)(68736007)(3280700002)(189998001)(33656002)(3900700001)(2900100001)(5002640100001)(575784001)(76576001)(77096005)(8676002)(586003)(92566002)(81156014)(87936001)(81166006)(86362001)(107886002)(9686002)(2501003)(2950100001)(15975445007)(74316001)(19580395003)(19580405001)(10400500002)(99286002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY2PR0301MB2120;
	H:BY2PR0301MB2117.namprd03.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: mmm.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: mmm.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2016 17:28:00.7285 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: facac3c4-e2a5-4257-af76-205c8a821ddb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR0301MB2120
Subject: Re: question: yocto-bsp tool warnings
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
X-List-Received-Date: Fri, 24 Jun 2016 17:28:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Worked on jethro (and it's already in krogoth). Git detected a conflict tha=
t I think was only white=20
space.


From b01d2e26bb038240fb609ef78727696c729711ba Mon Sep 17 00:00:00 2001
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Thu, 21 Apr 2016 11:23:45 -0400
Subject: [PATCH] kernel-yocto: allow branch auditing to be suspended


When working on the yocto-bsp and kernel-lab update for yocto 1.2
we found it was impossible for a end-user BSP to isolate patches
on a branch, since with the following commit:


=A0 [kernel-yocto: enforce SRC_URI specified branch]


Any new branch would be switched to whatever was specified on the
SRC_URI and undoing the work that the yocto-bsp tool did to support
board specific patches.


To fix this, we'll keep the enforcing of branch consistency enabled
by default, but introduce a variable "KMETA_AUDIT" that when not
set will skip the check.


There's no impact for existing users, and it is only something that
other plumbing commands and tools will need to use (or care about).


[YOCTO: #9120]


(From OE-Core rev: 1d4c120edeb6e45665eafd6962a10ebb89d758eb)


Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
Signed-off-by: Ross Burton <ross.burton@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>


Conflicts:
	meta/classes/kernel-yocto.bbclass
---
=A0meta/classes/kernel-yocto.bbclass =A0 =A0 =A0 =A0 | 16 ++++++++++++++++
=A0meta/recipes-kernel/linux/linux-yocto.inc | =A01 +
=A02 files changed, 17 insertions(+)


diff --git a/meta/classes/kernel-yocto.bbclass b/meta/classes/kernel-yocto.=
bbclass
index c2d0d30..c6431a4 100644
--- a/meta/classes/kernel-yocto.bbclass
+++ b/meta/classes/kernel-yocto.bbclass
@@ -170,6 +170,22 @@ do_patch() {
=A0		fi
=A0	fi
=A0
+ =A0 =A0 =A0 =A0if [ -n "${KMETA_AUDIT}" ]; then
+ =A0 =A0 =A0 =A0 =A0 =A0current_branch=3D`git rev-parse --abbrev-ref HEAD`
+ =A0 =A0 =A0 =A0 =A0 =A0machine_branch=3D"${@ get_machine_branch(d, "${KBR=
ANCH}" )}"
+ =A0 =A0 =A0 =A0 =A0 =A0if [ "${current_branch}" !=3D "${machine_branch}" =
]; then
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0bbwarn "After meta data application, the k=
ernel tree branch is ${current_branch}."
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0bbwarn "The SRC_URI specified branch ${mac=
hine_branch}."
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0bbwarn ""
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0bbwarn "The branch will be forced to ${mac=
hine_branch}, but this means the board meta data"
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0bbwarn "(.scc files) do not match the SRC_=
URI specification."
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0bbwarn ""
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0bbwarn "The meta data and branch ${machine=
_branch} should be inspected to ensure the proper"
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0bbwarn "kernel is being built."
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0git checkout -f ${machine_branch}
+ =A0 =A0 =A0 =A0 =A0 =A0fi
+ =A0 =A0 =A0 =A0fi
+
=A0	if [ "${machine_srcrev}" !=3D "AUTOINC" ]; then
=A0		if ! [ "$(git rev-parse --verify ${machine_srcrev}~0)" =3D "$(git merg=
e-base ${machine_srcrev} HEAD)" ]; then
=A0			bberror "SRCREV ${machine_srcrev} was specified, but is not reachable=
"
diff --git a/meta/recipes-kernel/linux/linux-yocto.inc b/meta/recipes-kerne=
l/linux/linux-yocto.inc
index 81ffa24..1e383c8 100644
--- a/meta/recipes-kernel/linux/linux-yocto.inc
+++ b/meta/recipes-kernel/linux/linux-yocto.inc
@@ -33,6 +33,7 @@ SRCREV_FORMAT ?=3D "meta_machine"
=A0# =A0 2: report options that are not hardware related, but set by a BSP
=A0KCONF_AUDIT_LEVEL ?=3D "1"
=A0KCONF_BSP_AUDIT_LEVEL ?=3D "0"
+KMETA_AUDIT ?=3D "yes"
=A0
=A0LINUX_VERSION_EXTENSION ?=3D "-yocto-${LINUX_KERNEL_TYPE}"
=A0
--=A0
1.9.1







From: Bruce Ashfield <bruce.ashfield@windriver.com>
Sent: Friday, June 24, 2016 9:36 AM
To: Jake Swensen; yocto@yoctoproject.org
Subject: [EXTERNAL] Re: [yocto] question: yocto-bsp tool warnings
=A0  =20
On 2016-06-23 05:52 PM, Jake Swensen wrote:
> I've been looking into setting up my own BSP layer based on the
> standard/beaglebone branch and I've run into some warnings I wasn't famil=
iar
> with. I created a test BSP with the yocto-bsp tool and set MACHINE=3Dtest=
,
> (which is the name of my meta layer) then ran it. This produced several
> warnings:
>
> WARNING: linux-yocto-4.4.10+gitAUTOINC+870134f4bf_13852755ec-r0.1 do_patc=
h: After meta data application, the kernel tree branch is standard/test.
> WARNING: linux-yocto-4.4.10+gitAUTOINC+870134f4bf_13852755ec-r0.1 do_patc=
h: The SRC_URI specified branch standard/base.
> WARNING: linux-yocto-4.4.10+gitAUTOINC+870134f4bf_13852755ec-r0.1 do_patc=
h:
> WARNING: linux-yocto-4.4.10+gitAUTOINC+870134f4bf_13852755ec-r0.1 do_patc=
h: The branch will be forced to standard/base, but this means the board met=
a data
> WARNING: linux-yocto-4.4.10+gitAUTOINC+870134f4bf_13852755ec-r0.1 do_patc=
h: (.scc files) do not match the SRC_URI specification.
> WARNING: linux-yocto-4.4.10+gitAUTOINC+870134f4bf_13852755ec-r0.1 do_patc=
h:
> WARNING: linux-yocto-4.4.10+gitAUTOINC+870134f4bf_13852755ec-r0.1 do_patc=
h: The meta data and branch standard/base should be inspected to ensure the=
 proper
> WARNING: linux-yocto-4.4.10+gitAUTOINC+870134f4bf_13852755ec-r0.1 do_patc=
h: kernel is being built.
>
> I found the patch which enabled this warning, but I'm unsure how to allev=
iate
> it. I do intend to use the standard/test branch, but I'm not sure which
> SRC_URI is telling bitbake to build the standard/base.

I'm actively changing the code in this area, so what I'm about to
describe will be valid for about a month, and then it'll be simpler
to explain.

When you are building linux-yocto BSPs (as the yocto-bsp tool is
manipulating) there are two ways that what is build is specifiied:
the SRC_URI (bitbake, the fetcher, etc) and kernel meta-data (the
kernel-cache repository you see on the SRC_URI).

The SRC_URI must specify a branch and SRCREV, since the fetcher
requires it, and that is typically what is built (hence no warning).

But the kernel meta data also has a complete description of the
tree structure (the branching standard/base, standard/common-pc, etc),
since it validates and can re-construct the tree from scratch.

So if the recipe and meta-data disagree on the branch that is to
be built, that warning is displayed, just so there are no surprises.

It is completely valid to build something different than the kernel
meta data describes, which is why the flag KMETA_AUDIT was also
added. When it is set to a non-zero valid, the auditing happens, but
if you clear it in your bbappend, you'll no longer see the warning.

But that commit 1ce221da64e21b9ee0a743dc9372236ab22e21ba (poky), is
only in master. I should get it nominated for backporting to the
release branches. IF you cherry-pick and try it out, that would be
helpful.

Cheers,

Bruce


>
> Any idea where to start looking?
>
> Patch that enabled the warnings:  http://lists.openembedded.org/pipermail=
/openembedded-core/2016-April/119808.html
>
>
>
>

3M security scanners have not detected any malicious content in this messag=
e.

To report this email as SPAM, please forward it to spam@websense.com
    =

