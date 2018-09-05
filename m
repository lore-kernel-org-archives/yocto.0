Return-Path: <Amol.Lad@4rf.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71960E00A16; Wed,  5 Sep 2018 06:36:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.116.107 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from AUS01-ME1-obe.outbound.protection.outlook.com
	(mail-me1aus01on0107.outbound.protection.outlook.com
	[104.47.116.107])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D669E009B8
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2018 06:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=4rf.onmicrosoft.com;
	s=selector1-4rf-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=BtpNuIDbm0vpzRfWjE5YGpK2dg+qL8pZNxr9Ijv9758=;
	b=SCZBY6YWxE79FVNmw/Gko6SRumWtWF0MDnIIgcO7SEinZDJHv3Ahi5+qz5PRHP63hhOeCP9hmgG6ap00395fxLO05NCPuh13aaDyT130JiPbkzTPh3UhIsW78dhTJdy1dEE0zHk8+btO+CpdTnvOHwgsiqiUfRRXcoxWaF0vFHY=
Received: from SY2PR01CA0047.ausprd01.prod.outlook.com (2603:10c6:1:15::35) by
	SY3PR01MB2154.ausprd01.prod.outlook.com (2603:10c6:0:24::9) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1101.18; Wed, 5 Sep 2018 13:21:23 +0000
Received: from PU1APC01FT029.eop-APC01.prod.protection.outlook.com
	(2a01:111:f400:7ebd::200) by SY2PR01CA0047.outlook.office365.com
	(2603:10c6:1:15::35) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1101.14 via
	Frontend Transport; Wed, 5 Sep 2018 13:21:23 +0000
Authentication-Results: spf=pass (sender IP is 114.110.34.227)
	smtp.mailfrom=4rf.com; yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=4rf.com;
Received-SPF: Pass (protection.outlook.com: domain of 4rf.com designates
	114.110.34.227 as permitted sender) receiver=protection.outlook.com;
	client-ip=114.110.34.227; helo=mail.4rf.com;
Received: from mail.4rf.com (114.110.34.227) by
	PU1APC01FT029.mail.protection.outlook.com (10.152.252.209) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.1122.11 via
	Frontend Transport; Wed, 5 Sep 2018 13:21:21 +0000
Received: from 4rf-nz-exchange.local.4rf.com (fd00:192:168::114) by
	4rf-nz-exchange.local.4rf.com (fd00:192:168::114) with Microsoft SMTP
	Server (TLS) id 15.0.1365.1; Thu, 6 Sep 2018 01:21:18 +1200
Received: from 4rf-nz-exchange.local.4rf.com ([fe80::bd7a:f2d0:7a81:173f]) by
	4rf-nz-exchange.local.4rf.com ([fe80::bd7a:f2d0:7a81:173f%14]) with
	mapi id 15.00.1365.000; Thu, 6 Sep 2018 01:21:18 +1200
From: Amol Lad <Amol.Lad@4rf.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Building two initramfs images
Thread-Index: AdRFGwWfKtrY98TbRxesOObNk/ZoJQ==
Date: Wed, 5 Sep 2018 13:21:18 +0000
Message-ID: <ce7e843af41d4e8599fc9500e43ef066@4rf-nz-exchange.local.4rf.com>
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
	SFS:(10019020)(136003)(396003)(346002)(39840400004)(376002)(2990300002)(438002)(199004)(189003)(26826003)(9326002)(14454004)(7736002)(476003)(86362001)(478600001)(426003)(72206003)(126002)(9456002)(486006)(3480700004)(97736004)(8936002)(81166006)(316002)(84326002)(16586007)(98436002)(102836004)(2900100001)(106002)(2351001)(106466001)(81156014)(1730700003)(336012)(26005)(108616005)(24736004)(5250100002)(186003)(551544002)(2501003)(7696005)(68736007)(54896002)(53936002)(55016002)(2906002)(14444005)(5024004)(6916009)(356003)(6116002)(8676002)(5640700003)(3846002)(790700001)(66066001)(260700001)(6306002)(5660300001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:SY3PR01MB2154; H:mail.4rf.com;
	FPR:; SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-Microsoft-Exchange-Diagnostics: 1; PU1APC01FT029;
	1:bHE8vvK+GdcSqB0wNi/NpSgWJCjuHJuIjt0Yv8765pzuKK9b6VssuW+ARWoNmhHDJBVfO2CAJI8ePXdM5oFL7HGUnRW3RWEaYXG2rf9r4zDEX2yoWDw5Qws14vXC+Grk
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 347f024e-7b4e-4dbb-e6ee-08d613327933
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989137)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(5600074)(711020)(4608076)(2017052603328)(7153060)(7193020);
	SRVR:SY3PR01MB2154; 
