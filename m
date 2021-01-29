Received: from NAM11-CO1-obe.outbound.protection.outlook.com (NAM11-CO1-obe.outbound.protection.outlook.com [40.107.220.41])
 by mx.groups.io with SMTP id smtpd.web09.1544.1611951116471968553
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Jan 2021 12:11:57 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=W8bwq5St;
 spf=pass (domain: windriver.com, ip: 40.107.220.41, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WXycWs7QgWilI3E0GbxiQzOXweSes2CAWmHR6VXhbzYkhiN5Cp0T2BR0y48Bt0c+++gyqPhWEbrNSkvGQi9H36Q2G+00s/3hageAiNk5QggvEc6mTcLln/Lma44t/vLk4Dv/Fg6dO4YmGQ2seIrZ57JfgT0uoKIhS8tocLRd/IaOImLklyKRzSjP03faj7RSa29kHY28xNbxfb/mBoa7h3Ticv5p+1Plj0wJoMM4H2Yu57ZeqGoaO7aGSAl8ib3fLdMdaIicMGsik7BhgP1lCdF0ToKY5ovRq1PaQAHJ2yGBd4rV5MqFjOTYjCPD1FAEDZW3li16ALQfTUsRUrxjsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OkkxTh90+UBJk2Wt1jVgO1G3nJvlt6ItxZrhd7KHsHg=;
 b=nreBwKXzv1lBTQ1sNf0d0LlYRAFy655LyvU2Q0lpGSIDdqfP3g/8SM/VxGKFNrUKuK6ccSMbN2EbSq27i5SCZWHlOGBAaokWOd8VFsNJUMzz9RYl3LwfSr9CdMKfsNfiiCM+1d6QCBQlGIqL/WVS+xu9sK8lb+KnsdfwAcYTrRWxyuSfWczYO9T6oE6+UQIvjl2P+XTFGfQdDqNBbg9Q2FEd0PFomu/4RNXswFTLlvSU50JlzkZrmhi9ck4J/UfQar57chgWyFVsuE8Q7DcfyB3M6cOcOy/9RbxW8wvKpiz/itvsQbE1MJCT6PHJU2HRjqiPCUSzYJ31sK0IfLv/yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OkkxTh90+UBJk2Wt1jVgO1G3nJvlt6ItxZrhd7KHsHg=;
 b=W8bwq5SttAtvNy2x1tXbSlSL4HTqbidEf54aqAWRZ4q/knXU5XtpJOCe6rjOHcrqQPSP+vehDJROKHvBtiJ1IQI9TOZ2sCNMC1NScj5Hu2qiifKxp8NiW5qQLVh5OIqKLjy+PZe58mPWGa6ew3g5iWZXGmkJHkQseWgvZT1bW50=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB2537.namprd11.prod.outlook.com (2603:10b6:5:cd::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.19; Fri, 29 Jan
 2021 20:11:55 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8e2:471a:7b63:1a0e]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8e2:471a:7b63:1a0e%7]) with mapi id 15.20.3784.017; Fri, 29 Jan 2021
 20:11:55 +0000
