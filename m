Received: from EUR03-DB5-obe.outbound.protection.outlook.com (EUR03-DB5-obe.outbound.protection.outlook.com [40.107.4.78])
 by mx.groups.io with SMTP id smtpd.web10.6941.1584599258395322749
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 23:27:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topicbv.onmicrosoft.com header.s=selector2-topicbv-onmicrosoft-com header.b=JxzIjeVc;
 spf=pass (domain: topicproducts.com, ip: 40.107.4.78, mailfrom: mike.looijmans@topicproducts.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OAM8BGYnx0/ESA16F5EazvfoX0pIyYX6j1M4Gv72XEs=;
 b=JxzIjeVcE5FBhKsg/ZJGv0yQcfCiSia/eiuYrZuPtTOtw51jZAyJxKpDqolMDZV9Jn2fMnniYp2lPnrMH54unWmjYTSQm3Vip6Wjd9LlChb1m26cgTq9YKLXPm+lG0UP4S6fy1rJJbd4Za474icqWkpaU8lkodvlKM1DDGgMec4=
Received: from AM5PR0202CA0018.eurprd02.prod.outlook.com
 (2603:10a6:203:69::28) by DB7PR04MB5211.eurprd04.prod.outlook.com
 (2603:10a6:10:1a::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.22; Thu, 19 Mar
 2020 06:27:36 +0000
Received: from VE1EUR01FT028.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:203:69:cafe::30) by AM5PR0202CA0018.outlook.office365.com
 (2603:10a6:203:69::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.18 via Frontend
 Transport; Thu, 19 Mar 2020 06:27:36 +0000
Authentication-Results: spf=pass (sender IP is 13.81.10.179)
 smtp.mailfrom=topicproducts.com; lists.yoctoproject.org; dkim=fail (signature
 did not verify) header.d=topicbv.onmicrosoft.com;lists.yoctoproject.org;
 dmarc=none action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 13.81.10.179 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.81.10.179; helo=westeu13-emailsignatures-cloud.codetwo.com;
Received: from westeu13-emailsignatures-cloud.codetwo.com (13.81.10.179) by
 VE1EUR01FT028.mail.protection.outlook.com (10.152.2.220) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.14 via Frontend Transport; Thu, 19 Mar 2020 06:27:35 +0000
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (104.47.1.56) by westeu13-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Thu, 19 Mar 2020 06:27:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YvS9jMRR3BWTY30uLX+RGNdDHlh7tnLB+154W+q8rYBLEWWFLP6lvHawrnEXE9ieO6rMb0UrtLP7J4GER2NLv36esw9P0Ivt55bUAFPgPBFdjlItuYeWX2vtLfmyXm5+OoLHYANfjGknwuPLUkZaogoDMTshs4qnySfI6htZZ0I68FbS/05R6vg/fsp16U+dcdvZA7+61OyaWC59NygovpEu5eKiAXBfHlFORUm7/49FXa1AWnGKpi8EgcHClH9cNM/+eLu+jq35nuisYgs8H4O4+Vslka4oomF+eDtGz1m0CyJ1Bn9Rq39eJUisPxx2aqhlcN82uLJOQ4x7/IQznQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OAM8BGYnx0/ESA16F5EazvfoX0pIyYX6j1M4Gv72XEs=;
 b=HOkR+D8mxZA/O/QX2zU6gDUpRuLjNhygiFWfPr4OjiqnkE1+OpUaGy9C9c+zbGd1+I4pMd8CB5LojcIj8DlbIxE1Yh74CfU1AROm9JljOf7079K0bCwskaWN5W5hT9QLJZMdC026kh/NwKF93zeAJ1WUZtoBzz+VxtIB4S5eXwUO3mGdFyPB9Z7cE6XzhbIGS9jOTRE35enxCtQIWPn1SMXxZBxq7tpw7810GR/I5FD1FZJOU5Fok0+wFjME0oQQSAfho9WXu1pWEtHLAur+05amLPCPyBuzsXJDtR/Cp07bje1Bfnr1fywzAUmXELau8Q0xeyg1ytB5j7FkC5gnnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OAM8BGYnx0/ESA16F5EazvfoX0pIyYX6j1M4Gv72XEs=;
 b=jtgmsqpRqY1LJRRoo9+u+BHSFSkAFMnkrN7xSDt5AZbKC3a6Q1lybO68G+0pjLswDTAzbMoh5WKJ2/hq0PTHN2P4W2DiS58rakRx2d1Sb59PzQXGLxxqhEZcbubYQUunrPEBjit0qwwWs6405c73evtQ7ilTVT1ZGD3PIJSQVvk=
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=mike.looijmans@topicproducts.com; 
Received: from DB3PR0402MB3947.eurprd04.prod.outlook.com (52.134.67.147) by
 DB3PR0402MB3675.eurprd04.prod.outlook.com (52.134.69.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.19; Thu, 19 Mar 2020 06:27:32 +0000
Received: from DB3PR0402MB3947.eurprd04.prod.outlook.com
 ([fe80::380e:f722:2d0d:9c71]) by DB3PR0402MB3947.eurprd04.prod.outlook.com
 ([fe80::380e:f722:2d0d:9c71%6]) with mapi id 15.20.2814.025; Thu, 19 Mar 2020
 06:27:32 +0000
Subject: Re: <EXT> Re: [yocto] What are the key factors for yocto build speed?
To: "Srinivasan, Raja" <rsrinivasan@abiomed.com>,
 "mikko.rapeli@bmw.de" <mikko.rapeli@bmw.de>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
 <20200318130126.GK104502@korppu>
 <CAM9ZRVuQyj7X0YFqkpSFWM2=kQHnu8ZGpMsD34ntHYny4x7XJg@mail.gmail.com>
 <251912923.167286.1584540746314.JavaMail.zimbra@savoirfairelinux.com>
 <20200318144906.GC23112@localhost>
 <080227a9-b5f2-8e3e-201f-5285a1f80e2d@topic.nl>
 <20200318155132.GO104502@korppu>
 <06037dcfe9e74e4e80cd1e8b41593542@USDVREX02.abiomed.com>
From: "Mike Looijmans" <mike.looijmans@topic.nl>
Organization: Topic
Message-ID: <c15d66d7-d056-df06-3560-c78289c43d07@topic.nl>
Date: Thu, 19 Mar 2020 07:27:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <06037dcfe9e74e4e80cd1e8b41593542@USDVREX02.abiomed.com>
X-ClientProxiedBy: AM4PR0101CA0070.eurprd01.prod.exchangelabs.com
 (2603:10a6:200:41::38) To DB3PR0402MB3947.eurprd04.prod.outlook.com
 (2603:10a6:8:7::19)
Return-Path: mike.looijmans@topicproducts.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.130] (83.128.90.119) by AM4PR0101CA0070.eurprd01.prod.exchangelabs.com (2603:10a6:200:41::38) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.20 via Frontend Transport; Thu, 19 Mar 2020 06:27:31 +0000
X-Originating-IP: [83.128.90.119]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ec0659f1-d6b8-4bcc-6dab-08d7cbce9d25
X-MS-TrafficTypeDiagnostic: DB3PR0402MB3675:|DB7PR04MB5211:
X-Microsoft-Antispam-PRVS: 
	<DB7PR04MB52114D462DB148C9F478F3C896F40@DB7PR04MB5211.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;OLM:9508;
X-Forefront-PRVS: 0347410860
X-Forefront-Antispam-Report-Untrusted: 
 SFV:NSPM;SFS:(10009020)(376002)(346002)(136003)(396003)(366004)(39840400004)(199004)(2616005)(956004)(31686004)(110136005)(8676002)(16576012)(44832011)(36756003)(2906002)(316002)(42882007)(508600001)(186003)(16526019)(81156014)(36916002)(31696002)(81166006)(26005)(8936002)(6486002)(52116002)(4326008)(5660300002)(66556008)(66946007)(53546011)(66476007);DIR:OUT;SFP:1101;SCL:1;SRVR:DB3PR0402MB3675;H:DB3PR0402MB3947.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;
Received-SPF: None (protection.outlook.com: topicproducts.com does not
 designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 Z+weJcFVxWpwo2tJ7b/Kz45f2l5wQs1N0rTI5lam359sYL6ZgqbxoZUOMOQtDWAY0rre+M3mbr7CG8H768r12qFjevH9nq2UMy2lnlNalMwkuFwVccyh+0/2GuRj9wTHxLsdcnNZsjx9H9RRh5iPDQiWKEwuAklyZ8HkcvzlcMVypwpKHp3AccAg6SB+4HF29gl1inFna/yrQ2/UMEcP6qxzTOEeewC3dP5Rj8Z99RTszgpnGeS5n5pdjt4SpPaRgmg4K1BQCFodD+n1gq7PppmFlTRhuQSDscD2NHD+P7ZnDN1+Qm3cYVryXedHfSLYk5MPsdXlLIsixF+I2n5awJLJ2PAf0YQuFFozhweyAug7q9GqE4Kg6JEX5rnkaM9qFx7t4Vx6civFDraqxtrgmkM5lSOsHXw971TPHgQQh8p54Sgfi2kxCO81MabZ7Z4B
X-MS-Exchange-AntiSpam-MessageData: rvvqNaZI9S11Fx09YZxLgDgeZLQsmmP4ZSU2ZGcSb9Wi5jn9Jf2QMvAroHjG1ptNkD+UydEbd+9QFrHqf0PdVcnIR0fCtlQf7bD+FhAG3djmzTcd/sekokI+3NDhc2yUocRTiboxh+4AqfXyXP/bSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3675
X-CodeTwo-MessageID: 50c9e87c-2f24-4865-b44f-4d121ecd5bc4.20200319062734@westeu13-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 VE1EUR01FT028.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: 
	CIP:13.81.10.179;IPV:;CTRY:NL;EFV:NLI;SFV:NSPM;SFS:(10009020)(136003)(376002)(396003)(346002)(39840400004)(199004)(46966005)(4326008)(36916002)(6486002)(53546011)(246002)(7596002)(8676002)(31696002)(5660300002)(8936002)(356004)(316002)(7636002)(70586007)(36756003)(70206006)(110136005)(82310400001)(44832011)(2906002)(186003)(47076004)(26005)(16526019)(31686004)(16576012)(2616005)(42882007)(956004)(336012)(508600001);DIR:OUT;SFP:1101;SCL:1;SRVR:DB7PR04MB5211;H:westeu13-emailsignatures-cloud.codetwo.com;FPR:;SPF:Pass;LANG:en;PTR:westeu13-emailsignatures-cloud.codetwo.com;A:1;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	470eca3c-f26d-451e-65d7-08d7cbce9ad4
X-Forefront-PRVS: 0347410860
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	hTe0/IHqqxaeiudSWTpsue3BbhRjyzgugWKV6vb+7XwddsqPaBZxbrVLYPGuxsMK6JiVbbc15HtiVwIJCGiEQIwApUzvAB6KARjJ76KXNS6eWkVUDvbihb1hJlliwoLWaAMtCS+KdspJruxjBaIWCUVSio5u9wfBdAK4XAJzqXgnMksgS/blv3TDUiEjL6OigzepR2466zVe8e29WznClhExb6wpkaboCdiDWC+EB2nzme9JwXmG2EYrOi9nDSjRmRMOT7cbBRUG2e3AxD5jiD5R54LypPqo14RA6/7v16cUYv0oMjiAVX82y/EbI1jPM2EAqN1nqLUPBnQ6FMnmfOioqMOs1yWRWS19pGFiv852I1o8M00d4CdXvD6q3WHt6d6WYZlaIpZRzWIxNW4+ohfmo44EWC9kVFnU55mSyXR6tMe5cbThJuQc9OcHjHvk8OMxuhWwSzPcMqfKKreyHd7dthqVxt0wqqUWBH+s4jnC7pUDaZovZA6IgGhPqEacHBRx2GXo0jzzbXviZtw3Aw==
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2020 06:27:35.5252
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ec0659f1-d6b8-4bcc-6dab-08d7cbce9d25
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[13.81.10.179];Helo=[westeu13-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5211
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

You should really investigate the sstate-cache. Oh, and don't delete 
everything after every build...

If you take a brand new Ubuntu machine to our network, clone the repo 
and run a build, the XFCE desktop image will be built in about 5 minutes.

2 minutes is for recompiling the kernel or something akin to that.

Update and compile an application is usually less than that.

Another hint: devtool.


On 18-03-2020 18:13, Srinivasan, Raja wrote:
> My own experience (pardon me if already discussed)
> 
> Fought the build times for several months - ending up eventually at 8 
> cores (but specifying 16 threads in poky builds). Best times for my 
> build about 4 hours. Clearly impractical during engineering.
> 
> Generated an sdk and used it for app development. Each build is now a 
> minute or 2.
> 
> Using a homegrown utility, updated the image file with applications in a 
> jiffy - to produce burnable sdcard image.
> 
> Complete build required only for the final release -- or made major 
> changes like python2 to python3!
> 
> YMMV.
> 
> srini
> 
> -----Original Message-----
> From: yocto@lists.yoctoproject.org <mailto:yocto@lists.yoctoproject.org> 
> <yocto@lists.yoctoproject.org> On Behalf Of Mikko Rapeli via 
> Lists.Yoctoproject.Org
> Sent: Wednesday, March 18, 2020 11:52 AM
> To: mike.looijmans@topic.nl <mailto:mike.looijmans@topic.nl>
> Cc: yocto@lists.yoctoproject.org <mailto:yocto@lists.yoctoproject.org>
> Subject: <EXT> Re: [yocto] What are the key factors for yocto build speed?
> 
> On Wed, Mar 18, 2020 at 04:09:39PM +0100, Mike Looijmans wrote:
>  > On 18-03-2020 15:49, Adrian Bunk via Lists.Yoctoproject.Org wrote:
>  > > On Wed, Mar 18, 2020 at 10:12:26AM -0400, Jean-Marie Lemetayer wrote:
>  > > > ...
>  > > > For example one of our build servers is using:
>  > > > - AMD Ryzen 9 3900X
>  > > > ...
>  > > > - 32Go DDR4 3200 MHZ CL14
>  > > > ...
>  > > > It is a really good price / build time ratio configuration.
>  > >
>  > > Depends on what you are building.
>  > >
>  > > Building non-trivial C++ code (e.g. webkitgtk) with 24 cores but
>  > > only 32 GB RAM will not work, for such code you need more than 2
>  > > GB/core.
>  >
>  > Seems a bit excessive to buy hardware just to handle a particular
>  > corner case. Most of OE/Yocto code is plain C, not even C++.
>  >
>  > My rig only has 8GB but doesn't run into memory issues during big GUI
>  > builds. The only thing that made it swap was the populate_sdk task
>  > that created a 1.1GB fiel and needed 20GB of RAM to compress that.
>  > Took a few minutes more due to swapping.
>  > I submitted a patch today to fix that in OE.
>  >
>  > Your mileage may vary. But RAM is easy to add.
> 
> Well, I can't build with under 2 gigs per core or I run out of physical 
> memory and kernel oom-killer kicks in to kill the build. Also can't run 
> with yocto default parallel settings which only take into account the 
> number of cores and thus have a custom script which does caps the 
> threads so that 2 gigs of RAM for each are available.
> 
> Though I'm sure plain C and plain poky projects have less requirements 
> for RAM.
> 
> -Mikko
> 
> ________________________________
> 
> CONFIDENTIALITY NOTICE: This email message and any attachments are 
> confidential and may be privileged and are meant to be read by the 
> intended recipient only. If you are not the intended recipient, please 
> notify sender immediately and destroy all copies of this message and any 
> attachments without reading or disclosing their contents. Thank you
> 
> 


-- 
Mike Looijmans
