Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web09.9159.1581099901695724542
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Feb 2020 10:25:02 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id F0C2640C1C;
	Fri,  7 Feb 2020 18:25:00 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PtCDJZxTmL5V; Fri,  7 Feb 2020 18:25:00 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id D74AD40C10;
	Fri,  7 Feb 2020 18:24:59 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id 3DF4E1743E1; Fri,  7 Feb 2020 13:24:59 -0500 (EST)
Date: Fri, 7 Feb 2020 13:24:59 -0500
From: "Denys Dmytriyenko" <denis@denix.org>
To: akuster <akuster808@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-security][PATCH] tpm2-tools: update to 4.1.1
Message-ID: <20200207182459.GT4735@denix.org>
References: <20200207164752.11942-1-akuster808@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200207164752.11942-1-akuster808@gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

format-patch -M?

On Fri, Feb 07, 2020 at 08:47:52AM -0800, akuster wrote:
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  .../recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb | 14 --------------
>  .../recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb | 17 +++++++++++++++++
>  2 files changed, 17 insertions(+), 14 deletions(-)
>  delete mode 100644 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb
>  create mode 100644 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb
> 
> diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb
> deleted file mode 100644
> index 8f94972..0000000
> --- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb
> +++ /dev/null
> @@ -1,14 +0,0 @@
> -SUMMARY = "Tools for TPM2."
> -DESCRIPTION = "tpm2-tools"
> -LICENSE = "BSD"
> -LIC_FILES_CHKSUM = "file://LICENSE;md5=0eb1216e46938bd723098d93a23c3bcc"
> -SECTION = "tpm"
> -
> -DEPENDS = "tpm2-abrmd tpm2-tss openssl curl autoconf-archive"
> -
> -SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz"
> -
> -SRC_URI[md5sum] = "071aa40bc8721700ea4ed19cc2fdeabf"
> -SRC_URI[sha256sum] = "ccec3fca6370341a102c5c2ef1ddb4e5cd242bf1bbc6c51d969f77fc78ca67d1"
> -
> -inherit autotools pkgconfig bash-completion
> diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb
> new file mode 100644
> index 0000000..e90dcfe
> --- /dev/null
> +++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb
> @@ -0,0 +1,17 @@
> +SUMMARY = "Tools for TPM2."
> +DESCRIPTION = "tpm2-tools"
> +LICENSE = "BSD"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=0eb1216e46938bd723098d93a23c3bcc"
> +SECTION = "tpm"
> +
> +DEPENDS = "tpm2-abrmd tpm2-tss openssl curl autoconf-archive"
> +
> +SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz"
> +
> +SRC_URI[md5sum] = "701ae9e8c8cbdd37d89c8ad774f55395"
> +SRC_URI[sha256sum] = "40b9263d8b949bd2bc03a3cd60fa242e27116727467f9bbdd0b5f2539a25a7b1"
> +SRC_URI[sha1sum] = "d097d321237983435f05c974533ad90e6f20acef"
> +SRC_URI[sha384sum] = "396547f400e4f5626d7741d77ec543f312d94e6697899f4c36260d15fab3f4f971ad2c0487e6eaa2d60256f3cf68f85f"
> +SRC_URI[sha512sum] = "25952cf947f0acd16b1a8dbd3ac8573bce85ff970a7e24c290c4f9cd29418e77a3e48ac82c932fbd250887a9303ab301ff92db594c2fffaba47b873382444d26"
> +
> +inherit autotools pkgconfig bash-completion
> -- 
> 2.17.1
> 

> 

