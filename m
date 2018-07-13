Return-Path: <Karthikeyan.S@trane.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 692CAE011CA; Fri, 13 Jul 2018 07:34:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.37.131 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 10896 seconds by postgrey-1.32 at yocto-www;
	Fri, 13 Jul 2018 07:34:16 PDT
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
	(mail-cys01nam02on0131.outbound.protection.outlook.com
	[104.47.37.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77BA6E007AA
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2018 07:34:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=irco.onmicrosoft.com; 
	s=selector1-trane-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=ubki07Wn4PI9pqtocv7pXvwbouU0dOLJbWRabi2Um8I=;
	b=rXobBmueluhjF1Bm5DCY4qZ+w6vVthq57rWNpeqSRufF+rqjwejIo4MeWjHwTyQzznqyJlZCKsFR2QpyCUd6exktO96qGuuelxb9El7RWy8TfUmGz859l9hOBfZI14J9T+W5BLeXdd5UlXS4e9HkiKjJOy8grm6cKvmii/0vsyw=
Received: from CY4P154CA0001.NAMP154.PROD.OUTLOOK.COM (2603:10b6:923:16::15)
	by DM5P154MB0012.NAMP154.PROD.OUTLOOK.COM (2603:10b6:23:9::23) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.930.22; Fri, 13 Jul 2018 08:58:37 +0000
Received: from AM5EUR03FT004.eop-EUR03.prod.protection.outlook.com
	(2a01:111:f400:7e08::207) by CY4P154CA0001.outlook.office365.com
	(2603:10b6:923:16::15) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.930.21 via
	Frontend Transport; Fri, 13 Jul 2018 08:58:37 +0000
Authentication-Results: spf=temperror (sender IP is 23.103.241.196)
	smtp.mailfrom=trane.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=temperror action=none
	header.from=trane.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
	lookup of trane.com: DNS Timeout)
Received: from 012-smtp-out.irco.com (23.103.241.196) by
	AM5EUR03FT004.mail.protection.outlook.com (10.152.16.163) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.952.17 via Frontend Transport; Fri, 13 Jul 2018 08:58:35 +0000
Received: from BN3PR73MB0070.mgdir.irco.com (141.251.167.18) by
	BN3PR73MB0070.mgdir.irco.com (141.251.167.18) with Microsoft SMTP
	Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.930.21; Fri, 13 Jul 2018 08:58:34 +0000
Received: from BN3PR73MB0070.mgdir.irco.com ([141.251.167.18]) by
	BN3PR73MB0070.mgdir.irco.com ([141.251.167.18]) with mapi id
	15.20.0930.022; Fri, 13 Jul 2018 08:58:34 +0000
From: "S, Karthikeyan" <Karthikeyan.S@trane.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Regarding build Yocto offline
Thread-Index: AdQahxnZ7Ii3d13cRZK8OUwwttojeQAAITjQ
Date: Fri, 13 Jul 2018 08:58:34 +0000
Message-ID: <3d2df8a5ae76426ebc9562d88615fff3@BN3PR73MB0070.mgdir.irco.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [141.251.167.5]
x-ms-publictraffictype: Email
X-MS-TrafficTypeDiagnostic: BN3PR73MB0070:|DM5P154MB0012:
MIME-Version: 1.0
X-OrganizationHeadersPreserved: BN3PR73MB0070.mgdir.irco.com
X-EOPAttributedMessage: 0
X-CrossPremisesHeadersPromoted: AM5EUR03FT004.eop-EUR03.prod.protection.outlook.com
X-CrossPremisesHeadersFiltered: AM5EUR03FT004.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:23.103.241.196; IPV:NLI; CTRY:; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(39860400002)(396003)(376002)(346002)(136003)(366004)(2980300002)(199004)(189003)(7736002)(26005)(102836004)(54896002)(2900100001)(7696005)(260700001)(126002)(790700001)(478600001)(6116002)(66066001)(2351001)(956004)(486006)(72206003)(476003)(86362001)(9686003)(2906002)(3846002)(84326002)(316002)(55016002)(106466001)(6916009)(236005)(6306002)(5660300001)(966005)(97736004)(69596002)(5640700003)(606006)(356003)(108616005)(1730700003)(81166006)(81156014)(24736004)(336012)(156004)(63370400001)(16586007)(68736007)(3480700004)(186003)(53936002)(5024004)(2501003)(8936002)(63350400001)(8676002)(14444005);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM5P154MB0012;
	H:012-smtp-out.irco.com; FPR:; SPF:TempError; LANG:en;
	PTR:InfoDomainNonexistent; A:1; MX:1; 
X-Microsoft-Exchange-Diagnostics: 1; AM5EUR03FT004;
	1:7Ajmqdl0i24y7waisacINkZJD6j4McSP5joy51Zvx48PLDXDNfrSBkjDD+G5BLz5czwaKYo+H0Ydxxg66qx7rHE4EHVZso9/u0m9kEG2HSwBNivMv+Eek3dahUy8OCb8
X-MS-Office365-Filtering-Correlation-Id: 0554fbd8-d136-4d17-8a53-08d5e89ed171
X-Microsoft-Antispam: UriScan:(223705240517415); BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989117)(5600053)(711020)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(2017052603328)(7153060)(7193020);
	SRVR:DM5P154MB0012; 
