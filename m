Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7346CC433F5
	for <webhook@archiver.kernel.org>; Tue,  4 Oct 2022 08:15:36 +0000 (UTC)
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (EUR03-VE1-obe.outbound.protection.outlook.com [40.107.5.54])
 by mx.groups.io with SMTP id smtpd.web10.8163.1664871326674350088
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Oct 2022 01:15:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1
 header.b=CPImUu/l;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.5.54,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eFvyhGu+vvW7ALwWRIS3j7VH7YI9WIoXIx0BLm/jLrBAfVU2eg/UbDKpbHtInILNlSih4j6u7WI2ySDhUcEoqtKCjikIHHjzsd3vGYbV+yR7SARN0rpFPH2IswrGjrvGT6nW/sLtp9J+C/ygl0H7IkAfBdQo3blM/tayKTwuudtJ/jYAwY+r3f3YNkDp2NN2NOtWhU6L6+23qSx/i+EOFZ1WvCo4gP2Njk78a6CVX1RQvrUzBiWfBs9219zso6rEdfG+QpfIJfm/jEgDU8LuUfGHlRsB7+zoBxWqm2bo0AaOm3nvuwK3I9nktp623t/fTJU29+VDbuGgmqXNUnhJMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m72Z/g8J3Gkaa0ZNaUa5+3zH8LjTl4VrgYuZMIkKVCk=;
 b=I85pa8OLmlx0l0MBg3bQn3Qd7rXnELn4BmW1BXaeImtP0XRXQpVB5LpLJpXUyTf5NwJotLLwhY8lFSGEa6iXSaDH3agDZ9e/UVYLeOT1yS1kxzqJ7OlJEmVjdCuxynAZBp+XzcokQyTD6EPv4VvQ4t5/vZYXASim4uu5dwr0RfezT/IdADjrVPbgRwPB+F5SmGsV6ScB1pOZNaxTDE2+5fv/LKPw5eMZ8lq1LkQx/GvO1ql3hsryDjsXPDbTJBccc0vwufLJIc5rSKCwp2qNGhy30DWCKHCxvNTCHH351kxeixHKimojcYQMvmTkW16h1H7dOB+XuczYqeK8dJooQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m72Z/g8J3Gkaa0ZNaUa5+3zH8LjTl4VrgYuZMIkKVCk=;
 b=CPImUu/lqj+wSm3qB8PSFA5fCEffw2iuY/pBAPb0O+w8asd1U4gzK2XK8epSllNIZo31ulO+m+H1tuSxdhjiuVmcIt5UBspdOHec8/b00osMzj3hCrox55t5F31jFupsiE6fkpgJASmSlBFlhYiNabPqHmrDIRlfHwCamlvmkjIJIXh7mS4DruCvqZ03fGmRPoIYb49CFlB1+nT3yWfnqjD4N/yQctb67y7dS8uUHeeEVkq1rh4zVvF9kp9jkZic80Q4HL0BF/7YAE9LpuCV7t/vvADAG8uNManBUI85kI99YYG/VfkFhjEHn8r6RdJ0/1DciSOXa+EBL5zze7SiIA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AS1PR04MB9359.eurprd04.prod.outlook.com (2603:10a6:20b:4db::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.31; Tue, 4 Oct
 2022 08:15:21 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5e5e:1989:e5ec:c833]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5e5e:1989:e5ec:c833%3]) with mapi id 15.20.5676.028; Tue, 4 Oct 2022
 08:15:21 +0000
Message-ID: <38d89bc7-1317-9670-a07c-64d28c8baff9@theobroma-systems.com>
Date: Tue, 4 Oct 2022 10:15:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] scripts: run-docs-build:
 make the workdir pristine between builds
Content-Language: en-US
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: yocto@lists.yoctoproject.org, Quentin Schulz <foss+yocto@0leil.net>
References: <20221003170401.12827-1-foss+yocto@0leil.net>
 <20221003231505.0f16377d@booty>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20221003231505.0f16377d@booty>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0091.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a1::11) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AS1PR04MB9359:EE_
