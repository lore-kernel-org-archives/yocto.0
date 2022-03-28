Return-Path: <vasyl.vavrychuk@opensynergy.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06B0C433EF
	for <webhook@archiver.kernel.org>; Mon, 28 Mar 2022 20:13:40 +0000 (UTC)
Received: from repost01.tmes.trendmicro.eu (repost01.tmes.trendmicro.eu
 [18.185.115.2])
 by mx.groups.io with SMTP id smtpd.web10.994.1648498417858526315
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Mar 2022 13:13:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@opensynergy.com header.s=tm-dkim-20210503141657
 header.b=Lt1KPa13;
 spf=pass (domain: opensynergy.com, ip: 18.185.115.2,
 mailfrom: vasyl.vavrychuk@opensynergy.com)
Received: from 104.47.10.50_.trendmicro.com (unknown [172.21.206.109])
	by repost01.tmes.trendmicro.eu (Postfix) with SMTP id D0802100003E8
	for <yocto@lists.yoctoproject.org>; Mon, 28 Mar 2022 20:13:35 +0000 (UTC)
X-TM-MAIL-RECEIVED-TIME: 1648498415.596000
X-TM-MAIL-UUID: d7c422cc-2fa5-4706-a6d8-229cb06fa7f6
Received: from EUR03-DB5-obe.outbound.protection.outlook.com (unknown
 [104.47.10.50])
	by repre01.tmes.trendmicro.eu (Trend Micro Email Security) with ESMTPS id
 91A6D100010AD
	for <yocto@lists.yoctoproject.org>; Mon, 28 Mar 2022 20:13:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eoG3krpeKK5Gkm9aycNqcOdt5QGW2522mIk13BWWlnwZE00o7kbM7GoutI7RgfpHYKHihBfTrtM9tBjkjcYgLAIJbYU/4lVtD1AjO0PxryQT3AFa+yUapti+jFjAuXteHai4+QEqsj7Vqt/U73SgC3Z/I0uQaHVxZa0wXuW10xhoO/yRC3a6Vddh4RZgpUJKX/+OsAWDmN7G6KOl3TDJPoubNFVblVN1k6j3yzyWH4jN4vnLISxdPAxu5pV/flUzB8+H7BNd0R4KciuAtgFTd5WS3u7Fr4Dc2GbXgEc3J4HO8+W5O8wIlGPwZyr57iUkIAnfyCrIO+1dKS6tfIDMOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SpMZYkdaz/a9H0l83558MBDOJX/SDbmLdv+nS6lteZ8=;
 b=YNEUinhRpJCiLkbK9zs4WgxJiZxuvKQrlY5VcFuAP+qmMpc1pYSxg/jeBfNsI4Akw4Ch1eVgyzzdhpCTJILvn3a+LU4VOhv7/4OsvEewWiKBG7p8V1oAKDXGVN+ZjXwlreHR3/QAV74zdNaM9ZVJ3YA5zb73POmqchKhHXczl/VWlmO7YoGW5OAfJN5bRBYm9pdie4F41FlYr1rqOHgE8R9+aznlNNDucXO0NRyRGXDAH5XLqEM5ti+k0ys/71lZBCcJQC4jeimr7cOQViYScxoqyMjvBF28ax2/wZ3AuQjPR6OhafC8bkfVtLoguYivhPkeFkHG2rUBKjBqAL92aQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=opensynergy.com; dmarc=pass action=none
 header.from=opensynergy.com; dkim=pass header.d=opensynergy.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=opensynergy.com;
