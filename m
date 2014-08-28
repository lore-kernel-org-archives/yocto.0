Return-Path: <Xin.Ouyang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16A7DE007FE; Thu, 28 Aug 2014 03:40:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD017E0049D
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 03:40:43 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id s7SAeb3K010743
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 28 Aug 2014 03:40:38 -0700 (PDT)
Received: from pascal-macbookpro.corp.ad.wrs.com (128.224.159.159) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.174.1; Thu, 28 Aug 2014 03:40:37 -0700
Message-ID: <53FF0723.3050801@windriver.com>
Date: Thu, 28 Aug 2014 18:40:35 +0800
From: Pascal Ouyang <xin.ouyang@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Zhenhua Luo <zhenhua.luo@freescale.com>, <yocto@yoctoproject.org>
References: <1406204401-17220-1-git-send-email-zhenhua.luo@freescale.com>
In-Reply-To: <1406204401-17220-1-git-send-email-zhenhua.luo@freescale.com>
X-TagToolbar-Keys: D20140828184035927
Subject: Re: [meta-selinux][PATCH] Enable two options to ensure selinux can boot up
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
X-List-Received-Date: Thu, 28 Aug 2014 10:40:50 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

于 14-7-24 下午8:20, Zhenhua Luo 写道:
> * CONFIG_SECURITY=y
> * CONFIG_SECURITYFS=y
>
> Signed-off-by: Zhenhua Luo <zhenhua.luo@freescale.com>
> ---
>   recipes-kernel/linux/linux-yocto/selinux.cfg | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/recipes-kernel/linux/linux-yocto/selinux.cfg b/recipes-kernel/linux/linux-yocto/selinux.cfg
> index 53cdf57..2edd366 100644
> --- a/recipes-kernel/linux/linux-yocto/selinux.cfg
> +++ b/recipes-kernel/linux/linux-yocto/selinux.cfg
> @@ -18,6 +18,8 @@ CONFIG_EXT4_FS_SECURITY=y
>   CONFIG_JFS_SECURITY=y
>   CONFIG_REISERFS_FS_SECURITY=y
>   CONFIG_JFFS2_FS_SECURITY=y
> +CONFIG_SECURITY=y
> +CONFIG_SECURITYFS=y
>   CONFIG_SECURITY_NETWORK=y
>   CONFIG_SECURITY_SELINUX=y
>   CONFIG_SECURITY_SELINUX_BOOTPARAM=y
>

Merged. Thanks :)

-- 
- Pascal

