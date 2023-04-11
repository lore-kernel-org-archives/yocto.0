Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D42C76196
	for <webhook@archiver.kernel.org>; Tue, 11 Apr 2023 12:07:21 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.50])
 by mx.groups.io with SMTP id smtpd.web11.11833.1681214836541254090
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Apr 2023 05:07:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=e7VXUwd7;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.21.50, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aAxy0kYfG/p5AOn4jVhmn2dKdCh9qnTnnUQyx8//WVPR3rOGakIKcdgg7l7FqyfL8JMPDYVVGbE5uuHw4a3x0qC+T5dZUaV7n//NAjbexrD3s2h0u/F5j4dG5hXAU6+qH7n2N7H/vejFNx03c2gwc58udkkL5hpZ/UzOT2im0hfYSfjFX0G81yq7s86BcKJFWL7TTxVqMJPPY4okTKFyz/JAqB1D5iyt+AoqI48gM3fOf0P7d2Vw7I6vC+BlZ5zZp7kd/5tw/S9OHaYRQKwZCb+UKi/DgIpx8JAMqe2YhsLbnDJaoyowQTRbyf52MBcQ4uL5l+NZhL/0pz/EpvxcSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A6LZCVGPrsGlhA9Y9CZhDIQKSgAwdP0Va7Lf0UwYMc0=;
 b=iqCHgJNeT5tVUdXNCecCol433fcpoIuBcfGIptJrw558OW7mISC6ZWN3QDaMxtQYaWLG2BsItOfaE7bJN5MJCZW3KF06bVNOeOou4hYIarex1bbDawBGldDFKhNw1KBH/WIF1xOtHFzgOffr5UR7q9ZJ0/f33EcynZ4FXe1il6yxkSqmqItnRM2b9HT/cxbsma9x5w9c/Im7HDmc+WiblInUpcenlDuUa7IrLFokPCxgNSYHK5vyzt6YCiFuazgs/UR8EHGfpFCpewG6cZRX+ysM1zoal2POP4KD8QHcWsNVVeMvEOeY0493Ddlpp3XesD6PlDGMb7N+hFSoipeY5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A6LZCVGPrsGlhA9Y9CZhDIQKSgAwdP0Va7Lf0UwYMc0=;
 b=e7VXUwd7/Y+u0yobrTs/0A3m8PmVguly7oMNPwBPfJG5s11LTCYbUR5rWv185rVhIR3PMkuY7FZzQiLPplo3ju9U+eh3GmMmIo6Tx8woUVa9Lb0dKy35a1xDB70zXfgoXfQGwhU4bp7V0mkEPkATPO3fSB9TnGX0rWBEm9RIwC6I5Z9oIscGFdHVu/CbFe/pK/mv7YbJ37jxNdlC4Vbxk2GTTiaSKvGUGF9poS/NH6GrgviLHWBA0GUgoAaTuFAZgpPojDNxmh1HoP6aaDvyIWL65ffokVj8ENbMmbRAm5crUqdKFbwFiWCE4akkUTBIzAV1RTQw1Yv8/h6uiPkZxQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AS1PR04MB9312.eurprd04.prod.outlook.com (2603:10a6:20b:4dc::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.35; Tue, 11 Apr
 2023 12:07:13 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::c2a3:a621:4621:fc62]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::c2a3:a621:4621:fc62%6]) with mapi id 15.20.6277.038; Tue, 11 Apr 2023
 12:07:12 +0000
Message-ID: <1dc6fbd6-a36c-9726-0ef9-eb76d967dc42@theobroma-systems.com>
Date: Tue, 11 Apr 2023 14:07:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [yocto] Compilation of z3gateway
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>, yocto@lists.yoctoproject.org
References: <CAPJWBnhLbdAPqiiZfbnmqKOFzjq+23JbcxLShv3mWnuOgEx2zg@mail.gmail.com>
 <27573.1681099644404618771@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <27573.1681099644404618771@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO4P265CA0141.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2c4::11) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AS1PR04MB9312:EE_
