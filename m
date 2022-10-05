Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EFC38C433F5
	for <webhook@archiver.kernel.org>; Wed,  5 Oct 2022 08:55:53 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.87])
 by mx.groups.io with SMTP id smtpd.web08.21400.1664960151612871646
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Oct 2022 01:55:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1
 header.b=bJALE+gq;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.7.87,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XCNFLI5tMwlztFN22sJNZTRkhts1B2n3JJKrrvPPzjF8l4Jl63weAUCsZwU8jHznFTT6v7/ACwihk8QIPNgd5tcf3wH6ruFlfkv9o2tgw2QXoFlVj5aSiZRoBa2vn6OUgML7psevI6SxMmLntS8hbglFyNUK3/NuKx8ZK9VHwPOdEnSgUuv1l+1qDOrKB96oAWjtODxpWNMY3wH1jzj61rWr77/aV+Fc46o1wc+YU8Ht+VlUCkliKB2YJwjR7EDUyJ4GdlGoIaIchUnUhGaJUWCn7aSwhQ5blph9eBIeEOkq24VLksE1HcYRsDH1wk8dp8dFgY26ugDfn+vutVPlrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1X62FUcmRIzExhUReoUkYMg5pwpdqp4GMvTYSDjV+QE=;
 b=XXvSYZEA7+L2i7roMprS+c7+gQS1YvbWn6SQ382t+ltZZPExMaVdmupMtrAhtLJJsj6DUBZcBhYzdWDNDdFKS7oe/WXRCtuiy0+qKEda1waMtQ3NYpWiFTiVRpgmimm9+ZQwjf2rMTXGAfai6T85efSZ/QxL2FcacySs5m0XGz6lYNZLgCc8rvTQY+U1FtgDze/q2l8uDJ6i4WY6qoK9cAEeW2mgk/w6d+2H2ony23wNu8C25OcKsD5gqc2F6bWLBC7Dks3B90GnW98uJ9ugffaYS/IiHuEcsJu+zExS9USqxgJvAXXecCt7hmuzNm+G3qlDXlotZMvXDJ+zuz7e5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1X62FUcmRIzExhUReoUkYMg5pwpdqp4GMvTYSDjV+QE=;
 b=bJALE+gqkGhFtJILIEil1VUOPEpYx22bNhvib+8i96bbyah3tnGFfVV6Pj1gQP2M2RBrz3zsZBpJA4pRzOiCZfU8rJI6CpnSylq6zQHTIERYF/YzV/T/Po/6OCOVqHjr2iz5KnpkdLsXvBjbMx+LmzIUXXU91O9N/qQrV2LuyuvZWGXP/iKjztYLYdrk6jpz3HgXwgoPp9yn4NQSsnVuoSAoK4Fh6YhRASBxOeUKPm6P/qvBGw8Ah8xV7FLXCVLRRmsK/PVB/L/068v17Kr+4OoKuLoRXcViIJ1g3aR+oPDTfKCVp3mC54IMMgCp+9OTkuHszTIkgp3nrR+45aqStg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.32; Wed, 5 Oct
 2022 08:55:47 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5e5e:1989:e5ec:c833]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5e5e:1989:e5ec:c833%3]) with mapi id 15.20.5676.032; Wed, 5 Oct 2022
 08:55:47 +0000
Message-ID: <4b6d09f7-f555-7238-e629-78585019a4a1@theobroma-systems.com>
Date: Wed, 5 Oct 2022 10:55:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] scripts: run-docs-build:
 make the workdir pristine between builds
Content-Language: en-US
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: yocto@lists.yoctoproject.org, Quentin Schulz <foss+yocto@0leil.net>
References: <20221003170401.12827-1-foss+yocto@0leil.net>
 <20221003231505.0f16377d@booty>
 <38d89bc7-1317-9670-a07c-64d28c8baff9@theobroma-systems.com>
 <20221004225444.07132057@booty>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20221004225444.07132057@booty>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1P190CA0020.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:802:2b::33) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|PAXPR04MB8749:EE_
