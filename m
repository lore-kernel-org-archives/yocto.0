Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 433E5E00D4E; Wed, 25 May 2016 18:50:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f169.google.com (mail-yw0-f169.google.com
	[209.85.161.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2E31E00D44
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 18:50:06 -0700 (PDT)
Received: by mail-yw0-f169.google.com with SMTP id h19so63932873ywc.0
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 18:50:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=8xz3r5NxocUTKN0yZIB850L0rV4iK7HgnO2w3l/8ufY=;
	b=KqIHs+33tE6/js+LMRMeQ3Jg7fWHI4JymWxQ9S6jdXLDNKymOJYKFad0qX40xc7iiN
	b49qFzeKKnca4FXGzKQOj8W0QyNwX5ICeo7m+3TViqbE1IynjizdKhD8fS5dsi4Dl+6H
	Y3L13TEZERBh1RNvZxAC3rafOo0OQCWcDtzMFUOndUjFiRLNv+sa4ZcRPULI1QBw88kY
	w3bcU9eCt11JH/eMeBvjBuinh+RyVq9EJ0ejmwWq6fcN+U9w2yfLesKnZMq/CgSSM6PM
	apV8UY4Bc4xAqDoCBztFLAQAHAncPI3nbrsLNRQ5LAfhjMTL/HLt0kvUPuHyVXtwArmW
	gx1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=8xz3r5NxocUTKN0yZIB850L0rV4iK7HgnO2w3l/8ufY=;
	b=SaytWNdJz1AJkuT3Sx+HDrD2O0hJda3m0Qoov5sWHaTzwCOBVZxzqd8k23k6cjlraH
	QlzAl9rQrB5N43QYlyrGF14y0FLnBupgP4C6JJaWvB5zJqUSxo/7AOOAT9OYBMNCY0/l
	fOFdAg8SUgDv+GfD3tJpyR/biR4wocmDLHthgOW49AwC14a0pKedDzUjafebScT0J/45
	7C4Hnu5biw6ZTLRIKgDHtPMxwtH/u3hsmp9KyDKytZ7GtC8mN2VPfKN2kzsLhSeKz6HI
	CQrrWlpkXvHDtaWOFIVLje964ovemuECrGtfWqR0g+Vw/KTJh5Ob65t0CIV4UCiKFEZp
	WRRA==
X-Gm-Message-State: ALyK8tJuigGV1isHCJtQK5ugKPbUng6CnPTHxMM40jlPYaL01E4bGSKnUKSsNQ1KTMNbsr2g
X-Received: by 10.13.248.2 with SMTP id i2mr4344720ywf.134.1464227405141;
	Wed, 25 May 2016 18:50:05 -0700 (PDT)
Received: from [10.43.100.29] ([50.233.148.158])
	by smtp.googlemail.com with ESMTPSA id
	o5sm1102911ywo.38.2016.05.25.18.50.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 25 May 2016 18:50:04 -0700 (PDT)
To: Thomas Perrot <thomas.perrot@tupi.fr>, yocto@yoctoproject.org
References: <1464164678-30438-1-git-send-email-thomas.perrot@tupi.fr>
From: akuster <akuster@mvista.com>
Message-ID: <5746564B.3060303@mvista.com>
Date: Wed, 25 May 2016 18:50:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <1464164678-30438-1-git-send-email-thomas.perrot@tupi.fr>
Subject: Re: [meta-security][PATCH] Use bb.utils.contains instead of base_contains because it is deprecated
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
X-List-Received-Date: Thu, 26 May 2016 01:50:08 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 05/25/2016 01:24 AM, Thomas Perrot wrote:
> Signed-off-by: Thomas Perrot <thomas.perrot@tupi.fr>
> ---
>  recipes-kernel/linux/linux-yocto_4.1.bbappend | 8 ++++----

merged.

>  recipes-security/clamav/clamav_0.99.1.bb      | 2 +-
>  recipes-security/sssd/sssd_1.13.3.bb          | 2 +-
>  recipes-tpm/trousers/trousers_0.3.13.bb       | 4 ++--

these last three are fixed in master-next. I just merged over master-next.

Thanks,

- armin
>  4 files changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/recipes-kernel/linux/linux-yocto_4.1.bbappend b/recipes-kernel/linux/linux-yocto_4.1.bbappend
> index 1043d5c..dc90e31 100644
> --- a/recipes-kernel/linux/linux-yocto_4.1.bbappend
> +++ b/recipes-kernel/linux/linux-yocto_4.1.bbappend
> @@ -2,8 +2,8 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.1:"
>  
>  # Tomoyo kernel support
>  SRC_URI += "\
> -	${@base_contains('DISTRO_FEATURES', 'tomoyo', ' file://ccs-tools-yocto.4.1.patch', '', d)} \
> -	${@base_contains('DISTRO_FEATURES', 'tomoyo', ' file://ccs-tools-yocto_security.patch', '', d)} \
> -	${@base_contains('DISTRO_FEATURES', 'tomoyo', ' file://tomoyo.cfg', '', d)} \
> -	${@base_contains('DISTRO_FEATURES', 'tomoyo', ' file://tomoyo.scc', '', d)} \
> +	${@bb.utils.contains('DISTRO_FEATURES', 'tomoyo', ' file://ccs-tools-yocto.4.1.patch', '', d)} \
> +	${@bb.utils.contains('DISTRO_FEATURES', 'tomoyo', ' file://ccs-tools-yocto_security.patch', '', d)} \
> +	${@bb.utils.contains('DISTRO_FEATURES', 'tomoyo', ' file://tomoyo.cfg', '', d)} \
> +	${@bb.utils.contains('DISTRO_FEATURES', 'tomoyo', ' file://tomoyo.scc', '', d)} \
>  	"
> diff --git a/recipes-security/clamav/clamav_0.99.1.bb b/recipes-security/clamav/clamav_0.99.1.bb
> index edccc78..461015f 100644
> --- a/recipes-security/clamav/clamav_0.99.1.bb
> +++ b/recipes-security/clamav/clamav_0.99.1.bb
> @@ -30,7 +30,7 @@ GID = "clamav"
>  
>  PACKAGECONFIG ?= "ncurses openssl bz2 zlib "
>  PACKAGECONFIG += " ${@bb.utils.contains("DISTRO_FEATURES", "ipv6", "ipv6", "", d)}"
> -PACKAGECONFIG += "${@base_contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
> +PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
>  PACKAGECONFIG[pcre] = "--with-pcre=${STAGING_LIBDIR},  --without-pcre, libpcre"
>  PACKAGECONFIG[xml] = "--with-xml=${STAGING_LIBDIR}/.., --with-xml=no, libxml2,"
>  PACKAGECONFIG[json] = "--with-libjson=${STAGING_LIBDIR}, --without-libjson, json,"
> diff --git a/recipes-security/sssd/sssd_1.13.3.bb b/recipes-security/sssd/sssd_1.13.3.bb
> index d538af3..fd4f2a2 100644
> --- a/recipes-security/sssd/sssd_1.13.3.bb
> +++ b/recipes-security/sssd/sssd_1.13.3.bb
> @@ -24,7 +24,7 @@ CACHED_CONFIGUREVARS = "ac_cv_member_struct_ldap_conncb_lc_arg=no \
>      "
>  
>  PACKAGECONFIG ?="nss"
> -PACKAGECONFIG += "${@base_contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
> +PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
>  
>  PACKAGECONFIG[ssh] = "--with-ssh, --with-ssh=no, "
>  PACKAGECONFIG[samba] = "--with-samba, --with-samba=no, samba"
> diff --git a/recipes-tpm/trousers/trousers_0.3.13.bb b/recipes-tpm/trousers/trousers_0.3.13.bb
> index 7001788..e274972 100644
> --- a/recipes-tpm/trousers/trousers_0.3.13.bb
> +++ b/recipes-tpm/trousers/trousers_0.3.13.bb
> @@ -17,7 +17,7 @@ SRC_URI[md5sum] = "ad508f97b406f6e48cd90e85d78e7ca8"
>  SRC_URI[sha256sum] = "bb908e4a3c88a17b247a4fc8e0fff3419d8a13170fe7bdfbe0e2c5c082a276d3"
>  
>  inherit autotools pkgconfig useradd update-rc.d
> -inherit ${@base_contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
> +inherit ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
>  
>  PACKAGECONFIG ?= "gmp "
>  PACKAGECONFIG[gmp] = "--with-gmp, --with-gmp=no, gmp"
> @@ -33,7 +33,7 @@ do_install_append() {
>      install -d ${D}${sysconfdir}/udev/rules.d
>      install -m 0644 ${WORKDIR}/trousers-udev.rules ${D}${sysconfdir}/udev/rules.d/45-trousers.rules
>  
> -    if ${@base_contains('DISTRO_FEATURES','systemd','true','false',d)}; then
> +    if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
>          install -d ${D}${systemd_unitdir}/system
>          install -m 0644 ${WORKDIR}/tcsd.service ${D}${systemd_unitdir}/system/
>          sed -i -e 's#@SBINDIR@#${sbindir}#g' ${D}${systemd_unitdir}/system/tcsd.service
> 

