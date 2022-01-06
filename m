Return-Path: <jan.kiszka@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3569CC433FE
	for <webhook@archiver.kernel.org>; Thu,  6 Jan 2022 14:28:48 +0000 (UTC)
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (EUR03-AM5-obe.outbound.protection.outlook.com [40.107.3.75])
 by mx.groups.io with SMTP id smtpd.web08.9168.1641479322212823624
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Jan 2022 06:28:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=ayoEAkbk;
 spf=pass (domain: siemens.com, ip: 40.107.3.75,
 mailfrom: jan.kiszka@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cu7JkLmfczYwHULyaZoDUw+yWL5Wm2Glu7+fOLu0FahIAQm6PHpNtMX/X/j4n12SB9grDdHDzYzWr0POyMVvyiRPAY0zX101/sh2nyxKFbWYTCJhjnQqQC7Z70joCcfvvhYt0xhgweJuqRipJccxV54mUreCuVUrEjHPNcZFo5pUDhQ7XITwnOPyYRyOwlIBFk1iqZqaQZQpA7jE7bURs8P4pGQaayCEfHDXdqHxap1Ava0Kogq/bH6hCNkWneS16rJ5Z/MzOBeiKuEbwr/abZWwq3oy3sJZq64HT9rZZXoRzWDRHLip+sgS1er72ND+HUXi3E7R6RiaJZgw0a+WnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5jX6Rh+mrcfe19EwibbBb47fbGDl85RcqN1Mo9Dmwoo=;
 b=VZqMhwzT0bVJsG7occw6lD/CcxK/TX15CwRwJPqcP4UStV99rZbmcdEssGdi+MKbggfEpz5vTzWLhLdBvrVzIfU6Y1gxemnX9YZi4kPbjhtfGsYPJm79zcRag9SPpgl4He2xH9N/aDUlL25lbsI+Gh1rBMkQkD9qnNggOtTr4mlctgiBSX0E92HEdIhXxEaR9nNwTRp7NtfeTIUe9Wf6CJ5/O0ZFV3/mqZYLj2oxxS9eqrJrjXZO46wpx+MeXDroPU2LO8Ql9ugXgvJZ57QS/DY5q0jE4B+B5u9g9SFkUct7HcVbbgBRXYqFpcDWf+p88Ew7f6Q2TjdMjQRLHukjPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 194.138.21.72) smtp.rcpttodomain=gmail.com smtp.mailfrom=siemens.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=siemens.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5jX6Rh+mrcfe19EwibbBb47fbGDl85RcqN1Mo9Dmwoo=;
 b=ayoEAkbkCYC9GL0gtRhEr2toQmrV3Yn2pMRKeWnKKaSyzECq1z/wTk2gircsyn8c4zbOpiAxKMligvfT8Uh0A0rPpGbaSGZOAjGecb7BzkYGpGYpbIuYC/EoN9xruBTNKysd2oKV2Ctss70mw+ffB+QtadzihA3EqeTaQ/MlJwCtkFgFU8yxROLxTpz7sKEzzwMRgMmNi6X2LJ/nsBYlHej0dpDF3T6d9cD92F/10YkDz8XQZgxAziGUsOPlI8teFi6UYk+Z/yMgvED7p/7q6UULFTiJoDtkOrXx9sOks/kpvqpc5OLzLgzpxA4uj60dW6gy2klHMsTlwfvZNDpKGA==
Received: from AM5PR1001CA0051.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:206:15::28) by AM5PR10MB1826.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:206:20::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.9; Thu, 6 Jan
 2022 14:28:38 +0000
Received: from VE1EUR01FT019.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:206:15:cafe::cb) by AM5PR1001CA0051.outlook.office365.com
 (2603:10a6:206:15::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.9 via Frontend
 Transport; Thu, 6 Jan 2022 14:28:38 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 194.138.21.72)
 smtp.mailfrom=siemens.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=siemens.com;
Received-SPF: Pass (protection.outlook.com: domain of siemens.com designates
 194.138.21.72 as permitted sender) receiver=protection.outlook.com;
 client-ip=194.138.21.72; helo=hybrid.siemens.com;
Received: from hybrid.siemens.com (194.138.21.72) by
 VE1EUR01FT019.mail.protection.outlook.com (10.152.2.231) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.4867.9 via Frontend Transport; Thu, 6 Jan 2022 14:28:38 +0000
