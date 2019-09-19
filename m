Return-Path: <simon.spannagel@cern.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15B92E00D54; Thu, 19 Sep 2019 06:48:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FORGED_SPF_HELO, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.5.86 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
	(mail-eopbgr50086.outbound.protection.outlook.com [40.107.5.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E0D5E00C8F
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2019 06:48:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=YMhGnV2ItbNHvyXj0fWTknSGKzH/EiuqFRB+CB5cTwQpNVVb4ocG159WVheSxS+rsD1WYC3/itkyYVOIIgv6jBo59JxikLxTdSzjC5odLAadIajFTw7+YADNf0Mw+lkc0/Cbud/H5GagBcM2s8wT9WuVjU48WCxv8AOOJycgapQF513ShWva3rtTsPtpLp7k2k98EKY+bUdTY/2KiTCzo2ASTf16WWs+I7NBY8IgRbmmsSxbjSxePGpaVOSRd0MaiudPqO7F3HmdddGbaGSnPbYVAhKRhFVKJHbzt1KzLsLMiB0XUJNTFVdTvLKQ765TFPANANrt1+jzcGFo71DZMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=djAhEx9hs8uMcwkKqqYostU9F/eEGHSbJUd5I400R0Y=;
	b=lne/NRW5bLTj2O4aez4uxo3nQ+osYAq89SC4OCk8Pe+QGy6v6SKJ0xM/eywEp8WpgzDCvlLDeHFHYL3B5qnWbuW7IKkqSTbI/GoN4+razIqRT3pnlQLGjwbrFGNdbAuC6XkAzNcuOzBPYafyX0r5GcnlEwCN+4AefY1W3zYbz59vY6lE3tdL0nLBqQ38v9hbzGCwyx5x3vKWQywJoP8aLQQ/h7gjleWCaQU4ZT5SKGNri7CbZuUVQUjhLbm7dr40Vv/aDKA/q5hKxOExG71LycxWlAsFvQQ0Zzyr8AGsLURv2J6Z4XPDNcyBxaj6JJ6fMeV9Ptgv5q35b+/jjDMI9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
	188.184.36.50) smtp.rcpttodomain=gmail.com smtp.mailfrom=cern.ch;
	dmarc=bestguesspass action=none header.from=cern.ch;
	dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cern.onmicrosoft.com; 
	s=selector2-cern-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=djAhEx9hs8uMcwkKqqYostU9F/eEGHSbJUd5I400R0Y=;
	b=UxgtlI9fagL3g/Fjidb/7rBIWfutCejvSQnh0dzh63Fou/t3B41rPfF1HlabiEFzpJrC0LpLEXVPlj4Rz56o7VKzTaWtQeIfh+bLq1GhQbKjxvy2Ppe0Qqd8ycDZIQ9Ec+Afp1eyTU1W/ikxU4Lvg+GysIwL0y6evrkNErgZLkM=
Received: from AM5PR0601CA0032.eurprd06.prod.outlook.com
	(2603:10a6:203:68::18) by VI1PR0602MB3277.eurprd06.prod.outlook.com
	(2603:10a6:802:10::18) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.18;
	Thu, 19 Sep 2019 13:48:07 +0000
Received: from AM5EUR02FT025.eop-EUR02.prod.protection.outlook.com
	(2a01:111:f400:7e1e::203) by AM5PR0601CA0032.outlook.office365.com
	(2603:10a6:203:68::18) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2263.21 via
	Frontend Transport; Thu, 19 Sep 2019 13:48:07 +0000
Authentication-Results: spf=pass (sender IP is 188.184.36.50)
	smtp.mailfrom=cern.ch; gmail.com; dkim=none (message not signed)
	header.d=none; gmail.com;
	dmarc=bestguesspass action=none header.from=cern.ch; 
Received-SPF: Pass (protection.outlook.com: domain of cern.ch designates
	188.184.36.50 as permitted sender) receiver=protection.outlook.com;
	client-ip=188.184.36.50; helo=cernmxgwlb4.cern.ch;
Received: from cernmxgwlb4.cern.ch (188.184.36.50) by
	AM5EUR02FT025.mail.protection.outlook.com (10.152.8.110) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.2284.20 via Frontend Transport; Thu, 19 Sep 2019 13:48:07 +0000
Received: from cernfe01.cern.ch (188.184.36.42) by cernmxgwlb4.cern.ch
	(188.184.36.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Thu, 19 Sep 2019 15:48:05 +0200
Received: from [IPv6:2001:1458:202:73::101:d786] (2001:1458:202:73::101:d786)
	by smtp.cern.ch (2001:1458:201:66::100:14) with Microsoft SMTP
	Server (TLS) id 14.3.468.0; Thu, 19 Sep 2019 15:48:06 +0200
To: Randy MacLeod <randy.macleod@windriver.com>, <yocto@yoctoproject.org>,
	<robert.berger.yocto.user@gmail.com>
References: <8f3933f8-bbad-7dbd-ff9a-afdab91ced3f@gmail.com>
	<ed609776-571f-0633-fb68-055236d32897@windriver.com>
From: Simon Spannagel <simon.spannagel@cern.ch>
Message-ID: <7dee0735-e4cd-6d7d-b541-a3dd0b83b204@cern.ch>
Date: Thu, 19 Sep 2019 15:48:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <ed609776-571f-0633-fb68-055236d32897@windriver.com>
X-Originating-IP: [2001:1458:202:73::101:d786]
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:188.184.36.50; IPV:NLI; CTRY:CH; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(136003)(396003)(376002)(346002)(39860400002)(51914003)(53754006)(189003)(199004)(2870700001)(31686004)(2201001)(70586007)(36756003)(6306002)(356004)(70206006)(6246003)(229853002)(2906002)(6116002)(31696002)(86362001)(50466002)(246002)(7636002)(2486003)(446003)(11346002)(26005)(23676004)(53546011)(16526019)(65956001)(76176011)(186003)(65806001)(7736002)(476003)(58126008)(966005)(2616005)(336012)(426003)(478600001)(126002)(305945005)(47776003)(44832011)(110136005)(8936002)(106002)(5660300002)(316002)(486006)(8676002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0602MB3277;
	H:cernmxgwlb4.cern.ch; FPR:; SPF:Pass; LANG:en;
	PTR:cernmx11.cern.ch; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7af27a92-2838-4d4c-d3f6-08d73d0800b4
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(4709080)(1401327)(2017052603328)(7193020);
	SRVR:VI1PR0602MB3277; 
X-MS-TrafficTypeDiagnostic: VI1PR0602MB3277:
X-MS-Exchange-PUrlCount: 4
X-Microsoft-Antispam-PRVS: <VI1PR0602MB327757ACD259D9AD5DC8F4FEF0890@VI1PR0602MB3277.eurprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 016572D96D
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: xkQIdAGi3dP2aJEc9nKb8s4rpgcn+kGyV5X7tmgJhAnStnDN4Zjxq5WCJYase+jLs+D8HQFeCZzvGfX0GXVr/TmRMPhQW93KfDqpKvoTddh763XieSamZe/UY+KF4fEppwKkrZT5KqGob+PGiS6mPifTTPAyI42zBICsAfvK3d1dediC9VoSDyw01rIomn5PrzqWcG8n/rD5LDoJ2s9Vilwg6yWrN8gwGTiiPMcoZ6JqcfqAL4889BhCylxq5upCYWeC1QD2EHjXlN0DXRoPBl7jONYCxz41hHPLgSpkZvfe3qQXV0B9T/B2CB9k6X2bRYNdsJVrwDwv2+Aci4Ey/+3JHIEvq5ezlvao9BlWE/xDaCrX/hewEYANHviteYYAEqIPTR+LV7Pd0r/hHjws2NitBwKErlO8Jn05CyDEsBU=
X-OriginatorOrg: cern.ch
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2019 13:48:07.4575 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7af27a92-2838-4d4c-d3f6-08d73d0800b4
X-MS-Exchange-CrossTenant-Id: c80d3499-4a40-4a8c-986e-abce017d6b19
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=c80d3499-4a40-4a8c-986e-abce017d6b19;
	Ip=[188.184.36.50]; Helo=[cernmxgwlb4.cern.ch]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0602MB3277
X-Mailman-Approved-At: Fri, 20 Sep 2019 08:04:32 -0700
Subject: Re: gitlab-runner
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
X-List-Received-Date: Thu, 19 Sep 2019 13:48:11 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi all,

the linked layer does not provide a bitbake recipe for the gitlab-runner
to be built but only some instructions of how to set up a runner
instance to run bitbake on. Was this what you were looking for?

Thanks for the link to the layer index, Randy, I'll look into adding it
there!

Best regards,
Simon


On 19/09/2019 15:39, Randy MacLeod wrote:
> On 9/19/19 2:56 AM, Robert Berger@yocto.user wrote:
>> Hi,
>>
>> Does someone happen to have a BitBake recipe for gitlab-runner?[1]
>>
>> [1] https://gitlab.com/gitlab-org/gitlab-runner
>>
>> A quick search did not show up anything;)
>
> There's nothing in the layer index:
>
> https://layers.openembedded.org/layerindex/branch/master/recipes/?q=runner
>
>
> (It wasn't clear if you knew about the index.)
>
> I did find:
> https://gitlab.cern.ch/Caribou/meta-caribou/tree/master/misc/gitlab-ci
> that mentions gitlab-runner but it doesn't seem like that layer provides
> a recipe but you might want to check it out anyway and let us know if
> it works for you.
>
> Also I CCed Simon who is the most recent active committer to
> meta-caribou. Simon, Do you want to add this layer to the index?
> See:
>   https://layers.openembedded.org/layerindex/branch/master/layers/
> and click the "Submit layer" button.
>
> ,./Randy
>
>>
>> Regards,
>>
>> Robert
>
>