X-Microsoft-Exchange-Diagnostics: 1; DM5P154MB0012;
	3:F8KnvTmpuggLeTeM04LJBYxlEkagteDAQs0bqqawjwTZ+Uv6W9qb46Psurx1b3weczIzGVVArwH/NaZS7v7JytmiI0TgVrUGJOJvRTDhVpd5NhpwQgKLHPpB3ZzMOW/p6KduztVNZy7LRTZpgLtZdWIh1xrH5ZGEnPwaSkpV8p4BlNwFOkjZDGfy8XkGNFxOB6T4bBmnEFKqjAxviEJ+TmtY1a8ZwKd6XBNxI0mgKyjheMuYAU5QpDSJaYv02ReWNorKwDnoT46lki6CmSUZCbNEluaVNm5fKTaNJozDd0JyRPtRBoPpUVLhs+nBBxG4shKrUfxKE+juFuT5GTE0mytgQz+3zp0dthEloTETUOznekqcfDLQBk6agjEDOLTXkXMVZO6gD+5CJv4MfWli0Q==;
	25:f0+XYYl6FZI5p4LNZcmU+1zByLNWPdvHdRan553dNgMTjdJ25GMXG9gqMkdm8Cmg262WpFXzXoB9MbVpqxEBUTCF47kMe2Tn31ctZCoGoD4Ehj/tVIFILTVzY4rVAyear/+A0KVSiC9vpWODWDnz2m+Dus13cIGIMWxihRyaZunc6I/whla6e5fJC2sogqcn1LH3ta6JbbbTfILzCOxvqnsoLFrDN9bg2Aquncz78ysRzwE4cu3yGB2wQhra2o6BtApqX1YQTeYuJXj3ndk+QPbKa8cRidcC3HxdpyjOlu+4zsejQiuezcUA27kCS4fTPMiPfiZVVnXms3N9azUxIQ==
