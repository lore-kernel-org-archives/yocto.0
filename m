Received: from EUR06-VI1-obe.outbound.protection.outlook.com (EUR06-VI1-obe.outbound.protection.outlook.com [40.92.17.26])
 by mx.groups.io with SMTP id smtpd.web12.42749.1593975791417442029
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jul 2020 12:03:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=m4NQKkic;
 spf=pass (domain: outlook.com, ip: 40.92.17.26, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CGXZ2Zdg5wpWt0ts/aCg2fOx9zl1gOVQoCtuWz4WWil9YBZuDptQFlic8UovdYp9Dp8RLhadXZZz8uXazfzRl+zP3EWAlCG7lbFcN6pKG8w/TLmAEAqYSQBj2bv0VYm1a3kxhpBgVUeua55fUCKUBl5XWNnlULYb0AOn2pOYEdkib1mGy5150quHfjwXVOBWyqxJAG4THyg8ZdxUpzU+OFFrb1LuTMAz3tjj/oJMIBh2e1wFVNsvMco7PSP3ab+oww2KY6znxELgic37nAsCEcFRIeJhEvV/9diLbc4/gHhmGHuXewHJXGodr2uSLW64hZhCv9JpZtlbcc3Du3Yw0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=grpNd9m9UOXWSVWI0tN0EtRv9rakRgAg/d8alToOGHY=;
 b=Cfkqiw/BxqvH4cJGBBKDLppZO7j4FmLK3AojYPyoaButh+EYGNJOEpHpEuJzOxijK1V9p1Sso2Hry68cq298JQRk8L1PcE64rE1xkL/r2YbI876PIK6vCJnma2U8/D6HrCR8cpvZqBJ9zOPkmUXhPHaDUI8tHHEemwveWk18ubYiFJvu2VZ17MBMs96YE3kkb319sKKuVRplbM22ME9yaluAF8mHO3ugyp/IPiq6IUCKbpAnO1gwkkQ/2UCSTGBb1pet9xUgpCTl4Lz/4QWabVebnjOVvECWeer/yLuw5DTcwOlE3iVIc5Fi3NVgM8sHfiApolfN+fMHKQ7yybUZuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=grpNd9m9UOXWSVWI0tN0EtRv9rakRgAg/d8alToOGHY=;
 b=m4NQKkicRDW0qrhKFD2VULbUiwpw+YmfnTzfTqMoKi4I6FqbooeF8NK0cCWA4DyhLPVH5FuNuh2qRQT7E5GC25jKFD8dK8rhimWwhw/VM+jaF0NnfblzCLDVxAc649uNXLZ6+AliHJrGIbX2v0IVwzn5//M3MZi1NeW/XiJfstHV8mwK3PBrejJN1nr8jHuRXHVunM024zSAHpHaSAcwCX5CP3t/YSvGDxUXfT36+gpQJNpqAeB7JUGuhpZkjaUFk8FEaVFab8whZUuMbzTk1Qu5i4OJ30vlFmaa9ePj4FxIsqhAQyZ5Ev6Mkrl+FhVhuwT+hvf95GJi/bHrlZUkBg==
Received: from DB8EUR06FT034.eop-eur06.prod.protection.outlook.com
 (2a01:111:e400:fc35::4a) by
 DB8EUR06HT137.eop-eur06.prod.protection.outlook.com (2a01:111:e400:fc35::178)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.24; Sun, 5 Jul
 2020 19:03:09 +0000
Received: from AM7PR05MB6881.eurprd05.prod.outlook.com
 (2a01:111:e400:fc35::50) by DB8EUR06FT034.mail.protection.outlook.com
 (2a01:111:e400:fc35::269) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.24 via Frontend
 Transport; Sun, 5 Jul 2020 19:03:09 +0000
X-IncomingTopHeaderMarker: 
 OriginalChecksum:CE8C224E56F09CEB6BD02E6A64FA27BC9004F2100FF01DD4C22AD681569F8D97;UpperCasedChecksum:18F9342503CC53510CA845717740690B7F53CB222A8325EAC39CF53A88F89AC2;SizeAsReceived:8715;Count:48
Received: from AM7PR05MB6881.eurprd05.prod.outlook.com
 ([fe80::2c81:794e:63ae:e722]) by AM7PR05MB6881.eurprd05.prod.outlook.com
 ([fe80::2c81:794e:63ae:e722%6]) with mapi id 15.20.3153.029; Sun, 5 Jul 2020
 19:03:09 +0000
Subject: Re: [yocto] [meta-security][PATCH 1/5] python3-oauth2client: add recipe
To: yocto@lists.yoctoproject.org
References: <20200705185808.3912-1-akuster808@gmail.com>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: 
 <AM7PR05MB6881A44FE679236AE94C9FBCA8680@AM7PR05MB6881.eurprd05.prod.outlook.com>
Date: Sun, 5 Jul 2020 21:03:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
In-Reply-To: <20200705185808.3912-1-akuster808@gmail.com>
X-ClientProxiedBy: AM5PR0601CA0036.eurprd06.prod.outlook.com
 (2603:10a6:203:68::22) To AM7PR05MB6881.eurprd05.prod.outlook.com
 (2603:10a6:20b:1a9::19)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: 
 <cdc7472a-6b92-30d7-b7d2-b850a7ddc254@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.20] (79.215.14.174) by AM5PR0601CA0036.eurprd06.prod.outlook.com (2603:10a6:203:68::22) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.24 via Frontend Transport; Sun, 5 Jul 2020 19:03:08 +0000