Received: from DEMCHDC8A0A.ad011.siemens.net (139.25.226.106) by
 DEMCHDC9SMA.ad011.siemens.net (194.138.21.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Thu, 6 Jan 2022 15:28:38 +0100
Received: from [167.87.72.7] (167.87.72.7) by DEMCHDC8A0A.ad011.siemens.net
 (139.25.226.106) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.17; Thu, 6 Jan
 2022 15:28:37 +0100
Message-ID: <d0d805e7-74e4-09b3-29e5-74d3f3c1e64f@siemens.com>
Date: Thu, 6 Jan 2022 15:28:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Subject: Re: [yocto] pseudo error building master with kas-container
Content-Language: en-US
To: Trevor Woerner <twoerner@gmail.com>, Quentin Schulz <foss@0leil.net>
CC: <yocto@lists.yoctoproject.org>, kas-devel <kas-devel@googlegroups.com>
References: <20220104192528.GA25696@localhost>
 <5A44F13B-F383-449C-8FB9-87BEBEF1272D@0leil.net>
 <20220106135047.GA15963@localhost>
From: Jan Kiszka <jan.kiszka@siemens.com>
In-Reply-To: <20220106135047.GA15963@localhost>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [167.87.72.7]
X-ClientProxiedBy: DEMCHDC8A1A.ad011.siemens.net (139.25.226.107) To
 DEMCHDC8A0A.ad011.siemens.net (139.25.226.106)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 730053f5-792f-4fd2-a226-08d9d120d4b4
X-MS-TrafficTypeDiagnostic: AM5PR10MB1826:EE_
X-Microsoft-Antispam-PRVS: 
	<AM5PR10MB1826EC7B47E6603F7FAD3289954C9@AM5PR10MB1826.EURPRD10.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	jhf8VlbH5D8hiAUMyM4BAOmhOFslBY7FbDC8Hdlxgppvt+y/3RVJkrqt/+OUemsUowCie3tYICoZAA8Tsh6hvBguVXoPUFK13KESBRzcnQHbMuVkiLfjODce7fV9JRo/QMe29bPXDIxCduoPKRV0Dd2xKJSTY/M6fqX3Z5wqo000joJwOEjK68q7tiBCQUg/FEBpgmMp3clsfVGU+LVDPK5D1i7xNi0Z/tJaW3VAYN3LIQVSk3oDhpMhXVJ6YXGik6Vl5NwLYPXyob91JPBgUAuQ8lcnKrBrYEyjhDFS9nLHMpU3zOMtLlIQ3xDIIl2sm0YYr0iVVudgFt2lZFFIUPnXEWMq9473V5cZLirgCnvZOqOtqsB+As7QZxadUur16UyME1ky6gdFDfxGnzQKK9/fVCc1NIFiW7vhGUzExBzFI3yWYMOviaI/cf4FoltTpcUV0IswgLazsvIHNrgxZh3ykJvf9HxPpwwQSeJKTqlcY4rLqFCcWiC4cBsNnZ7ajN0i0j+kk8xyFVY4pQjM5RLTnVWvEIckfOSUARCRmd7KUXYxB4tL+cG6P71vz679+e1sWmuCL95W5G10hV07GQ7rrB8fM5VRXXYn4CHcVPWxRlcGpMLnMepfbtIMi+9S3H16MdrZ0of7NIvXArCJzkzONHktRmTd1XaWBKhIBxSedTWNFfndm/dCe5Ck+ZioyyZMAaymA7fmR4HpNQfyXIMIFB6G2ewa20YyrOinOtRz45nsmz/pFfLwkkgFGubBVVaF/dFv1P8L/X8ftL/FhWjA/b9hFAH6/EBRi5dluBoDV77wwHY6eaxhwjKbyqZji229FGxf19txFohSzTy7Jo+81D95Opc2Co73ESJP65k=
X-Forefront-Antispam-Report: 
	CIP:194.138.21.72;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:hybrid.siemens.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(4636009)(36840700001)(40470700002)(46966006)(356005)(26005)(70206006)(53546011)(70586007)(6706004)(16526019)(40460700001)(82960400001)(508600001)(36756003)(81166007)(2906002)(186003)(44832011)(54906003)(110136005)(336012)(4326008)(316002)(956004)(5660300002)(16576012)(2616005)(36860700001)(47076005)(8936002)(8676002)(31686004)(82310400004)(86362001)(83380400001)(31696002)(3940600001)(43740500002)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2022 14:28:38.6777
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 730053f5-792f-4fd2-a226-08d9d120d4b4
X-MS-Exchange-CrossTenant-Id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;Ip=[194.138.21.72];Helo=[hybrid.siemens.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VE1EUR01FT019.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR10MB1826
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Jan 2022 14:28:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55749

On 06.01.22 14:50, Trevor Woerner wrote:
> Hey Quentin,
> 
> On Wed 2022-01-05 @ 12:08:15 AM, Quentin Schulz wrote:
>> I've had similar issues recently with kas-container and podman. What was
>> required were two things:
>>  - passing --tmpfs /tmp to podman run,
> 
> I don't think --tmpfs is an option, but I modified my kas-container script to
> add a "--tmpdir /tmp" option (and verified it with ps while running)
> 
>>  - increase pids_limit in container.conf (your system's), we've set it to
>>  1000000 abritrarily for now and it seems to run fine for the few builds
>>  we've made so far),
> 
> There seem to be a couple places to update the uid/gid mappings. Originally,
> following the podman docs, I created /etc/subuid and /etc/subgid and had them
> both contain:
> 
> 	trevor:100000:123456
> 
> I wasn't seeing any problems with the couple builds that I did, but based
> on your suggestion I had a look at /etc/containers/storage.conf and added
> (uncommented):
> 
> 	remap-uids = "0:1668442479:1000000"
> 	remap-gids = "0:1668442479:1000000"
> 
> I also bumped /etc/sub{gu}id to:
> 
> 	trevor:100000:1000000
> 
> but I'm still seeing pseudo failures even after incorporating both of your
> suggestions.
> 
> I expanded my testing and discovered that using kas-container with podman on
> my openSUSE 15.3 machine I can't build qemux86 for anything including and past
> dunfell. All failures are due to pseudo.
> 
> qemux86 builds using kas-container with podman on openSUSE 15.3:
> 	working:
> 	- thud (2.6)
> 	- warrior (2.7)
> 	- zeus (3.0)
> 
> 	not working:
> 	- dunfell (3.1)
> 	- gatesgarth (3.2)
> 	- hardknott (3.3)
> 	- honister (3.4)
> 	- master
> 
> I did a kas-container build on my Ubuntu 18.04 machine using docker of qemux86
> on master and it worked.
> 
> I suspect something changed with pseudo in 3.1 and beyond that either isn't
> working well with openSUSE 15.3 or isn't working well with podman.
> 
> Next I'll try using docker instead of podman.
> 

It's good to see people stressing kas-container with podman - but it's
likely still under-tested. Nevertheless, I'm happy to help if you want
to improve this path.

Jan

-- 
Siemens AG, Technology
Competence Center Embedded Linux

