Return-Path: <alexandretm@amotus.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4275FE00C18; Fri,  9 Nov 2018 13:43:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [104.47.42.124 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 1102 seconds by postgrey-1.32 at yocto-www;
	Fri, 09 Nov 2018 13:43:30 PST
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam03on0124.outbound.protection.outlook.com [104.47.42.124])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1765E00A0A
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2018 13:43:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=amotus.onmicrosoft.com; s=selector1-amotus-ca;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=WoEZqaJc101KJsqvzI8Pt1blim4abjF6RAfR/pMAbVc=;
	b=a4y6vSuziqziAzcN6d4JpKrk1H+A0xu8m77zdE3Mg/udsPl2Z9fG8VuKlsQOr6FH6W1kBugr9uH/K73ldlN5gsivsCPWk5p/CKeXXdJOpY4ZA4GHiLEjAHUiUAw58TeBUNe/tXCgIx1xHEOtJ4N8v3jrmRKbEXjJnBEYnSbolnA=
Received: from BN6PR1101MB2356.namprd11.prod.outlook.com (10.173.203.137) by
	BN6PR1101MB2355.namprd11.prod.outlook.com (10.173.203.136) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1294.20; Fri, 9 Nov 2018 21:11:00 +0000
Received: from BN6PR1101MB2356.namprd11.prod.outlook.com
	([fe80::9cf2:e26d:8f5e:685d]) by
	BN6PR1101MB2356.namprd11.prod.outlook.com
	([fe80::9cf2:e26d:8f5e:685d%4]) with mapi id 15.20.1294.034;
	Fri, 9 Nov 2018 21:11:00 +0000
From: =?iso-8859-1?Q?Mathieu_Alexandre-T=E9treault?= <alexandretm@amotus.ca>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Issue using UEFI with rootfs(squashfs) generated as a wic
Thread-Index: AQHUeGxHYyh9AhCRt0WuqAVWG75nlQ==
Date: Fri, 9 Nov 2018 21:10:59 +0000
Message-ID: <BN6PR1101MB23560D97352B710A1B9A37C2B2C60@BN6PR1101MB2356.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=alexandretm@amotus.ca; 
x-originating-ip: [24.37.194.182]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BN6PR1101MB2355;
	6:eXB+WZyeILkizlOR0B/AMxjOAEwlQV+IkwhRAXAKN462b+lrwoSuzNa4vxj6L7yNkbvMCXG2SU1alc6ljBtB1vZ5FUeETlPRW9yMb1aCRh0JL8OwJYWwt2A+Nk5VV1P02EYXu8yvedJ7wb7MDomuScrag3W5kvPPppOq/tvt3ocwsXmOTMbd8Ez6HPDFUvF76xcDy3pCza6miN4eUcYnmyV9lGM6j0pRcN+VXxr9qrYBzB0OtJWCROtFEHyw8TNlKDhzfx3Nsscidz4SEYryrQFe58aXtF6zlyW3dGRME6yNHqicQiRZ4dm6Nsd+5jCd86xxMeH6HdaXduvyuunLD73oXooiLTH2w2WfJn3/rRiErTvV5ylraoqlODzKnWsBdBJJXsYQvqIj0xLjAbf1U9mdEaEU3Qme9t+Kzq8+HikkGjXi9qBDc4HXJDCKFaPaE9xTpSAR0R2ml83SUYR+UA==;
	5:lHZH1TYn5wqBYab4TanzTa3Z8UgEbmZ6ahfUTHYHq/rVIfpmYWMlDF7APFR3GI8RXKMSB+RhWlxDA7Dg2dHjT7CaLF93T2g+NYuD9WoB4wX4WqJfz0ROnf97Wuyd8NywZjIFZKmb4vXV+ZjBmMZWVg7spJiHLJvidYrPMdzVQFA=;
	7:g/fKt1Yh6+0E7a+oUii4ig1cy/SMQfrojp471mPnSZPPvlHxpAqqmcwlaiVOCNntu9UzIsJBxf93l9ZP31XZrVnoYXeO0zzzmwqtby5JLxqQ+d+rj6d6X9AMHBXDm5PtgIROCKhJeYxcW0O+Fj7rgQ==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 8c8fdb4a-e987-41fd-3672-08d64687d966
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:BN6PR1101MB2355; 
x-ms-traffictypediagnostic: BN6PR1101MB2355:
x-microsoft-antispam-prvs: <BN6PR1101MB2355DB228D0A77CD0D7651DDB2C60@BN6PR1101MB2355.namprd11.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(93006095)(93001095)(10201501046)(3231382)(944501410)(52105095)(3002001)(148016)(149066)(150057)(6041310)(20161123564045)(20161123562045)(2016111802025)(20161123560045)(20161123558120)(6043046)(201708071742011)(7699051)(76991095);
	SRVR:BN6PR1101MB2355; BCL:0; PCL:0; RULEID:;
	SRVR:BN6PR1101MB2355; 
