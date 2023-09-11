Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B988EE7FF4
	for <webhook@archiver.kernel.org>; Mon, 11 Sep 2023 08:09:58 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.64])
 by mx.groups.io with SMTP id smtpd.web11.53834.1694419796396401671
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Sep 2023 01:09:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=KysOLNTX;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.20.64, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=acmbyksKqriAmH3W5spT2PNIquw4Z6L0fm5jjjsv5fpxSF+bzyhmGfN0PcB48uArbFQf3FkMyJNqlt9TEzcMS3/74jhGiWUF4VQNpgfYqrNLagRm6lkP9Al/8L9LzQ32y0PVLcw1zSeXTKpxd+6M0KmQYzucN+iKJ+MnFcnRBo6HPIjw22nRQzpyi1B0blAlaSPFX2xrPf7ozbD/IzrQHMMgXwkU4/ftCa7W0wOcPdxLbbmTcKoilIyQsakMa5mTnI72siUQteBVqnNEXWcnZDjkMQ7PzdjR8vvPoLrDmB2LPm74Ata38oEOnDkp5gG329FmIC2oVxRMvv8xYWlbmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RG4PnwXANFFJYfCQHj8GvA/tw0CKJnvxLIIaCEkuzLM=;
 b=ORXheUar5vT3uLmHwPDYddeJt2/ZxwBZ/COa+P1/0mZA+tWCeLFCnNX2tb1+GXSflvGhUMT5NeeONO39A9JQ024FUhnC9/O33dBAEg9n+LscX2JCih/+ZO50DPGM9FLCfStQXTlmUoJK8TmWE1Ax/mylE+TbMvFiQqBMnrqef0pEmmtxblXEAcl4RTo1jljvVXA5lRtn5yxB3BaP1FA64Jqx+Y16OQywvKcGj9L41pREwox9s9jl4fvnlkSjOOFv7twUZ1fqv27rSsQtQgR8yCEN3yharqL61HgnYVGIoy9skkIVdW0wJKTQ7p9CH4TRiRHhAc4OVgQ5l3QwKb58bA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RG4PnwXANFFJYfCQHj8GvA/tw0CKJnvxLIIaCEkuzLM=;
 b=KysOLNTXcn9xSlP8drGAU/UJSkAHjSbE1uMRTBlzn7hy00TJQXKZK1BDcIZphhQz7MOhQR6rPtalzHE0cdUyEyF62NlAhLH2uwiFoZCrWn7KQFtHZ3gncwO9ORLfkAATKQeKsQsJjNb2plg3tYVhti0fsVhYN8/kHUrLfvDGmqygkcHreuPoQ4bY/pO2W9vJt9tcCT0f6bzoAIUGJQ2x3gDMmOojuvFwi2QJ24JFcfKeUZQ1sha5nK80luRGr4VTVuI3cHoxy1RK5NnInGCgyhCEteY4AeO32busSdoW4JH0fx9wLTw0HnqBY19ifxjCyPFG3CtYx5BcuNnkRdMqJA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AS1PR04MB9456.eurprd04.prod.outlook.com (2603:10a6:20b:4d7::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.31; Mon, 11 Sep
 2023 08:09:52 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5c00:6152:6ce:72b6]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5c00:6152:6ce:72b6%7]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 08:09:52 +0000
Message-ID: <2dc9564c-11eb-608f-ce53-10f1ee9ba9bc@theobroma-systems.com>
Date: Mon, 11 Sep 2023 10:09:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [yocto] Question: Sharing SSTATE_DIR and DL_DIR through
 Lustre/NFS for team work
Content-Language: en-US
To: alex.kanavin@gmail.com, Qi.Chen@windriver.com
Cc: me@linux.beauty, yocto <yocto@lists.yoctoproject.org>,
 yoctohelp <yocto+help@lists.yoctoproject.org>
