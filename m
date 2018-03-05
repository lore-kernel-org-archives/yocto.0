Return-Path: <california.l.sullivan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 497C8E00823; Mon,  5 Mar 2018 13:52:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0550E00823;
	Mon,  5 Mar 2018 13:51:59 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Mar 2018 13:51:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,428,1515484800"; d="scan'208";a="180116246"
Received: from clsulliv.jf.intel.com ([10.7.201.36])
	by orsmga004.jf.intel.com with ESMTP; 05 Mar 2018 13:51:58 -0800
To: Chen Qi <Qi.Chen@windriver.com>, meta-intel@yoctoproject.org,
	yocto@yoctoproject.org
References: <1520215408-21854-1-git-send-email-Qi.Chen@windriver.com>
From: Cal Sullivan <california.l.sullivan@intel.com>
Message-ID: <5defbf56-e7d1-33d0-13a3-66dcd1fc819d@intel.com>
Date: Mon, 5 Mar 2018 13:51:58 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <1520215408-21854-1-git-send-email-Qi.Chen@windriver.com>
Subject: Re: [meta-intel] [PATCH] systemd-boot: fix bbappend file to suit latest version
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
X-List-Received-Date: Mon, 05 Mar 2018 21:52:00 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Thanks for the patch. I assume this is needed when OE-core merges the 
update to v236?

Thanks,
Cal

On 03/04/2018 06:03 PM, Chen Qi wrote:
> Fix the bbappend file to suit the latest systemd version.
>
> As systemd has now dropped autotools support, using ninja
> instead of make in do_compile.
>
> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
> ---
>   recipes-bsp/systemd-boot/systemd-boot_%.bbappend | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-bsp/systemd-boot/systemd-boot_%.bbappend b/recipes-bsp/systemd-boot/systemd-boot_%.bbappend
> index 9e6cc16..46dd8a4 100644
> --- a/recipes-bsp/systemd-boot/systemd-boot_%.bbappend
> +++ b/recipes-bsp/systemd-boot/systemd-boot_%.bbappend
> @@ -7,11 +7,11 @@ SRC_URI_append_intel-x86-common = " \
>   PACKAGE_ARCH_intel-x86-common = "${INTEL_COMMON_PACKAGE_ARCH}"
>   
>   do_compile_append_intel-x86-common() {
> -	oe_runmake linux${SYSTEMD_BOOT_EFI_ARCH}.efi.stub
> +	ninja src/boot/efi/linux${SYSTEMD_BOOT_EFI_ARCH}.efi.stub
>   }
>   
>   do_deploy_append_intel-x86-common() {
> -	install ${B}/linux*.efi.stub ${DEPLOYDIR}
> +	install ${B}/src/boot/efi/linux*.efi.stub ${DEPLOYDIR}
>   }
>   
>   # includes rmc-boot.inc if rmc-boot is the EFI_PROVIDER


