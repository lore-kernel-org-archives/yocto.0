Received: from KOR01-SL2-obe.outbound.protection.outlook.com (KOR01-SL2-obe.outbound.protection.outlook.com [40.107.129.122])
 by mx.groups.io with SMTP id smtpd.web11.43909.1585544388973671655
 for <yocto@lists.yoctoproject.org>;
 Sun, 29 Mar 2020 21:59:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hcl.com header.s=selector2 header.b=M7wQyKaq;
 spf=pass (domain: hcl.com, ip: 40.107.129.122, mailfrom: ajama@hcl.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=HCL.COM; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OsmU3c1sw6jau2xpqdJXN+NEnYrOpujSgLp9Fb+hQ08=;
 b=M7wQyKaqqtEUPg1k3e+sSFWeVXd06xj5kvCEnpsZ4CejdW7NzFW3b+Jk0ffd6X2pjm3P7O2Lr9RCuaST5k3INZL+RiWFuzh8XnK66i3fKwFbbcyagTE+SeJzR9P68Z0qlMgoAPNQeGuHrJLl/rQ8VOfVjnwmbDP02jCklxcJhkA=
Received: from SG2PR02CA0020.apcprd02.prod.outlook.com (2603:1096:3:17::32) by
 PS2PR04MB3621.apcprd04.prod.outlook.com (2603:1096:300:64::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Mon, 30 Mar 2020 04:59:45 +0000
Received: from SG2APC01FT012.eop-APC01.prod.protection.outlook.com
 (2603:1096:3:17:cafe::af) by SG2PR02CA0020.outlook.office365.com
 (2603:1096:3:17::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.19 via Frontend
 Transport; Mon, 30 Mar 2020 04:59:45 +0000
Authentication-Results: spf=pass (sender IP is 192.8.195.59)
 smtp.mailfrom=hcl.com; lists.yoctoproject.org; dkim=pass (signature was
 verified) header.d=HCL.COM;lists.yoctoproject.org; dmarc=pass action=none
 header.from=hcl.com;
Received-SPF: Pass (protection.outlook.com: domain of hcl.com designates
 192.8.195.59 as permitted sender) receiver=protection.outlook.com;
 client-ip=192.8.195.59; helo=APC01-SG2-obe.outbound.protection.outlook.com;
Received: from APC01-SG2-obe.outbound.protection.outlook.com (192.8.195.59) by
 SG2APC01FT012.mail.protection.outlook.com (10.152.250.184) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.17 via Frontend Transport; Mon, 30 Mar 2020 04:59:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fzHX9ZPIMuqbhI5t/0tCx8UtTaMTcHsQNh+IjzjJXnJ9fFl+OxfboCXf0sOdZlzoEnOX4u/5W90yta5Yt97SmC9YGHzo6dnUXjPVCiEN/Kt0QR+3VmLghPOyyiPWaFQHxWxLr0WdIPEFigPXMisFHYf9lbDj0+D4Dpx+8/3NLopsafnDRJI6x0QIJPp/8C+dub/gu8uvaiYZdSanW1Ke9HSyKzdf5TdIUoFYFgSmGcXLTsyVxYNFQDJSnYiwA6tQwqdRBnL7iOPPsQmzLEkutz9hJ+goOniesDNvK3WmKzidxb+5WLnICReowGh+nuq6h0CEPvteByh8/ZCqd3Dx4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OsmU3c1sw6jau2xpqdJXN+NEnYrOpujSgLp9Fb+hQ08=;
 b=SOe3dDTcUNmJFWoi+f2SHY6EKGFpFidDE6aoIg3jVw58NZjrNzSVO34WcMsypapx3Z1eSNQjcnbs+iYCi+XqenQGpyoguCGhVQxsKU8TOwJvgn3v55pNArxx/BYJccyefeV8wYbq2UTHQ9Cmh9m5m8l7i0hZ0RawjTPUxsQREWaYqDTeg59p93nc2bAYjIdVJtr42j/+9WWoAb8kx+9bqua++JhUO+8PB6ORF4OholMLEFcK9yBZDEB7/6CLwisx4qzfHzH3W+5yyF303NsB2wnQ1h1IW5ufo+EDDUFTPK6Ic+HN7xiGUa/JAxdxC/lO+cN02Y6YR9IhqMFqg4uauQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hcl.com; dmarc=pass action=none header.from=hcl.com; dkim=pass
 header.d=hcl.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=HCL.COM; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OsmU3c1sw6jau2xpqdJXN+NEnYrOpujSgLp9Fb+hQ08=;
 b=M7wQyKaqqtEUPg1k3e+sSFWeVXd06xj5kvCEnpsZ4CejdW7NzFW3b+Jk0ffd6X2pjm3P7O2Lr9RCuaST5k3INZL+RiWFuzh8XnK66i3fKwFbbcyagTE+SeJzR9P68Z0qlMgoAPNQeGuHrJLl/rQ8VOfVjnwmbDP02jCklxcJhkA=
Received: from HK0PR04MB2914.apcprd04.prod.outlook.com (20.177.25.76) by
 HK0PR04MB2898.apcprd04.prod.outlook.com (52.133.214.204) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Mon, 30 Mar 2020 04:59:41 +0000
Received: from HK0PR04MB2914.apcprd04.prod.outlook.com
 ([fe80::d30:6434:8250:2d44]) by HK0PR04MB2914.apcprd04.prod.outlook.com
 ([fe80::d30:6434:8250:2d44%5]) with mapi id 15.20.2856.019; Mon, 30 Mar 2020
 04:59:41 +0000
From: "Ajam Ali" <ajama@hcl.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"oliver.westermann@cognex.com" <oliver.westermann@cognex.com>
Subject: Re: [yocto] Fw: Reducing rootfs size in yocto
Thread-Topic: [yocto] Fw: Reducing rootfs size in yocto
Thread-Index: AQHWBQOpsr5y8icioEWpKGlX+EE4S6hd/pa9gAGpEoCAAO3PXg==
Date: Mon, 30 Mar 2020 04:59:41 +0000
Message-ID: 
 <HK0PR04MB291405E695BD0FE12AA349E9B4CB0@HK0PR04MB2914.apcprd04.prod.outlook.com>
References: 
 <HK0PR04MB291491325C57709CD3461BB9B4CD0@HK0PR04MB2914.apcprd04.prod.outlook.com>,<19211.1585493195880781238@lists.yoctoproject.org>
In-Reply-To: <19211.1585493195880781238@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=AjamA@hcl.com; 
x-originating-ip: [106.206.32.254]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 9bc5d378-1d81-4520-c745-08d7d46729e5
x-ms-traffictypediagnostic: HK0PR04MB2898:|PS2PR04MB3621:
X-Microsoft-Antispam-PRVS: 
	<PS2PR04MB36215788C378764C8268D08DB4CB0@PS2PR04MB3621.apcprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;OLM:6430;
x-forefront-prvs: 0358535363
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HK0PR04MB2914.apcprd04.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(10019020)(4636009)(376002)(366004)(346002)(396003)(136003)(39860400002)(5660300002)(33656002)(6506007)(64756008)(26005)(86362001)(110136005)(76116006)(91956017)(316002)(66556008)(66476007)(55016002)(66946007)(186003)(19627405001)(8936002)(81166006)(7696005)(71200400001)(66446008)(478600001)(9686003)(52536014)(81156014)(8676002)(2906002);DIR:OUT;SFP:1102;
received-spf: None (protection.outlook.com: hcl.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 zw/YNgDi7+cjY0mYKkiSMbkIuMlc0T4xtYI16zVewdJcKkA6vpOSLxVv+un5ypMBsFoC0a6Cf4quMsCUQoHRHmCwCkH50l8U+k67U+LbW69ZBx+p5cJJ08XAxYuOSctjgdFFV2COmCHarWSjZcGAJY85zkYCRlI6xwD6RVlSaiFdiONKDjW+i9v3MikAokU91ez4dfuS40W4XU2fwnKFZaARPccb7Pb0bUlCICSU0fPhzsBXxuxNkYmbFt/tS+PFsWvbF6+Ag/JMiV7+XBnmPPEClRQLXDl5XKyZsRNylXq9FF0uqoiLLadwVvQTnFeF0/5+WUePsmnmY8zjiaj7fzRFkwxau0htP3FjAN6891O6leEE0G35FrnqOWKkICWyOEM09MFC5L1OQoJ9kGgLkd1HEaxgpqL4SpmgRxL2QPobdrpGxLYA2gc9t/Rmx/wm
x-ms-exchange-antispam-messagedata: 
 +3hVmWgE7xWYo1dqaoMqr+x5ho+xK1W7vwwA9fR37DKOOIUE5+ckvxgAL+D7eCqbosFjbU/7k9v0sSmnNStu9dMRS3kiIbA/6dkBSlk2Dt+No8ial6jdmX0+ijyoGOAG8oGs3W7JX6LFLfCrCw0edg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK0PR04MB2898
X-DLP: MSGProcess
Return-Path: AjamA@hcl.com
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 SG2APC01FT012.eop-APC01.prod.protection.outlook.com
X-Forefront-Antispam-Report: 
	CIP:192.8.195.59;CTRY:IN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:APC01-SG2-obe.outbound.protection.outlook.com;PTR:InfoDomainNonexistent;CAT:NONE;SFTY:;SFS:(10019020)(4636009)(346002)(39860400002)(376002)(396003)(136003)(46966005)(356004)(36906005)(2906002)(316002)(336012)(19627405001)(110136005)(81156014)(55016002)(81166006)(8936002)(478600001)(9686003)(186003)(26005)(8676002)(33656002)(47076004)(82740400003)(7696005)(5660300002)(52536014)(70206006)(6506007)(86362001)(70586007);DIR:OUT;SFP:1102;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	7df05c92-6f57-4303-4055-08d7d46727e3
X-Forefront-PRVS: 0358535363
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	bS3TleTVzd/zrstDAPC/4TnPGfw3uqVukB7g44HQ58o/Gx6p9Xru6qRmQyrrVHi9OcCDx6HjGJMhv7jsmcWBctVigYL/jUYXr0E+GsrGfH4mjUc1rowEKuvSUWUJVDq5+2TvGsC9WRz36zPa1wy4J0Y4oCchy+MCkTY40glhi7j/7QRSSca6Zo9uM1bkgWwRNE9wnjUMdztbMUNnPhi6htaezdlX0drNbNyiswSVqeBWhIgB3tXIwwY2EvHoAYDnvJSAA3MoZzBw72HLQCfwfAChFHf+t3OgSgSWUdlYOLoGUSoGjVExZwG1EZdQkbwbSJ42HbnCE1LBFv2dmnRc5rk4aSF0FuTYfuqFP+qxjSlsKpVIQOaHCEfOBzrly+L4T+Tqas4JGQYKMsGrrtrUvQ8yAz7ASPM2inMPJdIKET0UYdhDFDWMUUyG+l4W+ORlrUDWrPYQVYfj545btbTx7sQEdsg7+WsMagMz2lkHdT+fSxGCCijXZ8l3vhu51R19/UfNOdN/pPK/lR8JfqLCvg==
X-OriginatorOrg: HCL.COM
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2020 04:59:43.9163
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bc5d378-1d81-4520-c745-08d7d46729e5
X-MS-Exchange-CrossTenant-Id: 189de737-c93a-4f5a-8b68-6f4ca9941912
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=189de737-c93a-4f5a-8b68-6f4ca9941912;Ip=[192.8.195.59];Helo=[APC01-SG2-obe.outbound.protection.outlook.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PS2PR04MB3621
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HK0PR04MB291405E695BD0FE12AA349E9B4CB0HK0PR04MB2914apcp_"

--_000_HK0PR04MB291405E695BD0FE12AA349E9B4CB0HK0PR04MB2914apcp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

-dev version of boost is a supporting package which is getting installed by=
 default
not by me using local.conf.

Thanks,
Ajam Ali
________________________________
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of Oliver Westermann via Lists.Yoctoproject.Org <oliver.westermann=3Dcogne=
x.com@lists.yoctoproject.org>
Sent: Sunday, March 29, 2020 8:16 PM
To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Fw: Reducing rootfs size in yocto


[CAUTION: This Email is from outside the Organization. Do not click links o=
r open attachments unless you trust the sender.]

Do you need the -dev version of boost on the device?
::DISCLAIMER::
________________________________
The contents of this e-mail and any attachment(s) are confidential and inte=
nded for the named recipient(s) only. E-mail transmission is not guaranteed=
 to be secure or error-free as information could be intercepted, corrupted,=
 lost, destroyed, arrive late or incomplete, or may contain viruses in tran=
smission. The e mail and its contents (with or without referred errors) sha=
ll therefore not attach any liability on the originator or HCL or its affil=
iates. Views or opinions, if any, presented in this email are solely those =
of the author and may not necessarily reflect the views or opinions of HCL =
or its affiliates. Any form of reproduction, dissemination, copying, disclo=
sure, modification, distribution and / or publication of this message witho=
ut the prior written consent of authorized representative of HCL is strictl=
y prohibited. If you have received this email in error please delete it and=
 notify the sender immediately. Before opening any email and/or attachments=
, please check them for viruses and other defects.
________________________________

--_000_HK0PR04MB291405E695BD0FE12AA349E9B4CB0HK0PR04MB2914apcp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
-dev version of boost is a supporting package which is getting installed by=
 default</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
not by me using local.conf.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Ajam Ali<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> yocto@lists.yoctoproj=
ect.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of Oliver Westermann=
 via Lists.Yoctoproject.Org &lt;oliver.westermann=3Dcognex.com@lists.yoctop=
roject.org&gt;<br>
<b>Sent:</b> Sunday, March 29, 2020 8:16 PM<br>
<b>To:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> Re: [yocto] Fw: Reducing rootfs size in yocto</font>
<div>&nbsp;</div>
</div>
<div>
<p></p>
<p class=3D"x_MsoNormal" style=3D"line-height:12.0pt; background:#FFEB9C"><=
b><span style=3D"font-size:10.0pt; color:#9C6501"></span></b><span style=3D=
"font-size:10.0pt; color:red">[CAUTION: This Email is from outside the Orga=
nization. Do not click links or open attachments
 unless you trust the sender.]</span></p>
<div>Do you need the -dev version of boost on the device? </div>
</div>
<font face=3D"Arial" color=3D"Gray" size=3D"1">::DISCLAIMER::<br>
<hr>
The contents of this e-mail and any attachment(s) are confidential and inte=
nded for the named recipient(s) only. E-mail transmission is not guaranteed=
 to be secure or error-free as information could be intercepted, corrupted,=
 lost, destroyed, arrive late or
 incomplete, or may contain viruses in transmission. The e mail and its con=
tents (with or without referred errors) shall therefore not attach any liab=
ility on the originator or HCL or its affiliates. Views or opinions, if any=
, presented in this email are solely
 those of the author and may not necessarily reflect the views or opinions =
of HCL or its affiliates. Any form of reproduction, dissemination, copying,=
 disclosure, modification, distribution and / or publication of this messag=
e without the prior written consent
 of authorized representative of HCL is strictly prohibited. If you have re=
ceived this email in error please delete it and notify the sender immediate=
ly. Before opening any email and/or attachments, please check them for viru=
ses and other defects.<br>
<hr>
</font>
</body>
</html>

--_000_HK0PR04MB291405E695BD0FE12AA349E9B4CB0HK0PR04MB2914apcp_--