X-MS-Office365-Filtering-Correlation-Id: 73eacd3a-a669-43a2-3392-08daa5e094bf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	jLPeK8I2QHV/EijouuzQsafHWLfBFUjGeg6qoZe53SMb9jiUHSJllIAsrIvBM6jehupI+rGEJFxb4Ct9dkAfTRJARVltqqoAo6qGXUm1dqgD3CXhGD1RBxgdTWf4/bGcqvD4ClikAhtO12kYM3FKdXGMSlVN7MxH6cVaarR2H7XpzTUV5WB1i1oFQUolRn5LByKuBjea9h4O1v5QPt1XDnkB0oqTJcZyqSwwwQNYx1iZGBbV2abVD+UJ+ppiPP0s9r9gad2f/fvhjyIYZp1btTuxuWhXXiius6nIltqLGGsJJu41PH7gy2Ryws4ViHV4+ANJJAjTrfgzzjMdRRFXiPM24zG4Ybv+4HnKf0mFFi5tZsyuYwzHFwaGLElS2w5lbUSrxdFbHiF8W1H9+6NEHnB7ltrbJBDNJHPPb8ePTr+/b//w32o+KUowzm5wTR6RAYsnUjXvr64dp8wFM6H0VpSWz8SL6BQ6ohgPaiS7kNOpqh+a9dBCJCmBWefHJYdct1ZCywmdinceP29+hWoqmdnbvZlnegtN6SYTH+45eEVdNgOcdnHahdCOviH96uZB5ZZdaWmJhyNcbWwCQMdPfj8KBBACK+a9BFX4LtxrRQpGOsxa6D48k6lGXMSTt1M7x6OVZd6uEcgwgPnv5ntw8fbNcfApt8w9aAnbcfpDobE8wJXCsmww9j5Ys3g3vM43UeLntQisb9Ubyza6+g51wjfoRmxXOfgieIoyJRF/NcAb5VvAznIgwVx84UEnmKn0dzytYNUskb7+mBCqvtQv0eLV74kUVLEva8HPNVQB6qQ=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(136003)(366004)(396003)(39850400004)(376002)(346002)(451199015)(66946007)(66476007)(66556008)(41300700001)(8936002)(4326008)(38100700002)(31696002)(83380400001)(86362001)(31686004)(186003)(2616005)(6486002)(478600001)(53546011)(26005)(6512007)(6506007)(8676002)(316002)(6916009)(5660300002)(2906002)(36756003)(44832011)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?am94V2RRb1U1NHQrdWtQN3FxSXpIeUdlOFZlMW44TGd2clVzVklSWHJwc2Fh?=
 =?utf-8?B?bzArR3RDbmdZQldHdmRPQWlrTVJ2V3VPMjNhRVZwRzMvMnpYTVZkaXZ5SUht?=
 =?utf-8?B?aGdKNkh0M1g5Qkt3ZjlhRmEzUU4zQUhJa2lhSHF5STRlQk9JdHZCNVBHSjNZ?=
 =?utf-8?B?SE9COHVId3h5NVV1WGg2MjJOQjlNQm1xYXBIdjJrRWdkdDU3Yy9sR0xLN1Qz?=
 =?utf-8?B?a2dkaDFXSEI0c2tlOHdoOUhlZjhNdk44eGVKcUxwaktTYW5JTDEvb3JBQS9T?=
 =?utf-8?B?ekZmNHptU25vazJKazJHK2E3OFc5WGZ3ZHNuRHg0dThlL2JWZnlQbXZmRHJ0?=
 =?utf-8?B?dG1zdDdlVVVLcXQ5ZlNGR3hWL3E1dW9VNzV2T2cxQ3ZEN1RYaTR5TElXbkhP?=
 =?utf-8?B?aEFvbVoxZjNTTGdocDZxOXVpWHBOTDBYRzRZWlJtTitRdFJvSzE3MlQvSWsv?=
 =?utf-8?B?VVQ0MTJpeUE3TjAxNEV5RU5TR3dFM2NDMlhXZXZHOU9NclFwTVRtWkZDM3Js?=
 =?utf-8?B?QmtQTkVDRm02YzBTVFhRSnljYlcvbVorTlphWFpQQXVLWVd2U1pRaFhJaXRP?=
 =?utf-8?B?SklYUS9tYzlNOSs1UXdJbldIWjhkRys5OWpIU25DY1EzR25TdWI5cStzTGoy?=
 =?utf-8?B?dWtaajZkbHZjeFBrbnRkTU5vNktRT0IxWmM4U2dsSEtDdGdUamtKSnJzOXFp?=
 =?utf-8?B?QnNaMFZyY3hINE5CRmF1TEhadTY3NFovakJBa2pucG9LWW5HM2J3QnVhYzU5?=
 =?utf-8?B?QjExaTAvSkpkUEtuRVNDalpkVFdLK3YwK09VaHhiNk1wNTZ4N1B0M3BScnRZ?=
 =?utf-8?B?dE1HTk5ZaGtONEh2TjJLQVdsbWdOWjhFY0NZbG5IVmFiMEVzUDAzc0tVK09X?=
 =?utf-8?B?elA2d28zSUFCcHNPQUorOEdYYktKRng0WDJYQm0yNGxFWEFUSG9WWUhXQnY2?=
 =?utf-8?B?d0ZEOWc1ejM5Y0ZweThzQjVNVGtGTE5XTjkwWmhONFNaR2lyVU5QWHh4RXZa?=
 =?utf-8?B?ZXFtUWUrUG9lajJxWW5qMGkzbVpMcTBCNHZMSkVKMXFsY0Q4YmlHZ2lSZEFF?=
 =?utf-8?B?WVlpbWp4NVhnWVFJTFRJQmxWN25ndlRId3Fya3ROdVpkcjhqaExjakJsVkxr?=
 =?utf-8?B?SGMrSWo4MFNtVmRiUFJkWCtFMXBhY2w4MVZCaXJVSHA1RmJuRnpyNE8xTC9L?=
 =?utf-8?B?dW84Y3NacE5zMG5CYlNiN1JybEN5UG5oK2YwcjU1ajR4NkZIeFVOekpyd1di?=
 =?utf-8?B?aTNOUmdkSldzb0RtcHJrQ1VaenA0Yll3ZS9ZdmYwQUtGOVF3OW9NZ3BOTG5w?=
 =?utf-8?B?R01KV1M1T0JJUUp1bVkzcGZMM3hhZlZnWWxud3FPVHJmK3hMYzlsVDF5UkJY?=
 =?utf-8?B?NnA0UHpMV2EyMFBZL2NheGFiUGVxVU4yQlVra1NNNUROZlQrajk0dUJ0Vkds?=
 =?utf-8?B?MVZjQlhvcE9rZDFuOFU2V2t4aXkwcnhrQUtWUkpiTnp1bjVVTWc2aGlpOTNW?=
 =?utf-8?B?YXpEWmNaUTZLSHhKQ0szZGpXNDVsbTNGVmlaTlBoc0h5TXdleUVZUXhwSDcr?=
 =?utf-8?B?aEFXNW5UVURTeVJHaFZUeEloNktzeDlzK1NuWm1aUWRKQ1ZXKzVvOHF6YkRD?=
 =?utf-8?B?R0hVbG9zQTdqWkErdGI0czlJUG5lTW5YTGFmbWFrekhpMDNxMytoOWVLU0Fk?=
 =?utf-8?B?MnJKY25mUlhoS1JTN0VoaXVCMTNGRTh2emdkaTZvWDRKWXMvaXEvZDNJYVZI?=
 =?utf-8?B?aEszMEFxZkxFVU10YUxuTmU4dFo2eFBmblJDR2hGdE5FSU40c3JQLzVBMWlR?=
 =?utf-8?B?VU1YOFl4S0M4N3QwL091OGdkYklwdWhidWRXQnRjWUdPNUZVVEszUk01ZVRx?=
 =?utf-8?B?eHRhOHUxcXE4Qk1JUlZoczJzTmhKU0dRb3RBTzZLUS9mM1QzSFZDTUJ1VmVZ?=
 =?utf-8?B?cG41SlJBaEJNZXVSRVR0Wm9iaXJuVi96aGNpemJNSi9mQWFCaUxzY3VhZjkr?=
 =?utf-8?B?dW1VMVUvd3h5c2o5UlBDek9aaXpRa2hHMmo0bmx2RGtwc0NqWlZkVW55SFk1?=
 =?utf-8?B?TldnUkt4R1dhd1lEanpDcFd0NU1oNXNxRFYxME54S21NclBzNXNqV3VUUU5J?=
 =?utf-8?B?Ui95L2RYOTZvbTMrSGtQZDBPbUpNaXZ2dm05RStFRTBuU1ZrWlR5ZmladXlp?=
 =?utf-8?Q?lKrkS16L1JG2E/V5STVsvSg=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 73eacd3a-a669-43a2-3392-08daa5e094bf
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2022 08:15:21.4724
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 mICt/xkkm00/DOdg1n6ertJHXzhZFpCjJAgGQvIIvFmMXfzBlJ/M9DP6NuujnPgGpWyQ6cZ+a4XOZHZiWSMSp67ycF0DmkYkPVQIrqgwyVfRe888B319wgDsCzqlX8fz
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR04MB9359
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Oct 2022 08:15:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58262

