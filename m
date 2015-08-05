Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6B08E00ABC; Wed,  5 Aug 2015 08:18:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RCVD_IN_SORBS_WEB
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.8 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable
	web server *      [208.54.5.166 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD085E009C3
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2015 08:18:22 -0700 (PDT)
Received: from ma60536d0.tmodns.net ([208.54.5.166] helo=[192.168.43.151])
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1ZN0Rj-0005GM-LS; Wed, 05 Aug 2015 15:17:38 +0000
Message-ID: <55C22935.9030709@twobit.us>
Date: Wed, 05 Aug 2015 08:18:13 -0700
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1438255695-10644-1-git-send-email-bobadeshrikant@gmail.com>
In-Reply-To: <1438255695-10644-1-git-send-email-bobadeshrikant@gmail.com>
X-SA-Exim-Connect-IP: 208.54.5.166
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: Re: [meta-selinux][PATCH 1/2] linux-yocto: enable selinux support for kernel v4.1
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
X-List-Received-Date: Wed, 05 Aug 2015 15:18:34 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Works for me too.

Philip

On 07/30/2015 04:28 AM, Shrikant Bobade wrote:
> From: Shrikant Bobade <Shrikant_Bobade@mentor.com>
> 
> The default kernel is now v4.1. So we need the selinux support
> for kernel v4.1, inorder to get selinux enabled images out of box.
> 
> Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
> ---
>  recipes-kernel/linux/linux-yocto_4.1.bbappend |    8 ++++++++
>  1 file changed, 8 insertions(+)
>  create mode 100644 recipes-kernel/linux/linux-yocto_4.1.bbappend
> 
> diff --git a/recipes-kernel/linux/linux-yocto_4.1.bbappend b/recipes-kernel/linux/linux-yocto_4.1.bbappend
> new file mode 100644
> index 0000000..a8c0647
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-yocto_4.1.bbappend
> @@ -0,0 +1,8 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +
> +# Enable selinux support in the kernel if the feature is enabled
> +SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'file://selinux.cfg', '', d)}"
> +
> +# For inconsistent kallsyms data bug on ARM
> +# http://lists.infradead.org/pipermail/linux-arm-kernel/2012-March/thread.html#89718
> +EXTRA_OEMAKE += "${@bb.utils.contains('TARGET_ARCH', 'arm', ' KALLSYMS_EXTRA_PASS=1', '', d)}"
> 


