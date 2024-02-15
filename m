Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA15CC4829E
	for <webhook@archiver.kernel.org>; Thu, 15 Feb 2024 17:48:11 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.139])
 by mx.groups.io with SMTP id smtpd.web11.24085.1708019281891452103
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Feb 2024 09:48:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=MCW3gnTS;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.21.139, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ILYdvcSskp8XLDlxtMZzFTYv8tbm6IGcGeLBud2aldzzDAlIa1/AX04elouG6C2eeQJ5TNyjlWohvIlUE8wHA1X+YGDB4nB9atDRSynwh3kv+wMR7HAZD0HNT+7bGUeJcZTnLUpr3vFbjuzGkMSWY8kjpDJs53AlQVPJOgB6H3SX+p7DkcmW63TxIP/xCmGHSXHKY0uh8ZXq8YWqTLXVKf5PbTCwwsexXCt/814+NPdKpca6O2OEtnP8eULDs5oHdOiBFAggftSAxjsuzVK1jXs3eprgVmq0q/139NvksRrWeT6ckwxVdEH7Hpi7W5JUToczp5NDEsnfANJ2nzNNwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kldNI+mAAF+FJqAHU/UErXVsnxCU651Dw3Ej277VN8w=;
 b=QsFnO9x2Q0o5QZJIq0UxvlaGq8lI+eHo+gbYVh85ct8UVqFMc8E3sBsBiKQzesNFjkd4L+j+zGprhxedURT9XeL1bN765M3LAComE300Wwks0Elw4NzkZfUjWje//ieRcIUEQAeeHJ1GFCKi57z6tjyuFiTz8F4h16J/Wja5wRngjQ09wpCzjvR24CjPe6c16wRi/w2kl4AaAjATYF2F3dkbUHYCMlbJsLgMhlr2fRO6QnNgkeFba34rFbjLFlW8vB99LuV+N/9yXFETWQy8eTC7L5sKdmBLm420VhZ7AgaDcWnXsvY9mqEoXqadv+ZLVomwbFeXZKj8ptDl9k45/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kldNI+mAAF+FJqAHU/UErXVsnxCU651Dw3Ej277VN8w=;
 b=MCW3gnTSaz5O/7hrex0acYMobaF2gnA4i2UKejlroeBA7kB5OXux9fNKYfwIDjJwyNJq6gYS427/KDOdUGXsrtDohAwOmaw6l0MaYwg6HU6NehgczRSj2T5M5r8IRbHqaoLfRX9HtKYfVdcIDCU7pUvJjHZ495+Thrb1zgTPdu75B2TvpsE/ezlpAVl70iyFX++0yfzWriPLYIZtGsxV3edoLuPH67uV8mPKJ+BC01TYujp+EKeZu8StxAg5TnC6CdBhyF3OAOqelMSN2pY0GjrVwe07WkrEBIa+nhy0wEwvqLVJw+3C2sAdum9xLxBu51SS7OYjHsF77PUelxpkPg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by VI1PR04MB6989.eurprd04.prod.outlook.com (2603:10a6:803:131::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.29; Thu, 15 Feb
 2024 17:47:57 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e%5]) with mapi id 15.20.7292.029; Thu, 15 Feb 2024
 17:47:57 +0000
Message-ID: <bd0beb98-0674-48a2-af32-89360a5798f5@theobroma-systems.com>
Date: Thu, 15 Feb 2024 18:47:55 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-rockchip][PATCH 4/4] wks file cleanup
Content-Language: en-US
To: yocto@lists.yoctoproject.org, twoerner@gmail.com
References: <20240212202342.37778-1-twoerner@gmail.com>
 <20240212202342.37778-4-twoerner@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20240212202342.37778-4-twoerner@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0105.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a1::6) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|VI1PR04MB6989:EE_
