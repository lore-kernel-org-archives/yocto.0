Received: from CAN01-TO1-obe.outbound.protection.outlook.com (CAN01-TO1-obe.outbound.protection.outlook.com [40.107.67.82])
 by mx.groups.io with SMTP id smtpd.web11.14491.1576259815582278353
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2019 09:56:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@opal-rt.com header.s=selector2 header.b=fcRU+DXE;
 spf=pass (domain: opal-rt.com, ip: 40.107.67.82, mailfrom: kevyn-alexandre.pare@opal-rt.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jvEKMT6srhWnGRejsN7kO6LPG668DsqfypNbcyZxvCDL3wyd7GRbv3A57/JIGpwB5wZ8v62uTFxw+uPXrhsXd0I1MgQIBqNK60v3sTpkgM8u9nMVRwKo5P0M8mWJFH2RQ5dmuL22ZYCZQHHlUmtFVlFF2rP5f3/T4sK+v0mV1kXSjBudEvFizJhx6ZiIiHNQ1lVWhAWX/QYDkbUBUyqOxE8pVpHBoL5iNdfS9YhlMXSDLmicp5vliEmWqOosDACT9OzaxVtw2eHO18jQRhBB9MoaMSCPeq4YMlMxLimxQBlSUPi4fQFlpGyvCDugUGy7s2EWcYCai93U8jD77y9T9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2LLPgXScQL+Vs3RaBMGsDyNu+Q/5xx+Ay2E3SwCFfbM=;
 b=nZlakyxb+XCCvnIG/SOT+NsS7bhXQpax7qOB4T4g0eA8BAe43nlQCWCbliv2hsEMPsgidnzMBpR+XgyGQXG0kwquDGwtoRw6hou9etElLI1LTk+C2Kr6UvGc9UNYMq/+fyRiWWGA/JVU/9wLAtCnX8ZoXi8CFnyvlEibsU8C6Kb4nuOl1/2NE0ay3uybJfLBfbYn01xjBSwyFGF9U1p9uhM4fiaIRN/CsDK+L5sck59IaYvCZOrPgWjlf0vpasR3LEbIzmS/qqNTyfjtW32mDFD525ox0lGVoBCOh6qm1MVHLBSfS4oSxBdCeau2GpG+j1mSilhy4vI/n7iuTEm8/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=opal-rt.com; dmarc=pass action=none header.from=opal-rt.com;
 dkim=pass header.d=opal-rt.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=opal-rt.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2LLPgXScQL+Vs3RaBMGsDyNu+Q/5xx+Ay2E3SwCFfbM=;
 b=fcRU+DXEdadEuCFliYQ2u7giIOMkgGT3FF5XT9SWz6xYJm1ESlBYwrSag7QpFs4as1KmTe/db5jLSqrJmDgCj/JJfcCi5pz/d6GW+i5qx0hZ7jOczBC4UV3Os0aB+oWcV9ymJEiT+j3709rV/S9qAY2XKo4eVpjpS5WbAMk84A4=
Received: from YTBPR01MB2350.CANPRD01.PROD.OUTLOOK.COM (10.255.46.18) by
 YTBPR01MB3520.CANPRD01.PROD.OUTLOOK.COM (10.255.47.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.16; Fri, 13 Dec 2019 17:56:53 +0000
Received: from YTBPR01MB2350.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::f9ae:61fd:ee71:d794]) by YTBPR01MB2350.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::f9ae:61fd:ee71:d794%7]) with mapi id 15.20.2538.017; Fri, 13 Dec 2019
 17:56:53 +0000
From: "Kevyn-Alexandre Par?" <kevyn-alexandre.pare@opal-rt.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"eripflo@gmail.com" <eripflo@gmail.com>
Subject: Re: [yocto] Yocto server is down
Thread-Topic: [yocto] Yocto server is down
Thread-Index: AQHVsdirorBPlWD4dUu6EscNqZJTyae4Vq9X
Date: Fri, 13 Dec 2019 17:56:53 +0000
Message-ID: 
 <YTBPR01MB235019E17369B5A7EDF93FB68A540@YTBPR01MB2350.CANPRD01.PROD.OUTLOOK.COM>
