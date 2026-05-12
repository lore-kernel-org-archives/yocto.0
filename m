Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A599DCD4F35
	for <webhook@archiver.kernel.org>; Tue, 12 May 2026 16:13:54 +0000 (UTC)
Received: from DU2PR03CU002.outbound.protection.outlook.com (DU2PR03CU002.outbound.protection.outlook.com [52.101.65.45])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.79330.1778602428806025763
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 May 2026 09:13:49 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@cherry.de header.s=selector1 header.b=Xtmxi6vJ;
 spf=pass (domain: cherry.de, ip: 52.101.65.45, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n42zGl3BEx64xlrgaKtejMh3J5HP1WNiwGfyZrswP1LOsig0pKA83ouwYA/PBdAxr8Fw8O1NgQTmCXzPkKzTGmASOvbkrqrnvhjbktOFqswSmLi251r2ZM5xP7dusb/up0DCIh5iH+vn7T4Tr0+KAnMBzZzy23jRbC+82oeSyUwofqS5q9j0hx+4C6lvyZZgwGycj5AiTg4GD6wsR03Z+OM+wP+4oBKJDStxz0G02Sww0yoNOxgDJC1ZmQMOCQa8bUubCqDl+enK10GTwj73cUccu9h6CWNraA8Fqv6O46pp/l0a63Jn6P6m+akFbAFokmkzJ85DqPgm+FTMb9RGew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1uRVHiNEue2blx0r+/qccyKkdGZGJic2D7BfkGYS724=;
 b=Jt7BmJFqTm781TyMmHO/UvPYE3U+4gniu1JB1XZVPNY8i+kE6Dh5QGLin7HLPq8CaVD44KJZraod1kb5Wsrf6VMltakUw3kAcCHCk6NUrOKHU0/u1uM5ne1Uive+k5Hd6FVpqgQ2cYiMpZE4i8ucxYgsG9Fov0v/grHfLP3Trkz637B3hsAva6nZiy0CdoBJuGm7yFLmWumYLwZhvNZa6t1xXfB2gKNr4m7AL0c/QhVspJmU9+v8F/ALp51cytnvX5NFIcYpb3tb+4nI8P30Lcay7/2JtwJnnieUfuTkKFmPrs+I9Cdc55ixJKFjlSUQypRxqV1BFdnEp+b2u/LBVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1uRVHiNEue2blx0r+/qccyKkdGZGJic2D7BfkGYS724=;
 b=Xtmxi6vJcFhSy4w9OEhiMVZLGazgBJHnsfxvXlRw9Z+mc6RFMywbe83U7/7vWugytLmW9wKx6hShtjXSwq5zsN4ZGbBmczEA0o1R6hXLio7wWVfni8zOc2w0LsKjLVNblVt/2aKb79OEo800t1DboZkPeoituP9ylHbBzUwUWIM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from DBBPR04MB7737.eurprd04.prod.outlook.com (2603:10a6:10:1e5::22)
 by GVXPR04MB11691.eurprd04.prod.outlook.com (2603:10a6:150:2e5::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Tue, 12 May
 2026 16:13:43 +0000
Received: from DBBPR04MB7737.eurprd04.prod.outlook.com
 ([fe80::5960:fb4b:9313:2b00]) by DBBPR04MB7737.eurprd04.prod.outlook.com
 ([fe80::5960:fb4b:9313:2b00%3]) with mapi id 15.20.9891.021; Tue, 12 May 2026
 16:13:42 +0000
Message-ID: <3306fb96-8964-4eea-be32-27fd26385bb0@cherry.de>
Date: Tue, 12 May 2026 18:13:41 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Modifying SRC_URI before it is parsed by the fetcher
To: yocto@lists.yoctoproject.org, ext-antti.garding@kempower.com
References: <AS8PR08MB72519491BFB65260C510C104D5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <CANNYZj9d4aGunvF3tQPF9frgNGrxqcntb7AQO+XsBTDBsOejTg@mail.gmail.com>
 <AS8PR08MB7251242FD5DCEDE2DFA4374FD5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <AS8PR08MB7251242FD5DCEDE2DFA4374FD5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: VI1PR07CA0307.eurprd07.prod.outlook.com
 (2603:10a6:800:130::35) To DBBPR04MB7737.eurprd04.prod.outlook.com
 (2603:10a6:10:1e5::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DBBPR04MB7737:EE_|GVXPR04MB11691:EE_
X-MS-Office365-Filtering-Correlation-Id: f33f167e-8a38-4eea-f862-08deb0416fc0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|10070799003|376014|1800799024|18002099003|22082099003|11063799003|56012099003;
X-Microsoft-Antispam-Message-Info: 
	YVgX8XffT7jzbNkyI8/gEh5evDN8lmCjIHrUKrheqkKCOp7oA0TPALU6ol5p9KWTPCPwHtXphSINFteZZsx3XCPqNBiKdLg1Lc6eD2gA/kJz3fExRrvj2pi4hM3++CwAFrfavOYeL+gvn0EjJoPQe4jV5L0KnvYKfDL6707wxUf8G9BOTJWSG4iQRjBI7PpaU4ONpvQnmYtUQu0zfk+7utseuF3hqyfnc2Is+POKMGCRbo9CHQ1b8/pBF7uUN0ew6+WPUt2/qDRvR4fp7oJS2L8wr6WtXeoju/BdFVNKw6u99fmxc39og2wYApErYWo6X4EQkCuZ8J9ZhZ3gLW6iiReiqfouPBpy2+Ml5SYKtI7JVhmivj0yiOInwQdVNYM8U5llnr6WoW4JzUTTDZupNLqLJ9b2d/xT0KIVtAXm+SdqdDLmR+fxtlQEcDpG6TAUaNjd7mipXdvB0OGZN0Mf7YbBFnWM8/ATRrXctBDgllzknFVdESZbp7KupY5bxvEObbCw53X7yvp6JCuaul6w3QUkLx05PzfnuCPLcLNtLG5UsPIkN8MRF6tp4grOrvcJipRy0mluSHproclNsf2n6XFZ6heyYTniVK06xb/RVNIcr54ej8VAnQWdeuVfMfj4mCbCxRIwM0hEFQXYeepOO32DblTAAjbLGCPkLTBjmdzQKeTXYJvzPIchUqwMiKgA
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7737.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(10070799003)(376014)(1800799024)(18002099003)(22082099003)(11063799003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?jp/uf42FJjJhv8yiUwDDOLz3vRM/q5vGLHVy3DoDHnmRX1RY2+QI1oTHMTyi?=
 =?us-ascii?Q?iTKqysxwlufNYs9kzCrJyhpbtn3FVOOcyh0w54HBfuGRoMB7DZtdLOqDmv0N?=
 =?us-ascii?Q?jZbFMmllX3XwSZ82hsBsS0vbNV0wvijgcJLJHmHe2HiBWmwyAszPdktdVq+M?=
 =?us-ascii?Q?jn2XHZZTm88+gv7t/AvYjqpeQe0yrSVxNsAwi3wLqvvJHtJk4jfS6eow9bGy?=
 =?us-ascii?Q?HdffTaNwP7abXDU7NKN8/ntSnrYqwzLu6d/Ye4D2H4P+ciOfi/JqVklHX4sY?=
 =?us-ascii?Q?sQbPgxZN0Gn8kBrMBFTbY1k05BD4vref7WoeiJwCVSBDXLLhTQqKOBK3Yzk8?=
 =?us-ascii?Q?MIBqXfj5RX7oo/3qJXDzV2xuUlHqU9uuRoxe4ESxcGI77HkICg7jlWIO0TRk?=
 =?us-ascii?Q?57tXHoIuT5G7MUfHQJGsj60bsS7FlSYWPVx+6Gv8x2DmfWLPO5WmDY8HxiJB?=
 =?us-ascii?Q?zmUX3PeQ5qxKuiCcz0tYhPBb6utMybY3IxzTBYrzkEMaKOCdu5p4aU/Lv19j?=
 =?us-ascii?Q?FDJ0kYx6dhZEpvyl7/L8elozVYMx79IxlQK48pWcdC0ZGQ13kQMkynkDJbyJ?=
 =?us-ascii?Q?+XNCuWyGgvp2/Bxm2l4JjILQNbU45O0UwNQTN/6Ec+p16LmzVJ0LOoztpu25?=
 =?us-ascii?Q?cIDVilAzhHhtMDo87D97/y+vHnj7gL92HzrALplMo8nm0NvEOdtFIyn8UPPk?=
 =?us-ascii?Q?b6VGmsl/RKE/UWuQVHgNlipbI+KB5xH+D8/x7288sKCMNF/3x244eTssmI1w?=
 =?us-ascii?Q?DFBzcZNq7HklEp9ta4pnWUIvJ5enkZuq9DqoqZTpkddTjVAVeHzG/uLJ5qEx?=
 =?us-ascii?Q?FrqY3DuJ+/wYD+wgn997wqFY5ZaOaexm95QsU8ccAKWc/+1/weB+LDk9zXI1?=
 =?us-ascii?Q?wM2iO1h7oqWzB9Wy+Z5E73+Bmjmaz3y/4ZWNTzdQ6Q4CV6X2jlli0xjf/KeM?=
 =?us-ascii?Q?hXajNmL/fJHlfrIHiTQyfjm6N1knlFhc7CzAbLGKbk9ScMCACKrYcLxVtQhd?=
 =?us-ascii?Q?2oChmOrFXEuLy0xhgH97ojBe2i0R9p12wOYmV4Dd0EibNfgzMcLJpuiIlr4S?=
 =?us-ascii?Q?1EuDiW6b5t0rY5tsCMh1iYINH0BcgfBWYAOBl/fRSZlm8WxMG5JGMtNtndDv?=
 =?us-ascii?Q?FQ2ucK61y7yZSvb+ui3Q1J3/bCTjLknBj36JrIA/44Jix5QQuC0A6Qb8YsUo?=
 =?us-ascii?Q?0dZ8B3eYvsuva1GcAr/ruNULYBOuDSJ1SjTXaGy2AwYjZABsDeLl5gSP6vLI?=
 =?us-ascii?Q?ne002WjrKmCou7B3lrINBf/nbd2HjA1+9Svl7lI4swUsqNMDdr1oa7H6qC65?=
 =?us-ascii?Q?V06CUxrvrxuyu2UpJ6OhtKN+K6HWNar2b9VhWNiiZKUsdpYjYlNSVc2B0AXf?=
 =?us-ascii?Q?cTWGPhhGoO0z83i3cmEdRl1plF9ZE+1XkVsoB8i0toJdYAQCFw52jWNDOPm7?=
 =?us-ascii?Q?vJg2GAX4YOmltXDAJdlE9DiWuiRgRwiLPh/QBmqS9xaIrd0vBCkK7mXkjC+1?=
 =?us-ascii?Q?3b4ICE8GTmcvBz77+y4tZpbf0XyFsOKZgGl19I8lhmDwoqco5fpZRYGn+1kP?=
 =?us-ascii?Q?Nv1En+ndHhn3lJsOPNxOiOwLPtZ1lV13encXnXEsA+DRVxtMId+eVi+JgsDY?=
 =?us-ascii?Q?nl2e4Onde5m9Ovq66IcisSg7FjQQUR6Mj6wVKN4uTUZLjM4Uovd3UHu20aus?=
 =?us-ascii?Q?r0E7WqOB3rj31pAXTz+vG556XLZxD78IS+Kv8KWm4e129iktLIISi87T4pLJ?=
 =?us-ascii?Q?xFvAFWjDEluxZiAB5FyrXwFQZ0OHRFkRl/z1VRVROpqZ1sVmk7DiKcf00WgV?=
X-MS-Exchange-AntiSpam-MessageData-1: u44sQClHFW5uDgXbzDrYIhXYIOldaXUKhrI=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: f33f167e-8a38-4eea-f862-08deb0416fc0
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7737.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2026 16:13:42.9044
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V9bwZ9UH71v4khfhx8t9YViQ7WvWoRy/0l94Sli+rVp1/C9p27KYvp5KG52xs6gD8pwawmUD3v4gYnGuM87N+rDtDHaWq6svvpzXL6CWJbk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB11691
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 May 2026 16:13:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66542

Hi Antti,

On 5/12/26 6:05 PM, EXT-Antti G=C3=A4rding via lists.yoctoproject.org wrote=
:
> You don't often get email from ext-antti.garding=3Dkempower.com@lists.yoc=
toproject.org. Learn why this is important<https://aka.ms/LearnAboutSenderI=
dentification>
>> Please explain the problem first, before presenting the various
> solution attempts. What do you need to modify in SRC_URI and why?
> Maybe there's a completely different approach to the actual issue.
>=20
> I want to add a tag parameter to one of the URIs under certain conditions=
 so that bitbake can check that the commit matching the rev parameter has t=
hat tag. The tag check is already there in bitbake.
>=20

Which conditions?

The following pseudocode could help (untested).

def src_uri_tag(d):
     if conditions:
         return ';tag=3D' + mytag
     return ''

SRC_URI_TAG =3D "${@src_uri_tag(d)}"

SRC_URI =3D "git://someforge.co/myrepo.git;branch=3Dmain${SRC_URI_TAG}"

Cheers,
Quentin