X-Microsoft-Original-Message-ID: 
 <cdc7472a-6b92-30d7-b7d2-b850a7ddc254@outlook.com>
X-TMN: [8mCxgXJhG6mzO4U10FkC5wofGJqHKP4+]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 48
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 9fbd7fa9-0bc9-4577-39d1-08d821160e80
X-MS-TrafficTypeDiagnostic: DB8EUR06HT137:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	8qRltESioV7BMa9c6adnOJOiPNzxdHk0zo4cboh+XRWAI+6YY9QhDBFjxCpADMGK1w7UUATMTr3hkSbp8MDi8Pnw6152jGze/qYn5pZQhiMWK5YcemhG/N6jOeDSVJnMGN9RusK/6yfQgaAFcKTEB3CvEk7XMxRBBuJYED5GoNpfEFzSqkVfjW3MYMy3wmYz4UQbQaCCDn/gT/lYGzS0ITYCpsBlNa6xFH0cLlNYlEOa6i/+5Dl5UbT34Gakr1nR
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:0;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR05MB6881.eurprd05.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:;DIR:OUT;SFP:1901;
X-MS-Exchange-AntiSpam-MessageData: 
	KZuM28dx1rrggx9EUDajvgR5zhY9SQVj9Smz4kSEO5yN/eJRBXisqt+N4AQ6Fm8gUZlPj4UI5+kAnP9Hxa8XdPNr42u7pky57yAI4YvoaBy8P2B+DRlWgIm7PYuY400DJNig8acQ/16NNeN+jzX+fg==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fbd7fa9-0bc9-4577-39d1-08d821160e80
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2020 19:03:09.1954
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: 
	DB8EUR06FT034.eop-eur06.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8EUR06HT137
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

I think some RDEPENDS entries are missing, by looking at 
https://github.com/googleapis/oauth2client/blob/master/setup.py

install_requires = [
     'httplib2>=0.9.1',
     'pyasn1>=0.1.7',
     'pyasn1-modules>=0.0.5',
     'rsa>=3.1.4',
     'six>=1.6.1',
]

same applies to the other added recipes of this series

On 05.07.20 20:58, akuster wrote:
> diff --git a/recipes-python/python/python3-oauth2client_4.1.3.bb b/recipes-python/python/python3-oauth2client_4.1.3.bb
> new file mode 100644
> index 0000000..b84b4ca
> --- /dev/null
> +++ b/recipes-python/python/python3-oauth2client_4.1.3.bb
> @@ -0,0 +1,9 @@
> +SUMMARY = "Add version info to file paths."
> +SECTION = "devel/python"
> +LICENSE = "Apache-2.0"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=038e1390e94fe637991fa5569daa62bc"
> +
> +PYPI_PACKAGE = "oauth2client"
> +SRC_URI[sha256sum] = "d486741e451287f69568a4d26d70d9acd73a2bbfa275746c535b4209891cccc6"
> +
> +inherit pypi setuptools3
> 
> 
> 
> 
