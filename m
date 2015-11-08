Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4264E00985; Sun,  8 Nov 2015 11:09:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A75BE00927
	for <yocto@yoctoproject.org>; Sun,  8 Nov 2015 11:09:27 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=[10.79.148.125])
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1ZvVIQ-00013Q-Vo; Sun, 08 Nov 2015 19:06:38 +0000
Message-ID: <563F9DE1.9010706@twobit.us>
Date: Sun, 08 Nov 2015 11:09:21 -0800
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.8.0
MIME-Version: 1.0
To: George McCollister <george.mccollister@gmail.com>
References: <1446742614-8298-1-git-send-email-george.mccollister@gmail.com>
In-Reply-To: <1446742614-8298-1-git-send-email-george.mccollister@gmail.com>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] selinux-image: Fix RE error getting POL_TYPE
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
X-List-Received-Date: Sun, 08 Nov 2015 19:09:27 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 11/05/2015 08:56 AM, George McCollister wrote:
> Change [:space:] to [[:space:]]. [:space:] is incorrect and is treated
> as a list of characters. Prior to this change having a policy of
> 'standard' resulted in POL_TYPE being set to 'tandard'.

Good catch.

> Change the regular expression to match from the beginning of the line
> since correcting the [:space:] error causes the '# SELINUXTYPE= can
> take one of these values:' line to match.

You may want to add an additional [[:space:]]* between the '^' and
'SELINUXTYPE' to allow for valid whitespace but that's cosmetic. I'd say
pull it either way.

Best,
Philip

> Signed-off-by: George McCollister <george.mccollister@gmail.com>
> ---
>  classes/selinux-image.bbclass | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/classes/selinux-image.bbclass b/classes/selinux-image.bbclass
> index 362ca5c..9303610 100644
> --- a/classes/selinux-image.bbclass
> +++ b/classes/selinux-image.bbclass
> @@ -1,5 +1,5 @@
>  selinux_set_labels () {
> -    POL_TYPE=$(sed -n -e "s&SELINUXTYPE[:space:]*=[:space:]*\([0-9A-Za-z_]\+\)&\1&p" ${IMAGE_ROOTFS}/${sysconfdir}/selinux/config)
> +    POL_TYPE=$(sed -n -e "s&^SELINUXTYPE[[:space:]]*=[[:space:]]*\([0-9A-Za-z_]\+\)&\1&p" ${IMAGE_ROOTFS}/${sysconfdir}/selinux/config)
>      setfiles -r ${IMAGE_ROOTFS} ${IMAGE_ROOTFS}/${sysconfdir}/selinux/${POL_TYPE}/contexts/files/file_contexts ${IMAGE_ROOTFS} || exit 1;
>  }
>  
> 


