Return-Path: <kweihmann@outlook.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08B4AC433EF
	for <webhook@archiver.kernel.org>; Thu, 27 Jan 2022 14:48:12 +0000 (UTC)
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (EUR03-AM5-obe.outbound.protection.outlook.com [40.92.70.28])
 by mx.groups.io with SMTP id smtpd.web11.29355.1643294890169843159
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jan 2022 06:48:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=AY9Sqe+e;
 spf=pass (domain: outlook.com, ip: 40.92.70.28,
 mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mcdmyCMQ/G8HRqlqJqIFPoAFYZjJUMDnVbyJpxGdLBC+6pVMBnXgCMdaXGXOWlbKXX/X1GPAFJI9V1n578Zwm0OE6+lmTEipPRNwXumnOpOnVmw4pblyQslRo57Jn0DvUEyPkK3eXAC4SLeFdEiESKnce5xUKSsVGIE/XgkJLug53PUulZ/ukKTXY6cJs/ivnfENVxOy3Vdrg7BxlcJeQbPZBXgFhHxBprIoBSEoR3CdpjcgcWjx3FNigC8wZkovOqLs2JboLlZKnzPlpwd4uqef777BDYAEylyhb8YTO+n946rwj3UN/ZKFxdhbEhaGcFEC1ZOgFOwtP+1zkSRBjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CZdmS2iyzZTc4u706ZTTiRFUK0i70Lx5DUVvtXX3jUw=;
 b=VwEXgC+T9gH9V+MGHMej8JfuBjRtcaXHyiNyouvabe+h5cB7kB5reSFdLrnIgQuPtT41m4ITQU36mmBadMn+qRuCfT5pdWlbEKPG/4MOfJlHlssmP2AZaAxYnPbCOTbYHxz3YJUwLEni4x1juCrRgrIiQ97rM88ElDL6a3a8m5BFwQWxSEC5YBNg3gaqR8S3Sb5hKMXi7GEXWJ4vSk/Wc9qYQd2tjP/+6XPKjysZQpssX1qPQNRuXkw99AzcyoXDkhJ4WBNitAWWOsUw8BaQW+59P0kEs+nYbDfwtoZscVbSStMpWUbvVjYk86OBpMRZ76gNvYvMUU8k0DZ7QYxxGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CZdmS2iyzZTc4u706ZTTiRFUK0i70Lx5DUVvtXX3jUw=;
 b=AY9Sqe+et8srLJ31XKPJlRqF+weFnfd4bGLVpNC0/S9qIXkm2ncLLq4EAxXZGSmhqPlUssoPUDUYopjyga+dtgEWNVrk4b2dDzcHPnYzWd0C+G9qmXtDNIuWGntTc4sKCmwB+VK3tW8HDbfYdjix79pZt+B7MrGPp+ZHk6Tcl8Q5OUKSTciXVIrAlqG96i5QwycHWg1qHIlCDqW+QpKBdaEocy3hN9hclWOHEwi3Qup0rIRf6H/ls4i8FnSbn/DBDLGwgR22UTmPjo/lY4XV3j0oLIxMRs2UUlrO25zKVsFUFkC/RZs4atOJW/vHyVAbY2NrWkEUHJai9olHYBk9wA==
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com (2603:10a6:20b:284::24)
 by VI1PR09MB2944.eurprd09.prod.outlook.com (2603:10a6:803:e2::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.17; Thu, 27 Jan
 2022 14:48:08 +0000
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::144f:4014:8d4c:5702]) by AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::144f:4014:8d4c:5702%9]) with mapi id 15.20.4930.017; Thu, 27 Jan 2022
 14:48:07 +0000
Subject: Re: [yocto] [meta-lts-mixins][dunfell/go PATCH 1/4] Initial commit:
 add license, readme and layer config.
To: Alexander Kanavin <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
References: <20220127144323.3121475-1-alex@linutronix.de>
From: Konrad Weihmann <kweihmann@outlook.com>
Message-ID: 
 <AM9PR09MB4642BFA9251FBB72E5B01234A8219@AM9PR09MB4642.eurprd09.prod.outlook.com>
Date: Thu, 27 Jan 2022 15:48:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <20220127144323.3121475-1-alex@linutronix.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-TMN: [a5R6F0YFo4khqcLhGcGrQ7aHhKnb7ORJDKPjW6pn1V52JFTBAZZFzkM+DX2Mkuep]
X-ClientProxiedBy: FRYP281CA0012.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::22)
 To AM9PR09MB4642.eurprd09.prod.outlook.com (2603:10a6:20b:284::24)
X-Microsoft-Original-Message-ID: 
 <0f82225f-b9d1-06c5-7c1f-7a6f437c9544@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3df7e853-e82b-47c6-8cb0-08d9e1a4082f