Hi Luca,

On 10/3/22 23:15, Luca Ceresoli wrote:
> Hi Quentin,
> 
> On Mon,  3 Oct 2022 19:04:01 +0200
> "Quentin Schulz" <foss@0leil.net> wrote:
> 
>> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
>>
>> It happened that the git repositories were dirty and resulted in
>> incorrect files being used. Let's use git clean -ffdx to force a
>> completely clean git repositories before and after checking out a branch
>> so that nothing is left from or to another branch build
>>
>> Cc: Quentin Schulz <foss+yocto@0leil.net>
>> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
>> ---
>>   scripts/run-docs-build | 10 +++++-----
>>   1 file changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/scripts/run-docs-build b/scripts/run-docs-build
>> index c6b3965..69e3257 100755
>> --- a/scripts/run-docs-build
>> +++ b/scripts/run-docs-build
>> @@ -61,6 +61,7 @@ for branch in 1.46 $(git branch --remote --contains "$first_sphinx_commit" --for
>>   
>>       echo Building bitbake $branch branch
>>       git checkout $branch
>> +    git clean -ffdx
>>       git checkout origin/master releases.rst
>>       make clean
>>       SPHINXOPTS="-j auto" make publish
>> @@ -80,7 +81,7 @@ for branch in 1.46 $(git branch --remote --contains "$first_sphinx_commit" --for
>>       fi
>>   
>>       cp -r ./_build/final/* $outputdir/bitbake/$branch
>> -    git reset --hard
>> +    git clean -ffdx
> 
> Sure this is correct? 'git clean -ffdx' does not revert changes to
> tracked files, be them staged or not.
> 

Nope, not sure this is correct. I misread git clean manpage, we should 
have a git reset --hard and git clean -ffdx. Now the question is when 
those are necessary because with this patch we do it twice, before and 
after the git checkout. I did this because I remember doing checkouts 
between branches of U-Boot/kernel and while the pre-checkout branch was 
not dirty, the after-checkout branch was dirty. I assume this might have 
something to do with build artifacts of the pre-checkout build that 
weren't .gitignored in the afer-checkout branch? Something that git 
clean -ffdx should tackle I think.

Sooo, I guess only having git reset --hard and git clean -ffdx before a 
checkout should be enough and we don't need them both before and after 
the checkout like I did in this patch?

Cheers,
Quentin

