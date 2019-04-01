Return-Path: <Ralf.Spiwoks@cern.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C414E00AB0; Mon,  1 Apr 2019 22:10:10 -0700 (PDT)
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
	*      [40.107.3.54 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 61215 seconds by postgrey-1.32 at yocto-www;
	Mon, 01 Apr 2019 22:10:08 PDT
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
	(mail-eopbgr30054.outbound.protection.outlook.com [40.107.3.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21266E0091D
	for <yocto@yoctoproject.org>; Mon,  1 Apr 2019 22:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cern.onmicrosoft.com; 
	s=selector1-cern-ch;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=rcjdsfp1/3KRpO4u5XkUWkzBHrS7PMcZEX0qA/+vugk=;
	b=kb17UCGA5qc/h0dtgtejEnM7JCsE9M+p4wT3wOSB3L+fyQ+a0EsInod7Rh3szdqt/0GbDviZ3FsSvEFA45PK/ZcyydPWCDvHyACll7j3aYNjY0eEt868IBxcIe3tH4bKfoIhx6Gpt7YUgCJYNIxgdMYorIKtal4CTXCV4LvNtRY=
Received: from DB6PR0601CA0038.eurprd06.prod.outlook.com (2603:10a6:4:17::24)
	by AM6PR0602MB3541.eurprd06.prod.outlook.com (2603:10a6:209:4::19)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1750.22;
	Mon, 1 Apr 2019 11:36:45 +0000
Received: from VE1EUR02FT011.eop-EUR02.prod.protection.outlook.com
	(2a01:111:f400:7e06::203) by DB6PR0601CA0038.outlook.office365.com
	(2603:10a6:4:17::24) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1750.20 via
	Frontend Transport; Mon, 1 Apr 2019 11:36:45 +0000
Authentication-Results: spf=pass (sender IP is 188.184.36.46)
	smtp.mailfrom=cern.ch; yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=cern.ch;
Received-SPF: Pass (protection.outlook.com: domain of cern.ch designates
	188.184.36.46 as permitted sender) receiver=protection.outlook.com;
	client-ip=188.184.36.46; helo=cernmxgwlb4.cern.ch;
Received: from cernmxgwlb4.cern.ch (188.184.36.46) by
	VE1EUR02FT011.mail.protection.outlook.com (10.152.12.150) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.1750.20 via Frontend Transport; Mon, 1 Apr 2019 11:36:45 +0000
Received: from cernfe05.cern.ch (188.184.36.45) by cernmxgwlb4.cern.ch
	(188.184.36.46) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Mon, 1 Apr 2019 13:36:33 +0200
Received: from pcphese73.cern.ch (2001:1458:202:a7::101:954e) by smtp.cern.ch
	(2001:1458:201:66::100:14) with Microsoft SMTP Server (TLS) id
	14.3.439.0; Mon, 1 Apr 2019 13:36:35 +0200
To: <yocto@yoctoproject.org>
From: Ralf Spiwoks <spiwoks@cern.ch>
Message-ID: <51a78952-31b9-6b1b-2459-c1092b50fdf2@cern.ch>
Date: Mon, 1 Apr 2019 13:36:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.0
MIME-Version: 1.0
X-Originating-IP: [2001:1458:202:a7::101:954e]
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:188.184.36.46; IPV:NLI; CTRY:CH; EFV:NLI;
	SFV:NSPM; SFS:(10001)(10009020)(459900002); DIR:OUT; SFP:1101;
	SCL:1; SRVR:AM6PR0602MB3541; H:cernmxgwlb4.cern.ch; FPR:;
	SPF:None; LANG:en; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2d725efe-59d5-4174-2861-08d6b69651dc
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(5600139)(711020)(4605104)(4709054)(5565046)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:AM6PR0602MB3541; 
X-MS-TrafficTypeDiagnostic: AM6PR0602MB3541:
X-Microsoft-Antispam-PRVS: <AM6PR0602MB3541AAB15281DC439370EE5998550@AM6PR0602MB3541.eurprd06.prod.outlook.com>
X-Forefront-PRVS: 0994F5E0C5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: uVy71IAVrmEaXtlNCCg4gDJSAJ/Yo18Vf5hPIJIwgQj6VM3pj/jgXVmyxUKHDUdtGd/d3AHYSvc58BXqNAZHDh4ZL70FNL3GLV29FIOorgFHLdUKfTc/eEOf4A5z6yj8493RwATR83SlrZhUOxsovlh4C8V41nvGXe0zAZ3ILxeYnoHI5rU7AQ6qRO6i8JKGJ/huFsuUAVWRXW+JLLVnav12EIW+TlYO0PhBht3avNHqyEfEAMyzIdfUNM78IrltoTEf9g4fSYBub9vFUBy5Szjo8BXywgDoKxIoqvJPVhOZT62dI+Rj5wdZc9T3GNYAxxI2ekBEeCm5Qjk71a8jSPvKdjn/u6CkeabYMNSfdM86M8WkG4MMrWn6sIZLtJMmQFbM6F8PwqU5ZlNjZvr5mTUeE2gsXdcaozamQmbQFia6lrLckuonjMRg3kNcWqGXkNlSmHBRsz6keX0wvo92D+b/qlvdct1OiB4hNvD8f/wUZ5vYQHdfBr/rCLar0oN1S7jaTjC5YjGOVRPMb7dDvQjYnSlwwnqZOxnWAMCBLzc=
X-OriginatorOrg: cern.ch
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2019 11:36:45.1627 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d725efe-59d5-4174-2861-08d6b69651dc
X-MS-Exchange-CrossTenant-Id: c80d3499-4a40-4a8c-986e-abce017d6b19
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=c80d3499-4a40-4a8c-986e-abce017d6b19;
	Ip=[188.184.36.46]; Helo=[cernmxgwlb4.cern.ch]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0602MB3541
X-Mailman-Approved-At: Tue, 02 Apr 2019 04:34:25 -0700
Subject: PN is uppercase
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
X-List-Received-Date: Tue, 02 Apr 2019 05:10:10 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

Hi,

I am getting warning issues about the package name containing uppercase letters, e.g.

WARNING: QA Issue: PN: ... is upper case, this can result in unexpected behavior. [uppercase-pn]

And sometimes later, I am getting many errors like the following one:

ERROR: ...-1.0-r0 do_package_qa: QA Issue: /usr/bin/... contained in package ... requires libgcc_s.so.1, but no providers found in RDEPENDS_...? 
[file-rdeps]


TWO questions:

1) Are those two issues related?

2) What is the logic behind allowing only lower case package names? This is to me
    a serious restriction on the use of Yocto.

Thanks for your help,

Ralf Spiwoks, CERN

