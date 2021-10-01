Return-Path: <kristian@klausen.dk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C3A0C433F5
	for <webhook@archiver.kernel.org>; Fri,  1 Oct 2021 23:06:08 +0000 (UTC)
Received: from mail.klausen.dk (mail.klausen.dk [157.90.24.29])
 by mx.groups.io with SMTP id smtpd.web11.4608.1633129566393561190
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 Oct 2021 16:06:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@klausen.dk header.s=dkim header.b=EWFvYghc;
 spf=pass (domain: klausen.dk, ip: 157.90.24.29,
 mailfrom: kristian@klausen.dk)
Date: Sat, 2 Oct 2021 01:06:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=klausen.dk; s=dkim;
	t=1633129562;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=T5tRZ+BuO6RHDtqm+7b/1hjJjYCwq9JQHLJRIi55sIw=;
	b=EWFvYghcrqGiOT/S0W9ZERh6fKiTUPLsFZT8v+Uo8MZehe740kgw0TQj6xqvbE7Md51fN5
	BC3duQ2bdSTskpCOiyabn4ynyMbGiiATZ/tCWcNM1tj7sfLbVCix7Kvm7i36eWdzpMMVZm
	66rzlsNCDj97321oRKCgTWi1qYvaWMY=
From: Kristian Klausen <kristian@klausen.dk>
To: Armin Kuster <akuster808@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-tpm][v2][PATCH] swtpm: fix build issues of missing
 expect
Message-ID: <YVeUWUdJeOStEDyY@bob>
References: <20211001222517.2359884-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211001222517.2359884-1-akuster808@gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 01 Oct 2021 23:06:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54929

Den Fri, Oct 01, 2021 at 15:25:17 -0700 skrev Armin Kuster:
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> 
> --
> V2]
> Only need expect-native
> Clean up PACKAGECONFGI[gnutils] to conform to spec
> ---
>  meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb
> index 807c02b..0087367 100644
> --- a/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb
> +++ b/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb
> @@ -4,7 +4,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=fe8092c832b71ef20dfe4c6d3decb3a8"
>  SECTION = "apps"
>  
>  # coreutils-native and net-tools-native are reportedly only required for the tests
> -DEPENDS = "libtasn1 coreutils-native expect socat glib-2.0 net-tools-native libtpm json-glib"
> +DEPENDS = "libtasn1 coreutils-native expect-native socat glib-2.0 net-tools-native libtpm json-glib"
>  
>  SRCREV = "98187d24fe14851653a7c46eb16e9c5f0b9beaa1"
>  SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=stable-0.6 \
> @@ -28,7 +28,7 @@ PACKAGECONFIG[openssl] = "--with-openssl, --without-openssl, openssl"
>  # expect, bash, tpm2-pkcs11-tools (tpm2_ptool), tpmtool and certtool is
>  # used by swtpm-create-tpmca (the last two is provided by gnutls)
>  # gnutls is required by: swtpm-create-tpmca, swtpm-localca and swtpm_cert
> -PACKAGECONFIG[gnutls] = "--with-gnutls, --without-gnutls, gnutls, gnutls, expect bash tpm2-pkcs11-tools"
> +PACKAGECONFIG[gnutls] = "--with-gnutls, --without-gnutls, gnutls, gnutls expect bash tpm2-pkcs11-tools"

Hi Armin

Support for RRECOMMENDS in the PACKAGECONFIG was added some years 
ago[1][2]. Whatever they should be RRECOMMENDS or RDEPENDS I'm not sure 
about (I don't think swtpm-create-tpmca is a hard requirement for most 
people).

If you like I can squash the changes into my own patch and resend it.

[1] https://git.openembedded.org/openembedded-core/commit/?id=ec96c985ce1c888c3ce3c4d964d7a106c3c88a5c
[2] https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-PACKAGECONFIG

Cheers,
Kristian

>  PACKAGECONFIG[selinux] = "--with-selinux, --without-selinux, libselinux"
>  PACKAGECONFIG[cuse] = "--with-cuse, --without-cuse, fuse"
>  PACKAGECONFIG[seccomp] = "--with-seccomp, --without-seccomp, libseccomp"
> -- 
> 2.25.1
> 

> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#54928): https://lists.yoctoproject.org/g/yocto/message/54928
> Mute This Topic: https://lists.yoctoproject.org/mt/86012566/6376886
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [kristian@klausen.dk]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


