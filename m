Received: from NAM12-MW2-obe.outbound.protection.outlook.com (NAM12-MW2-obe.outbound.protection.outlook.com [40.107.244.66])
 by mx.groups.io with SMTP id smtpd.web09.8750.1619074595496000883
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Apr 2021 23:56:35 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=jjESQ5GY;
 spf=pass (domain: windriver.com, ip: 40.107.244.66, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fuh7Zq7RLLMOi00ZFeGeqXio0i8GLKT7c2kBaTflF4h1r4o7D7NVazmRArPrEjeGzEzbZ9fE5EhzpixViesN+aAgFBiz25vKdq+/MS5P4e2g6YKOJvYaQLZA77VsMZRfEnjDia9bOu6qVJdnDSma/kss1MfDxpNwtZDwXVjRQm1UsY/OHmlKPi4lq7qoamPcT9WumHrYEoOFZEqxIQfJoz7ul37Q35zGh6LwkHO46gu6N++Joo2xPPDlQnsStEqH27gk4Te3njF0QthJ1W91ja8UJVELabyk1/HAI1kJrnALLn2mM4wxBUuXgJGGtwK/D/GYpjSXr2wnruZP6IVxsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kjzhRdRO36QRLgbWpqwzAS7JoJwUAy97FpOErj2wCvc=;
 b=UOpfWROtlXVO/HeQNnTEDX1STRI2cAVfPA7Kfi2bzF+bWOTX5atg9wy1u9VlsVMaoe3zayr8/SlnMWnTnQayEJcH0qvtp+2bCywEIaMoEjom6kTegI3/Q56v4RwhkZdZDElgYbmha8ShT10bFuov0jdL8GLxmEpcLh8pvgmRkewRqkHhusQ4Fnb9aHLW8rJV6ftjtqhUx+BVCaCN8znxGbI8QJs5vZJSv7OytkscUbWidT8q403vpQjAObvaGzpAaUg+k6Kgj2BPg6uYfvyGeNGKvpt4SGXSVxSLfPqGV3HdDvnGlkFExlHuSZ+7gBNpM4Dabgg61OUN5gO5j0zbGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kjzhRdRO36QRLgbWpqwzAS7JoJwUAy97FpOErj2wCvc=;
 b=jjESQ5GYwTiGpNJ3UNTkh0u7KO4N7Lb7iIZ4YxIGXBPR9i90lTLsTP0iMN12TOqcvyMrnmCoV8PDJwnYHcqigKmOmDNI9RyJGqhpfsPaBoUjwi4C6TzEWlIgQinjTpxvQ461SOixnUMvOHex2Vlbwd8dLcPb42SxdR/HXIub/9I=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB4849.namprd11.prod.outlook.com (2603:10b6:303:90::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.20; Thu, 22 Apr
 2021 06:56:33 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::55fe:763e:6961:7bbf]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::55fe:763e:6961:7bbf%4]) with mapi id 15.20.4065.021; Thu, 22 Apr 2021
 06:56:33 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	jason.wessel@windriver.com,
	mark.hatle@kernel.crashing.org
Subject: [meta-openssl102-fips][PATCH 6/6] layer.conf: add hardknott to LAYERSERIES_COMPAT
Date: Thu, 22 Apr 2021 14:56:09 +0800
Message-ID: <20210422065609.143415-7-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210422065609.143415-1-yi.zhao@windriver.com>
References: <20210422065609.143415-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: BY3PR10CA0023.namprd10.prod.outlook.com
 (2603:10b6:a03:255::28) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