Subject: Re: [yocto] #yocto #gstreamer #gstreamer1.0-plugins-bad #aom #av1
To: safouane maaloul <maaloulsafouane@gmail.com>, yocto@lists.yoctoproject.org
References: <zDWc.1609749813849720573.0eLH@lists.yoctoproject.org>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <5bcf62f6-7d4b-c043-fae4-60c02bb9acd6@windriver.com>
Date: Fri, 29 Jan 2021 15:11:51 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
In-Reply-To: <zDWc.1609749813849720573.0eLH@lists.yoctoproject.org>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: SJ0PR05CA0125.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::10) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by SJ0PR05CA0125.namprd05.prod.outlook.com (2603:10b6:a03:33d::10) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.8 via Frontend Transport; Fri, 29 Jan 2021 20:11:54 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 917763f2-646e-4dc9-8dc0-08d8c4921fb6
X-MS-TrafficTypeDiagnostic: DM6PR11MB2537:
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB25375A84716050BA3E7EA675F8B99@DM6PR11MB2537.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	nwZtFQf4aeEBaQA9AK3/Uln4TjAXxj1A7FNdZN5mwyYeNHUbC5p2dKhbgHLX6qui8aggUa1bH0Na5EDVreN/R/t+Mf5LUX4wPZJr6/4q060+HKJeWuH1clsw/cxoOQ2AilH4NO6QlYn3ij9qM3Ai1VyA9sIKn1NMqF6CZSSWB/KhRj1lOP/HJaRcfK55FE6SOX2pVbvvrpUASciHTgATv7Tff0TLQYb33Cqa68saESoDT2aaMvWyemD0muqwX9A7di9K36Ht/wJgGqw6HONyTL5o/u5VheIuaNbTc9e2+5xNrf3GlUk7hePq4m1i9/SnS4bKXA6hBzD7uXy9VeYcctOCenOdYFzAjqeXEP63TAY6SMh8jhSJPwZ72KrGRYHgkT423J+LwZCkLAG5tGqFkZUI4zUBIs+Xc7XHEhieR0xLvGVcV8eVSnDUuVfR9+ywKcCraG9C1bHxvTDLchnrgGrSvtwZR8hidaDrZXrTUpVe1hBiOVkp8jXEOyJbJHO0b01RO40aG6DHNGlKnz8uDP7gg+GaQKw8MBc0y6++AqoXvoJ/MBeOnA3gTwtYitkrMU4/JZIlF0Ep/lr4BYApcj8ve3ta6+EnCDJ9mKUVjfeBFW3m7CNzVQzaFnPD9ZJHydHBrwX6CAuMJ0GNV4gk5m6ltCwYlw4ooxU1abh7nGYYgwq0QGoVfInrPG4UNvSR
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39850400004)(366004)(396003)(346002)(136003)(66556008)(2906002)(478600001)(5660300002)(66476007)(31686004)(36756003)(6666004)(31696002)(66946007)(86362001)(83380400001)(53546011)(16526019)(84040400003)(8936002)(966005)(956004)(52116002)(316002)(26005)(2616005)(6486002)(186003)(8676002)(16576012)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?n2d2M5BKMrAU8/TqGaQ1jfb8O3pozGTfBhJF//Mt77QHezp/CKmHZ2XTiAnz?=
 =?us-ascii?Q?RxO7zBnbAsLmhC2X8ruhoMLFUsyqqzRixpRhI3PCBcK3+rZwYsfkvdr222RY?=
 =?us-ascii?Q?AL/CzWmZ73UkZ2kAZE71ldIo+pJZzbJ4DOnwwus+SY2D7HaVzhjBa7W1CFo8?=
 =?us-ascii?Q?LPETqqosjyoersxnj+kD6lgAGTGUceLEXpVoxRf0fIuwRD7D0w6PzlHa9B15?=
 =?us-ascii?Q?kBsr9O4CQ02DZTWgILxv62ewtLGqUMRvwectN77JNpDAnO9Dkpu4dFiZX2Xh?=
 =?us-ascii?Q?EC0TgHZduWoY5tpzfp3PINWk80j4kSC6SpNPTH/EX/VR2JU1+WpyPrSAGTUu?=
 =?us-ascii?Q?8XDe5RaPuFrwo6yWXGDgYqm2b33772QIi8Xn2MfOrRUuSXKVb49n46aNw4fH?=
 =?us-ascii?Q?xjFHKgQEHHDK7ceZuZriusF4GJWD+KIs/YD2HbDn0MfiFOsPnwe++nhmi5K5?=
 =?us-ascii?Q?QY5//b+z5+hoCNTtMiitk+iVZjt43PSwmhHwlVmE7Kg29Afshc9A11DWWG1R?=
 =?us-ascii?Q?RwDC3a+0EI6gLsN0CUWlXGRJw53nwXDVfcVOGQ873XBr+X3iaEQEbz1NMD8H?=
 =?us-ascii?Q?w/LlXffCAKo8OnExcGTAVmaS5PgmMGkmrQvRoXrGzCNhtDju1AQ60pegUEig?=
 =?us-ascii?Q?OKZUCeVsd+0EfnVkhfhq3Tx+SJWij3KUeWih9GynyAsybRFUhnA2jSi/c1pY?=
 =?us-ascii?Q?rIK/AzSqcUlmxaw+8eNMCW5h3mAfWwDv+V0kOpgPn4O0n23ntJuXhM0iO++C?=
 =?us-ascii?Q?ZTiQELg0HXdYAhnV10Hq5fAnuAwHY2RjeGorvRIQZl7sh7rCRE9vLEbBmw2c?=
 =?us-ascii?Q?gHVI4qJ9BCiHGXvGucYZ+Br7/KM7se2vvL2JnoZ4K8MefqIlEC0eH+IJJKwg?=
 =?us-ascii?Q?F6wVTvfpYLNZHBC1X/KRcN+ILHobG4uT/qFy/M0aDILvsRCK4MDNmTmzRzg1?=
 =?us-ascii?Q?ZN3d0WsaDQ2iB7GTAnX3roGyxq4yNsBbuGMO+YIFiWXL9g9QA2wXStB6gqG2?=
 =?us-ascii?Q?8OnuwmhrGaXBP3QqGck/J0xgGDKsTl5NU283u/of8/spO20AE51oXGtZ5YGm?=
 =?us-ascii?Q?/GsPzhWk?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 917763f2-646e-4dc9-8dc0-08d8c4921fb6
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2021 20:11:55.1290
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x/0fdwBKS3v87Nhd9d/Oj10FlqSVcIeOSKy3f9M1jCiTtmTW9WaPTQXP978hyZDdGakwr8ozS6jsFQ8LVJj9dDe2jVvHW/Jd/x7WprDNp7E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2537
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