X-Microsoft-Exchange-Diagnostics: 1; DM5P154MB0012;
	31:f4THOdj3NReCxZEJX31PA/TDQzvr1zeKtjNhFZrQxTZq+GnWjXXsB/PaLt3k/qWM1n2A3S+xpKA4FB8alRNFvral9T2cU70Ny9NKGQRE2Cdo4TlddB/D6vW3CM9pDIRKMeZqqH9zEoihtIyA3ZoGe0XkKJ3p8cFiUjQXTKS/QwmhGy70d2jJUyea40eXYq0LpwZowLHyc8AMrTJ+jH638hZ9FVTLnM1CxOrI6TrdMFI=;
	20:7s/wxWo3SZfXnYGiGWprcO7bzpRYi67NjlcHply07TaFs41gJrzAUkm2bvrdV487n7xGWCw66EEm1Iq7zOM/OIsRnhr9DxkqU7slNeZMubksgkbGiSegLi8D5zXLR74VtEZOta5vvvF0VsamBIg+azPsoAS05uHP7z+vaA8OVtFFeJfB6z8XXXdQCi3t8NY1ZKxlxi68+37EL9i2e67ssRjLSo0vfgWp63qOl0Hbb5DQLuJgP6Wpit0wheyUNOKkTirLVjXpb/UH5e28lkjEWzLcNaA3BRVYVVpyi3uJ5t2GY7dk0tD6WQw4o0K8UBOvOHT3aALDkB/FTjkikKEY3i4qjmruzaDLZo5C9r2BIafBlt2kKXM2us/Acrib1KubLy/e1BIG3I1OhBvy6hlIWuOU5KgNuhOJ9YyZt5+6SuIuqMxCWn1byrjGj74kRTcYQnAcWXlODiKIQgDykuk/pc+BX1KUjpXI/+2bLn/59dVfEJ3dhSCSfSfsGau/NH57
X-Microsoft-Antispam-PRVS: <DM5P154MB0012062AF4C6132D88B82FCFF1580@DM5P154MB0012.NAMP154.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test: UriScan:(28532068793085)(223705240517415)(21748063052155); 
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(10201501046)(3002001)(3231311)(944501410)(52105095)(93006095)(93003095)(6055026)(149027)(150027)(6041310)(20161123560045)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(20161123558120)(6072148)(201708071742011)(7699016);
	SRVR:DM5P154MB0012; BCL:0; PCL:0; RULEID:; SRVR:DM5P154MB0012; 
X-Microsoft-Exchange-Diagnostics: 1; DM5P154MB0012;
	4:S5zvJZBFvHC1KBuhdFiAdbGUkQEjrgKDk3PElpkRDVAttJJ0bOiCC1ai5hc6rg6ulrULk0A8W7ui8ggfBPn/gRcXJpOoQhORK0xs+9+hRaXAqR9zxJ4iVi8H6FhqOw6S4oRNQk9sMH3+niH+1TZZHd8uaxeErAOxM67HttXxZ1e3lBx+L0nbr4OIlN0G16qcDhHgbWhR7KtsOxXbVBj3XLo6UU4UxRpqbWLY3dqxSYUviixBiqcTWlXvS9UB8M0DDqVstxJ5pnr6HIxUwZhCocyxuAzqUBSDy5enxdmXQr7/Zw0n66V3zZnhiKkKKahm2MlBW/PBdGfuKia5aJp3rPGeD28ckkwqI60HeoD8zm8cjtgMq9FP3Z88Ydbq/7cQ