References: <18a81ed8796.114a3273a387212.4468069863803228583@linux.beauty>
 <c4eeb346-6cfb-2bf3-6db4-1402d595e09b@windriver.com>
 <CANNYZj_fr0fFbRSYF3+aqaHAWD90f6b5Frs6GWpsgqLtOX+QxQ@mail.gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <CANNYZj_fr0fFbRSYF3+aqaHAWD90f6b5Frs6GWpsgqLtOX+QxQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR10CA0093.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:28::22) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AS1PR04MB9456:EE_
X-MS-Office365-Filtering-Correlation-Id: a67b5b8d-31dd-46cb-f93f-08dbb29e79b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	WoGFd8vIaOoKFdlY20CVWmAsRhYlZlM777ydQJd95wk332N4tznBKvP3XQY+9wkCYlFoMOlYKMnqOwvx3CA5/iAB+Jq8jdg8kVcJc6wXCpNJvmuf4N1yjnliBrgoD5UxpJzHsDOT+fgzggRCOFCcKU3pNCsafTWntAL5C9inKd/SIOTVyqQTV3TbnnYmfrU9jTtedPfS0IK+0NHX8S8wHL58DXMzdFGrv/3auU7f+LRbMK4tMRQCklBOIId0Ls38od+swedNZ2WIvS2ny9r3LFPhvj+90YCkdFO33RbxjYsRqlmNKXZMb97tnyCxE6lTypHDw3IGGKbpG/m/b1PovywFfOMh4RfjkNCFaWUlBjn7v74q001eJVjvwvRKh5fka0i+N2Tp23xmJN6OhhMrbLQNNDXurWJnKRX0WzQpVtKjwhyldPjZJuU2IWe4bxsG/YXfRTiRoBvpPzJg6sxL/ZjPeLSBX76QjJtVqdlLImeIaaFMdEl/NCEfjAug0SOx82A9yUqKqE0ibHxLN5B9WuV5bEZ0fv8olvIZkjStvnaHRBNfx2BvGTnFFgq8i7a/QOqUrUrOniH9DrgrpQZpfW8lCxb1ur913cIlh8mtxSlRt7P5Ha3RZMglzNHJSEob/hh3t0hn0l8ytAg+a8dc/cas60gCyXAXNke2VHVs338=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(396003)(136003)(346002)(376002)(366004)(1800799009)(186009)(451199024)(6506007)(6486002)(53546011)(6512007)(966005)(478600001)(83380400001)(26005)(2616005)(2906002)(44832011)(54906003)(66476007)(66556008)(66946007)(316002)(5660300002)(4326008)(8936002)(8676002)(36756003)(86362001)(31696002)(38100700002)(31686004)(41300700001)(66899024)(13693001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NU83UlUyYUJOZFF4VG8vT1NNZGlGcW1OemJOZzY5ZzF2ZE9HbTlmUVRBZ1ZC?=
 =?utf-8?B?MGovcUVLTkdrMkxsUndDZnBucFduWnh6cEZRWDNlaHgrUmFScUlVMGk1UzJG?=
 =?utf-8?B?N1BjQWRybTU5dXRKN3J4dEdNekZZODJhQXVqUXB6dDQySGFmTExqV09vYm1V?=
 =?utf-8?B?a2JWTEoyVEhUMGNQZ2VKekNOVSt0c2IyS1BGM2VVVDBQNFhvaVh6RmdPRmQ2?=
 =?utf-8?B?M1NnbUdzV3JNbHV2SVlCU09JOCs3Y0hmVFB4RDh3YzRjb1EyUnlHK1BJWU0r?=
 =?utf-8?B?N0YvMjgySHcwdU0vSnBZNXRVZlJsZDY0Z0FuYjZqMlNpWHdVVzgyODlTaWZq?=
 =?utf-8?B?Q1Q0a2x5cFBWcGI2bE0yNGtDUHdFNlBvV0hmSkNvOVNaMDc2bGprbDJkWVhz?=
 =?utf-8?B?b0NFcmdlclhXeGFFZjljbk84TFFiTW5QV0kwY2RneENGS3FldllyTXRpWXlH?=
 =?utf-8?B?OEdxUHdVY0RRcGxQNTRMSkIvY1o1OTBJMVdPb0gwb252djdNNmh3b3ZPY3Qz?=
 =?utf-8?B?RUYvV3B6UmV1RUlMYjgvQlBHYk5WaEl4bGlKM3hjSzdkeEk3alJLVlZFMnZR?=
 =?utf-8?B?THcyN2JsSThUVGx6ZVpnL1RKQTJZdVhuK3BqTzVxOUpxMEZud3FOS0FhT09p?=
 =?utf-8?B?bUZpYkJSU2xRODR2MzVDRlFJTnM1cnV1TDBRNHBUaVYzczVKMDZKY1d0YkJy?=
 =?utf-8?B?b2RIQTNPL1RRTVFvNFJ3UUZrOEhQam84R1JkZEQ4UTNzUWJ3Z0dpeENqbURm?=
 =?utf-8?B?ZFlxQmFJRkhQUTZuZkRjYTVpMjBxNCtCN0tOdzZ0eHdCU3dCNWhGUzBBUnpO?=
 =?utf-8?B?bksxcFlyeG00SFBjd2txb293WEx2NllVUVIxdDIwMmg2RVp1NDhYT2lEZXh2?=
 =?utf-8?B?Q1dRNDBKekZBakhmdlR6VzU2ZThrdDBLT0FreTVwTU5HOGZJMjdpZzBLc1hP?=
 =?utf-8?B?azVxdGY1Wlk5eEJTMklJMDRSVlNObnpocFVLbXRVcnFGeU44Q1E1Snc5ZUtM?=
 =?utf-8?B?MkVINFlaVE5PdmxyM25TQk1LaXAyL3h4SjdqQVYwMEZkQlRVeFIzS1V6WDJl?=
 =?utf-8?B?eVBQdEd3YkVVU04vazcxZjZXQWVCQTJGelJLcllpa1ZQWFg5Zmg2V2g3ejdD?=
 =?utf-8?B?cFRmVFdNNXIxU1ZRa0VvUUxaSk1BQmFEVzlWZnJ1Z1JvNElyekhYdlRjL2dR?=
 =?utf-8?B?cWg1eXRpbXJWTUdqR1pyczhOSWZXSTkya2xkL1BOQytvVkw3NFIwYldXVnN4?=
 =?utf-8?B?R3luakdZQk96TUo2aGhBOHRUNEtXMHBFd0R2dXlRbzBVTzhscGJSZ013a3FS?=
 =?utf-8?B?ZFhPRWUrSmxxVzFrRllnUmpOODVWSTNpS2tKL3Q0bVdPUHNPcW9HcGxKWGhv?=
 =?utf-8?B?LzVudGVqSzU5c1pWUUlDV3dMMWNBOStFRGFya3JUYjAyRFYvd29uc01qNG1C?=
 =?utf-8?B?MDdxZXFTWUQ5YXllVDdhdyt3aDc2Sjl0T1FQbk84dUcyTGt0aTM0VHQrYmhT?=
 =?utf-8?B?ZVVlbE5HcVdkaXBKbVRYSGVQUzR0aVhvS0RQVjBPR2p5SnBLc0txOEMweXNu?=
 =?utf-8?B?UWV4ZFZUaTJpcHp3R0MrTWlpV3RFVDJ1Vm9TVSswQVM3SzBkRmhCdkEwdWJ1?=
 =?utf-8?B?TjJHTHQwNXhqYU4vcWJUdS8yR2c3NjhZaGJjbnNZU3lKcTRDTU1rRTdkb2pO?=
 =?utf-8?B?cHdUdjMvK1JCeTJxOUZGelFsd2oxVDJNTkNqQ1kzTk9sS09aekhsdEFnVjJF?=
 =?utf-8?B?ampIR01hRkt2SlNRa292bHQ2aHlIK1owWllTM1FwTHVyR3d5ZWdrUlhWcXRk?=
 =?utf-8?B?TE9qV0VWQjhtSHBQYmEzQy9rZ2pNamd0ZkdRZEd5cVdoVG0vQmo2TUhzSjUv?=
 =?utf-8?B?UlZBQyt1eHpoS2RFU1FSZE9RWnppUEt2Ti84UWVWVUV5UzNyMmdjWUV5Y1Ri?=
 =?utf-8?B?RHlZckhDOUZPOTVEMTRxcFdlMUxCeE9TQStLOVY0Z3U0S2NCQzRZSDNqdExp?=
 =?utf-8?B?aGdmbVBuK0E1T2x3RjllNmU5M0dXbmxWUXNMbE10SDNCVHFhT0VVVk1MOGxa?=
 =?utf-8?B?MHNUdUdOZ2RaMFZJRjFHR0gyai9zNnQ5djdvVmRkUk8zczZkTjEvTVpjRzdW?=
 =?utf-8?B?c1NMaFlmajRZSHlwVUdrWnlxVlRwRTNQb3JQUVlXU1h1SjlWTEgwSlVXeEV6?=
 =?utf-8?Q?p+6cdI6NbVFj0YqCTuVsBJM=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a67b5b8d-31dd-46cb-f93f-08dbb29e79b9
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Sep 2023 08:09:52.1185
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Mn3D0GHDHp1qcJGQYfAAEYuubZ+ypy97reG6FDNx9kAvsfqD8Hs3QexQG8zJ4ct0d241g78Um1ypJL2igqh/Xwl1fiWIciB4nqt7MblOmVlQ+Mpabx17ksAhcnRXkrZK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR04MB9456
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Sep 2023 08:09:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60968

Hi all,

On 9/11/23 09:36, Alexander Kanavin via lists.yoctoproject.org wrote:
> On Mon, 11 Sept 2023 at 06:22, Chen Qi via lists.yoctoproject.org
> <Qi.Chen=windriver.com@lists.yoctoproject.org> wrote:
> 
>> SSTATE_DIR and DL_DIR are writable. Sharing them among different builds
>> owned/controlled by the same user is OK, but sharing these writable
>> directories among different users does not seem to be a good idea.
>> You could consider using the PREMIRRORS and SSTATE_MIRRORS.
> 
> This is not accurate. SSTATE_DIR is designed to be shared in a
> read-write fashion via NFS or other over the network filesystem
> (between users on the same machine is also ok), and is heavily used
> that way in Yocto CI.
> 

But sharing the same SSTATE_DIR with people running cleansstate or 
manually removing entries is an issue as far as I remember. I don't know 
if mount allows to mount file systems with read and write but not erase 
permissions?

On a separate note, we've setup NFS donwload cache for Buildroot and 
Yocto and for one (maybe both?) we had an issue with filelocks. 
Basically we had one disk on one of the build servers which we exposed 
through NFS share to other build servers and users. However, the 
filelocks weren't respected when one was set in NFS (or ext4) and 
checked against in ext4 (or NFS respectively). So I suggest to be 
mindful about this when setting up your infrastructure and use the same 
FS across all users (you can mount a local FS with NFS as far as I 
remember).

I haven't done that yet but I believe one is supposed to share the 
hashequiv server too for max reusability? I am unfortunately not 
familiar with it but just wanted to raise this.

Cheers,
Quentin

> Sharing DL_DIR is less important as it is not that large, and
> downloading does not slow down the builds that much compared to the
> the actual build (and only needs to happen once).
> 
> Li, your understanding is more or less completely correct. The
> difficulties are mostly in scaling up, where you might hit the limits
> of how many users can be served at the same time.
> 
> Alex
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60965): https://lists.yoctoproject.org/g/yocto/message/60965
> Mute This Topic: https://lists.yoctoproject.org/mt/101284965/6293953
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [quentin.schulz@theobroma-systems.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

