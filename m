Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.70])
 by mx.groups.io with SMTP id smtpd.web11.159.1584716328245863332
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Mar 2020 07:58:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topicbv.onmicrosoft.com header.s=selector2-topicbv-onmicrosoft-com header.b=QjHd/Qre;
 spf=pass (domain: topicproducts.com, ip: 40.107.7.70, mailfrom: mike.looijmans@topicproducts.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+eqZzJWQqMsDSuyFmiesfdVWC9WD9wvSQaVX1qd2s2I=;
 b=QjHd/QreYBCvEiE8oHTC6LmbmesETidOORD1JupL6Qqp0RR/qtqbmvRWvi+u+7cNc4ZO0aojwrFf738H9HDmyoHPZPtr3WIfZ0MFZ0WJZ9fu6LomAEBM0c8GsqbLXn/8snw7c/Zcy85+HIMEMTBMqqlGK4nbAR4JBRRYDrfPa9Y=
Received: from BE0P281CA0025.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:14::12)
 by AM7PR04MB7094.eurprd04.prod.outlook.com (2603:10a6:20b:11f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.18; Fri, 20 Mar
 2020 14:58:45 +0000
Received: from HE1EUR01FT061.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:b10:14:cafe::49) by BE0P281CA0025.outlook.office365.com
 (2603:10a6:b10:14::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.18 via Frontend
 Transport; Fri, 20 Mar 2020 14:58:45 +0000
Authentication-Results: spf=pass (sender IP is 13.81.10.179)
 smtp.mailfrom=topicproducts.com; lists.yoctoproject.org; dkim=fail (signature
 did not verify) header.d=topicbv.onmicrosoft.com;lists.yoctoproject.org;
 dmarc=none action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 13.81.10.179 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.81.10.179; helo=westeu13-emailsignatures-cloud.codetwo.com;
Received: from westeu13-emailsignatures-cloud.codetwo.com (13.81.10.179) by
 HE1EUR01FT061.mail.protection.outlook.com (10.152.1.6) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.14 via Frontend Transport; Fri, 20 Mar 2020 14:58:41 +0000
Received: from EUR03-DB5-obe.outbound.protection.outlook.com (104.47.10.50) by westeu13-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Fri, 20 Mar 2020 14:58:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T6BQiorZ1b90hpJ710f92J47Sab/dacY1ZhhRFHltsH+pT6oLFQEYKULA+AL9Cqugig1Qwv2TJDCkNmbn1Vj2vMNu7VpovO+n1Qz8thsRsjtUm6XxYCSexOBV3VQloxLj5OgTLyyggbFTl658M/+3cZVeqeUi6U4HsnxLpbA15oRFUa6/czC+OPg8yGPuDuxellLCILhg6sk18c92sRq3W8hIWBGWpqf8uWRnPxHgQkETHSwUSA7dxqfXfi31fLeoDSwK4R7jUAb6HFcITPYCs+ij0VbDBGE/w62kuB2G0+6zrnrhdUDziz2TJtSo8LGIgMtgyG4XgO9yqlq4bYwHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+eqZzJWQqMsDSuyFmiesfdVWC9WD9wvSQaVX1qd2s2I=;
 b=Ppbcf/AKiqZe7bxYioMG2viCQ8tYFbRj1B9nZqCyvpIjvafA7ihLF3zL2qCJEO/5157p+I229tp/KmYERBOdJtTkK8I9f6tcBug7E9ggEBVh1+EIq6W8FOMtDTR1+vtvbko5Uz/YyN0fXf8l5HZHQSp61MtHfGqIq7TOMwjMJR5qVLAt6b3WOEi73kKmTh7p4HO9/iVH8V1pdA+1+LraFC/4ANq0y22WoZRbikBkIW2Q0ymWcm9qjhxyZxsgHEacQeFpkCte/3RwcgH3jY/cz42D0cN7lCGAZIwppb5fQTrpXVtZUA5rHjuauqeLwbXiA3OskQF/vxYhIgQ44cV3Ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+eqZzJWQqMsDSuyFmiesfdVWC9WD9wvSQaVX1qd2s2I=;
 b=LuTCXMukC/AesiyHzs/7wdgkpKfnUH49onGOnRfhn7dcTXaNR6biGvPq86XQDl0aY0uQVdnS2JGUs90FDtU0cYgEFf3UXImWUkjbZL8vbMLw6LQzTLeFMs+H8GljM5vd8j+KJN4nopdNc4b61j523uT1li4n5u8uvZO4kiqf360=
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=mike.looijmans@topicproducts.com; 
Received: from DB3PR0402MB3947.eurprd04.prod.outlook.com (52.134.67.147) by
 DB3PR0402MB3914.eurprd04.prod.outlook.com (52.134.71.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.18; Fri, 20 Mar 2020 14:58:36 +0000
Received: from DB3PR0402MB3947.eurprd04.prod.outlook.com
 ([fe80::380e:f722:2d0d:9c71]) by DB3PR0402MB3947.eurprd04.prod.outlook.com
 ([fe80::380e:f722:2d0d:9c71%6]) with mapi id 15.20.2835.017; Fri, 20 Mar 2020
 14:58:36 +0000
Subject: Re: [yocto] What are the key factors for yocto build speed?
To: Adrian Bunk <bunk@stusta.de>
CC: richard.purdie@linuxfoundation.org, Mikko Rapeli <mikko.rapeli@bmw.de>,
 ross@burtonini.com, yocto@lists.yoctoproject.org
References: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
 <f53ec55d-5f43-4ea3-f9a7-827f0f29154f@topic.nl>
 <8032ed75-802c-9dd3-2d76-f468159b90af@burtonini.com>
 <20200319080514.GR104502@korppu>
 <bcab55b919af5da30e9b8fe3db0cc6537ac3f785.camel@linuxfoundation.org>
 <8d295b32-e2f9-9d95-f866-1f9061617450@topic.nl>
 <20200319172141.GB29515@localhost>
From: "Mike Looijmans" <mike.looijmans@topic.nl>
Organization: Topic
Message-ID: <0803bd80-bc46-373b-0b3d-8ca957379965@topic.nl>
Date: Fri, 20 Mar 2020 15:58:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <20200319172141.GB29515@localhost>
X-ClientProxiedBy: AM0PR10CA0015.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:17c::25) To DB3PR0402MB3947.eurprd04.prod.outlook.com
 (2603:10a6:8:7::19)
Return-Path: mike.looijmans@topicproducts.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.130] (83.128.90.119) by AM0PR10CA0015.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:17c::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.18 via Frontend Transport; Fri, 20 Mar 2020 14:58:36 +0000
X-Originating-IP: [83.128.90.119]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ce9ecdd3-c665-4adc-926c-08d7ccdf2dff
X-MS-TrafficTypeDiagnostic: DB3PR0402MB3914:|AM7PR04MB7094:
X-Microsoft-Antispam-PRVS: 
	<AM7PR04MB7094CE1C8C52A1BDA8D71F3096F50@AM7PR04MB7094.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;OLM:9508;