X-MS-TrafficTypeDiagnostic: VI1PR09MB2944:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	JoZvw55rTBQwHrS7F8isQdznN5AF80NqGWkNBpUnpcqMRpAaZAqwtb8rOutU7c4q5+MLN/EXvdTuWshe6Pu+aKIFyqRUjV1S/Y9Yrwuqsu39k7DEjwMoY60gT6Qv/cxqSnvroRyfBDWmVZXGvvFPfqMw0/TCpu1iL9hWpeCk4Ciao6tG2XA2uQTir2k7v7ijBxIZMwlLmQxhjwc08GUQDcymTm3/1h7aP95zz7j6T+DLNew5iVyGPwApucVZ4oMrT8OSXatc8XQRuCaEdl01/HvbPfsGIUpjAQ419bv3BQ/9bnCAF+4BxAm2gPASXMIOsE+FR+/WtxYIMyKrYrJRPXLWSIXOlEMCTp1hv/Gqn6//e0KVanJbW+y9ohoswqX743jGoRRTw2aUCUdv2Hkrs6Npn5AUvu/kHAF7RsyRxiqAu+mNGIiMxIeB5WD6T3rCdvEx+kYtIGA7WDVOXT3CSRnQbFIbsE5kba6udVXdlXZw7iYRHJCR74M3nVDvhwkzjpg8hLbUJ/MQcUQbTvpkU+UM6OrGksWxhtsKKYcbKwR5ksX2Bt8MwFjMdpUVQx/IABUzlWR+ATcsKit8Y9kYg9+wjocIbSkMFLNpFnojbqIB2XgTeHIngSGgSoAGq/V/JgIiwbOMHRgHMpegjIg4ig==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?anh6TWlxQWEwOTR2TnZvZU9xYjBuQytZVDk4ZkpaYUhubjBnNXJsYzZ4MTZu?=
 =?utf-8?B?VmdMbmROOHBtQnByRGQ3TkpCRStjekg0WE9TdWhJOXl0Uy9VU2UybndMaXhv?=
 =?utf-8?B?YlNvbGdIdmc3RFBYL0QzSXoyZUJLTU9tdlVGbmptQmg0N2N6WXllL1hLR3lm?=
 =?utf-8?B?M2NyS2Z2QVJtN1pESTZneGNGa2JVQmxUaFd0b1VqVjFtUkhpY3hvWDJ5aXdw?=
 =?utf-8?B?SEIyNERIcUFGNkphZldOeGJyNVJkV1UwYzkyUmJzN2RBM2xnVW04V1BXYkxi?=
 =?utf-8?B?eTBkUzhkVnFpeWZJcHdvd3Q0NFJBQnJSUHR5TjNaQVBMZk14Zyszck50UzFn?=
 =?utf-8?B?MDB4VmRLeExaYlZoWGRBRGM2V3JVSjEyQko3c2lZZjlvOWFsSTlJU0J6TGtt?=
 =?utf-8?B?VFlzVktFcCt4dUUrZ0VYS3JJTTY1emNXUENpTTdzVVg5T0dwWlVNSVl6SHRE?=
 =?utf-8?B?eTdPTG9qRFovaDJ3cTRjemtxL29tcE9RYVZaNVF0YWxYTEt4QmlHK3JtMVBy?=
 =?utf-8?B?VllRRHFwa2phOFUzSkNkN0xOcnJGcEcwUFRwc0xQS3hETkhXbi80alV5Rklw?=
 =?utf-8?B?Q1FMZWxManpBTnRrTmRlOVV4c29LUk1SZDhNVVU5M3l1aTNHWERtTUdlc2pU?=
 =?utf-8?B?S3VHZ2JEMkwzUWl0MjJpMW9GcTA1ajVRU2JJNzM0bGQrUjB5d1dvNVo2ZjFx?=
 =?utf-8?B?a2tRd2dPN3lWOGYvYy8zSzF0T3BZajRYZGNlWUUxZW9yMzh0c0xhQllsZUs1?=
 =?utf-8?B?Sm9ncmFkOGsvckUxWHFVUitORTRPMC9sVkRJbmZ2VVlXWTNHMEhJWmZiMnhL?=
 =?utf-8?B?ZWF0YmQzN3FHcHZsc1ZZMS9FRlVaeGo4SHVOcllvNlE0RTAvcHE3a1RVNm9w?=
 =?utf-8?B?U1RNOFdPTzg3aEVuRWdvWmFxVFRHMmFuR3J6TzBUN0o0U0NnRERCWFFmZExV?=
 =?utf-8?B?WjVVNVdHKzhDRDJQYXZJTkJmREFzY0Q1ejZSaFZzWlo4NjhjdU1ZL3l1aUl3?=
 =?utf-8?B?N3M4ejl1bE1xcWZyMW1VamtURFhuM25EaGhxVkUrSXQ4Zk1wRW10SmdIUVA1?=
 =?utf-8?B?OGlCTExaVTJmYjZRZ3U5b0Rsajg0dE8wTlZ4SlhQMDNNcEd0b2dJKzVURGhy?=
 =?utf-8?B?dC96Y2M0UHJzMDBHeXR2R1IxeERaYlVVOVd2SHhXWGkzTE1FaTAxNEc0aUt4?=
 =?utf-8?B?aC8rMHZFNk5zYWZJaCtxMFRTZVRFeHVVK2c2SlJFUDBKVXJlMzNqQUhEL2dv?=
 =?utf-8?B?aDZMOEZTVEhFRTRHcnpORmZ2SzVYUUIybmpiTjFuNWR4SUZqVHAvc2poZjh4?=
 =?utf-8?B?ZitrWC8yUFNXSXZ4dEkycmNCejZoMmJnTTV2RmQ4U0JSSzdFUk1udTZxWmVy?=
 =?utf-8?B?aS9KalVka3U1T1E9PQ==?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 3df7e853-e82b-47c6-8cb0-08d9e1a4082f
