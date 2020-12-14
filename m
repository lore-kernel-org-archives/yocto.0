Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.3826.1607980290231077493
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Dec 2020 13:11:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=DEKJlnNV;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: randy.macleod@windriver.com)
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (mail-eopbgr680075.outbound.protection.outlook.com [40.107.68.75])
	by mail.yoctoproject.org (Postfix) with ESMTPS id F3E9F38C135B
	for <yocto@yoctoproject.org>; Mon, 14 Dec 2020 21:11:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yu+hKWnAfpmE4J7IDFbkh8lvfo34qTEkxARiF2Xcyy9D3BtMly2obr+ZYg1pjRAog9NdH9WKBdp0kANVjqQ9Du1NvnEoTAe2pB6TrHxmBw9XjYL4U5TJHBQTm6O/+TPmwooTiHI+y5LZph6uKvynvAv8vHCWe511NcdCIgPn80V05uwTsoybLq6lzQhbO5T48mPNLKGWAC8EppRH9EbQTIzcDIzCfCEO/LK8st5G1JJ7NMF/8jSTKnc1VhlCe1RoNyznUvc5F1vngfIOW2OYxs6YSmFWjZcLanRq8m4211f1xTCzW9enFhU1z0TvXULoTjXUWfk9x69yqJvBY7XTeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X43AhWRpLjVdj3PBE17A06gsW31gfx8iu3Ips35aHjk=;
 b=gbn3w29xN5Th9Trx76fjwIi5zLxEx1maolZlLcJvx1Zci+Rwaw04AFCVBlSctiMXkBUGwDtNrhVSjL3vs+dru3JHkHx1jhKgN47yrGuk9eeae7TCxH1fTnywr22YLEPjWgI6Zm7u5Oe/KDjYuv/blhnkQDief9T3hy5vm6EsPN00wAxboVJ1yZJmgt54dy3FwV1h8g4xwcK8YN2izBpPxg5lU3uDEQn7iw9EnEbJ4HUNmuUUjhhsqOKY5lxdo2nNC2HNGjnwU/Ytbld7rAgqPTR9QqvJjbHHMFZmsAtEtJOG02EvK/iexXEyraN820fn2W5TscM9rT6r+Y/pU2voTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X43AhWRpLjVdj3PBE17A06gsW31gfx8iu3Ips35aHjk=;
 b=DEKJlnNVBsS2puUad4Lk+y74Le096dGxsdBdgNhzSd95tur80CqCY/HddvyU1bO6USVxukMM0KvpvhH1xwcCKWlExxFD0fyKzTa7RqUo0iuNZFXfs05ZgByPno/fugnd1tUu1u5444kwRUsBqV4MfB8GRxGRqzHPKFmlVy6aLVM=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM5PR1101MB2188.namprd11.prod.outlook.com (2603:10b6:4:53::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.13; Mon, 14 Dec
 2020 21:11:27 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::7dda:eef1:5113:c588]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::7dda:eef1:5113:c588%6]) with mapi id 15.20.3654.025; Mon, 14 Dec 2020
 21:11:27 +0000
Subject: Re: [yocto] [meta-tensorflow] maintained?
To: Philip Balister <philip@balister.org>,
 Marek Belisko <marek.belisko@gmail.com>, yocto <yocto@yoctoproject.org>,
 "Jia, Hongxu" <Hongxu.Jia@windriver.com>
References: <CAAfyv34BX_E69-9bPbT2NRikT+uXHSsNVvxg29Tsoi490ameig@mail.gmail.com>
 <ff6f0dc7-7f91-6135-3abe-c7ecb7a0f118@balister.org>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <c54eb116-e11f-d389-1316-df74d413d8b3@windriver.com>
