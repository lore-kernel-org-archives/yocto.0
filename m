Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.49])
 by mx.groups.io with SMTP id smtpd.web10.38746.1589794808768580638
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 May 2020 02:40:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topicbv.onmicrosoft.com header.s=selector2-topicbv-onmicrosoft-com header.b=NgKzqo4g;
 spf=pass (domain: topicproducts.com, ip: 40.107.8.49, mailfrom: mike.looijmans@topicproducts.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lVX4/OaDv9M6g4WIfeET2+pLJjjq0gTHGWT8mfPYfSg=;
 b=NgKzqo4g9C8EyAomQqNZfW6UfsDjB5+HNWAdpGqazkP5NJkI2HVktHa8t1qaIqqXiffa4F025XPjsF//4UFYHsZ8qeJtOKIwb4c/mDlSXo7lk6LsHrut/I5dHn1FdiHF7HW4839et0q0lH7FRwKhxgGTIaNRVHb0Goj/SIFvn7M=
Received: from DB6PR0301CA0011.eurprd03.prod.outlook.com (2603:10a6:4:3e::21)
 by AM0PR0402MB3585.eurprd04.prod.outlook.com (2603:10a6:208:1c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Mon, 18 May
 2020 09:40:04 +0000
Received: from DB5EUR01FT048.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:4:3e:cafe::b8) by DB6PR0301CA0011.outlook.office365.com
 (2603:10a6:4:3e::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.24 via Frontend
 Transport; Mon, 18 May 2020 09:40:04 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 40.68.112.65)
 smtp.mailfrom=topicproducts.com; yoctoproject.org; dkim=fail (signature did
 not verify) header.d=topicbv.onmicrosoft.com;yoctoproject.org; dmarc=none
 action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 40.68.112.65 as permitted sender) receiver=protection.outlook.com;
 client-ip=40.68.112.65; helo=westeu12-emailsignatures-cloud.codetwo.com;
Received: from westeu12-emailsignatures-cloud.codetwo.com (40.68.112.65) by
 DB5EUR01FT048.mail.protection.outlook.com (10.152.5.166) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.19 via Frontend Transport; Mon, 18 May 2020 09:40:04 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (104.47.14.57) by westeu12-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Mon, 18 May 2020 09:40:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P5QSCK64HufeG8RpmNJ605JVjpKKUPv6n1rPE8jJRypyVauWGmnt2OmvfTLUVxmPofs6JAUvKEM5QvwW0Bxfg2dwI+/WZIqqAcdr7dehVuHQZR6igUxOCPXLsBgBalrObCHoMkvixCb4uTrg31ed75JxgPCEatZggO7HMyTqin5WWIF6+V+Tj5QcFX+zhmtFkveR5BAw848RiHK2/IOsqBtgeHK/FKTmsUjMACUefeRDWumn8P7VPJbHo/Q0JlkNLPO6BV0/w1tOByfKK3MRMmYoRENqs4svbxrzXYdBbTF3lhaONISulqb4Xust9nQxlMjn3/P4d5I492y9Ox0nHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lVX4/OaDv9M6g4WIfeET2+pLJjjq0gTHGWT8mfPYfSg=;
 b=AYTr5kMxVvY+N+UmqLhWPcYpDpzYvhE8UAkk/ZQqPNrDA4uibiqGz6zw7Gd7+Rzwr/1alsE7EE/W2FweIYtnrhmw7itNXbTOVjqwtzICUZhe1PpFnZ+8JFdNRabAAAuiSsks1hOeKzQp9doEURjApDvTSnFeIqtK1f2EL8pzx/MRrhSWLiQQlWfs7WhG2Vp+GZ3l9CcBO3wgHzvidTp4m4iUP1RB85w6oFibfQacCHxppjHPep3ZItq3a6WV6bL1mGDaWjqbzozRuSxiMMMNKjmogu5H9yxpNohEs3iArNfnNo04CoQRAu3XNTAyNoiYsyShqcCAU6NL2K4R/mDfZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lVX4/OaDv9M6g4WIfeET2+pLJjjq0gTHGWT8mfPYfSg=;
 b=ryrQSZUAoKRJi61gkHX0+xOgkGoOWFf3KU/oxZahFqjic0PUjb3XsHvqXagFVI15SgdPMNv+gqGIRT+L9k0Lz8jpF2X1Kle1+UVV6J1xNMPLYPYRkM0SdZQWx/IwIAL3mcPwxBqrW45ykmupwQ5VCUhJLg++QPuQhgTaXj+2aqI=
