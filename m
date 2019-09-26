Return-Path: <mark.hatle@kernel.crashing.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54717E00C9B; Wed, 25 Sep 2019 20:21:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10917E0090E
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2019 20:21:51 -0700 (PDT)
Received: from Marks-MacBook-Pro.local ([76.164.61.198]) (authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id x8Q3Lib6026093
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO); Wed, 25 Sep 2019 22:21:46 -0500
To: Hongxu Jia <hongxu.jia@windriver.com>, jason.wessel@windriver.com,
	yocto@yoctoproject.org
References: <1569396253-36865-5-git-send-email-hongxu.jia@windriver.com>
	<1569465309-13406-1-git-send-email-hongxu.jia@windriver.com>
From: Mark Hatle <mark.hatle@kernel.crashing.org>
Message-ID: <7f392a18-3eba-271b-1383-29ae854b1fcb@kernel.crashing.org>
Date: Wed, 25 Sep 2019 22:21:43 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1569465309-13406-1-git-send-email-hongxu.jia@windriver.com>
Subject: Re: [meta-openssl102-fips][PATCH V3 4/16] classes/image-enable-fips.bbclass: enable user space fips mode in image
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
X-List-Received-Date: Thu, 26 Sep 2019 03:21:53 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

You are correct.  I had found that earlier today.

Anyway, the code has been verified as functional, and has been pushed.

Thanks!
--Mark

On 9/25/19 9:35 PM, Hongxu Jia wrote:
> Refer Fedora/RedHat's way
> https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/6.5_technical_notes/dracut
> 
> To enable user space fips mode in the image recipe as part of an
> 'IMAGE_CLASSES'. Basically if FIPS-140-2 is enabled, then we can
> touch the file as a post image generation activity.
> 
> Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> ---
>  classes/image-enable-fips.bbclass | 5 +++++
>  conf/layer.conf                   | 2 ++
>  2 files changed, 7 insertions(+)
>  create mode 100644 classes/image-enable-fips.bbclass
> 
> diff --git a/classes/image-enable-fips.bbclass b/classes/image-enable-fips.bbclass
> new file mode 100644
> index 0000000..6c5b370
> --- /dev/null
> +++ b/classes/image-enable-fips.bbclass
> @@ -0,0 +1,5 @@
> +ROOTFS_POSTPROCESS_COMMAND_append = "enable_system_fips;"
> +enable_system_fips() {
> +    install -d ${IMAGE_ROOTFS}${sysconfdir}
> +    touch ${IMAGE_ROOTFS}${sysconfdir}/system-fips
> +}
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 27a872e..185f422 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -18,3 +18,5 @@ LAYERDEPENDS_meta-openssl-one-zero-two-fips = " \
>          meta-openssl-one-zero-two \
>          wr-template \
>  "
> +
> +IMAGE_CLASSES_append = "${@'' if d.getVar('OPENSSL_FIPS_ENABLED', True) != '1' else ' image-enable-fips'}"
> 

