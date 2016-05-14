Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2663FE00D4A; Sat, 14 May 2016 01:59:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6E9EE00D01
	for <yocto@yoctoproject.org>; Sat, 14 May 2016 01:59:23 -0700 (PDT)
Received: from nbhjo (111-250-208-151.dynamic.hinet.net [111.250.208.151])
	by msfrf2634.sfr.fr (SMTP Server) with ESMTP id EC3F41C002C16;
	Sat, 14 May 2016 10:59:20 +0200 (CEST)
Received: from nbhjo (111-250-208-151.dynamic.hinet.net
	[111.250.208.151])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2634.sfr.fr (SMTP Server) with ESMTPSA;
	Sat, 14 May 2016 10:59:19 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Khem Raj' <raj.khem@gmail.com>
References: <1463208447-48369-1-git-send-email-herve.jourdain@neuf.fr>
	<1463208447-48369-2-git-send-email-herve.jourdain@neuf.fr>
	<C4F5069B-468C-4EA3-A349-193B89D695C7@gmail.com>
In-Reply-To: <C4F5069B-468C-4EA3-A349-193B89D695C7@gmail.com>
Date: Sat, 14 May 2016 10:59:13 +0200
Message-ID: <0b6d01d1adbe$e65a8ae0$b30fa0a0$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIZ/Wvt5r9jMPATSjhy+jWXOB7PUQHjDYhCAokakyOfBCF8IA==
X-sfr-mailing: LEGIT
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] Support for .dtbo files for dtb overlays
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
X-List-Received-Date: Sat, 14 May 2016 08:59:29 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Language: fr

Hi Khem,

OK, sorry for that.
V2 is coming.

Cheers,

Herve

-----Original Message-----
From: Khem Raj [mailto:raj.khem@gmail.com] 
Sent: samedi 14 mai 2016 09:15
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [PATCH 1/1] Support for .dtbo files for dtb overlays

That patch is ok, however you should have not changed the formatting. So
please send a v2 with original formatting preserved.

