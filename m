Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9334CE00655; Sat,  8 Apr 2017 04:46:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_HOTMAIL_RCVD2,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.67.103 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 87509 seconds by postgrey-1.32 at yocto-www;
	Sat, 08 Apr 2017 04:46:39 PDT
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
	(mail-oln040092067103.outbound.protection.outlook.com [40.92.67.103])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10C5FE00349
	for <yocto@yoctoproject.org>; Sat,  8 Apr 2017 04:46:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=oafRM6gPZLF34eMqUSifTayLKcY1BU7O39twKJthQ0Y=;
	b=rk0+V7elEO///VjOq3R4fiibdj9P5AUvAS37KQ5BfCG9aqdhTxtNCg44HhLlMplw+cKNHffgynQjdki8BeN90h9E9FTOj8+BLB89Y6BDLRfxely+PycmEMcEvNwGUKpK74RqsYhkfplafktQErWmHc2rWn0SVG0xgkVoi2PYCImc6+GBl4mH4jTBWho7M7tA/nnd/L22nQC4Iqd2d3G8p1X49CcvoW6MZV0RC3qcDPkDb+ZNmhRoLcfBz3eXwTrQsQm1gp05RnDGhBZ+q7isfjLdE8//q4iBW9tEEBhDUhcu3iD4lMiDVBxJmWtyXq7ltbmx4/PFsqKKKKSWVpFY7A==
Received: from AM5EUR02FT024.eop-EUR02.prod.protection.outlook.com
	(10.152.8.59) by AM5EUR02HT137.eop-EUR02.prod.protection.outlook.com
	(10.152.9.206) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1005.5;
	Fri, 7 Apr 2017 11:12:58 +0000
Received: from LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM (10.152.8.54) by
	AM5EUR02FT024.mail.protection.outlook.com (10.152.8.126) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1005.5 via Frontend Transport; Fri, 7 Apr 2017 11:12:58 +0000
Received: from LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM ([10.167.30.18]) by
	LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM ([10.167.30.18]) with mapi id
	15.01.1019.019; Fri, 7 Apr 2017 11:12:58 +0000
From: Chris Trobridge <christrobridge@hotmail.com>
To: Alvaro Garcia <maxpowel@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Customize live grub entries
Thread-Index: AQHSr44sFsi3nw/f20WVXPaNIaMI96G5v9oU
Date: Fri, 7 Apr 2017 11:12:58 +0000
Message-ID: <LO1P123MB141266C0313CFF6E3EACAB9DDA0C0@LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM>
References: <CAOsmwBRkb8duSiy2eZ6N87_mSXbmKhqNS1pD-JL9ZtB4o9jkvA@mail.gmail.com>
In-Reply-To: <CAOsmwBRkb8duSiy2eZ6N87_mSXbmKhqNS1pD-JL9ZtB4o9jkvA@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
	header.d=none; gmail.com; dmarc=none action=none header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:B79A92437DF2D3C5D823E37E8912F2E78187F133801FB623008057ED40430073;
	UpperCasedChecksum:492A6D2416235442E33A0410C0D94CBA16E53D4716B4DCC4E064B8B62A304EAD;
	SizeAsReceived:8062; Count:42
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [14KfPzmRXH9icgn2baBIao9p8luUtXWa]
x-microsoft-exchange-diagnostics: 1; AM5EUR02HT137;
	5:3frFNW9SuRldqd5Lh3XpbI3vSmIwk0nG1L++Ytu6NcBt4vTQV1naW5WCg6EzEhFg+O9XI+1wvZFyIl11P+z85VeKyjHrdA9FqgTRHg6JbKm6iVccNmdvkYrAFej7ioBSMDaKxr9EapykRz6M9cOPPA==;
	24:cnmprd9BUrR+FiCIEBW5Fkkb9qViWwsRf+1Ahs5VZ0ZafDBB4HEZkxNpJm98Yo2nvJgtbbDa2DwpsUqiGYk6VJauA2o+p7GfxXfzEB3DE+w=;
	7:m0kPVV6mEc2EOJ+0a1bRsKYQoJX6fKMtfbcA0Fh7cM9YbeV3EOJ1+12FSbBiI6DTISnlNjR1gqZeuVmz1SvVDjXCeMrwA4Z1U3++2nOsErg6IYyd5fcJfg9APxdR12jyfA7TSEY1ot6egqDN0iynbdsvPvwylQY6T06Loa9NUQKd+dL9jvBO+y9ByAtyWbeNzHvz7p/VuMrRDOqxAmhZbiFH/vvenjkF4s23R8rrquiTStV/qxaZC6iXS2p00QJujjzqslbmj6Pjd16I5d0fLIDB6bbH9EHtoxMXlfmqpA0h39ZAwFxiu1izHW3si8kH
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(7070007)(98901004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:AM5EUR02HT137;
	H:LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 5dc078a0-f69d-493e-e9f4-08d47da70c3e
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322274)(1603101448)(1601125374)(1701031045);
	SRVR:AM5EUR02HT137; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:AM5EUR02HT137; BCL:0; PCL:0; RULEID:; SRVR:AM5EUR02HT137; 
x-forefront-prvs: 0270ED2845
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2017 11:12:58.2042 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR02HT137
Subject: Re: Customize live grub entries
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
X-List-Received-Date: Sat, 08 Apr 2017 11:46:41 -0000
Content-Language: en-GB
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on =
behalf of Alvaro Garcia > <maxpowel@gmail.com>
> Sent: 07 April 2017 11:59
> To: yocto@yoctoproject.org
> Subject: [yocto] Customize live grub entries
=A0=20

> Hi, I want an unattended installation (just boot from USB, install, and r=
emove USB). I am able to remove all questions during install but I cant cus=
tomize the grub entries of the live boot. By default is market the option "=
boot" but I need the  "install" option.

> In the file poky/plain/meta/classes/grub-efi.bbclass I found that the var=
iable GRUB_CFG_LIVE =3D "${S}/grub_live.cfg" contains the file with this co=
nfiguration but I cannot find this file. Where the image is built (inside t=
mp directory) this file exists. I tried  to override the variables "LABELS_=
LIVE" without success (if I remove the boot option, it also disappears from=
 the installation and cannot boot later).

> Once the image is flashed to an USB memory, the file syslinux_live.cfg ex=
ists in the boot partition and if I edit it it works as I want. But this is=
 the bad way, would be great if I can edit it inside yocto build process.

> Anyone knows what recipe should override?

> Thank you
   =20
I use:
LABELS_LIVE =3D "install"

Just before I inherit core-image in my custom image recipe.

Regards,
Chris