X-Forefront-PRVS: 07326CFBC4
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; DM5P154MB0012;
	23:MDGrnAbjtCejh0fBEoZbatxAFIDbaWUBXXbkJP/og?=
	=?us-ascii?Q?Ag3kTwcfhiJ16eowCIL+kwODTpqShfSCVFpJQy/uRHuBoHD/aoZVOkb3unCe?=
	=?us-ascii?Q?FVuWAnlRAUGX2PV1F3sT9M4cQGNpP4at9DfxssLR/3DavdBorK+2Y+54+zA3?=
	=?us-ascii?Q?4o9VxWyw/eWhCmV5q2Ii7TFbUjV8rsZrPVn9ae+vdnYKpcBkaGk7vUMFB8Pf?=
	=?us-ascii?Q?xwGM2+qUueYqis6DbC8QpOlLFlqN/8+k1B6rqpq9As96xwGas4DYt9+zDGjK?=
	=?us-ascii?Q?3eCZ2kfjcewas8M+5ywf5rUMAK1UhiYWpx2Zh6gMMLMhkXJU1LaQ3ofVSHIW?=
	=?us-ascii?Q?b6XfJkIH4jFEbFnvHdxjnAz6wucF7YDRFI6ikNh0a9kLdrvJHxFfr3SPE9hm?=
	=?us-ascii?Q?GlIMt1bzuGsOxbrjm5g6KroeVI3W5IYoPJk3o2gP0W4ty5skNIeJ0kJCJVqo?=
	=?us-ascii?Q?xDKLyJLRsazbx4Atge+Ny/KHRXLXY8fgWx72RGEGdKGFwnH3WQta5TDbjaL1?=
	=?us-ascii?Q?5V1TKxqfgllL4WU9LDjvnEQx1EEZFYc3LGOTQXEkIXhn/BQunS8OclTtEK/W?=
	=?us-ascii?Q?a6IE7oB3/6sSE4S4TqjsxRbGaCpXVteGCkiUVJHHdRkDHWL57k/Zd3sJ/90K?=
	=?us-ascii?Q?9R1OCeP0rSov0mEL4VrzBo3xrsK+S9kLzMFdItNg2wammi21RC3Ho9jznZZX?=
	=?us-ascii?Q?wWiA//h8Pdf083riFDhlin3oawFUUjtbeVu8S9Qr/KDmGAFz9vM7KfEpCmB3?=
	=?us-ascii?Q?lHgvNONNoxyyYHF+FyVP/FTrwvFCT9/qa7CyDObTndfDD+2XvPFtWHwooSfr?=
	=?us-ascii?Q?e+fiM2AIrKC/O23IhcmVa0RNwPVUDhjRKsMZThR9W8hL/f4X01kCOJqb1Isn?=
	=?us-ascii?Q?fO9PCpqAmrnVlxJwvkaaaOwO4VF0zRs9o62kzVLaC6FJonlORd3U0cKuT+RU?=
	=?us-ascii?Q?+H0oyxxD3XRD81DxMeCWsHo4JBW+bek4vHukMHecqocPcghH0dA9/DLl4wWX?=
	=?us-ascii?Q?vDeQS288zMoHtW60QVmj5Ovh3yPrdXUY4+SLwWQ0wKlM7yIx2oM5xyrfZru1?=
	=?us-ascii?Q?1Czw9CqGUlDoCOAKjWZEQ1RQ71Qw6fvVn21oYfBwEhi19YWaL/gPOcxKpPx7?=
	=?us-ascii?Q?yjlKGhGi0PxKH+lfl1vPF+EyrBrxBXMFkHwQs9aRiodIi+gFChE3c2ZPr9BX?=
	=?us-ascii?Q?GKfxWnAV1TqwlPi25XvnX/tIcDqB3NJ0T3vknpcXJXPfdmSL5qKsoaY1dMX5?=
	=?us-ascii?Q?Ag+w/sL3yKRpmV+MiprQvi8HWjg5G/N15U4+FGTwDDrAWweeiYiK0QQw+zIM?=
	=?us-ascii?Q?ukwgFfWPwnIXdHw7VpNQQPWRD/RM3J59qBgAWikUlBO3p8dRQ9izcDIXqaKQ?=
	=?us-ascii?Q?eVO1Ct10X/HnDul6Wa410/xHkk=3D?=