> On May 13, 2016, at 11:47 PM, Herve Jourdain <herve.jourdain@neuf.fr>
wrote:
> 
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
> meta/recipes-kernel/linux/linux-dtb.inc | 66 
> +++++++++++++++++----------------
> 1 file changed, 35 insertions(+), 31 deletions(-)
> 
> diff --git a/meta/recipes-kernel/linux/linux-dtb.inc 
> b/meta/recipes-kernel/linux/linux-dtb.inc
> index 651a19e..44782d8 100644
> --- a/meta/recipes-kernel/linux/linux-dtb.inc
> +++ b/meta/recipes-kernel/linux/linux-dtb.inc
> @@ -31,44 +31,48 @@ do_compile_append() { }
> 
> do_install_append() {
> -	for DTB in ${KERNEL_DEVICETREE}; do
> -		DTB=`normalize_dtb "${DTB}"`
> -		DTB_BASE_NAME=`basename ${DTB} .dtb`
> -		DTB_SYMLINK_NAME=`echo ${KERNEL_IMAGE_SYMLINK_NAME} | sed
"s/${MACHINE}/${DTB_BASE_NAME}/g"`
> -		DTB_PATH=`get_real_dtb_path_in_kernel "${DTB}"`
> -		install -m 0644 ${DTB_PATH}
${D}/${KERNEL_IMAGEDEST}/devicetree-${DTB_SYMLINK_NAME}.dtb
> -	done
> +    for DTB in ${KERNEL_DEVICETREE}; do
> +        DTB=`normalize_dtb "${DTB}"`
> +        DTB_EXT=${DTB##*.}
> +        DTB_BASE_NAME=`basename ${DTB} ".${DTB_EXT}"`
> +        DTB_SYMLINK_NAME=`echo ${KERNEL_IMAGE_SYMLINK_NAME} | sed
"s/${MACHINE}/${DTB_BASE_NAME}/g"`
> +        DTB_PATH=`get_real_dtb_path_in_kernel "${DTB}"`
> +        install -m 0644 ${DTB_PATH}
${D}/${KERNEL_IMAGEDEST}/devicetree-${DTB_SYMLINK_NAME}.${DTB_EXT}
> +    done
> }
> 
> do_deploy_append() {
> -	for DTB in ${KERNEL_DEVICETREE}; do
> -		DTB=`normalize_dtb "${DTB}"`
> -		DTB_BASE_NAME=`basename ${DTB} .dtb`
> -		DTB_NAME=`echo ${KERNEL_IMAGE_BASE_NAME} | sed
"s/${MACHINE}/${DTB_BASE_NAME}/g"`
> -		DTB_SYMLINK_NAME=`echo ${KERNEL_IMAGE_SYMLINK_NAME} | sed
"s/${MACHINE}/${DTB_BASE_NAME}/g"`
> -		DTB_PATH=`get_real_dtb_path_in_kernel "${DTB}"`
> -		install -d ${DEPLOYDIR}
> -		install -m 0644 ${DTB_PATH} ${DEPLOYDIR}/${DTB_NAME}.dtb
> -		ln -sf ${DTB_NAME}.dtb ${DEPLOYDIR}/${DTB_SYMLINK_NAME}.dtb
> -	done
> +    for DTB in ${KERNEL_DEVICETREE}; do
> +        DTB=`normalize_dtb "${DTB}"`
> +        DTB_EXT=${DTB##*.}
> +        DTB_BASE_NAME=`basename ${DTB} ".${DTB_EXT}"`
> +        DTB_NAME=`echo ${KERNEL_IMAGE_BASE_NAME} | sed
"s/${MACHINE}/${DTB_BASE_NAME}/g"`
> +        DTB_SYMLINK_NAME=`echo ${KERNEL_IMAGE_SYMLINK_NAME} | sed
"s/${MACHINE}/${DTB_BASE_NAME}/g"`
> +        DTB_PATH=`get_real_dtb_path_in_kernel "${DTB}"`
> +        install -d ${DEPLOYDIR}
> +        install -m 0644 ${DTB_PATH} ${DEPLOYDIR}/${DTB_NAME}.${DTB_EXT}
> +        ln -sf ${DTB_NAME}.${DTB_EXT}
${DEPLOYDIR}/${DTB_SYMLINK_NAME}.${DTB_EXT}
> +    done
> }
> 
> pkg_postinst_kernel-devicetree () {
> -	cd /${KERNEL_IMAGEDEST}
> -	for DTB in ${KERNEL_DEVICETREE}
> -	do
> -		DTB_BASE_NAME=`basename ${DTB} | awk -F "." '{print $1}'`
> -		DTB_SYMLINK_NAME=`echo ${KERNEL_IMAGE_SYMLINK_NAME} | sed
"s/${MACHINE}/${DTB_BASE_NAME}/g"`
> -		update-alternatives --install
/${KERNEL_IMAGEDEST}/${DTB_BASE_NAME}.dtb ${DTB_BASE_NAME}.dtb
/boot/devicetree-${DTB_SYMLINK_NAME}.dtb ${KERNEL_PRIORITY} || true
> -	done
> +    cd /${KERNEL_IMAGEDEST}
> +    for DTB in ${KERNEL_DEVICETREE}
> +    do
> +        DTB_EXT=${DTB##*.}
> +        DTB_BASE_NAME=`basename ${DTB} | awk -F "." '{print $1}'`
> +        DTB_SYMLINK_NAME=`echo ${KERNEL_IMAGE_SYMLINK_NAME} | sed
"s/${MACHINE}/${DTB_BASE_NAME}/g"`
> +        update-alternatives --install
/${KERNEL_IMAGEDEST}/${DTB_BASE_NAME}.${DTB_EXT} ${DTB_BASE_NAME}.${DTB_EXT}
/boot/devicetree-${DTB_SYMLINK_NAME}.${DTB_EXT} ${KERNEL_PRIORITY} || true
> +    done
> }
> 
> pkg_postrm_kernel-devicetree () {
> -	cd /${KERNEL_IMAGEDEST}
> -	for DTB in ${KERNEL_DEVICETREE}
> -	do
> -		DTB_BASE_NAME=`basename ${DTB} | awk -F "." '{print $1}'`
> -		DTB_SYMLINK_NAME=`echo ${KERNEL_IMAGE_SYMLINK_NAME} | sed
"s/${MACHINE}/${DTB_BASE_NAME}/g"`
> -		update-alternatives --remove ${DTB_BASE_NAME}.dtb
/boot/devicetree-${DTB_SYMLINK_NAME}.dtb ${KERNEL_PRIORITY} || true
> -	done
> +    cd /${KERNEL_IMAGEDEST}
> +    for DTB in ${KERNEL_DEVICETREE}
> +    do
> +        DTB_EXT=${DTB##*.}
> +        DTB_BASE_NAME=`basename ${DTB} | awk -F "." '{print $1}'`
> +        DTB_SYMLINK_NAME=`echo ${KERNEL_IMAGE_SYMLINK_NAME} | sed
"s/${MACHINE}/${DTB_BASE_NAME}/g"`
> +        update-alternatives --remove ${DTB_BASE_NAME}.${DTB_EXT}
/boot/devicetree-${DTB_SYMLINK_NAME}.${DTB_EXT} ${KERNEL_PRIORITY} || true
> +    done
> }
> --
> 2.7.4
> 
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