X-MS-Office365-Filtering-Correlation-Id: 5f7c79a0-7afe-4601-aa69-08daa6af6532
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	n7jz0HIZlgywDhUorytwEBwRh8oJAmr3/p0/ryHQbuwqnT2mJ063OOFCK1kdd/70iDGZnal1t6zmdqFultH6xgsaxDKPmeMJNBmgTdxDa8vssNmHjnTmoFmLmuTkXXn0rlpx6Ng9Ogt3PXwQwFCYq4YRio5Qu8dmKaLrC9kxNeFwuRsmVWvz4gsDpbvDirxNrt5aSvgz2MnKKbV0HCMvTR/+TBfUVsT60uKDoAY540WQJkFYblV8GzpUMV2/RJgXm7LRnDf4QXo8rZCzs/lajADv5oklsfZAJ0JQaxgMxB0DH6IPczH/1TcJtav7+WgMFK1HOw6z4heC57qc7N2Sr5SiiVsBqT2s4vjnKZjGeQ98u0URAqMzAGXcDVxUbf95Zi10it7PHaQfSQcG73cygWGJb4HQ1XGGoMC/IOrs0Rxuytf0Z8bMwRzOk25p1TF5kC1dMDsgsftSZP6Q910h6lymTROgfSJbgi0rhEMXljwJUW9i2FQ+YUZINFaGLwc118SXGPSolgOJ2dvX9A7mylkPSXIfUopF1V0iAXe+dllQnvfFOzzJxYeOVGYDOkDjiio8rgRGT4j+aSv7gGIP6C0tavfwmStzHGuZu1+TBcZP90dkLKmUSU3Hluq0qOzi7cnzVEErJQw7neaW9jMer9rVvM/hfCo01SbxhdNyx849phtoL2ACrZ4907IBfxW6j4IkjefGpK2eH51P2MR3YL2R/4rQJD/OHZYx+N9D3xDzTHi8wuRi9Fv6hcqv5mrbs2CBRo3lY9/W0s3L8w0tVTmB+Q6KW44gGX5eidtO+KRL/asFm30tedEPto6T2tOE+1QevAZCUWrWynsY6gjgLg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(39850400004)(136003)(396003)(366004)(346002)(376002)(451199015)(316002)(8936002)(36756003)(41300700001)(53546011)(6506007)(6666004)(44832011)(66946007)(66476007)(5660300002)(8676002)(4326008)(6512007)(66556008)(38100700002)(2906002)(86362001)(31696002)(2616005)(186003)(83380400001)(478600001)(31686004)(966005)(6486002)(6916009)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Nmc0c3NVQ2ltUlZVTkpNNTk2Vk5nVnBWS2g2c280Sk9abFNXWVpBVUlON3hm?=
 =?utf-8?B?WmNrU0ZlcFNvOUVEb1U0OWpvRkkyK0pBNVVVYmpXdUhvS2dSREZuaU14U3RD?=
 =?utf-8?B?V0pwR3lDOEJVZXRnN2hkYWg1QXhUSU5zWlVXdjdPcEJmM3ovcmlwdnMwQmVa?=
 =?utf-8?B?ZTg5RHN5YVFzWGt2VjViV2RUTE90dkliSzFnN1dzeUovQ0FPU3N6V2JvcFNq?=
 =?utf-8?B?M1ZBNzljaCtLLzVmVHQ1OCtqcFlvZFNTV1pjNEJSd1BxeU51OGoyRHlVSWR4?=
 =?utf-8?B?Vmh5b1A5aE1VZkt1cTlHQnNsUHN4akZsNVRBQW92bXZQcGgyOWJGVE1KbHNp?=
 =?utf-8?B?NmJVcjRVNnZsc3hzbVV1OS85b2Rhb2xlRTlPcnl6elEzVVYwbTMrQjF1TWJX?=
 =?utf-8?B?Yy96REVWUjJzVlY4OFMyb0tBZ0tMQ1FyYTJSdy9PVklmbXpuK0s2T1dFckda?=
 =?utf-8?B?b1RKYUpjRWFVL2hlSVVHdE95anJSTDdmek15QVcrSlBLTHhaVm44OS9TNmQ4?=
 =?utf-8?B?eW10MGcxSWFKc3hnTUNaS0FzWXFWWmFPdGZnbUFaQ3ZxYTBPVk9kdmhLRlBj?=
 =?utf-8?B?ZlZ1Z2RpMFV4enNLTERxT3M5YXVhRElOKzNxNWxPNjBDWGxBRUZwSThySFNR?=
 =?utf-8?B?RHdyWUxkZ3pqMUJjTHE3V0ZwbGN4aEswM21hZzdjR3A3YzcvZXg3RG1TbjBv?=
 =?utf-8?B?YXdlRDdxVVhrZVNhZlV2U2RLeDRiZFdnc1g1OWkrM1c5YW5xQWx0VFR1OUhT?=
 =?utf-8?B?RHRWUTYrZ2FKUmcvRVBVUktzNWJidzdKYjFVWkhLMWgyaXlnVDk1RXJ6MzJT?=
 =?utf-8?B?d2x6MHRiRmRqeXgwZ2RqVC90Zk5OZ2NuWVE0ZjBFTThXSTFLN1F5R3JUclh3?=
 =?utf-8?B?RkRmSUE0U2NCUnQvN0JuOTc1ck04TDRZeW1MRmRkdEwxSHV0djdWM3ZxU0xV?=
 =?utf-8?B?VzJHcmtIeVpFdWNVaG5KY1NxYURRS0VJWUlrVFBHN0tuenBzSzVyVGtSbngy?=
 =?utf-8?B?VGFmc2d3U25IU1E0RjhHSDF2QkpvdFV0S0plSUVHUXd4bnZvT3IyWlZydmVW?=
 =?utf-8?B?WEJTS1Vtc1VVOXdzanNZMi8wV1pZRXI0NU5WeEtXMkpqUWRuaEFEMXlYVVRO?=
 =?utf-8?B?My83dWh5cU1GZTRrQlNPWHQrb2N3dWNnWDhrQWZCRkwxWGFDWHovOFNoTGRm?=
 =?utf-8?B?NVBXdWh1QS9PSVVNd0Jkekx1NHdtZmxKaTBXdTEyMDJia2kxRHJvQklHdDNC?=
 =?utf-8?B?SlQzL2ltNFRoMUJTVXRBVHVkUVlQQzJZTHlJYzFBajRibE9GR3BobE1yWXYy?=
 =?utf-8?B?V1hCcWQ4UXQvTGZZV2NPRTNTdm43NmcydUVzbEQvL2JESmZMQnpMaUJhV01G?=
 =?utf-8?B?b0JYOWhOOFVrNnY2aFhFTElSeE1FR0Q1Sk1jV2lJTXhwNDBlVHEwQnl2R1Rh?=
 =?utf-8?B?bFdiaDlYaTMyM1J6RnAzSkdsK0EvVTRVWC9ZTlZoVXA1TURNc2U3dkZZZENT?=
 =?utf-8?B?b0hZRktiQk1pOTQzKzFGeWlNc00wbUFZSkViQ3FPcnV5eXo4c21DNUV4RWdW?=
 =?utf-8?B?aHUvYWRianhVSG1mdFF3S04wRDAxNFBGNWcxRmQzRStsVkdYRUdyODVJYVhn?=
 =?utf-8?B?MFI3Y2JvcUVYUWFsVjhnSStiMVZVYUhYbmtXU3dzWHBGaVNqSmtac0EzZVJN?=
 =?utf-8?B?MDAwVEpXS2dpaHhwV2NTR2NYdnVocE9uWndzQ3Q3S0JoN1pDVUhjbFh2WHlY?=
 =?utf-8?B?UW5kUXlFWkpoRjQ0ZkhxcUlNSU5ZVkxwUVV0ZDRIak5Pb0RmY2U4dFpRYjN3?=
 =?utf-8?B?QWpHZHpQRFVFK25NTGRNWlBRdlVzUllqWnlDNkY0T3dkV3Y5dmE4bGZRUjhK?=
 =?utf-8?B?VDV4WVJBMFkyQlZ0MEdReGhNUzB1U2dXazZzbGtEZUh6UFdtWjdCU1hRSSsx?=
 =?utf-8?B?M2EyRmJLY0JMd3NwZGxWRDJGMVpPUExIZGJQRDEwZ09Gb0tNUzNWQUNZTXQy?=
 =?utf-8?B?TXBvWVVLeFJGSGl6NUUxYW9NVXIyQVJYeGxoMy9iT3pIQXk2L2MxT1J0MTds?=
 =?utf-8?B?OEROeE1PeWlpdDVtRVlac0srUEpqMnpmb0VvVTk4VGpvaFdVVDg2dTdJOTFr?=
 =?utf-8?B?Y0VNdjg3Q1lYQkpyb0VycUpkZFVvYWo5NE5ZQVdSbTlmQkYxQmJvTDhURE80?=
 =?utf-8?B?TElaWEhLTTJER0UvY2U5d0s3VnQwL2N2R1p0aVdNcjRDRTJqZTNWTWN0cXdO?=
 =?utf-8?B?aGFxWXRCT095TG1IbWdpcDdLTXpRPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 5f7c79a0-7afe-4601-aa69-08daa6af6532
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Oct 2022 08:55:47.4903
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 O1MMskocYXRCAuU2paNXtd98OE0CMcXzdVJ/OaGpBYa8wA8Nh5dZj8gTLyHAJ3aTDtWuMKCBHYx6WOKObv/01jZMrrI3EkRMPWrdgo6I/iLLDzwJrKG6xQwHBkGDbXkg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8749
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Oct 2022 08:55:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58268

