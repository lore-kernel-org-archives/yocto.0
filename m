Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.329.1608077243826733928
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Dec 2020 16:07:25 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=NMehX2lk;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: randy.macleod@windriver.com)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2059.outbound.protection.outlook.com [40.107.94.59])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2206738C0655
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 00:07:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PZYo3uE2tWjerpKaLvD/1zyVMVKu3BfB2obFRPrJ48n6tSYPB3nSSllwcO6TGWYdZBaY2hbznCk6GUJqYAV3Nt8xKj8KbllebzrCmPxK7TM7AVcxEy8oqIaAQJSikHD49BsvXWOOthtL+yGrUahGJfpTSq/Fq1SG7zwpFJ77ui7iadU+pXWeqr0cX+Oam7FI+HdX8RtsgR4HwUm9co0a8FmrZpi+z2nfA3jQ0FUoH1ZawjR1hEpn/bQgwlzt46BQZ2N+QOvYv9o5hTrO7yCEXDXPxOHhR/KEtsAvi9ffrq3Q5TJWEVfcyzBtUD2VqciwkBP99wkpOxggf8RmY88kww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j0nemYgBV21nyP38EwpfhliFmhkFWhEahtMe0ky9+cs=;
 b=HuOVGFpO8Zb05HpaXR9evUCbXa4B5g2xlhYvvPYF75eL7VT5UwfJKwb7SVpkltQwxXoqJpd7XmGT4e9jBvijYSY1t9hnus1t+ORxTONOU2BonX4aHow8iikHB2Y+jzqaV8OcIPXorv7uzk/YoGPMuKHsSXWSaOuxFla+ajsSq/b2vEI50usPm4C6BJjfXdijOXYssdZxw2fAWBYlvbxlP9dAyeOSJ3V8AoPx+lROTFMkNLIRSG3OAeiXra2oE78THDDCVN9bRx2CKqon0UoOU8B90OJkmXIQ5p5NijRkzA/wlVut+AdP42fSP86GLfd/EmyKfr1MhvGFxEmT6cvlfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j0nemYgBV21nyP38EwpfhliFmhkFWhEahtMe0ky9+cs=;
 b=NMehX2lkKyDdbPINgaqIz1RQ0ryFAo6+e3wcZPDaE1byZpRUpmnlIg/2OTbsHEByPpIx/K6jM+Ir7x6Kt9hzjMMvtl0ZDNRP4973ZwClFfovMySubMZM+0yMn6YPYLxw5v4QQngpD3XzA9aimA1lDVcnB6v0cKEUJ99oY5aUAh4=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB3802.namprd11.prod.outlook.com (2603:10b6:5:143::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.15; Wed, 16 Dec
 2020 00:07:20 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::7dda:eef1:5113:c588]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::7dda:eef1:5113:c588%6]) with mapi id 15.20.3654.025; Wed, 16 Dec 2020
 00:07:20 +0000
Subject: Re: [yocto] [meta-tensorflow] maintained?
To: Marek Belisko <marek.belisko@gmail.com>, yocto <yocto@yoctoproject.org>,
 "Jia, Hongxu" <Hongxu.Jia@windriver.com>
