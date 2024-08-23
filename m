Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E961DC531DC
	for <webhook@archiver.kernel.org>; Fri, 23 Aug 2024 09:43:31 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.69])
 by mx.groups.io with SMTP id smtpd.web11.12594.1724406208518616423
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Aug 2024 02:43:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=ID8c8y+J;
 spf=pass (domain: cherry.de, ip: 40.107.20.69, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Khoe0JM3D8/YPyWSi+JJrvqJPzesBJY3x3O4CruDMb8QYmHjHwACNtWdvaY+F6sITWt9w+LFs1d3KRtj1xvqoDTzsxVwFpJSoMgocyRIlHlGcRYKgbjqy6IssbJjYldEN4DQferYPsrTE7LKkRZ0AwXTD6CZes8CAJxZgL+1DsUy9mPwjd2HmaudkaNR7J3e7yFv+NgvBjkgpWfh+dDXIs/Lw+6MP5Q5dcnHKOQvS9bVLXu/TUkFcuHLeN13CdyXuQUgMFwKhOjONHrcaXpn7A+iWqFP9iUoCYqpMPAbPsYaFJ0wL4/p+6NBrdKyXclEFMR0sfdIdtnKbDdp90jKFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9Thy3p+2bWKDw7iX69uuUVQ+dBSpc/wtkofwCqNBT1c=;
 b=bPCd8rXM/ufCJPQ3vPdy5QyOhVK8BZdRL1eHqOMUpbWENcggFcAvRc2ClXsbMXrraiAysUMZ/hkr+MDC4o1bD1z2vh79jj3hGYN5mFm4lsodzdug5AJSmJmgN/N0qKNXAxffA0TNx6RKCuMeUyenOovhAq46VY8iKpgGQbArC7meNnBzO9tH1NAd5pYFT6iXlNk0z2btv3I80LBAG0u2Z21itZL4pen6cHcemJjOTWYc/8wc92Sr1mnh4U3oG1KYTpggAihObICvJRaWYfUbIyK5pf979M4nIZYiaNTumMLhmm5rpENVIfC1lj1P0E/MeZUxG3W0heGTlDdUy1e+GQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9Thy3p+2bWKDw7iX69uuUVQ+dBSpc/wtkofwCqNBT1c=;
 b=ID8c8y+JkG8QkAVNiByOSxIwp+cAqVYs2qQn5adXfDVwpYPy6Au5Qxnw5yBBkEMxeSiPcc0gZlCLrx2ufLVDCoe0Zd7isJDGjWuseJjQ/nR9W5X3+chXizz0kUuhN5zlGq2enFO5FhOQ67QgkFtCnoO5mKATK4kP8rYo25ed+JA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by AS1PR04MB9405.eurprd04.prod.outlook.com (2603:10a6:20b:4db::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.25; Fri, 23 Aug
 2024 09:43:25 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%5]) with mapi id 15.20.7875.019; Fri, 23 Aug 2024
 09:43:24 +0000
