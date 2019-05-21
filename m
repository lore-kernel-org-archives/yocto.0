Return-Path: <Ralf.Spiwoks@cern.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D6BFE00D54; Tue, 21 May 2019 13:59:41 -0700 (PDT)
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
	*      [40.107.2.74 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 47312 seconds by postgrey-1.32 at yocto-www;
	Tue, 21 May 2019 13:59:37 PDT
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
	(mail-eopbgr20074.outbound.protection.outlook.com [40.107.2.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CE23E00C46
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 13:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cern.onmicrosoft.com; 
	s=selector1-cern-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=cfm0nhPlYqCbhrSfi2jF+qswy/9X7alSD4vhznG+TL4=;
	b=iu39mnLTHdSwJ8JeBDm5fUNbrsQEJZzbWC8G/1wp5yFwpwLzR87lNze70xuvA4ZZd9O96/WQZI0l9OpCN5sqcIZTEBtMJUETvi2ZNU3xKeqELhjoSxUglts9obcWJiXrNVqGhSFUUVkDqtb7iatmyTjMZMCsTK+iC5Wb+F19Qx4=
Received: from AM6PR06CA0014.eurprd06.prod.outlook.com (2603:10a6:20b:14::27)
	by AM6PR0602MB3591.eurprd06.prod.outlook.com (2603:10a6:209:e::28)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1922.15;
	Tue, 21 May 2019 07:51:03 +0000
Received: from VE1EUR02FT023.eop-EUR02.prod.protection.outlook.com
	(2a01:111:f400:7e06::200) by AM6PR06CA0014.outlook.office365.com
	(2603:10a6:20b:14::27) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1900.16 via
	Frontend Transport; Tue, 21 May 2019 07:51:03 +0000
Authentication-Results: spf=pass (sender IP is 188.184.36.50)
	smtp.mailfrom=cern.ch; yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=cern.ch;
Received-SPF: Pass (protection.outlook.com: domain of cern.ch designates
	188.184.36.50 as permitted sender) receiver=protection.outlook.com;
	client-ip=188.184.36.50; helo=cernmxgwlb4.cern.ch;
Received: from cernmxgwlb4.cern.ch (188.184.36.50) by
	VE1EUR02FT023.mail.protection.outlook.com (10.152.12.132) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.1900.16 via Frontend Transport; Tue, 21 May 2019 07:51:02 +0000
Received: from cernfe06.cern.ch (188.184.36.49) by cernmxgwlb4.cern.ch
	(188.184.36.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Tue, 21 May 2019 09:50:49 +0200
Received: from pcphese73.cern.ch (2001:1458:202:a7::101:954e) by smtp.cern.ch
	(2001:1458:201:66::100:14) with Microsoft SMTP Server (TLS) id
	14.3.439.0; Tue, 21 May 2019 09:50:48 +0200
To: "Burton, Ross" <ross.burton@intel.com>
References: <51a78952-31b9-6b1b-2459-c1092b50fdf2@cern.ch>
	<CAJTo0LbkJSEP+49qR_fSmN5cGB0-n+Gz8xaFnLvuvi3WAy+zOA@mail.gmail.com>
From: Ralf Spiwoks <spiwoks@cern.ch>
Message-ID: <cc00f116-9071-3d5e-7fa7-a14af9bd71af@cern.ch>
Date: Tue, 21 May 2019 09:50:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LbkJSEP+49qR_fSmN5cGB0-n+Gz8xaFnLvuvi3WAy+zOA@mail.gmail.com>
X-Originating-IP: [2001:1458:202:a7::101:954e]
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:188.184.36.50; IPV:NLI; CTRY:CH; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(376002)(136003)(39860400002)(346002)(396003)(2980300002)(189003)(199004)(2906002)(7696005)(246002)(316002)(786003)(70586007)(7636002)(7736002)(53416004)(65826007)(67846002)(23676004)(2486003)(76176011)(106002)(31686004)(6246003)(305945005)(4326008)(478600001)(6116002)(229853002)(8676002)(8936002)(31696002)(70206006)(11346002)(5660300002)(426003)(72206003)(336012)(446003)(74482002)(2616005)(476003)(126002)(65956001)(66574012)(486006)(230700001)(14444005)(47776003)(65806001)(26005)(64126003)(186003)(6666004)(356004)(16526019)(36756003)(6916009)(58126008)(53546011)(50466002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0602MB3591;
	H:cernmxgwlb4.cern.ch; FPR:; SPF:Pass; LANG:en;
	PTR:cernmx11.cern.ch; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ae03d68e-849e-43de-eb8c-08d6ddc11295
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
	SRVR:AM6PR0602MB3591; 
X-MS-TrafficTypeDiagnostic: AM6PR0602MB3591:|AM6PR0602MB3591:|AM6PR0602MB3591:
X-Microsoft-Antispam-PRVS: <AM6PR0602MB3591145EF84A5DEE32ED5A7498070@AM6PR0602MB3591.eurprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-Forefront-PRVS: 0044C17179
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: RkxoiR0o5oWcFW28VEu7XurJplG72wJ72QZygQppXp//c61kw5kvcP18XwH7zVUuwrTsy518QWsAEAliad6dWXnWNZMBTXcHtkkR4w7K7tGVErUIZhUy5Vsv1OETJW23GBRCYHWtNBzGYRvvK7yq2KE4rZu0hfYTAbF3j+8K71N1PziBLtDq1pgqShyrNiDV2DRFVo63JzcloHbVbGFQx1DV78iKzkCWoE8frYJbsDhZhAj2r6ULWe2o43H5d7Lp1bGYcTzwQ1V2YQrcRbb8Wr9eZwtWCdvVcQ4KN2frMHVVvjdltiGnGt+A8dtZzXwERZO7DLNBaF03HyGYt9H2oXf3ebnvpxTcwsKiBIQPLRM+voQaOp7nYhi2Z6X2EDbZzzOABkT2HNDVilC1vawr5zA4C2QF5wE3r4bFdu4HiaQ=
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2019 07:51:02.7103 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ae03d68e-849e-43de-eb8c-08d6ddc11295
X-MS-Exchange-CrossTenant-Id: c80d3499-4a40-4a8c-986e-abce017d6b19
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=c80d3499-4a40-4a8c-986e-abce017d6b19;
	Ip=[188.184.36.50]; Helo=[cernmxgwlb4.cern.ch]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0602MB3591
X-OriginatorOrg: cern.ch
X-Mailman-Approved-At: Thu, 23 May 2019 05:27:38 -0700
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
X-List-Received-Date: Tue, 21 May 2019 20:59:41 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

Hi Ross,

Thanks for your email. I am realising that I have not replied to your
email earlier. Sorry. I guess it was partly because your answer put
me slightly off. On the one hand, I thought that as a general approach,
Linux was case sensitive, unlike its big rival Windows, and I was not
aware  of package managers which would explicitly forbid uppercase
package names. I find the approach of allowing only lowercase package
names quite limiting, and frankly a drawback for using Yocto

On the other hand I have a few tens of packages to maintain, which
have uppercase letters in the package names and which did work with
Yocto in previous versions. So, because of a new convention we would
have to rework some of the packages or ignore the warning messages.
And until we find the effort for reworking those package recipes we
will stay with the latter option.

Thanks for your patience and your explanations. Cheers,

Ralf.

On 4/2/19 1:54 PM, Burton, Ross wrote:
> On Tue, 2 Apr 2019 at 12:36, Ralf Spiwoks <spiwoks@cern.ch> wrote:
>> TWO questions:
>>
>> 1) Are those two issues related?
> 
> Probably not, unless you're trying to use a mixed-case override.
> 
>> 2) What is the logic behind allowing only lower case package names? This is to me
>>      a serious restriction on the use of Yocto.
> 
> Two reasons: some package managers forbid packages with uppercase
> names; and for performance reasons overrides are lowercase and as
> package names are often embedded in overrides this implies that
> package names need to be lowercase.
> 
> What's the problem with using lowercase names?
> 
> Ross
> 

