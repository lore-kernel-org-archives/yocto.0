Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.4309.1607995910292907126
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Dec 2020 17:31:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=oYFqvazo;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2063.outbound.protection.outlook.com [40.107.223.63])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B00A638C11E1
	for <yocto@yoctoproject.org>; Tue, 15 Dec 2020 01:31:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YJSTmOaLWgAO3vA/pCHVnx4A7Jygrn21BJB4pW0otlHWBNXw4K0jGZF/6ljOV4nVMPjkvPbh030ABlTcVyQR2ayYDRa04YdF+3TWD0H8FNhOZe581COuiA2Y80FwB3OmfirBk0YPKDjvS9/gDemEggrTfzKHQu1K4jpRqUU9tFyvKfIcmWltgkY8V4xuouaX57m89Mnd8gXL0voRhgmb6kUeEV6XzKDJ7LauClAqNPPVxuJTzw7fHmYt8qwLTzELCje08oPY4Vp3pvz24gLmMSUC9SaNCwEzvVKkve4Dw+sUvJlsULj7erpyHoJqG1sO22uwRinOPwlC6DIIcdkz5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NhqrZv55q7a6oJJ7KJZyAyYLl2tZRKtQ5eblK3jm0oo=;
 b=OnEoBopAaljeczQ3/4GU7LS0QfSC1Orp32dI/D4mqLir5as2o+mzTnZAAWpeiwqmCmPzqC1Xo3qYv+McYJkpHCQq4S24FKAWcMXCK4At+O1PqEI6c1tbrVp81B2YSfgmL1mcUPVyg8ZDpR60kSOQpagFBtMPdrta8eXJl0nJtPSlTSFzHFW/7V2yn2MLq35EYce/D2IlTIfTdRqpxZER2SdW3HpcH5EriW9EK5tDKlVWzwDvEcIaHmpbwgfiJ391IidNWlTfXSmSLYXgKFqN2DqN3eYGROjoaC5RJky4H/Xop/a8PE5tAPXmSA3cP/YD/Nywd67oXg2aNqtRIUeFHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NhqrZv55q7a6oJJ7KJZyAyYLl2tZRKtQ5eblK3jm0oo=;
 b=oYFqvazoNVDmXzmF8PcXAGqyFAiQsTSzT5ezcZV0s6dCytP6EDU2PLRcGjAH6gTG7qSGzStu/TPfMINlSMCp18Rdcdl/LBSMvGJvlhmXy2XwqiLSJ4e8jZ4xoMXt3ioAypFVoRLDhsWOSLznLCcSGAFGDNolRbhgHOyDJ9hxqYA=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20)
 by DM6PR11MB2778.namprd11.prod.outlook.com (2603:10b6:5:c0::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.14; Tue, 15 Dec
 2020 01:31:48 +0000
Received: from DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8]) by DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8%7]) with mapi id 15.20.3654.017; Tue, 15 Dec 2020
 01:31:48 +0000
Subject: Re: [yocto] [meta-tensorflow] maintained?
To: Randy MacLeod <randy.macleod@windriver.com>,
 Philip Balister <philip@balister.org>,
 Marek Belisko <marek.belisko@gmail.com>, yocto <yocto@yoctoproject.org>
References: <CAAfyv34BX_E69-9bPbT2NRikT+uXHSsNVvxg29Tsoi490ameig@mail.gmail.com>
 <ff6f0dc7-7f91-6135-3abe-c7ecb7a0f118@balister.org>
 <c54eb116-e11f-d389-1316-df74d413d8b3@windriver.com>
From: "hongxu" <hongxu.jia@windriver.com>
Message-ID: <d7f395ac-35a8-b9e2-3c8e-180ffc3453b8@windriver.com>
Date: Tue, 15 Dec 2020 09:31:39 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <c54eb116-e11f-d389-1316-df74d413d8b3@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK0PR03CA0111.apcprd03.prod.outlook.com
 (2603:1096:203:b0::27) To DM6PR11MB4380.namprd11.prod.outlook.com
 (2603:10b6:5:14e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.131] (60.247.85.82) by HK0PR03CA0111.apcprd03.prod.outlook.com (2603:1096:203:b0::27) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Tue, 15 Dec 2020 01:31:46 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9c2f1852-2919-4bc7-8c08-08d8a09930f8
