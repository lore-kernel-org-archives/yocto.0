Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96B2DE00C98; Sun, 16 Oct 2016 15:27:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F118FE00C88
	for <yocto@yoctoproject.org>; Sun, 16 Oct 2016 15:27:31 -0700 (PDT)
Received: by mail-vk0-f66.google.com with SMTP id 2so7053055vkb.1
	for <yocto@yoctoproject.org>; Sun, 16 Oct 2016 15:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JuAjdwCVLh4lKSyKexan9q9ka9UEnnryRm9oGXkkJkU=;
	b=xn4MUzJ5oOlXFSxn6HQ2x28vKIUisw1omQyAm3K2B1P+qXNV6zMk+bq5uYuJ/FP2ay
	9wityBERh9bFReGXIoaJqUnheXUpXcPQtJXA7Ga5lfu2AnXcsFwWXzrSnInd2dLjlRjm
	IdS32MkLYjCEQfqgHqwpkPWtOuGPfW+HZUGPqgQgOlAtvBp0FJMAKV0O2z7WJWq0AEJB
	rEif54FSF5MUARe1TIAqt21FxitYxF4Ss+qSO+b3uKe0ZFIO1vI1NoatzpkVXMoFGluz
	h9ESWlBJVX8nXocgDEeVAeDA5/v4gdb9VU+nA3hk0jLOnqNDUr9s7eYn9y/QgKvf8oTW
	gvBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JuAjdwCVLh4lKSyKexan9q9ka9UEnnryRm9oGXkkJkU=;
	b=jJbfCDLOnUBEly9KIgrwXSxnlTDLSBDKMilG7jRLSqDK+rQO/uF4Wi/JNNt592b9UJ
	BYbMcIdUrm16RJSeqAI3DV+tEbqjr0uHHbZFPnYg+XzvP89ZkmT8I9LI5ld+NIwiwcJ3
	XS3DIvtqlwqj3EOAHAUSN7LGc32XAGQNcP8Uxajaeha1RJqDhr996jc+gcC737zKRj1x
	RvJSb4HnkVZv4XGskr2FYfZiyn9mgUGu6LiCSVs1QgSSKhu0cbHgq/YdO+vuGjn5EVLj
	xAunWHLzkOnivIiQZnPQ0nn0w1hlCnA3h6z+lZP4/EuOX90GGg3CRyUsEX0gPZKMuFpt
	SCEQ==
X-Gm-Message-State: AA6/9Rk/eYyHd0mP0q2At4+KPxfTTQ2UXOcRY4rIU8o7qoR+g9oafLG/7UbtZBOUawCR4ZTIukA9WpPJyLc+hw==
X-Received: by 10.31.15.65 with SMTP id 62mr6010873vkp.93.1476656850974; Sun,
	16 Oct 2016 15:27:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.206 with HTTP; Sun, 16 Oct 2016 15:27:00 -0700 (PDT)
In-Reply-To: <20161016220857.30299-1-net147@gmail.com>
References: <20161016220857.30299-1-net147@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 16 Oct 2016 15:27:00 -0700
Message-ID: <CAMKF1sq4AJufhuYgsA4_v6nF3VgNAwY=o6fCKdC3AE5=fdqgQQ@mail.gmail.com>
To: Jonathan Liu <net147@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux-firmware: Correct the LICENSE for brcm43430-license
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
X-List-Received-Date: Sun, 16 Oct 2016 22:27:33 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 16, 2016 at 3:08 PM, Jonathan Liu <net147@gmail.com> wrote:
> The license for brcm43430-license should be the license it contains
> instead of all the licenses of the linux-firmware packages.
>

this is ok

> [YOCTO #10251]
>
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  recipes-kernel/linux-firmware/linux-firmware_git.bbappend | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/recipes-kernel/linux-firmware/linux-firmware_git.bbappend b/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
> index b4408cb..bcfadde 100644
> --- a/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
> +++ b/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
> @@ -20,6 +20,7 @@ do_install_append() {
>  PACKAGES =+ "${PN}-brcm43430 ${PN}-brcm43430-license"
>
>  LICENSE_${PN}-brcm43430 = "Firmware-broadcom_brcm80211"
> +LICENSE_${PN}-brcm43430-license = "Firmware-broadcom_brcm80211"
>  FILES_${PN}-brcm43430-license = "/lib/firmware/LICENSE.broadcom_brcm80211"
>  FILES_${PN}-brcm43430 = " \
>      /lib/firmware/brcm/brcmfmac43430-sdio.bin \
> --
> 2.10.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

