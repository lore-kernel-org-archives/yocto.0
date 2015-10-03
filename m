Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D8A9E00E42; Sat,  3 Oct 2015 16:42:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.46 listed in list.dnswl.org]
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83F2DE00473
	for <yocto@yoctoproject.org>; Sat,  3 Oct 2015 16:42:31 -0700 (PDT)
Received: by pacfv12 with SMTP id fv12so142498203pac.2
	for <yocto@yoctoproject.org>; Sat, 03 Oct 2015 16:42:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:references:cc:to:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=nmyD4Ym9fqwRQlk9FIauUvoGG7VB0qtwvlMLVHjHyiQ=;
	b=p5rxFeV32NcY/1EPs7CWsLNGUO2YoY2qfMw9yi3mYxa9lRapciLm457JyxTcNcirfN
	iYzq6zJmb4dC/pzU709WUnZQuWZtKLDgD6uISFUVZYi4kcK/HkbjCDP4JkirhBdcUu9y
	sF7PpiKdx1UgbAoPk1lss1IlUqt5/xoeqZDTxsaK6Pu6UKFd688t+2+xqvvalwVePXCI
	0uuxgP32aGEIzIkZkRglCTyRyM6ZEBESOUr3BC3D9sT75dgneYwLuyPmdOKZGc/ih+KG
	Y5tjSn6mx78YweWyW8WAgVobe8OODuurxrGGEXfRas1AQbqIePoKqWRkz/HouujRFNls
	CAXQ==
X-Received: by 10.66.216.1 with SMTP id om1mr29615720pac.51.1443915751590;
	Sat, 03 Oct 2015 16:42:31 -0700 (PDT)
Received: from [192.168.0.2] (60-242-179-244.static.tpgi.com.au.
	[60.242.179.244]) by smtp.gmail.com with ESMTPSA id
	gv1sm3880848pbd.96.2015.10.03.16.42.29
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 03 Oct 2015 16:42:30 -0700 (PDT)
References: <1440231935-11042-1-git-send-email-net147@gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
From: Jonathan Liu <net147@gmail.com>
Message-ID: <561067E2.5020807@gmail.com>
Date: Sun, 4 Oct 2015 10:42:26 +1100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1440231935-11042-1-git-send-email-net147@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2] linux-raspberrypi.inc: use SRCPV instead of SRCREV for PV
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
X-List-Received-Date: Sat, 03 Oct 2015 23:42:35 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 22/08/2015 6:25 PM, Jonathan Liu wrote:
> SRCPV is intended to be used by PV. Using SRCREV for PV is incorrect.
>
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>   recipes-kernel/linux/linux-raspberrypi.inc | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
> index d60a3e9..ef98421 100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -12,7 +12,8 @@ SRC_URI += " \
>   
>   COMPATIBLE_MACHINE = "raspberrypi"
>   
> -PV = "${LINUX_VERSION}+git${SRCREV}"
> +PV = "${LINUX_VERSION}+git${SRCPV}"
> +PR = "r1"
>   
>   # NOTE: For now we pull in the default config from the RPi kernel GIT tree.
>   KERNEL_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
Bump.

Regards,
Jonathan

