Received: from NAM11-CO1-obe.outbound.protection.outlook.com (NAM11-CO1-obe.outbound.protection.outlook.com [40.107.220.86])
 by mx.groups.io with SMTP id smtpd.web11.8862.1599264157825592011
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Sep 2020 17:02:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=oBRVAgSe;
 spf=pass (domain: windriver.com, ip: 40.107.220.86, mailfrom: david.reyna@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JLkSjDaQg+XU+Xk+dkqEoN+sdpIunvojBCkySfQfmiPzQ79z/wwCyCASJvzJJHLEUP/PiTgje51IvXDsQDuZHQpElrFmINptTRMoe06SGp+Ama494LrH8i3D+4U3xcSg4WK7gdjlNLM6ueCW7t7YCeWvFVQDipiuWgwmLyacAm9dh8OVChzSCT681uMSNzbNRn797seAFmlK9AXDritx33x34/NOBCKgND0zcs0VX4Ib33mLB/g9LfP4vnz3afzMaRbRr066Sby6t22M5AKa95IbnVY6z/lzzUf2BXsGLYoxVepM8kAkwi8M3iqiZNnTsaOCmdrbuJYPdKVTfzihCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IS7ARz0PiabbEm1zlq8yqYOjw0tuxX8OVcQxbgNRN0A=;
 b=CNZHpUxVxXQ0SLMF6MgOo/u0gzA3LSK8gEYVU681LgwNbz3QN8ZLSYhj2OhlTrDOC9EaQxDcnmccx98thQz9+T7ymRKB0rqnHaTAnaulMbeM2fpuZNngxCwNtwKkkINTgw1chAPofnAuw5DPZxxyzon5Es3Vpn119DdwqMSt83B9iddVJGV0lRBhKBvch+KkyJ7+s7B7GUsFFmusL+5HKu2XeRrNVPhZSZoalxXK2nE7CtD5El+GiGLbxrFojAUL5QLcIGOWwmA9F7xVmDfGpp6EswVZjLlOW9iLVolx7XBUfMBbtlpGCFEQbHRz3ZNOoHd2R3B+C3YyO573mA8s4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IS7ARz0PiabbEm1zlq8yqYOjw0tuxX8OVcQxbgNRN0A=;
 b=oBRVAgSeQp50UrdnbS17NYue/e3AoIFJLMplqaNy1Ruu7VlFOsxVd+KBpTf3KV251ovwTCckHjsQPYGv7ZgQ5SdoOubPTakiiPtDQfmzh4Ag4Df48GVLnK0wGwIjPTlphNsH+JDVQhDTh9ONEwyGUO+O2Q1WU/QQixwimo3jqyI=
Received: from BY5PR11MB4167.namprd11.prod.outlook.com (2603:10b6:a03:185::28)
 by BY5PR11MB4434.namprd11.prod.outlook.com (2603:10b6:a03:1c2::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3326.25; Sat, 5 Sep
 2020 00:02:35 +0000
Received: from BY5PR11MB4167.namprd11.prod.outlook.com
 ([fe80::5104:66dd:5bad:34ca]) by BY5PR11MB4167.namprd11.prod.outlook.com
 ([fe80::5104:66dd:5bad:34ca%5]) with mapi id 15.20.3348.017; Sat, 5 Sep 2020
 00:02:34 +0000
From: "Reyna, David" <david.reyna@windriver.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "yocto-advocacy@lists.yoctoproject.org"
	<yocto-advocacy@lists.yoctoproject.org>
Subject: Yocto Project Virtual Summit 2020 - CFP Open
Thread-Topic: Yocto Project Virtual Summit 2020 - CFP Open
Thread-Index: AdaDDjE0BUmQli9/R4aR7bFxA3OEvwACXTGA
Date: Sat, 5 Sep 2020 00:02:34 +0000
Message-ID: 
 <BY5PR11MB41672F230C287185483DC7BEEA2A0@BY5PR11MB4167.namprd11.prod.outlook.com>
References: 
 <BY5PR11MB4167CEC952F6DA91437767EBEA2D0@BY5PR11MB4167.namprd11.prod.outlook.com>
In-Reply-To: 
 <BY5PR11MB4167CEC952F6DA91437767EBEA2D0@BY5PR11MB4167.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
x-originating-ip: [24.5.28.247]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4de7ee06-9db1-45dc-a40b-08d8512efe40
x-ms-traffictypediagnostic: BY5PR11MB4434:
x-microsoft-antispam-prvs: 
 <BY5PR11MB44341B5D47930C26738765E1EA2A0@BY5PR11MB4434.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 QTX8fOrZ4Hpbpec3VqqTmZckkH2+vz7WSkY79IP2YOfL7Dday3fexIJatSkzGRKd6udEmXKjKsraWLeRsZWa43VzCAciYXn3AWgPJpWzLXG0XNsTNKW548RYZS1aH/owRkInTPrZhMtwa7x8LoXg97bxYqjBCo91IoWMx7b4F6MUB0WmGAHrDijrUjF7o7dJ+6pYR7BrkJivxh1SqEhJFAoDUt3w3WtpceCAg7qHCjvXHiMDVsc3z1ZNz5Ot7A6jWDlLnn/jdBdeymFS2QDgs5EA2ktBfq9S8KtzD3omrCZZ1a3vDCUqyG+QDv4RZIHw
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB4167.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(396003)(366004)(346002)(376002)(136003)(478600001)(7696005)(66476007)(33656002)(64756008)(6506007)(76116006)(83380400001)(66556008)(71200400001)(26005)(316002)(30864003)(4326008)(52536014)(86362001)(66946007)(66446008)(186003)(9686003)(450100002)(8676002)(966005)(6916009)(8936002)(55016002)(2906002)(5660300002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 VtKUGKUjE10N+qmxe6istP6qbZzAFwp+rf4Scu0nxRj+ry8cSHyTajvTnisud1MB4R7eBkGx2oVYsGpKqrHsXhFDIiJRfLlP/kt7XBPEd8/3YXDvPZN2hXqAFO1Ctijlg2NWdo1Utc138YiU/xAWAJdBnd7ZkIq0QMgCmNoCemMLGswydlNoWLDS9kns6G9dfzyjoxc82Zz1OEEA0+Nki4Ia/52x8mSC24iI5Lit/n3O3sj9Rh35wbGWeqWs0iOm0G/tmQwYZWVVE4cF/PquEEGNgAawtw6X0OerVdf2eZnQlCLLBjVG2E8u74GfzwVDBAQD+QkYChI9nveq8Cntckx4hVn8yYlXokrl89RLQasj8OByAPzMj+EzCSNxXu+i850UYt7l1wBHUEOkGYZNBAd5slKvqOYlZGxyW6lb1eQQGjuHUFVaubA7eK7JZoFF80YfXkyNT1pw6NJ5QdajYjMLNl00BGWhLb+DAZey4Qk0y2HuV6Dcvna/6MENH6h78pUZYeBBbNlNuN2aX2j8OVAgcr9qXSp3UTKskB/XoF03bN5qh67h6ttpWbtW54ZxIeOWVlYugO+xkyD0EeywHRaQwJW4lsIPflo2DxYIJ0ttuHYZPZ89/CLZIcz5laZmFUETAtezadyRnp5AQh4EXw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4167.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4de7ee06-9db1-45dc-a40b-08d8512efe40
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2020 00:02:34.7210
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0mAa2A9AgCAUAQx+HpbYf5H0sTVlcdusiG36As+r1qH8NKImyCz+4/avwnN23z3q8WlWyR8N/mD9BggFdOnyr7EuVyzjELqUprFtOKdfns0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4434
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BY5PR11MB41672F230C287185483DC7BEEA2A0BY5PR11MB4167namp_"

--_000_BY5PR11MB41672F230C287185483DC7BEEA2A0BY5PR11MB4167namp_
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







--_000_BY5PR11MB41672F230C287185483DC7BEEA2A0BY5PR11MB4167namp_
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
<div><b><u>1)&nbsp; Yocto Project </u></b><b><i><u>Virtual</u></i></b><b><u=
> Summit</u></b></div>
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
<div><b><u>2) Yocto Project </u></b><b><i><u>Virtual</u></i></b><b><u> Summ=
it - Call For Papers (CFP)</u></b></div>
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

--_000_BY5PR11MB41672F230C287185483DC7BEEA2A0BY5PR11MB4167namp_--
