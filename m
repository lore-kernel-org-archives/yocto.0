Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.9500.1620885711612285059
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 May 2021 23:01:51 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=QNtYh4Qf;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: changqing.li@windriver.com)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2051.outbound.protection.outlook.com [40.107.244.51])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 6401A38C0316
	for <yocto@yoctoproject.org>; Thu, 13 May 2021 06:01:51 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sbqcw4gv9au6PgWHhBYUHU2vGoYnXT893FLc8JD+8UC7gjZFJk2PpMTTlVw7i4ZL2au8Nk52ui12o7E4MkNWZvoS5dA12wuX4QWi/RN7ijD53ah1zRJ6pK/awQrttbscbFGB4yB8cJOB+d4bzJBbviTFnP9Jzc0ipFQTpF8VxsHLWbK7nfTAeqbZ91qAsZzlT/NplB4Vgry599RwbcY2cEEpuhuQdT1tM8I42li7GZ/nc7V2NghyJTNYwuxCAP6q6wyjihE+FYUrZYxs6IlrMsFnxtsJKzvPLW9yzkDreHC661OPl9yxopoaQmdWFnONSrHlABbal3Me7Ja5WdG2Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0dbV8c8801xKbBehBiG0+csG1Xl3cLhpTUQXHL6+qDE=;
 b=E4N7clvlVivlR4ETSaaT58DIlXYFT+1dtO39gQaphRVwB6KIgKdxNRnPn/IV8nngzBBWeSgzSA6A/K4kMJ6y4l6FuEf7dkm1Y2Iu0/kmw9EOnL6i2p/Hcyfw3duVlsRiy3QXoxTZei5Np2uWsy6Uv2MQRJrWdw2wFiQZzpYcu8dTUVQxRzcbTfKkv251vfnn07dg6Ng3gfmpM7e4dogaYM0rndzL8pQXN7SrWwdn/yVa09dGBqaNBvFVKFksp7TDQ5CDz83By4xojzhwuOZd974o8OClDgOxz+meVfPw1ezkpOrOdhOj4gL0Zb5SQnoIzTdrxXJDJYZf3txcx6hMyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0dbV8c8801xKbBehBiG0+csG1Xl3cLhpTUQXHL6+qDE=;
 b=QNtYh4QfMB6QIoXf8bYNpMQQdXJhyc40X/2A15pyS6hJq2oSuAhsCplbXVh+CnXPWZ7HMT5vJQfYRLACX+088bmNag008ISmlRvdeX6h3q0GJc++Y9/TZB6wyY1j9DryhQicGwSik7aWOje8axADg1R8GT5s/Evy0Xc9TBdo3Ls=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from SN6PR11MB2557.namprd11.prod.outlook.com (2603:10b6:805:56::33)
 by SN6PR11MB3040.namprd11.prod.outlook.com (2603:10b6:805:db::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25; Thu, 13 May
 2021 06:01:48 +0000
Received: from SN6PR11MB2557.namprd11.prod.outlook.com
 ([fe80::9d9a:d36a:4f67:486b]) by SN6PR11MB2557.namprd11.prod.outlook.com
 ([fe80::9d9a:d36a:4f67:486b%3]) with mapi id 15.20.4129.026; Thu, 13 May 2021
 06:01:48 +0000
Subject: Re: [yocto] [meta-raspberrypi][PATCH] 99-com.rules: fix error invalid substitution type
To: Khem Raj <raj.khem@gmail.com>, yocto@yoctoproject.org
References: <20210513034251.9623-1-changqing.li@windriver.com>
 <5161b49d-1893-8174-f179-99f952d23e95@gmail.com>
From: "Changqing Li" <changqing.li@windriver.com>
Message-ID: <2880ca16-f1f6-3e7d-fde0-ceb7818587ac@windriver.com>
Date: Thu, 13 May 2021 14:01:35 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <5161b49d-1893-8174-f179-99f952d23e95@gmail.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK0PR03CA0103.apcprd03.prod.outlook.com
 (2603:1096:203:b0::19) To SN6PR11MB2557.namprd11.prod.outlook.com
 (2603:10b6:805:56::33)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.189] (60.247.85.82) by HK0PR03CA0103.apcprd03.prod.outlook.com (2603:1096:203:b0::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.25 via Frontend Transport; Thu, 13 May 2021 06:01:46 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 88a3d390-5d82-4a2d-be7a-08d915d497f4
X-MS-TrafficTypeDiagnostic: SN6PR11MB3040:
X-Microsoft-Antispam-PRVS: 
	<SN6PR11MB30404B39351EFCAFEEAD8C4682519@SN6PR11MB3040.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:153;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	PwkAXWp8s7+MOy+CLIgslMecwEqU5WO1fWdQ2H+MYleTR3dDxlXkOIn4/TAVhxIQVg7uJM1rRef7zexk0Q91nZxyJL6mxdRqKlMa36OojvzUSDkc/bScr5j2CHd8rqooKhqHTZhOX+Aw7+gzv6og9ptHiIGE4iP/f/aWJVte7HUGXDaZFAmxvYbrZGuGikz2sVmSABFPMe8fmngRsrL0J6k0YLz43RIKoCfyDwtefY5KyyZ2fCnNS8t6J2JFVQ2Fc1ci3lFmNEwgvAjkn4YKlWzREOW+RVAd3b9/OOMsfFlsnIwxbucN5BVVkUA90c7Ne6cl90BK/wxil88eFYyeuTyEqvhKdyG31Zf/1UTRYJxyD5Wo1IEe3n9kzC+OYxpYn9uo43xQ+yKDXEjskNZlvKg+38KhVJKaQjyjqWhiLyycJ0siXNI+CWJSd5DdkeyAzrFH6JbKcf4STLw1XVRrMfE6Htb1kZJm8PwK5rfztp0F6afabH/s53la3p/cP261GNL3LLWIOWopFEtYU9Z1ovh85alZfFh/sSUIAfss3XLY/T0+ofnciQj+reVtj8V10/jnwH/oC4EYRMyuPwod0r2LtC33qqwyMY2fUVYog8GRz/JGk6b6qqu7VaGh2fyxixnO4Sab82TgXC6ans109kw8AVSTRgxW5qhPBn1UsVFJtdRdHadSMdmuzbWIHXYQAvvq0AvmYgFWSA+i4Xx2ngSDBZ2gz3U6KNqbgG7zE17I9WJehTWE2G66PPafVgQAA51TIfeqszOlhV8KrJWUGtOI2+eOxCDfQsWC0YpBvLUFLLonAg4Vcvr/oUNs9SHa02T+gaDYnI8gIP8EIz0blDK5gm3+dSIUWaSF6eyvrOE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR11MB2557.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(346002)(366004)(136003)(396003)(376002)(38100700002)(38350700002)(2616005)(31696002)(956004)(44832011)(83380400001)(66556008)(66476007)(66946007)(6666004)(52116002)(86362001)(6486002)(53546011)(16526019)(8676002)(186003)(6706004)(966005)(8936002)(478600001)(5660300002)(36756003)(26005)(2906002)(31686004)(316002)(16576012)(78286007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?NStPWEJJSE1vcVl2czFobmFIaUVhM3FKYkZLc0RMVjUrbEtQQXZsOC9nVVJ0?=
 =?utf-8?B?dHVqcmtuZUtRNkhnZTk5UGtPaUxtWndmUDY2amJnSm5wZnN0cFI0QmZXWWtp?=
 =?utf-8?B?c1JrUnN3c05BWUtWMWtIRTdXbkIzREhwQjVSV3g0SE81eEJ6ZEE2cGlKcXJk?=
 =?utf-8?B?YmdxK2J5ZlppL1RwTXZ0emhyRVJ2ekhSbERPZTNhTWMyNU5xbFU1V0JXOEkx?=
 =?utf-8?B?cG92NG9sb0JwOEs4Ty96b2dCQnMvc1dSRWVNdUcxbGhIT0NZYXRKbUtwamIv?=
 =?utf-8?B?aDdqMHp0MUl2eXZHaWpwYXhHUHhadWE4eWFmWGJmbHpIT3o4cGU4UktZeWdv?=
 =?utf-8?B?bjdJdXhTZFFLd21MVGJXNzAzMS9FakFtOXB0c3ZlSkpNc21wVDNhUFpIdmpk?=
 =?utf-8?B?aFpqVE1KQ2VoYlF5bXFNM1lZdTFodFE3NG1UUDhMZndmSUVYcGZiQ01iOG5q?=
 =?utf-8?B?NkZVRnpvRjRPa1BZK1h3eW1jTEFlMmNGb0NoaElOSFJFNkRqQ0x6UnlrUlJa?=
 =?utf-8?B?REllbEdQTmVlRytWQXA5Qk5sdE4zSzdYT1gxMFJZczJIbjgzZGV5NG53OEdL?=
 =?utf-8?B?QjdueU1leFNyYjQvWmtob1NMcExaY2o3THYzZlBRWlh3UGcrZm1XSnZPdmp5?=
 =?utf-8?B?R2xkeXpKNmUyQnlSVi9Ya2FlOHdyVFJ3WkUvUTRIczU4emIxRXdrZ0FvWHZW?=
 =?utf-8?B?cFZlRkN5UUg1L1RSclh4VDZsTmxkYW1uVGNscWV6My9GOUE0cDZSNDJqVThu?=
 =?utf-8?B?eGNmY2FFU2NIaFoyelZuUWc0U3pvREpIb1dUczQzYXowemJoazc3SEJTMHlL?=
 =?utf-8?B?OUVnUUFFVlFDUXd5bGtvNVNtbU85bTV3MC9XMjdhWkF3Y0lTZWNONDlMQ1lh?=
 =?utf-8?B?WmhnaVVKbDhYQmUydEx0QVAvcVNwRHFXbXZiaGVkKzhNOElqL2NuOHZ2Y3dT?=
 =?utf-8?B?d3RXaEdMSkN6WkhKRkZUbC9PcGY2RzFRUFo1MHhub0l0MlQvcWZpSTZZR0JX?=
 =?utf-8?B?aW4yKzdrN3N0MG5jV1cxd1Fybk9OTWQ0dnBlVXdIeFNzN3JDZTJRajBCbXNx?=
 =?utf-8?B?T2x2M2FxOWhBZUJJSlZxSjJMdElMcnU0ZW9yY3puOGZwK1luQTZ0T3dEMTJa?=
 =?utf-8?B?UGdtcTE0MStGSW9WYVNjR0R4ZVVES0N4U0Y2NGlOY3hOWVZ1QUlYaE15c1dG?=
 =?utf-8?B?ODZiT1VkekpzNE1PODlKUHY4R0RYV1FXeW5DZ0h3Ni90L2xVaTd3ck5XdGI4?=
 =?utf-8?B?YStVZnJ0RmtjRnZMdXljelFBZ1ZXbm04VFhBWkRSZ1pRMzVzOE1UNE00NWZ1?=
 =?utf-8?B?UHF0MlBMYlkwOHU0b05WcTBIU0ZwOWJtV2pib1BXVWpSUWhXcHc3TElGZzEw?=
 =?utf-8?B?QVQ1VmFBMkl6MStSQUtMNk5DR1A0VXR0TmgzKytJU1plWkcvQlJPV00yb2NS?=
 =?utf-8?B?ZEJJVFRRRVBTT3V2dk9vYXA4NHVRRWZqdit3MXdQM0VSVDhlbk9NeFdXWGh6?=
 =?utf-8?B?OWN4SnlnSERnWVZqSERIdmZpY0VtdHNQV1BIYm9wTVBQYTVNd1UwT3hLYWE0?=
 =?utf-8?B?VEZDYkJUcDAySVQ1RjlyVjhVdWlOOHZLdFBiQUV5YllnTWdUc0FET1diK2tn?=
 =?utf-8?B?Tnh1Q1o1NGJ0NDBpVlZuSnR1cE9wdXJMLzMxeWI3aU8xUkJvTk1xZk5yZnY0?=
 =?utf-8?B?UFU1ajBpdittczdwMXJCdDEza0NrUDNKaVhUWnlmVStyUE0wRnNHeHJsR05T?=
 =?utf-8?Q?Bz7w34NKPFgSxnXOYY7691QW+1FXwcARmtURepC?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88a3d390-5d82-4a2d-be7a-08d915d497f4
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2557.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2021 06:01:47.8133
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FJkpTcdORD2D67AQ2yY10K8YJ0ElGrsVoOynWsgkZLE2I/yS/NRwRoSZikoMsohgUJVX3Lg1F8MwvWTcgEl2HXYCRYw4WbJAHFpMBq/hPqo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3040
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable


On 5/13/21 11:48 AM, Khem Raj wrote:
> [Please note: This e-mail is from an EXTERNAL e-mail address]
>
> On 5/12/21 8:42 PM, Changqing Li wrote:
>> From: Changqing Li <changqing.li@windriver.com>
>>
>> fix below error:
>> /etc/udev/rules.d/99-com.rules:10 Invalid value "/bin/sh -c
>> 'ALIASES=3D/proc/device-tree/aliases; if cmp -s $ALIASES/uart0
>> $ALIASES/serial0; then echo 0;elif cmp -s $ALIASES/uart0
>> $ALIASES/serial1; then echo 1; else exit 1; fi'" for PROGRAM (char 58:
>> invalid substitution type)
>>
>
> Can you create a pull request on github for this please.
ok
>
>> Signed-off-by: Changqing Li <changqing.li@windriver.com>
>> ---
>> =C2=A0 recipes-core/udev/udev-rules-rpi/99-com.rules | 8 ++++----
>> =C2=A0 1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/recipes-core/udev/udev-rules-rpi/99-com.rules=20
>> b/recipes-core/udev/udev-rules-rpi/99-com.rules
>> index 6bf019b..ddd1e17 100644
>> --- a/recipes-core/udev/udev-rules-rpi/99-com.rules
>> +++ b/recipes-core/udev/udev-rules-rpi/99-com.rules
>> @@ -1,8 +1,8 @@
>> =C2=A0 KERNEL=3D=3D"ttyAMA[01]", PROGRAM=3D"/bin/sh -c '\
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ALIASES=3D/proc/device-tree/aliases; \
>> -=C2=A0=C2=A0=C2=A0=C2=A0 if cmp -s $ALIASES/uart0 $ALIASES/serial0; th=
en \
>> +=C2=A0=C2=A0=C2=A0=C2=A0 if cmp -s $$ALIASES/uart0 $$ALIASES/serial0; =
then \
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 echo 0;\
>> -=C2=A0=C2=A0=C2=A0=C2=A0 elif cmp -s $ALIASES/uart0 $ALIASES/serial1; =
then \
>> +=C2=A0=C2=A0=C2=A0=C2=A0 elif cmp -s $$ALIASES/uart0 $$ALIASES/serial1=
; then \
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 echo 1; \
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else \
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 exit 1; \
>> @@ -11,9 +11,9 @@ KERNEL=3D=3D"ttyAMA[01]", PROGRAM=3D"/bin/sh -c '\
>>
>> =C2=A0 KERNEL=3D=3D"ttyS0", PROGRAM=3D"/bin/sh -c '\
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ALIASES=3D/proc/device-tree/aliases; \
>> -=C2=A0=C2=A0=C2=A0=C2=A0 if cmp -s $ALIASES/uart1 $ALIASES/serial0; th=
en \
>> +=C2=A0=C2=A0=C2=A0=C2=A0 if cmp -s $$ALIASES/uart1 $$ALIASES/serial0; =
then \
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 echo 0; \
>> -=C2=A0=C2=A0=C2=A0=C2=A0 elif cmp -s $ALIASES/uart1 $ALIASES/serial1; =
then \
>> +=C2=A0=C2=A0=C2=A0=C2=A0 elif cmp -s $$ALIASES/uart1 $$ALIASES/serial1=
; then \
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 echo 1; \
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else \
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 exit 1; \
>>
>>
>>
>>=20
>>
