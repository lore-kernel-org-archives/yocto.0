Return-Path: <kristian@klausen.dk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5BECC433F5
	for <webhook@archiver.kernel.org>; Wed, 29 Sep 2021 06:44:50 +0000 (UTC)
Received: from mail.klausen.dk (mail.klausen.dk [157.90.24.29])
 by mx.groups.io with SMTP id smtpd.web10.5420.1632897888817975080
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Sep 2021 23:44:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@klausen.dk header.s=dkim header.b=BcC0UvRt;
 spf=pass (domain: klausen.dk, ip: 157.90.24.29,
 mailfrom: kristian@klausen.dk)
Date: Wed, 29 Sep 2021 08:44:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=klausen.dk; s=dkim;
	t=1632897885;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=sEZIVFpGGb0KxOcPeM3oXrr38HeuK/oNR3OLUfhvR4M=;
	b=BcC0UvRthwIATH2Ei8ftt8KoyvwfDgrpjacotWUeTLoiwyfZMsvV1l0CTjSsBdmBD6EEpm
	fuD2qhMdvLDI0J+ymw6gYkh62r+ClhCtLGhmASi9VdRAwjDla9f2eGQgg8+2SoWd80Ipc8
	ighqedvHkOfhJFqtW/Iz8caRmb5YRT4=
From: Kristian Klausen <kristian@klausen.dk>
To: Armin Kuster <akuster808@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-security][PATCH 2/2] swtpm: fix build issues of
 missing expect
Message-ID: <YVQLW66LKT7DXF1Z@bob>
References: <20210928233909.3574965-1-akuster808@gmail.com>
 <20210928233909.3574965-2-akuster808@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210928233909.3574965-2-akuster808@gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Sep 2021 06:44:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54904

Den Tue, Sep 28, 2021 at 16:39:09 -0700 skrev Armin Kuster:
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb
> index 807c02b..d602ee0 100644
> --- a/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb
> +++ b/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb
> @@ -4,7 +4,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=fe8092c832b71ef20dfe4c6d3decb3a8"
>  SECTION = "apps"
>  
>  # coreutils-native and net-tools-native are reportedly only required for the tests
> -DEPENDS = "libtasn1 coreutils-native expect socat glib-2.0 net-tools-native libtpm json-glib"
> +DEPENDS = "libtasn1 coreutils-native expect socat glib-2.0 net-tools-native libtpm json-glib expect expect-native"

expect is there twice now (+ native). Would expect-native be enough or 
do we also need expect?

>  
>  SRCREV = "98187d24fe14851653a7c46eb16e9c5f0b9beaa1"
>  SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=stable-0.6 \
> @@ -28,7 +28,7 @@ PACKAGECONFIG[openssl] = "--with-openssl, --without-openssl, openssl"
>  # expect, bash, tpm2-pkcs11-tools (tpm2_ptool), tpmtool and certtool is
>  # used by swtpm-create-tpmca (the last two is provided by gnutls)
>  # gnutls is required by: swtpm-create-tpmca, swtpm-localca and swtpm_cert
> -PACKAGECONFIG[gnutls] = "--with-gnutls, --without-gnutls, gnutls, gnutls, expect bash tpm2-pkcs11-tools"
> +PACKAGECONFIG[gnutls] = "--with-gnutls, --without-gnutls, gnutls, gnutls, bash tpm2-pkcs11-tools"

expect is needed as a runtime dependency for swtpm-create-tpmca, but I 
added it as a recommended dependency as I don't think all people are 
interesting in swtpm-create-tpmca working out-of-the-box.
expect should still be here, no?

>  PACKAGECONFIG[selinux] = "--with-selinux, --without-selinux, libselinux"
>  PACKAGECONFIG[cuse] = "--with-cuse, --without-cuse, fuse"
>  PACKAGECONFIG[seccomp] = "--with-seccomp, --without-seccomp, libseccomp"
> -- 
> 2.25.1
> 

> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#54899): https://lists.yoctoproject.org/g/yocto/message/54899
> Mute This Topic: https://lists.yoctoproject.org/mt/85937662/6376886
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [kristian@klausen.dk]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


