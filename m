Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 335DBE009BF; Mon,  7 Dec 2015 14:20:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEDDCE006F3
	for <yocto@yoctoproject.org>; Mon,  7 Dec 2015 14:20:06 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id tB7MK2LY015676
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 7 Dec 2015 14:20:02 -0800 (PST)
Received: from [128.224.14.22] (128.224.14.22) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Mon, 7 Dec 2015 14:20:01 -0800
Message-ID: <5666060F.7040100@windriver.com>
Date: Mon, 7 Dec 2015 17:19:59 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: <rongqing.li@windriver.com>, <yocto@yoctoproject.org>
References: <1448524207-15246-1-git-send-email-rongqing.li@windriver.com>
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
X-List-Received-Date: Mon, 07 Dec 2015 22:20:08 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/26/2015 02:50 AM, rongqing.li@windriver.com wrote:
> From: Roy Li <rongqing.li@windriver.com>
>
> enable Tmpfs POSIX Access Control Lists and Tmpfs extended attributes
> this will remove the error when systemd apply the ACL to tmpfs:
>
>      systemd-udevd[335]: Failed to apply ACL on /dev/dri/card0: Operation not supported
>      systemd-udevd[552]: Failed to apply ACL on /dev/adsp: Operation not supported

Sorry for the long delay on this, I thought I had replied before .. but
then found this in my inbox.

If already replied, I hope I'm consistent here.

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

Looking at these more closely, I think they belong in the standard
and preempt-rt kernel types, versus base.cfg.

base is used by all kernel types, regardless of init system, or other
system capabilities. I know that tiny and other derivative kernels
may not want this, so it needs to be pulled one level higher.

Bruce

>   # CONFIG_HUGETLB_PAGE is not set
>
>   #
>


