Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.9346.1599266002788604357
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Sep 2020 17:33:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=T5EXUL/9;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: david.reyna@windriver.com)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2085.outbound.protection.outlook.com [40.107.220.85])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9D12738C1194
	for <yocto@yoctoproject.org>; Fri,  4 Sep 2020 17:33:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S2rdssrmk78LVO/ZfXr0ox3stKFTMjWZE/lWkSiWBgvvW7pPIjpDdMlSXP6NsuKFB3wBE2iGZqGHHb313Znwy/ef0Ma7NOI+vP0jUex5WUmts99N6trQ4BOsYiSxnByfxjOhlw3O0nPp/TXhM2h8+vCkRgDA+b2qRNFFgu47ZWVTXjlxNDglWec/yPsoK6yxAJMDBSNWTCEsi96VRteGcuxWJgWEuv+FKu6U9gpnaFuZa9QgFQTYZTgRaT/QtaFWC5hmFMuQlV5sOsn/6JAPxcN3ladUI3+kZbaPgaHQcOCKXaA+zrH/4Q1EhMF9FM87ua3wQqERh0NTGdXLEGWrJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SZ29kFgpo7nN5xJNY/lfKpuy1Qibv7T58GAyQ3PU7uw=;
 b=Uv+c9XUANXGKgVH4IJF3pBEcUFVQfTcQ8a/hf60L0xoO7SWOX4RNU/n9tuKLq+NBJ3tQYUCI3boZtEzUQ7m2KO3axgcg+HD49IrYWXrsD+hskJqoljosJzgIYTeI425Fz9Lp/l7QQxfDHizAPhEXVqBEoFHqueB+Fgqx4RvhXB8M2dFJ17sjshWlmq90cEIrXKRslS239dVWZL3qT2Ob0QkJxfKlZBrjsvZUAG3WdFnj/d/uh/8N/NVkSVs8D8MIXv/DPo4dM9nxr9sROBbdXaF79Dfe6i5VL/SHNvl7U3enQhrhz8KQQMMpJZJLOSuA0uB8R+p/ouHM/ChvSa17FA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SZ29kFgpo7nN5xJNY/lfKpuy1Qibv7T58GAyQ3PU7uw=;
 b=T5EXUL/95ultBqZF6k4frbl5NDrfdfvm+qYuAt7BFxiryO9+Um7dAFbwTK9Ac3wvV9STdB4iuMRKjLfeLAr3tGdKHQ5c+WHwM11rc+mprxIVOtKN3/oradqmfadDoCmrqClFQLZ2TzBD20657OT82p6ZgD8Knz1QQd+Kpk9LApM=
