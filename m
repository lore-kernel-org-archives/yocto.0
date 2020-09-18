Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.5377.1600401737167046224
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Sep 2020 21:02:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hcl.com header.s=selector2 header.b=izqlhGfy;
 spf=fail (domain: hcl.com, ip: 198.145.29.25, mailfrom: ansurivijay.r@hcl.com)
Received: from APC01-HK2-obe.outbound.protection.outlook.com (mail-eopbgr1300101.outbound.protection.outlook.com [40.107.130.101])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E7AC438C0851
	for <yocto@yoctoproject.org>; Thu, 17 Sep 2020 21:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=HCL.COM; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cMOCugDnzvWUw/IwA7CqftUS0bOTSDrs98pPqR+M2+U=;
 b=izqlhGfy81tmiq69CtCYgNfbYGhApRaBWbLOyn9BKPBccrVTq2yi1c0RHfZRg9vgXZbvQK95AIpFjWq3eCtrjFa6qq2Yt93auEPX8BlqDrgWkcCua/gAA7E7z7R3Q7f0KFuLT72rVcpns16uZukaYrwUO7fuH6iLBbIyDJiQxX8=
Received: from PS2PR04CA0016.apcprd04.prod.outlook.com (2603:1096:300:55::28)
 by TY2PR04MB2590.apcprd04.prod.outlook.com (2603:1096:404:53::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.11; Fri, 18 Sep
 2020 04:02:12 +0000
Received: from PU1APC01FT007.eop-APC01.prod.protection.outlook.com
 (2603:1096:300:55:cafe::1a) by PS2PR04CA0016.outlook.office365.com
 (2603:1096:300:55::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.11 via Frontend
 Transport; Fri, 18 Sep 2020 04:02:12 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 192.8.195.59)
 smtp.mailfrom=hcl.com; windriver.com; dkim=pass (signature was verified)
 header.d=HCL.COM;windriver.com; dmarc=pass action=none header.from=hcl.com;
Received-SPF: Pass (protection.outlook.com: domain of hcl.com designates
 192.8.195.59 as permitted sender) receiver=protection.outlook.com;
 client-ip=192.8.195.59; helo=JPN01-OS2-obe.outbound.protection.outlook.com;
Received: from JPN01-OS2-obe.outbound.protection.outlook.com (192.8.195.59) by
 PU1APC01FT007.mail.protection.outlook.com (10.152.252.99) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3391.15 via Frontend Transport; Fri, 18 Sep 2020 04:02:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gx2LMmYrzjg5PH54qlApGvTrvV1PcQ8G5l4CLJ5l/VmtmY/p8rKbDAOgYYkijzwPg29mOeFeB9kZak5FzUcGyv6gAN7Ic5uUdiIZUYmz3tO04gLc2uEkylM9ORf5i7Q3+VyNC6m2ZuuB/dPyAJ18P7jv9xHSHIRqS/brh5XTDuBDNl14yYasatX+N55WwRrNP/XRW8fNygigXIcW6EySmzp23WRVHnZRE/geTLuZEjDccqJBEVnsqS/iCFe34Zxjmcv/6goXeT5HRv7uvFUDGIrpco9QiD0ua/k60R99HtmmiCaj4hdVqPjOzI7+qQPEb28DasZu1tIhoedovWEkUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cMOCugDnzvWUw/IwA7CqftUS0bOTSDrs98pPqR+M2+U=;
 b=AUUKH5sNvyKP23VmBgwO//PkPFMuJ+h4RI1BQLqaMHiqwr2GeZ1NLmucTZey453rpUVepJtqWyKNGyPy6kvZSXyOp5RaPvoPyLrhPTxCX2kK7eKVLkFrDXUfobny0sTp5GrtaBNDdSNagBv+eb+YhIuVoBM79DahDH4oBGEF0eTD3PhEevFdQbDYorFj8w1Z3pOnf6fL3BqScDvhH5wvy/SLugIzfBEi8BWMXOvVix1qU1Bcu1QUbrDPgLkiHSDkfo57hewq0kr9DRRHgW+95dtkO/J0SXpIQ/eSbeV6od99ysyrbcAPjtW5C48JSlZ9u00spaPrm/5nPgfgkjyiQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hcl.com; dmarc=pass action=none header.from=hcl.com; dkim=pass
 header.d=hcl.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=HCL.COM; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cMOCugDnzvWUw/IwA7CqftUS0bOTSDrs98pPqR+M2+U=;
 b=izqlhGfy81tmiq69CtCYgNfbYGhApRaBWbLOyn9BKPBccrVTq2yi1c0RHfZRg9vgXZbvQK95AIpFjWq3eCtrjFa6qq2Yt93auEPX8BlqDrgWkcCua/gAA7E7z7R3Q7f0KFuLT72rVcpns16uZukaYrwUO7fuH6iLBbIyDJiQxX8=
Received: from TYAPR04MB2367.apcprd04.prod.outlook.com (2603:1096:404:17::15)
 by TYAPR04MB2445.apcprd04.prod.outlook.com (2603:1096:404:22::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.17; Fri, 18 Sep
 2020 04:02:01 +0000
Received: from TYAPR04MB2367.apcprd04.prod.outlook.com
 ([fe80::19b7:78fd:2b8f:aee5]) by TYAPR04MB2367.apcprd04.prod.outlook.com
 ([fe80::19b7:78fd:2b8f:aee5%4]) with mapi id 15.20.3391.011; Fri, 18 Sep 2020
 04:02:01 +0000
From: "Ansurivijay Ramana" <ansurivijay.r@hcl.com>
To: Randy MacLeod <randy.macleod@windriver.com>, Yocto discussion list
	<yocto@yoctoproject.org>
Subject: Re: [yocto-builds] relocate_sdk.py is failing when installing yocto3.1.2 SDK
Thread-Topic: [yocto-builds] relocate_sdk.py is failing when installing
 yocto3.1.2 SDK
Thread-Index: AdaM+KR3w8lxn4hLR/aLNSygoBGwAAAFFioAABiNnuA=
Date: Fri, 18 Sep 2020 04:02:01 +0000
Message-ID: 
 <TYAPR04MB23674586B6B9E0E33FACD9CBF13F0@TYAPR04MB2367.apcprd04.prod.outlook.com>
References: 
 <TYAPR04MB236735778EF825C895595418F13E0@TYAPR04MB2367.apcprd04.prod.outlook.com>
 <1fcf121b-4486-76cb-b6b5-a75f04701018@windriver.com>
In-Reply-To: <1fcf121b-4486-76cb-b6b5-a75f04701018@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-hclclassification: HCL_Cla5s_1nt3rnal
x-titus-metadata-40: 
 eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL2hjbCIsImlkIjoiYmU2NDQ3ZjEtYjZhOS00ZTBjLWI2MWYtYjlhYTkyZjUzZTE1IiwicHJvcHMiOlt7Im4iOiJIQ0xDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiSENMX0NsYTVzXzFudDNybmFsIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE4LjQuMTg0My4xMjMiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZzZrZVk5Uk9NWXhEak9yUkJlOE1VWXZiYTRkdWpzZk9JY2M4b3Q3QU1TWkMzVWdpYmNrNTZ4Ymt6Y2wyS25OMyJ9
Authentication-Results-Original: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none header.from=hcl.com;
x-originating-ip: [122.175.29.21]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: a9632ac9-8fae-443b-226b-08d85b879eb2
x-ms-traffictypediagnostic: TYAPR04MB2445:|TY2PR04MB2590:
X-Microsoft-Antispam-PRVS: 
	<TY2PR04MB25902652DE53786301D1C747F13F0@TY2PR04MB2590.apcprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;OLM:5797;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 gJt9BcgvL2LulofTonQBFNGv5fvHHTPy1gEkPEsZdlvs8yyGX3QSSvRek4UsnmuDdPJj4DGWVOjmoZbWQa0oMUHhj61kP5onHO/qONa9eAiwgnDJYW6sgAJ4+0onpH2cDxpVywdsVAAzu7duTpRw8M/pUq5FkLlcS8+iPEXSkVnic/zfj7Fc1rgde0LRrKBDSkcmL6wcCEEcS3vIkxf9Q97a5ZFu9gYhX3JeeYGyNF5L5SQj65mxeFY/D43vrnI6zJjLWZgjwWA1dtwuUam6Xnd7vCQV4ZttWN3a37LGy9k1aFGh9tySUEGjhEqQiO3gqUIPytPLgra0vbk9AowjpfGG5MhCZhxo3m5qZkVuMEDqY+tXd7+h30F9b09ZbMziSQ8E3Qp0j3ijVfw7XjMs1/LHEl/2UwDGzA0B1WhiEHu6lTz86JLtZGKCDWVxU4dVpmd5FBM+bHZce6UrGCyFtA==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYAPR04MB2367.apcprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(366004)(396003)(136003)(346002)(376002)(9686003)(5660300002)(55016002)(33656002)(8936002)(83380400001)(316002)(110136005)(166002)(478600001)(53546011)(6506007)(86362001)(7696005)(52536014)(186003)(8676002)(26005)(66446008)(64756008)(66556008)(66476007)(2906002)(966005)(71200400001)(66946007)(76116006);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 rpQ7gEGrqgn7nOCTZONvffZyE3OGNGyF3O/sdgSifjOqjwPGN3SbzE4k2gwIA5Oj+gqVKaXFhieM3Gvp/ev8aXOXUPJz3kW+nIXqzsObvGtBNX0+3PDjNkaG5zJwXUolqUC3rfYb13bPHlFmK8dtMXWabECD5VmLUTNl5ksep0Q8vZtxuXGDQ1vA8txGoCy7zq70Ha+21e6CZox9B7CVJvFuoLA2AY35gJKjBY58Q6wbjZ4mEV6azAFEObR9H1znkV6ve1jYjc8zhJVI6kKps6UOw0YzEIO+t2q6KUCwH4g0cOMb33KiQKIXZPOu47crHmSrRZG3b6Z1nC6pwzNi58kkF6HOplTUOvYsGA531JzfVAgcd4v9Fp2R1dzg2QwePAzd9wJXUd497QLdA/jcVgxP+3q/P2HY/cvCG2cXAcxy1HLfUz4rvydpJ8pPr3O2D7TppYjFWzefgi23VYrBEuo9shOQpX7y1GX2v9WeoYs/1IHaHvqNN5Xb69tNJsocbDDwCQZEpoEPGk/6Yd7+n1J1L4TsnzIL2spMIf8BlTatdA2E/rNfvfl2AHBaniRYqDpYdenDu8pnihXNNDKwizViDGemuBATxxKlZ9rbwXNoKUI0zKKitzTCR+Pqc/vVfqzV0m+ugSASI6GBQLkPRw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR04MB2445
X-DLP: MSGProcess
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 PU1APC01FT007.eop-APC01.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	a829c503-777a-45c3-5075-08d85b8798a7
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	pI/F2c16/j1NnWzyR7eoySHXOxbmJfLDFR8ajkR72szaV2ATK8+2+irxlAo0qAmwrBJY93SEZlEJX8ss3cdPsMWPBdOieaAj5gWqoFj127v+M/bBl8dAfRK9Fyev34Yv3GgCqQfdk8OHB3UBQAEI5G/pqnl5+4UTjtY9Mw/39cQ69azStFHL6i3x3Nv6K5jjJjBUAwI4ZjnBo1PiN/3exZlmpBlQUP6EYvo/RdErwDKRCYWjm3uI+hWtvyk4qyszZTaW/bCDeywu06/GODbth48/ADV/59fM37khmQBy9PIy8UwwxY0bJI7UpUjshqTeZGQsBr4O7FvAxv9zE6kScRbN2Kb9sN1E8wDStSw+adwhOC0Mcks82H3x9Ty3f/mNsvTg9DmEm8Ngv8OdYW2HA9dqi4+lAqf98O/LAnFn90OQUiNT5kzseGEkaTLWZqXprp+mBQQU6P4jJK/+krcoh8D30jgrSzTzQGi8riUvEgx1SDnUt2s5zxffoUQjwvby
X-Forefront-Antispam-Report: 
	CIP:192.8.195.59;CTRY:IN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:JPN01-OS2-obe.outbound.protection.outlook.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(4636009)(39860400002)(136003)(396003)(346002)(376002)(46966005)(81166007)(186003)(356005)(7696005)(166002)(2906002)(82310400003)(478600001)(966005)(70206006)(70586007)(45080400002)(34020700004)(83380400001)(52536014)(82740400003)(33656002)(55016002)(336012)(9686003)(5660300002)(316002)(36906005)(53546011)(8676002)(8936002)(86362001)(47076004)(26005)(110136005)(6506007);DIR:OUT;SFP:1102;
X-OriginatorOrg: HCL.COM
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2020 04:02:10.5535
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a9632ac9-8fae-443b-226b-08d85b879eb2
X-MS-Exchange-CrossTenant-Id: 189de737-c93a-4f5a-8b68-6f4ca9941912
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=189de737-c93a-4f5a-8b68-6f4ca9941912;Ip=[192.8.195.59];Helo=[JPN01-OS2-obe.outbound.protection.outlook.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	PU1APC01FT007.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR04MB2590
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_TYAPR04MB23674586B6B9E0E33FACD9CBF13F0TYAPR04MB2367apcp_"

--_000_TYAPR04MB23674586B6B9E0E33FACD9CBF13F0TYAPR04MB2367apcp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Classification: HCL Internal
Hi Randi,

I'm using poky distro.

DISTRO ?=3D "poky"

Using Ubuntu 16.04 LTS machine. Python version available in ubuntu machine=
 is

/usr/bin/python3 --version
Python 3.5.2


Python version available in distro is 3.8.2

tmp/work/core2-32-poky-linux/python3/3.8.2-r0/



Thanks & Regards,
Vijay

From: Randy MacLeod <randy.macleod@windriver.com>
Sent: Thursday, September 17, 2020 9:40 PM
To: Ansurivijay Ramana <ansurivijay.r@hcl.com>; Yocto discussion list <yoc=
to@yoctoproject.org>
Subject: Re: [yocto-builds] relocate_sdk.py is failing when installing yoc=
to3.1.2 SDK

[CAUTION: This Email is from outside the Organization. Unless you trust th=
e sender, Don't click links or open attachments as it may be a Phishing ema=
il, which can steal your Information and compromise your Computer.]
Hi Vijay,

I have redirected this thread to the main yocto list.
The yocto-builds list is for automated build outputs
rather than discussions.


What distro are you using?
What version of python3 is provided by that distro?
On Ubu-20.04, fyi:
$ grep python3 /.../oe-core.git/scripts/relocate_sdk.py
#!/usr/bin/env python3
$ python3 --version
Python 3.8.2

../Randy

On 2020-09-17 9:49 a.m., Ansurivijay Ramana wrote:
Classification: HCL Internal
Hi ,

I have added my layer and builded the SDK in yocto 3.1.2 but relocate_sdk.=
py is failing when installing.

Please help me in fixing this.

./poky-glibc-x86_64-core-image-sato-sdk-core2-32-qemux86-toolchain-3.1.2.s=
h
Poky (Yocto Project Reference Distro) SDK installer version 3.1.2
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Enter target directory for SDK (default: /opt/poky/3.1.2): /home/vijay/bui=
ld/test3
You are about to install the SDK to "/home/vijay/build/test3". Proceed [Y/=
n]? Y
Extracting SDK............................................................=
...........................................................................=
...........................................................................=
.......................................................done
Setting it up...Traceback (most recent call last):
  File "/home/vijay/build/test3/relocate_sdk.py", line 244, in <module>
    change_dl_sysdirs(e)
  File "/home/vijay/build/test3/relocate_sdk.py", line 118, in change_dl_s=
ysdirs
    sh_offset, sh_size =3D struct.unpack("<24xQQ24x", sh_hdr)
struct.error: unpack requires a string argument of length 64
SDK could not be set up. Relocate script failed. Abort!

Thanks & Regards,
Vijay
::DISCLAIMER::
________________________________
The contents of this e-mail and any attachment(s) are confidential and int=
ended for the named recipient(s) only. E-mail transmission is not guarantee=
d to be secure or error-free as information could be intercepted, corrupted=
, lost, destroyed, arrive late or incomplete, or may contain viruses in tra=
nsmission. The e mail and its contents (with or without referred errors) sh=
all therefore not attach any liability on the originator or HCL or its affi=
liates. Views or opinions, if any, presented in this email are solely those=
 of the author and may not necessarily reflect the views or opinions of HCL=
 or its affiliates. Any form of reproduction, dissemination, copying, discl=
osure, modification, distribution and / or publication of this message with=
out the prior written consent of authorized representative of HCL is strict=
ly prohibited. If you have received this email in error please delete it an=
d notify the sender immediately. Before opening any email and/or attachment=
s, please check them for viruses and other defects.
________________________________











--

# Randy MacLeod

# Wind River Linux

--_000_TYAPR04MB23674586B6B9E0E33FACD9CBF13F0TYAPR04MB2367apcp_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Classification: <b><=
span style=3D"color:#08298A">HCL Internal</span></b><o:p></o:p></p>
<p class=3D"MsoNormal">Hi Randi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m using poky distro.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">DISTRO ?=3D &quot;poky&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Using Ubuntu 16.04 LTS machine. Python version avai=
lable in ubuntu machine is
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"SV">/usr/bin/python3 --version<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"SV">Python 3.5.2<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"SV"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"SV"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">Python version available in distro is 3.8.2 <o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">tmp/work/core2-32-poky-linux/python3/3.8.2-r0/<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks &amp; Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Vijay<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in=
 0in 0in">
<p class=3D"MsoNormal"><a name=3D"_____replyseparator"></a><b>From:</b> Ra=
ndy MacLeod &lt;randy.macleod@windriver.com&gt;
<br>
<b>Sent:</b> Thursday, September 17, 2020 9:40 PM<br>
<b>To:</b> Ansurivijay Ramana &lt;ansurivijay.r@hcl.com&gt;; Yocto discuss=
ion list &lt;yocto@yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto-builds] relocate_sdk.py is failing when install=
ing yocto3.1.2 SDK<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto;line-height:12.0pt;background:#FFEB9C">
<span style=3D"font-size:10.0pt;color:red">[CAUTION: This Email is from ou=
tside the Organization. Unless you trust the sender, Don&#8217;t click link=
s or open attachments as it may be a Phishing email, which can steal your I=
nformation and compromise your Computer.]</span><o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal">Hi Vijay,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I have redirected this thread to the main yocto lis=
t.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">The yocto-builds list is for automated build output=
s<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">rather than discussions. <o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">What distro are you using? <o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">What version of python3 is provided by that distro?=
<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">On Ubu-20.04, fyi:<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">$ grep python3 /.../oe-core.git/scripts/relocate_sd=
k.py<br>
#!/usr/bin/env python3<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">$ python3 --version<br>
Python 3.8.2<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">../Randy<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">On 2020-09-17 9:49 a.m., Ansurivijay Ramana wrote:<=
o:p></o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Classification: <b><=
span style=3D"color:#08298A">HCL Internal</span></b><o:p></o:p></p>
<p class=3D"MsoNormal">Hi ,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">I have added my layer and builded the SDK in yocto =
3.1.2 but relocate_sdk.py is failing when installing.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Please help me in fixing this.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">./poky-glibc-x86_64-core-image-sato-sdk-core2-32-qe=
mux86-toolchain-3.1.2.sh<o:p></o:p></p>
<p class=3D"MsoNormal">Poky (Yocto Project Reference Distro) SDK installer=
 version 3.1.2<o:p></o:p></p>
<p class=3D"MsoNormal">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o=
:p></o:p></p>
<p class=3D"MsoNormal">Enter target directory for SDK (default: /opt/poky/=
3.1.2): /home/vijay/build/test3<o:p></o:p></p>
<p class=3D"MsoNormal">You are about to install the SDK to &quot;/home/vij=
ay/build/test3&quot;. Proceed [Y/n]? Y<o:p></o:p></p>
<p class=3D"MsoNormal">Extracting SDK.....................................=
...........................................................................=
...........................................................................=
...........................................................................=
...done<o:p></o:p></p>
<p class=3D"MsoNormal">Setting it up...Traceback (most recent call last):<=
o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; File &quot;/home/vijay/build/test3/relocate_=
sdk.py&quot;, line 244, in &lt;module&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; change_dl_sysdirs(e)<o:p></o:p><=
/p>
<p class=3D"MsoNormal">&nbsp; File &quot;/home/vijay/build/test3/relocate_=
sdk.py&quot;, line 118, in change_dl_sysdirs<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; sh_offset, sh_size =3D struct.un=
pack(&quot;&lt;24xQQ24x&quot;, sh_hdr)<o:p></o:p></p>
<p class=3D"MsoNormal">struct.error: unpack requires a string argument of =
length 64<o:p></o:p></p>
<p class=3D"MsoNormal">SDK could not be set up. Relocate script failed. Ab=
ort!<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Thanks &amp; Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Vijay<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:gray">::DISCLAIMER::<o:p></o:p></span></p>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><spa=
n style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:g=
ray">
<hr size=3D"2" width=3D"100%" align=3D"center">
</span></div>
<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:gray">The contents of this e-mail and any attach=
ment(s) are confidential and intended for the named recipient(s) only. E-ma=
il transmission is not guaranteed to be secure
 or error-free as information could be intercepted, corrupted, lost, destr=
oyed, arrive late or incomplete, or may contain viruses in transmission. Th=
e e mail and its contents (with or without referred errors) shall therefore=
 not attach any liability on the
 originator or HCL or its affiliates. Views or opinions, if any, presented=
 in this email are solely those of the author and may not necessarily refle=
ct the views or opinions of HCL or its affiliates. Any form of reproduction=
, dissemination, copying, disclosure,
 modification, distribution and / or publication of this message without t=
he prior written consent of authorized representative of HCL is strictly pr=
ohibited. If you have received this email in error please delete it and not=
ify the sender immediately. Before
 opening any email and/or attachments, please check them for viruses and o=
ther defects.<o:p></o:p></span></p>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><spa=
n style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:g=
ray">
<hr size=3D"2" width=3D"100%" align=3D"center">
</span></div>
<p class=3D"MsoNormal"><br>
<br>
<o:p></o:p></p>
<pre><o:p>&nbsp;</o:p></pre>
<pre><o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
</blockquote>
<p><o:p>&nbsp;</o:p></p>
<pre>-- <o:p></o:p></pre>
<pre># Randy MacLeod<o:p></o:p></pre>
<pre># Wind River Linux<o:p></o:p></pre>
</div>
</div>
</body>
</html>

--_000_TYAPR04MB23674586B6B9E0E33FACD9CBF13F0TYAPR04MB2367apcp_--