Message-ID: <a65b61f9-1cad-8d0e-7e13-d51adae1b015@opensynergy.com>
Date: Mon, 28 Mar 2022 23:13:32 +0300
Content-Language: uk
To: yocto@lists.yoctoproject.org
From: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
Subject: psplash: Wrong spashscreen resolution in case of two displays with
 different resolution
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM6PR08CA0039.eurprd08.prod.outlook.com
 (2603:10a6:20b:c0::27) To DB7PR04MB4140.eurprd04.prod.outlook.com
 (2603:10a6:5:20::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bb75feae-6930-4ec2-4cb0-08da10f76f69
X-MS-TrafficTypeDiagnostic: DB8PR04MB6602:EE_
X-Microsoft-Antispam-PRVS: 
	<DB8PR04MB660244FD4D0D33ED3C0E0DFDEC1D9@DB8PR04MB6602.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	zFuX8hFCVEY0xLmTemOx4D1wultBMyHjWezvY7IQGgDjhooC37wEKgCEwdDPeIzfLq7THOtDBEbWuTk+BnpNNOPiPnt75DjQCxj2cE4dVOg3cNs7gqFg8NK2mlseDa1gR+1/6EZJBjdZeZncL7gK7AYTY9f2N8ujuSwS1mXc3zYNfwMNHN+xhhYMhE4CuycmKMqHNMfSv4Zs1BjmARFzDl6S34dt3dEhappYi3w6HvhUNl1NxprJSVghYxG9X0f+h58NNlAk4dmWd4OVtS2eXmgKnkLiJpNv3CCOOY2kiVScE97Cv+VxN9Ve3cLQ4pwlb/an8MiQKMDRjKFEAjzxFDeo0s3ly9qIVOlT+5E4li41ZOqrE0DWLpiJ0/BcFJmWAmcjzKUMviGw+XJtRgKoF8QgEBRSI6Y8mnrDQapDMJnfEo2r55tdFHnUq/el+qUgnn9+L6F8s9iqcwwU0zMGnkprcrDV6gqq7iME+Cv2n+XQrzld37DOT/5cn5EalLqqari1LadvZ7MoHeGey6OvCaIBcvdUcWzdziEj6FGdZyybBZ5P1lQobGj1kj8OPSbhaeoy4ZtmTs6xiVg8pBGLVBu4F1oKYU7gikiAzMt8JgjBaXDSLnNIDaIIZa+e+X58ceK6S7/XN3ryn1ba5ey0ng==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4140.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(5660300002)(316002)(8936002)(42186006)(31686004)(44832011)(36756003)(4744005)(2616005)(6916009)(26005)(186003)(2906002)(38100700002)(508600001)(31696002)(8676002)(66946007)(66556008)(86362001)(66476007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bUt3T012dDM5NlpWaEFVaERNRS9NOW9WL2V1QVlpbGNUUTBXUVFGNTNoR21F?=
 =?utf-8?B?Z0VxSWEvMzdoNlVjcWxIRE1HQWk2TXBGZjFrY0p5bHltTzNLODhYeklzUkh1?=
 =?utf-8?B?QlNrRTQraUJKcmRSeUM4aVZ5RDhreklDQUlqN3cxWEZEcE4reStQUmwvTFpU?=
 =?utf-8?B?WVVIc3pySnVSOE0vMXlyaFYvcHdVVGgvQzBuSW9Zd0JIaGxiZjJaTmlEL2Uw?=
 =?utf-8?B?WklEa3NTbW1CYzVPK1ZjYm5zY0p0dTFOV0ljaTQweUVUNnduRExqaDB5dXRT?=
 =?utf-8?B?WGhZQmc0QTFETnJzRXRDQ0dVbU1ZQjY4L3lkb0RnVk5hMFlreGV5Y2hjT09K?=
 =?utf-8?B?QXdwQmEwRUJKK1lWZEMvMzBhWUJsbTZXT2pSMVNRamNEZW9sTWx4Y2JxbzRW?=
 =?utf-8?B?b1NCMC9VRExWOFB6ODJLSTdUNFUrMzgwSkhsMDRXWG9qMjJOcUkveUk5c3oy?=
 =?utf-8?B?bllyNTJQTGZtaXpOK1NNQjFkcjJFRTVKdjBabzl1dndzN1U4SEg5M1JPMUxW?=
 =?utf-8?B?eW1NSWR6bjRQS2FJbCt6dXRxVHZSOGVSSmlmdVlkdzZYNjJGNEF0NFJWSnp1?=
 =?utf-8?B?bkNTZmZYWExzRzI1MFlaVHJ4UjAwbktobGpMZFBBWVlNMG12aWhKc3lmdks4?=
 =?utf-8?B?aFArczJxYXF2Uk1kMGpDR1ljME03WGxweDkxb2EzOEFsVW5ySHVIN2ViMVlW?=
 =?utf-8?B?MCtpS2NaUWlHVFMxeXVvS01qakorWlh3My9WYVBXaWpJd1laMUNTUUVLM0lW?=
 =?utf-8?B?bUhsejVLVUZ6VGt2VER2TytMa3BQTDhjVTcwMTFlc09ZSnRKN1FBc2pENVVl?=
 =?utf-8?B?Z3NLOTVSUWZTMFVMUU05TEJmejlRSW1lUTY5RmsxV2M5ZHltclV1ZE5jSWE5?=
 =?utf-8?B?ZUYyeUxuLysvanZ3VCsrZlY2bVZycDd4ZEEwUFAvd3R0V1lhYWJiZThCY0ox?=
 =?utf-8?B?bE11Y0ZYQmsyQWpNL0tobm85TnNsaW9yRVlhMVNVWmh6L1dRRjZRRWM2R0I2?=
 =?utf-8?B?SDc0RFh2QytzVVFHV1pTYmIwNzU4Y2ZZRXRERld6bmxva0RFbGpMTmQwSysw?=
 =?utf-8?B?TjM5alFUd3NpNmdzaE9maG0yMWhpSEc5WkdrNlp1ZkpOUFo0RHZNWTE5OEY2?=
 =?utf-8?B?cmE5a1FXQlI1L255ZXpaSUk2aGdVREJxSXNjN0FnVzcxeHFPZUthY3EwRW1x?=
 =?utf-8?B?ZW5XWHFGeGhzQlFNeDlDVWtqeElRR1dBVUIva1FnajNtOHBnZmVrakw0enRn?=
 =?utf-8?B?YVM2b3Q2VDN2ZHd4VzN6TjFZZDRPOEZlYVF6YUU1MkF3WU1ZcnJEQ293dkNP?=
 =?utf-8?B?MHFuemlrbmtyNTYzNG9EOEFRN21qbnNzZlM1YkYyc2ZqUi9PNy93R3N2cFdD?=
 =?utf-8?B?VE15TWJGSS9TbHUzTkNRcDJiQWtlUWZOR2JwRHJZLzBDd0tJNTIzRDY3K20w?=
 =?utf-8?B?T3pJVC9kcmM3WUFOcG85WXhlVGtHdGREeUwxaVFFa2U3ZVJmNVVPakVWbVpB?=
 =?utf-8?B?MWdOb2tFTzhwQmpmekpHVkZHNzVTbTFCRUl0bEhGZGpMbVRTaFErVElpcmZk?=
 =?utf-8?B?QzBGWW5ObDZiYzY1c0dQSnIzcU56b1NSZDRNdTd2QldqRTNJdjQrWDY3ZVRx?=
 =?utf-8?B?blp3NnNpQmxlNitObTFSL0NBRm9jWjRQblNhY2ExK3kzbnV1U0o3aW9UNXh5?=
 =?utf-8?B?bkhmT0ExOHBXTXFLR1dJS2FxL1Y2bnRHazNEc08zcFRzNnRHaXpmaXd0L2FW?=
 =?utf-8?B?eGI5QzdWWkJaR283bkZNVFpKQ0IzNkk5RlRtN0ROOHNlaHliOVc0RG9UcW1P?=
 =?utf-8?B?bW95bWZRSVVTYmdrZ25LRVBkb2pOdWNuT2ViaUd1dmFwOXllelY5VjY0N2Q2?=
 =?utf-8?B?L1FyajlFMi9UY0VXQ29RaTVhNys0enUzS3BZUC80ZTJLN25mVTRqT1N1eTVp?=
 =?utf-8?B?MHgvZ21qRUlNODE2eisvODBhRHNCd25UVXl6ai8wS1dUa3FJL1VuTjg0b0d4?=
 =?utf-8?B?T2dldUNpMURYTWZwOGdwZFFPSGkyV2E4akRQSXo0S0ZuSjA0UUxSd2s2R3BK?=
 =?utf-8?B?M1U1UTNCbWQ2UkplWm51VWtuVmVSV1UzY2hDRVBZMHRWaTZYTGJsS2JqUmZH?=
 =?utf-8?B?M3B5dDZ1SWowN2NLR0s5d3ZmekFUTkhUS2VaR1ZXYW9xdE5oMjhCUHVDNko1?=
 =?utf-8?B?eVdLcDJFdkNWdkpLbEIvVkpDM3Y4WjNYeHVPTlBabUNvbTB3Rjl0N29KM0dE?=
 =?utf-8?B?NXNkREJZQk9kRG41NFlVbnJhV3V0WnQzYUtiWmpLdEREamxoVHh1ekU3dTRY?=
 =?utf-8?B?Q0IzSUZaaWJjUXV4ZUlVRTlDT29vQnJ3a1dKbU1HL0lKejJtcjNWQT09?=
X-OriginatorOrg: opensynergy.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 bb75feae-6930-4ec2-4cb0-08da10f76f69
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4140.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2022 20:13:34.3484
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 800fae25-9b1b-4edc-993d-c939c4e84a64
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 +HdXy5LR3/LE32lM49Bm6ML1BIRLL/YFXyXO3LuKX6wxFo8Y2io0w+jdDlC/kVg4SVdU5wG1tQeogxURjKY03w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6602
X-TM-AS-ERS: 104.47.10.50-0.0.0.0
X-TMASE-Version: StarCloud-1.3-8.8.1001-26800.002
X-TMASE-Result: 10-1.215600-4.000000
X-TMASE-MatchedRID: fo5otKNQkl0wZcWYAevTqx1kSRHxj+Z5gbNN0R684zPfrYpxwT811nvJ
	SjLbs83ENZ4mWw3imirqmKJ/MhsVL1rOnzqOHaLKngIgpj8eDcC063Wh9WVqgmWCfbzydb0g3n8
	eBZjGmUzkwjHXXC/4I8ZW5ai5WKlysDKVnZJ3UhuzUUH4ZzjL5AbtBLtQHmOKKumVFj3qBT3cVv
	nRm+dcUZ6oP1a0mRIj
X-TMASE-XGENCLOUD: 82db12d3-c2f8-4eeb-87a8-97b8d6a28071-5-0-200-0
X-TM-Deliver-Signature: 494C94D6878C48FF3E2F7C962C9AE802
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=opensynergy.com;
	s=TM-DKIM-20210503141657; t=1648498415;
	bh=itRBu3pMsCyyg6QKYJvVdYus5u/sCdGingcktJbTrNA=; l=751;
	h=Date:To:From;
	b=Lt1KPa13yYIoDM26toi6p9M3YfuOpRIFFWG8rOJJNiQjcRrVlmW113GaLvNuf0Tnl
	 lNdbiWsEARqCzs412YkiIqsSlqVQKBUM4ivuZJx4mP0lUCepuzedTUKmGP3y1Oz6QQ
	 +inp88yF9/jQ57l6UM2i7zoV4dELpq4a3kxigzcuk/x0vu0SHAaWhss8noguF3/yDT
	 Y3JQ0VIdzJd20MqlM4m1VW1Z1MoZhHb7QxJCZu7DhX3jsqF2lPseH/qa5oEwXovA4V
	 KsfA5R6bQxezmm+ANl8iiQH82wg17kHdqjjVRyHa1JRqXXf1YfDhpG4yD/Y53/M40M
	 8k/AHymL5M41A==
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Mar 2022 20:13:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56569

Hi,

In my system I have two displays (virtual) with different resolution
first: 1080x1920 (portrait orientation)
second: 640x720

When psplash is run, it shows boot animation with resolution 640x720 on 
the first display too:

+-----------+-----+
|           |     |
|  psplash  |     |
|           |     |
|           |     |
+-----------+     |
|                 |
|                 |
|    Display 1    |
|                 |
|                 |
+-----------------+

+-----------+
|           |
| psplash   |
| Display 2 |
|           |
+-----------+

Can we achieve 1080x1920 resolution on Display 1? I worth case I don't 
need boot animation on display 2. Is DRM/KMS backend needed for that?

Kind regards,
Vasyl