X-MS-Office365-Filtering-Correlation-Id: 83ebb832-2f95-4948-e703-08dc2e4e3e70
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	miZoMcZEcVRYK1AK4IkMBB6OWPTCF6OjBqcqEvrpjUv01ZQQQ+bPsnX5M26OX9tBdoVB61mbxbCWrjyzx7WyPAd+Px4z7SlTUWfBoPkvYJNYdreo9eNHksERAbSgWtITHgNktlopCc5DF1qbcidg+YKCM8vqqgNKI+ZQLxNALorbwh/bS5ebyPX/t0QgZN1TnCTAkOZ05CeTjT8L3S0BuokYBY/A5dFkQ0rZz0kxPqZUokF78Ut3jL2MyqDEEE9Rc79WMktOM7m7SWjN8BpEn9vKzWjGCKQhQAsq/skPi6nuUCgXWsZY20xBQCjb3lO40Ku33kBUVw0aNObB8rLQ1LDf+8BP0r1xcqni6VpoxcAmrbNdABgtYiCitnF/t7bx1RhcL9eharX4KB/b2K01QW1x4hRmKPextdkdH4I0QDyLtpXk3UofXzGIhDH8bGXdhFm9OkD+uBjlxz+aaAf+tT3tJ6i5Q1EGUr/FLb157+jD/mrxrZ0udNXx7Ov7+jKiHGBSGB/0Dcabu2NhhVujlpagm95dHRMCrGl5aaEBELiZko5lp3e2NnX5pdDAuEZ0
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(366004)(136003)(39840400004)(346002)(376002)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(478600001)(6512007)(6486002)(6506007)(66476007)(8936002)(53546011)(8676002)(66946007)(66556008)(41300700001)(316002)(38100700002)(86362001)(31696002)(2616005)(558084003)(36756003)(5660300002)(31686004)(2906002)(44832011);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OWJRVUczRUNKMDFvd2U4aGt4T25tcDREeENOd0hyb253MXdIQk13anZRbU1t?=
 =?utf-8?B?UDlxNERKdDZDRld5NG1DOTBpeUsrend3Ymx4UGI1dUxnWE9hODNDby9nc2dQ?=
 =?utf-8?B?YnhGQWxnUUtCa3ZIOGRmaDQ0YlNJSU9UY0lKdDNvSlpIRGJURWtacDRydDhP?=
 =?utf-8?B?THI1TjgwUmp2QzRnT2ExU3FXNHYxY3JrVFIvN0Q5Mjk0b2tHUUxydmpoQmQ0?=
 =?utf-8?B?SzU1QkZLbGRRSlF4c0J2YU5WK3RWWS9oWitVM2xUeFhJbVhWQ2VMZFJqb2Nu?=
 =?utf-8?B?VVhZelovanJVSmFYc2VhblFHVERHQ2RjUGFSN0pZMmVuUGJ6SUhuMGpDOVcw?=
 =?utf-8?B?L2Q1MWxMcVl5WEEvY3phRHkveWh1dTREeG4zMGsxQm9xb2ZhNFAvdVJmQ3Er?=
 =?utf-8?B?b2ZpVnVYRSs2UmhBTlJXVEs2ZE9SNW9qcHdIT1VBeE9yMWxna3JKR3pQUXpL?=
 =?utf-8?B?S2N5OXpUU1dmQjhBTzlScHN5REVKQXh1VWswREUxcXdSVnk4R2dEditLTDBQ?=
 =?utf-8?B?ZDlsdDBQano3MnhKY1I1eEU5YURDSUhXcytvTmhrMGIrSlBIcm9lYzBIQnZD?=
 =?utf-8?B?WW5CaUl4ZHFVSjhmSi81YVFJS1VIYW1mNXljdjhmVFFlK3EwNm5yUVhtanh4?=
 =?utf-8?B?bHFwbUdMMzlxSmI2S0YrVVQ3Qzd3N2ltcjNMVi9TdmN6TllDQlh4SFR3TkxU?=
 =?utf-8?B?OFJHL256ZnJ6cUlBcnREWG9kRTJ2NzF6bDh2bGxaWG93MzM1RjVxbDRwdk1Y?=
 =?utf-8?B?TWcwWC9hUFJxTXJ1K0Z6NVBHcGZVRmY3MGhmV2VJdUZrb0JKUnlPU2U0ektx?=
 =?utf-8?B?UENQdFNDYWZwWWp5dEJmUVgwa2VWT3JWY0NicS9JZWhMKzMrVTFaVEVwOUxy?=
 =?utf-8?B?a2JPcHNZTmVqYk16UFhDcy9kc1hacGt2VGM1NzdvUzBlemtHNXdYNWZMK2l0?=
 =?utf-8?B?NDJ1aTg4S01jSHROdlRERWVIQ2FtRnBPek9OcE1UVjJ2cEpPSWZpY3FlSVNN?=
 =?utf-8?B?ZzVLSTljamRURWZYODFoaEhuVitBclNWa0VYUzhwK2RnSWhCc2lkaW9OZ0Jz?=
 =?utf-8?B?N2J0aVZSWFQrckxWMzRXalFzallSVThZZk9aY1k2bThvSWNEZzQyR0dKVEtD?=
 =?utf-8?B?Z3lHWGNOeDVvbWU2ODd3UEhWSmwyK2xwOTZvN0tWdnpJaHNwZHhXMklTSWVR?=
 =?utf-8?B?eTdSQW9ycGtGSmY0SHQ0dklYbS81ZVlQM3hUYXFlU2h3M2RKeXRMcE0rNmVJ?=
 =?utf-8?B?Y0YweXhuNUx2VURvTGM4bS9aMnFrelJ5Sy9KaE9tR05rK282Q0ZoQVFJUEEw?=
 =?utf-8?B?cVhGUVVyd2NpNzZETzBROGNjRzhLcUlmSkFYWTNOOGFYVCs2cktZb1ZDNXJS?=
 =?utf-8?B?VUprenhkVFJVWjFSVlBEZHRmdVBVMVlURmdSMWpuV045a0xNdkh5Z1JQZDlj?=
 =?utf-8?B?bHlPNjZ6WUVlVUc0UVZ4VWdNOEZiYjI5amZqUHJJK0NNT0hHN2x1OU9BQ0ZB?=
 =?utf-8?B?anphQlI1NDIvcUwzWHVMY1d2UGZsQVpybkxFYzI0MUxObFhNbk5Ecm5RanZ0?=
 =?utf-8?B?eCtUSC9tNlh2VnZBalp6RmQvL1JDcFZUNmpvWXBqMTZGdWFXM09ZOXl5ekU2?=
 =?utf-8?B?bGhMVmc5SDg4Wm5BMHpRNVVrMm5aWHl5WitFQWNDMUtWQnFCMkloVWdJY1JO?=
 =?utf-8?B?SFFvZTQ2TDBsMktZanU4N3hPRll5dXBxeW04NGh5SGsrUld0YlNQeFZhenRn?=
 =?utf-8?B?T25nYnduZktzbHpnRndrQXhsaHBZalZDY0YwWTUxd290TVp2bjE2Q293NkRJ?=
 =?utf-8?B?MGNaWkNOWDBmR0JuUzgwWUZuay9sYmVnNGs2SmpYQmdFVkp3eUhNdEFxcnhV?=
 =?utf-8?B?WHZlMk42RW8wZlFzQS9QOXFEOGR6ZCtCVWV1U3huVGhhU0Y5WUFWZjluQzVL?=
 =?utf-8?B?MHYzeU1KMGt2OEt4TzVpeEJ3VFZrb1ZOUFRDek1Jcmt1dG9EWGUyU0MzNGE5?=
 =?utf-8?B?TjFkZEErSTFHQnRVYkdwbzIwTEZTRXN1L3hwQ1Z2Y2pyZDZ6V2dzR2Mwb0xZ?=
 =?utf-8?B?aWVGK0lUNWkvWEhhUkxsZHhLRnMrL1BZbGZ6V3FpRlZQQjVKdjJXRlZWem9J?=
 =?utf-8?B?bjJ0VFJzbzgvZ0xXQ281alRUK3J5UFJ2Z3lQTldKTVJiVU84SzJrdkx5ZDZP?=
 =?utf-8?B?NUk0YWtNTW9BRFNNR21FZkEyVzF0RnJ6V2lYV2oyZVNJU1UvZ1psNlkyV2VI?=
 =?utf-8?B?WTd3MmttRzVUVXlCVGZHTDNYNVNnPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83ebb832-2f95-4948-e703-08dc2e4e3e70
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Feb 2024 17:47:57.1007
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +kFAlf3diAyRDGa4cMHHPQ0+xS52bVsmqPTNHELmOhfuSx0yDVJeyw91AV1Erbz4PQGIWXwgAiPbLAvbCtHNHWtRtkvISFdDyB08bl/df5kzCvHTUeD70w9dlgI97/5U
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6989
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Feb 2024 17:48:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62499

Hi Trevor,

On 2/12/24 21:23, Trevor Woerner via lists.yoctoproject.org wrote:
> Cleanup the elements of the wic/rockchip.wks file so they take up less
> horizontal space.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>

Reviewed-by: Quentin Schulz <foss+yocto@0leil.net>

Cheers,
Quentin

