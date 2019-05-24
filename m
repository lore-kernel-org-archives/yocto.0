Return-Path: <Ralf.Spiwoks@cern.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D394BE00CB3; Sat, 25 May 2019 04:58:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.0.82 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 71922 seconds by postgrey-1.32 at yocto-www;
	Sat, 25 May 2019 04:58:51 PDT
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
	(mail-eopbgr00082.outbound.protection.outlook.com [40.107.0.82])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86882E00A96
	for <yocto@yoctoproject.org>; Sat, 25 May 2019 04:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cern.onmicrosoft.com; 
	s=selector1-cern-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Qjxal8cmgvqx8tnfMtBQnzn6ZgnuaonCLAMLjgVb0E0=;
	b=I9qnLycwx0JQIleX4kV1yG/UMUqtpEcpFP3d/bVdGd9AT+X0ZSw5gUktnx9aFADjoX6H4jvkQSRRCDlw9q/W9WWTZi7y6dOzQxeJ+ampLG9Fd86kTjVmndlD0crRO9xdl1Pd6+HrGnUFcmh/Kvm0oNJkade8cfKLaVxk7z989r4=
Received: from AM0PR06CA0029.eurprd06.prod.outlook.com (2603:10a6:208:ab::42)
	by VI1PR06MB4176.eurprd06.prod.outlook.com (2603:10a6:803:71::24)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1922.16;
	Fri, 24 May 2019 14:26:44 +0000
Received: from HE1EUR02FT040.eop-EUR02.prod.protection.outlook.com
	(2a01:111:f400:7e05::206) by AM0PR06CA0029.outlook.office365.com
	(2603:10a6:208:ab::42) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.17 via
	Frontend Transport; Fri, 24 May 2019 14:26:44 +0000
Authentication-Results: spf=pass (sender IP is 188.184.36.50)
	smtp.mailfrom=cern.ch; yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=cern.ch;
Received-SPF: Pass (protection.outlook.com: domain of cern.ch designates
	188.184.36.50 as permitted sender) receiver=protection.outlook.com;
	client-ip=188.184.36.50; helo=cernmxgwlb4.cern.ch;
Received: from cernmxgwlb4.cern.ch (188.184.36.50) by
	HE1EUR02FT040.mail.protection.outlook.com (10.152.11.92) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.1922.16 via Frontend Transport; Fri, 24 May 2019 14:26:43 +0000
Received: from cernfe06.cern.ch (188.184.36.49) by cernmxgwlb4.cern.ch
	(188.184.36.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Fri, 24 May 2019 16:26:42 +0200
Received: from pcphese73.cern.ch (2001:1458:202:a7::101:954e) by smtp.cern.ch
	(2001:1458:201:66::100:14) with Microsoft SMTP Server (TLS) id
	14.3.439.0; Fri, 24 May 2019 16:26:41 +0200
To: Tim Orling <ticotimo@gmail.com>, Khem Raj <raj.khem@gmail.com>
References: <51a78952-31b9-6b1b-2459-c1092b50fdf2@cern.ch>
	<CAJTo0LbkJSEP+49qR_fSmN5cGB0-n+Gz8xaFnLvuvi3WAy+zOA@mail.gmail.com>
	<cc00f116-9071-3d5e-7fa7-a14af9bd71af@cern.ch>
	<70c52f90-eba9-d67b-7d8c-55b5a249f1ae@gmail.com>
	<CANx9H-D0KrzVw4d=hES-5ss2i3n5H0HhnE00mTnpxOE95GNHrw@mail.gmail.com>
From: Ralf Spiwoks <spiwoks@cern.ch>
Message-ID: <72a7b758-602a-f8ab-1397-7d4df9fb5dd2@cern.ch>
Date: Fri, 24 May 2019 16:26:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CANx9H-D0KrzVw4d=hES-5ss2i3n5H0HhnE00mTnpxOE95GNHrw@mail.gmail.com>
X-Originating-IP: [2001:1458:202:a7::101:954e]
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:188.184.36.50; IPV:NLI; CTRY:CH; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(376002)(136003)(346002)(396003)(39860400002)(2980300002)(189003)(199004)(54906003)(786003)(31696002)(14444005)(316002)(58126008)(7736002)(110136005)(106002)(6306002)(246002)(2870700001)(74482002)(64126003)(2486003)(67846002)(7696005)(53546011)(23676004)(7636002)(966005)(478600001)(72206003)(66574012)(5660300002)(76176011)(26005)(65826007)(186003)(16526019)(70206006)(70586007)(11346002)(2616005)(446003)(476003)(336012)(356004)(426003)(50466002)(486006)(126002)(47776003)(65956001)(2906002)(53416004)(6246003)(8936002)(229853002)(65806001)(6116002)(31686004)(36756003)(4326008)(8676002)(305945005);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR06MB4176;
	H:cernmxgwlb4.cern.ch; FPR:; SPF:Pass; LANG:en;
	PTR:cernmx11.cern.ch; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 48b80339-9ef7-4d3b-c360-08d6e053d893
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
	SRVR:VI1PR06MB4176; 
X-MS-TrafficTypeDiagnostic: VI1PR06MB4176:
X-MS-Exchange-PUrlCount: 2
X-Microsoft-Antispam-PRVS: <VI1PR06MB4176318213A7F15D27F281D298020@VI1PR06MB4176.eurprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3631;
X-Forefront-PRVS: 0047BC5ADE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: HtZaTC6dMDXRG/dCu2cJGC99dsA84655nX91XyoIQJzOtWlITIxKgEfwMeDEJX3A8kPHjTDYQnxyR0Nratc987L2Ese/RrTBMnOaZq5dEefGaiTYytrnfoJYW9/CcaFedtcsE+f/52Q3a2yJI7oMmTkpmVmvVONTwopPjVd6p8jIffgjDp8VPwmLG+Ogw0bFcWA9U3c+5rNyzgXBb0IIkK2Lu/mHK77JhbEMcxzKkU3Ua1Zl7jblsYIc53/rGDklaJWccSMXbH5yhBJpdHEaNJ58REjZhu94zAy1iECDNmeFTWlvtqtPGUCKDsMJfifZzwjp9S57OU44h0ghKe7Urz75h/kVbccXFmQ4m+Hd36B7JqZ//3M0W63wNhLc4e5n8FTUK0ZzNDhPiTU6xCM5qJMcwuXv2CvteQy7zL1Lxsc=
X-OriginatorOrg: cern.ch
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2019 14:26:43.7011 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 48b80339-9ef7-4d3b-c360-08d6e053d893
X-MS-Exchange-CrossTenant-Id: c80d3499-4a40-4a8c-986e-abce017d6b19
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=c80d3499-4a40-4a8c-986e-abce017d6b19;
	Ip=[188.184.36.50]; Helo=[cernmxgwlb4.cern.ch]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR06MB4176
X-Mailman-Approved-At: Sat, 25 May 2019 06:27:04 -0700
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: PN is uppercase
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 25 May 2019 11:58:53 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

Hi guys,

The warnings were definitely not on when I started using Yocto more than two years ago.
I have not been using debian packages, and didn't notice. I thought I was still not
using debian and that's why I am surprised about those warnings. But as I wrote, if I
ignore the warnings, nothing bad happens ...

And Tim, thank you for writing "Debian" and "OpenEmbedded" in that way ... it reassured
me ;-)

