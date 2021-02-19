Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.11981.1613756054370145491
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Feb 2021 09:34:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=KoqeWRjR;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: randy.macleod@windriver.com)
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam07on2079.outbound.protection.outlook.com [40.107.95.79])
	by mail.yoctoproject.org (Postfix) with ESMTPS id AD98938C0867
	for <yocto@yoctoproject.org>; Fri, 19 Feb 2021 17:34:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U8f3Gg3wISUQDtIZSVsZg/dQ9yNwGAi4zEz1EV+k72czEFUXwMFHkRFxfD3oEMGRm0d6QtD5WxAYjP0Ha8Sc9H9dSgjQaVs5m0szqN4dslS2RVGxkrfkb2/YXkPFFQbx5+NqhtnpnwhCqZt3rrVa+E6cX34K9udLYxlFFHc/jHbcbDx0M+hAI4zpSynYOtJLZTrCSC8IZLuQZl12GBKDJUstLntX3bn3M6F08n//RJKbQLaghGi+65tltoMWsm99GrfkiG412kjzZGALAjKZOOcbWo6RHsaX8MDibTs8OFC3NXPM5OQif6D7nvdsav6jdxKFynXU4YZZEG9VRHC9HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6EjY7+ysTZNkL5Xv0ZnDLBRNo29mmtDPk/IrL8lGX8o=;
 b=oQnAk2Bi3s4lx+0IvL6oOKj3xtAWOrNZHv5Iyd7siIelS54r7hUbYNGrBAaLbVoTbS0o9rnWMvzR4sLysJewDRxCPEjJ+exQfyqXKA9t0f1AKK16w6iIipgi/hZdACAZDZnbt9dZwLvOwGGOgIatVgx1QamlNQJNUOcxH9O7402hwxoBBZd12jaur3vjKnwQutyL9iszQpqFz2ipq09QU3KwAEEvLReKj45Pk8z2hkoOfChxCojGKaBGhSwZmfeVBk5KOn/yGJynKTu0T9KqD1ZePbCWhdBfd6FZsv957nsqztVoud73YWgWxEZWQMj8E5btWbb2vv4bbNZ+0nmz+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6EjY7+ysTZNkL5Xv0ZnDLBRNo29mmtDPk/IrL8lGX8o=;
 b=KoqeWRjRY1Wi7+Qv4/YzlAHPNcvoeoLHCqNlvMs3ttOE4jio+9WFqLBB3mgeTWdusA8MJTpPFyUhaQhfqyE9wTbqvFdk5lGCYbJuA8m4mMz0XZF0FBOuHsnh2NhSOeVPH/yp1dS0rXSgqjGNJ6JvJu70crSWKO2Gz26fwPd43ms=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB2809.namprd11.prod.outlook.com (2603:10b6:5:c5::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.31; Fri, 19 Feb
 2021 17:34:11 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8e2:471a:7b63:1a0e]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8e2:471a:7b63:1a0e%7]) with mapi id 15.20.3846.042; Fri, 19 Feb 2021
 17:34:11 +0000
Subject: Re: [yocto] [ptest-runner][PATCH v2] Fix inappropriate ioctl when detaching tty
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Chen Qi <Qi.Chen@windriver.com>, Anibal Limon <anibal.limon@linaro.org>,
 Tero Kinnunen <tero.kinnunen@vaisala.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
 Michael Halstead <mhalstead@linuxfoundation.org>,
 Trevor Gamblin <trevor.gamblin@windriver.com>,
 Konrad Scherer <konrad.scherer@windriver.com>
References: <20200710054432.557157-1-tero.kinnunen@vaisala.com>
 <CA+_Aqit4UM=EH5ztSHbuVx84eHzoQN0NPU+ADEY7Sfi7=WpNDA@mail.gmail.com>
 <ca58386c-51e1-770a-253d-4eb1c13441c5@windriver.com>
 <f98f7d42-00b8-f2e9-389d-54d77088ee22@windriver.com>
 <24a6be4387dcf3d30895610bc53ec8f053f8db8c.camel@linuxfoundation.org>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <6c70c8c0-f606-6292-7351-d913f9f83167@windriver.com>