X-Microsoft-Exchange-Diagnostics: 1; SY3PR01MB2154;
	3:wMsMhQv4MJ+R+NOXFLsYGqeVzGTnUawmgpn1AYw0LeS/H400v8R+7+YlUVb4+zOy17x4oigCJSQ8wYzlNuHqS4z+m22sFCxgVtJtosSs1PQsS+o1//8ewSidajzvqavubrwHJ6hX4gxhNtJYlVQN9/tkACDYTQJ7qB7X08SK2h0Pg4u0ssyBXUTmiz2l9r9yUk5QY/mc5MCTWdtRjXznhJzWFtmQJzAI2tW5Bjb6suDICRVWI3vQd+mWvSXkzhR0DBrhFkLtyf1+qJqVHre945Zxu97oR55YjAEHtk+X4X/ZcAMXPQD3ss52tQ3r2AQXNtb5+xPOhd31dET/FQh+DuXKytYuM6P8bG9d99Yl26E=;
	25:s3g+Zm+dNxdk0ej8eJAYWTl4uJOTnpMph/fkuonIL5tXMx112yeXZIYkRHciwORV4QRBDeYBMG6Y5dlZZtYCWBjgoQc5B/8C8O3MqxfW2xom3vCKrcNIiW/qVouMdmbIjAydMzIhROrAGkNlXwPdetVON2hKMmiHH42ZmdMq6ihzLT1a00NlQaRTbAUjDQlwZoHYGrD3SfXRiiDdDYCZe7BUZ5+Fj3kFU97tq6svaJbOVI8JxlRi1UQgjTbfXwvF7SkBOILyl6Gx/75TNGF+2twGia6XrhTs9hcq1K6U01bFIepymMcLC/T/Y2WdGBCC6mYctkbltxeYe48U3cKfsw==
X-MS-TrafficTypeDiagnostic: SY3PR01MB2154:
X-Microsoft-Exchange-Diagnostics: 1; SY3PR01MB2154;
	31:YeusiDeNKrE4dseTsyPa9O8liRqyWxmlIOeFD30mKeQwwlyCE5BndLSO/U+/zW4p0auw1ZeqHtQkNuTOZEw6fHs54DZSeOqmmVJUxmhlHINdmZuLBfynz4trJ/FuASPW5NbhpHpxbPUAIy0WLvZe/gpVGV8IfeAP1X8/nnT2TnGD13WQ4BUrDDNaw9cus+i4wg5uMMgmFSjJrkuMCtmqJKEBO7tPmb7gxNML7MM6/1c=;
	4:QENDDPDU4o82d0cg6MAsovchPH3AeFLuE1Vl0PGoqiqAvLsr2R6lY5ujebBQOU0xEU8YEeSXEUh0MDFUsbgy0kB98HRkkZi850tzrE6ew1biIvRnyCEgDXsCvwDHVxy3S46P8qtkzIHnpRJou2xaCvgHwZ3HtI/UTEsTFRLXfXTn5eZTItezjpImhfBU1H0H16+WrZ0+kAMKqEgL9bAKVF5SPWhvT0SQd8PT1VcrF/orwm/FwrflNRalHb5fEg0VTRiwZ/VmUOSVEetrp1B/M9etA5GwjunkT3CgI4VGNc1v9tXvTPNMd0NO2/o7cutQIR7uMPO13RigA1TY+1/1+AAcEn39V2XDN1J8EQGY0ptYiSCdsEe1RDFoETNO/pLC
