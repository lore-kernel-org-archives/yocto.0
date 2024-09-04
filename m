Return-Path: <ola.x.nilsson@axis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF649CA0ED3
	for <webhook@archiver.kernel.org>; Wed,  4 Sep 2024 08:55:56 +0000 (UTC)
Received: from DB3PR0202CU003.outbound.protection.outlook.com (DB3PR0202CU003.outbound.protection.outlook.com [52.101.65.58])
 by mx.groups.io with SMTP id smtpd.web10.45406.1725440150902618594
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Sep 2024 01:55:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=selector1 header.b=cqTGk7oo;
 spf=pass (domain: axis.com, ip: 52.101.65.58, mailfrom: ola.x.nilsson@axis.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A2LZW9yIGb6Q4FbOQsc+J38e118PtIrO0nQoiu9T0VlqmvqAeW5GI5jjvezEl34KGs4Kq3mcMqOqKHgz9Um1KZeLK9M1/PEBBh42lvyCQ9EHxvdVzNJesRSTYortjXQ3SjNp1hKtR36Plz4l+NgXGFxf6yVFN7J8thx/+z37weMcaUgy+NB35xcglUrUQyY/+2EeCUA5FSy7OpoIK6+UlsY9z8uJx5KAInVJQQlkRpuE7hsHYUrT5qYvqI5634+zDUOCRu5v0LSvyTneNW5lzaar6kwRocsVKlNR6oYDeof15tpje+e9dTUkIxKEWhXU0vm2lUmOfca3BEB8a386Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0wkzjiKbM5OI5kt7Zno+SmqJlE3CzS2o6vOlrA0KmfE=;
 b=M5CJrFWJuYGrR6qdz3PbUc86MbEHAoYTX+S8oPNVl+Z04FzwNQB5+IWAnVkr8khC8oGk35DbL8BAcNEPusp2HgB4SNpYKogfNZX+UDnZB2s/5H7ptskYNy4oxZv2+dFi7q8B9S8Gp2GI696DtLdOr4YKITvhzWnxJnZQyd4AFScB8LbpuZby2HjMA2KzjKnEs17UQ7b2CdK2hmA47egKEAEs+7JDaJggDivgyj6FlpW+m23lqShGIqrp0gQvVnsv3JBHEGAj76VRvdQDBbnoehEZjZRDOjR5dQMkOosbyN6h/GULmaoJmCLh4nGo6uDXWAzKfHpvAdi3R++Q7fOnrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 195.60.68.100) smtp.rcpttodomain=linaro.org smtp.mailfrom=axis.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=axis.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axis.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0wkzjiKbM5OI5kt7Zno+SmqJlE3CzS2o6vOlrA0KmfE=;
 b=cqTGk7ooikelDKj5+fVdM/qzOHyevjjY6U3C1Jw4vYeJDXLvuC7puqSHUUPPeulBxCoXJ7tkYxwAovtnBzTX3M1l9Rb6fH9brWF0n9zrLGbKVoQiGVeMKuQBrQmoLuFagyuRTmPHmbyXYZ2QsNkU0/y3Xwxszh6LynI3/ncxt/A=