Date: Mon, 14 Dec 2020 16:11:23 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
In-Reply-To: <ff6f0dc7-7f91-6135-3abe-c7ecb7a0f118@balister.org>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: SJ0PR03CA0202.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::27) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by SJ0PR03CA0202.namprd03.prod.outlook.com (2603:10b6:a03:2ef::27) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Mon, 14 Dec 2020 21:11:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d809d255-76b1-4277-f474-08d8a074d1eb
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2188:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM5PR1101MB2188E1E492717715E1E6B708F8C70@DM5PR1101MB2188.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	BYwvBU796lObQSFZ4nVCCwY8B0k9Qd5FK0OKduTf0HiAYHLgedPaw4LW554KhSc3J3ZZGycCUVLZNcLp7Bjv1lQhfRqBf6yRyKne/NpaUyTyRtjeVQmskoG9+QZJQKtR93gyhydalh/VCWelur9dP0Su9jgvfHIZDuFX4lwygU8r25mByNDBc0bS8yFcFmBl1HGuRhixR1jK864hx98oYsSLpCywru05jgEobIr3TcSelV/Tm2nMSkVpONdgRc3kfKOiZr3ZumZTwy+06iSCrIOkqoLvJOQRl2bwI9ABZoOgv+xx6yXDwjhqQoPVbsOFPw8kLZfhCKIzt12IxSRT9UdeVMexCyRvnZygy0O6ONkQ7+1/7KJ2G5LPib/auXboTvOgwz15VSCN4IpfvcgbEhUrxfaTDJkKEiPDN+HJwv2Lyn2L9/T8dhC+Gl9bgwr2wVwsoMQFUhw9JiuTe97w6njtvnXBRTUL55xua5YSppT1Kug0Gh/hq8l8ZdiZ8n2kFkJpCx1A2NVpqw/T/g2ulA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(346002)(136003)(366004)(966005)(6486002)(31686004)(6636002)(86362001)(8936002)(4001150100001)(33964004)(956004)(52116002)(6666004)(34490700003)(66476007)(66556008)(66946007)(110136005)(16576012)(31696002)(2906002)(16526019)(508600001)(8676002)(5660300002)(83380400001)(36756003)(186003)(2616005)(53546011)(166002)(26005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?aDFHVjdRcGhJWkNEcUhJd2lhYUFTZlBjSE9ZR3ExTDRjZXhCL2JCMEp2clRV?=
 =?utf-8?B?SFVBKzBZU1ZLT1VZb2RjZGltSTlMTGovdHU0QmIzTXZheVVDTFpoalluYnNY?=
 =?utf-8?B?b1RYL2pOTGlMY3labE1kWk5EN1ViNWUrK3ZFeTRDcUp4MEExTmhnM3pNZTR2?=
 =?utf-8?B?a0dOMno5Mms5cXBubmtDaTJ3bk81NEk3L2E4Rk9Bd3VVZnNMSTB4R3A2Tk5l?=
 =?utf-8?B?ejBaOWJTRnE3c09XeGd4SDVldHptTjRNWW1WM0lBbXVIcjM1OHc4L2kzUWtx?=
 =?utf-8?B?eDYwOVFOdkhmT3FRYjBlRHRQUzdqYU96dlI4TlVGc01mTGM2NHNVeTZuRkJV?=
 =?utf-8?B?ajZBeFVXU0ZDVmhETDBMajI4QmczNVRHb2QrUldBaE5qMnp6NnVxN1UzQ0I2?=
 =?utf-8?B?cnJ1UDBkRFFLc1hnNzBPbVpMcmRQbmRsVzMxT3NUSllFeFVsWE55UCt6YlBX?=
 =?utf-8?B?WmZOYzV5QjRXUTZzQkZteTNPSS9hK2J6aTRwMEVKYjBoWldiSThmNTBqRU1Y?=
 =?utf-8?B?Z0R1ZFc2RTFBQU5TdFVpRUJjSEN3MDJhU1RlcUZTTnJ4T1BodW02Q0VXMzRm?=
 =?utf-8?B?R1lIT1NIV3BXZ21JM0Qya1FKanlPcU1oS0xLdGZSZHkrY3JsN0pIL3lZdFE2?=
 =?utf-8?B?cVVQN09JMVcwTFNYNFN5aEQyOWNpM1VyVVVFN0ltK2dOdFRuNGpCdkR1Nyto?=
 =?utf-8?B?UldMVDE2em5GRHRPUnVONjc0dnVUdS9Pb09kZVZkQVBBQTU2WkRwWi80dUl5?=
 =?utf-8?B?ZWJNK1ZkM2trQlMzTWVSbUZlYmZGL3JWd2RIZ3BYcU11NzQ4azFudkFzVVh2?=
 =?utf-8?B?NndNa3kyc3JUM2M4MW1CL2RWd055enh1YVZBUDBuc043ZXJ0Zms0UnFwcXFO?=
 =?utf-8?B?bHk2cHhRNVhmRGtFcDlrMEh3YzZ0RHNVSS9peGpxdHp4SVd3VjZTcjd5VFVI?=
 =?utf-8?B?UldNdWg3anJhRGtjM3VpdzRXNlV2YWcxNFg4dGwzaHpXSTAveFhpMGF2M0N1?=
 =?utf-8?B?NnhwRVhjWUhIVjFYdXRvK2x1dW1NcE14S0dNM3M0KzQycHFrd0FLL1VjSExa?=
 =?utf-8?B?MitrMFNJZk5FZktNOUxDYTFJUG5zcWYvMEVYSXJBNDhCUGMzdFQ0NThLVkFw?=
 =?utf-8?B?V0hkMEYwTUhldFV1RGhPdVFSaUtDczNlR3VyUnRhU0wzUG9Ka3lTblh6WHEw?=
 =?utf-8?B?SXFvZGNwNkQ0VVlDMmZRV3dzd3YxdFRCZkdsL3YvR01hbWVpcUh4TVJmU3JZ?=
 =?utf-8?B?SlhTZHIvZFp1NkJVTWljU2NUalAxcC9mU0x3S1NDQTgwOTI3Q0pXZFRPL3JR?=
 =?utf-8?Q?YEG6pQTrOcQSHwzzx2I44EUVkkBbA6IImP?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2020 21:11:27.0358
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: d809d255-76b1-4277-f474-08d8a074d1eb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xLRIBrboG16FhF1iJWDC9lr7+W3j6ZP2y7xJIGklT7EBR0zj8EvjBLEeCB2L/QcEtDOTgB3hwrWh+53/LH8/8PM8x9e0pnmtYJVQe761VoU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2188
Content-Type: multipart/alternative;
 boundary="------------6349C01B86334FA27BC882E1"
Content-Language: en-CA

--------------6349C01B86334FA27BC882E1
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Add Hongxu.

On 2020-12-14 3:03 p.m., Philip Balister wrote:
> On 12/14/20 7:56 AM, Marek Belisko wrote:
>> Hi,
>>
>> I'm l;booking for a tensorflow recipe and forum that meta-tensorflow
>> have support for it (also saw that gatesgarth branch is there) but I
>> cannot build tensorflow + tensorflow seems to be a bit outdated.

Yes, it is a bit dated.
tf-2.x is out and I think that Hongxu has an uprev
underway but I'm not sure when he'll get to finishing it off.

Hongxu?


>> Anybody know if this layer is maintained? Thanks.
> Searching the layer index for tensorflow shows:
>
> http://layers.openembedded.org/layerindex/branch/master/recipes/?q=tensorflow
>
> So the recipe exists in several layers. Looks like it is time to try and
> get everyone to work on together on one layer. I ahve a recipe that
> mostly works to build the c library part of torch that needs a home.
>
> Philip


Nice, I think a new layer called something like: meta-ai

would be good to have.

../Randy

>
>
>> BR,
>>
>> marek
>>
>>
>>
>>
>>
>>
>> 
>>

-- 
# Randy MacLeod
# Wind River Linux


--------------6349C01B86334FA27BC882E1
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">Add Hongxu.</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">On 2020-12-14 3:03 p.m., Philip
      Balister wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:ff6f0dc7-7f91-6135-3abe-c7ecb7a0f118@balister.org">
      <pre class="moz-quote-pre" wrap="">On 12/14/20 7:56 AM, Marek Belisko wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">Hi,

I'm l;booking for a tensorflow recipe and forum that meta-tensorflow
have support for it (also saw that gatesgarth branch is there) but I
cannot build tensorflow + tensorflow seems to be a bit outdated.</pre>
      </blockquote>
    </blockquote>
    <p>Yes, it is a bit dated.<br>
      tf-2.x is out and I think that Hongxu has an uprev<br>
      underway but I'm not sure when he'll get to finishing it off.<br>
    </p>
    <p>Hongxu?</p>
    <p><br>
    </p>
    <blockquote type="cite" cite="mid:ff6f0dc7-7f91-6135-3abe-c7ecb7a0f118@balister.org">
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
Anybody know if this layer is maintained? Thanks.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Searching the layer index for tensorflow shows:

<a class="moz-txt-link-freetext" href="http://layers.openembedded.org/layerindex/branch/master/recipes/?q=tensorflow">http://layers.openembedded.org/layerindex/branch/master/recipes/?q=tensorflow</a>

So the recipe exists in several layers. Looks like it is time to try and
get everyone to work on together on one layer. I ahve a recipe that
mostly works to build the c library part of torch that needs a home.

Philip</pre>
    </blockquote>
    <p><br>
    </p>
    <p>Nice, I think a new layer called something like: meta-ai</p>
    <p>would be good to have. <br>
    </p>
    <p>../Randy<br>
    </p>
    <blockquote type="cite" cite="mid:ff6f0dc7-7f91-6135-3abe-c7ecb7a0f118@balister.org">
      <pre class="moz-quote-pre" wrap="">


</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
BR,

marek





</pre>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
        <pre class="moz-quote-pre" wrap="">


</pre>
      </blockquote>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------6349C01B86334FA27BC882E1--
