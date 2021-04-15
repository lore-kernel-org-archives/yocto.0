Received: from NAM10-DM6-obe.outbound.protection.outlook.com (NAM10-DM6-obe.outbound.protection.outlook.com [40.107.93.77])
 by mx.groups.io with SMTP id smtpd.web12.8925.1618500704963214482
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Apr 2021 08:31:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=oKThghGD;
 spf=pass (domain: windriver.com, ip: 40.107.93.77, mailfrom: sakib.sajal@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VcRgnD+hZwW+w5UhZaDwA3UQ9wd0zkcTEy0VFFMtW/mGHwhB6LRlwiYNBTiliaRv6snT6rUBxOZY5nJ3ooJc1APgdM8cEieu+FJ04MdLRhrrnztpjEBj4DXkTEU25mjLmN+8Fq2T2V3ngjlgy9xLbGLeIllzDdPN8YrBdXkSVAktiUBmKikKJC3qwVaqFGM48gi4cFPH4cd3yLr0v6qfVtmlaHPgeF2Nbb/Xn+HAv1+pIqBYXn+lEKW3arUhObu70dkNYUolsbhX/90hxqBo9Kry4zKNyYENTQAQaQ0bEpUxGVZ5NobRTE/ylh4GxOYCcinPeV0/TuqD9+Ws+MAwng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pv6cZ6UQnqu7zKs8lTdKzu8eH0n5m2zTTWQ7fojo1gM=;
 b=FSUuRHdR12YSYDnehNqtpr2EN6N/W16LRTBh9aixkM+9mdZIjmWt57f5r0TOYa1WTfnQdnjTvmetj79OJi9C+SBDDNdpZh6Pj17r6QIQtqGyKV0fP6YwnfARHqM4IZorrBk914McBWUgKP3w3Njbztqm2HViyWY18QezrEWYTLM4kfmHD1RoVDjHek5Qy5ky0BV0BLC+voSduz44iO5bAr8FySDBzC3KQhfP0I72S74Nwy45vVT5d4pKFwMUOuJJj5DypBVmrAzFofWlg2ho7Vg6z3ri718DL81ouJczFw0EGGVmzh4Xz8J1Wb7VD05DrOurOu5/WRmbgOE1wLuPXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pv6cZ6UQnqu7zKs8lTdKzu8eH0n5m2zTTWQ7fojo1gM=;
 b=oKThghGDcW0xeO76fkhPdcR3WvXFLcd+LVi5PT6qw9I089QZnB059qE1XixGHGkQw+7feGDOGHW39MwceiZ6hZc8OiNWTZutJcsHMhSJBtvalA8zXulXge4pTBrv6wwczxPZdD3Bo9buMCYTT4/srUjXThU0g6HGATZ8E/Pa7NQ=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 DM5PR11MB1243.namprd11.prod.outlook.com (2603:10b6:3:8::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4042.16; Thu, 15 Apr 2021 15:31:42 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::25ca:eb0e:8908:9fa7]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::25ca:eb0e:8908:9fa7%7]) with mapi id 15.20.4020.023; Thu, 15 Apr 2021
 15:31:42 +0000
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper 1/4] config.json: add "collect-data" template
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org
References: <20210413170210.72845-1-sakib.sajal@windriver.com>
 <f8f21c5ba518ccba291c9c3388c3e28a680d68e6.camel@linuxfoundation.org>
From: sakib.sajal@windriver.com
Message-ID: <10740613-517b-722d-b7de-52ab03e143de@windriver.com>
Date: Thu, 15 Apr 2021 11:31:39 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <f8f21c5ba518ccba291c9c3388c3e28a680d68e6.camel@linuxfoundation.org>
X-Originating-IP: [184.147.76.169]
X-ClientProxiedBy: MN2PR02CA0018.namprd02.prod.outlook.com
 (2603:10b6:208:fc::31) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