X-Microsoft-Antispam-PRVS: <SY3PR01MB21546D1E8F21FA521C4C80FBDD020@SY3PR01MB2154.ausprd01.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(28532068793085)(103651359005742)(21748063052155); 
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(93006095)(93004095)(3231311)(944501410)(52105095)(10201501046)(3002001)(149027)(150027)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123562045)(20161123558120)(20161123564045)(201708071742011)(7699016);
	SRVR:SY3PR01MB2154; BCL:0; PCL:0; RULEID:; SRVR:SY3PR01MB2154; 
X-Forefront-PRVS: 078693968A
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; SY3PR01MB2154;
	23:/bUVd4AVfCvSYOvr8n8njTgHH6EhPc4xkwAhXaIS+?=
	=?us-ascii?Q?FMLC5WBcY1JPEeHBdGPRkgpSQPEv7iDMFbxi7MiTWwQCvBgcVpKWf5sYzopG?=
	=?us-ascii?Q?HzovVcJs3ST15lVlDjBCMb20uDVVH48oyYYaFiJTmOE+SHN9Cxwrmzy+kldd?=
	=?us-ascii?Q?VDaBqWOPgMoPywn3VtvPpNVTVERXk+WhUoRh5TBy2iq+VmBOeSYpFc/qhhoH?=
	=?us-ascii?Q?0csdW8dFCGGUez6RR2F5yBiYAfRL5QH+Ng/RM164we6B+f5IT7G5MYiOa9Ol?=
	=?us-ascii?Q?ROqshrqZmG3qllJtfkfLhTwJRIWChgcLOisv9ypBgrfStRUr/IhAl/cq0ihg?=
	=?us-ascii?Q?gmdqpJKfFXPSFkZhi8jTZNwwTtVZLUBCT+nn6MOqDbzCRZ7frPYUPvr/jv49?=
	=?us-ascii?Q?JMkOsmgWAQd+ZguD2gBYtW8NioTbV9/HhuqNa4FySOXDNlQiHOR8N/yusHMa?=
	=?us-ascii?Q?FKP7zwikLE6AXci7g/u2XazaeFNuDpUCe3E4GCGoG1LDg7bI9C8VOJHx+zoV?=
	=?us-ascii?Q?d5HutxxkBpGKyb5DEKK3qL4XJvqQr3iBVsjdJgcJ02SnHNzLCi+VZXlJuAc2?=
	=?us-ascii?Q?rhmq/4QbstBnwvI+Y9DHH83aGRL8s94gWI4YxaxqZeAFR7J8Iqt4X7Nixv+P?=
	=?us-ascii?Q?eSwtFs6ayxQXU96skXfw8MMbAldgbkTeIWeD/6B0LW4lk5uBu42tjGW8NpNM?=
	=?us-ascii?Q?omy9WMKeQLNJBRrlnh4jQGubv6gEzmjoiY74LSnO339iABt8RuZqku0In8r1?=
	=?us-ascii?Q?yR9Of8hkPrI9XO5RSRng8stsau4kYDBIrsZIpso31/IwCmjzL516k1w2Ac01?=
	=?us-ascii?Q?0sxMsb+kt42FQCUwQJG5u8tncS51Xq9o5gtPTmpn479Q4pZYQoeqWHlm6noW?=
	=?us-ascii?Q?Ld7lUydPOg5hOqNogvATE4RawtA5cgaYb+a/jjCJiCGasXD/kHYnAFXiXMLM?=
	=?us-ascii?Q?7nghuPnnWKWdPCn1lrKKPo/GK515jANKHZGRGrKN3T/9LaT08RenvOA48oQN?=
	=?us-ascii?Q?j/YfHov6nDo7L1dvMexinOywmG9xcsBVOt0TdtPMOIv1zz4ZPO7dOVc5pwKv?=
	=?us-ascii?Q?iCsnpvUFYMHLq00oCGEQGinVcf+Q62evQ70qMARLIQSr5QYDMyNcZrAKLFX5?=
	=?us-ascii?Q?g0kbyXObJJ8mRuliW1s3jbhJndDs2TJ2YTbSt+bxIKixO6cgLumx7w7mhWMW?=
	=?us-ascii?Q?vo1zRS7TugzIoAJJFmGqQvXBTz0tj9HiGWnaV5Jp+iyIANUkz0WBMFPylNj/?=
	=?us-ascii?Q?xjIP0rHzXI7q4ZO/hiUYDg7HsOCKpqrhA18OcJBLChaH1XBG6RP4jEV/ADw7?=
	=?us-ascii?Q?rjfrxcfAyCxtm2TYIg33pL6kM17rDX/X8olbuNDAjhxr5Flt4goB5ixiAB1C?=
	=?us-ascii?Q?mJDRRnJ80I7yrZmHZMBKUktRVoZjUpugeoo/B1MxmUW6G7u?=