X-MS-Exchange-CrossTenant-AuthSource: AM9PR09MB4642.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2022 14:48:07.8792
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR09MB2944
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jan 2022 14:48:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55996



On 27.01.22 15:43, Alexander Kanavin wrote:
> Reviewed-by: Martin Kaistra <martin.kaistra@linutronix.de>
> Signed-off-by: Alexander Kanavin <alex@linutronix.de>
> ---
>   COPYING.MIT     | 17 +++++++++++++++++
>   README          | 23 +++++++++++++++++++++++
>   conf/layer.conf | 19 +++++++++++++++++++
>   3 files changed, 59 insertions(+)
>   create mode 100644 COPYING.MIT
>   create mode 100644 README
>   create mode 100644 conf/layer.conf
> 
> diff --git a/COPYING.MIT b/COPYING.MIT
> new file mode 100644
> index 0000000..fb950dc
> --- /dev/null
> +++ b/COPYING.MIT
> @@ -0,0 +1,17 @@
> +Permission is hereby granted, free of charge, to any person obtaining a copy
> +of this software and associated documentation files (the "Software"), to deal
> +in the Software without restriction, including without limitation the rights
> +to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> +copies of the Software, and to permit persons to whom the Software is
> +furnished to do so, subject to the following conditions:
> +
> +The above copyright notice and this permission notice shall be included in
> +all copies or substantial portions of the Software.
> +
> +THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> +IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> +FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> +AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> +LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> +OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> +THE SOFTWARE.
> diff --git a/README b/README
> new file mode 100644
> index 0000000..5b22b72
> --- /dev/null
> +++ b/README
> @@ -0,0 +1,23 @@
> +"Mixin" layer for adding latest Go toolchain versions into the Yocto Project LTS.
> +
> +At the time Dunfell was released in April 2020, Go 1.14 was the latest version
> +and officially Dunfell supports only that. This thin special-purpose mixin
> +layer is meant to address this issue by backporting Go recipes from the master
> +branch of openembedded-core.
> +
> +You can see what Go versions are provided by listing recipes-devtools/ content.
> +
> +Including the layer automatically picks up the latest Go version; different versions
> +need to be set explicitly by adding the following line to your distro config
> +or local.conf:
> +
> +GOVERSION = "1.16%"
> +
> +Please note: enabling these newer Go versions makes docker from dunfell branch
> +of meta-virtualization unbuildable as it is too old. If you need a working docker
> +recipe, you can use the supplementary 'dunfell/docker' layer from this meta-lts-mixin
> +repository.
> +
> +
> +Maintainers:
> +Alexander Kanavin <alex@linutronix.de>
> diff --git a/conf/layer.conf b/conf/layer.conf
> new file mode 100644
> index 0000000..5f74224
> --- /dev/null
> +++ b/conf/layer.conf
> @@ -0,0 +1,19 @@
> +# We have a conf and classes directory, append to BBPATH
> +BBPATH .= ":${LAYERDIR}"
> +
> +# We have a recipes directory, add to BBFILES
> +BBFILES += "${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbappend"
> +
> +BBFILE_COLLECTIONS += "lts-go-mixin"
> +BBFILE_PATTERN_lts-go-mixin := "^${LAYERDIR}/"
> +BBFILE_PRIORITY_lts-go-mixin = "6"
> +
> +LAYERSERIES_COMPAT_lts-go-mixin = "dunfell"
> +
> +LAYERDEPENDS_lts-go-mixin = " \
> +    core \
> +"
> +
> +GOVERSION ?= "1.17%"
> +PREFERRED_PROVIDER_go-native = "go-binary-native"

Just out of curiosity: I thought the agreement was that neither 
PREFERRED_PROVIDER_* nor recipe/provider specific settings should be 
part of a layer.conf
PREFERRED_PROVIDER_go-native as a hard assignment might be troublesome 
in some setups (mainly depending on what order bblayers.conf actually has)

> +
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55990): https://lists.yoctoproject.org/g/yocto/message/55990
> Mute This Topic: https://lists.yoctoproject.org/mt/88722205/3647476
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [kweihmann@outlook.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

