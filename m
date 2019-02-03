Return-Path: <ken.sloat@ohmlinxelectronics.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8B27E00D2C; Sat,  2 Feb 2019 19:16:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
	[209.85.167.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBC7FE00B7D
	for <yocto@yoctoproject.org>; Sat,  2 Feb 2019 19:16:58 -0800 (PST)
Received: by mail-lf1-f43.google.com with SMTP id l10so7846385lfh.9
	for <yocto@yoctoproject.org>; Sat, 02 Feb 2019 19:16:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ohmlinxelectronics-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=MsVNe1huSQXDjmRvldvZa0pv4JrkUHGY2nNjCVJgjU0=;
	b=Arqvju4Zw6w8lDPkQF34yyPxVbFwdXEhLCtIWhBaYL7JnRUpIe3Zv3wnep660iD8Rl
	mQj2n0fgT5vYwUyXA4lU3H0CJfK4Y4IO4AicQYs4oteqCOyC/fxmdtT18RCEwjggO5Qg
	zGGf5FCAprayhSx8GF2bM6Uyv9Opojt9W53jZIiMbOLCAELI9xWbbZ9DTrX+NtW3R5LY
	v7zaBulIa2wZAXfYhbkO0KiytVvVGs3YeXuhyJO5Z0f3+lmolEXK1SvOHx1jo02zJq99
	p3c+q4t9AaBj3gA4jCXx4YiokjXuZrKOSfr9HQbHMXG2EHATZvY3RoPaOOnnN/UdT5rK
	OVdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=MsVNe1huSQXDjmRvldvZa0pv4JrkUHGY2nNjCVJgjU0=;
	b=YzJb6qcVQ0vbbpIoAKinhVU8RHx2J7hekzMpG3zMY566TCwW3bOcXg3b5lOsoRvOQ8
	6j3NA/mszDIdufMvshJsUFSxrE6/TvuhCU4RHR9jmvLD+hPLSuPc6e97HABFJCyoaMqf
	hdtb5H7PFN7MScYq2lTNI8EUbiHI2SG637hbc2H/85ZQHCqM9vUpTvOUirnv69i59U+Q
	zUYOJNOZz18n9GXiyfUlCLBY07RkCQ6bDYQtKXUFKV5yzRJtOT5t8UUVqVBaOU8Mvm95
	NnrqJAx72QDRr6jJTh36q/aYm50GJYp0kjxRGCNmOwMGwrWYTk43iDFM444C23pbZmM0
	fm3w==
X-Gm-Message-State: AJcUukeinjw/t32gli9+v0AMFRT3ynrGC5Gwzn+jLaBGIWnHIIjG4DMG
	EHraDxd39KsTrxi0wNSLyhQ/K1vkw+KODoSKGJl0nw==
X-Google-Smtp-Source: ALg8bN569hfN7XW5+JGQv7nZHjuoV4NRRlKKcoh7cmmciB1hLpgf8sPuxB5TGZuPtd7ElGdosnr07RsqNe1bsgFsSPw=
X-Received: by 2002:a19:9b50:: with SMTP id d77mr34476778lfe.137.1549163817576;
	Sat, 02 Feb 2019 19:16:57 -0800 (PST)
MIME-Version: 1.0
References: <CAPo_4QCE-N-tVUQhOF_Q3f18306TqXSrT+QOSO_Yg2C3Uo5ghw@mail.gmail.com>
	<4cbbfed2-f3cb-c2f2-10de-586c27b63b2c@windriver.com>
In-Reply-To: <4cbbfed2-f3cb-c2f2-10de-586c27b63b2c@windriver.com>
From: Ken Sloat <ken.sloat@ohmlinxelectronics.com>
Date: Sat, 2 Feb 2019 22:16:46 -0500
Message-ID: <CAPo_4QDzJCtRvytauoWhixKSV7EfL4h2LKrZGQuKRF3pZF_Now@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, Nate Drude <nate.drude@ohmlinxelectronics.com>
Subject: Re: Proper Use of KERNEL_MODULE_AUTOLOAD variable
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
X-List-Received-Date: Sun, 03 Feb 2019 03:16:59 -0000
Content-Type: text/plain; charset="UTF-8"

On Sat, Feb 2, 2019 at 10:03 PM Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
>
> On 2019-02-02 9:59 p.m., Ken Sloat wrote:
> > Hello,
> >
> > I have an out of tree kernel module which I want autoloaded at startup
> > on my system. Looking at the Yocto project manual, I see that one way
> > I can do this is to add the module name to the KERNEL_MODULE_AUTOLOAD
> > variable within my custom module recipe.
> >
> > What I have found is that the module-split class is indeed generating
> > the "/etc/modules-load.d/mymodule.conf" file, however this file is not
> > actually being installed. To be more precise it is appearing in the
> > "package" directory (i.e.
> > tmp/work/**/mymodule/package/etc/modules-load.d/mymodule.conf) but not
> > within the "image" directory (nor in my final rootfs).
> >
> > Is there something I'm missing in the usage of KERNEL_MODULE_AUTOLOAD?
> > Is the intention for this variable I add extra steps to manually
> > install this file in my recipe? FYI I'm using Morty.
>
> Can you provide your recipe ? It would make suggestions easier. For
> example, my first question is: Is the module being installed to your
> image via IMAGE_INSTALL, or some other similar variable ?
>
> Bruce
>
> >
> > Thanks,
> > Ken Sloat
> >
>

Hi Bruce,

Thanks for your quick reply. Yes the module is being installed via
image_install. Module is installed but generated conf file is not. See
recipe below:

require mymodule.inc

inherit module kernel-module-split

DEPENDS = "virtual/kernel"

EXTRA_OEMAKE_append = " \
    KERNELDIR=${STAGING_KERNEL_DIR} \
    "

MAKE_TARGETS = "module"

MODULE_NAME = "mymodule"

PKG_${PN} = "kernel-module-${MODULE_NAME}"

module_do_install() {
    install -d ${D}/lib/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME}
    install -m 0644 ${MODULE_NAME}.ko \
    ${D}/lib/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME}/${MODULE_NAME}.ko
}

FILES_${PN} = " \
    /lib/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME} \
"

KERNEL_MODULE_AUTOLOAD += "${MODULE_NAME}"

