Return-Path: <dburke@mountainss.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CD37E00C58; Thu, 24 Jan 2019 22:37:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.72.79 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 48237 seconds by postgrey-1.32 at yocto-www;
	Thu, 24 Jan 2019 22:37:21 PST
Received: from NAM05-CO1-obe.outbound.protection.outlook.com
	(mail-eopbgr720079.outbound.protection.outlook.com [40.107.72.79])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60975E006B3
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2019 22:37:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mountainsecuresystems.onmicrosoft.com; s=selector1-mountainss-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=GOEKUSkkKiSXI2oTdhuzHol+QEigf1UKrZTFmYaq2eU=;
	b=PVfXhp24ggKkwU8qjnsr3ojEc5rgyAPFpzcs3jYN4nlMqDYzfxEBwOBWvr2WMSQ52O6lzo1iROH9LDss8ohGZv2AcUiJWDUWVJw6ceZEJ9QDd385iBJjq/XCrCWG8WdVROMaBLutW9C8+oMezqj2rfbW/ZXcWMFF06uGr39sXLc=
Received: from DM3PR17MB0762.namprd17.prod.outlook.com (10.166.162.10) by
	DM3PR17MB0857.namprd17.prod.outlook.com (10.166.162.139) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1558.18; Thu, 24 Jan 2019 17:29:51 +0000
Received: from DM3PR17MB0762.namprd17.prod.outlook.com
	([fe80::3557:845a:6fcd:9a15]) by
	DM3PR17MB0762.namprd17.prod.outlook.com
	([fe80::3557:845a:6fcd:9a15%4]) with mapi id 15.20.1537.032;
	Thu, 24 Jan 2019 17:29:51 +0000
From: "Burke, David" <dburke@mountainss.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: wic command, partitioned image, multiple boot loader entries
Thread-Index: AdSz+hZteoniOxGiRDa9e2hDMpgN5AADwHvg
Date: Thu, 24 Jan 2019 17:29:51 +0000
Message-ID: <DM3PR17MB07626CD97E8924F2551DEB5FB19A0@DM3PR17MB0762.namprd17.prod.outlook.com>
References: <DM3PR17MB076287213B898AE5AE480175B19A0@DM3PR17MB0762.namprd17.prod.outlook.com>
In-Reply-To: <DM3PR17MB076287213B898AE5AE480175B19A0@DM3PR17MB0762.namprd17.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=dburke@mountainss.com; 
x-originating-ip: [184.88.71.104]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM3PR17MB0857;
	6:mh3aqrlhMq6YsE1cyHWpo93Aw/ikMToXz3+Gr2ww31JuoO28LO3sZgPRr10DPKvMYSAum8t/05AhJGFM7yLnD0ERO8ML+tqQTgu6vYrp4p0x6GfYhI9+xeBiwZ7hAltaszNk1+D9E9bMOiO/MEtv3wKJHXuStpIBlO+hikuLnL4Q8gJ7ha8ByreorqogLB8vOWzVg6M9ZiUZyQrhjfQU/FgLzT2yXdGKOzjdneWe7phJgiHpohE88oWskc+8exIICkVsqlPhLrpU8CGNqQRwSorff1mHDfJJdXMeZ98xRwGvO7uHG+CDDnx21C/fEzDgAr6kibx8kS8n9DlrsHHw9vu4ue1lz32+IxUrTG/7QH7unPVuYTzIHuT9DoSGr99Gpk4ATER4xCizm+GunN9INyi44rUcjRcEO3KspFtkqPuZ4eAs96dnK5SwX/JIpejzJ0wxhqHt1qkRo7vjgRVRCQ==;
	5:dYx2L/tByrY9qKMP7JGuxy3sYirgm9rdsyGejy5yh82ljwvgl5PQWqsurKDjP8pG6Ljoigd03yPT/1dL6QpRfDSMP5jrcYhxL/J6mx5jvYT9c52yna373c9zZ0jiQ4vZguXLpamLPvRQ4+/9JZt1uw00g8R+7MSXyZUhxchtvJaVu4I7lhht1ObcNbINtYGxQYwVUECI9OnWarGBDq9pPg==;
	7:clejduBkqajzkwGxtU+LH0m4LJu4CqQsj8iTI6EoTpaRr5g1n4U669NvgDoQdpoMD0eFqpO+Cf0A1frKijwq/DR3PWsQnCxY89g9jEzJSxQQ8/kI0FDJ8QfLonzq0olXhV1HkK1+CPnnomUHOojGqw==
