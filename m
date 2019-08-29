Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E114E00DEF; Thu, 29 Aug 2019 01:00:34 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C474FE009D8
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 01:00:33 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x7T80Tfk014511
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 29 Aug 2019 01:00:29 -0700 (PDT)
Received: from [128.224.162.195] (128.224.162.195) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Thu, 29 Aug 2019 01:00:28 -0700
To: <joe@deserted.net>
References: <1558327299-10731-1-git-send-email-yi.zhao@windriver.com>
	<1558327299-10731-3-git-send-email-yi.zhao@windriver.com>
From: Yi Zhao <yi.zhao@windriver.com>
Message-ID: <d71334f8-dd32-d5df-68e4-aae6f55b2962@windriver.com>
Date: Thu, 29 Aug 2019 16:00:24 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1558327299-10731-3-git-send-email-yi.zhao@windriver.com>
X-Originating-IP: [128.224.162.195]
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 3/3] util-linux: drop obsolete patch
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
X-List-Received-Date: Thu, 29 Aug 2019 08:00:34 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi Joe,


Seems you were missing this patch. Would you please merge it? Thanks.


//Yi


On 5/20/19 12:41 PM, Yi Zhao wrote:
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ---
>   .../util-linux/fix-libmount_la_DEPENDENCIES.patch  | 28 ----------------------
>   1 file changed, 28 deletions(-)
>   delete mode 100644 recipes-core/util-linux/util-linux/fix-libmount_la_DEPENDENCIES.patch
>
> diff --git a/recipes-core/util-linux/util-linux/fix-libmount_la_DEPENDENCIES.patch b/recipes-core/util-linux/util-linux/fix-libmount_la_DEPENDENCIES.patch
> deleted file mode 100644
> index ab54818..0000000
> --- a/recipes-core/util-linux/util-linux/fix-libmount_la_DEPENDENCIES.patch
> +++ /dev/null
> @@ -1,28 +0,0 @@
> -Subject: [PATCH] util-linux: fix libmount_la_DEPENDENCIES.
> -
> -Upstream-Status: Pending
> -
> -libmount_la_LIBADD contains "-lselinux", this is not a object that
> -could consider as a dependency target. So fix this.
> -
> -Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
> ----
> - libmount/src/Makemodule.am |    2 +-
> - 1 files changed, 1 insertions(+), 1 deletions(-)
> -
> -diff --git a/libmount/src/Makemodule.am b/libmount/src/Makemodule.am
> -index 494e02a..bf494a4 100644
> ---- a/libmount/src/Makemodule.am
> -+++ b/libmount/src/Makemodule.am
> -@@ -38,7 +38,7 @@ libmount_la_CFLAGS = \
> - 	-I$(top_srcdir)/libmount/src
> -
> - libmount_la_DEPENDENCIES = \
> --	$(libmount_la_LIBADD) \
> -+	libcommon.la libblkid.la \
> - 	libmount/src/libmount.sym \
> - 	libmount/src/libmount.h.in
> -
> ---
> -1.7.5.4
> -