Have a good weekend. Cheers,

Ralf.

On 5/24/19 6:23 AM, Tim Orling wrote:
> 
> 
> On Thu, May 23, 2019 at 4:55 PM Khem Raj <raj.khem@gmail.com <mailto:raj.khem@gmail.com>> wrote:
> 
> 
> 
>     On 5/21/19 12:50 AM, Ralf Spiwoks wrote:
>      > Hi Ross,
>      >
>      > Thanks for your email. I am realising that I have not replied to your
>      > email earlier. Sorry. I guess it was partly because your answer put
>      > me slightly off. On the one hand, I thought that as a general approach,
>      > Linux was case sensitive, unlike its big rival Windows, and I was not
>      > aware  of package managers which would explicitly forbid uppercase
>      > package names. I find the approach of allowing only lowercase package
>      > names quite limiting, and frankly a drawback for using Yocto
>      >
>      > On the other hand I have a few tens of packages to maintain, which
>      > have uppercase letters in the package names and which did work with
>      > Yocto in previous versions. So, because of a new convention we would
>      > have to rework some of the packages or ignore the warning messages.
>      > And until we find the effort for reworking those package recipes we
>      > will stay with the latter option.
> 
>     The package name rules are not new, they have been with OE/YP forever
>     so it should have failed always. Similar to debian see
> 
>     https://www.debian.org/doc/debian-policy/ch-controlfields.html#list-of-fields
> 
> 
> We had to pick a convention. Debian is well documented, conservative and well thought out. My first contributions to OpenEmbedded many years ago 
> didn’t follow Debian naming, were rejected on V1 and I embarked on a new learning curve. I’ve embraced it and never looked back.
> 
> 
>      >
>      > Thanks for your patience and your explanations. Cheers,
>      >
>      > Ralf.
>      >
>      > On 4/2/19 1:54 PM, Burton, Ross wrote:
>      >> On Tue, 2 Apr 2019 at 12:36, Ralf Spiwoks <spiwoks@cern.ch <mailto:spiwoks@cern.ch>> wrote:
>      >>> TWO questions:
>      >>>
>      >>> 1) Are those two issues related?
>      >>
>      >> Probably not, unless you're trying to use a mixed-case override.
>      >>
>      >>> 2) What is the logic behind allowing only lower case package names?
>      >>> This is to me
>      >>>      a serious restriction on the use of Yocto.
>      >>
>      >> Two reasons: some package managers forbid packages with uppercase
>      >> names; and for performance reasons overrides are lowercase and as
>      >> package names are often embedded in overrides this implies that
>      >> package names need to be lowercase.
>      >>
>      >> What's the problem with using lowercase names?
>      >>
>      >> Ross
>      >>
>     -- 
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
> 