X-Microsoft-Antispam-Message-Info: CzZ+mW8dGSotFoqdOSwsnBJWBh5pVWgmX3FM8jCVoCZc05TxVGHNHCm53GJAXWl1gvbEbfpTdkacjgDzfW7LX6VUeHHOQMScTiP9xbaG+V1PDpsef6ZH5TISF63drkw5ye4NbBWTW8uqpz2333TWyFGPznBDpjGD1620MsAX2fv5SK4yWLVWtlI4xHUu2+3L6LHmdzE5NQmyzn2R7/65XuQxfc/hx8Si3ckH7sD8usFpSJQNRK3dYLRLydYqlmN/asxPROeQtsguhvxIZNPWYtSZnIYIps+ePQR/2R89RhTX+Rhcbw3i398YKbbBMb24dg556sRgDrZkbb1sJ2ceUmr3/SXbghvHkdRMaLNcqSg=
X-Microsoft-Exchange-Diagnostics: 1; SY3PR01MB2154;
	6:+ChhWhVpo1DHxmJ5ntI1JDQ02z5LemAzMy6cxzp8m2OPfMM+/zHVXH25igpxnFYRuKXmcFMhYxtQUx+pIMS7h3EKquLu6fkFSyNKnGmXneygRtBAaaeSWPQFvSNUf2YaTVPVJyy7Ma/k4cgGuMQ3cgr5/B7RGDnkJnuDh8th7XgCUDqJviuWubGcqkngxvnJU47iTVRMSNAiWxuOdlXp2FLfoNzsGM7yGHgaoO6kpFhmmg+cyB5EnFjPwJzv6N15MnlkdjIYobGf53IvsoB1Tnx9BzN03TUXtionpfdg5g3rP9fjxfT4EIX7ol5UQq+K0oDZmNDtA1XoUUZ08vsz/5Q00OzFLFZGqX44CRZC3YVTiqfjMB+MHqw+ufXDWQfBBcjEU/fyl6wlXLbeeWR1JxAoFpEVYpnf09slUYDUgUrEWJuZnr/9GGhW68tm4brlI7MUA4PoOYaf7PGe7Z0uwQ==;
	5:9MKfhprdamRrS301yr9AedWGxQ7JCIZaF8VP6G7OCsa+1GNgEnn9Sj9k9i60+JBzi0GNAwFHQdZ2LAUtA+12pvFRP0cfNZhkW/a5z1P0ceuq2QS65XV8Pji+mCz5nCrzvgYFDMlke1HuQ1/T8uAALZZ2tZbc3KQ9WcoJD78IJes=;
	7:JWZuHYLpWhVR502BMutzs1HBnVN5GyPiKPlu2g+Odu13cOHNm9/uHxcdZVM4bsG2/ZDobfl19wgcx8RsTy1ZaBGE+A8oDVcJrX+RuSeL24RncSu3rxzHdkNf6pX8cAT6rfsQdWcJ4nO9y1xI0cQt6EMEn1i2NrUQHjQAGkhGmEWP4UUojofjY1AgnhRWhZ/kFBOfOLtVhRTbrC1OY87pgbwKh1KFHHaCoJbPZrbUA56eCAQYAWgSsJup32kEvYjE
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: 4rf.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2018 13:21:21.4881 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 347f024e-7b4e-4dbb-e6ee-08d613327933
X-MS-Exchange-CrossTenant-Id: 9ffb526e-7b63-4774-8f76-2167f5ab5208
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9ffb526e-7b63-4774-8f76-2167f5ab5208;
	Ip=[114.110.34.227]; Helo=[mail.4rf.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY3PR01MB2154
Subject: Building two initramfs images
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
X-List-Received-Date: Wed, 05 Sep 2018 13:36:42 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_ce7e843af41d4e8599fc9500e43ef0664rfnzexchangelocal4rfco_"

--_000_ce7e843af41d4e8599fc9500e43ef0664rfnzexchangelocal4rfco_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I want to build two initramfs images when building core-image-minimal. Firs=
t initramfs gets bundled with kernel and available after build. This is all=
 good.

Now, how to include second initramfs image also in core-image-minimal? It w=
ill be standalone initramfs image i.e. it won't be bundled with kernel. If =
I specify this recipe in local.conf in CORE_IMAGE_EXTRA_INSTALL or IMAGE_IN=
STALL_append then I get below error:

"Task do_populate_sdk in core-image-minimal.bb rdepends upon non-existent t=
ask do_package_write_rpm in second-initramfs-image.bb"

I can build second-initramfs-image.bb with command "bitbake second-initramf=
s-image" but I want this to get build automatically when I build core-image=
-minimal. Please advise

second-initramfs-image.bb:

DESCRIPTION =3D "Second initramfs"

PACKAGE_INSTALL =3D " \
        base-files \
        base-passwd \
        busybox \
        sysvinit \
        initscripts \
        ${ROOTFS_BOOTSTRAP_INSTALL} \
    "
# Do not pollute the initrd image with rootfs features
# Enable 'debug-tweaks'. This provides empty root password
IMAGE_FEATURES =3D "debug-tweaks"

export IMAGE_BASENAME =3D "second-initramfs-image"
IMAGE_LINGUAS =3D ""

LICENSE =3D "MIT"

IMAGE_FSTYPES =3D "cpio.gz"
inherit core-image

IMAGE_ROOTFS_SIZE =3D "8192"
IMAGE_ROOTFS_EXTRA_SPACE =3D "0"

BAD_RECOMMENDATIONS +=3D "busybox-syslog"
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

--_000_ce7e843af41d4e8599fc9500e43ef0664rfnzexchangelocal4rfco_
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
	font-family:"Calibri",sans-serif;
	color:windowtext;}
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
<p class=3D"MsoNormal">I want to build two initramfs images when building c=
ore-image-minimal. First initramfs gets bundled with kernel and available a=
fter build. This is all good.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Now, how to include second initramfs image also in c=
ore-image-minimal? It will be standalone initramfs image i.e. it won't be b=
undled with kernel. If I specify this recipe in local.conf in CORE_IMAGE_EX=
TRA_INSTALL or IMAGE_INSTALL_append
 then I get below error:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&quot;Task do_populate_sdk in core-image-minimal.bb =
