Return-Path: <kweihmann@outlook.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA105C433EF
	for <webhook@archiver.kernel.org>; Mon, 29 Nov 2021 16:03:53 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (EUR05-AM6-obe.outbound.protection.outlook.com [40.92.91.40])
 by mx.groups.io with SMTP id smtpd.web11.62644.1638201832665105715
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Nov 2021 08:03:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=Ptxb9vv6;
 spf=pass (domain: outlook.com, ip: 40.92.91.40,
 mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iQJcx68g3gEacOJL9cvt4z42y21fythGSbKLyCmxQGjcAOAGJifkQgo4hAMKdpOZINVd2K03RwNv8eeTnARlh3XNvhbQfXT4gRrKjnn31saggvMSt8sdwOntay60FT8uxWPkqmIhMQ4tf+aGgYnKHucAAmtxuSy/TXCjkpvRnc8lk/rsHJv7LUMLWnSOAlYxc5ZWtAqqSQswm43WOQhpKSxw/6PIbqvGz3Z030gzRcVF+sJD4sdvNGqubimiLnwIYnlQjUP9yhyIfMs7m5A/n8s2W5y70DqzLSM7G+zAi5WHCD6pxZsPvfgCnk5MfxLSyCMPrDlBqTQXpq1+dwrzMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=87QDr229NloxPsU3ZK+r9kF8FPe1yBI+v8pbDsjF79c=;
 b=AIfnHJXl2QXslaLB4PtVgwWR0tm8G57Mf1LQfHzzZF7vzeVQRxlcRtkNXkmB/X1u7rqObvnLBNxaQ+PZPcFQnGQttUZ38iiU5BZtrfghSwL0e3S0TQ0Y31Ik/HlBpE4CmNeo1c2emV2bmEA2X+D8TTip3JC/s5J9i8LTJxQlvLKMP7KMC879f1WRdIyVHSPknVYe0SlB1fc1VjuCguZnmdnT3tXuoYzp7GCa/jEP1Akqw6aus7brUk2pj7AEmwG5QKbNva/PMBo6fnlZ4q9M/wbJLuNlsSuf3PftKmgFORInTPyOibp+kyCvmc+4grlBOZcz0gGmqH7X2kSABxnnHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=87QDr229NloxPsU3ZK+r9kF8FPe1yBI+v8pbDsjF79c=;
 b=Ptxb9vv62bxMYQiGEc/Km3QFX6a8O98Vcuz8pKfoJ+heyhBcPBkvJ85zITSVcoTqEJ3ebxNA9QlWkAQAWQgCjSTZjqvrmr7FlCYXl4JQ49k6wu/wgixJnUC2HUnC7Vu7NWvBWe64MrHT2SNOYy5xwqfQgC16fG809Qeqvaqjoaq3NHP+BBnAzWFE8SgjjAZ54I4zcXFXz3ohYntGLWU4ICVOrOHPTBukjoD2BsbSFIa2sUMfpUz4jxY0LdWnzFiXBxKphgGAYalE2rP9ZJ3sGS5NUFBzODU+Q3BB3ATbLlSnqS8XSANgfeotBHuu0/GrcuogP5oipKKryb8u2hUI7w==
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com (2603:10a6:20b:284::24)
 by AM0PR09MB3636.eurprd09.prod.outlook.com (2603:10a6:208:189::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.22; Mon, 29 Nov
 2021 16:03:50 +0000
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::7c6f:9b99:3d00:f710]) by AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::7c6f:9b99:3d00:f710%3]) with mapi id 15.20.4734.024; Mon, 29 Nov 2021
 16:03:50 +0000
Subject: Re: [yocto] [meta-security][PATCH] python3-fail2ban: update to tip
To: Armin Kuster <akuster808@gmail.com>, yocto@lists.yoctoproject.org
References: <20211129151438.2908260-1-akuster808@gmail.com>
From: Konrad Weihmann <kweihmann@outlook.com>
Message-ID: 
 <AM9PR09MB4642FE136A70F51B24EB2E2DA8669@AM9PR09MB4642.eurprd09.prod.outlook.com>
Date: Mon, 29 Nov 2021 17:03:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <20211129151438.2908260-1-akuster808@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-TMN: [OkqGJliVT+m99CODl6dPlB71a5lsy7HBaRp8ZMFx6YJz5RPA/bWoZM+BrKiw8Vxo]
X-ClientProxiedBy: AM0PR02CA0117.eurprd02.prod.outlook.com
 (2603:10a6:20b:28c::14) To AM9PR09MB4642.eurprd09.prod.outlook.com
 (2603:10a6:20b:284::24)
