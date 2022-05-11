Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A9F6C433EF
	for <webhook@archiver.kernel.org>; Wed, 11 May 2022 09:09:51 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.46])
 by mx.groups.io with SMTP id smtpd.web09.9114.1652260181315494288
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 May 2022 02:09:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=Lmf2bAnh;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.21.46,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TUJtYTkVsdGRg+uWJ+FQwmHYmbzO37X+nL4bgmX6JlRklsyAst0pwsMwqXtqrn39ejWAqFv0uPVdMpFkfKxEo12K3niXnqtuFO2NDErnsz/xTpw7z2lKEPMI2b+Yk/rh/TB+940kSOxehImn7IkiBT8FuvhT2A03Ji3gFF3rYWUrp4n5KYIHzTH7XDHUC/6CPAzXfEOZixYGBCXzod3O4RdEBYC7NLSsHNYZ2XEiBwLjR650S05yW8ROgNQEa/SB9ez5YWhGFaC6ylobrzqCi3CuOQk4vI+K4IIIyQoa3TOakMNlv4mEna31NqO1pfNA40tCutpetPNB/PWzW1pgng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=52s69CDuifwmQSwik69BByGBLtNMhMxabiTHcbGDhQE=;
 b=E3WBD5POEUR6QFgh/0yOX9FTBvu9c8Ykd3OnsKlmGeq6oOVY7ejcaj+kEi84IK7Avt7l/XPRoD849S4t23cHr9CjmWIel20elenQ/7doHBsfhs5qdXrzQUOdj8dNfe+NHV5wI9lCryw9Jw/ZPruRZVtse1vLKKuTj1nWcDnrEmJc0fq81XHhcx0drIbW8hd+DlodDta+eJ3eS68hioKZ5uKKoNREuskQZeo+hU8BjTHm/40xksPGVRlKPNba84Z6wm2fLO50YTcGKDc1yjlkM9qIxUiWQwQwVLxqAY2Zu9mZPs82uIk5ITUltJ18YcQ7wf8CCocFBtRPxI32AF8CxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=52s69CDuifwmQSwik69BByGBLtNMhMxabiTHcbGDhQE=;
 b=Lmf2bAnhV0pUluvoBvDMfNA9wSLp/Fhoh/qSILUc0UvonLYzNTGkJRUFHqtDZ3JwDoYN/uXufANiRs7Sxz0rCdA8p+/JocPd2PPWgH+tPbz4M/dnEZOhcDMaraE/Jc8779K6tlg0szapGA7XJjkgiRfXGGfNw92o/8qXL/OMegE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com (2603:10a6:102:2aa::7)
 by AS4PR04MB9388.eurprd04.prod.outlook.com (2603:10a6:20b:4eb::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.23; Wed, 11 May
 2022 09:09:36 +0000
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::e443:c646:c299:5512]) by PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::e443:c646:c299:5512%7]) with mapi id 15.20.5227.023; Wed, 11 May 2022
 09:09:36 +0000
Message-ID: <73c6e3bc-8b98-322c-ad7b-646e91a24572@theobroma-systems.com>
Date: Wed, 11 May 2022 11:09:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper v13] Add a banner on the
 old documentation docs. Script to add banners to the old docs and outdated
 dunfell docs
Content-Language: en-US
To: Abongwa Amahnui Bonalais <abongwabonalais@gmail.com>,
 yocto@lists.yoctoproject.org
