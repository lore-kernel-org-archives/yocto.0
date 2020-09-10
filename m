Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.75])
 by mx.groups.io with SMTP id smtpd.web12.25942.1599754959310544548
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 09:22:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vaisala.com header.s=selector2 header.b=RDIRZqBm;
 spf=pass (domain: vaisala.com, ip: 40.107.14.75, mailfrom: niko.mauno@vaisala.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I2AYX/O3m347fFCS8g+M7ACWLFhNd5u3amc/BQ6KpHQPLw0dgAnWHnYe8mhFHhIS8NCo+laFj7u0Axz+v4hbIp1PMdxtC1e5Fo/tsCPDx9Mqfnbb/+AgRLy1IEjx5nTWGIZCJB0lOlrIS7yUWzbg4+CRl76S+ar5JA/wCT/McOagqyxqS7rYitg7Bju6kuZwP5yRDZIjbTkd/CF5p9avvSkhK2KxvV7HHsIe/cidFWQP4K2JzmqaZyfvuGBMx/8ttf42QRk7Ny+kAm6nkZPZOEAmDzv8ePqJ31R7prZ/NQLiGkRp3DDw4rww4gRj+0H2fhqyC63zPd22NxFntbVaBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TC/01DaVrLJKlpQeMneDNLpOLgs2neknv3Nu5mY62Cc=;
 b=Vm4cXWoBBEZxkURs84DdWM5r1dTybAkbL/PX1yhnZ/xVoXhafKBP1R0vF4K18qQK1G6NWVkhpzqEZZmCszIQfE8MYgxpOYE918wt/FF5dbSmUaIICYHTFnmSROAIYVkUIKH9zgoXartyuFMDY8Ms3kPBVeiQvZyd5xyvjTN+vFufmei9wevX9Kgh9v4tfFCBo/zgaYB/CnPoOZ27pQy9SkvmOtS3tMD3IAyDnrthmbRNadKJGfAeTUUV1uTUlcQ16CRQHNeyGS45CA4XvHfSWT3u6nG8Cmrf1lxo9VRoEM3Gk5oIYPW7MSJUvN3QPZrtbZuF115/KdxK0XLmlTD2Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TC/01DaVrLJKlpQeMneDNLpOLgs2neknv3Nu5mY62Cc=;
 b=RDIRZqBmhjPYT/I0H1g+aOvL4GwZx1cUPCujjMQ15ZRKviXmDsJUJxsoBbnFIklsFCQw9dy4Oi5FFtKWwuH7OHB09mhlWMzCfdW/UoDE+HzBzvu+g5BmvPksG9xp5q9/wlC1Bzkmxl6UczCaibKuYHAWRmxIIr0C19XqzdcwJOM=
Authentication-Results: baylibre.com; dkim=none (message not signed)
 header.d=none;baylibre.com; dmarc=none action=none header.from=vaisala.com;
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com (2603:10a6:20b:ff::26)
 by AM6PR06MB4616.eurprd06.prod.outlook.com (2603:10a6:20b:63::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Thu, 10 Sep
 2020 16:22:37 +0000
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286]) by AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286%6]) with mapi id 15.20.3370.016; Thu, 10 Sep 2020
 16:22:37 +0000
Subject: Re: [meta-security][PATCH 0/6] Some small dm-verity improvements
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: yocto@lists.yoctoproject.org, Armin Kuster <akuster808@gmail.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
References: <20200907171737.108284-1-niko.mauno@vaisala.com>
 <CAMRc=MdGea6ojUTnvF8tixff2aAkUMrN7ryWioAYV2==jjUXAA@mail.gmail.com>
From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>
Message-ID: <1d6ad324-4257-5f8c-8556-152a4065ce2e@vaisala.com>
Date: Thu, 10 Sep 2020 19:22:35 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <CAMRc=MdGea6ojUTnvF8tixff2aAkUMrN7ryWioAYV2==jjUXAA@mail.gmail.com>
X-ClientProxiedBy: HE1PR0402CA0039.eurprd04.prod.outlook.com
 (2603:10a6:7:7c::28) To AM6PR06MB6198.eurprd06.prod.outlook.com
 (2603:10a6:20b:ff::26)