X-Microsoft-Original-Message-ID: 
 <c4b25a58-c56b-0fb0-ff99-eaf74e464969@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:3103:205c:200:bed3:df7f:f488:16a2]
 (2a02:3103:205c:200:bed3:df7f:f488:16a2) by
 AM0PR02CA0117.eurprd02.prod.outlook.com (2603:10a6:20b:28c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23 via Frontend
 Transport; Mon, 29 Nov 2021 16:03:49 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9d15a21d-2743-4868-9f80-08d9b351d535
X-MS-TrafficTypeDiagnostic: AM0PR09MB3636:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wmF8W4RV9gV3Cl0CuNnDSKCl3IHMj9UbhMcCQVOBW7z+465ifv++7Qv0F5gFWsMoVC7WphsewuKMycju55ou2zq1MDLzeU8b15+ywKBX4pbT137OOktIjsIeyxrTSVpG2zZmYYDcT1WxfL4NSS8Nyux+/sjzA3hwbfXfdT/P+xnKQ7/NTg8m8uEyUQhsVgSk0X91ei4tLKxF2tpuiBjZ1mv9M069aF+5QgNrfXgK1Sa3iLUp0XGSH6Zm0NkpAMXNFLk7efQu0hWRosdd9YqTQTmn3gIcyPezbYIq639VMXZJsIx+4HRvDTVoxiBeG0Lul6uVmaTt1oSqJ05ilNLy2n1N6mncrywKnL+4IrhWoKs9eWgjGk0yNp9hoOk7Yf6mhPGZoPFRTm6ro9KI9j0bJdjbILpbwzl+tf567xq5TIROTUFy+WJLnrk5Xs1wLRxjgtACu0z1hSsv3b+T5ekTeM+7Coy1+GckmvJjGlSZICaQJPEDgb4N/G1mNu2vKAwoRpTNEpe1EEdrMkeFcnDmsHOPWRmWkgrLDerbfVXZ3OlrgyjQdU4qryECIMSmPRaCJKeBgU6gBlIWJBGHIc5MZDUqO+DVtFAh54d9hKob5bi4SiTYx/N5UuQdU7nEhCMNhCLkH3nthccxTjL1UG/33jNFfV0469jrEWB7wVLsa18=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	ONWtBoUGjhoKH7P1VPBCxdLPF5xzZCfGxu+6p4+KeptU/y6WIt7pWG2R48I7snAWQs1MinqGHLCbSia2MvA+cuZ+4AsBAuDYYUWa4vrd4TDBQyW5AKx3K/c7v1mk2lX0UiLR+KL8zjDLDvhiKWod3xJCmxkbsr6vp8YTjpUijzWTmGm2BWr3ue+ixQ0JDHu+SNo8fdrruXuOVLUF0k7glVowFgYfv/u0NPvA5vVb22zB+xL3KRgFOdQsrrtb0fPXpbEWMIy7kXmFbKMzVrJ48mfF1JcxP2mk5956KLW0gUEGUOw7DyvaiRoUzCj0DCACQWZPhGQa2h43BNL3Gsay1prlAQw7EMgJQmsrBDOwK1w9hCGzDTR8kwA4XRpoffqJczoNbl0EEKtYTeI91kqcar9gNP4Uo4xZ84CXxHOtSJiRZK0x9X1sPnJuXNLizrCmFCHWkvMjnxpGUzKQPy2UdQCxxl94JIN2s6VE75Jt5rSVDWQ74Evc/GUoWwjfUnois3baraj4he2/eQ8/9dV+vh1eS4k5UetJT8nOv7oZEjSfrtokqk3rzxGoHcePYwuwThgpmKad0uRBu/pBCkwQDU+M3jxfgEwN/shOjnC6NcmEGB+WPARPobndE8y6wAt2EerQpHXAeUbaAm7iHcYHII1zmqiczluRUppcuSVx3FK/Hj1l2OekgdfkuQjd1Mkh98Nd4ZzX5hCkRVW8HeL4FLiPm0YjF/uFTSc9x6e/MFSW2pHrHoZzIRFu72eC7BjFlMJkGERD9ncbAnSWA1xRbw==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 9d15a21d-2743-4868-9f80-08d9b351d535
X-MS-Exchange-CrossTenant-AuthSource: AM9PR09MB4642.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2021 16:03:50.4183
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR09MB3636
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Nov 2021 16:03:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55442



On 29.11.21 16:14, Armin Kuster wrote:
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>   recipes-security/fail2ban/python3-fail2ban_0.11.2.bb | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb b/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
> index 4e344c8..f6394cc 100644
> --- a/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
> +++ b/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
> @@ -9,7 +9,7 @@ HOMEPAGE = "http://www.fail2ban.org"
>   LICENSE = "GPL-2.0"
>   LIC_FILES_CHKSUM = "file://COPYING;md5=ecabc31e90311da843753ba772885d9f"
>   
> -SRCREV ="d6b884f3b72b8a42b21da863836569ef6836c2ea"
> +SRCREV ="4fe4ac8dde6ba14841da598ec37f8c6911fe0f64"

according to github 80805cabfcf57dd0454d47d7f86d43c6738ce629 is the tip.
any specific reason to pick the commit before that?

>   SRC_URI = " git://github.com/fail2ban/fail2ban.git;branch=0.11;protocol=https \
>           file://initd \
>           file://run-ptest \
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55440): https://lists.yoctoproject.org/g/yocto/message/55440
> Mute This Topic: https://lists.yoctoproject.org/mt/87379598/3647476
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [kweihmann@outlook.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