Date: Fri, 19 Feb 2021 12:34:06 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <24a6be4387dcf3d30895610bc53ec8f053f8db8c.camel@linuxfoundation.org>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BY3PR05CA0047.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::22) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BY3PR05CA0047.namprd05.prod.outlook.com (2603:10b6:a03:39b::22) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.9 via Frontend Transport; Fri, 19 Feb 2021 17:34:09 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bd4e8f12-2223-4cfe-7bb3-08d8d4fc9191
X-MS-TrafficTypeDiagnostic: DM6PR11MB2809:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB2809B48A7337117F477B361EF8849@DM6PR11MB2809.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	EljIkEdAgpzMeVPK8m5VqrwuUh/uYkDl+dmksyBNrmMBMI7++It5petr1u8U74jGLgLJnLozVucKA6FM93pwTTScWSRVIrwBww+n/icn8tBN/h8NIWqCmHQEeifT2EIWhkpAzno2XY9leoTAQMOpc9YeYZyN+J+jVl1+L59tUxkV2hLm2NBqJOnQeoiC8kLhmY0IzUUlXsO8IpoU50YBXX0upud9W5oSUiY//jUekWq51glBAfc6rcEYLYhZuQe1CntKl05Ij92iiWy3v7sM8KQCutbCB8w5A9uD0MtC9uMaRX9UZCkjl9oxGMGE8wz2m5IgyeKroyGT0XDGr8MCmwhoG9oBZuTRwYMYqOw63vgs6niuAB4Ie/Y9cMut66K6BsYPWjVp/ozXOCPMq0cD6NVfNsNa1BFFiFEFU0ftgcUICieocEipZbn8qNOa9nbcs3b4uv+r8WygWl/GsoKoe8FdAh2fqaK9HsMT8wuvbvqH419DcNsrTa5rIP1Oz3e79gXsyHuyTxeGZmnzGr15/xjLONM8OXMzahp+sOl2Dgrdj7hYpUBrTA15uELwkMZXGrPMbD0xQMFwRZ28hKR/8LIUmq+84ER8zQJP457Q0e4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(366004)(396003)(376002)(346002)(136003)(110136005)(16526019)(4744005)(83380400001)(8676002)(53546011)(2616005)(86362001)(54906003)(26005)(107886003)(8936002)(2906002)(66946007)(5660300002)(956004)(66556008)(31686004)(6486002)(36756003)(186003)(66476007)(31696002)(4326008)(16576012)(6666004)(316002)(52116002)(478600001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?bGQwVTNwN2xmVCtDa3hJcGNTckV5c0tvNEVMK1VpMlUvMGl0SUJBYTZranpn?=
 =?utf-8?B?VG5FMWpzeENpMWdPZy90Q05lR2FHR2ptZm9PVVZVVXhYOWxJeWx2Sy8zZ2Np?=
 =?utf-8?B?MENISmRTajUxT3Flb1ZFVzBwbGFscUlHaG1zK2VhSUJ6VWZjSHdRLzQrRmVl?=
 =?utf-8?B?SGxDeDdCa2lMRWZOcHZQSEVOSCs0SkNkTDdtQkQwMEYzSDBnU0V5aDdCMHhR?=
 =?utf-8?B?SUpsUkg2bnBFMWhCcC9OK0txWElYQlFudExFRkdvdkZXdEdZZHl1Tm92RGlw?=
 =?utf-8?B?VitoaVo4VVhoRGs0d0czNXFsQjNtZjFLVU5pT1Zna0VGT0hYMkFTM1JheW1i?=
 =?utf-8?B?RjBpbmsxK0l0QjRDZzhpS1lObzZxSHBLd1VxbExYUmNLWDdRSDJwV2J3Tzhq?=
 =?utf-8?B?bWYxSUlidkVkS0ZwaTBMSDRncWpYdXlhMzZUc0Nsd1c0bm5COWRnTlRjUm5S?=
 =?utf-8?B?NTl0eDdPU2xoZkI0ckZxSEQxS0g5Zi9FU1NUQzNEWDkzY2FhNGUxS1pRSzln?=
 =?utf-8?B?ZmZoYTEyeUQxQUlVTEZZaElLZHliNk5MM0twL2x5dTFBQ1M5OEtpck82dmVQ?=
 =?utf-8?B?KzR6Qmc2Ump3cUplUk9Gd1NpeVcyeFQxSUFIKzdHei9nek5aZk9zMjRRSFhD?=
 =?utf-8?B?ZGc1c2hWellyM0wyUzFPbHZOVGZDSE9QeFdWaVVnME1XVEE5dFRZdEUwWEZW?=
 =?utf-8?B?a0RyK1plNk5MbmtidDVTMEk2MmtnZWVkOVpYM1FlY1NCWlhmcys3eUJWc05C?=
 =?utf-8?B?WTlOWExyY29QeWZVVWhocllpQ1Y3MnBJanFTTFZLeE5SNjZhaTBqa3VDZzZ1?=
 =?utf-8?B?SjNlZjQzME5MK241L0ZRbGYzeWdmbXE1QzVyQ0tMc3h1VHZhSk1FMnFtVkVF?=
 =?utf-8?B?N0gxaEUwR2NJazFtVERYNWRRbFR3cHQ5RVh4U2t0RWEwMU5IRUZ2RGluZWNF?=
 =?utf-8?B?MEdRc0ZGdFpZdmdzUTNxSnpyVWx0RFVUbWtERUNMZVVyVlVSVUs1R0NUWEEy?=
 =?utf-8?B?OEIzZ05TdzZ6UW9xbkJCcC9majBpZHFaUUFYeW5RSjVqU0x6M2JkZjNuKzBm?=
 =?utf-8?B?TGIyaXh5UHRoM1FKMHFKTnBpa2pWaktQc2VnU1dPSE1hbUtyM2Nnak0xNTNR?=
 =?utf-8?B?aGxLZHJqaEJ2cCt5TFFvK2l1K3BjV3A1dWhhRm1mV3hwTlM1SjhUbm9VUURk?=
 =?utf-8?B?ck8ram5acE9kekZ3cFYzY3RPRVFQZVA1TGJndCswa2VWM0JFL25zK1NCbThJ?=
 =?utf-8?B?M3N5MzhtR0JJRmZ4Z1VQcmdScm1BOVFOQ1R2b2pOQm91c2thRVRkNEZCVjY5?=
 =?utf-8?B?YXhUY2ZOaVpvTW93eHUzVERWSk8ra255UXQwZ2dzYk1CUDQwVmFIdXhtSHFh?=
 =?utf-8?B?ZkhLeTAwT2pWOTFHR08yNnp6S2JJMXllSjRDZUtyTVB6dkFWcG5hdGdKY29z?=
 =?utf-8?B?T0JEc0w5QnlOc20yclF1V0IwNnJwQ1dzcWpxNUkzbWM2RDZ6N3JnTmFuMUV6?=
 =?utf-8?B?czdIMVlJTE5ScFdIenBuR2w0cUs5OW0zN0xCQm1LMVhxNnp5SGo2Z25KVTND?=
 =?utf-8?B?TWJGamtRdXF6WHJYc0cybXd2TGtNTjgydzZ5WWJjQUU1VE5leVhiVDRGY0ZO?=
 =?utf-8?B?YU93cDladEZRNm4yQllhSjluaFA0UldHNmwzK2IrdjBQa25MWUZYRlFNYXJW?=
 =?utf-8?B?MHF2SzhsanIrcnAzcEdWZlZBZkhOQzhGUUdyemEvR3RpRlhiR244UUtpRjBC?=
 =?utf-8?Q?scp19ECz0W49h9/qz9kMPpSuwc02vJ8PO43jQkX?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd4e8f12-2223-4cfe-7bb3-08d8d4fc9191
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2021 17:34:11.3741
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vzSOm+WLGPobp1Am39wBSKuD/qyXWharik/SzFR9XymqLrYSl7xNYyCXtQat+0uF4HUm+gpYWgiNHHjH78EwW3KI6Gj9oK6+2gB3Fo9TEIw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2809
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 2021-02-19 12:25 p.m., Richard Purdie wrote:
> On Fri, 2021-02-19 at 10:18 -0500, Randy MacLeod wrote:
>> On 2021-02-19 1:44 a.m., Chen Qi wrote:
>>> Hi Anibal,
>>>
>>> The ptest-runner repo seems to be messed up.
>>> This patch is no longer there, yet the SRCREV in ptest-runner recipe
>>> refers to this commit.
>>>
>>> $ git show 834670317bd3f6e427e1ac461c07ada6b8936dfd
>>> fatal: bad object 834670317bd3f6e427e1ac461c07ada6b8936dfd
>>>
>>> Regards,
>>> Chen Qi
>>
>> This was making our automated builds fail but I've added
>> the fall-back tarball and that should suffice for now.
>>
>> We should probably do something to prevent that but
>> could someone take a look soon and perhaps restore the repo
>> from another location?
> 
> I talked with Anibal and its fixed now.

Thanks everyone.
../Randy

> 
> Cheers,
> 
> Richard
> 


-- 
# Randy MacLeod
# Wind River Linux
