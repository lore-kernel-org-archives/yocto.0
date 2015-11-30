Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB3E5E00B89; Sun, 29 Nov 2015 21:19:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A881DE00B81
	for <yocto@yoctoproject.org>; Sun, 29 Nov 2015 21:19:08 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id tAU5J7Gx016628
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 29 Nov 2015 21:19:07 -0800 (PST)
Received: from server.local (128.224.20.101) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Sun, 29 Nov 2015 21:19:06 -0800
To: <rongqing.li@windriver.com>, <yocto@yoctoproject.org>
References: <1448524207-15246-1-git-send-email-rongqing.li@windriver.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <565BDC4A.7010909@windriver.com>
Date: Mon, 30 Nov 2015 00:19:06 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1448524207-15246-1-git-send-email-rongqing.li@windriver.com>
Subject: Re: [PATCH][yocto-kernel-cache] base.cfg: enable TMPFS_POSIX_ACL and TMPFS_XATTR
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
X-List-Received-Date: Mon, 30 Nov 2015 05:19:12 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-11-26 2:50 AM, rongqing.li@windriver.com wrote:
> From: Roy Li <rongqing.li@windriver.com>
>
> enable Tmpfs POSIX Access Control Lists and Tmpfs extended attributes
> this will remove the error when systemd apply the ACL to tmpfs:
>
>      systemd-udevd[335]: Failed to apply ACL on /dev/dri/card0: Operation not supported
>      systemd-udevd[552]: Failed to apply ACL on /dev/adsp: Operation not supported

I didn't notice this change. It should go to the linux-yocto mailing
list, not to the main yocto list.

I'll review this on Monday.

Cheers,

Bruce

>
> Signed-off-by: Roy Li <rongqing.li@windriver.com>
> ---
>   ktypes/base/base.cfg | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/ktypes/base/base.cfg b/ktypes/base/base.cfg
> index 3b8ccd2..28a0d83 100644
> --- a/ktypes/base/base.cfg
> +++ b/ktypes/base/base.cfg
> @@ -933,6 +933,8 @@ CONFIG_PROC_FS=y
>   CONFIG_PROC_KCORE=y
>   CONFIG_SYSFS=y
>   CONFIG_TMPFS=y
> +CONFIG_TMPFS_POSIX_ACL=y
> +CONFIG_TMPFS_XATTR=y
>   # CONFIG_HUGETLB_PAGE is not set
>
>   #
>


