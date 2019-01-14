Return-Path: <Amol.Lad@4rf.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D24AE00C38; Mon, 14 Jan 2019 05:34:04 -0800 (PST)
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
	*      [40.107.136.122 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 7217 seconds by postgrey-1.32 at yocto-www;
	Mon, 14 Jan 2019 05:34:01 PST
Received: from AUS01-ME1-obe.outbound.protection.outlook.com
	(mail-eopbgr1360122.outbound.protection.outlook.com [40.107.136.122])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7283AE009A0
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 05:34:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=4rf.onmicrosoft.com;
	s=selector1-4rf-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=5SGRx7rmby1dct/eZTnPkakGTXlPt23J2+RLsFJl+HU=;
	b=qrBI7YLYkgRheTT6goONPtoqfWlpqKLrKoUTwipynADIhDdGo0FPhvyZF8X+M5T/sZ7nMiWj/1LGPBOJ5tTDKlJq+LBuwdj5Z2mUO5vhwR6U+YxFSbIzFkKb/LhBcGV21KWQzP0/ulUf9ZQPqwcZtbH9xDrH9n2ifzqF3UJ0cRk=
Received: from SYBPR01CA0149.ausprd01.prod.outlook.com (2603:10c6:10:d::17) by
	SYXPR01MB2032.ausprd01.prod.outlook.com (2603:10c6:0:2b::13) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1516.15; Mon, 14 Jan 2019 10:00:34 +0000
Received: from SG2APC01FT031.eop-APC01.prod.protection.outlook.com
	(2a01:111:f400:7ebe::209) by SYBPR01CA0149.outlook.office365.com
	(2603:10c6:10:d::17) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1516.14 via
	Frontend Transport; Mon, 14 Jan 2019 10:00:34 +0000
Authentication-Results: spf=pass (sender IP is 114.110.34.227)
	smtp.mailfrom=4rf.com; yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=4rf.com;
Received-SPF: Pass (protection.outlook.com: domain of 4rf.com designates
	114.110.34.227 as permitted sender) receiver=protection.outlook.com;
	client-ip=114.110.34.227; helo=mail.4rf.com;
Received: from mail.4rf.com (114.110.34.227) by
	SG2APC01FT031.mail.protection.outlook.com (10.152.250.217) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.1471.13 via Frontend Transport; Mon, 14 Jan 2019 10:00:33 +0000
Received: from 4rf-nz-exchange.local.4rf.com (fd00:192:168::114) by
	4rf-nz-exchange.local.4rf.com (fd00:192:168::114) with Microsoft SMTP
	Server (TLS) id 15.0.1395.4; Mon, 14 Jan 2019 23:00:31 +1300
Received: from 4rf-nz-exchange.local.4rf.com ([fe80::bd7a:f2d0:7a81:173f]) by
	4rf-nz-exchange.local.4rf.com ([fe80::bd7a:f2d0:7a81:173f%14]) with
	mapi id 15.00.1395.000; Mon, 14 Jan 2019 23:00:31 +1300
From: Amol Lad <Amol.Lad@4rf.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: kernel-fitimage.bbclass possible bug in Yocto 2.6
Thread-Index: AdSr7yjC1D9zupU5S4aDWW8XYZ+iGw==
Date: Mon, 14 Jan 2019 10:00:30 +0000
Message-ID: <d4c23eb6e8e74333b0fe5efea0272945@4rf-nz-exchange.local.4rf.com>
Accept-Language: en-US, en-NZ
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [106.51.30.102]
x-c2processedorg: b87d8f4e-38aa-47ad-a534-2cc14c7a88c7
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:114.110.34.227; IPV:CAL; CTRY:NZ; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(346002)(136003)(39830400003)(376002)(396003)(199004)(189003)(260700001)(2906002)(790700001)(2351001)(6116002)(3846002)(86362001)(508600001)(26826003)(14454004)(72206003)(78486014)(84326002)(6916009)(9456002)(98436002)(71190400001)(106466001)(575784001)(356004)(55016002)(5640700003)(66066001)(5660300001)(26005)(97736004)(186003)(68736007)(9326002)(336012)(7736002)(1730700003)(81156014)(8936002)(81166006)(106002)(426003)(126002)(476003)(2501003)(486006)(8676002)(24736004)(108616005)(5024004)(14444005)(6306002)(54896002)(16586007)(53936002)(102836004)(316002)(7696005);
	DIR:OUT; SFP:1102; SCL:1; SRVR:SYXPR01MB2032; H:mail.4rf.com;
	FPR:; SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-Microsoft-Exchange-Diagnostics: 1; SG2APC01FT031;
	1:SsLe7I1JrPQAowf5EozP0T+SuTlFwaIrdASq1bzsM60/mdpmpdS2hgKgn7Xs4RVf5zFEgjG+Zlch3nF45+VAUgxAwrmKC4t9UMGnFmBPGYFNIewC3ZDTk6Kk/MY/rboC
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fc6e9d8c-854d-433d-35ec-08d67a071ff1
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600109)(711020)(4608076)(4709027)(2017052603328)(7153060)(7193020);
	SRVR:SYXPR01MB2032; 