x-ms-office365-filtering-correlation-id: f363b054-e446-414e-09df-08d682218c0e
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600110)(711020)(4605077)(2017052603328)(7153060)(7193020);
	SRVR:DM3PR17MB0857; 
X-MS-TrafficTypeDiagnostic: DM3PR17MB0857:|DM3PR17MB0857:
x-microsoft-antispam-prvs: <DM3PR17MB08572D400DEFD80C5C369639B19A0@DM3PR17MB0857.namprd17.prod.outlook.com>
x-forefront-prvs: 0927AA37C7
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(346002)(396003)(366004)(39830400003)(376002)(136003)(199004)(189003)(2940100002)(2501003)(53936002)(68736007)(25786009)(55016002)(6246003)(9686003)(86362001)(6436002)(97736004)(33656002)(76176011)(5640700003)(7696005)(74316002)(2351001)(106356001)(105586002)(8936002)(1730700003)(81156014)(81166006)(8676002)(316002)(6916009)(7736002)(305945005)(99286004)(486006)(256004)(53546011)(6116002)(3846002)(102836004)(6506007)(93156006)(71200400001)(476003)(11346002)(446003)(186003)(71190400001)(26005)(2906002)(508600001)(229853002)(14454004)(66066001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM3PR17MB0857;
	H:DM3PR17MB0762.namprd17.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: mountainss.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5+Gsm3JfBXwgC65UtWZYXQXgBlQlO2Cs1eE1Ga0WrOp+8ZeLmhiAdjgwTjTmTcteSXzfW5a6aqK248DpFUfBgnAinyTIR7/YBM/hwEGh2SWjE6D9je4WBXVY1fONiaNx6YVrwPPqI7LGVcBsU38EqJ4cygx5BZrbchqA5GHpKiAo5F6A0sqJYjTiZX4ipaOR1VKCVK0/HrOY2fzyTCczZAlUZUUQ03ZliVJgU3b5/wkMqbRgl9vtZwe/pNwZbVOHOn8EilwTxXPEgEqAtuwW095PK5XP7n5MxYHnsU7zAy/qYUdDoOhRgq2zxC+ANaiUNWH8c2QVdqADRsw4adlkosI7/rR6mt8qSGBTizX2tAapM3NHpmWTBsWpLhl5fFkZoY8E0i07cc6ZJmPbBBc/y7RifXAbQWIjgfMGnbzbbjA=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f363b054-e446-414e-09df-08d682218c0e
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2019 17:29:51.3828 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: daa06c07-9a83-4d89-8cdb-7aff15c73b31
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR17MB0857
X-Microsoft-Exchange-Diagnostics: 1; DM3PR17MB0857;
	23:S1hiedFh+J7LMc0//GxBBDdp5K8aDKPhgzL0ia9Bmi4mlwGcSP73ieO/ZzSmDsayLQCM64UDUSGuYGrJ06Ku35R7J0GwQr0atAumq/ixFuNyC24xAAtmCr8tsXPPcC2vEO1/BXlFY4fYvp3/ztrtDw==
X-OriginatorOrg: mountainss.com
Subject: Re: wic command, partitioned image, multiple boot loader entries
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
X-List-Received-Date: Fri, 25 Jan 2019 06:37:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I should add the following information:

- The UEFI boot manager used by my image is systemd-boot
- The version of wic being used is 0.2.0
- The version of Yocto Project is 2.2 (Morty)
- My hardware architecture is x86

According to the documentation on " systemd-boot" boot manager, each .conf =
entry in the /loader/entries directory represents one boot option / configu=
ration.  So I am wanting to know, how do I setup my kickstart file or the c=
onfiguration file specified after parameter "--configfile" in the kickstart=
 file, to create more than one .conf file in the /loader/entries directory.

From: Burke, David=20
Sent: Thursday, January 24, 2019 10:40 AM
To: 'yocto@yoctoproject.org' <yocto@yoctoproject.org>
Subject: wic command, partitioned image, multiple boot loader entries

I'm using wic to create an EFI bootable "multi rootfs" image.=A0 This image=
 has two different Linux OS configurations, each in their own partition of =
course.=A0 I have been able to successfully create and boot the final wic i=
mage.=A0 The question I have is how to I create more than one .conf file in=
 the /loader/entries folder of the boot partition.=A0 By default wic is onl=
y =A0creating only one entry (boot.conf) but I need to have two unique .con=
f files, one for each Linux OS partition that I want to boot from.=A0 Unles=
s someone knows another way.





