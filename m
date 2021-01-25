Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.2163.1611607594081080934
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Jan 2021 12:46:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=E8PgkW8k;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: randy.macleod@windriver.com)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (mail-dm6nam08on2050.outbound.protection.outlook.com [40.107.102.50])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B69DE38C1108
	for <yocto@yoctoproject.org>; Mon, 25 Jan 2021 20:46:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YHyZvBjQWy8ENWcn8wG/BLnsJAG/cZ97+BxpdiY1i5Ii7Vo5cnx/QaDnrpWL0Rj1iSKwesLjdRTCR5JUmpfd4xnEaLvMkg70hC/nrcobPi85kAu8u/BsANCUxok7zlgP3g78JJrfrETZpoMNT3xTGBDogOcmguQX9U8Ej2DUaQkeGz/Xg7u1KJ2HnKbCb/BktX/hVMKSG5VyPAPIJ52Cwq+ld8ugCjSk1MSp7k0FPm+K6ygzq8CFT98U6b8wrioLeeldWf9CVAamaOiKP2RsxvaEFvkbI+tBwDwqSDpHK9zlp/+vvrbWfNJbTMnZ+Jz0DCZ2cfQvrimJziaroQjwpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7A96YfKejYttHybnc1EF6B5lYKXaFWLY8g/uVivMHiQ=;
 b=ZI+T0N76pRRkhB1JaHAbI9m/RMET0dTNKagRmYeFBtfRlcQrO+vJW74smYSEx/VR9dA/GNBAeQWWGnaSXQtHZbQc5j0TlyWLfG55IuiiuTQRyeA9YpgrJ6tWCvdNdAVDINs8oKj/N01tXQXxNQjePUt7n/d5S10T35NOe38VVGSGUf1gmnROAkbkxFIFlxMZpiS11SRh3CeVV9LI6ipOVn5gfDNHdNpr3wVTb5jFXPGeI1AbngR2bWAhnsW2LsavrePzwt/UcZUbVZV3Ihp1rNj2TC7Iw9sT0XCcodO3Dywj+fbhzmacqMc5nRseacfpNf1ri+GDOhxxlAispsS78g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7A96YfKejYttHybnc1EF6B5lYKXaFWLY8g/uVivMHiQ=;
 b=E8PgkW8kHnVmwaa4jknKaLVTy7oOVW9Jhn4k1p7L7yKQQdnKvcfRDFDailuAsJmXZbmpPaIUZy4mnRYLZjKIeJGDHoGHCRc/FFluZtCn8QvTQO1tt6NtiRo3MYo9SbMLryVrakqN3l15VdwMNTG7gCbOcITJ/Ms2+MgNQcJBOXY=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM5PR11MB2010.namprd11.prod.outlook.com (2603:10b6:3:12::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.19; Mon, 25 Jan
 2021 20:46:31 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8e2:471a:7b63:1a0e]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8e2:471a:7b63:1a0e%7]) with mapi id 15.20.3784.017; Mon, 25 Jan 2021
 20:46:31 +0000
Subject: Re: [yocto] [meta-tensorflow][PATCH 8/25] tensorflow-estimator: 1.13 -> 2.4
To: Belisko Marek <marek.belisko@gmail.com>
Cc: Hongxu Jia <hongxu.jia@windriver.com>, philip@balister.org,
 akuster808 <akuster808@gmail.com>, yocto <yocto@yoctoproject.org>
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
 <20201216130822.28476-9-hongxu.jia@windriver.com>
 <CAAfyv37zRgtJ_n2RZmWoHPOado1=LYw9cHVEVUZT1n497XB8yw@mail.gmail.com>
 <777b9a81-2d2e-7d86-bc0b-24370369135d@windriver.com>
 <CAAfyv37VGjVtn=SUan+X==VP5kbkMhWz96YP18X=x6-WkpP8GA@mail.gmail.com>
 <3fe1b12f-b2f2-20be-2486-874bb3fa23ce@windriver.com>
 <CAAfyv35TmA86pp3jNWEwrsa6Nb0Fv+qMA_fkNm1LSDZde2-n2Q@mail.gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <20a9d31c-fb10-d92b-115b-01e04c706e1b@windriver.com>