References: 
 <CAGhBkzwu3B2PWu4FZexiYxcnnKpZLjJaMohm85MKGz9Gur9T+g@mail.gmail.com>
In-Reply-To: 
 <CAGhBkzwu3B2PWu4FZexiYxcnnKpZLjJaMohm85MKGz9Gur9T+g@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Kevyn-Alexandre.Pare@opal-rt.com; 
x-originating-ip: [38.127.66.236]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e8be58bc-b5d9-4c8f-4c80-08d77ff5d676
x-ms-traffictypediagnostic: YTBPR01MB3520:
x-microsoft-antispam-prvs: 
 <YTBPR01MB35204264427BA77F1DFD64488A540@YTBPR01MB3520.CANPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0250B840C1
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(4636009)(376002)(346002)(39840400004)(396003)(136003)(366004)(45904002)(189003)(199004)(71200400001)(8676002)(110136005)(53546011)(81166006)(81156014)(8936002)(7696005)(9686003)(55016002)(186003)(76116006)(66556008)(66476007)(52536014)(5660300002)(64756008)(86362001)(4001150100001)(33656002)(66446008)(966005)(6506007)(66946007)(2906002)(316002)(26005)(478600001);DIR:OUT;SFP:1101;SCL:1;SRVR:YTBPR01MB3520;H:YTBPR01MB2350.CANPRD01.PROD.OUTLOOK.COM;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:0;
received-spf: None (protection.outlook.com: opal-rt.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 3kJhJeyHlvWFYXmv86nw2cEHYK6jm86xMkVizfwcB1Q6P+lzNeFDK8F/AisPyKYNy+Xj/aAHdzZwqDyUWOBUU669PG9GbwmkTFYmZUl5aMXPxinS7SETUIERvFnsulcejIN/IMak9cE77baDryNl0QvM5JnvwpIdPK0EX9Fhj6JG1yzUdScpRhmIjIb38Fn3KdiXRg6wLDAAraG2fFggE2E21m+vFgECTh5/C9yPzjUk/4tZtDVd4POB6gZFQpYWUVEwgGFpTiOBWeErtmKurA5n7eS71jlMhN4BFw0aGj34h/9XVc0MSUw23EedaHURpnV81eLYF1//3Lc46/AaxJbIBpFqedc+5JZpAfqC25HdnW2/in1lT6WpqqiBl41rlwiIwP0PWjOtcSfyqjr2zZPrvQOMGlaqep1xymAhLU5BHVbMt4dkKEcmM99uioeC5FWQjchLX4UyJWzSw4vev9CoFQI7bSqZHyPzVp+1yUk8EGXo9vDxKvdPDSaej+pepZvfhQx8cEh+4BvBFGXqREiImxZARH7H+1q15xc0tSs=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: opal-rt.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8be58bc-b5d9-4c8f-4c80-08d77ff5d676
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2019 17:56:53.6837
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 477eb058-b825-4407-b32a-a4b972958c2b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rv1+XcIrkbnae09DQBrHzNE4h0lHkBXSnwM74mOFno3pTzWxEzf9hR4GWUX7gQUZUDT47lxPhLORrOtHPx0O0qCptmFrYhX/v0e5R1NLGYTfxzv6fJR8wDEdU01R85lp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: YTBPR01MB3520
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

=0A=
Same here,=0A=
=0A=
=0A=
Connecting to downloads.yoctoproject.org (downloads.yoctoproject.org)|198.1=
45.29.63|:80... failed: Connection timed out.=0A=
=0A=
=0A=
=0A=
build are failing=0A=
=0A=
```=0A=
NOTE: Fetching uninative binary shim from http://downloads.yoctoproject.org=
/releases/uninative/2.3/x86_64-nativesdk-libc.tar.bz2;sha256sum=3Dc6954563d=
ad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684=0A=
WARNING: Failed to fetch URL http://downloads.yoctoproject.org/releases/uni=
native/2.3/x86_64-nativesdk-libc.tar.bz2;sha256sum=3Dc6954563dad3c95608117c=
6fc328099036c832bbd924ebf5fdccb622fc0a8684, attempting MIRRORS if available=
=0A=
ERROR: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export PA=
TH=3D"/work/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/work/poky/sc=
ripts:/work/build/tmp/work/corei7-64-poky-linux/defaultpkgname/1.0-r0/recip=
e-sysroot-native/usr/bin/x86_64-poky-linux:/work/build/tmp/work/corei7-64-p=
oky-linux/defaultpkgname/1.0-r0/recipe-sysroot/usr/bin/crossscripts:/work/b=
uild/tmp/work/corei7-64-poky-linux/defaultpkgname/1.0-r0/recipe-sysroot-nat=
ive/usr/sbin:/work/build/tmp/work/corei7-64-poky-linux/defaultpkgname/1.0-r=
0/recipe-sysroot-native/usr/bin:/work/build/tmp/work/corei7-64-poky-linux/d=
efaultpkgname/1.0-r0/recipe-sysroot-native/sbin:/work/build/tmp/work/corei7=
-64-poky-linux/defaultpkgname/1.0-r0/recipe-sysroot-native/bin:/work/poky/b=
itbake/bin:/work/build/tmp/hosttools"; export HOME=3D"/home/pokyuser"; /usr=
/bin/env wget -t 2 -T 30 --passive-ftp --no-check-certificate -P /work/buil=
d/downloads/uninative/c6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb=
622fc0a8684 'http://downloads.yoctoproject.org/releases/uninative/2.3/x86_6=
4-nativesdk-libc.tar.bz2' --progress=3Ddot -v failed with exit code 4, outp=
ut:=0A=
--2019-12-13 17:35:36--  http://downloads.yoctoproject.org/releases/uninati=
ve/2.3/x86_64-nativesdk-libc.tar.bz2=0A=
Resolving downloads.yoctoproject.org (downloads.yoctoproject.org)... 198.14=
5.29.63=0A=
Connecting to downloads.yoctoproject.org (downloads.yoctoproject.org)|198.1=
45.29.63|:80... failed: Connection timed out.=0A=
Retrying.=0A=
=0A=
--2019-12-13 17:36:07--  (try: 2)  http://downloads.yoctoproject.org/releas=
es/uninative/2.3/x86_64-nativesdk-libc.tar.bz2=0A=
Connecting to downloads.yoctoproject.org (downloads.yoctoproject.org)|198.1=
45.29.63|:80... failed: Connection timed out.=0A=
Giving up.=0A=
=0A=
=0A=
WARNING: Disabling uninative as unable to fetch uninative tarball: Fetcher =
failure for URL: 'http://downloads.yoctoproject.org/releases/uninative/2.3/=
x86_64-nativesdk-libc.tar.bz2;sha256sum=3Dc6954563dad3c95608117c6fc32809903=
6c832bbd924ebf5fdccb622fc0a8684'. Unable to fetch URL from any source.=0A=
WARNING: To build your own uninative loader, please bitbake uninative-tarba=
ll and set UNINATIVE_TARBALL appropriately.=0A=
Initialising tasks: 100% |#################################################=
#############################################| Time: 0:00:00=0A=
Checking sstate mirror object availability:  15% |##########               =
                                             | ETA:  1:10:17=0A=
=0A=
=0A=
```=0A=
=0A=
bitbake is stuck...=0A=
=0A=
Any ways to have a bitbake that works offline by default?!=0A=
=0A=
found this:=0A=
=0A=
https://www.yoctoproject.org/pipermail/yocto/2018-July/042017.html=0A=
=0A=
Cheers,=0A=
=0A=
-KA=0A=
=0A=
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of FLoraVLogs via Lists.Yoctoproject.Org <eripflo=3Dgmail.com@lists.yoctop=
roject.org>=0A=
=0A=
Sent: Friday, December 13, 2019 10:46=0A=
=0A=
To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>=0A=
=0A=
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>=0A=
=0A=
Subject: [yocto] Yocto server is down=0A=
=0A=
=A0=0A=
=0A=
=0A=
Hi,=0A=
=0A=
=0A=
=0A=
=0A=
I went to "http://downloads.yoctoproject.org/" and I get the following=A0me=
ssage:=0A=
=0A=
=0A=
Gateway Timeout=0A=
Server error - server 198.145.29.63 is unreachable at this moment.=0A=
=0A=
=0A=
=0A=
Please retry the request or contact your administrator.=0A=
Kindly assist here.=0A=
Regards,=0A=
Ripu=0A=
=0A=
