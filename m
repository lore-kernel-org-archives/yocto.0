Received: from EUR02-HE1-obe.outbound.protection.outlook.com (EUR02-HE1-obe.outbound.protection.outlook.com [40.107.1.76])
 by mx.groups.io with SMTP id smtpd.web12.1639.1584634047167468371
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Mar 2020 09:07:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topicbv.onmicrosoft.com header.s=selector2-topicbv-onmicrosoft-com header.b=nb5uXIpr;
 spf=pass (domain: topicproducts.com, ip: 40.107.1.76, mailfrom: mike.looijmans@topicproducts.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jTKknGvFFc/pAbZp6H/XHsiIeWEJonT+QDR6l56LqG8=;
 b=nb5uXIprt27qN9/B357qjDXYQx8tGmfOsiuh7vHYXaYTAkj2ULcIgUuS+pKheEY8Nd6OKPPWNMcpQV3Xw2ux3qBi6dyrgF+6pENDeVdPwDwTo2VliOvYM0cZJEfVBPKH7G51RXmlii3l+zDNa83xxjgMx9q004Sx34G/wP0Ht4c=
Received: from VI1PR08CA0132.eurprd08.prod.outlook.com (2603:10a6:800:d4::34)
 by AM0PR04MB5075.eurprd04.prod.outlook.com (2603:10a6:208:bf::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.14; Thu, 19 Mar
 2020 16:07:24 +0000
Received: from VE1EUR01FT061.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:800:d4:cafe::4) by VI1PR08CA0132.outlook.office365.com
 (2603:10a6:800:d4::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.20 via Frontend
 Transport; Thu, 19 Mar 2020 16:07:24 +0000
Authentication-Results: spf=pass (sender IP is 13.81.10.179)
 smtp.mailfrom=topicproducts.com; lists.yoctoproject.org; dkim=fail (signature
 did not verify) header.d=topicbv.onmicrosoft.com;lists.yoctoproject.org;
 dmarc=none action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 13.81.10.179 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.81.10.179; helo=westeu13-emailsignatures-cloud.codetwo.com;
Received: from westeu13-emailsignatures-cloud.codetwo.com (13.81.10.179) by
 VE1EUR01FT061.mail.protection.outlook.com (10.152.3.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.14 via Frontend Transport; Thu, 19 Mar 2020 16:07:23 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (104.47.12.50) by westeu13-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Thu, 19 Mar 2020 16:07:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OhJ/3CevnH/P8e5FlvpUsnfec2UHUdzjx6NVjWbkYJmnlHvHvsivt2xc8PXwU2a/ne6+qrp3tl+pncR0gWXqzY7cZe8tgF5QUNySf4/l/YVD95neJllgjKVNd3C+c+XnoqQVyqXUVTJnjwq2/pjocRoAK81Mll447TecYKqk3wSoT7hyDYGrgw20PcXiGVPVCAuaPQTSY9yNqyOSUF0pYl6/fW11xoQribRkgfAZw+2J9oaxnqqrF7Y5vt6fj+BMJ+fMOTig28zD1kym1qpRIfFwkxW9zlBQIJnuhSjt521KOPEOZ8EbkMT9o8nrlCAhv8h52LpDYRU0ag3Ey8WiIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jTKknGvFFc/pAbZp6H/XHsiIeWEJonT+QDR6l56LqG8=;
 b=Gu0uvs0YjPvQ3S3E61XwhtXS74kTr9XQ2wDNDhBHtHEB1bDQp4pP50RGbbBJ49oXG/lljOLodGrssPkRc9D8KGN5xmQHco1gP7x4t88btRJcevuEJ672JmpISb3mIVgaI1JXRSvk8LlcGiboSR5uTgJsS9ZjK0PhdoRfgum4o6epasH2gkygm+IGTlVcrkgx/vZ2vBwbRUW64CFxnT4rsMDsfem+dvlUXMhgISVK2OSZqV0CzgpL7I02/pfww4/NB9u4ZZ7fEMr0t5mE7rhonX/TZZsyyRcN2DXpPocS4OTE+CoNzY+3/kW5g3ULoLJD9wvsFtRkswY/xB+DCriYMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jTKknGvFFc/pAbZp6H/XHsiIeWEJonT+QDR6l56LqG8=;
 b=M75S1CsPc3rxGNxWs6E4UADWJ3PLa7Ca6pfkOxuI+XQxPKsxtuYOADQkcvzrvVeRruyPWqucaEqTykKAX42RTSy60xF0kN3xnxHBTkuUoXrt06squesowQfS6DpuxSEkCO3I4i/HrfgoJQmCm2VLwZMQv59FzHKI8Kg1ZK1lhd0=
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=mike.looijmans@topicproducts.com; 
Received: from DB3PR0402MB3947.eurprd04.prod.outlook.com (52.134.67.147) by
 DB3PR0402MB3705.eurprd04.prod.outlook.com (52.134.70.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.22; Thu, 19 Mar 2020 16:07:18 +0000
Received: from DB3PR0402MB3947.eurprd04.prod.outlook.com
 ([fe80::380e:f722:2d0d:9c71]) by DB3PR0402MB3947.eurprd04.prod.outlook.com
 ([fe80::380e:f722:2d0d:9c71%6]) with mapi id 15.20.2814.025; Thu, 19 Mar 2020
 16:07:18 +0000
Subject: Re: [yocto] What are the key factors for yocto build speed?
To: richard.purdie@linuxfoundation.org, Mikko Rapeli <mikko.rapeli@bmw.de>,
 ross@burtonini.com
CC: yocto@lists.yoctoproject.org
References: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
 <f53ec55d-5f43-4ea3-f9a7-827f0f29154f@topic.nl>
 <8032ed75-802c-9dd3-2d76-f468159b90af@burtonini.com>
 <20200319080514.GR104502@korppu>
 <bcab55b919af5da30e9b8fe3db0cc6537ac3f785.camel@linuxfoundation.org>
From: "Mike Looijmans" <mike.looijmans@topic.nl>
Organization: Topic
Message-ID: <8d295b32-e2f9-9d95-f866-1f9061617450@topic.nl>
Date: Thu, 19 Mar 2020 17:07:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <bcab55b919af5da30e9b8fe3db0cc6537ac3f785.camel@linuxfoundation.org>
X-ClientProxiedBy: AM0PR0102CA0024.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:14::37) To DB3PR0402MB3947.eurprd04.prod.outlook.com
 (2603:10a6:8:7::19)
Return-Path: mike.looijmans@topicproducts.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.130] (83.128.90.119) by AM0PR0102CA0024.eurprd01.prod.exchangelabs.com (2603:10a6:208:14::37) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.20 via Frontend Transport; Thu, 19 Mar 2020 16:07:18 +0000
X-Originating-IP: [83.128.90.119]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 01ece47e-5d92-40d9-c01b-08d7cc1f9c84
X-MS-TrafficTypeDiagnostic: DB3PR0402MB3705:|AM0PR04MB5075:
X-Microsoft-Antispam-PRVS: 
	<AM0PR04MB5075CC67BDF81FCAEBF0F66E96F40@AM0PR04MB5075.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;OLM:9508;
X-Forefront-PRVS: 0347410860
X-Forefront-Antispam-Report-Untrusted: 
 SFV:NSPM;SFS:(10009020)(136003)(346002)(366004)(376002)(39840400004)(396003)(199004)(6486002)(956004)(81166006)(2616005)(81156014)(66946007)(66476007)(4326008)(52116002)(36756003)(66556008)(44832011)(53546011)(8936002)(42882007)(36916002)(8676002)(16526019)(31686004)(186003)(2906002)(508600001)(16576012)(31696002)(26005)(5660300002)(316002);DIR:OUT;SFP:1101;SCL:1;SRVR:DB3PR0402MB3705;H:DB3PR0402MB3947.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;
Received-SPF: None (protection.outlook.com: topicproducts.com does not
 designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 G8OHGFJTgMCYyDtwsjjWoRvBRzalzIjoDpf9SCBovrJKjS8p1qslM3/W0gly/lU+n6Kw8G0TwzyHe9VJ2A/6VRlY6ObR3fz4pbUpAN8UguTxcLvY/UqaNf70YvYIMuMmnnQs1wmgjA5otILpRK50P5wrWsFLcvW2CI7pHd9AH0G+lpyLrgDw67ca4vA0vGsRb2GGJIIfSa4HNt6AfB8ijywebQputcuxsAwBKM4KPVN06pa0f1B2BGDheqbDY3b1KbDhljEpvdg7WQ9yu7/upOW+NSoroP0xlgK7hC3jYJSs9xTnXnp6g+MH83PNxb8XUHyEVs5/dYHhlvp4vctKeLwLyVoW4RK4XFFu4d4qDxd1CNzl6aHJSR3u0g1CYNNtIzMXGiFBfmAQmS/iD+uUc1i0OZ9H07etY6J0AtAgvDrqFt8XpFEMrZessC76z1zI
X-MS-Exchange-AntiSpam-MessageData: dHwwtXbS64w7E5GEehlBhT67nhem/rlf4KlRPryo/n8GV4ZaWT+jGgoZ5pq7e9vH/be9s4hIQImWR7hZ8Ta4nzDQZ3gp4i0sCc4Xf386gW0L+TH2Uaomig3ezwmnxEWwYQADZVurvnN7Gw43KLL4kg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3705
X-CodeTwo-MessageID: 806029f9-79d3-42d9-b488-4061cb80c7a9.20200319160721@westeu13-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 VE1EUR01FT061.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: 
	CIP:13.81.10.179;IPV:;CTRY:NL;EFV:NLI;SFV:NSPM;SFS:(10009020)(376002)(396003)(136003)(346002)(39840400004)(199004)(46966005)(6486002)(2906002)(36756003)(4326008)(26005)(336012)(246002)(31696002)(186003)(8676002)(42882007)(8936002)(7636002)(47076004)(16526019)(956004)(2616005)(7596002)(5660300002)(70586007)(508600001)(70206006)(36916002)(44832011)(356004)(16576012)(31686004)(53546011)(82310400001)(316002);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR04MB5075;H:westeu13-emailsignatures-cloud.codetwo.com;FPR:;SPF:Pass;LANG:en;PTR:westeu13-emailsignatures-cloud.codetwo.com;A:1;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	b183dbf9-0948-42d6-7864-08d7cc1f9930
X-Forefront-PRVS: 0347410860
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	AvYqTXyjzT1+jlpVG10jUo2AmkRtJz4nD0Wav5+Dr7VK8euvyLikQ10S023PJjphgmvh5jFAYmr3M6ejrGve/qUmFwmbgLshTY2c0GRy4gN0DSgixdcgNaegtCgpdajC8wYb6Lphx5C9S618QGle2j3IIGIg9znrEKwHpN+rwMCdl9rt/kdNwp4Bjag44F5f3/iEsxlKYyfWGJ8MOFFEmsete7kNemn0yLmgYEv9WM7pxWEh7XzTQXJNCDOHQ1wMij1Fh7Op5HJT4rZxBZmgea9NULqMoAx2xXcXlQfy0wqWxMDwiHKwYVXIoM5A7vNR21Jvdgaxzyss3ZFNun1VL0taijYLhbEGeh5NWwY35HKhmQoR2ESUywI9Ksgqrj9utdHPj0EgRwTpiU0JZ+NiH890rkQ+x6lvYGLXvDHcdIvD2H/AJlWifZtKJtKIK86EVEa5+GI532lKaGII46bXQnjOhshezxG56yqCzYcBExMkejV3H+bsZ9IoCLnLDCPzgUZU6ZTKgo4IPXckP/c/wQ==
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2020 16:07:23.6793
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 01ece47e-5d92-40d9-c01b-08d7cc1f9c84
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[13.81.10.179];Helo=[westeu13-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5075
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 19-03-2020 12:04, Richard Purdie via Lists.Yoctoproject.Org wrote:
>> , fetch, configure, package and rootfs tasks.
> 
> Sadly these tasks are much harder.

It would be really great if some sort of "weight" could be attached to a 
task. This relates to memory usage.

My system has 16 cores but only 8GB RAM. With both parallelization 
options to "16", I might end up with 16 compile tasks running 16 compile 
threads each, i.e. 256 running processes. In practice this doesn't 
actually happen, but the memory load gets high sometimes, so I reduce 
the TASKS to 8 at most. That has kept my system out of swap trouble for 
the time being.

The idea was that tasks get a "weight" in terms of cores they'll use, 
and the scheduler takes that into account. So it would run 16 
do_configure tasks (weight=1) in parallel, but it would not start a new 
task that would push the weight over some number (say 40 for my case). 
So it would start a third compile, but not a fourth, but it would start 
a do_configure task.

Does that make sense?

In builds involving FPGA's I have tasks that take up about 48GB of RAM 
(my machine cannot run them) but only a single CPU core. Attempting to 
run multiple of these in parallel (happened to me when I changed some 
shared recipe content) will bring most machines to their knees. 
Currently my only way of handling that is manual interference...

-- 
Mike Looijmans