Received: from BY5PR11MB4167.namprd11.prod.outlook.com (2603:10b6:a03:185::28)
 by BYAPR11MB3542.namprd11.prod.outlook.com (2603:10b6:a03:b2::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.15; Fri, 4 Sep
 2020 22:57:12 +0000
Received: from BY5PR11MB4167.namprd11.prod.outlook.com
 ([fe80::5104:66dd:5bad:34ca]) by BY5PR11MB4167.namprd11.prod.outlook.com
 ([fe80::5104:66dd:5bad:34ca%5]) with mapi id 15.20.3348.017; Fri, 4 Sep 2020
 22:57:12 +0000
From: "Reyna, David" <david.reyna@windriver.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Yocto Project Virtual Summit 2020 - CFP Open
Thread-Topic: Yocto Project Virtual Summit 2020 - CFP Open
Thread-Index: AdaDDjE0BUmQli9/R4aR7bFxA3OEvw==
Date: Fri, 4 Sep 2020 22:57:12 +0000
Message-ID: 
 <BY5PR11MB4167CEC952F6DA91437767EBEA2D0@BY5PR11MB4167.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
x-originating-ip: [24.5.28.247]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f37af41a-c3dc-4a38-b547-08d85125dc84
x-ms-traffictypediagnostic: BYAPR11MB3542:
x-microsoft-antispam-prvs: 
 <BYAPR11MB3542AB076C5456EB298B2866EA2D0@BYAPR11MB3542.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 hrOWAtkwbNmmUSXUi7Ypd/WK6OQz4eZ6umKTZ/yYHXzcV8hsyhDda+MWs5JGFeOmvrgZixED4DyEzQsAWFShXqG66+csoa5BBVMUs/q2RHr5vJauXn1ef9Va/cl40hnU9dFCEiIsYXHwMoWlPx7AnDzEE0To1VdNn9xV9DiyKVFbF+e7rW/02HuEmluRGBizqiSyxUY5JrVGsEa4XmMCufPgHOenPHcECl3FC5OTrTDuhZnL39tzS56WKPx29QJiNLebAJjIVuhNqUYttv65TaWl1U5MMmxAC17uFws829TiF7xtw+ARBIQtQ924V8yr
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB4167.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(366004)(396003)(376002)(346002)(136003)(7696005)(76116006)(66446008)(186003)(30864003)(66556008)(66476007)(66946007)(2906002)(64756008)(83380400001)(316002)(6506007)(5660300002)(86362001)(26005)(8936002)(8676002)(966005)(52536014)(55016002)(6916009)(71200400001)(9686003)(33656002)(478600001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 gfDv6iK19Bj+ZZ15h5aiUpHq3OBMbQ5hiEgab8nV886jONDcGmd8zy2hiwMOVsUB7QFmJKukYEPXnWPSHXBaWvPrqmR5aZl/vuM1JKiswTApMGmGEoeFssVt+84Zfp3ivw1weF/09xRTqfuZnxtdJ9PsvwIWcrlfK+cTepqcP3PmJVbhRyn45Vet1ugbnsogRWK/Wgj0YvpikxfD2jTOETPuYUcIzpy+VHXI4WTDGFdK6dH+GNuKAa0Jn9Jvr0Xz6D243yspsle/NIy5qPhvECyG7BBaK0dwTt3MO00ot1JUmQFf8tbCQ+sVKsqt7mfHhuicYwiGNeZ9T/YJD3MSm9p0Tzd/Ap7MDP6YD+QoKwW8pac7VWNXkgS+5XFpMxJozzptTU06rzNV6qR7bWKhEgJfMn0Mm9lICvxHFXcYyuyIByxBniEp/jmAm9DRIxI/M/K+ffir3ndFgXQICAyk1ja6ngi+4b+RiSTAk3zROu51h0dYJRwIq2BbLC3CHbCwM+jY/TstbB9KyjCf0+F+b+Y8QoOialhUrPiLh/wwc+pCt1eenylJQhPo519DfmloAG6jqkuHq9JZjRXVTzjGE2eh+/nlp9jbOorfCPGad3EI+wOT6U0LNnz2+DcEz+BHjO7mr/eTNzvNZaGKW5K69w==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4167.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f37af41a-c3dc-4a38-b547-08d85125dc84
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2020 22:57:12.7580
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6hCMpccGqcFG8mxXoxINd7thIvq4k1NI92j3Y8a6KmoO9JTTsXB2/dzYOwVeh0UTy3s4BczZFqji+A2btiqiK9MtPLAn7mD9Q5DuGrlMbw0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3542
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BY5PR11MB4167CEC952F6DA91437767EBEA2D0BY5PR11MB4167namp_"

--_000_BY5PR11MB4167CEC952F6DA91437767EBEA2D0BY5PR11MB4167namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello all!

Yocto Project is pleased to announce the Yocto Project Virtual Summit 2020,=
 a technical conference for engineers, open source technologists, students =
and academia in the OSS space.

Organized in conjunction with ELCE 2020, this 2-day event is where individu=
als will learn about Yocto Project's direction - including, but not limited=
 to, new releases, development tools, features - get training on the next w=
ave of embedded Linux technologies, and network with their industry peers, =
Yocto Project maintainers and experts.

FORMAT: The class will be presented in Zoom. It will be highly interactive =
with experienced teachers from around the world, and includes chat sessions=
, side rooms, teaching assistants, and hands-on exercises with live class a=
ccounts.
1)  Yocto Project Virtual Summit

DATE: Thursday, October 29 and Friday, October 30, 2020
TIME: 12.00PM-GMT to 8.00PM-GMT (5AM to 1PM in PST time, 8AM-4PM in EDT tim=
e, 5.30PM-1.30AM in India), as per ELCE
LOCATION: Zoom
COST: $40 USD
REGISTRATION: Go to the ELCE registration site and add Yocto Project Summit=
 as part of your registration (when the extra events become available)
EVENT INFORMATION:  https://pretalx.com/yocto-project-summit-2020

2) Yocto Project Virtual Summit - Call For Papers (CFP)

The CFP is now open. Become a presenter yourself and share your expertise!
CFP Closes: 11:59 PM PST on Monday, September 21, 2020
CFP Notifications: Monday, September 28, 2020
Slide Due Date: Monday, October 26, 2020

Submit your proposals here:  https://pretalx.com/yocto-project-summit-2020/=
cfp

CFP list of sample topics:
*       DevTool
*       Layer quality: e.g. creating robust layers, safely using existing l=
ayers
*       Future languages (e.g. Rust)
*       Productivity tricks and tools, Best Practices
*       VS Code integration
*       Security
*       Reproducibility
*       Init systems: pros and cons, selection, configuration
*       Leveraging the new runqueue optimizations for mirrors, reproducible=
 builds