Authentication-Results-Original: yoctoproject.org; dkim=none (message not
 signed) header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=topic.nl;
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com (2603:10a6:10:10f::26)
 by DB8PR04MB6827.eurprd04.prod.outlook.com (2603:10a6:10:f8::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.27; Mon, 18 May
 2020 09:40:01 +0000
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::6cf6:7323:7395:eec9]) by DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::6cf6:7323:7395:eec9%7]) with mapi id 15.20.3000.034; Mon, 18 May 2020
 09:40:01 +0000
Subject: Re: [yocto] [WIC] Grow last partition up to disk size
To: yocto@lists.yoctoproject.org
CC: Yocto list discussion <yocto@yoctoproject.org>
References: <504407a1-379f-dc70-7745-c42624df7d8c@ibeeto.com>
 <CAAfyv35at0HOtTpnTiRRL0yrS4mcvCwxy7MdbAmdbVba5-OnGw@mail.gmail.com>
 <3b7e322b-86db-6412-7cb3-02183d626aeb@gmail.com>
From: "Mike Looijmans" <mike.looijmans@topic.nl>
Organization: Topic
Message-ID: <d1bdc7ca-917c-27b1-6e6c-e050a3782aed@topic.nl>
Date: Mon, 18 May 2020 11:39:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
In-Reply-To: <3b7e322b-86db-6412-7cb3-02183d626aeb@gmail.com>
X-ClientProxiedBy: AM0PR03CA0012.eurprd03.prod.outlook.com
 (2603:10a6:208:14::25) To DB8PR04MB6523.eurprd04.prod.outlook.com
 (2603:10a6:10:10f::26)