Received: from AS9PR06CA0062.eurprd06.prod.outlook.com (2603:10a6:20b:464::12)
 by DB9PR02MB6619.eurprd02.prod.outlook.com (2603:10a6:10:211::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.25; Wed, 4 Sep
 2024 08:55:38 +0000
Received: from AMS1EPF00000049.eurprd04.prod.outlook.com
 (2603:10a6:20b:464:cafe::b6) by AS9PR06CA0062.outlook.office365.com
 (2603:10a6:20b:464::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.26 via Frontend
 Transport; Wed, 4 Sep 2024 08:55:38 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 195.60.68.100)
 smtp.mailfrom=axis.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=axis.com;
Received-SPF: Pass (protection.outlook.com: domain of axis.com designates
 195.60.68.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=195.60.68.100; helo=mail.axis.com; pr=C
Received: from mail.axis.com (195.60.68.100) by
 AMS1EPF00000049.mail.protection.outlook.com (10.167.16.133) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.7918.13 via Frontend Transport; Wed, 4 Sep 2024 08:55:37 +0000
Received: from se-mail02w.axis.com (10.20.40.8) by se-mail02w.axis.com
 (10.20.40.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Wed, 4 Sep
 2024 10:55:37 +0200
Received: from pc58073-2410 (10.0.5.60) by se-mail02w.axis.com (10.20.40.8)
 with Microsoft SMTP Server id 15.1.2507.39 via Frontend Transport; Wed, 4 Sep
 2024 10:55:37 +0200
From: Ola x Nilsson <ola.x.nilsson@axis.com>
To: <yocto@lists.yoctoproject.org>
CC: <mikko.rapeli@linaro.org>
Subject: Re: [yocto][meta-openembedded] How to properly build a lib package
In-Reply-To: <ZtAklNWwtgL0vbhQ@nuoska> (Mikko Rapeli's message of "Thu, 29 Aug
	2024 10:34:44 +0300")
References: <CAC3TgA+HFgXcckqxUVgUQsRfJySytZSAj3PtSRD6TLzT5_yDqg@mail.gmail.com>
	<ZrM8ikxC3AwTgDHR@nuoska>
	<CAC3TgA+-s0BN3D3Bzwcg6_6vF2fipu_wGc4BWFwhZM8S97wjjQ@mail.gmail.com>
	<ZrN0cTChvgsn4skg@nuoska>
	<CAC3TgAJ7bwU6Q+bC6wyC-4633bQ+XHtqgv-_cnT-x9qCe5OEBQ@mail.gmail.com>
	<ZrOCsPB34L6ITVH8@nuoska>
	<CAC3TgA+Z3=ifRxcm075ARPkaf9rmDpjRUEa+NpbN6sku+zTnhw@mail.gmail.com>
	<ZtAklNWwtgL0vbhQ@nuoska>
User-Agent: mu4e 1.12.1; emacs 31.0.50
Date: Wed, 4 Sep 2024 10:55:37 +0200
Message-ID: <jwqv7zbn6gm.fsf@axis.com>
MIME-Version: 1.0
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS1EPF00000049:EE_|DB9PR02MB6619:EE_
X-MS-Office365-Filtering-Correlation-Id: 61525b0b-7acd-4cb6-2c08-08dcccbf589d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|36860700013|1800799024|82310400026|376014;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?Qdx5L2ZBcxOUj8/YnHsSmU577OxK8I6h0tNt8113HiEWkGYQEnKZNidg63NF?=
 =?us-ascii?Q?e5oXtSpA5mGXxgAOKCHNMk1ZsZx9Is4XgfrWc7oLPJpHFd+ZtxxfAwjP+2CG?=
 =?us-ascii?Q?0x/ma4RY/EqEhCB0j9qM8bBOaCThVuigI2Xfh17lzhJO5pVf9QKMnQk/aaNT?=
 =?us-ascii?Q?VHXdvbrc75akQ3Ki5Bka8mIyzgGK9y64zgL9j0xXSQtcVrIVwuzb850SgTjm?=
 =?us-ascii?Q?wMZgcr1qrHSCdQR3AeWXb6soJOB31ATYKtzjEJ/wsQV0aVSRyLP8wj/cpTWO?=
 =?us-ascii?Q?2W6spcnmVr6BRRFygJUMLWlizCjg9f9ZSaGKIuVhUjUasMlpdT0dbQ9Y82mC?=
 =?us-ascii?Q?7t+e5xjRGzZhT8CsVXZn6i2Y8dg8Z8JanQH3+f51QxFR9hD0AZBl5Q9lThMA?=
 =?us-ascii?Q?RIYZElb+oZFBf9TsSQca6Stl8lXWHpady/7hW1asq/jbutYFaKnmCsso+Xj2?=
 =?us-ascii?Q?ia+sm6D1YgKHAQ5uGSNs9jMEUiFUcZWTrN8hV2GHmUASkyzFvhafOuPWkVoK?=
 =?us-ascii?Q?1RkEc004yNbAml4ecLCgQnA6nvyGJ6BawqTCDnRSRPCWN01hHmthsQ6B9NX7?=
 =?us-ascii?Q?AopUFwRe9Y03KqBPipyK/zEEnh2jW6TDV78os+pEB+Qs7REocWVydWCOtkeP?=
 =?us-ascii?Q?gUisE0MuDoTac6mwiDwXRre0EK0mRu6UYAWUGd+338SRrDDCB9sRgUXVD97E?=
 =?us-ascii?Q?CKRr6t4GgoTjFTh4du9idahuDDRN2zL4B4Q9KZlhzKZqb/BWhJbKBTq3yv9x?=
 =?us-ascii?Q?pAS1XWBfUJ6W0Y575RVM3o7Yfvr7XCletrpyqL8f05uhPY3OWNmP+T9DoONM?=
 =?us-ascii?Q?IBJ7pZCBfqj+9UL8cSbXxssiMaMFo2he/Ka7eMBWJBuuBGdfYGLPMlCc4Zlo?=
 =?us-ascii?Q?+Z0ZEu1P8x1sd3uaCT1MQ4vk+zYyzt0nLjV2PNfjsToVPpUVz/HiA+gmmRbY?=
 =?us-ascii?Q?36xyISveV/T6KgTuquIkicO9rYstF6v8j9jNwR28mHz99HdOaXiQFIkOWcJb?=
 =?us-ascii?Q?OU/R8vtcg03Ka+QhcYQzrjdKRyzkeIBYmpekywFpyaEEy6LmSQVZF0E93ini?=
 =?us-ascii?Q?6I/8u9PPYfX9LocgwjcNpxRy6PbBpEp/BqhncFY5gtpcMcd+JS6SXcqTUBrw?=
 =?us-ascii?Q?Mfx6IT8ybrEP+MkAc4Xwxqfxe0PlYPE+J2GVBfolnstZJ2pwwXq+YeFR5Xvw?=
 =?us-ascii?Q?LhXw/DF1HmTniXGAXCM2OBtzpelbrr0mYyZAxIUXVTkFOTouN9ENfyt/PbV3?=
 =?us-ascii?Q?JFqLkKjX/Zh/oZWN2HS+6kGJKlM6yQdx4SwW29EuQyKXr8lxVa8itfFgiPEy?=
 =?us-ascii?Q?ybGquoSAqa5WRV5e2w3EeGHRijx1p3A0ee+20z3SntCFjyFCOHPeNKVe+KHp?=
 =?us-ascii?Q?bGvmm12NIpoUebWywHN9p05JK+cfZ91fIu+GDFREXJocZL2ly/hEs7SWjI/c?=
 =?us-ascii?Q?Inq8zhg/IZVntypQPv2wz+q3YRQcqADS?=
X-Forefront-Antispam-Report: 
	CIP:195.60.68.100;CTRY:SE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.axis.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(1800799024)(82310400026)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: axis.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2024 08:55:37.6814
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 61525b0b-7acd-4cb6-2c08-08dcccbf589d
X-MS-Exchange-CrossTenant-Id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=78703d3c-b907-432f-b066-88f7af9ca3af;Ip=[195.60.68.100];Helo=[mail.axis.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS1EPF00000049.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR02MB6619
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Sep 2024 08:55:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63782

On Thu, Aug 29 2024, Mikko Rapeli wrote:

> Hi,
>
> On Wed, Aug 28, 2024 at 11:50:03AM +0200, Yann CARDAILLAC Pro wrote:
>> Hi Mikko,
>> 
>> Well without the RPROVIDES I get the following error when a package DEPENDS
>> on it :
>> 
>> ERROR: rj2d-com-1.1-r0 do_package_qa: QA Issue: /usr/bin/rj2d- com
>> contained in package rj2d- com requires librj2d.so()(64bit), but no
>> providers found in RDEPENDS:rj2d-com? [file-rdeps]
>> 
>> The only solution I found was to add the RPROVIDES. Is there something I'm
>> doing wrong?
>> 
>> Basically the rj2d-com package DEPENDS and RDEPENDS:${PN}  to librj2d, and
>> without the RPROVIDES with  librj2d.so()(64bit) I get errors.
>> 
>> Is there something wrong with the approach ?
>
> I think bitbake should be auto-detecting the shared library RDEPENS. RPROVIDES
> is usually only set when there is a virtual provider which multiple recipes
> and binary package provide.
>
> Something doesn't feel right about this.

I think it is the missing soname mentioned earlier.  It needs to be set
using a linker flag.

/Ola

