Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C35FAE00B77; Thu, 19 Sep 2019 02:28:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E35CE008A4
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2019 02:28:13 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Sep 2019 02:28:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,523,1559545200"; d="scan'208";a="189549931"
Received: from abloeckn-mobl.ger.corp.intel.com (HELO blackadder.local)
	([10.249.38.226])
	by orsmga003.jf.intel.com with ESMTP; 19 Sep 2019 02:28:11 -0700
To: yocto@yoctoproject.org
References: <20190919081310.1107197-1-hs@denx.de>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <e3d2a2ea-e5ea-cc5a-968b-f926a10a6262@intel.com>
Date: Thu, 19 Sep 2019 10:28:10 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190919081310.1107197-1-hs@denx.de>
Subject: Re: [PATCH] kernel.fitimage.bbclass: remove ramdisk_ctype
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
X-List-Received-Date: Thu, 19 Sep 2019 09:28:14 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

This should go to the oe-core list, 
openembedded-core@lists.openembedded.org.

Thanks,
Ross

On 19/09/2019 09:13, Heiko Schocher wrote:
> set in the ramdisk node the compression property
> always to "none", as U-Boot nowadays since commit:
> 
> b1307f884a91 ("fit: Support compression for non-kernel components (e.g. FDT)")
> 
> decompress non kernel components. Setting compression
> to the used comression algorithm now, will end in
> fail of your kernel boot with the ramdisk.
> 
> This issue is fixed since commit:
> 
> bddd98573465 ("fit: Do not automatically decompress ramdisk images")
> 
> which now prints a warning in U-Boot, instead of decompressing
> the ramdisk, but we should setup compression property correct.
> 
> Signed-off-by: Heiko Schocher <hs@denx.de>
> ---
> 
>   meta/classes/kernel-fitimage.bbclass | 21 +--------------------
>   1 file changed, 1 insertion(+), 20 deletions(-)
> 
> diff --git a/meta/classes/kernel-fitimage.bbclass b/meta/classes/kernel-fitimage.bbclass
> index b51882dce4..1bcb09c598 100644
> --- a/meta/classes/kernel-fitimage.bbclass
> +++ b/meta/classes/kernel-fitimage.bbclass
> @@ -207,7 +207,6 @@ EOF
>   fitimage_emit_section_ramdisk() {
>   
>   	ramdisk_csum="${FIT_HASH_ALG}"
> -	ramdisk_ctype="none"
>   	ramdisk_loadline=""
>   	ramdisk_entryline=""
>   
> @@ -218,24 +217,6 @@ fitimage_emit_section_ramdisk() {
>   		ramdisk_entryline="entry = <${UBOOT_RD_ENTRYPOINT}>;"
>   	fi
>   
> -	case $3 in
> -		*.gz)
> -			ramdisk_ctype="gzip"
> -			;;
> -		*.bz2)
> -			ramdisk_ctype="bzip2"
> -			;;
> -		*.lzma)
> -			ramdisk_ctype="lzma"
> -			;;
> -		*.lzo)
> -			ramdisk_ctype="lzo"
> -			;;
> -		*.lz4)
> -			ramdisk_ctype="lz4"
> -			;;
> -	esac
> -
>   	cat << EOF >> ${1}
>                   ramdisk@${2} {
>                           description = "${INITRAMFS_IMAGE}";
> @@ -243,7 +224,7 @@ fitimage_emit_section_ramdisk() {
>                           type = "ramdisk";
>                           arch = "${UBOOT_ARCH}";
>                           os = "linux";
> -                        compression = "${ramdisk_ctype}";
> +                        compression = "none";
>                           ${ramdisk_loadline}
>                           ${ramdisk_entryline}
>                           hash@1 {
> 