Message-ID: <da089619-68d0-4254-96eb-7a8f676c2c66@cherry.de>
Date: Fri, 23 Aug 2024 11:43:23 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [yocto-autobuilder2] [PATCH] schedulers: Drop nanbield
To: yocto@lists.yoctoproject.org, richard.purdie@linuxfoundation.org
References: <20240823092630.797925-1-richard.purdie@linuxfoundation.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <20240823092630.797925-1-richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE1P281CA0469.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:7f::14) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|AS1PR04MB9405:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c33a012-315b-4754-8cc1-08dcc3580884
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?R090Zkd4ZUZVenpuRVB2aHlFNVJqTWJCUjQ5a2JON3QxYkNRTDhnaW9RYTlB?=
 =?utf-8?B?ZUgrZDhrV2NiRGlNTDhhMUZCbmJ3NllOYk91Q1N4SEttajhBSjVFbDBvVGkz?=
 =?utf-8?B?UGpFNHA3UVZHZTFTVVhETGpvVDJLek85TitBZlZzZ2lTL21vZXd3M2RFTWZ1?=
 =?utf-8?B?OWxmYkZpMXc0RG45RjFCaHFGR3NiaDZxNkhPMVNVY0haZ1ZEMkk0Vll1bDVF?=
 =?utf-8?B?bjJ4dENvQ2NGazVEU29vcVVOWjExc1V5bE5vRTh5MW1SOG9lKzNBUHg1dlBM?=
 =?utf-8?B?cW5ldzBwOEZidzRQVWRqclVVbERLSHVTQ0k2cEdLbTZ3bTM4L1VOUmQyYTJu?=
 =?utf-8?B?NFhPcUxlYzh1OEY4YjRWT2E0azRMMGtkNVdHK2NtZXJINnBicGwwbmhLai9M?=
 =?utf-8?B?SmhtUVEzblNSL2lZbm1CNzFXL2t1eTk5aDIxakZrZXY2R1BveGFWaFBzK0ZK?=
 =?utf-8?B?RXdnZDBYTzd3VjZkeXZBRi9DUzZBM1F6a1QvbnVkVTMrWndYd2M4ZTIzOEl6?=
 =?utf-8?B?UTZ1QmF3WkdlSHFBcUNJVk1XemFMNTdtNXZYZklxYldGZUhZRjFwUW1KV1BI?=
 =?utf-8?B?Y01SNGlsUFozNXNncE85UW9RSEdPVlA1NzBScHpKMFF3czRRUTJIN29HVmFI?=
 =?utf-8?B?Y0NrbXFjSkVJcjhKNU0rSEtVejlUdGtaVzVBYnRVV1QrMWYwd3FaalAyWlRK?=
 =?utf-8?B?a3hPSVc4QWJkK2wrbWM2M0ttSTV3NkNjcnJDU1NzalI5NXVJYzlVWnhrRURw?=
 =?utf-8?B?S3FLK25GdTFjdVVMWFMzNE5INDFPSXlxL2RaTC9GY1FtcDNiYnRhSjl0SnEr?=
 =?utf-8?B?RDJkRUhWSTRkNWNiZDV5bWY2bFBSaGpYSTRWdUowTEtNYWVPcVpvZGJHcXQ3?=
 =?utf-8?B?UmpGc2NuOWVEL0pWQVE4NFJUa0EwYjA3cjFoVkdVQjZYZHMzbHpOQ2FKZ2ww?=
 =?utf-8?B?TWVtWkNTTE5Ma3JlR2VaT2lseGZSWlBTV0hERFQrRFVrTkdibXp4VGxDbHFr?=
 =?utf-8?B?N2FmZmJ1VW9tWWZFZ2wyeDdEOExqVG9ndmJPRHRMakdvY01vaCtQakZlcml5?=
 =?utf-8?B?S3NsVU9DYVM2Nm5pYUZkQTUxakZSWk9KK29NVStvQkxEYko0aFU3eDVQNWVL?=
 =?utf-8?B?RWhYQng3VzJsY3huV0plNGJ5blo2SWNBWUdac2FoVHdlYk1NaS9CR3ZFVXkx?=
 =?utf-8?B?NFc3U0l1UjhvOVhwN1RDK2ZWemM2elNwU0QvSjB0ampFZnRTclc1LzJHWmdX?=
 =?utf-8?B?aE9pak8zTys5eWtESHg0eElGdUs2bFlqSFc2d3UrcnlIQmZieDdQNU9VU1BJ?=
 =?utf-8?B?S1JJZGFEVW80VHBjUWNHWjRQekd6QmJXVjQ3dDg0NXU0bVg4UDA4eXhLNmxr?=
 =?utf-8?B?c3FOcDBMRGkrVTQ2bUNDYTBxa3JxcndaZTJqYW1IdVB2dnZLZm1kdEdIYmhk?=
 =?utf-8?B?L3RzbVdXL3c1MTcwbTRuVFlnOTZxbkVwQWU4SnluVGhnUTF1ZUM2QUxuVlAx?=
 =?utf-8?B?aFFiYnphMFlHN3ZrZ3RpbXdkS0gwcnFYRFVtNEtubVpzamlQbnovZ2dxVWk3?=
 =?utf-8?B?QkJXNCtMd0VFb2RMZkYrV0dkeHQ1a1F1N3dnTkxDNEJVbzczMFJLY29JR3hx?=
 =?utf-8?B?U1VQMHJObnVuNDBhNzd2T2h0aytaaEpGUnNqMkFaNmw2Z2YwZ1lKVHpFWXdT?=
 =?utf-8?B?TittbmlXYjhKSEtjeW91MDUzMjZWUyt5c09tdkY4MC9TUk1uZjREQVFraU9M?=
 =?utf-8?B?WVloaFBqMHJXUHE3WEpjcGFIUlZ0anBMTVFrbjhHVEdCRnpKa0xZQTVPcVJo?=
 =?utf-8?B?cmErSVFWdDFLbXkzbjNJZz09?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UXB2RVZCUnVoRDZ0RndkSzQ1UDIwaTlaRS93OVQ2bncxN281aG9DL0pLQjNH?=
 =?utf-8?B?QUZQMXBsUHZCSXFoOTdrQUd6SXdDdzBGVVV5cGtMb3V6dFhxWm1ZVTNqUG9i?=
 =?utf-8?B?ZzhKQXZ2cGwrYTZsUXRWTEVzQTF6M3FEVDV2bGxPOE5KM2lhUFByaThCU010?=
 =?utf-8?B?cGZYMWRFUkJkTE4veC82L0tDMFZYekR0RzZNT1BSNkFpL09BNHhvN1o4QkNl?=
 =?utf-8?B?eU9vUm4wYUJTQklSS0VvTVViY2J2aG92Vmg5QzZNTG9RWElnQ0Q0VFVmbEZS?=
 =?utf-8?B?NmVhL0V2TXhDUHNmQUVPRjYwUGIwTU42Qk5TQ2xkcVBxeEIveDJSQ1pXS21l?=
 =?utf-8?B?WmozY2o0Y1RPdGUvMFNGVDlQRnI3S2R2bndGZjQ3aWtYdjV5WUIvM3RHSDdu?=
 =?utf-8?B?NEN0WkN0OVZMSXZxS2kzZk95dTROaU5MS0ZOdzgrdnRDbDNnWlFzVEhzNmVn?=
 =?utf-8?B?SlpUSWpjREo2SkxQKzY0cjNwV0cxNUJ0eGZaZ0FJb0F6ZWhQdGtYanRvU2Q5?=
 =?utf-8?B?UWUyQUdxdUp4WUJ5V0hYeTk1b2ZkVHZhM3VKcGtoWXpsRSszNGhxOFFoSW1y?=
 =?utf-8?B?NW1vZjZjSWVTem5uWTlWNlpYK1Z1T2FHa1ZwaXZqYVhOa2RMcGV1MDFDTEM1?=
 =?utf-8?B?M1F3SmZldElES2IxcVdxL0VtN25lNmJPRkZ5ZW5FdzBNZUh2c3haQWdyUXBh?=
 =?utf-8?B?T0ZManpuWmE2ZmFJeGhyNVBJSGJWVncyaWsvOWQ0YXUwT3d0MlVpT3BuSFFz?=
 =?utf-8?B?NHN4TVZQMzNYaDBBb1NIQVl3RHYvdU1EVHdOR1lnaUZURlNMWlRydGdwcGdn?=
 =?utf-8?B?VWIzU1lxcW9KTjZKRnBOc3ZveDNnSzFuY0l2V2dRY1I1SDk4ck9GSGg4RUs1?=
 =?utf-8?B?NXpuSjVOMFN2cExValRqUGdWRWtMOVNDMjlHNmdVSlRrVEZrbmVxQWViZGk2?=
 =?utf-8?B?eEVIaWtOL0tLRjhFQUZlMjZ0S2o5YXR6RjFtU1hoQ0lTSm9XTnQ0SW1XNjNk?=
 =?utf-8?B?ZTRrdmlVQ3FJZ0xueG9vNUFIRExUTlZFK1FZMzVObFp1WkwxeG9xTmdKcUph?=
 =?utf-8?B?SDJJQ3RwRGsydUJINVEvcWgzM085UE1oL20wcWQrdnlqK0Z2TU82T2tCWGJS?=
 =?utf-8?B?cURvT1U4cUNMcmZPVlU3MG9RdUJuczR2UWlZdEdxMXFxMm94ZU5uN205VEFl?=
 =?utf-8?B?eUJkbCt2cjdsbjBMQUJCZysxdEllSFk3L2Rac29vWmRmdjZIZ2lLMUZucVZN?=
 =?utf-8?B?Nk1FeTI4Y2NQck9TVXpSRGVJNHdFZVR0NVRNTnh0NjAzWmc1STU1OU5BMkxS?=
 =?utf-8?B?YTFKTzNaL2wrMnN3T3h2N3FXdXRYU3JabDM3bHI4b1JmS0dCY2hrNkN0TE9Z?=
 =?utf-8?B?MTJwZjh3NUFyMW5kYlBWdk1KNlF3NVl1Q3JNNjJBN0NxQWZ1bEpMeldMRDF1?=
 =?utf-8?B?bTVGTGM3T0Z0Z3BzSUp4bVh6RnFkLzhFS0Z5SGlGQUlKaEFPTHVKd2lUc1pn?=
 =?utf-8?B?bGpYbHkrRHd0TVZFOGVYWEZ5MFJmSFRKcmJhWkkrbkg5YmRxRzQrRitFSjFX?=
 =?utf-8?B?cnRKV3NydHFGcU5QUHVFUXJXWkxITmNRWC9UK001RkczRGNmdktVMXJFdm1Z?=
 =?utf-8?B?TVhPcENEK3VOOFF6dDM0Y2tGb2U4OHNaaVdpamhrNnpITExGSldPbmlyL2E2?=
 =?utf-8?B?Q2kzeVZiaVJFSE9jMEpJRjhXY1hTaG5WY1dJREFZRk1TOFUwelJzNEJ0VGZr?=
 =?utf-8?B?Y2RKWVlrN0h6TGlTUWNJUVV4ek1zcEVFRzNJU0RkaVBKNi9Pcm1XbzAvTmx3?=
 =?utf-8?B?RFRKWisycXBLZHR6SlFFVFFBK2lrNjhXUUtqanFhdkxHaTMxcjdJbDVFbEpl?=
 =?utf-8?B?Vnp2T0dQQkU3cDFDcGd4NkJlRWZibG81U2Ruby9kMnU1ZVc1a1pBbWdmUFgr?=
 =?utf-8?B?TFNzVVcyM3JzWlQxalVWaXlLTGlSOTlrWW41U3lZMEdJL0dzV3RBR3RLOTJX?=
 =?utf-8?B?ci96YnJmTnFHVEttT09LRWgvMWJnY1h4QVVjUFVreGo1RWttc0dpYmhVelBy?=
 =?utf-8?B?Qm5ic0VLSHpabDg4WDVZTnB3dXE2SEllNlhLbm9lMDhSSUc1L0h6bWVGYnRL?=
 =?utf-8?B?eFd5Unp2MXBscjdNRVNIQnlIYjdqMnBEUmx1NnBGSXdxTTlkVTdLYVNSSE9k?=
 =?utf-8?Q?9h4hWZIU25/ZT24fTQlgWsg=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c33a012-315b-4754-8cc1-08dcc3580884
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2024 09:43:24.8707
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: diPgcChlRA2ZULL2ArBfw3rW5NNmSRFF6F7NiQ4OB85LdUbXgDas7mm1ccPAb/5uGfWBvbHm+8dmIqejc1y0Gc/7U/Mp0o84aa1dfXAmFC0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR04MB9405
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Aug 2024 09:43:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63736

Hi Richard,

On 8/23/24 11:26 AM, Richard Purdie via lists.yoctoproject.org wrote:
> The nanbield release is out of maintenance now, stop running metrics for it.
> 

FYI, Dunfell too is EOL and still appears in there.

Cheers,
Quentin