X-Microsoft-Antispam-Message-Info: D6dSc2fImZXCPDZm6I5dViuZDjn1SCdxbY3yJ95KkgSp9s9BiVA1cAyb1EqP0VAlzsa4SXq++rKgi8qU8TP6UQrHNknYO2CYWlFpfxnsRTzAcME4kSifLMknwdchAhLeyMHj+vyxHcb1SPsClM83MdpP7rFqkf0ksG52QFDE4Gf2I0gw6d13zBuFGWDmbrKPkCBzrr/5kgdo+4H0nuDI3PkSW7dmmjNBc7lXKYs5dQVry49BVjUGShtTU1L0NiZkTEmcJqVqJlgLZ/uUJCaCGEB7/lFbq4xCLMvy/083PL6i1VHNZv99896ToHzFVS1zXEfwM97X76Ew8rgKGfCJsnUiTKGkTA7YHlHIinGZHgI=
X-Microsoft-Exchange-Diagnostics: 1; DM5P154MB0012;
	6:F4bHXD2Wqf1z9Z0922G+L4kf5v2PxRF60IT10L86sv7N5QiuA1Z9Mgnw868xccNe+bxOETZrp1CNzmRosT+N24NkZMdOl5baaXU+pyOuR8mSprGy79eEt1SDdhAP6mI0HBWIeTLt2RdP3okEAek0p/ncvyuZi2qGAlboaVLF939H2qjSFJa1vTATWv8yWJdy3ysqam+RM0h7mAxYfpprVFcwlk0q+6qkgLYTeydQv/oE0Ig4L3QZ8GE18A8FsYIadeHFM76s1xOgj+ydj2MLzEmghRsFBxnSplK2vYrANnJe3eNYP+MzRRwKvsJJL4BW43oo0IvmUltjJNKH5t2hul6etyaMihv+IIyyT78RR1qZFVeMygn6ljzkafez26/MZD24xAP/L9L0sZl15zHLa2CvBVHEvp8gy7GhtK36eSSpJT4DOHF5nz2HzsaVwtObg2dfk2CKCdJerJ/rPt9n4A==;
	5:hfLu2mXgBqvz/VT8wQHC1vREdnSOBCg3DzMASkZ2AGT1rzaL+CcROG35aiGyc/IjEGpdNvf90Uy3GVmdF1+4wGfoULpBNU1Oiyhr5KU1iOVCWiH3UCnD6j4HbfjQt64/Emu3ZEyEQNnw2NqUpK+2YYEFH3Q0tt8wLE6cPjjJ9BQ=;
	24:7gcin9P2k4tI+04x80Vd9Qfj3UbWFIScqxIH5kdhB3attmiclXcx1DZ5JP5bivKIV3xlwzpbEBTpeigm1OcIPL4Y+Mvzm4dAEYjbvsGqz50=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; DM5P154MB0012;
	7:SuBP4bQwfyDR6r916iZlFjeawHBIIs/ncpR/doaoXdJ2EmMz1knfztZ4IIkzO7FuHz/Dg/1mgV7sJHeJQp5lWPe2tKn374rM05AXfktOr4TQ5t31cwB9J+OEeYxtAj/vUU908V+cwn7QKJtlylWGt1qIyURt8no6wuRezC3f+aqBpanpXFQm5+LwRtNrRVG74AbGDazi3Uxx7rf9xJyOwIhS0x0wxAyF1YKVE7uV5pmuPDE9Q6nFmC93DT7am9Bm