On 2021-01-04 3:43 a.m., safouane maaloul wrote:
> Bonjour, j'essaye d'ajouter le aom plugin au niveau de la=20
> gstreamer1.0-plugins-bad. J'ai bascul=C3=A9 sur gatesgarth=C2=A0version.=
 Je=20
> commence =C3=A0 faire lebuild.=C2=A0J'avais un probl=C3=A8me de lisence.=
=
=C2=A0Je l'ai=20
> r=C3=A9solu. Et maintenant j'ai un probl=C3=A8me "no such file or direct=
ory=20
> automake-native yocto" et j'arrive pas =C3=A0 la r=C3=A9soudre ? Est-ce =
que vous=20
> pouvez m'aider ? y a t il quelqu'un qui a essay=C3=A9 d'ajouter av1 code=
c=20
> (aom plugins/gstreamer1.0-plugins-bad).
>=20
> Cordialement,
>=20
> Safouane.Maaloul

Bonjour Safouane.Maaloul,

Did you figure this out?

The Yocto email list is >99.99% English so please consider translating
before posting:

Google translate says:

 > Hello, I'm trying to add the aom plugin to the level of the
 > gstreamer1.0-plugins-bad. I switched to gatesgarth version. I start to
 > do a build. I had a license problem. I solved it. And now I have a "no
 > such file or directory automake-native yocto" problem and I can't
 > solve it? Can you help me ? has anyone tried adding av1 codec (aom
 > plugins / gstreamer1.0-plugins-bad).

I don't use gstreamer but if you answer the following questions,
you may get an answer:

What version of oe-core/poky are you using?
What's the top level commit id?
What image are you using and what changes have you made
to your local.conf file?

If you are only using oe-core or poky and have a reproducible
problem and no one helps, you can open a defect as decribed here:
=20
http://docs.yoctoproject.org/dev-manual/common-tasks.html#submitting-a-def=
ect-against-the-yocto-project

../Randy

>=20
>=20
>=20
>=20
>=20


--=20
# Randy MacLeod
# Wind River Linux