X-MS-TrafficTypeDiagnostic: DM6PR11MB2778:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB277855D9FE2A5A4CA9CD915A94C60@DM6PR11MB2778.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	GAufWm5bFXiW0HH+G2gT1UfUx/hpea4UlgxmJudn6aC8hCFmqPdrmGqqMnMWuMfzS9uI4lB3Bydjn+ThSQeGM1qt0UlvlpaKWChP+jPF38KRP9pNh4y+wp56x4bdY1aw7yzQZhJSRNvP5il64GB1p7m7vrDr69CJ74cddmnZRPt25UlcwoPeod/5dpaCj2hkQYQgoh32c4b1JmzEbY9l7WIalz0t1xCjrVuTlznnUMAkwNXbpz7h6E1chOlwegbh2e+Ga4clPBkee6FvuymHSwCoL3K6FUjuNu38mTvhRfA0/xdoCgbjbVt40Y3Xv++xCVeJ45TpqR16ML2Dq0UG7CXFby2ZI3IATFRyyX11eSHWrmaNqInLxb0cS4AgbUqszH4xVDhMYpRrtH2RSan8B2yvPpR8nxKCo5T2wVrYz7IQIWf+QJyDmoibiXMgT1Zk3cJyylCJYH9pm/bTkLUcxBcCDR78RkGNkOqvMADGzUJh8ZFRIHpYdw45b3GPyLTl3xwTTzudvQsVdYEW3asKRhxLOGaie+ekYCmb1dBorUU=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4380.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(376002)(136003)(110136005)(508600001)(26005)(2906002)(186003)(86362001)(52116002)(6486002)(16526019)(8676002)(4001150100001)(8936002)(34490700003)(53546011)(6706004)(66556008)(36756003)(66476007)(83380400001)(31686004)(2616005)(33964004)(6666004)(956004)(44832011)(5660300002)(166002)(16576012)(966005)(31696002)(66946007)(78286007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?WVgzR01nSm4wbG12UUxsbGNkOWxFbnNlTGphOVNUalpld0JZejVPcW91a3Bl?=
 =?utf-8?B?ODVobStuLzczMG03R0V4OFZuaGM3VHlTbDczRm1XOGMyNVBIcXlSc0cxbHBk?=
 =?utf-8?B?YmRMY25FREpkTzJjemwrY0tVUk42SXdmTTEycERrR1hrU0JlalNwaFk2UU92?=
 =?utf-8?B?QThxY01MTzM0ak5GUG5FcTlvMmdYaXMzMlcwVGZCNDFGYUowRks0cU8rU0ly?=
 =?utf-8?B?Sy8vamZsUTMwaTFhS29menAydmI1NTk4UXdxd1d5d0l5YklGQy9xaEQ4NXJx?=
 =?utf-8?B?MnBPNlhmZXVKRWRzREdPVlJDVWp2cUpDQlpzS0NjdmlGdzlQQjB2M2JVcFFw?=
 =?utf-8?B?c0E4T3IxMjM1VlptR1F0K25LMGZQdTVrYlF1b3pkdHNVTlcvU2dhbXhhbXpj?=
 =?utf-8?B?U0pDK0xUaEhKRjlXMTVOcHpHaVZrRTB1Z0ZoVmdlUFRQYjZwTHdvaFM0VFZK?=
 =?utf-8?B?RmRFVzdLdzhHMWE4Y21DVGE2SVNTY3FiNTNqVURON2dqR0lCU2JNWGU2R1Na?=
 =?utf-8?B?d1hGbGgzT2YxQm4yaHRYemVpaThNVGY4Nmk1TE1jTkRSQzhEcGRTcW9pbEo0?=
 =?utf-8?B?MTVDc2hDZm9rMjcyTVhFd3BBQTlsVE9ya2E4VnJwNDFuS0xDVkdOckhNMm5i?=
 =?utf-8?B?d2lVN25OYXQzQ0lSVGhHRnpxN0IvbnlBMGlmVEprOXBpeUhVZnMyNEdKTmVp?=
 =?utf-8?B?VVFhaUdlbVh3aTN0VHVoVkRaVmdqN3pKSVFRaVVuaVNyQ1E0YzNJYitKSllP?=
 =?utf-8?B?amdtR2s0M3ByNEcwcjBGWS9SQkM1Rmhqd1EzNTJYSVdHenhZYkk2WFNUc0Nz?=
 =?utf-8?B?QnJUZ1JObnZYYTdRR0kvN3djTFB6Ny9TakFIYlNaZnlja1Qzd0NmRFhwWjI5?=
 =?utf-8?B?WHpXallUazNhYTNsM0hyeWlBZzRkTWNjU0NpUGhnYUZxOEJmNzRER3VaVnda?=
 =?utf-8?B?Z3hCS0NWQWo5VkZXV1dsNjdjbkhXMDFUZ09BNXlYSEREcllWaVJpbC9PQS9H?=
 =?utf-8?B?SCttUWJEbElkUzZaZnZ1Qy81WHlPKzVaVWdaWlo4K05rRWIwWC81bFhUTWJv?=
 =?utf-8?B?d1J4dHk4UDEvY1RnRnd0N2NlMExURXFENHpRYUVLUXhzOHBYMm15ODVvWmlk?=
 =?utf-8?B?RUhXZlhrL3M0Vm9CcStLbWJpWHVjNlo5N2MwWlBoQ0NoZlZnaTd5dktaWmE1?=
 =?utf-8?B?bXRSNE9VNmxRWVJ6OUlMYVlDdDh0YjdhcnRSbGY3TG5TdlpCV3ArS1NTbEU4?=
 =?utf-8?B?WG56eEMvOTltWkM4SVd5WGRiWFBvNG5rVk1oSTM2TVZNcGx2a0xvWDk3SmEx?=
 =?utf-8?Q?pD2TyXidl8VsLa81y+9zR2tHybwWXxNEwf?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2020 01:31:48.4371
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c2f1852-2919-4bc7-8c08-08d8a09930f8
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zF8+Uf+D9hiozh9VTXIcpSXzYstZqVQdMYEFVlmXnHGTFEGu622tBsrUm7TSL4yKVXlHaiv5c9IW2VIq6JBq+5Q0oquMGHxlKJ/Wnb9hCkA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2778
Content-Type: multipart/alternative;
 boundary="------------70C455E748BE76D95B4C2F20"
Content-Language: en-US

--------------70C455E748BE76D95B4C2F20
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/15/20 5:11 AM, Randy MacLeod wrote:
> Add Hongxu.
>
> On 2020-12-14 3:03 p.m., Philip Balister wrote:
>> On 12/14/20 7:56 AM, Marek Belisko wrote:
>>> Hi,
>>>
>>> I'm l;booking for a tensorflow recipe and forum that meta-tensorflow
>>> have support for it (also saw that gatesgarth branch is there) but I
>>> cannot build tensorflow + tensorflow seems to be a bit outdated.
>
> Yes, it is a bit dated.
> tf-2.x is out and I think that Hongxu has an uprev
> underway but I'm not sure when he'll get to finishing it off.
>
> Hongxu?
>
The upgrading is almost done, I will send them out for review by the end 
of next week

The new version is 2.4.0 (RC4) which is the newest of upstream

By the way, the build system of tensorflow, bazel will be upgraded to 
3.7.1 which is also the newest of upstream

//Hongxu

>
>>> Anybody know if this layer is maintained? Thanks.
>> Searching the layer index for tensorflow shows:
>>
>> http://layers.openembedded.org/layerindex/branch/master/recipes/?q=tensorflow
>>
>> So the recipe exists in several layers. Looks like it is time to try and
>> get everyone to work on together on one layer. I ahve a recipe that
>> mostly works to build the c library part of torch that needs a home.
>>
>> Philip
>
>
> Nice, I think a new layer called something like: meta-ai
>
> would be good to have.
>
> ../Randy
>
>>> BR,
>>>
>>> marek
>>>
>>>
>>>
>>>
>>>
>>>
>>> 
>>>
>
> -- 
> # Randy MacLeod
> # Wind River Linux



--------------70C455E748BE76D95B4C2F20
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 12/15/20 5:11 AM, Randy MacLeod
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:c54eb116-e11f-d389-1316-df74d413d8b3@windriver.com">
      
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
    </blockquote>
    <p>The upgrading is almost done, I will send them out for review by
      the end of next week</p>
    <p>The new version is 2.4.0 (RC4) which is the newest of upstream</p>
    <p>By the way, the build system of tensorflow, bazel will be
      upgraded to 3.7.1 which is also the newest of upstream<br>
    </p>
    <p>//Hongxu<br>
    </p>
    <blockquote type="cite" cite="mid:c54eb116-e11f-d389-1316-df74d413d8b3@windriver.com">
      <p><br>
      </p>
      <blockquote type="cite" cite="mid:ff6f0dc7-7f91-6135-3abe-c7ecb7a0f118@balister.org">
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">Anybody know if this layer is maintained? Thanks.
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">Searching the layer index for tensorflow shows:

<a class="moz-txt-link-freetext" href="http://layers.openembedded.org/layerindex/branch/master/recipes/?q=tensorflow" moz-do-not-send="true">http://layers.openembedded.org/layerindex/branch/master/recipes/?q=tensorflow</a>

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
          <pre class="moz-quote-pre" wrap="">BR,

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
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------70C455E748BE76D95B4C2F20--
