Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4ABBE006EF; Wed, 14 May 2014 17:46:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ie0-f170.google.com (unknown [209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87E53E0053B
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 17:46:26 -0700 (PDT)
Received: by mail-ie0-f170.google.com with SMTP id ar20so364175iec.1
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 17:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=IB9HXEsJdjk0ukxtxZjKToFqDxcM0CT02Z19BZwRdLM=;
	b=PTEhHd+NivPCEs8G9ARn96fYbkqyJkM4mzeOw+YzL2YrUqYh3nX1Ksh2Q23Bc/xTAw
	N0BJxQQZvj3fWmpkr46IxTptqvxvN5hTOdLevT/IxoH/pr7XSnBHzPYlD4Jpxi2ExfS3
	d4PkvyWM7xekoJoxBueZmksHgkqQnofkdkStYY8K0JcD6Cdj+g01MpJj50OnI/NsaP2g
	f2Uzt3wQyQXJxYbqeCezqAjZmvY1UQrFbrVF+jqy6CpKHCG90i6OIaHZKJcHsnv3B0iQ
	y4PqMGSPqYAsgc1q6UblmHMiTr4TtAo7DwueUQRQQBH7Vqyx04p/DLVo0E5M40wgFnm9
	rSuA==
X-Received: by 10.50.65.3 with SMTP id t3mr51234768igs.20.1400114786073; Wed,
	14 May 2014 17:46:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.79.133 with HTTP; Wed, 14 May 2014 17:45:56 -0700 (PDT)
In-Reply-To: <1400106263-25100-3-git-send-email-akuster808@gmail.com>
References: <1400106263-25100-1-git-send-email-akuster808@gmail.com>
	<1400106263-25100-3-git-send-email-akuster808@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 14 May 2014 17:45:56 -0700
Message-ID: <CAMKF1sq9ZT2qgU47+WmzPYTNVMN0Jff2wY+oHcZafQ_Uerieyw@mail.gmail.com>
To: Armin Kuster <akuster808@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 2/9] Use wildcard in mesa bbappend name
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
X-List-Received-Date: Thu, 15 May 2014 00:46:29 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, May 14, 2014 at 3:24 PM, Armin Kuster <akuster808@gmail.com> wrote:
>     mesa: Use wildcard in version to minimize keeping in-sync
>     with Poky
>
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  recipes-graphics/mesa/mesa_9.2.%.bbappend | 6 ++++++
>  recipes-graphics/mesa/mesa_9.2.2.bbappend | 6 ------
>  2 files changed, 6 insertions(+), 6 deletions(-)
>  create mode 100644 recipes-graphics/mesa/mesa_9.2.%.bbappend
>  delete mode 100644 recipes-graphics/mesa/mesa_9.2.2.bbappend

mesa 10 is on its way

>
> diff --git a/recipes-graphics/mesa/mesa_9.2.%.bbappend b/recipes-graphics/mesa/mesa_9.2.%.bbappend
> new file mode 100644
> index 0000000..0004f71
> --- /dev/null
> +++ b/recipes-graphics/mesa/mesa_9.2.%.bbappend
> @@ -0,0 +1,6 @@
> +inherit enable-selinux
> +
> +# But wait!  There's more!  mesa builds a host program named builtin_compiler
> +# and it needs selinux, too.  We replace the PACKAGECONFIG[] in the bbclass.
> +#
> +PACKAGECONFIG[selinux] = "--enable-selinux,--disable-selinux,libselinux libselinux-native,"
> diff --git a/recipes-graphics/mesa/mesa_9.2.2.bbappend b/recipes-graphics/mesa/mesa_9.2.2.bbappend
> deleted file mode 100644
> index 0004f71..0000000
> --- a/recipes-graphics/mesa/mesa_9.2.2.bbappend
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -inherit enable-selinux
> -
> -# But wait!  There's more!  mesa builds a host program named builtin_compiler
> -# and it needs selinux, too.  We replace the PACKAGECONFIG[] in the bbclass.
> -#
> -PACKAGECONFIG[selinux] = "--enable-selinux,--disable-selinux,libselinux libselinux-native,"
> --
> 1.9.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