rdepends upon non-existent task do_package_write_rpm in second-initramfs-im=
age.bb&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I can build second-initramfs-image.bb with command &=
quot;bitbake second-initramfs-image&quot; but I want this to get build auto=
matically when I build core-image-minimal. Please advise<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">second-initramfs-image.bb:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">DESCRIPTION =3D &quot;Second initramfs&quot;<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">PACKAGE_INSTALL =3D &quot; \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; base-file=
s \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; base-pass=
wd \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; busybox \=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sysvinit =
\<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; initscrip=
ts \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${ROOTFS_=
BOOTSTRAP_INSTALL} \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; &quot;<o:p></o:p></p>
<p class=3D"MsoNormal"># Do not pollute the initrd image with rootfs featur=
es<o:p></o:p></p>
<p class=3D"MsoNormal"># Enable 'debug-tweaks'. This provides empty root pa=
ssword<o:p></o:p></p>
<p class=3D"MsoNormal">IMAGE_FEATURES =3D &quot;debug-tweaks&quot;<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">export IMAGE_BASENAME =3D &quot;second-initramfs-ima=
ge&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">IMAGE_LINGUAS =3D &quot;&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">LICENSE =3D &quot;MIT&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">IMAGE_FSTYPES =3D &quot;cpio.gz&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">inherit core-image<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">IMAGE_ROOTFS_SIZE =3D &quot;8192&quot;<o:p></o:p></p=
>
<p class=3D"MsoNormal">IMAGE_ROOTFS_EXTRA_SPACE =3D &quot;0&quot;<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">BAD_RECOMMENDATIONS &#43;=3D &quot;busybox-syslog&qu=
ot;<o:p></o:p></p>
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

--_000_ce7e843af41d4e8599fc9500e43ef0664rfnzexchangelocal4rfco_--