X-OriginatorOrg: trane.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2018 08:58:35.4617 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0554fbd8-d136-4d17-8a53-08d5e89ed171
X-MS-Exchange-CrossTenant-Id: abf9983b-ca77-4f20-9633-ca9c5a847041
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=abf9983b-ca77-4f20-9633-ca9c5a847041;
	Ip=[23.103.241.196]; Helo=[012-smtp-out.irco.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5P154MB0012
X-Mailman-Approved-At: Sun, 15 Jul 2018 12:23:35 -0700
Subject: Regarding build Yocto offline
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
X-List-Received-Date: Fri, 13 Jul 2018 14:34:18 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3d2df8a5ae76426ebc9562d88615fff3BN3PR73MB0070mgdirircoc_"

--_000_3d2df8a5ae76426ebc9562d88615fff3BN3PR73MB0070mgdirircoc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Greetings,

             Initially I was able to built with github access, but our requ=
irement is to build offline(without Internet), I followed the steps given i=
n https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_create_my_own_sou=
rce_download_mirror_.3F

I added following lines in conf/local.conf (Git enabled machine)
SOURCE_MIRROR_URL ?=3D "file:///source_mirror/sources/<file:///\\source_mir=
ror\sources\>"
INHERIT +=3D "own-mirrors"
 BB_GENERATE_MIRROR_TARBALLS =3D "1"

and copied download directory to network disabled system and added followin=
g in conf/local.conf(network disabled system).

SOURCE_MIRROR_URL ?=3D "file:///source_mirror/sources/<file:///\\source_mir=
ror\sources\>"

 INHERIT +=3D "own-mirrors"

 BB_GENERATE_MIRROR_TARBALLS =3D "1"

 BB_NO_NETWORK =3D "1"

It was throwing error, saying that "Network is disabled through BB_NO_NETWO=
RK=3D1" and build was failed. Please share me the exact procedure to build =
yocto offline.


Thanks & Regards,
Karthik S


________________________________

The information contained in this message is privileged and intended only f=
or the recipients named. If the reader is not a representative of the inten=
ded recipient, any review, dissemination or copying of this message or the =
information it contains is prohibited. If you have received this message in=
 error, please immediately notify the sender, and delete the original messa=
ge and attachments.

--_000_3d2df8a5ae76426ebc9562d88615fff3BN3PR73MB0070mgdirircoc_
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
@font-face
	{font-family:"Bell MT";
	panose-1:2 2 5 3 6 3 5 2 3 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
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
	font-family:"Courier New";}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p>Greetings,<o:p></o:p></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 Initially I was able to built with github access, but our requirement is t=
o build offline(without Internet), I followed the steps given in
<a href=3D"https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_create_m=
y_own_source_download_mirror_.3F">
https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_create_my_own_sourc=
e_download_mirror_.3F</a><o:p></o:p></p>
<p>I added following lines in <strong>conf/local.conf (Git enabled machine)=
<o:p></o:p></strong></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">SOURCE_MIRROR_URL&nbsp;?=3D &quot;<a href=3D"file:///\\sou=
rce_mirror\sources\">file:///source_mirror/sources/</a>&quot;<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">INHERIT &#43;=3D &quot;own-mirrors&quot;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&nbsp;BB_GENERATE_MIRROR_TARBALLS =3D &quot;1&quot;
<o:p></o:p></span></p>
<p>and copied download directory to network disabled system and added follo=
wing in
<strong>conf/local.conf(network disabled system).<o:p></o:p></strong></p>
<pre>SOURCE_MIRROR_URL&nbsp;?=3D &quot;<a href=3D"file:///\\source_mirror\s=
ources\">file:///source_mirror/sources/</a>&quot;<o:p></o:p></pre>
<pre> INHERIT &#43;=3D &quot;own-mirrors&quot; <o:p></o:p></pre>
<pre>&nbsp;BB_GENERATE_MIRROR_TARBALLS =3D &quot;1&quot; <o:p></o:p></pre>
<pre>&nbsp;BB_NO_NETWORK =3D &quot;1&quot;<o:p></o:p></pre>
<p>It was throwing error, saying that &quot;Network is disabled through BB_=
NO_NETWORK=3D1&quot; and build was failed. Please share me the exact proced=
ure to build yocto offline.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:12.0pt;font-family:&quot=
;Bell MT&quot;,serif;color:#2F5496">Thanks &amp; Regards,<o:p></o:p></span>=
</b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:12.0pt;font-family:&quot=
;Bell MT&quot;,serif;color:#2F5496">Karthik S<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1"><br>
The information contained in this message is privileged and intended only f=
or the recipients named. If the reader is not a representative of the inten=
ded recipient, any review, dissemination or copying of this message or the =
information it contains is prohibited.
 If you have received this message in error, please immediately notify the =
sender, and delete the original message and attachments.<br>
</font>
</body>
</html>

--_000_3d2df8a5ae76426ebc9562d88615fff3BN3PR73MB0070mgdirircoc_--