X-Microsoft-Exchange-Diagnostics: 1; SYXPR01MB2032;
	3:diBhWg3xSdBxQp+wKtzLimg3OZYtlP4p79Vx33l8S3Gacfld18wAqBUPZsbNMBMqCAaUFE7JXcVeUWbQAKmeAP0EA4bbPs6wvimE1ql9DawO0MQpn3uitOlFUHbAyBPKd7WbWkDBrcRROIiKBLQtVeFWtJZMi0tlzIBWGNCu30SfuxERX6gUF1TP7mk2LImY+rJ+RMK937xGAoOx8UvPXR1sryyUYXujRQUKwvc5oYbP6YLSdB87PLOe5Zux0SZBAHVjdIngMD7v1+DpEFGnbHYcYLgXeVDLY+wSID34w9SAMP3cFo6Hl97HkMDpKIlwX4MuuCk1l2wMovFC0XTDWSTwBzP17EDKYeMNBZMcn3p5dfFXiSqldAPlBeKQqlDq;
	25:JVwmHwujrdvTLGC75ci5EJIi0SwSllp6XJUhlRusays868FGnGVYWefSXA6lgeWS0XRBPG74TUBRvHEGm7A1a0k5GtLZAUlKtUyRP17+K42bSzMobLMS5EWTNI4+KFqAeKs/PUE0MvO8GsGc3QaxIRiKqmnRYPp2KevREDRY4BuoGVJFxsjSpud4/I0Od4TPyJU1afaemgv6kkEtKE4xE3EXvLBbiAFeFIqq1BzIRpHttKtS+VOWh4lD9PPIDxTOXCrdDeLelV+cArqFF6U9tk/gJFT6J0Itf1l01MbytxCZc+tllwoVoPb0z8pJiDpoFNd++w+IuDOIrz2EDsDdNQ==
X-MS-TrafficTypeDiagnostic: SYXPR01MB2032:
X-Microsoft-Exchange-Diagnostics: 1; SYXPR01MB2032;
	31:T+r4G8p+EZYlDr9BzMzwP9+3DpQhqPOan5CJ9GdO2VbIeH9Qc+UppxmdJ4jqb54XyvRdJVTK2dylWO6O4H9z3tWt9JjAegOwvb+WkAB5rOj233SSNW9cdoDF8mRgvPcJ3sfkORvo2XOvXVZJBpyPFE6ROWIXem0szW6AX48CHFZGitKVt9usmbnvEuV5kccdt7F85XppoJcyI3iukg+aW/o6H9u+me0PpSYitlZMbgU=;
	4:yGwZW3qy3BVeIw2sKDvEEiN3wWXRIY25Y7coXl38+GTaNEpW9cvuBzpio7Hm3l9r8h41SgOu+DgRYr0Yy9Ba528/ruS999WiclpJXErXpLws5WGB7waP/YWON7yTb2FoEX9fXxftNuk0DFWu2VKvIbUWdqxoIh3kf2LZVsqDIbdnM2KbgalzsPjy3rpIpI3NS5P924lj6QmcmQHxjQaJ+EzxwYJd818HycZxJ6ek2O96ayIbJjOVEvte94xiNrqO3m7jQB08Xg+dRhmgejZ7FCERiv5oLmsqLm5jG6xVHdDgVMzzyQPva7iKI0YvMK1e