Date: Mon, 25 Jan 2021 15:46:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
In-Reply-To: <CAAfyv35TmA86pp3jNWEwrsa6Nb0Fv+qMA_fkNm1LSDZde2-n2Q@mail.gmail.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BY3PR05CA0012.namprd05.prod.outlook.com
 (2603:10b6:a03:254::17) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BY3PR05CA0012.namprd05.prod.outlook.com (2603:10b6:a03:254::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.7 via Frontend Transport; Mon, 25 Jan 2021 20:46:29 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a3906c1e-fece-4959-f2c1-08d8c1724b66
X-MS-TrafficTypeDiagnostic: DM5PR11MB2010:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM5PR11MB20107C1A9E30883859C10E5BF8BD9@DM5PR11MB2010.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	uVRzW5aQ9sMPl5bgDnJnwarZn3ksPiMzQns2h1L+gh+EkVOeXQ2Gnns0bP6LvEMeB4fdIc+V1X/EepNDqZQR/uTT99SteqPd4HMzS99UOJBQDBsT3zWQCJ6XNfwcPmWlN0n07J+96rAQ8hPj4gVKYTRAt1nV1tql34TEFm8Ri729IGsQva1fI8RffAsFA5APbzTiQ0iPLSYRI5rubRRYgLwm+gWeJNnA2NAICSRK7g11YKSkhiQ6y1tBCpZFNsWmNvyr9tEFEzOOjwBvU+jtA0c4svZMz3D4IGdh8YcDeJaiDWceVuuciV4s6yzRFyXW/H70dglFDD/vOqHAOJ22HxtyiiJxlSNRTknKkwkbdpYmsxSJMjaMgtKkP9bJZSHevQPsqX55O5l4SkdvLpOZvkBjkUX7vScUPyhxmdFLk/lqB3YJxKoy3BcDYXX2sEiF7yphczPFfP4xZES0f2W2NxIBPdU0puR9EoShzib7PQG54HBV5i5COEjgPA6xxp1q8kwZQEbkfhhCWv5r7+jHikFJUFBg2bk2/wqk2Co2K0+b+dpV2gpZuAU6J1UIQpHav3eZW3XzcEZ8D62cdfcMMqCB8iA9oAlJ0svbVMnXXT8=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(31696002)(86362001)(36756003)(6916009)(53546011)(26005)(956004)(16526019)(186003)(31686004)(2616005)(2906002)(52116002)(66556008)(66946007)(66476007)(498600001)(4326008)(8676002)(16576012)(5660300002)(8936002)(54906003)(6486002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?OVAzYVAySHFlTk5nLzkxVXlndExkR2dCUitpa2NsQWVtTmZDajY0K1lLZzhM?=
 =?utf-8?B?bmQ2U2FUdXFoaXo4S1o4SVJZT3VBdDJqd2hwT1pYTDJLcGVNMzVJR2JkcytH?=
 =?utf-8?B?L3UzYVpEOEdFNWVleGtKQzBBZ044K2dMVDVKS3NHTzNmSm1hZ2Y0Rmh0dkVl?=
 =?utf-8?B?dTdkc25Pd2lvNDR6VWcyMEh0VUVjaUswRHJHekdBRENnUm43OUxtMEN2YThp?=
 =?utf-8?B?ZU90aDFVNVp6SEhxcWNCdndsTnZLMEQ4c1NTckFUZ1NLbkJoYzFkdGxCTlQ5?=
 =?utf-8?B?UFh5YkFISTBWYVlhcDkzd1I2S1JhZjV4MzFESTlRelBWVzFVT2kxRlBhVWFu?=
 =?utf-8?B?YjhnWDdNOVY4NDVtN3hXTEVhQU1Pclg2TWNqYllubVBGUkQxUkFveWNYQnZN?=
 =?utf-8?B?TDRjczRkdzdVMTJzcDlIaGpVN09zUTRiTzB3cGwxY2luRTZ3OENVaXVUYlRT?=
 =?utf-8?B?Q3ZMNldWTkdLcnQyTWFuQ3J0UldsbDIwWEtJOWtNWlhLY1M1N2xmQTYxODB1?=
 =?utf-8?B?UFYrTzBTWUhXWEJncmRnZXBUMlA1R29lNjlUKy9ZTTlIclMrazYwNWFTN0h2?=
 =?utf-8?B?U29VeGFPYkpFWlRJQTU2eTdJN1o5anhGanN5OTJvOTQ2dzY5NWxHZWFGZWNm?=
 =?utf-8?B?VDdxcFFoelA2MHpFRDBsOExhcUZ2clVobTZoWFBocDcvcjdJMC9SaElYdlNH?=
 =?utf-8?B?U0dMVjB1UGpyd2I3Y0tkRWUybHh2cTFKbnVHcmh6MHErTVVqUkxkSlZtMVZq?=
 =?utf-8?B?d0czdUZXeDA0K2tGZThYSWJBNmVVc2JSaXFob09oZTZGSytpRDdKQ2kwQ2pW?=
 =?utf-8?B?Wkc2d1RTOU16eVpGcHQzcEYrVllDMDJ5WmpwaitLdEtJRm1aSWlRU1RhSERw?=
 =?utf-8?B?MzIvMjhOdzExNW1FYktkd3V2UGpJK3hYZ0o4YzBmUkY3dW4xNUc0T1dsYXg1?=
 =?utf-8?B?N0UxSitZbVlMTFdSeSs4ZUhaMkxDblcwZVV1N0RqRi9YY1pVSEpNa1ovY0pZ?=
 =?utf-8?B?VDZvTkRrcjNUZ0FUZTR5NU5XN1B4M3VMWVIrdHVJR1NXRzd3MEtWNFdRRVAx?=
 =?utf-8?B?Q3NKeXkxVCt2NUZuNWl6SWo2ejNDOEhyaE1hb00vZFQ5QktYT2hET2JzSUxz?=
 =?utf-8?B?R0tTdXEzbkVjbTcxeXdFRWNiSEJNdTUzeW9VSHhNWnJJRlByRkFSTER4cWYw?=
 =?utf-8?B?cTZoOE9vbXk4aEUzdHJielhVanR2Q0NRNldsNlJaT09aUUVEM0xlbTYrb3Ni?=
 =?utf-8?B?azNYZklIZzU4dFEwelU1V1psYmh4WE83RUlHWmwwS0Fyb3h5QkxWZnc0VlYx?=
 =?utf-8?B?Sk01a2V6R1hGN3hEZWQ5amt2R3AyZkU3a3hCLzdlUlJJWDJtQWZqcVJmbEkz?=
 =?utf-8?B?MTZJdndob1R5d2xyb0ZLZmd0cnVDcUhwMUMwVHlSaGdQS0czMENVMkVVc0d1?=
 =?utf-8?Q?RKgXjIgq?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3906c1e-fece-4959-f2c1-08d8c1724b66
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jan 2021 20:46:31.0404
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JuBAmf8/jk+iAyHI28CZ12CrxFPBXdF1lm8i8y4FY3OG5g4cYcEcWpyQUWItuG0HXRyYsooceXW3BLed0MNUnsoBHsnIb2rfN1K0hAq7t9Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2010
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 2021-01-25 1:57 p.m., Belisko Marek wrote:
> Hi Randy,
> 
> On Thu, Jan 7, 2021 at 9:47 PM Randy MacLeod
> <randy.macleod@windriver.com> wrote:
>>
>> On 2021-01-07 1:47 p.m., Belisko Marek wrote:
>>>> Marek,
>>>> Does this happen if you use the master branch?
>>> Yes this comes from master branch.
>>
>> Hi Marek,
>>
>> Is it:
>> A) Comes from master and is a problem on dunfell or
>> B) it is reproducible on the master branch?
>>
>> Given that you said:
>>   > I'm getting issue when building tensorflow-estimator (I add small
>>   > changes to be able to build this patches on top of dunfell) ...
>>
>> I suspect it's A only. Right?
>>
>> What are your small changes.
>>
>> Hongxu may take a quick look but we generally can't afford to
>> investigate all combinations of recipe/branchs as I'm sure you
>> can appreciate.
> I have done some small changes and now have tensorflow from master
> working on top of dunfell.

Hi Marek,

That's good to hear!

> Would you be interested in sharing changes
> back and integrate to repo?

I suspect it's not much work to merge the fixes
and maintain the branch, but I'll leave it up to Hongxu.

../Randy


>>
>> If you can reproduce the error on master without or even with your
>> changes then that's a different story.
>>
>> Good luck and Happy New Year!
>>
>> --
>> # Randy MacLeod
>> # Wind River Linux
> 
> Thanks and BR,
> 
> marek
> 


-- 
# Randy MacLeod
# Wind River Linux
