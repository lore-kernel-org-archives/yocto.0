Return-Path: <Zhe.He@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72EE2E0097C; Thu, 24 Oct 2019 02:32:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5ED26E00839
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2019 02:32:48 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id x9O9Wbvf028873
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 24 Oct 2019 02:32:37 -0700 (PDT)
Received: from [128.224.158.234] (128.224.158.234) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Thu, 24 Oct 2019 02:32:36 -0700
To: <yocto@yoctoproject.org>, <alexandru.vaduva@linux.com>,
	<joe_macdonald@mentor.com>, <adrian.dudau@enea.com>
References: <1571906910-351667-1-git-send-email-zhe.he@windriver.com>
From: He Zhe <zhe.he@windriver.com>
Message-ID: <072e049b-a905-1edf-7665-b6130b266085@windriver.com>
Date: Thu, 24 Oct 2019 17:32:32 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1571906910-351667-1-git-send-email-zhe.he@windriver.com>
X-Originating-IP: [128.224.158.234]
Subject: Re: [meta-cgl][PATCH] kernel: Remove non-existing kernel option
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
X-List-Received-Date: Thu, 24 Oct 2019 09:34:11 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Language: en-US

typo in commit log, v2 will be sent.

Zhe


On 10/24/19 4:48 PM, zhe.he@windriver.com wrote:
> From: He Zhe <zhe.he@windriver.com>
>
> CONFIG_INET6_XFRM_MODE_ROUTEOPTIMIZATION has been removed from mainline kernel
> by commit 4c145dce2601 ("xfrm: make xfrm modes builtin").
>
> Signed-off-by: He Zhe <zhe.he@windriver.com>
> ---
>  meta-cgl-common/recipes-kernel/linux/files/cfg/00014-selinux.cfg | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/meta-cgl-common/recipes-kernel/linux/files/cfg/00014-selinux.cfg b/meta-cgl-common/recipes-kernel/linux/files/cfg/00014-selinux.cfg
> index 1efd63e..b10b839 100644
> --- a/meta-cgl-common/recipes-kernel/linux/files/cfg/00014-selinux.cfg
> +++ b/meta-cgl-common/recipes-kernel/linux/files/cfg/00014-selinux.cfg
> @@ -19,7 +19,6 @@ CONFIG_REISERFS_FS_SECURITY=y
>  CONFIG_JFFS2_FS_SECURITY=y
>  CONFIG_SECURITYFS=y
>  CONFIG_SECURITY_SELINUX_BOOTPARAM=y
> -CONFIG_SECURITY_SELINUX_BOOTPARAM_VALUE=1
>  CONFIG_SECURITY_SELINUX_DISABLE=y
>  CONFIG_SECURITY_SELINUX_DEVELOP=y
>  CONFIG_SECURITY_SELINUX_AVC_STATS=y


