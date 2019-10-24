Return-Path: <Zhe.He@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5675E00DAA; Thu, 24 Oct 2019 02:27:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BE5DE00B6D
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2019 02:27:33 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x9O9RVtx004864
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 24 Oct 2019 02:27:31 -0700
Received: from [128.224.158.234] (128.224.158.234) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Thu, 24 Oct 2019 02:27:30 -0700
To: <yocto@yoctoproject.org>, <joe_macdonald@mentor.com>
References: <1571906550-350766-1-git-send-email-zhe.he@windriver.com>
From: He Zhe <zhe.he@windriver.com>
Message-ID: <5f532d36-5c7b-331c-c1e0-13d06d1737c0@windriver.com>
Date: Thu, 24 Oct 2019 17:27:27 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1571906550-350766-1-git-send-email-zhe.he@windriver.com>
X-Originating-IP: [128.224.158.234]
Subject: Re: [meta-selinux][PATCH] kernel: Remove non-existing kernel option
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
X-List-Received-Date: Thu, 24 Oct 2019 09:27:36 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Language: en-US

typo in commit log, v2 will be sent.

Zhe

On 10/24/19 4:42 PM, zhe.he@windriver.com wrote:
> From: He Zhe <zhe.he@windriver.com>
>
> CONFIG_INET6_XFRM_MODE_ROUTEOPTIMIZATION has been remove from mainline kernel
> by the commit 4c145dce2601 ("xfrm: make xfrm modes builtin").
>
> Signed-off-by: He Zhe <zhe.he@windriver.com>
> ---
>  recipes-kernel/linux/files/selinux.cfg | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/recipes-kernel/linux/files/selinux.cfg b/recipes-kernel/linux/files/selinux.cfg
> index 2edd366..7d16dc5 100644
> --- a/recipes-kernel/linux/files/selinux.cfg
> +++ b/recipes-kernel/linux/files/selinux.cfg
> @@ -23,7 +23,6 @@ CONFIG_SECURITYFS=y
>  CONFIG_SECURITY_NETWORK=y
>  CONFIG_SECURITY_SELINUX=y
>  CONFIG_SECURITY_SELINUX_BOOTPARAM=y
> -CONFIG_SECURITY_SELINUX_BOOTPARAM_VALUE=1
>  CONFIG_SECURITY_SELINUX_DISABLE=y
>  CONFIG_SECURITY_SELINUX_DEVELOP=y
>  CONFIG_SECURITY_SELINUX_AVC_STATS=y