References: <CAAfyv34BX_E69-9bPbT2NRikT+uXHSsNVvxg29Tsoi490ameig@mail.gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <48736258-f839-ab1f-dacb-aa667dd2297e@windriver.com>
Date: Tue, 15 Dec 2020 19:07:11 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
In-Reply-To: <CAAfyv34BX_E69-9bPbT2NRikT+uXHSsNVvxg29Tsoi490ameig@mail.gmail.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: SJ0PR03CA0005.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::10) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by SJ0PR03CA0005.namprd03.prod.outlook.com (2603:10b6:a03:33a::10) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 16 Dec 2020 00:07:19 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 16713bb7-5ef5-41ac-10fc-08d8a1568ee1
X-MS-TrafficTypeDiagnostic: DM6PR11MB3802:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB3802378052E2CE3286C0A51BF8C50@DM6PR11MB3802.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+7RH+p8jzWed6WQwb5HVteG34m1HL86+AIYvKUbU9KYbgiEB76rUTUtGc6mMkbO7FuyQ6GccJFz2BwSySh2KRusbMJdNeZre+ewiBqn0oG32cJv+OvUdsmwpNjB2zAfh2mukutJFUYANPVO0Y1B+Z6B0/NRQGIq3CiiLuvjBWtgur9uup+UH9Tj5p4kE0D+PdUK6OAv4jICvRQMMrCzni7+gFhk3N1Lf6IyXLLjFHC9d98weGBmLllIuQLhKj3q1Bksq6hSq03Lel1bpimXFT5R5pY+guRo3IuNiG6oWpy996WSTJqea4oo/S+dAjAdgBoS1ndgfI1Slau4Dpus9V0oi/0qEM/fMz8e3gAFZpZuO2vVtZveMkp5jxoJ9OT80BRpcLn/ZdOSng8WGSv9U0X98Xp7cCHyHOAlWvJcwK6TESKtFcz6jHdR4ahotEyZMI1BeBzMJvKwUT5I0O7+GQqLp8F7a2xmW94aHvMW+a2I=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(346002)(366004)(396003)(376002)(39850400004)(5660300002)(316002)(66476007)(6636002)(36756003)(16576012)(31686004)(86362001)(6666004)(66556008)(110136005)(16526019)(478600001)(6486002)(2906002)(2616005)(966005)(8936002)(4001150100001)(956004)(8676002)(166002)(83380400001)(31696002)(33964004)(26005)(53546011)(186003)(52116002)(66946007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?VnJEaU0rSXB0RzZ3ditQYVp1N21jRzgwc21zVCtDS0Vra1RzSWJBUDRFUFhG?=
 =?utf-8?B?WmVWdDFFM2JxTEtzZWs5WExPTkprSlJHS3daRExkTlBNVVU1L3RML1dnaFUw?=
 =?utf-8?B?d042aEtFeWxuTERTV3ZURDB4TUZJUU9jWTdrTHlHUDBGbzhCMVNDa3RPdWxk?=
 =?utf-8?B?anlmT2VlM3pOZUFLVDVJR1hlSlZXcDhkcE1LaDhOWmM1TXV5MmZVNGszMDRI?=
 =?utf-8?B?Q203MkhIUzdPN2ZoK2lyajdUMThJa0pIOFdncGg0YzVMYmRnOTRlTXhXd0dO?=
 =?utf-8?B?TnRuYXd6TFB2K285VEd6bmpuNFVuUEQrWjc5cGZyaDBiYldUQzc3eFg0L2ZQ?=
 =?utf-8?B?QTVFRFNjT1ZZSktoWnB1cVhkanpzeU5YSFVkRW9LVTNvVkZ4b2NwR25jQi8w?=
 =?utf-8?B?VHFnRURkZDRyRlZHbGJEcFNMM3g5Y25Ld3RoYmI1Y2g2ajZBclF4Y2ZyU1E1?=
 =?utf-8?B?aEtUUGtaSUVGeXQ1azkzZUVST21DcEtzR1ZYUW1zK2g5WHpzNTZrQlBscFdt?=
 =?utf-8?B?T1VPRnk5ZkJwRURLWE9CcTdJQ3NQdlQ2U0pQUTRuNkMxMmtWTUlPR1JxZ1FJ?=
 =?utf-8?B?VTFjUzRyemNrTFVRMUhNdTdGeGdVSERaeGIvWDRMQThsdkljbE56amJsbSs5?=
 =?utf-8?B?NzcyVnF2VjFjbmtRL2MwdGd3enhydkdFa1J2dGk0azVPY2FneVFISlJaYWNP?=
 =?utf-8?B?YTd4a0hqcUdJS0JNMUZaN05INTBFU2t4Q1Uzdzhqek11Wm9vYmFjYUQybEN2?=
 =?utf-8?B?S09BeDZaMlFpTEJIaVRUS1FNdkdjbXRGcTQwaHR6YkU0YWpkQXhZNC95Vk5j?=
 =?utf-8?B?QjdjVysrN0dmdE02TENwbUxpODFTSklSQ0VmRkc1eU90TWpOUjc3elJ2UTZ3?=
 =?utf-8?B?anFqaTBGdnZzcUxyOHJwakJlaWxtVzkyWUJzUnZYOE5UaFBaQkVqc3JyMnE4?=
 =?utf-8?B?TlhqLzFENG1QNTNJTUJ0SGhUR3kxdzVXY1lxVjgyam4vU29GWXNlMVR2K0d3?=
 =?utf-8?B?NFpOWGluSmdMbCt5SGN4MWNtNXlJWVRLeEJoTTJrUXhKY1g1WHV6dW9nWmZW?=
 =?utf-8?B?aVdpc0MweWFjRFdSWmZLOE5hV1ppc254MjZPQytPRE5oS09sL2djbVNuazBy?=
 =?utf-8?B?UHdXOWNIT3Y0bWl6RTVjQWlMc0VxRXhPWnZRN0xQb3hKNGtiUm5EY1lGanBy?=
 =?utf-8?B?NTV5R1NLU0RLMittOWZzSjJvbEJteS9xZTAwYWRPayttSUZreENwbS93SSt5?=
 =?utf-8?B?UFVSbGJlOWdqYzZHTGpWcE1HSXBvOHArUlZXQXlhMForY0dSa09NYk45RnVC?=
 =?utf-8?Q?Mjs+ZkDwqP6UeGijIUUjob0qUbofRJs2ti?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2020 00:07:20.8649
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 16713bb7-5ef5-41ac-10fc-08d8a1568ee1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tUq1i6NfJiZRj1wKvgyccQeCEDro76ngT+T8YAVyYBj7Wycd/PIqdnVtWHlHbNl6mjMNFY0zsU9x7k1e0Ybs8rKbM5unNu/+aQlNcctTqrU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3802
Content-Type: multipart/alternative;
 boundary="------------5848F928C95BE28EA3545D6F"
Content-Language: en-CA

--------------5848F928C95BE28EA3545D6F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2020-12-14 7:56 a.m., Marek Belisko wrote:
> Hi,
>
> I'm l;booking for a tensorflow recipe and forum that meta-tensorflow
> have support for it (also saw that gatesgarth branch is there) but I
> cannot build tensorflow + tensorflow seems to be a bit outdated.
> Anybody know if this layer is maintained? Thanks.
I succeeded in building tensorflow last night on master with

the layers in WR Linux:

 =C2=A0=C2=A0 https://github.com/WindRiver-Labs/wrlinux-x

Can you explain what host distro and collection
of branches and versions you used and what error you saw?

../Randy


>
> BR,
>
> marek
>
>
>=20
>

--=20
# Randy MacLeod
# Wind River Linux


--------------5848F928C95BE28EA3545D6F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2020-12-14 7:56 a.m., Marek Belisko
      wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:CAAfyv34BX_E69-9bPbT2NRikT+uXHSs=
NVvxg29Tsoi490ameig@mail.gmail.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">Hi,

I'm l;booking for a tensorflow recipe and forum that meta-tensorflow
have support for it (also saw that gatesgarth branch is there) but I
cannot build tensorflow + tensorflow seems to be a bit outdated.
Anybody know if this layer is maintained? Thanks.</pre>
    </blockquote>
    I succeeded in building tensorflow last night on master with<br>
    <p>the layers in WR Linux:</p>
    <p>&nbsp;&nbsp; <a class=3D"moz-txt-link-freetext" href=3D"https://git=
hub.com/WindRiver-Labs/wrlinux-x">https://github.com/WindRiver-Labs/wrlinux=
-x</a><br>
    </p>
    Can you explain what host distro and collection<br>
    of branches and versions you used and what error you saw?
    <p>../Randy</p>
    <p><br>
    </p>
    <blockquote type=3D"cite" cite=3D"mid:CAAfyv34BX_E69-9bPbT2NRikT+uXHSs=
NVvxg29Tsoi490ameig@mail.gmail.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">

BR,

marek

</pre>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">


</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------5848F928C95BE28EA3545D6F--