References: 
 <ddac85a4c2c087e8fedf8064126f3f19764e7a59.camel@linuxfoundation.org>
 <7109.1652201191406393524@lists.yoctoproject.org>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <7109.1652201191406393524@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM6PR10CA0091.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:209:8c::32) To PA4PR04MB9367.eurprd04.prod.outlook.com
 (2603:10a6:102:2aa::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e3457ab9-7478-4200-3bf5-08da332df8a7
X-MS-TrafficTypeDiagnostic: AS4PR04MB9388:EE_
X-Microsoft-Antispam-PRVS: 
	<AS4PR04MB9388B8E7A67FD2C2EA84681AC2C89@AS4PR04MB9388.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Z/rj8b2uIN33k0ky3maAXqr+wHg+o80DT6/RQPBhzkkqnv8AFq0gPEl13Pg9a8v14vqdL1eORCgGbajXQegIJ+A6buVl7pV0ZPsJdxp8RxD4LAZOPPvHepAiv4BVNl4kNfUX6f4fBbJjLlygxIxVWbaG+xZcLlTeZPR8CUU5IGffnqafD5Ibhf1slmXemwOr18v1ovwUbgg7WqeOBwkx7aHNd6cVlHHw+TORPu2KuXyXnNnHtS9xmc2rvlSU0PIIsbsRBNS4hHoRVVMrTbYpyJHnqP0rYRFtALeWVv1mqRA/Zp3s8HhXTNDpzmNPHHsZOLHKl9mgMFU/gyX4M5QN6+DaJ/C/8CUgmK/F1FJP6RMqxyJibdlk14nhrurH2jvnC2R3j8kT1tJ0ngbdk8snHOM/tD8GiGLxSaICKA1rMDKRAXGW7Z7ihcd/Vqd872uLRyua8rnA194KmG2mu9nKPVdjP/dBmrZYz0BuiqD5ks1ZXWuylpLTkma7JuuVTokIdR+QVB5BaiVrwFoFJgCrxmlAK8cGQS9ssgDtVvupKLL7MTNtDpJ1xIDt7J0NPKOwgOOJ4/8NdtflCJAaKittbswA+ecxgVIFALtkx8Wcwo0sc9jssXrZSa3JN5DskF5Lrnjp97YFFZCtEGksd0BZeOrVv1Ug4Q9CCOKrrcuWwRUEI3+PDodgIG+R93qNBP1XbX68FLvpjQ6CE+oB6VqCwfalIDiT2j4Vah8dG/imhjo=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9367.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(36756003)(44832011)(31696002)(2616005)(83380400001)(53546011)(8936002)(66556008)(66946007)(66476007)(8676002)(31686004)(38100700002)(316002)(26005)(6512007)(6486002)(508600001)(2906002)(5660300002)(186003)(86362001)(6506007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?N2h0WHVFYUFScURNYWtZVTlRbzRzNEg5WGFtZVh4WHFJTERaNE9QbVNvRW9n?=
 =?utf-8?B?dWZmOVdFVmE5RlFqbFo4QTBsV1VlSFRzZGtjK2dqcnZLN1FsU0xrM0tGWHRz?=
 =?utf-8?B?R2twMXQwUDVwUG1lWnkySUdseGtXOWZ6NW1wUWxXcXRremwzU3pnTzNOS1lF?=
 =?utf-8?B?N1BlZkVmZ21MVGFjWE9WUFI4M1hjNDNOSEpKbzRHaUlHYVZzdDIyLzE2amNX?=
 =?utf-8?B?aUdCcUs2Qml3bmJMdHhKUlFwNU5tbVBmWTlIYnBBWE1kNnVVOHBwU1pXSzgy?=
 =?utf-8?B?Vno3WUR4QkxtYUNyL0NORTJaaWJ0OUhWcjVYSXpCTWFoYzJsUjZoL1FOelVF?=
 =?utf-8?B?T2FSMWRiaGw4NmU0azUrV2hyWUdqaEswTUpOZVJnRzlSa0l5czNCdmlOZUor?=
 =?utf-8?B?enRGWHBaNytuZHI4RDBkcFFGcXZLTTBsUlE4SlRsM0RvaUh2Ykxpa283cE5Q?=
 =?utf-8?B?eHA0Tmx3WlNUTzZOU1BXMWpTS3FzVVhRNU5WSDkwNlhCcFFMdU1kQTIvQUwr?=
 =?utf-8?B?S3FxVUJESHFHdy96UGc0dlBodU9VYXVMcDVvZHA2SFZmVGZVRlhQQ3pSaytm?=
 =?utf-8?B?bUdIZURuUmdXY3U2ZXBjOHJ3MUhuZituRUUvRVhSVHJSaERDdTNjaC82Yk9Q?=
 =?utf-8?B?VTZ1aGVQVjRXaHhYMmI2ZnNsOVh4NzU0aFd2bVhBNmQ2WmpzbjU4Q0s4eUNY?=
 =?utf-8?B?ZUhEU0FPaTBIRU5LbW9HQ1pWV3gyQndoUGs5Q1Q3OXlGRnR6emptT3MzRlE4?=
 =?utf-8?B?d0p0S2VFWmVhTzRhOTQ2bVF6TytJejdJYnRzTmNIcngwd2haUU9ZNGYxZUNk?=
 =?utf-8?B?Q2I1bmV6OEh2VENkTU9CNmpEYlRIdndkbGtWWCtsYzB5QkNYdUkwQUdhZWpw?=
 =?utf-8?B?MlJhRzdGOWo3bDVpeHFwZXNHeXI3ZG5BeW5RaGNjRnBSUDZQMk4yL0ExcXlw?=
 =?utf-8?B?UjRyQkNGYlVKakc4QS9oWkRpNmFWQUtHdG9yU3AvYWt2K0xIcFhJVFd0Z0ZH?=
 =?utf-8?B?dXMyTFVmVzNVWDFFWEh2SGRaNGFhZ2pqU3R1MjVaZWE4WTNkNitXRUVFeDAx?=
 =?utf-8?B?OUp4SThoQTBDL3Z4clMrdU5HZlUvZ1hDU3VUZ01Va0tsTnZSTHRHNzd6VjNk?=
 =?utf-8?B?amRTSmFVVGszWXpzcmZqb2FDZVZ6bjJlTkNzOEdLSWpvR0FNNFpMMm9weHVP?=
 =?utf-8?B?Zlhvd3hXSldEOWg5U1ZqVmhsN3dJVjZIUEpWU0lvbmlXU2c5OGRVYmNGUnUy?=
 =?utf-8?B?Wm1tdzB5WDdZYnFHZUhZc0thM3lCUzBoc1JLVkNWUjBwSnFKc1BJTm44TkhC?=
 =?utf-8?B?Ukc4dDBuMC84WjVOaS94SStCRW9pK0dMcnlXZTBkNU9MSlFhUlhoVlJnc20y?=
 =?utf-8?B?MnRlb3Q1ejVOL0p3WXJKYlRjM2dZRDE3Mlh2dVEwTzZZYzIwc3VFNGdpZ0Zx?=
 =?utf-8?B?QzlweW15TjlRdFZjNFJYcC9tUlkxeHRwZHBUOVZ2TE5aWTQyK21veUVEREtJ?=
 =?utf-8?B?aUo2bUsrcThwQ3pvSlJrZThrTzZJbVpOcFhiWHhDSFNHV0lJZlpRanhaaW1J?=
 =?utf-8?B?Y1VMcnNNL0RoNjdwREFya3FuUTRncHArSFBlUVhaRExESEZnUUFQSDl4U3RY?=
 =?utf-8?B?R00zb1dkMVR2WGszQlpBajRZSXdvejRSZ1YzRThIYlYwMzVEb1Jaeng0Wmx4?=
 =?utf-8?B?bFlQcGlPS2ZybWJRWGY2d3Y0SEdQREppaWRJNU9aOXNZL3NIZWtRKzdTLzhN?=
 =?utf-8?B?M3c5WjAzcVhGOXpRVXZpTlVXTmYwN21jYldwRG1YNEY5a0I5SlkzZkJIQ3lC?=
 =?utf-8?B?L2lXZUVYRVZlYWRYQlNBR3JzRWJZSzVWUGhaWlFKQlVJdnJXeklXbmpGNXh0?=
 =?utf-8?B?L2s5K2lBdUUyTXkrV1hFUkVJT0x5bkxFVnZ3NDdWNDhIeE9ZQ01WUTd0WHJD?=
 =?utf-8?B?TkpxK1R5eTVjMmVnZVA3eW90UFNmNGduM1J5NTJQRGRlYXZtVGwrOTJDOEZP?=
 =?utf-8?B?S0JlQUdPZndaTUNWZGlURFdiYXBGYTRrM1YwbG9pOFR4SGpKNzczcDR2Uy9Q?=
 =?utf-8?B?TGJRaEp4UTFFV0hqZEEyMk11ejhSSjlkSnFFODlTVG0vTW12ZnliODFGWG9z?=
 =?utf-8?B?NzN6ZkoyVUkyVXdDSXlteXJxTHhJSTdWelI4cWtNdVk4M2xPWkptdk44eFNs?=
 =?utf-8?B?eEpEODc4ODdsQldnK1VNRkt1dE1JaXZZQldUOHRTRG1GdFUxRkZ4UFUxSkM0?=
 =?utf-8?B?ak5xSmplbU9BK0gvdWo5YXgwc3lPNUFwYUw2dlROT3dRaUlRd2xOclcrY0Q4?=
 =?utf-8?B?WnRRbDdlK1VyaXczTWVTRGlnZTVtTEhjc3dCWXdwVUgvWERjYyt1ZmU5b3ds?=
 =?utf-8?Q?CBeY6BSnm2UZnGNLeGlQuKTo2pRNcl/mOgcNG?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 e3457ab9-7478-4200-3bf5-08da332df8a7
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9367.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2022 09:09:36.5850
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 oJs5C/40T65vtn26VwZFZHAkbkMYswBG3wq0JfG/qKaON+vI3D6Ifu9qJN4220y16R5x7DvlG4Nw9gm1z5f/0TlmCqcbvkCmkB15jJ4Pm+Z3Dhy2nrzyl81SCum7Mwym
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR04MB9388
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 May 2022 09:09:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57054

Hi Amahnui,

On 5/10/22 18:46, Abongwa Amahnui Bonalais wrote:
> Hello Richard,
> 
> Thanks for the review
> 
>>
>> I think Quentin also mentioned that these two loop functions can be merged
>> together to form simpler code with a condition in the centre section?
> 
> I'm sorry I don't understand how to implement this as I tried using a function in the code but then the dirs was modified constantly when it was not supposed and I did not succeed to prevent it from doing so.
> I will continue doing more research on how to go about it, but if you have a method you would like me to use, I would gladly try it out.
> Thank you.
> 

In pseudo-code:

html_banner_dunfell = "this"
html_banner_not_dunfell = "that"
css_banner = "something"

for directory, files in recursive_traversal(path):
     if matches(directory, '3.1*'):
         html_banner = html_banner_dunfell
     else
         html_banner = html_banner_not_dunfell
     for file in files:
         if matches(file, '*.html'):
             replace(content(file), html_banner)
         else if matches(file, '*.css'):
             replace(content(file), css_banner)

In v12 I commented the following code if you need something closer to 
proper Python code:

def add_banner_old_docs(dir):
     for root, dirs, filenames in os.walk(dir):
         if root.startswith('./3.1'):
             html_replacement = html_content_dunfell
         else:
             html_replacement = html_content

         for filename in filenames:
             if filename.endswith('.html'):
                 with open(os.path.join(root, filename), 'r', 
encoding="ISO-8859-1") as f:
                     current_content = f.read()
                 with open(os.path.join(root, filename), 'w') as f:
                     f.write(current_content.replace('<body>', '<body>' 
+ html_replacement))
                     f.write(current_content.replace('</body>', last_div 
  '</body>'))
             if filename.endswith('.css'):
                 with open(os.path.join(root, filename), 'r', 
encoding="ISO-8859-1") as f:
                     css_content = f.read()
                 with open(os.path.join(root, filename), 'w') as f:
 
f.write(css_content.replace(css_content[css_content.find('body 
{'):css_content.find('}'[0])], 'body {' + css_replacement_content ))

add_banner_old_docs('.')

Not tested of course, but hopefully that helps you understand what I 
meant with factoring out the code into one function only.

Cheers,
Quentin

