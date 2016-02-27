Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43632E00B8B; Fri, 26 Feb 2016 21:49:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A789E00B37
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 21:49:06 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=[10.79.148.125])
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1aZXju-0002Sk-7m; Sat, 27 Feb 2016 05:48:27 +0000
To: Thomas Perrot <thomas.perrot@tupi.fr>
References: <1451932304-25824-1-git-send-email-thomas.perrot@tupi.fr>
From: Philip Tricca <flihp@twobit.us>
Message-ID: <56D138D3.7060009@twobit.us>
Date: Fri, 26 Feb 2016 21:49:07 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.6.0
MIME-Version: 1.0
In-Reply-To: <1451932304-25824-1-git-send-email-thomas.perrot@tupi.fr>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] Remove recipes for kernel 3.14 and 3.19 from master branch, to fix a build error. ERROR: No recipes available for: meta-selinux/recipes-kernel/linux/linux-yocto_3.19.bbappend meta-selinux/recipes-kernel/linux/linux-yocto_3.14.bbappend
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
X-List-Received-Date: Sat, 27 Feb 2016 05:49:10 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Merged. Thanks.

On 01/04/2016 10:31 AM, Thomas Perrot wrote:
> Signed-off-by: Thomas Perrot <thomas.perrot@tupi.fr>
> ---
>  recipes-kernel/linux/linux-yocto_3.14.bbappend | 8 --------
>  recipes-kernel/linux/linux-yocto_3.19.bbappend | 8 --------
>  2 files changed, 16 deletions(-)
>  delete mode 100644 recipes-kernel/linux/linux-yocto_3.14.bbappend
>  delete mode 100644 recipes-kernel/linux/linux-yocto_3.19.bbappend
> 
> diff --git a/recipes-kernel/linux/linux-yocto_3.14.bbappend b/recipes-kernel/linux/linux-yocto_3.14.bbappend
> deleted file mode 100644
> index 65c79ef..0000000
> --- a/recipes-kernel/linux/linux-yocto_3.14.bbappend
> +++ /dev/null
> @@ -1,8 +0,0 @@
> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> -
> -# Enable selinux support in the kernel if the feature is enabled
> -SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'file://selinux.cfg', '', d)}"
> -
> -# For inconsistent kallsyms data bug on ARM
> -# http://lists.infradead.org/pipermail/linux-arm-kernel/2012-March/thread.html#89718 
> -EXTRA_OEMAKE += "${@bb.utils.contains('TARGET_ARCH', 'arm', ' KALLSYMS_EXTRA_PASS=1', '', d)}"
> diff --git a/recipes-kernel/linux/linux-yocto_3.19.bbappend b/recipes-kernel/linux/linux-yocto_3.19.bbappend
> deleted file mode 100644
> index a8c0647..0000000
> --- a/recipes-kernel/linux/linux-yocto_3.19.bbappend
> +++ /dev/null
> @@ -1,8 +0,0 @@
> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> -
> -# Enable selinux support in the kernel if the feature is enabled
> -SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'file://selinux.cfg', '', d)}"
> -
> -# For inconsistent kallsyms data bug on ARM
> -# http://lists.infradead.org/pipermail/linux-arm-kernel/2012-March/thread.html#89718
> -EXTRA_OEMAKE += "${@bb.utils.contains('TARGET_ARCH', 'arm', ' KALLSYMS_EXTRA_PASS=1', '', d)}"
> 