Return-Path: sakib.sajal@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.2.48] (184.147.76.169) by MN2PR02CA0018.namprd02.prod.outlook.com (2603:10b6:208:fc::31) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16 via Frontend Transport; Thu, 15 Apr 2021 15:31:42 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8c67fb0e-58c6-4652-71a0-08d90023921a
X-MS-TrafficTypeDiagnostic: DM5PR11MB1243:
X-Microsoft-Antispam-PRVS: 
	<DM5PR11MB12436B96763F8D1A94C6147BF24D9@DM5PR11MB1243.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	tmE7U5GsBA17dGg2+wA3yx33ecpxTtOwGx6dgxunIS//xwFa7+wzgV92xqpsqJsQTyRRy7u5pzb9uOSUH8c69S014UwHHC8Uco0mBPWeZqbzICncyzfx649w3J1nWhd8HcDzkbW+SHvwZLAR9H7WumIw0HPN4bIZ7Ao1wUY8AD49gubc7PCb0LNrhbCk3YoZb7Ksnl23XgN5JdKLQMrKg/Sql2Zgi0CeS4iTKkb0ts+0Hirr4tacpsqsFver68Hs+Cx1ubongswgplk4MHANHHGwIFyZKWTekNT7GOs9Wqjg8nwOVVudLTQfLX+5tPkBguft4fVuQpPAalTAO13Ez+Bfq24MrT5w+kta0+5QCaYoIKEtFqDERkcIJBWPBpRos7Vj09dm8d6UNO9nvT4FUrfqRZd0UxBtJ17hB6AJSB+fQKdLG3E8pmcGPb7GfEdfWHQ59tRPdy3q01GCrU47whAdYIEx6H9x7YrMnNuq5RMN1jomZcWhd/zNf7L2n53rB+D/6qfD50BtVAssib/wX3fNThhkXSqtedmszbHw+6C3tncr0vFDsjOsOpT05tB7nF+4CWzbjYYLYXxC81GihjlDV9cEQpk5cdOZ4kaba0coCc9LbWk5dz59AxkEA6zNFe4ue+oNW/QzRLUga8TUEOq0e+D4XXeXQ39f1D7gkfKVCKBl88SptYByL+MI6EAHnRtd8TM+u+9ID7roA8Kupv5rVDgxGM3L4Xn49ePm1ok=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(39850400004)(376002)(366004)(136003)(16526019)(53546011)(5660300002)(31686004)(66556008)(26005)(186003)(36756003)(38100700002)(52116002)(38350700002)(6486002)(478600001)(2906002)(44832011)(316002)(956004)(2616005)(8676002)(66946007)(86362001)(16576012)(31696002)(8936002)(6666004)(66476007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?Z0VTc0s2V0hnYU4yaVpyVFM0K0dkNUtmUVNVVmxSZmx6TVFxazk4Z0NpVHRO?=
 =?utf-8?B?WW11QkE2T0d3WG5OcWZ6QW8zSjYremZUOEF6dVB4dHNkTHNXY1pVekVKS1BT?=
 =?utf-8?B?b1M3UERyWXM2UTJPemVDVnduZjlDT2NERkdTRlFKMHdZMkZRblpKcUUwQUFq?=
 =?utf-8?B?aStYRWJEY0QzK2pIdDhVWi9XZzJ1RXNBS0hFVkZoM3VubDZIeGlvRm45dFZ5?=
 =?utf-8?B?QWhCZWJQUzNHUWRuSlNMVmg2SnlSazhGYVYwcThWYS9vMVhac0RWQUwyZXVZ?=
 =?utf-8?B?VDZNMHN1dCtrSk1UYVI5M1hCSWJSYTZvWklIclY3Mm15Q0o5Q28rM1kvdDBQ?=
 =?utf-8?B?VUZnZVFmaWVQT3JyNW4wQlFVNjFKbElXRzlIdEVQWFFPMS9PcE1XZkhKdStw?=
 =?utf-8?B?U2JzWWFnN0dyOExiSGJpcnVnR0djbjhIVi82RUxsMS9nTzdaM1lKZXRFOW9w?=
 =?utf-8?B?VXkrN3Z4Y2h6ZHl0TGVZTVlvU0lwamloSElPbW1kNTZ0cVg1WThvWStlTlo2?=
 =?utf-8?B?Wld4Zmc1VVBnaXR6WTArME1JZzBKdlNGVldIYnU0TlZFMFhPNy9kZ000T1Fr?=
 =?utf-8?B?djZGU3M3UVBVL2dOaHZ0dmF6VWl4OElqUGo4VThITHhYaWExYlBTeUh1NmJQ?=
 =?utf-8?B?ZFdSK1dQSlpIUVEwcUxTTDF1SEZTeFZaN1ZUU2tHNGM5S3lOQURsK0NFeUlK?=
 =?utf-8?B?MWF1N2w5cDhBaExvSVZVNjBtYituMmQ0WmFMS2xRcnExZkhUbDZWalVDOXcz?=
 =?utf-8?B?U0dCeGFnYkNMSTVWWGZJQmFwdUVTeHNneVhaQktWMDkyZ3h4VlY2Wi9PWVVC?=
 =?utf-8?B?dHo2OTB2NFljbVY3cDlDcms0YnRqT04vbFVYMnJ1NzRPS3ZHYjVqUnVZa1Z3?=
 =?utf-8?B?T1Z4bk90V0hkcXJ2eHFJMHVsUUc0QXZrUFoxR3U2NUtST1FsKzdxbmhuUkgy?=
 =?utf-8?B?WVZ4cDluTCtwMzlZeTN0VG81clUxS1lhL01kZndwYXNpRmt1K3J1aGRXNXZk?=
 =?utf-8?B?RkhyQzIvYXE4eDl1eVBpeGthTzZFNXd5RlkxeGxYQm5UV2p4cFg5NTQ4YkU3?=
 =?utf-8?B?NkhFL2c4bnRicGVCc0tuMFh5TUx1RnNWYkJ2aFBKQXpwWnB6Y2FNY05uQXJz?=
 =?utf-8?B?NnBDdXlsdDBXTmFSRkhyRGtWOTh3c1ZWRzg5N1FmNm0rZHA1Z1ZDQTlSeHhY?=
 =?utf-8?B?VnhhU0h0MTcxRmJkblBTcEIwd0s5MjdTVXNOY1REMnFrV2FtTmFTYlpzSTI0?=
 =?utf-8?B?U2NFL2EzTzBQdFVxWXRYK2k5dVdlQzF5VWN6OXRSN25SSWdDVDc3U05nZWFa?=
 =?utf-8?B?clMwZjNMOXptTklIZHo0S2xvQzMza0VaK1dvT09PZUs4Y2J6cU5WZi9QOFRM?=
 =?utf-8?B?N2Y3WExJUXNmMnB3VWdCcVZXaGpzZXRwVUNva21zejhWYnc5Q3lXNjNFQnNq?=
 =?utf-8?B?UW56OVBTNEorU2NMRWJvRUtqWVR6dXNoTDF3cFpTMDM2ZzZJeGlURngzcmxt?=
 =?utf-8?B?WTNiVHM2QWNLRk94L3RJSkQ2ejZIdEFvSG5CenJQMm9TS0NTYSsxVmVrQ1Jn?=
 =?utf-8?B?NkhtR3JsMVJwZXptaHRwckoxdy9IWGNGYTdyY1RuVmlCRjFKMkFnQXRSNW9Y?=
 =?utf-8?B?dWhGUnU5c0RtRzB4WTQ0UGJUUUJxdUxTL0Q4QksyYWozeGd0YWRCTVNaKzcr?=
 =?utf-8?B?ZW5uL3AwV0o3RHdCNEJxaDUzYzdCUWVJRHg1SlZVUDE0T20yczVkd0l6dG1k?=
 =?utf-8?Q?Pbwej250Ut8eeBcaEbbQskbka0j3r7Adj+gDBcd?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c67fb0e-58c6-4652-71a0-08d90023921a
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2021 15:31:42.5577
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZIfLu+JLkP6D07qNCELKIpsUf+yPE1VYlG9Gqh3KfgP1CyRWcOewD9/XtVEpXycNY8qQ3yyT/zHgtqz2LGdSBT2nbT5WisbHVQZNob80UgU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1243
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 2021-04-15 9:52 a.m., Richard Purdie wrote:
> [Please note: This e-mail is from an EXTERNAL e-mail address]
>
> On Tue, 2021-04-13 at 13:02 -0400, sakib.sajal@windriver.com wrote:
>> collect-data template can run arbitrary commands/scripts
>> on a regular basis and logs the output in a file.
>>
>> See oe-core for more details:
>>      edb7098e9e buildstats.bbclass: add functionality to collect build system stats
>>
>> Signed-off-by: Sakib Sajal <sakib.sajal@windriver.com>
>> Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
>> ---
>>   config.json | 7 +++++++
>>   1 file changed, 7 insertions(+)
>>
>> diff --git a/config.json b/config.json
>> index 5bfa240..c43d231 100644
>> --- a/config.json
>> +++ b/config.json
>> @@ -87,6 +87,13 @@
>>                   "SANITYTARGETS" : "core-image-full-cmdline:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage"
>>               }
>>           },
>> +     "collect-data" : {
>> +            "extravars" : [
>> +                "BB_HEARTBEAT_EVENT = '10'",
>> +                "BB_LOG_HOST_STAT_ON_INTERVAL = '1'",
>> +                "BB_LOG_HOST_STAT_CMDS = 'oe-time-dd-test.sh 100'"
>> +            ]
>> +        },
> Is the template used anywhere? I can't remember if we support nesting templates in which
> case this is useful, or not?
>
> Cheers,
>
> Richard

The template is not used anywhere, yet, the initial patchset enables the 
data collection by default.

I have left the template in case the data collection is removed from 
defaults and need to be used on a case by case basis.

I am not entirely sure if nesting templates work. I have not seen any 
examples of it, neither did i try it myself. If nesting does work, the 
template should be useful.

Sakib

>