Return-Path: mike.looijmans@topicproducts.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.130] (83.128.90.119) by AM0PR03CA0012.eurprd03.prod.outlook.com (2603:10a6:208:14::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20 via Frontend Transport; Mon, 18 May 2020 09:40:01 +0000
X-Originating-IP: [83.128.90.119]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e05ef000-342d-4bc7-2223-08d7fb0f7174
X-MS-TrafficTypeDiagnostic: DB8PR04MB6827:|AM0PR0402MB3585:
X-Microsoft-Antispam-PRVS: 
	<AM0PR0402MB3585F7AA0621E299B88FB97D96B80@AM0PR0402MB3585.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;OLM:7691;
X-Forefront-PRVS: 04073E895A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 AVvDOfrH4qJtoPWpf7danWvt6mIA+znv00f+DsG29VR0pS+kFGIRkjto2jY1JATA0+IfGhqWMhyG2LLNfpopz8ZwVrnKnnrFNsi3XysKEN7ld18v172kojrAOP0WxaqiKpqQKMoFcHTaXWQY9s+9DQGqKpv4tsllh/ddnajyuD+7nEvp7p96JxlIsPSJ+LQKvEOymZuegCIdDZEekvTx2D2E6VH3HmS+BoHwKQwYMoLA9wOMYhbe8w3sYIHYeLHeVDzNwv/ZlSJtbSXIRO6UEiXZzMBh6G5CgAGr1AdyHwvR8duWA5DDnPWwWJ4PJQi8NdQQLAfyNl1s3GDKQu5wBIzQkZG4nNRcmuRxifA4nOXfnXR8mPmuniBViLdvBv09DWjtaRkQKl8G3PGVgJ1KWCf6MtC8F01BOQ3695ToGUgkvCSAh5VHFwKBkkWhWZX3IV6X/PaIK+vBJqEAimfWvimatl6ppDKHuXO5lUzkVpGEWO2Pt8zwUwAShomT+ubSo7K3XnMfrVS+tnn6Au1KxNEiAX+md6gcRuB2aClPmfDbYbTNT36SHjl6yzJn8nBLO8pFcX12IXgcyouquJWa8A==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6523.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(39840400004)(376002)(346002)(366004)(396003)(136003)(16576012)(966005)(16526019)(5660300002)(42882007)(186003)(316002)(508600001)(956004)(2616005)(6666004)(83170400001)(6916009)(31686004)(26005)(6486002)(66556008)(4326008)(2906002)(66946007)(66476007)(31696002)(53546011)(36756003)(44832011)(36916002)(52116002)(8936002)(8676002)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: jEC83TjL674ExddJGK3HiOdHaHsTGgWYoFr765uw9zRYd3ykw+Ue953G4E5SsOqBKUIQsyetgr1mdA0IEEIyT/2Q2O5BAIgtC8kdVU/tmtJwwOe9ZPcJIPjydGDp86VhdyLZdbGMpE1IVPjW9kA88ohlzLhRh7kE+zesg3Zh64fowUT54dxjZvrn7haYFH++gVOXIhJVL6c1qeOmwxLpeJst05NUK/OHeqlca2MttF50q5tmgdgT5JdunKMTE7Cny2lpJpe/h0YrF837+ATStA7RAqzZtMjb3QZqHazffNIzMDRNvxmNLyBR/k1aaX+g/83tT8T4Ac4tv7fZt3xLFsRD9rzM1gsCqv94qSSlsP/D86BHkToUoYK7Z2SYIsHv73w/FmHQwFwHr0DK8ogFsQtA6obcoCrKB1B79ZNaudqw2FqyEg7Qs2keoF5sVvfW9lV+mBVmZLXhaKjQHAennp9Z9jFJjotkjpjax3+R9lI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6827
X-CodeTwo-MessageID: 45acb58a-b23a-4b17-a2a9-13cbced7db95.20200518094002@westeu12-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB5EUR01FT048.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: 
	CIP:40.68.112.65;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu12-emailsignatures-cloud.codetwo.com;PTR:westeu12-emailsignatures-cloud.codetwo.com;CAT:NONE;SFTY:;SFS:(396003)(346002)(136003)(376002)(39840400004)(46966005)(6666004)(36916002)(47076004)(356005)(16526019)(26005)(53546011)(966005)(186003)(36756003)(8936002)(70206006)(2616005)(44832011)(956004)(5660300002)(8676002)(70586007)(316002)(16576012)(6916009)(6486002)(7636003)(4326008)(7596003)(83170400001)(82310400002)(31696002)(508600001)(42882007)(336012)(2906002)(31686004)(43740500002);DIR:OUT;SFP:1101;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	708336a6-c297-402d-c26c-08d7fb0f6fc5
X-Forefront-PRVS: 04073E895A
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	jjwDQz5JE9oQYzskZgoheJWStdVQgukM627eDEnMw4owSrbPOA1KvU+VnDzTb+iIXCnoTbjsdsTNVRNJj4hN6Ucx4SaIgdGOSD0/wmbB9wjOp91en9aM0f2VyihYzXeQ3og1Qa9doFpfk1a6B7+8UjKyrfdwJbJIA9PgiEAyp16qmsVe4W55BlvgsxrfAFyyIcu4OUUPKfBJG4OWsDgnP0t6aSj++B6Gj4yT0e4ohewHE1C2sLR9Sf8vbT7acjElofUi0KiCWcalrOUhEQkCU/FUWq1Ldeokr8IJP54w2HY/3Nyl0dwk+YEEsm0kd2JRrAGCvlWKAkUryvNSvdk5Ezke97XcK8W1U/Q6KuwNYZlFbX5x8F/y0Z6KcNC7DhSESO9WggXvPxKQbROqJz0F47VnmVOrHwm2MggiVn4Dc5hqR3unq33LWSuiRVpxDb0yyynMtPEGG8FKIfHhaLmj+7z8kKjbX6GkTuiwoHTWMGj9OLCZuTPZ7oA7b34+XggcSJhCq0jrg0WQ5UGKeTWtS1j/ST2ReBwcFoKyJhdEf6+zwv2L0BGVvJ+GoJ31XuugVOFguz846WMnYjfZVOwupVhXlsqvIBHX2z4R0JsugrwY6pW7Kd/NWdD2Qri23oRD
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2020 09:40:04.2102
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e05ef000-342d-4bc7-2223-08d7fb0f7174
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[40.68.112.65];Helo=[westeu12-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3585
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

On 30-04-2020 20:23, Khem Raj via lists.yoctoproject.org wrote:
>
>
> On 4/30/20 11:16 AM, Marek Belisko wrote:
>> Hi Rudolf,
>>
>> On Thu, Apr 30, 2020 at 7:39 PM Rudolf J Streif
>> <rudolf.streif@ibeeto.com> wrote:
>>>
>>> I was looking for a way in a wks file to have wic grow the last
>>> partition to fill up the remainder of the disk. Of course wic does not
>>> know how large the disk is but that could be a parameter.
>>>
>>> The alternative way is to use fixed-size and do the math manually but
>>> that would not allow wic to grow a partition based on content.
>> You can use 
>> https://manpages.debian.org/testing/systemd/systemd-growfs.8.en.html
>> which grow partition to the end.
>
> can it grow a mounted partition ? since that will be the case when 
> growing rootfs partition. 


Yes, a mounted ext4 partition can be resized. Some tools will try to 
keep you from doing that though, had to patch parted to stop whining 
about mounted partitions in "scripted" mode that to make it work though.

https://github.com/topic-embedded-products/topic-platform/tree/zeus/meta-topic-platform/recipes-extended/parted

Here's the recipe that re-partitions the SD or eMMC on first boot after 
programming a (small) wic image:

https://github.com/topic-embedded-products/topic-platform/tree/zeus/meta-topic-platform/recipes-topic/expand-wic-partition

