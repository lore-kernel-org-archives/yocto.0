Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77C16C6FD1D
	for <webhook@archiver.kernel.org>; Wed, 15 Mar 2023 09:40:49 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.74])
 by mx.groups.io with SMTP id smtpd.web10.3811.1678873242846908851
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Mar 2023 02:40:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=PUTe5Y20;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.7.74, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TslHOOde8GbjUja05ge21sgGe5kBiUP9/pMCH7AWW2KoVeEhIlRy2l6srwncRiUXs2jNjhj0zl4mhcJasYOWLrzB2dkLYfxZVorZdc5A0rgfNVYUyXeJGZ2em3K/6Fbx/VQKOlzNFjdHkj4+wBY4nebL34a8XMaU5nefnQSD2HAxbHOaHcqSCRNZMg0Pi8XscU4n4iPb5dU3LIzZW5XKsksQ59cKbqRrG6+/vzwAY5atoIkIdwujLB/9aWH3Y88eb1NJz+apHOV5ERwoPwcltYQ6yqB6+BhaoGQSILo0RKrnSkP2w8oi/hYX+U7IF4LhOWDmjFEygMwK4vTyfOKLzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nd/sajTIPNVJQwBvpEx03djp5n9DmyOBMfJFNUMRUFM=;
 b=TRNZ3BuON3OcCbcAjWlx4F14t/z0dIBSKO1Pqw8WuYksYSMJes7ITA6qvt8YHGU8NOReR/STJ+g/M1mupfR+f/Wqjiq8QB+3PigEI0cRmkvs9Eb734VjKMGqro5JEzEy2v0PuTIA7RzE/fqffJc6UConf2ltiQZvD9DN6s8ewH417S1jRE5p0Ut7Vm8H17euO2mFx08VqvCMY2sJs+uTCgilyaEPSVUGwxBh6Z6+yKpSQqysIcw/PcdHwApjyXe77haM6CoQrVNmv2EZOJpOgtfxXzpCG0S92VOGXOjfYZ1ESSYsIRhRRvUcfQD10UtgIx12SZFXy1hjtXdSzi5RGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nd/sajTIPNVJQwBvpEx03djp5n9DmyOBMfJFNUMRUFM=;
 b=PUTe5Y20lo/DOa8EcJUr3du7CAZoKr9wNfy0+ji9JHzJUUuB6AztEkltZBZPge+40o+BRsbBDga/rnkIJspnbH2S9/t1rHy3rX2v/w+fs20vryxSJIucTkt5XN/XEX+cX00+N3oMKdUjwCFIBqCCj+vlzFe0zgxI7lJyGaOddOpgIh0sLyiY21pgzFke4D04LwqIy35p5EDOCwcudqpJeO14ih0RcwFhdSqGFGAj2lbYMeWyLjLgrPAcqOFrKnAYhAQZ9Gj6P6yKN6tWVEEWD72a8uv++IwolP5mo5kQh2YzqjNNJBsCzS5qPhXXc171dqbGhyuTgc8LMK1YPa+mpQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AM7PR04MB7080.eurprd04.prod.outlook.com (2603:10a6:20b:11b::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.29; Wed, 15 Mar
 2023 09:40:38 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::c2a3:a621:4621:fc62]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::c2a3:a621:4621:fc62%6]) with mapi id 15.20.6178.026; Wed, 15 Mar 2023
 09:40:38 +0000