Hi Luka,

On 10/4/22 22:54, Luca Ceresoli wrote:
> Hi Quentin,
> 
> On Tue, 4 Oct 2022 10:15:20 +0200
> Quentin Schulz <quentin.schulz@theobroma-systems.com> wrote:
> 
>> Hi Luca,
>>
>> On 10/3/22 23:15, Luca Ceresoli wrote:
>>> Hi Quentin,
>>>
>>> On Mon,  3 Oct 2022 19:04:01 +0200
>>> "Quentin Schulz" <foss@0leil.net> wrote:
>>>    
>>>> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
>>>>
>>>> It happened that the git repositories were dirty and resulted in
>>>> incorrect files being used. Let's use git clean -ffdx to force a
>>>> completely clean git repositories before and after checking out a branch
>>>> so that nothing is left from or to another branch build
>>>>
>>>> Cc: Quentin Schulz <foss+yocto@0leil.net>
>>>> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
>>>> ---
>>>>    scripts/run-docs-build | 10 +++++-----
>>>>    1 file changed, 5 insertions(+), 5 deletions(-)
>>>>
>>>> diff --git a/scripts/run-docs-build b/scripts/run-docs-build
>>>> index c6b3965..69e3257 100755
>>>> --- a/scripts/run-docs-build
>>>> +++ b/scripts/run-docs-build
>>>> @@ -61,6 +61,7 @@ for branch in 1.46 $(git branch --remote --contains "$first_sphinx_commit" --for
>>>>    
>>>>        echo Building bitbake $branch branch
>>>>        git checkout $branch
>>>> +    git clean -ffdx
>>>>        git checkout origin/master releases.rst
>>>>        make clean
>>>>        SPHINXOPTS="-j auto" make publish
>>>> @@ -80,7 +81,7 @@ for branch in 1.46 $(git branch --remote --contains "$first_sphinx_commit" --for
>>>>        fi
>>>>    
>>>>        cp -r ./_build/final/* $outputdir/bitbake/$branch
>>>> -    git reset --hard
>>>> +    git clean -ffdx
>>>
>>> Sure this is correct? 'git clean -ffdx' does not revert changes to
>>> tracked files, be them staged or not.
>>>    
>>
>> Nope, not sure this is correct. I misread git clean manpage, we should
>> have a git reset --hard and git clean -ffdx. Now the question is when
>> those are necessary because with this patch we do it twice, before and
>> after the git checkout. I did this because I remember doing checkouts
>> between branches of U-Boot/kernel and while the pre-checkout branch was
>> not dirty, the after-checkout branch was dirty. I assume this might have
>> something to do with build artifacts of the pre-checkout build that
>> weren't .gitignored in the afer-checkout branch? Something that git
>> clean -ffdx should tackle I think.
>>
>> Sooo, I guess only having git reset --hard and git clean -ffdx before a
>> checkout should be enough and we don't need them both before and after
>> the checkout like I did in this patch?
> 
> I think 'reset --hard' + 'clean -ffdx' only before the checkout should
> be enough. However I'm not sure whether there are corner cases such as
> a file that is .gitignored in commit A and versioned in commit B or
> similar. Perhaps worth trying with reset+clean only before, and see

I guess it does not hurt to be on the safe side by having them before 
and after the git checkout then? Since the current issue went unnoticed 
for months...

> what happens. However I don't know exactly the initial problem you're
> trying to fix.
> 

https://lore.kernel.org/yocto-docs/e50abe3c777e4a23a752a3ec25ad0b2a@axis.com/T/#t

Cheers,
Quentin