*       Supporting the Application Developer
*       DevOps, CI/CD
*       Containers, VMs
*       Working with/creating BSPs
*       Practical use of the Yocto Project

Best regards,
Yocto Project Advocacy Team

If you have any questions or issues, contact us at: conferences@lists.yocto=
project.org<mailto:conferences@lists.yoctoproject.org>







--_000_BY5PR11MB4167CEC952F6DA91437767EBEA2D0BY5PR11MB4167namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">
<div>Hello all!</div>
<div>&nbsp;</div>
<div>Yocto Project is pleased to announce the Yocto Project <i>Virtual</i> =
Summit 2020, a technical conference for engineers, open source technologist=
s, students and academia in the OSS space.&nbsp; </div>
<div>&nbsp;</div>
<div>Organized in conjunction with ELCE 2020, this 2-day event is where ind=
ividuals will learn about Yocto Project&#8217;s direction &#8212; including=
, but not limited to, new releases, development tools, features &#8212; get=
 training on the next wave of embedded Linux technologies,
and network with their industry peers, Yocto Project maintainers and expert=
s.</div>
<div style=3D"margin-top:5pt;margin-bottom:5pt;"><b>FORMAT: </b>The class w=
ill be presented in Zoom. It will be highly interactive with experienced te=
achers from around the world, and includes chat sessions, side rooms, teach=
ing assistants, and hands-on exercises
with live class accounts.</div>
<div><b><u>1)&nbsp; Yocto Project Virtual Summit</u></b></div>
<div>&nbsp;</div>
<div>DATE: Thursday, October 29 and Friday, October 30, 2020</div>
<div>TIME: 12.00PM-GMT to 8.00PM-GMT <i>(5AM to 1PM in PST time, 8AM-4PM in=
 EDT time, 5.30PM-1.30AM in India)</i>, as per ELCE</div>
<div>LOCATION: Zoom</div>
<div>COST: $40 USD</div>
<div>REGISTRATION: Go to the ELCE registration site and add Yocto Project&n=
bsp;Summit as part of your registration (when the extra events become avail=
able)</div>
<div>EVENT INFORMATION:&nbsp; <a href=3D"https://pretalx.com/yocto-project-=
summit-2020"><font color=3D"#0563C1"><u>https://pretalx.com/yocto-project-s=
ummit-2020</u></font></a></div>
<div>&nbsp;</div>
<div><b><u>2) Yocto Project Virtual Summit - Call For Papers (CFP)</u></b><=
/div>
<div>&nbsp;</div>
<div>The CFP is now open. Become a presenter yourself and share your expert=
ise!</div>
<div>CFP Closes: 11:59 PM PST on Monday, September 21, 2020</div>
<div>CFP Notifications: Monday, September 28, 2020</div>
<div>Slide Due Date: Monday, October 26, 2020</div>
<div>&nbsp;</div>
<div>Submit your proposals here:&nbsp; <a href=3D"https://pretalx.com/yocto=
-project-summit-2020/cfp"><font color=3D"#0563C1"><u>https://pretalx.com/yo=
cto-project-summit-2020/cfp</u></font></a></div>
<div>&nbsp;</div>
<div>CFP list of sample topics:</div>
<ul style=3D"margin:0;padding-left:36pt;">
<li>DevTool</li><li>Layer quality: e.g. creating robust layers, safely usin=
g existing layers</li><li>Future languages (e.g. Rust)</li><li>Productivity=
 tricks and tools, Best Practices</li><li>VS Code integration</li><li>Secur=
ity</li><li>Reproducibility</li><li>Init systems: pros and cons, selection,=
 configuration</li><li>Leveraging the new runqueue optimizations for mirror=
s, reproducible builds</li><li>Supporting the Application Developer</li><li=
>DevOps, CI/CD</li><li>Containers, VMs</li><li>Working with/creating BSPs</=
li><li>Practical use of the Yocto Project</li></ul>
<div>&nbsp;</div>
<div>Best regards,</div>
<div>Yocto Project Advocacy Team</div>
<div>&nbsp;</div>
<div>If you have any questions or issues, contact us at: <a href=3D"mailto:=
conferences@lists.yoctoproject.org"><font color=3D"#0563C1"><u>conferences@=
lists.yoctoproject.org</u></font></a></div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
</span></font>
</body>
</html>

--_000_BY5PR11MB4167CEC952F6DA91437767EBEA2D0BY5PR11MB4167namp_--
