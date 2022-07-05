Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6743C43334
	for <webhook@archiver.kernel.org>; Tue,  5 Jul 2022 11:21:27 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.52])
 by mx.groups.io with SMTP id smtpd.web12.82911.1657020079710229110
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Jul 2022 04:21:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=TP+s0NoQ;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.21.52,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZL8mfU9njXk1G9796cZL20OsyCs9X18S5pEmguP/1XwesKA4KsUs2YI6tBMoweSTDlRTI9KOWnP3n1vfAIcXsH8tK59kgFNxdmqx4L+7Ji8VwLWdlyUTnis7ThYBALg4v+zLGl5UpUdLrHv9vIppVv9aR7JOfh2qpcImt6FVc32hOMVaDvEEn+VX7yUwXpjZLlwU9kDptQIU1EmdAXpKidUu8fP9lk5imaBfrOaIFj2P1qJ606sv42UcI5mn8VIG73a4t4SPeSnBkxtRzRwTvAcwyE8r1GQSA4e+Rg3xf7UscrTE1+mHbAi2xCxi/ArWYCkeuNIxq4EegLMB66/zCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t6aXUDPEyQP6T0tVrVLMfUqa7VCr0jOwLKlxcjKs8g4=;
 b=juhdBxEti9wbaWbINSoV3GymMHbHbv6JcdjxW6miXWQSFnFVEoNgW6X4WPAYV5ZH60WwjBQwAu3sMMPNEZNprtdM/tR0p4tMzpXUVH0VSJ0Bkxx2YeCL7pVeRg8D5nXT7PIfoG14LjkOdGtEtIAiTmGjDooxB3fNY7kRUkzFnauU1tuOEkdcKvWdP+FU8KjiMSACywnO1ttW8i2UNLnK6F5Abc5JEl0otQQR8IfbWMDUeNkJ7rYTmHDPdJ3IPvBsxBctdoyy07wy7DqZV3XGbZCnaLU3o1ZAgRaR4tYc+1LyNgKl3zcA5kIC+tToSYvV7o2tNEIG+hQLMwKt5IxRQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t6aXUDPEyQP6T0tVrVLMfUqa7VCr0jOwLKlxcjKs8g4=;
 b=TP+s0NoQfaLl1kQgVx9mjh+M0JbDJ1fFhiAaGMUKzYkgWBRvw1SBG3+be5rMwzkbFQk3wpbveiktx9/MILArMpn55C5cZWatCiyiSDoOcRLjeJL3if7l1+FBGD6pMVU9pjmvDXj/jmE0n8bL+ujhTA5YF3rolztSfDJKtAafsfI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com (2603:10a6:102:2aa::7)
 by AM6PR04MB6229.eurprd04.prod.outlook.com (2603:10a6:20b:73::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.21; Tue, 5 Jul
 2022 11:21:15 +0000
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::cc58:11a8:839f:895f]) by PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::cc58:11a8:839f:895f%7]) with mapi id 15.20.5395.017; Tue, 5 Jul 2022
 11:21:14 +0000
Message-ID: <0a485f9c-115d-7dad-74b7-f048b4daf4cc@theobroma-systems.com>
Date: Tue, 5 Jul 2022 13:21:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] run-docs-build: allow
 build warnings again
