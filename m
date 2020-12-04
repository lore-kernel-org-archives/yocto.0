Received: from NAM12-DM6-obe.outbound.protection.outlook.com (NAM12-DM6-obe.outbound.protection.outlook.com [40.107.243.56])
 by mx.groups.io with SMTP id smtpd.web10.18632.1607106092867880377
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Dec 2020 10:21:33 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=evZQaE3B;
 spf=pass (domain: windriver.com, ip: 40.107.243.56, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DmMKd+92AEX3As5xYAqTM490gnb7vdJBxanTvWpfla85Kbko4pTjWCGEa2YlAmZHzU1XqbgdA7xOkwmwyHz07UVWl8SJx/gk7ygbo05Al3YDFYT8sgVXakScqBX2zKO3vLXPmFtqiGxCo50EBNWcV1hRESNJF6BpU0QHRZzpaRKlgElIrshxcWO9NhCRy1DSOA7/026a+cGk6jp5w0HzJV2KirKFcTlT+KIIQ/W6NXmd5w8pZlQVRU0BIdG4qwhtELxAi4eAAQa21UdWhjK7G13ZjmdKw4g9SUjWV2NQFqvZ2i/oYt5q2VtK1QeFBxNeJqj6Da/d4oqCT+sXWfUH3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6/WeedIzt3F7aClu+0tePGQAIpndD5MDJidj6p4lddQ=;
 b=Fd2qvDjuK3btJXG2LwZOwH3wabMv+5NhYg+PoPmwW4D3DAwnydFWbSz3lE3sOdFADxTRlD2r9xDpvgM3+TM0dCbkmXwmMzVO5W2kttTAnhcq0/6uv4bXGctqQ982zJgZQREbxm1Z2jJhDQ7lc9FM7dang6OQL1myquFZJNi/sKnrkAxOE+T3FHBx1Q1kDuqeRTIe024+g6eFcc8nW+i72KTc/VStnP004a0u0+fQWQPX0i7uS/HXLhz8N893GGBYvaofCz7FxN0FfxecPC3Ux4+dvg285r++df39GlOR355ft+nUUOO2VXmPSYqe3wTnyZQtXTyDK9Ot78ZDev/HoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6/WeedIzt3F7aClu+0tePGQAIpndD5MDJidj6p4lddQ=;
 b=evZQaE3BgQKeOo0x98aSNZ4nPdzu+UZ3ZlSj6WfYQfIvvOFzDOYDq49F/ZwjDkqKGUCWj3gRHR/lROReRbZSNRfktuZI3j97MFivqTX9xUNnwX9banBKeneaViri2RexqTnnONSDbQ5hDwqyht4jd6iq/KxNDrGQp98LYJJ/D9Y=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB4346.namprd11.prod.outlook.com (2603:10b6:5:1dd::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.17; Fri, 4 Dec
 2020 18:21:31 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::7dda:eef1:5113:c588]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::7dda:eef1:5113:c588%6]) with mapi id 15.20.3632.017; Fri, 4 Dec 2020
 18:21:30 +0000
Subject: Re: [yocto] hostapd_free_hapd_data: Interface wlan0 wasn't started #dunfell #linux #kernel
To: vijayrakeshmunganda@gmail.com, yocto@lists.yoctoproject.org
References: <EmR9.1606810164534751899.iJoI@lists.yoctoproject.org>
 <31782.1606978969296836759@lists.yoctoproject.org>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <8e006718-c314-4df4-9809-84099942f4b1@windriver.com>