X-Forefront-PRVS: 03484C0ABF
X-Forefront-Antispam-Report-Untrusted: 
 SFV:NSPM;SFS:(10009020)(366004)(39840400004)(376002)(396003)(136003)(346002)(199004)(316002)(956004)(81166006)(8676002)(66946007)(2906002)(966005)(31686004)(81156014)(4326008)(6916009)(52116002)(36916002)(44832011)(42882007)(6486002)(8936002)(5660300002)(36756003)(26005)(66476007)(66556008)(2616005)(31696002)(16576012)(16526019)(508600001)(53546011)(186003);DIR:OUT;SFP:1101;SCL:1;SRVR:DB3PR0402MB3914;H:DB3PR0402MB3947.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;
Received-SPF: None (protection.outlook.com: topicproducts.com does not
 designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 9+o+uiVo2OFx+1b4E0oOI+cm/tnjuYFgNnl7B/F4CqakO/KRUqB5IP2yHkqa1E+RWnYJxCHtWjkE6za3WqWZE7FPIoOOdiXAd6eh4kKl/0hXRyj9aN+Jk4uBu1xk7M/L9mXFu2XYLbYi0EtCYR9LMiUC8prnA2xMRok+FGH/ihLNTyChmXdAotGebyJhVP4NWQMqIJbLWlTl7lJ0rIem2Fr03bu24CRIYiUEHkrcVWkWSRf8o/qZEz0Cl1+kMv2SDXXMKiViueN35IcJN8EVKR46sxoCzUVVQDnclHfyioGI1AbU6yGV0tSZEbSD2gBf89hzAXeZAfgnP+OCOxVAPsdJR1nJrbjhQT+x6OLVgGwAGnWXOMOXXndBLWjMt59sezGZ7wlKfoEVwIrxKSHrSFu+lsvqImkSlV7MOMTatc6vdE0GMVBpY75hmlBk3UUQ4fmIxTE8pa2Pf42Lec2vEK5j/mzOG5QOyWAWw0vRNsdpZFXlwaB5vmNpM1fCrlxWgs5+UHFPH1IfbaH++Bm9Iw==
X-MS-Exchange-AntiSpam-MessageData: zSW1hzkInxrWQ6xIpBgNkfq7BgIYgKGUaeh5VnG8hkfZyfB4ennSeazgY5vMoFLNvlPwVmzU9Bil3KXXLvzuLjAmPyyIFvR1LvGZGYiK51WUXoifs+vN5LtBoQS40XoI6902EVZHiqNTaEvJAzTgyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3914
X-CodeTwo-MessageID: a1bc9140-95dc-44c3-9cc3-c88a5febd44e.20200320145839@westeu13-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 HE1EUR01FT061.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: 
	CIP:13.81.10.179;IPV:;CTRY:NL;EFV:NLI;SFV:NSPM;SFS:(10009020)(346002)(39840400004)(396003)(136003)(376002)(199004)(46966005)(82310400001)(44832011)(53546011)(4326008)(31696002)(336012)(246002)(6916009)(7596002)(2616005)(7636002)(956004)(42882007)(8676002)(2906002)(8936002)(6486002)(70586007)(70206006)(26005)(356004)(31686004)(36756003)(36916002)(316002)(47076004)(16526019)(508600001)(5660300002)(16576012)(186003)(966005);DIR:OUT;SFP:1101;SCL:1;SRVR:AM7PR04MB7094;H:westeu13-emailsignatures-cloud.codetwo.com;FPR:;SPF:Pass;LANG:en;PTR:westeu13-emailsignatures-cloud.codetwo.com;A:1;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	d4074e77-71db-432b-16a7-08d7ccdf2ada
X-Forefront-PRVS: 03484C0ABF
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	6URgmBtsTX1c30v/R7hBnlkQDDTHLDLZvsNOMMqqCPZYMKdHNbIeGOuP51ICeBuEFzVJXb+47ARuXUhYThciOE9EO5CTyetfx04ec5QO0xMeYr7P3Oc3YbFRbxJnX/kqNi6PYKRHKkiRyz3fDJKnatsXcWO12ljm4qiXeJZ9bWfyzghhNHJHYuAzt+49w2lNVCVWyY9Ww3O4Oq2on9CdMutwvntKeqTXOnqEx0Zg5Vxv95G8GmyY0SQux/j8qCWjfsPKUJpmUF9f8p6oJOzlEgzPuMF/rCT7IbZtlVO76rDIMK7j9GNXkdMz344J5mORDd3Ej6YYG1SPweC+QMgK4s5wYMVgUYv/cBU69Y7qi/7Y5bP3Lr/tnKzo1Cj5yZcRNhdL2NX6MQDfyMHDFZbSGZ8xQwLZHTyoehRW/czMtC/e3eHaVBElMoxlhOCMEgHsx6ma+USX26XnwHUqSS/X0BYBVVbUvUTsmXKSKproWS2eKMybDE0jIWkRi23TnlGxah3svImqd9ZwV6MFB47K7fIsrqrm+qBpsOlvUFSwu2ku2ahbIXQpjf9YlJIe2dsAxtVPF+UZpvEoYzL76xLjlw==
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2020 14:58:41.6132
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ce9ecdd3-c665-4adc-926c-08d7ccdf2dff
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[13.81.10.179];Helo=[westeu13-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7094
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 19-03-2020 18:21, Adrian Bunk wrote:
> On Thu, Mar 19, 2020 at 05:07:17PM +0100, Mike Looijmans wrote:
>> ...
>> With both parallelization options
>> to "16", I might end up with 16 compile tasks running 16 compile threads
>> each, i.e. 256 running processes.
>> ...
> 
> This is a bug:
> http://bugzilla.yoctoproject.org/show_bug.cgi?id=13306
> 
> I sometimes wonder whether something basic like "no more than one
> compile task at a time" would be sufficient in practice to avoid
> overloading all cores.
> 
> It would also help with RAM usage, there are some combinations of
> recipes where the build gets aborted by the oom killer on my laptop
> (8 cores, 32 GB RAM) when bitbake runs the compile tasks in parallel.


I tried compiling octave on an ARM board with 1GB of RAM (because octave 
is virtually impossible to cross-compile). There was one C++ in there 
that triggered a huge memory load of about 1GB, thus failing to run 
fully in RAM. Had to create an extra 1GB swap on the SD card to get the 
build to succeed. The actual swap usage wasn't much, and I could finish 
the build with two threads even (a dual core ARM yay).

So the memory usage is dependent on what's in the C++ file. Especially 
heavy template programming can put a huge load on memory. There's no way 
to predict that beforehand.


-- 
Mike Looijmans