X-Microsoft-Antispam-PRVS: <SYXPR01MB2032D6D4C056DA0B92C065A4DD800@SYXPR01MB2032.ausprd01.prod.outlook.com>
X-Forefront-PRVS: 0917DFAC67
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; SYXPR01MB2032;
	23:Do5BQNesztRrP93tdbg2Yrc33u1K3FWpOIET3Ux1G?=
	=?us-ascii?Q?1cHBUqha44Uglus4nWLVZi/xvh8Viz/y0x+dbzw00caEKNcDmzxSr3ng3bD3?=
	=?us-ascii?Q?JPDAe76lfEVmt+Ry/FJMhQa0MS/Og7YPAyQjJ2GSswkTkMJfuv8VBAGPpyje?=
	=?us-ascii?Q?0NRQ+LzuYdTbKEq6xUUjikhSs7bvWvxTGwG3w8TiCsnT2VHgb/uLZ2sUZQnF?=
	=?us-ascii?Q?uKTAZ+tU1Z+m0shiW/wU0boAEaTlUJVabVpeZhFORuKGVBifYTaNPzQ7zGQ8?=
	=?us-ascii?Q?s6bSzCQCZULwUPkWQqIgXRPVLZBmTUn5j4ZJbCHV/SHEwbtwmzlEpe1MwiH6?=
	=?us-ascii?Q?yO2MSyXl5fbrwvedJFu88PO0LbRjG76xjnZGWff22LYABFwn0nywaiOkDbon?=
	=?us-ascii?Q?Wf67/L6xSl0qpQBeXwlkLURKD9IoHi4iWvw05/kLX7sUuddsYwyAHLwA8GB2?=
	=?us-ascii?Q?XQYa5z1IJQ9HLjZ1UjAZv4FT2Zfn7ldpBiTl0vhK6JRaeojk08mfUU7XCeuR?=
	=?us-ascii?Q?9xPC2K5TLnbK2QIDGdbX41Z9sxtHLlLPqzo1nWtB6naX43mOLY8WBdMsVv0y?=
	=?us-ascii?Q?2QYO4/FTTXamMBFduczQtTv0WbpgoDZZaFkBhHcg3oVn+AhsV/cZyUJKzEMh?=
	=?us-ascii?Q?Eng4anqvX3yjmh6FCyfD8X+72DYeznmK1h3yGZRKxz/az0CUFWBN2ZPV1s0K?=
	=?us-ascii?Q?tOARK3kVH06iFzcTFfT75piEjO3AxZREnYht9qn2lls4e4b/i77yes/pr9yl?=
	=?us-ascii?Q?TimSWZT6y9vKCzowbE/nGRxAWd5kBs0xJE4o/5bwJdDkTHMcfm1Dr2Bmyzlt?=
	=?us-ascii?Q?vP3n+pNn+huqzsvE4uDuqZRj9VGM7XNNEGDI9DQNna3prGKeKQAUoIqoLLeo?=
	=?us-ascii?Q?i6sI4NFFc8D+wJNb0d8gwoViZOifqQYEidXej2yhwd6oxGhhEngC3iSzqX1w?=
	=?us-ascii?Q?o6LjyC35kEUVRYU5/+JaNV7HLte4yACSu2kxOR4E2RpnmVjqAO0Ev47l8TZt?=
	=?us-ascii?Q?t/WmtpF91ccQHiLAqM6FZU6xFO087T3XhKqf47NPX7K1r4/sgZr9Og1oUvd/?=
	=?us-ascii?Q?1vbYcvE8DCOaraqbwEp+FzvrbpopRpkE+0Y7mg8HenPAiUotQazPxq9SJjRl?=
	=?us-ascii?Q?KHAVipMmI4sqgQ91NcRr1eRUjpoCAbO9rJLZX4uQ8kAyT7rXWYjku0v59+Ew?=
	=?us-ascii?Q?su/2+AhX2eWu7zAfsXlgSfliUssLgVKDdmQUfOHaXVkiyJZ55mEPBN2UgdGr?=
	=?us-ascii?Q?F2EZezT+v0cvkriB1stAeqYXcpoqJwjb1MQGyCsOi8s1YI70ViXs5/1Iyqj3?=
	=?us-ascii?Q?PLod5y+Ix+263i+TqdiStqWamRCnMRb/haSLSv8nTt2?=
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 6uXXDIFuqs2slcf4zCFmWFfQzBrJJJuiHgo/+R2ty2Y4ODfKxUm45ikZPUIiC3xHsWj6Ip4TrDdj3azMzGu2gCpUuJk4diGzFOdNHMZTTuRg5vCFlJDcCt5humR1BNCi4TJA34YQoQKcM7zsnucbdndpNZ3mvFqZuJwWXMRdMPqsbIb/WuOXANVR7yhA32Es9LO1dakIcR/5fZ+HlH+Mg3Rd/penqpQgBSi4p+Kjf/+bQS4+aUoBBNvjSjfdyUSqnbGIoiFoHQykmfKwMOEezpcljmOtCGBgVJzUd4n/G/UXxQCuFs7Y0U1d+vZYIjLZjZPWpQadmcOPxhU97V29D+jl+o/6cGy4vZ7dKvlydHEnWbPO7Nuc6CaBvUUGOdIBQ4fKDm+aRlOcrcUc6SD3sLXHvg7a1K+OEc9T9j4Gebs=
X-Microsoft-Exchange-Diagnostics: 1; SYXPR01MB2032;
	6:dvgOsTGmLe54f0sx8ZdrNl9gyq25WoKNDjg8I9m0n+WgJc9NfLuc5rKgfDNSXf4fVayLMFlP4HanuUDnBQ3kqR3QetrM7iOxG9aRA2M5lbhUZsDa2Oq/OasoDJHxsAvfrrfGR5hn70zaX7YLvwo0oakxil5BES/2WKfO5v285aINofvlhrB5gd6ZEzN1yeEvw4HnbCdqDM4wUhnQDuQnZgo4UVrmugRJt6RtjS36RQ0/UCWtA3LdfbnhH8IKqv+5kT9wHIOL0QWosoNsYS+HlVgDRIxjpseosZDnRgDGjkkpc9ZcmYmA97FBPHwCUxDoXxWeM6vTvLDX6a6TSPus/3t9fAnN6UVBnmvge1ymwzpmBHIRQO7GZdhcv0zUjtbIa0sPSSWvJ4WkCzOAXI9Zu1NUGZx6XF5R1xxCF0jF1uoRyqfs81dE8mP3Yk1rHysmRZ3YgBFl0b5pgHAYtvBeRA==;
	5:ynyG68q94uP/7cxpS5mvDcoYNRVIYseBY/ij8v8cFP5Fp0A5rEDSlwH/ba+5JPLx5yXmPkpJTb8AerRBl1cF5KiCREFnVUPBb5QeKweFLhzrT/iYrkfNDkLEODmDmGlclM/igycZmuWcJT/4gnEXGNMwajqfN/i4jFl+JZ49pNj3PxR9edVMPrE/gZQuFOtAFR2AbBMAyfa6BeX78XB1lA==;
	7:8uNFNRyE0qUF6ObkAcjFEfwuA5Pyh2VriF/bKEW2+j5U28vTggUemndP/oItaOAE90QllKG0WhoArsGVI1DEtaGcYS19c4irbOdGPD8K5KoBYC5HaCpIlr8nnSJBNy9OUlkmNZtbcu+nPIlse1Lsyg==
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: 4rf.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2019 10:00:33.4233 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fc6e9d8c-854d-433d-35ec-08d67a071ff1
X-MS-Exchange-CrossTenant-Id: 9ffb526e-7b63-4774-8f76-2167f5ab5208
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9ffb526e-7b63-4774-8f76-2167f5ab5208;
	Ip=[114.110.34.227]; Helo=[mail.4rf.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SYXPR01MB2032
Subject: kernel-fitimage.bbclass possible bug in Yocto 2.6
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
X-List-Received-Date: Mon, 14 Jan 2019 13:34:04 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_d4c23eb6e8e74333b0fe5efea02729454rfnzexchangelocal4rfco_"

--_000_d4c23eb6e8e74333b0fe5efea02729454rfnzexchangelocal4rfco_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

There seems to be a bug in kernel-fitimage.bbclass. I get below error messa=
ge when FIT support is enabled (and with initramfs)

| lib/modules/4.14.54-yocto-standard-custom/kernel/crypto/ctr.ko
| lib/modules/4.14.54-yocto-standard-custom/kernel/crypto/seqiv.ko
| lib/modules/4.14.54-yocto-standard-custom/modules.order
| lib/modules/4.14.54-yocto-standard-custom/modules.builtin
| install: cannot stat 'arch/arm/boot/fitImage.initramfs': No such file or =
directory
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_deploy (log file is located at /home/adhomes/a=
mol.lad/yocto2.6/poky/build/tmp/work/clearfog-next-linux-gnueabi/linux-marv=
ell/4.14.54+gitAUTOINC+7c0df4bf46-r0/temp/log.do_deploy.109094)

kernel.bbclass is expecting fitImage.initramfs if FIT support is enabled

kernel_do_deploy() {
....

        if [ ! -z "${INITRAMFS_IMAGE}" -a x"${INITRAMFS_IMAGE_BUNDLE}" =3D =
x1 ]; then
                for imageType in ${KERNEL_IMAGETYPES} ; do
                        initramfs_base_name=3D${imageType}-${INITRAMFS_NAME=
}
                        initramfs_symlink_name=3D${imageType}-${INITRAMFS_L=
INK_NAME}
                        install -m 0644 ${KERNEL_OUTPUT_DIR}/${imageType}.i=
nitramfs $deployDir/${initramfs_base_name}.bin
                        ln -sf ${initramfs_base_name}.bin $deployDir/${init=
ramfs_symlink_name}.bin
                done
        fi
}

But symlink "fitImage.initramfs" is not generated by kernel-fitimage.bbclas=
s. Only image available in "arch/arm/boot" folder is fitImage-${ INITRAMFS_=
IMAGE}

I had to add a custom function in my kernel recipe to create this symlink.

Please advise if this is a bug?

Amol
________________________________
The information in this email communication (inclusive of attachments) is c=
onfidential to 4RF Limited and the intended recipient(s). If you are not th=
e intended recipient(s), please note that any use, disclosure, distribution=
 or copying of this information or any part thereof is strictly prohibited =
and that the author accepts no liability for the consequences of any action=
 taken on the basis of the information provided. If you have received this =
email in error, please notify the sender immediately by return email and th=
en delete all instances of this email from your system. 4RF Limited will no=
t accept responsibility for any consequences associated with the use of thi=
s email (including, but not limited to, damages sustained as a result of an=
y viruses and/or any action or lack of action taken in reliance on it).

--_000_d4c23eb6e8e74333b0fe5efea02729454rfnzexchangelocal4rfco_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-NZ" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">There seems to be a bug in kernel-fitimage.bbclass. =
I get below error message when FIT support is enabled (and with initramfs)<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">| lib/modules/4.14.54-yocto-standard-custom/kernel/c=
rypto/ctr.ko<o:p></o:p></p>
<p class=3D"MsoNormal">| lib/modules/4.14.54-yocto-standard-custom/kernel/c=
rypto/seqiv.ko<o:p></o:p></p>
<p class=3D"MsoNormal">| lib/modules/4.14.54-yocto-standard-custom/modules.=
order<o:p></o:p></p>
<p class=3D"MsoNormal">| lib/modules/4.14.54-yocto-standard-custom/modules.=
builtin<o:p></o:p></p>
<p class=3D"MsoNormal">| install: cannot stat 'arch/arm/boot/fitImage.initr=
amfs': No such file or directory<o:p></o:p></p>
<p class=3D"MsoNormal">| WARNING: exit code 1 from a shell command.<o:p></o=
:p></p>
<p class=3D"MsoNormal">| ERROR: Function failed: do_deploy (log file is loc=
ated at /home/adhomes/amol.lad/yocto2.6/poky/build/tmp/work/clearfog-next-l=
inux-gnueabi/linux-marvell/4.14.54&#43;gitAUTOINC&#43;7c0df4bf46-r0/temp/lo=
g.do_deploy.109094)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">kernel.bbclass is expecting fitImage.initramfs if FI=
T support is enabled<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">kernel_do_deploy() {<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal">&#8230;.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if [ ! -z=
 &quot;${INITRAMFS_IMAGE}&quot; -a x&quot;${INITRAMFS_IMAGE_BUNDLE}&quot; =
=3D x1 ]; then<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for imageType in ${KERNEL_IMAGETYPES=
} ; do<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; initramfs_base_name=3D${imageType}-${INITRAMFS_NAME}<o:p></o:p>=
</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; initramfs_symlink_name=3D${imageType}-${INITRAMFS_LINK_NAME}<o:=
p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; install -m 0644 ${KERNEL_OUTPUT_DIR}/${imageType}.initramfs $de=
ployDir/${initramfs_base_name}.bin<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; ln -sf ${initramfs_base_name}.bin $deployDir/${initramfs_symlin=
k_name}.bin<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; done<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fi<o:p></=
o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">But symlink &#8220;fitImage.initramfs&#8221; is not =
generated by kernel-fitimage.bbclass. Only image available in &#8220;arch/a=
rm/boot&#8221; folder is fitImage-${ INITRAMFS_IMAGE}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I had to add a custom function in my kernel recipe t=
o create this symlink.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Please advise if this is a bug?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Amol<o:p></o:p></p>
</div>
<font color=3D"#9a9a9a"><font style=3D"FONT-SIZE: 8pt" face=3D"Arial">
<hr style=3D"FONT-SIZE: 8pt; FONT-FAMILY: Arial">
The information in this email communication (inclusive of attachments) is c=
onfidential to 4RF Limited and the intended recipient(s). If you are not th=
e intended recipient(s), please note that any use, disclosure, distribution=
 or copying of this information
 or any part thereof is strictly prohibited and that the author accepts no =
liability for the consequences of any action taken on the basis of the info=
rmation provided. If you have received this email in error, please notify t=
he sender immediately by return
 email and then delete all instances of this email from your system. 4RF Li=
mited will not accept responsibility for any consequences associated with t=
he use of this email (including, but not limited to, damages sustained as a=
 result of any viruses and/or any
 action or lack of action taken in reliance on it).</font> </font>
</body>
</html>

--_000_d4c23eb6e8e74333b0fe5efea02729454rfnzexchangelocal4rfco_--