Return-Path: yi.zhao@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by BY3PR10CA0023.namprd10.prod.outlook.com (2603:10b6:a03:255::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.22 via Frontend Transport; Thu, 22 Apr 2021 06:56:32 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8e7af999-1abf-440b-09ec-08d9055bc3d5
X-MS-TrafficTypeDiagnostic: CO1PR11MB4849:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB4849B60133177F01CF18A820F9469@CO1PR11MB4849.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:296;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	HfHIg+VmO9lWXlRCtOuD4mU1+bhVhRnZsa/fnNcEGx+81/8SIme2qykroFyQ68OIBD48jr8d4z4iH07uCsN/yYHZSuj5kd0H7VzaCIT7ltN7T6KWg/92NcSDOzjAjS1lP2Yo0ui4BjOo7BqpJ2NR1DnQwQB6K9HurNafMOyPJ7UvNU9n8SgXme2MgCXzxCAlzfoLeLylnjMwijfXsagcnCr6mrE2DAHsIjzth3uyiECkodzENiDSkWH8DvMe9QNAVAqtzXQJj2y83PEL0TXhUsID65Uk68Y3stQv24GaWvQO5hjBFjXKpWommC6nyUzZ4hbz2+UdDsDp51hLsUhdsI/w8DcOhATA5DdJwLgDJdgaD+HYW/G4nZnuH7A2AUxlgZd2ri7w+eimNSNWILI9CDb/WyReYGb6JIW4ezE6QaegmA+c1Z8u4LC8TGX4i02eW5ia0muw/QzON0tfveT/tmZCFXyFV9wk8vS53o4bPhMUYMtQEQ8DR6Gt3PPqLDJvXRdibuA5YHOrsiQIoLmgWxonmat3HOi1LO4r/hOJSO+3Vy/jnwG04mFEJRYbijVJbcWZ+2tG7I6bKdMyTeqzFt40LZKSrRP6ZhFzdYubKdl95J9WsNwZfxCeAxXIqIDhg7P1QEMS3T9qBIrb5FLxKVbodrOhRQZXwNfICCGDEWU=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(39850400004)(376002)(346002)(396003)(136003)(8936002)(6666004)(8676002)(316002)(6486002)(1076003)(478600001)(38350700002)(36756003)(86362001)(2616005)(6506007)(38100700002)(186003)(16526019)(52116002)(26005)(66946007)(66556008)(44832011)(2906002)(956004)(4744005)(83380400001)(6512007)(66476007)(5660300002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?5jKJJasMTXWMnajD0vxL8cjoaTpimChmksmEe/e8iw/Y7imqHzfeTdzxZg4j?=
 =?us-ascii?Q?5+oB3m2A645APjkl8ctsGO2LJfBrcgHQ+O2f8F3XDj3RA5rZQ+uqJTX+tG6j?=
 =?us-ascii?Q?0/CP3nehRD/9/Tk6TcJvzJTa92wZ3esDL4sQU+ap6yyqSBAu/2Rcd2LSUrzX?=
 =?us-ascii?Q?KFEzMVGX8yekL+kVsyt3UEp69tIISqk+E9Z62LQ2j/mKf1bmELUjJU7EBVBL?=
 =?us-ascii?Q?DQB1ZeZqaX032XZ9p5aEtoy/U+hF2N9G+KoNkgXSiUMzZVY9VPGX/5hjcm0G?=
 =?us-ascii?Q?FzGGXqsxwObz5XUxuJy8w4kvuSxP+qCpfPX+Ku2QKyxEvMOCOfCwfn/ILHWO?=
 =?us-ascii?Q?YSXryqsCdOf34Oht07hIBAhKWSiFsfO7b0hB7w9W/NIafkjHwTCxG4H6+qTa?=
 =?us-ascii?Q?RQe5NMPRIKdSY7YPaL5Nww8WYgBX17g+5nVqr7Pg2YIArUTblTU8LFOH0HT6?=
 =?us-ascii?Q?9KfPF6MSpGx0yiieVW2cdGoHAFU4MvXdLcpHOfehZT5Mtyv2BYad/iNqh3m4?=
 =?us-ascii?Q?ET32AoDn4/eOx6RHZhgXkyKrybGtr+BjjCtwTtHDe7p0C47E3dF/MeKTpcWl?=
 =?us-ascii?Q?KyUnp9OxKwFujfGg/+QGaGsDjeoo/wydZoAMdxrZVIYuVogoXhh7E2CtGdpI?=
 =?us-ascii?Q?ccNNspziJaHDQCG27N/X3yXn7rA4pihfU7fEOJ2BgToUEIYw2QzQAnnwYeOp?=
 =?us-ascii?Q?dWnb024A/j1ipO2oDvaKZCuvUe4VrfSmcIAz7vjD7TCZJNEo579jYGC3ui7a?=
 =?us-ascii?Q?sseI8/3bBPHVmRvd4n9AF2h5vdXjnddkaZU1v1uOBp8bnnBAodv+qMUal8xq?=
 =?us-ascii?Q?yje2/SE6jIEg9EFwfttd+JfWjV87V0v8wcQTOw88yjZAUsqrWVlS0P1hAfKO?=
 =?us-ascii?Q?vcABym5N1iR7zxlSKRFOhZrQOFwZkUCimCSEZSrHt20vXNl+H0ZWeqlT3q9P?=
 =?us-ascii?Q?9rmsKSeJTav8LLXslBrhAr89kn92Cy7Hn8o6QjLpWCmkv8KLc4VMcAiHpCiS?=
 =?us-ascii?Q?5MaWe6keLaGGUZU8XBWAnGBOovjwMYjzt8CY2lYHM6lH9+Q6WHhrgJxyw5UZ?=
 =?us-ascii?Q?aDUC3++CfJOi7yL1HNgowVhZBm3KfpK1pGWArO2F/MACw05PZYXoxq5Od9we?=
 =?us-ascii?Q?cvDZSOzPEaofqKgr42rYX5Ar+pQsXo/LrL5x2c88A8UZXwuyGzV6YR5jdS6W?=
 =?us-ascii?Q?ZwJ8tu6jEANIlr3eXGPcX0LZ3qtdNtZO3uy12YTdxYukXIHVmt0cARpMzJSF?=
 =?us-ascii?Q?ASbBhz5QzH+MBF+6G2lxKXMm6qkJXAqvflfPqEDLgR/L4jnogxRtJeC6jCBi?=
 =?us-ascii?Q?jFPaXZxdfKYc7LCzi3p2Exvg?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e7af999-1abf-440b-09ec-08d9055bc3d5
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2021 06:56:33.7876
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uXC9k1GK0gD63y2lo3tBjMwEHzop4Mg+KBwQyVmS2n55sgceBcF5I+26lpG29UtynKBWuz6musp6ulg9xILYUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4849
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

From: Chen Qi <Qi.Chen@windriver.com>

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 892cf79..01026f0 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -10,7 +10,7 @@ BBFILE_PRIORITY_meta-openssl-one-zero-two-fips =3D "5"
=20
 LAYERVERSION_meta-openssl-one-zero-two-fips =3D "1"
=20
-LAYERSERIES_COMPAT_meta-openssl-one-zero-two-fips =3D "zeus"
+LAYERSERIES_COMPAT_meta-openssl-one-zero-two-fips =3D "hardknott"
=20
 LAYERPATH_meta-openssl-one-zero-two-fips =3D "${LAYERDIR}"
=20
--=20
2.25.1