X-MS-Office365-Filtering-Correlation-Id: b32b35a9-e086-43e3-d19d-08db3a854844
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	2XmR6mhWQeUoTgct/fDV/1AbKe0VcoKow+wq/q6vA373ixwtrTVV/+tGG7s0k4JU5uu2v3rUzxxmE/w4iOEVSRcl9+CUQlnxShIsvDzcRDZHQGrC6U5MYyl/ZyKaci1fYNiR0Fpg5rPQh+5e72vX+JxbOy+ZD0GCpB3IxCyShMzZSLxa/iZZuc6ftGRdxeB28uNLvjq07Upd1t07OU3AfVjHHBu/aCrzMJpUpms+D4y/AcvhHOe42jiWdkTbOtysAi0k7ZC6HMQpi8FMmMUou9lZh6B1HUJrAUQtCpM6pwJUPIlzgGN70srSiXu0DkE/6iEqTuizcdsYD72UMI9RyqqKYQTks51jNYgJUKcobM5G39ePEwoSeMwwO7u2zL5NSFUb/RQ/lO1SWxfxqOO/eJ4rXisbt1NoTZlwRzXfHLuFflSvHTHJed/F5V5aDZXwK7w55TBpmeupxbFMFv2bCauSh5jVV9DYWQX5up8nNrduJdgZmzx/OonC5rML7cWxdgm5vWuLCZxq5WFvB5M6DG2g8oZYhGtN7LOtiWNOyc9i2EwMQ0LptEX8chqhghN/N0p0w0kxZzN9qEO6gpgBgJdHflrTeqQFd1ERQhoZC9n1ih6gweFPjpFWva1ZDqb6gO9aneiovMrB2c/MA83KWpbpImdyonTHSrd+wUvoec0=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(376002)(39850400004)(396003)(366004)(136003)(451199021)(31686004)(478600001)(558084003)(86362001)(31696002)(36756003)(83380400001)(38100700002)(2616005)(6486002)(2906002)(316002)(6506007)(44832011)(6512007)(26005)(186003)(66476007)(8676002)(66556008)(8936002)(5660300002)(41300700001)(66946007)(32563001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?c0hPWmxYYmM4RXFqQzlOWmg4ME5SNVN6T1FNVU9RNEkvaitVRkJTL2RtZWRn?=
 =?utf-8?B?dHlsSDB5N1FZRkNXSnJNWHZYc2xhOWhabTJ3ZjkyM1hKaTNicjdjZGJ5UUVo?=
 =?utf-8?B?QzM3eEYzN0JuTGFXd2lGK2ViWkIyRkpCZnJ1VkdTYlYzZWF2WVNVRG1BWXlw?=
 =?utf-8?B?S2MxZS9KVjFVZmxDMGxucXo4R1ZhWjRRM3didmlZMnUvdGZqWFFEM2N3YUNu?=
 =?utf-8?B?dFVmVHNuN3R1bmJmRDZNcXZ1dWpJYkQ5aTh1UU04TnJncHNZTTRIWDRiNS9n?=
 =?utf-8?B?QWI4bnEzT3l3MFNvMlpCZi9OenpTb2E5SlJ3NkExSDFEZ3JYNmZWWmM1U0ti?=
 =?utf-8?B?djBhVXMySXBzUjhjQzZjQWk0dXdNck9Md3VaVDErdFFoNzg3ajJSS1NSTHNt?=
 =?utf-8?B?cUZtc2tWZ05oQ2dXa1BzYVowTU1CSjVsQWF2YzFJaE5OWTVjMmcwb2FWdVl2?=
 =?utf-8?B?aHZ6MFNaQitHT1M0eEFVZ0N2eDF4SXB6SCtHSkdESXpMM3ZxS0Q1K25mN01y?=
 =?utf-8?B?RHI4R3Y5RXpVNzJwcVI0TUpncE5HSGVhclEzZWZWM2FtT3ZHRDByY3VadVFp?=
 =?utf-8?B?V0tDVmJPbG9vNkI0NFB6YzRpVXg5aVlPWXRCSlo3T1VvOGlRUTRoMnRZNGtH?=
 =?utf-8?B?Z3ZENHhtdmFqdkFtL1VNKzFwR3lTaFRtTmR3UHFtOWpRTVluQVcrdmk5UEQz?=
 =?utf-8?B?L0Mya0dLenZodndHV0tOSk8rTzR0bkJHWE1leDN4bUU2bGo5bm5SUDhScEVW?=
 =?utf-8?B?OWN4VWJXOTl4dmh4N2NvMCs3VURpbHNYYTVsd3RkcE03K2QrblhwQ1FGNzFy?=
 =?utf-8?B?Y21waEYyT01FZlJ2SzFiTmJibHRSMStNNkdXM1hiUFBWek1KemRuNGVUK0p3?=
 =?utf-8?B?K1RnMjVPNXJMd0tURzBHSzdSVnRLRE1vL2FCNVAwUGpqdW4xU3d2eGdMVVR6?=
 =?utf-8?B?UEU1VXpPS2gyNGp0eUpQOGFkR0xBTWRwRzl0Z3lDS3hhQ21aVnhnc3VtSFFt?=
 =?utf-8?B?ZE1YejJFZGhPQWt2ZlIza1RJa254Y0Q2OXEyMndUNHVVR1phcDdhODl1OXhk?=
 =?utf-8?B?c0FFbytZYmVDMDRjNlZiYzFERkRZZUVPUEhsZWRZK0RpejRHY3FiQzREVTJ1?=
 =?utf-8?B?N3YvZE1McWhEeWppemo5T3ZsU2NqVWhVaTNjVzdvU3FFcXRNR3pNZmRXS3dw?=
 =?utf-8?B?dFZDQ1g2SndHcGgxYVhTSGNJZ3RsVlFwZE1IWlFmbmt4TjI2U1c5anh2RUFQ?=
 =?utf-8?B?d0RXUVBxRGppM2o3N09xV09UTGlkcjZHK1liQitpVlRmOEcrSWZyN204em5P?=
 =?utf-8?B?UEU4OWFpU3dwZ3RyRUVHMHEzcnYwcm5JQmR6TFlCUzVlM21mbTdrV0NZWlZp?=
 =?utf-8?B?ODFDT1BPTVVnMGdzM0pONTJHRStENDhQWDdldHdsQnlCOXgzRVExQXBXeGE3?=
 =?utf-8?B?ME9VYUVwR0ZYdVp4NzlUMEhzbk9YZm5RZENVSVhYU3FqOVhJcFdDUEp3UjZ4?=
 =?utf-8?B?TUNyZllCaUJvdWljU2VJdG9xQ1gwUzViWW43RzJ1bThFTExlY2IzMHJkY3dU?=
 =?utf-8?B?bGJVWmF0cmlHczJyTVVDZ215cnhZNzJqWm04a2ExY0NyNU5Eb0RtNndLQmp0?=
 =?utf-8?B?cGRqZFNwZlE1RldkMloremkvMVc0YWFzZzg3UGRmbVNnQ3hMdjFsOUlicGlH?=
 =?utf-8?B?dkdUQ2RqK052WWVjVVZFMk10ZVBSZGVWai9VNDhJem44T3RwNG5HUDVUaXhT?=
 =?utf-8?B?NCtFNVRBUFNQYXg2RER4dXNTTUF6ZXpLa1UrTzBneTByVmZ6dzdxTHRIZWFt?=
 =?utf-8?B?ZENsdS9GY0VSalc3UHhYbFo4STVROXoxanFYQWt6ZFFuTkVYUHBBakE1aUVI?=
 =?utf-8?B?WVR5bHZoa3FYZEFYc1BNS0NvQ29KMUhMSk9paElPb3VjWmF6UHcxdGpWRUl6?=
 =?utf-8?B?NXRMdVBjZDR1RWpCdjNzTjBiWGhzazJJcXM1UUFJbE00R2dtczhtS1ltN25O?=
 =?utf-8?B?UitFRG15YzB3d0NERTVPb0VEYXVOR2MydENINndjQ24zZHZ2TWZqSWc5Y1dD?=
 =?utf-8?B?RkF6cXZtd3lrbVBmT2YyUUZvVkNMQUVoclNDNVVoLzhPY21PMXVjT3R1TlY0?=
 =?utf-8?B?ODdqT0xXSmJ1czJQbDJobndsUjd3MElFZFkxdnRKY1VSN1d1NC9OYzlLbm80?=
 =?utf-8?Q?dOTWhS7VHsedseg3nc71ZeQ=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b32b35a9-e086-43e3-d19d-08db3a854844
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2023 12:07:12.7810
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n0eXjbLAehnYxcLs8AseMRKGevQb4uY6qjhO0akrfejRCZDj/U8FiK74I7JpaKvJRFtj2B6U/X+bslyUHEAYzcHXFUMfWIbCw0K6y587GJxUuKRKLuPcZffaI4AI+G7I
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR04MB9312
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Apr 2023 12:07:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59676

Hi Hassan,

I believe the issue is that the Makefile is not in your `S` directory.

You can run `pwd` in do_install and check where the Makefile is relative 
to this path and update S to point to this or make sure SRC_URI installs 
your file in the directory pointed to by S.

Cheers,
Quentin