x-forefront-prvs: 08512C5403
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(366004)(39840400004)(396003)(376002)(346002)(136003)(199004)(189003)(3846002)(2501003)(6116002)(186003)(26005)(6916009)(316002)(508600001)(7736002)(53936002)(7696005)(97736004)(2906002)(14454004)(5660300001)(86362001)(6506007)(74316002)(33656002)(102836004)(6606003)(486006)(256004)(2351001)(71200400001)(55016002)(54896002)(5640700003)(68736007)(71190400001)(81156014)(81166006)(19627405001)(6436002)(99286004)(1730700003)(105586002)(74482002)(66066001)(25786009)(106356001)(476003)(8936002)(9686003)(2900100001)(8676002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR1101MB2355;
	H:BN6PR1101MB2356.namprd11.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: amotus.ca does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: gajaLXlZKc6nlZmgFVgwmioifDrd5Lui/sLrEf1nHIvMhPqi1baTGlFhObI1L/6CVI0Qj2BcRJiOGi4glCstpzYcMZvyO1oxJFn3PFnmBRWBDciLSmhOlZTbH09f+RrAEeqh37wnFkjfmRJA6CDrE+oW/yhvVmy5hxKaqRtt2qceF8bZc59zCuvl5MFiEb5mCddu+DJhFJmiw1lo5h3LkYvz5PrzWhXOeH5YeDjjtDZ/21DfzHfPwnFYTa1dqxc/Mv02Ci0Eit7AVvweHnb7YkHg/i8IR7w6l1LPgw+uLxGQOeMmyIIeIVlm85GV2c3b67E6ITaCyV3Fs0m02KjU0AaOElJv1TEEEjsO0uq15WQ=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: amotus.ca
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c8fdb4a-e987-41fd-3672-08d64687d966
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2018 21:10:59.9816 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb1fb47f-d32e-4ec7-8cf5-9c91bb29593c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2355
Subject: Issue using UEFI with rootfs(squashfs) generated as a wic
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
X-List-Received-Date: Fri, 09 Nov 2018 21:43:32 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN6PR1101MB23560D97352B710A1B9A37C2B2C60BN6PR1101MB2356_"

--_000_BN6PR1101MB23560D97352B710A1B9A37C2B2C60BN6PR1101MB2356_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,


The platform is running on a i7 CPU and is using UEFI to load the kernel. T=
he image that we are currently building is loading

out of a USB stick wish was working until I switched the rootfs type to squ=
ashfs.


Systemd-boot is as the boot loader.


So far what I noticed is the boot.conf use the options LABEL=3Dboot but the=
 kernel is unable to read a LABEL from the squashfs.


On the other hand I tried to adding "root=3D/dev/sdb2 rootfstype=3Dsquashfs=
" to the boot.conf using a systemd-bootconf_%.bbappend

Using the define ROOT, APPEND_append gave me no result, I always end up wit=
h options LABEL=3Dboot  rootwait console=3Dtty0


I also tried  overridding build_efi_cfg() from meta/classes/systemd-boot-cf=
g.bbclass from my systemd-bootconf_%.bbappend and copy my files, but it alw=
ays

get over-written some how.


Any advise would be greatly appreciated on how to modify the boot.conf file=
 to allow loading a squashfs.


Cheers,


Mathieu

--_000_BN6PR1101MB23560D97352B710A1B9A37C2B2C60BN6PR1101MB2356_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Hello,</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">The platform is running on a i7 C=
PU and is using UEFI to load the kernel. The image that we are currently bu=
ilding is loading</p>
<p style=3D"margin-top:0;margin-bottom:0">out of a USB stick wish was worki=
ng until I switched the rootfs type to squashfs.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Systemd-boot is as the boot loade=
r.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">So far what I noticed is the boot=
.conf use the options LABEL=3Dboot but the kernel&nbsp;is unable to read a =
LABEL from the squashfs.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">On the other hand I tried to addi=
ng &quot;root=3D/dev/sdb2 rootfstype=3Dsquashfs&quot; to the boot.conf usin=
g a systemd-bootconf_%.bbappend</p>
<p style=3D"margin-top:0;margin-bottom:0">Using the define ROOT, APPEND_app=
end gave me no result, I always end up with options LABEL=3Dboot&nbsp; root=
wait console=3Dtty0</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I also tried&nbsp; overridding bu=
ild_efi_cfg() from meta/classes/systemd-boot-cfg.bbclass from my systemd-bo=
otconf_%.bbappend and copy my files, but it always</p>
<p style=3D"margin-top:0;margin-bottom:0">get over-written some how.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Any advise would be greatly appre=
ciated on how to modify the boot.conf file to allow loading a squashfs.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Cheers,</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Mathieu</p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
</div>
</body>
</html>

--_000_BN6PR1101MB23560D97352B710A1B9A37C2B2C60BN6PR1101MB2356_--
