Return-Path: <Kris.Chaplin@amd.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C094C636D6
	for <webhook@archiver.kernel.org>; Wed, 22 Feb 2023 14:06:27 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (NAM12-BN8-obe.outbound.protection.outlook.com [40.107.237.47])
 by mx.groups.io with SMTP id smtpd.web10.9585.1677074783522290064
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Feb 2023 06:06:23 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@amd.com header.s=selector1 header.b=FBEB832s;
 spf=permerror, err=parse error for token &{10 18 %{i}._ip.%{h}._ehlo.%{d}._spf.vali.email}: invalid domain name (domain: amd.com, ip: 40.107.237.47, mailfrom: kris.chaplin@amd.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hduixXMKU8qPBexbm7bg4ykk6jZDUxcDb+/ZX2OKkv9lmGetFsA/brrtO6KCAhPu7/Zg+kp6y9cOcWasUADbmghLx2pz6XJogwSnJ2glHz/quEux7yxwg9R2eDTDzZrs95hlNb9XFEvL0rwqJ4a/vLeYlVipYhXwOBkHjwAwcnExFEq5KJ6hFUz+OdbgwT9jcoO6pvX02cFzF1ZVEkbH44sEKhxh8J7XFDGtPisI2i8bLRKenLDSeSGg7yQEV7FZQ5hEYDDZvSkxo7QM9TDzqGMwOBDcOooJ2sr2ODl5OIcuwBLP+NEidf1jGO6EV6E2nq2caOpKMlCQljtsuP4TCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ca38Vu06kMjJ137rs6lfm5FG6sRS2vKdMll5j9OND4s=;
 b=PWoclFSFFlQj3miZLcUSXCrYzTmtF6mKwTMPST354FLeYwN6OsWliGptgthhKCVQDRhL8vvseP9+2TSa+VzP7LKD0AOkExl6h/NE/uYKiEtjbxRVQsSd5NS/28ZIyhIUeWn1R+8q4XLyQ6B8hN2QsqJ/8/shQY79t+/vr2muX6t8y9WEKpoyQNBMRFrByksqlPDVtve7wockuRUIagUYmP1eR0EazV6QgU+Jy+S0ARtBUUE+a7rCxQhfknfr5QaG4KIqUm0w1aQAJpdJnTflDEsAiJNYc3AbpDMz9UWqbWRcorIHygmNx0+m97RAARluqk6TZGKnO7pguu+oNxocqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ca38Vu06kMjJ137rs6lfm5FG6sRS2vKdMll5j9OND4s=;
 b=FBEB832s19eaX8svo1fK7kz9Qk0XQdN4WzEnbcSIN9Q8o9QvlEiijCj5P2Hu5WIkFTyGccznT4IlgmP4t570kZW9xxE0qcihkNr1EDU6RaUbuwoASmYB597BZ90SK+4MXJW7pY4VNn0vE6oA7wFSLSMPX53WIBie2JFiB0McqT0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BYAPR12MB3398.namprd12.prod.outlook.com (2603:10b6:a03:aa::24)
 by BY5PR12MB4164.namprd12.prod.outlook.com (2603:10b6:a03:207::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.21; Wed, 22 Feb
 2023 14:06:20 +0000
Received: from BYAPR12MB3398.namprd12.prod.outlook.com
 ([fe80::dc39:38f2:85ed:4e2d]) by BYAPR12MB3398.namprd12.prod.outlook.com
 ([fe80::dc39:38f2:85ed:4e2d%7]) with mapi id 15.20.6111.019; Wed, 22 Feb 2023
 14:06:20 +0000
Message-ID: <c15be7b4-5cfc-8d5a-2513-9c707b60b532@amd.com>
Date: Wed, 22 Feb 2023 14:04:10 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [yocto] AlmaLinux 8.5 support in Langdale
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Alexander Kanavin <alex.kanavin@gmail.com>
CC: yocto@lists.yoctoproject.org, Steve Sakoman <steve@sakoman.com>
References: <6f655eb6-f8f1-f8c8-9c8f-0c600e28f2f0@amd.com>
 <CANNYZj8wxntD9XZxqrd5HYGkK5nKb=+VuqOUj1cGsUmE5ivWLQ@mail.gmail.com>
 <e103fffb-2ad0-76ee-9cc9-31da580d1873@amd.com>
 <657dc629d58e38f649b028aba7d9a614356886c7.camel@linuxfoundation.org>
From: Kris Chaplin <kris.chaplin@amd.com>
In-Reply-To: <657dc629d58e38f649b028aba7d9a614356886c7.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: LO4P123CA0287.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:195::22) To BYAPR12MB3398.namprd12.prod.outlook.com
 (2603:10b6:a03:aa::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB3398:EE_|BY5PR12MB4164:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c309954-e952-4f49-e547-08db14ddf916
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	NQAbuaO7p7WeuY3yPkVFQC+tPJDGwSxw1vPZOl6AJtOdv0Gpjp59XcIL+AqsS1xOVBbl0oaFZn3U1H+5DoI8dHY+Xg4cODPGdjSfeYaF/YzTd62I8fnBanrypkCQDiKK5RZbRE/KNh91WZ6GKBHJYVmyomZXbsR1TcHgmzAjcuecwDUeQYwWC49td3fAF6At5ZSZwfgYaHPV3bzPDJ+8F9RRgYWmF6kFl5XIy40IAMEs0RUEOWqYxBs9LcnplW6mEDvP9166ZpNq8le0TdsdpSIorBbJqbY/ODJ56fZ5dRxDuX2hfU80LwA5iM4VhnjUrkIClFGzkDj54v3FB4d+G4jkrK3v6uJewQzMwC0e8KhuMTyQ9WKH1QcNBz6pwWLia5TWgG9ITnDnY3y5UVey9DieB2jJWomrqfhI0UJ9puCm/ORHincSKpCeZZi67g8QhrGfMRU9hgoY69C//oQ4RdIOtCPnFYhH2YUiCrE511Rl50DIyc++3s44rqtDgs9bl8rMDlg7pSh53bHz029KlFHhOS6W7bKiVqD7MVWHoA8anwKCGxKD8Enq1hg65hfRpfGhMkOFIqynShSF/gRqf+IHBkzVZqAnzSOOzTNL8DHVdhnwS5lrN1iQMzWyMmWX4DfA5y/iY6SnAw8715QYiWz/qiuXyshOh39kv7NZ4qtnsILMOCyKCWoDyQ7RHxM/I5n7YZxQswh/P9TTT3Z9bg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB3398.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(376002)(346002)(136003)(396003)(366004)(39860400002)(451199018)(31686004)(83380400001)(316002)(110136005)(36756003)(4744005)(66946007)(38100700002)(66556008)(66476007)(8676002)(6666004)(2616005)(41300700001)(6506007)(186003)(26005)(6512007)(6486002)(966005)(53546011)(44832011)(5660300002)(4326008)(31696002)(478600001)(8936002)(2906002)(86362001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?YOhK0URojChhx4loo8slL44xeCTrYnG/GV9KSwUqlXfsg0KVgJnmw4jCj0By?=
 =?us-ascii?Q?cXfNR/1htm6I/IrcT8mdpz4yBg1/TS0NeTE+Zx1/8zus7xvtExjNOhUb4Y/T?=
 =?us-ascii?Q?5FhJFYg7EmbeE8//LLyUVJzLtMcIXB1QjcEvw9W8DUGmNTdMUc9Bu+4Gdwdy?=
 =?us-ascii?Q?kULYjZEk6EXbnPJZaUGVu8sEnW3omkXJk44mT0XYzluy0ZhRGi48CbjwrUgC?=
 =?us-ascii?Q?87RAGWl0kk2D9o2XL4zsUYLB6YiuL5+Ep2Scir6N6M+yjU74sQooE6ZpV8Vu?=
 =?us-ascii?Q?Ues6sOQ85N7K8L/WPnqVYsiRMKn0BH3LXTEL8dC7XGulp2rElMmY14J4x5oc?=
 =?us-ascii?Q?iSugeK0xNJK1T7OTkRrPFZ1vS2+8RsMp/0zkH8fA2uV1RKrmrUDfLMf9N49q?=
 =?us-ascii?Q?jW1Lpsh17gMeAlFhox8P94xmKopeEaK5K+iGNav/UJ88qcvsbJZuB7zV8m+V?=
 =?us-ascii?Q?+9lE72JP8sIhIMIRno90Do165Blk8edc8UBRuZiWNxqJ+5zhQ3DpjaSOpqm1?=
 =?us-ascii?Q?PdN8ZVaa4pc2e1nLR3bt7PUUEiwPOg3QKCRKIYVHTr98/Xt5m2VDUhOHCkrx?=
 =?us-ascii?Q?rlWxsrrmypWS19QJtNFctFiq2U8QD6zdA1KRn5lClTw3uz1uFLeSk5fa4fg0?=
 =?us-ascii?Q?bhajJO/7D0i7ftn0yM2wswS9K+FHjipMPYa1LCqUR0F1JhZD7e9jdDsj6iCn?=
 =?us-ascii?Q?tLLtMifZkpx0lNJ1b3pjvoW0CV1EVXpj/Ed9vjfj93BvLN5X6UwGSKm4lPOj?=
 =?us-ascii?Q?rtUADO7Vbc0YKnD2Gh/TIDrfPOWrx5sBcYd9CCUPSePT/zsw5rWxAzeeILTA?=
 =?us-ascii?Q?ff4DugR0lekOdAnoHDWokTafRq5l9MSXncZ0wPA6mr58poSt5IwWAf2SdViH?=
 =?us-ascii?Q?Z+mH7WiPlrCMIKcBsA8LPLb8BIOQdT5i8rQiU722CIcxZHvRtsCdC1DYMVVG?=
 =?us-ascii?Q?7TOm9ynnP7aOwUD0yftVl/EE1H8GgUHxmL9sCNHnmfmzpciDYO3kerXhUMqz?=
 =?us-ascii?Q?uWzloyTraaUwYFByM1tJNdFXU1XotyxPdjetYNL6vEej8gdITvGkp2T1aHHM?=
 =?us-ascii?Q?R7tMbsVwUv9qYgXQPgndVXSJEnfQ96qNl1PDuQ4E9xQytI6rHiO9rIYqxQO+?=
 =?us-ascii?Q?VGVpUx530Pflf/9gsmkJCyORJ6F8vpcPstsgnoIS7tFqCwbDZ/QumR38Sbvn?=
 =?us-ascii?Q?r5uuzIuCZMa5v8kt+fJkfO7TJ9dq9kzA4/fiiZJ37FJWhcgCkWp+FteZsTDL?=
 =?us-ascii?Q?VotIAkO4xL6RNPEh8JC9tx3o8h5NNnXanVpHAWXl8ZJIO9s4xgOBz59vZJIr?=
 =?us-ascii?Q?oBX864lGTpit0c381TY2+9ip+XLi8776sL1b6wbCfxAS6LHA893QbudaJqRz?=
 =?us-ascii?Q?832i/I2QdoDdL+1RjRgQLETj7F7+ZnYKc2ABhm9hHFWiLd+UBIu/UulVxZp3?=
 =?us-ascii?Q?PNIQt7thNLXcPHYV4vB9CBkIXx5TmUIPh/PEOh6T/m6/n2uJy76I5c28rVnC?=
 =?us-ascii?Q?0X+g/1SzU0bBg//W4dw5RD0TbzKT8uyosFop2JBZcDCiBiIikxFz//j4HXVL?=
 =?us-ascii?Q?Tz/FKQeP05s/GdbQAT2p2/UIQaYl4maj1z3+AUOI?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c309954-e952-4f49-e547-08db14ddf916
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB3398.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2023 14:06:20.6474
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9zj/HUQveyrhsUTsyYBX5zft490qHP7C5TQBrV7Vgddq/IbcG5O0syALwET4pxXK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4164
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Feb 2023 14:06:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59276

On 22/02/2023 11:27, Richard Purdie wrote:
> Just to loop back, we've updated all the branches to mention 8.7 now
> and tweaked some of the other entries too (thanks Steve!).

This is great news - thank you for your help on this, and to Steve.=C2=A0=20
Will the page at=20
https://docs.yoctoproject.org/ref-manual/system-requirements.html auto=20
update at some point to reflect this?

Regards
Kris