Date: Fri, 4 Dec 2020 13:21:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <31782.1606978969296836759@lists.yoctoproject.org>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BYAPR03CA0029.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::42) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BYAPR03CA0029.namprd03.prod.outlook.com (2603:10b6:a02:a8::42) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.17 via Frontend Transport; Fri, 4 Dec 2020 18:21:29 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2d2b8c5e-3cb0-4df6-ca57-08d898816c14
X-MS-TrafficTypeDiagnostic: DM6PR11MB4346:
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB4346B5F797442D403BC763ECF8F10@DM6PR11MB4346.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	1mjj216GbWdD9L+SmWMuscjMgpb78sp5dj3A2w/fXU5QBqwpY7oaHoc9wZ+YZ1Y3Pp+ExP8+ZyKJTrQUVQRbtvdxA0vfJj9fPH+cu+JU1gbHbusQ9hPJ8qA0mbi3NgFn0Sr2SyO/+Tg5f0YGD849kUahosjvqWzojIP19TTeOkIJdQ4/Id/v29wGpGXdwt18NpTIkgxnN/BEL5YAceZ8RVpU1FEEYVQD3KEYfRtsdbwohfRY/y1/LVayYKHlvH2SYU9/fawtJAK0A1KdlkQYuYkZ0H7fzQuBDNaDt+g1DnBAj3soqD3ttRMob94XdJuSSWzp/vBkqYCkIpgqOOPSRJYlXWILT7D9/Re2vRawKuoEMb9NdQlb3zfVk3Ncz/2InU6Jhq4HC2VvW0YJbS8IB9NJs3QeUBcyB/J9vcBwx2jrk8AEmmstzjrVyv2zqlAW3MsoRQKvEtvIrQo77F3TPsx0M0fEZjNaa2nxrZxIzL9AGcJ1j5UIUZ5PrnnEbWVm
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(376002)(39850400004)(136003)(366004)(66946007)(53546011)(8936002)(2616005)(83380400001)(86362001)(36756003)(5660300002)(31696002)(2906002)(8676002)(26005)(6486002)(956004)(16576012)(31686004)(478600001)(66556008)(186003)(66476007)(52116002)(966005)(16526019)(316002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?Rk4Xg09xvzGaKZzVeMxPZbOVnegq22EdAbiLAzjrmZRxnYN7T8xA8K6bj+sT?=
 =?us-ascii?Q?AKcBSgjOdwVqkbzgWGB/7sIA/QdjcHiFtCecvIERFCZ6LZkLzDPf7bOiPhzJ?=
 =?us-ascii?Q?1zdUZPS/eB9r1qfLWiq3HMaGVUWy5Ur9PyVChXCPKqBHk/bCKCPWhPCidUnF?=
 =?us-ascii?Q?7Pxnh+l2sKWdTe2b3Dz1SmJOGE7qNjSb99FZihz8Qmxwcpmz77OcHulpeGhM?=
 =?us-ascii?Q?9sS94uWE8h3ti08JmV3M6SrGGGtUf7Ojz6qhSSpwJLCnS0VySR/fTXPIbGG5?=
 =?us-ascii?Q?MYRny6OvcmgMOshsQuQ5A2ouNqNUHor4u+v8uaEkZN1PeuR476dI07HfRZih?=
 =?us-ascii?Q?i4XEmHmaDAf/2JmLG2zvHUP97OYXhi+cEHt4Z9f3Bi/flA0cZjzqQK2ZxV0F?=
 =?us-ascii?Q?h1uyZ6wD36r/yUv8jCW2mf4pVIbIZeSriV1qjw1d0MIHILb9kPNlUL1Xn9H8?=
 =?us-ascii?Q?CRBAUnrVxy06Q+E/O29EzeXx0Ey6GAXhQjWkdBUzct5JG1vvIpcURPGa5HDo?=
 =?us-ascii?Q?U7boER8PUGkdenKZkI2a6vr1G9yHCKZqxNHKTq1iHegHVXPUF7anFxTrDQnj?=
 =?us-ascii?Q?8ljEY6ojrjQAI/iZ1YGmIz0TeM963Mj8FWG5ftD6gSSoJnOsIOWLG5UboE6w?=
 =?us-ascii?Q?1BqD33yQ5Pm0yzjp5qLje7+t3gFRwsyx39tTL2DfsOIAp9e3hXO3Nj4WFBw2?=
 =?us-ascii?Q?HlEmLLIGtalzrNmIBMCE9Svh6YMhBhaJzX0MJrNcV/NLHpHu+j0wpOU0tboo?=
 =?us-ascii?Q?lW0rD49WEtpsDBCnI+nlOMYKP9fPeKyE2TjkdtZ19oLjfoqQBUoLaWc0cLIP?=
 =?us-ascii?Q?Gum4KtDh1SHekHxgkNvxiYmU1fJZ1AvOjb2MXqws3UkE8siHN5Xwlg0SePN+?=
 =?us-ascii?Q?A1SgnT4Gxew+4pUDYLzyOwv1aUhfWfr16DR0m87YB0P+iqz6XzlHx3W8P23i?=
 =?us-ascii?Q?oNGEPCMiknM1EovaW3XUYR2TcpYYTZnbX4fqprmR8aSND76oghaim9iLtRmN?=
 =?us-ascii?Q?7bRX?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d2b8c5e-3cb0-4df6-ca57-08d898816c14
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2020 18:21:30.7448
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bS9VfpDRmAzLfpQDmv5YhJBq9VN+VD/ixC+au/c0FeQ8GkyfjKX+aPyN+fYGD3Bhr0eBoFxJGh2ChsctBi8f+ht8gTZQwweQ5iELXLXG344=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4346
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

On 2020-12-03 2:02 a.m., vijayrakeshmunganda@gmail.com wrote:
> Hi All,
>=20
> Can anyone please help me this issue.

Hi VR,

What version/release of yocto (oe-core, bitbake, ...) are you using?
What image are you building and what did you add to your local.conf ?
What is your target system and who provided the BSP?

If it's an open source bsp layer or you can reproduce the issue using
a layer such as meta-intel or meta-raspberrypi then someone
might be able to help. Otherwise you'll have to contact the BSP vendor.

If you can reproduce the issue with poky, and no one on the list
helps out, then you could open a defect in the YP Bugzilla.

https://wiki.yoctoproject.org/wiki/Bug_reporting_and_Information_levels

Good luck,
../Randy

>=20
> Thanks &=C2=A0 Regards,
> VR
>=20
>=20
>=20
>=20


--=20
# Randy MacLeod
# Wind River Linux