Message-ID: <741d68ff-8c9f-cebc-3cf3-1530628224e5@theobroma-systems.com>
Date: Wed, 15 Mar 2023 10:40:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [yocto] [meta-raspberrypi] Enabling libcamera-apps
Content-Language: en-US
To: sebastianpetersen84@yahoo.dk, yocto@lists.yoctoproject.org
References: <3IRB.1678871660355731000.xRsk@lists.yoctoproject.org>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <3IRB.1678871660355731000.xRsk@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MR1P264CA0113.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:501:50::30) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AM7PR04MB7080:EE_
X-MS-Office365-Filtering-Correlation-Id: af1911e3-c1a0-496b-3f4c-08db2539553c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	SPT/iNImEsJDU1tWR5bizTEwEm3a8OIP8Q+NZWGA2Eo2IhkN5WSxFUCSovo0ux6QZbtjFWjbjtQW2eCA8itZEHqhBOI890bhB+03g/2N+5ux4hl3mhnqXmym2dJWCPrXCchvA59ySeumHjljp77fG9dxLd+9WsOWFj7BtKjAJmpmQ2XXm8gCPBygjeKpnXccyFqvoMhkXwR462KRlmxIsonz2DxZxcsVI94Y4ekFcBAYrNm0icubRjbIv1P27MJYaewN2ypzKefBayOIe1qu1gswnRdx5HWpDwmy8Bp7zfWFriQd29h8idwxUIJsznO4WwyvcGb710mnJbnuIMQf+tSS5ALzPx8nYjm5HR9qyg/HnVsp6xx8aEWS+eRE6+4uUTZA82ddEzhmMGI+E9RdDQun6OMpQXBni4Axk52dkIJKXOlMAkDk5uH11/3ualXz5+v3o4Sgw5+KXTrvUuO9PN7Bay5nXYgmoxKIIRGamXgox9MHn2zC1vPdAs/2pQ1kMkLy7QHRkYBuzP1DaXY/BQ36WDylu4YMWIXWgAuCSvfMqgI1hgyIuemjxx0mSs9VifeXt/JnuY2b7HFr2NYTmU+iPpduDCjX7xRCuzRZVeZk5Omu9yZuagHe86Pz16Y3XBB3UN0UX036Qi9oeGNfleWGtSg3lGeeBFOkmSGT76uuIlaeq12s19yOjqK/rZLVuC2M9hlEEVO0SPVkJ9VIGtldL3dBx+SELheZOtXeK/g=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39840400004)(366004)(376002)(346002)(396003)(136003)(451199018)(36756003)(86362001)(31696002)(38100700002)(44832011)(2906002)(41300700001)(8936002)(4744005)(5660300002)(2616005)(26005)(186003)(6512007)(53546011)(6506007)(83380400001)(316002)(66556008)(8676002)(66476007)(66946007)(6666004)(6486002)(966005)(478600001)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SEVNcHFYUjJHVGkrK01xUVpXeWpkdGJaR0xsRC83TmVXSFlibkR1enE5WWxM?=
 =?utf-8?B?UU1JQjIyVWtnZkdBMDcwekUzNmhJck1FTWVjT3J4azgxTHdsM0VtaWxjRTJ4?=
 =?utf-8?B?K3BDclp3VnhNODJOc1VseGsvek91ektjWWVObklRSXorZ3RoY0tIMjNqU0M1?=
 =?utf-8?B?cGlWdGJ5L3lkZHVxem1OS0QrbTZJdTQzYXkzWCtVbTRjbXFCOEIvVjRJRktn?=
 =?utf-8?B?YWw3RHhLV2dOMm9Qc01BU1ltbDhvZTNraWF2S0VQYU5ENTlydDFKUG0yYXZQ?=
 =?utf-8?B?djN6NUREcm5tYVdNZk1kblVMU2c1V0dkZTdYZXc1citEN2NjdFF2YXNHS2dn?=
 =?utf-8?B?aXhxeWhYWndzZ3AwWEZReCtJeU8vZHR4YzNCQTRKcUdFZGhtTms3ZXE2ODJ0?=
 =?utf-8?B?eWZ1UU5CNnJGSWhYemkzcmJoRnVxTGgrcTgwOWt2c25VSlM3cERGaHRoRXNh?=
 =?utf-8?B?UWlxQy9kczhpRFMyVXRBc2NRUVJZMTdVRVcwaFFrZ3FxNCsrKzhaTldqZEJk?=
 =?utf-8?B?bk9CeEVoZENaREFkYXNyVDkvcU5IcFhkYkFzYTFQdFRkYStUZEEwRU5JNzhz?=
 =?utf-8?B?WUFhMWlYN2x3T2FzSHYwZ2htemRPWHVySVBKa05Vc3g2anNtMjl5dWcxNnFB?=
 =?utf-8?B?YXh6VkFTRE9KTXB4djg0MzZPcFZiN1RKVXRhbForT2NSVFZDVk01QjRlUDVD?=
 =?utf-8?B?UVJ3cEl5NE9XSjFTZUp1cU0xaUFMWnhqMVUwYy9QelkrMHZENE93Q2p1YXdK?=
 =?utf-8?B?SWl6cEx0a3pVZ0VvcWczaFdkKzlzck0xUlYwaHlTbWU0ekZCSFpESy93QmZY?=
 =?utf-8?B?NnIwdENjaDNrZWVoL1pmN0liMm8xSU5TaFN2OCtVYjE4QVVYVCt3eHY2a3BD?=
 =?utf-8?B?MFo1ancwNkJ2RFlGUnBiRzJJTnBIeHp0bWFHVW1iam9KOXFHNHRWUWlqUExP?=
 =?utf-8?B?YmNvRmNaTTdySXp1VkRqeWhoL2MyWk9YdUZIYitJVVU0R2ErYlZabnRsYzhT?=
 =?utf-8?B?MlJoeDJlY3BxNm4yeTZYdGIzcWhXMU83SklNdDhadldtbzAydGFONytmVDlB?=
 =?utf-8?B?bnRSbWdrWmNRL29xeE1OanVPenBEbGhlUVpEdldvY3lBbTBPb0pHSUhGNUw3?=
 =?utf-8?B?S2hhWWM0S3Q5TDN4c1QvdXIwVHBkMjRIeCs5WkFOR0dtaFQvYklpV1VvL2pn?=
 =?utf-8?B?VGRtOWgrdUUvdGtxUENKUFBlSDJZL1EvWGttbG9IZ29WV01EaDUwbkhOMG1k?=
 =?utf-8?B?OWkyWFRkZjJtUDBFNkN5UXRRTndzU0tkUGFoWnhIZE1QdEZkVWk4Z1A0a2U4?=
 =?utf-8?B?Qkp4ZXlTVzFVNjVLNTZnSGpoUGt3MWFhY2JFaWtqZTlFR1V6UG1SMktPeTl5?=
 =?utf-8?B?MXkxblVFcUZKTit3LzY1eXJlTHozVDlmdUwyZzIydlVMM0Q5VjQxajlIbHpO?=
 =?utf-8?B?L25HbC9ETi9JWXdwZVFjN3hpdDBBRmlhRFRWSjJSbHNEZFlKTkFFRzN0ZFFM?=
 =?utf-8?B?RXkzSXA3dWVwS3NiTG9XMkVuL1JCOHhJTHI0NWYvWCtkM2lGZE0rUzQ3WHgr?=
 =?utf-8?B?a0NQRzJLLzJRaFVYZmh5VlJnNFdJczlwaFd5aVpLY2N5ZktZVElYZmgwdUM4?=
 =?utf-8?B?QmxxNmZ5M3FMWGZvdlFTMUlkT2FYc2Z1M1NxempreStnc3c5TzYvZXpYRGRz?=
 =?utf-8?B?bkZOVXJYM0VVRU9Hc0JOY0xjV2hzRWc4c3FEYVcwOE9lcWF0OTdtcW5leUJw?=
 =?utf-8?B?bFlURmd5cVdabUtEbGUrWTQ3d1U0NjM0bFRwVWREa3g0ZXNoeWRQR2h4dTE3?=
 =?utf-8?B?aXRacnIvL2ZxK2s5RWsveFNDd0xpMFFXU2E1ZGNiRnZCS2hRMTR5Vm56WEU4?=
 =?utf-8?B?QWR1S2lQeDd3V09Wa0RZbUtHVjNpN24xRTJ2YVJGMjJLQ1Y5MjZzNnhDT1JX?=
 =?utf-8?B?dHZLMUpuUjNRQ05jc3hBUDI0ZzRKM1h2MSt6SXRvR3RTdUE0WTRQVHJ4VDlF?=
 =?utf-8?B?RWt0bXJVWFgrcWdOUEorVEw4NHdzUjRuUk05Tkwzd05QQ2dFTHRkNlA0dUE5?=
 =?utf-8?B?VWszWnJQSjd5Vi9sditQV05XM2xSQm1vWExUbnM5ZUpZTlNCTWdacElHek9W?=
 =?utf-8?B?d2MxUlcyWWFiTENUTHZ4TnBwNFRrdGFBUjNWRzljU1krWmNtREcxY0hHZjJQ?=
 =?utf-8?Q?N/WRo95UraVkm+JTd6U1OaU=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af1911e3-c1a0-496b-3f4c-08db2539553c
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2023 09:40:38.0820
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hqkMYRKwy7Xsd4h5EnlSYnqK6HCTAeq9psfvPOWPqGdKcDZHbIkqiB0ZEd4uHH2Bd8xlPpr9yisj4UIG4I0+SZ5iwpgR+bBdtySvCTKeN7fBnijMVobnnlpnYfaZ+N59
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7080
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Mar 2023 09:40:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59429

Hi,

On 3/15/23 10:14, punctuation via lists.yoctoproject.org wrote:
> Dear community,
> 
> how do I i include libcamera-apps in my image?
> 
> I have tried with:
> IMAGE_INSTALL += "libcamera-apps"
> 
> But it doesn't find the libcamera-apps recipe.
> 

It seems it is only available in langdale and master (mickledore) branch 
in meta-raspberrypi layer, c.f. 
https://layers.openembedded.org/layerindex/recipe/327281/

It is also called rpi-libcamera-apps.

Cheers,
Quentin