Content-Language: en-US
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 michael.opdenacker@bootlin.com, yocto@lists.yoctoproject.org
References: <20220622153201.2734009-1-michael.opdenacker@bootlin.com>
 <4828a5c0-59c1-ef5e-385f-1b563d3577ee@theobroma-systems.com>
 <c8b5d42614eb1dc29c203c82abe96733b42fcf83.camel@linuxfoundation.org>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: 
 <c8b5d42614eb1dc29c203c82abe96733b42fcf83.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0106.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a8::7) To PA4PR04MB9367.eurprd04.prod.outlook.com
 (2603:10a6:102:2aa::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5f67af47-d5f3-452d-9c25-08da5e78791d
X-MS-TrafficTypeDiagnostic: AM6PR04MB6229:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	LLG4mdtSYxbdMzgGChvrcIyr4sB3u2JUJ+Ils6X3uiJTCxQkhlR/RZ50VKmTJqm9yg8JKgmijgaC4qx/5lACiLgJkFnRtjNSo+qBpfoONXWFur1ErT2PkAv3UugdvUHFIFQXi7qnZhAaAlyhWMQWYuZt48uim7io7WWURYbxr5IW7GcT50t2ARbigOz+qnNbByRu2AfMyCDBtNISfGAIawf6rmtP3ugX3Wc1KOZmp4EwRiYB3w12skIqUFNwpm889SPPLywJgCJ7hTeabZTJ0ck5O9lgDzwcmtSm10Gbp7okeRSm1Gkdph2ja4Fm91xHsZjwHeqKc9j/pH4tCUcIjYCmob+rQI2UoNvPt7HUcwqNj7hoZuXUV/pC0O8EmGGYCTRQKmqaTXF2Ug9LyZBA12W/72mFoj5fA65teqZ6ErSUjuxqMsfJADeMe/6IOdJDaC6cYxzAmIYbnHY971/PJu3eIZ+evfNBSvk0dCV/ou51zF5Xsysz7a80XbEDKV9SXtFlA7XJaTm9dbTHaN/DlhS2vQXoEQO4viYFjDX3gJgA68s8UgvNECFcy0+hpgbhrLqjy9BbRtHYeNWeq9qt4nAHHrswevuVIDPZDPeEjjPAndd4+s5u7DFrnwYB8nI/aPZYY49fXXH6UEtU8EcHQmB7Doz4cW6G/O/qBmZSRtIhLlcy0YbkNT/r1BcPgyEfAcFMMSiYWMqKx/klboziBqN9qH+aLYRJauiGVvsWw2o3FLCxw3lJL6Oj3v3LyTWXyiYDhP6IH50vCZA2OIFA92nl7NtPMZW9SzMYhflZVD2Pat0V+seLyeszNm30+fjGVbv4WWlVyQYecvRhX5BEBfaSLAKQW/GF5hgdF2hyntVKCnETDzaqS8Z3OvSQBRwG
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9367.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(376002)(346002)(136003)(396003)(39850400004)(366004)(966005)(6486002)(6512007)(478600001)(6506007)(41300700001)(26005)(53546011)(38100700002)(2616005)(186003)(83380400001)(8676002)(44832011)(66476007)(66556008)(66946007)(2906002)(31686004)(8936002)(5660300002)(31696002)(316002)(36756003)(86362001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?V0R3SkE0aVBVb21qWVVjRWN3c0cvRllWakxTaTQwcjAvbWc2MmZJSVdPM1VZ?=
 =?utf-8?B?MTdOU3o4bFF0V2t4TzV0elRZeVc5S1pJQkpDeHN4QlpIam5BK1BOME4zWkd2?=
 =?utf-8?B?R2ZBcWx1c1lLdVVyYUJBTmk1VzEzVEJ2Vm5Ta0ZTNkliaXpZcVgwSElJbXVB?=
 =?utf-8?B?YS91eFBhUWJQOFFVMUpXNFkrbndCcHltME1jcWxHOWdnMVpCM3VrQmpDbDVj?=
 =?utf-8?B?ckxwVWFka3RGRTZmMjQ0dmdtTEd1VjFSeHYyaUI4cTFkNFI2b0FRZkxwQ215?=
 =?utf-8?B?Z3hMSStTMnA5cEJhTEJHaHFoUXpuYzUzUW96dFlIRG5tRDVXa3BTM255dUJL?=
 =?utf-8?B?aHovVVZFTm5XbGJGYUlsdW1ZODh6SWhsa0pvZXhmUkgxT1B3Q1hUSlliYzRX?=
 =?utf-8?B?NlBLUEE2a296UHpINWt6dFlsdGpnSGpyK1paZmhOSDdwUGNQeHV0c3lLTmMx?=
 =?utf-8?B?b09HOUNZcGFZUVNPSk5vWjdmdWU2OVhNR3ZXYThPY0dkWVYrZ2ZvcWhXYzJP?=
 =?utf-8?B?dU5LU0x3QXNqQWpseXhJSVBZZ2Q5bWtneGFkNWw5aC9XTUdWVm1ydGFPYmIw?=
 =?utf-8?B?dE93eGJpYm5ZbHZvdjRFUTl2MGc5YUVjQno2cHQrODM4MWZZcXZiMEtVL3NU?=
 =?utf-8?B?Tmw3TXl0RUovNi9qMnFWbG5zbFA4UythNWRNbmF6TkYzbFg5OEhkdFhUOS9y?=
 =?utf-8?B?Q3lCUUpTSVNwRWs5MXhTNnUzTDBMbHA4V2VLaCs5T2xNTmFVamc3ODJWY0Zw?=
 =?utf-8?B?UDVwcHNCbHpicHpPeHJVT0ZMV0Y0K1BBbS8rT05scHh2YzNLQTZaZ2tVc0NI?=
 =?utf-8?B?cUxkU29JRCs4RlcvWm45TENWM3RqdE5Ma1M1b1RjdklSOXdKWFZwL3pxZVVp?=
 =?utf-8?B?WXFLeDlORGMzWm9jUUZ5SG05NnlZNm4zeC9TdmtlWld1bkJKeVlaaUtZTWhl?=
 =?utf-8?B?UGVrRURMQlZmcWtXL29pSlF4TWwwaFVUbTNtaHllZFlpOGRuNnRjYktteTJx?=
 =?utf-8?B?NDEwWTg2VTBiUUk1a1V1U2FvdEd6RWQ1Z3dTZHYzWHBCTEY1WHllZVoxR2x3?=
 =?utf-8?B?cCtMNitpSTVrSVRDRzhFTEQ5d1IweXZMOE12K0JseUVublFoKzNVUzJha1dO?=
 =?utf-8?B?MTFUNUUzWHlWRUJSY3QrWEVKREt0dnVRMitGbC9ja0ZrOHFJdUdvSkFvM2Qy?=
 =?utf-8?B?TjFlb2o0SXFmVlFiWFVzcW8yRHNtNHdNREsvQVZ1Sy9mNnBERHU3eUlScWhn?=
 =?utf-8?B?UEE5Q3BGSzJ1ZVRBY0NXQUhab3YvN2JTTWRIRGZkSGxMa0Z4bUtvUExkUGlQ?=
 =?utf-8?B?L2QrZkIvSld1YVNmNXNHeXpsdXhVMFRzT1EwbG9Xa2FxcW4xdGxxekI1QStE?=
 =?utf-8?B?cXFKOFpiUE1sL2EwVnVubkliMjZ5R05yU1VXVmphNWd6dmFDNU9nV1d5V2pL?=
 =?utf-8?B?UitRT2laakJ6QVRldFJubmcrTkoxR3Z2TENFTUdrUkZxbEJnQmo5ZGRQV1VL?=
 =?utf-8?B?MW5rbFB5ZE13VnZBa2NzRTZwZnYvNlNiQVFyUWVJQkI5Y0xMZW5pczN6QXBx?=
 =?utf-8?B?Q2pPQ3Q3VVlXNkhGUTdEbm9sUncwNnJVOU5vSW10U1JiNWZ3OGFWOFpkc1Na?=
 =?utf-8?B?R01MZDRtaGR3NEhndmRqMDliUFUzU29tVGQrbCtUZkxwTHJXekNlNVBvV1BB?=
 =?utf-8?B?VUI1bXFaeEEwT29QTlZzdzFKRk0yb3krN04vYVF2QWczYVVGSXQwelp5eDI3?=
 =?utf-8?B?Y0ticWRjMitUWGlXOThwU01LZDR1T3VsQ1lqc05hN0YzTGV2dGxNWGhNbDln?=
 =?utf-8?B?TXd2cEtYaW56Rk1tNkw4QzFCYjR0b1VXc3o0blZCVm9yamhLSGczWWZVMHBz?=
 =?utf-8?B?L1VNdmhVVHBWQ2xucWlxZnhHSTI3WHVwSlNmWmxvR0xVU0d6QkJ0cWtEbFZu?=
 =?utf-8?B?dm9mVm0vczNFTHQ5eGFWUnc4QWp2b0dlSDNJQXJrOXdZQjlUcFJXa1BDUXpi?=
 =?utf-8?B?Y0tZS3lyL2QrU1RSVGc5dzdHbGVXT2VEaUlxUWtLbVhiYS9DYzZPbWJjQ2t2?=
 =?utf-8?B?czkzc0JObURCK1hkSmtkdk9saTZYTjlRY1V2WC8rNUJIOUtic05hMTFtOTVn?=
 =?utf-8?B?LzI2R285ZlYrUExUQ0hNdjFxdTJYa243V3BqZlBvSWtMY3RrSnc3TmxkMVZ6?=
 =?utf-8?Q?Y9MT2nlrBZASU+DgKnYiX7I=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 5f67af47-d5f3-452d-9c25-08da5e78791d
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9367.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2022 11:21:14.8510
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 5FP7K6wg45vIq9FYn4K4cN4tzRvrF5lUhb/29+UhIuOMBvumm+H4q7TwG3+8vSrApYdZFuzt3X9CHn+nFAZXV3baFnPa7qpVmbaqsJTnUWc/usTMsawmcU2ogOGqJf9Q
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6229
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Jul 2022 11:21:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57450

Hi Richard, Michael,

On 7/4/22 16:23, Richard Purdie wrote:
> On Mon, 2022-07-04 at 15:24 +0200, Quentin Schulz wrote:
>> Hi Michael,
>>
>> On 6/22/22 17:32, Michael Opdenacker via lists.yoctoproject.org wrote:
>>> From: Michael Opdenacker <michael.opdenacker@bootlin.com>
>>>
>>> This allows to switch to a more recent of Sphinx
>>> which will generate warnings with old versions of docs.
>>>
>>> This way, it's not immediately necessary to patch
>>> all such versions.
>>>
>>> This commit reverts
>>> https://urldefense.proofpoint.com/v2/url?u=https-3A__git.yoctoproject.org_yocto-2Dautobuilder-2Dhelper_commit_-3Fid-3D8273124feb9da2ffe93fcee7c4529d5597e1684a&d=DwIDAg&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=je4C362aUVxZ2rdozdrQVTgzhi9iRYrxNfYtH5LHkXdlsay9SEphJ_ekBm4830_n&s=9u5-2R_NLEQy5w0pFgklKIUQnAvVLuHX1ASaeEBBJJ4&e=
>>> which originally reverted
>>> https://urldefense.proofpoint.com/v2/url?u=https-3A__git.yoctoproject.org_yocto-2Dautobuilder-2Dhelper_commit_-3Fid-3D931d409b255a85f2217ca093d8391a678ce00ddb&d=DwIDAg&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=je4C362aUVxZ2rdozdrQVTgzhi9iRYrxNfYtH5LHkXdlsay9SEphJ_ekBm4830_n&s=bTED2gTptfT6bSvLayy3fEpQJyUdbo5gLlt7ZGKkD1c&e=
>>>
>>> Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
>>> ---
>>>    scripts/run-docs-build | 4 ++--
>>>    1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/scripts/run-docs-build b/scripts/run-docs-build
>>> index 648a29d..0f74520 100755
>>> --- a/scripts/run-docs-build
>>> +++ b/scripts/run-docs-build
>>> @@ -63,7 +63,7 @@ for branch in 1.46 $(git branch --remote --contains "$first_sphinx_commit" --for
>>>        git checkout $branch
>>>        git checkout master releases.rst
>>>        make clean
>>> -    make publish
>>> +    SPHINXOPTS="-j auto" make publish
>>>    
>>>        if [ "$branch" = "master-next" ]; then
>>>            branch="next"
>>> @@ -136,7 +136,7 @@ for branch in dunfell $(git branch --remote --contains "$first_sphinx_commit" --
>>>        fi
>>>    
>>>        make clean
>>> -    make publish
>>> +    SPHINXOPTS="-j auto" make publish
>>>    
>>
>> What about doing this for all branches except master? To have at least
>> some checks and not completely disable the warnings.
>>
>> I'm a bit afraid we'll just not care about warnings anymore since they
>> won't fail the autobuilder anymore. I also understand it's not really
>> sustainable to leave them on for old docs since they won't be maintained
>> at one point in time but we still very mnuch would like to be able to
>> build them.
>>
>> Not sure what's the best solution here right now unfortunately :/
> 
> Enabling them for master could be a compromise, I'd take such a patch
> (Michael is away for a while).
> 

Some warnings are actually valid. Such is the case for the one that 
warranted 
https://git.yoctoproject.org/yocto-docs/commit/?id=9a797dedf6708da3e7ce789c5c8735e5d891cde4. 
The issue is that we build the docs from old versions with the same 
version of sphinx. Therefore, this patch fixes the issue in master but 
should also be backported to all other impacted versions, even the 
unmaintained ones. See 
https://docs.yoctoproject.org/dunfell/dev-manual/dev-manual-common-tasks.html#recipe-syntax, 
instead of a link we now have a path between quotes.

There are two ways to fix that one warning:
  - add intersphinx_disabled_reftypes=[] in conf.py manually from the 
run-docs-build script, c.f. 
https://www.sphinx-doc.org/en/master/usage/extensions/intersphinx.html#confval-intersphinx_disabled_reftypes
  - patch all (tagged and branch) releases from 3.2 to current master in 
scripts/docs-build-patches,

I prefer the second option because it feels less hacky, but that means 
MANY times the same file added to docs-build-patches directory.

The same could be done for the patch I just sent for yocto-docs to use 
the %s substitution characters for the cve extlinks to fix a warning. We 
could just apply this patch to affected releases (kirkstone-4.0.1 tag + 
kirkstone branch). I could technically request a backport to yocto-docs 
kirkstone branch, the only thing I don't like is bumping the min version 
requirement for sphinx for a release that was already released, but if 
that's okay with you, we could avoid having to add patches in the 
autobuilder for every new tagged release of kirkstone.

I'm honestly not sure there's a lot of benefit in disabling the warnings 
for now, or enabling them only for select releases. I understand that 
this increases the maintenance burden on unmaintained branches every 
time we update the sphinx binary in the docs buildtools. However, we 
missed this new broken link for almost a month now, which shows we don't 
look at successful docs build logs from the autobuilder.

Cheers,
Quentin