Return-Path: niko.mauno@vaisala.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.24.64.128] (193.143.230.131) by HE1PR0402CA0039.eurprd04.prod.outlook.com (2603:10a6:7:7c::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16 via Frontend Transport; Thu, 10 Sep 2020 16:22:36 +0000
X-Originating-IP: [193.143.230.131]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1374c341-f439-49fa-f7e9-08d855a5bb21
X-MS-TrafficTypeDiagnostic: AM6PR06MB4616:
X-Microsoft-Antispam-PRVS: 
	<AM6PR06MB461693A0169CB6D061437F9981270@AM6PR06MB4616.eurprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	svdj9hOwfKZBgeaGsoIlgQpQvB7qFP1zL5K4o/afMBbv/ddD7QxAC+AoUVTl0DQDt+Ay0fysv9qs2V5CGbCL79KJLfQqB65RlRs75Fr/7cPLhWr/oE/wMH9gIRuQePvsE6d0fRjFUzyOt2sxe1qgOVf3f4D34ZWHyvhz6plduSEtiUJTapqmOCEyk9yOl0G7F3DFgvAWymqUyKenZDA8YWh4GUesgzvJPiwPS1Lv14IbFw+wQ1+9HHHFNIxiB1xlkxRO7+eiV8Q5+HvlrpdLzndeudISV4YGATaFp3jGhbpsozxEj9jXg5KGCnqfT7vBUcAB5STcfN3vVdKWhF+6H6bBtqyOzOOUXIgqLxEv9Gt8p22xt2k7772B8g6FayBF
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR06MB6198.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(39850400004)(346002)(376002)(136003)(2906002)(54906003)(6486002)(83380400001)(5660300002)(2616005)(316002)(16576012)(66946007)(86362001)(66476007)(66556008)(8936002)(6916009)(956004)(52116002)(8676002)(31686004)(36756003)(4326008)(4744005)(15650500001)(26005)(186003)(478600001)(16526019)(31696002)(44832011)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	qeiUxDe9FljeABlMVPibW6sZXY4KcI6yha6rnIJlk0bqql6/RCxQVyNlFpLVMlHxphqOnpcd5jFDgVw5yYMomkn1BeGEkStA2ev3U8JrmKWkFOcLVmkCMR+s+7AAVYuO/I44zTteOqLQ/AhPqumgom96Zltu3euyrTNr8oBVPHu9QZyp+tk9b64ii0/FsPD8amBVmzEbY0PiayEHOAHvSuxw3gaEr3WG/D8EQaHDfoI6TRiP7TCiCA9PvnUZMu5VKGzMEUO/U5uZSl5NhGZW7iJpGW+UQv2tcaTJtSqnjSjnNff6UxkQUX+Fw+ndUxZPv7UgGg+g1naWEKGQxR+wuaz4OFGqsyc/WpGkbXuc3iCmEpWKEPeKFnMzLh4emHabcZJKTceOaXbVFHIQTCT0t9w6xlRKGgBLxeuCL+tC+gGkfVX9Kva9empzrLD8CDGyZ2HSu9TbYiKohRhKuWzJ6icoTm93iwkdrO0JppU/Eopu2vAjGp1kJ6Q5579vKwYwAnxGZBCLOZwIJFqc0SZI+fqem0H+doEsyOCT3cMD4vje/LqNkyx8rgdX7/4CBNYHNWSGQlf1/ss0YUO768nZu9TdJEDRG/lQslTDyzknFc3oOKhCAn28iMm8UekJJcahbrFTQw3OsD4o/EBCZkIxfQ==
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1374c341-f439-49fa-f7e9-08d855a5bb21
X-MS-Exchange-CrossTenant-AuthSource: AM6PR06MB6198.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2020 16:22:37.1794
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rx8bEadZGoYytfxToRdhGrUv2aylMkmQ9eeyysN6bEt52b7agS+wnXw63f0PRHodQicYLYXcQrwDpLFzZY5fPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR06MB4616
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 7.9.2020 20.35, Bartosz Golaszewski wrote:
> 
> Hi Niko,
> 
> I saw these patches and had to double-check just to realize my
> dm-verity patches actually got upstream to meta-security although I
> explicitly stated in the cover letter that they don't work with
> verified boot (which basically makes dm-verity useless).
> 
> It's funny you sent them now because I just started working on a
> different approach that won't require the OE-core changes I posted a
> while ago and which were never merged because they broke some unit
> tests.
> 
> Niko: do your changes allow this to work with verified boot on BeagleBone Black?
> 
> Bartosz
> 

Thanks Bartosz, I sent a v2 series based on your feedback about 
BeagleBone Black.

-Niko
