Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E485C77B75
	for <webhook@archiver.kernel.org>; Mon,  8 May 2023 13:35:09 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web10.107554.1683552899848233799
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 May 2023 06:35:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=ojkF4RrY;
 spf=pass (domain: linaro.org, ip: 209.85.208.173, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2ac80da3443so51717211fa.0
        for <yocto@lists.yoctoproject.org>; Mon, 08 May 2023 06:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683552898; x=1686144898;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=H0iSHoXaPn/jtdrqoYqKVo4OsEFFoF2VIiz7FOoBLDc=;
        b=ojkF4RrYJ0pkWwcM0CubPanunmen/j1at20HA5/fEoPBJ2Y8cFo+H/HltxQnIIcU8d
         BP2sBm/B/V1u1GluBKbvprJrdx65dXdh4IOWRMUZcA8k8Vn22maagzorJkRbNv42AvWQ
         wL6RU0uKGVgXbqrxTzlsseUhIlu8dMuco2dyZasQmwFqMsmtMmGAuj+0KJiYi/idIbqe
         tLiyPFdYRP57CriYjTJn3UmWyUHejmkBXlBPPOXepUdOGdOmU8D0fSbdkIpOXNdIfnQy
         b0PSkcy2Wy4KC/8NfyeRTiuL9MokXiMHiUkn8KwYstynFCNPFba7g2pGs/q7Yfgd6vjg
         pIuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683552898; x=1686144898;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H0iSHoXaPn/jtdrqoYqKVo4OsEFFoF2VIiz7FOoBLDc=;
        b=g3/6M2W9uw+4qqXcNrXzp44ph+uqAqvmlK7S96BdEto17cw0KQZXgA7SisGi5tbLv8
         pi2e1tTpw3gkJGFdnurLATeqjGTARxWdj/X3i6Ej5eTkNSuIlVzswKGkvoUw3FbHRI11
         WRVoFS13+Ok0dcFWItEZfq/HQ1aAWjwzCHfpmPtqMjTYSqgkoeZUUBtZTBnjMouRrxDy
         8zGXNQ1NFucfuBY1m+KWxblNAyMjKmWeGwPpgDNsO0I9eB3UqN5h3dj9Gudyo+xl7fhO
         tUMYdr9SivO4EIQMX26CwwxN8zfA26IvX76Oxu4OfkW7kEeFUv/UnHr4UiS+5auU4lzS
         JtHQ==
X-Gm-Message-State: AC+VfDzox+mkmfOyNq5dzEqifTXg+lBJSMUeTz4lJrgO/1uXVZteCLip
	kGFnhG2DPYI6ldefDhdM097PUw==
X-Google-Smtp-Source: ACHHUZ6Wdo92iB3AD8gzd/iN3Mpk5idyrlSrBAcDyo4t+wyxYVOEi26Kv6rOnKNJx2O04Z7/6D6c3Q==
X-Received: by 2002:a2e:9017:0:b0:2a8:d335:350c with SMTP id h23-20020a2e9017000000b002a8d335350cmr2582899ljg.36.1683552897845;
        Mon, 08 May 2023 06:34:57 -0700 (PDT)
Received: from nuoska (dsl-olubng11-54f814-94.dhcp.inet.fi. [84.248.20.94])
        by smtp.gmail.com with ESMTPSA id t2-20020ac24c02000000b004eb4074f40fsm1295058lfq.241.2023.05.08.06.34.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 May 2023 06:34:57 -0700 (PDT)
Date: Mon, 8 May 2023 16:34:55 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: peter.marko@siemens.com
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-security][kirkstone][PATCH] tpm2-tss: upgrade to
 3.2.2 to fix CVE-2023-22745
Message-ID: <ZFj6fwaS5hJ9hs/D@nuoska>
References: <20230508132334.427518-1-peter.marko@siemens.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230508132334.427518-1-peter.marko@siemens.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 May 2023 13:35:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59904

Hi,

Since master has 4.0.1 and CVE is impacting:

https://nvd.nist.gov/vuln/detail/CVE-2023-22745

"Up to (including)
4.0.0"

then I guess master branch and 4.0.1 is not impacted. Would be nice to
have this info in commit message though.

Cheers,

-Mikko

On Mon, May 08, 2023 at 03:23:34PM +0200, Peter Marko via lists.yoctoproject.org wrote:
> Changelog:
>   3.2.2
>     A buffer overflow in tss2-rc as CVE-2023-22745.
>     The drv layer in tss2-rc should have been the policy layer.
>     Spec deviation in Fapi_GetDescription caused description to be NULL when it should be empty string.
>     This is API breaking but considered a bug since it deviated from the FAPI spec.
>     FAPI: undefined reference to curl_url_strerror when using curl less than 7.80.0.
>   3.2.1
>     Makefile.am: make all EXTRA_DIST includes unconditional to fix pristine tars
>     Fix usage of NULL pointer if Esys_TR_SetAuth is calles with ESYS_TR_NONE.
>     Store VERSION into the release tarball.
>     fapi: fix usage of policy_nv with a TPM nv index.
>     Tss2_Sys_Flushcontext: flushHandle was encoded as a handleArea handle and not as parameter one, this affected the contents of cpHash.
>     linking tcti for libtpms against tss2-tctildr. It should be linked against tss2-mu.
>     build: Remove erroneous trailing comma in linker option. Bug #2391.
>     esys: fix allow usage of HMAC sessions for Esys_TR_FromTPMPublic.
>     test: build with opaque FILE structure like in musl libc.
>     Usage of a second profile in a path was not possible because the default profile was always used.
>     FAPI: Fix provisioning if auth value for storage hierarchy was set.
>     FAPI: Fix recreation of EK.
>     FAPI: Fix usage of lockout auth value in Fapi_Provison.
>     FAPI: Fix loading of key in policy execution.
>     FAPI: Fix Fapi_ChangeAuth updates on hierarchy objects not being reflected across profiles.
>     Esys_PCR_SetAuthValue: remembers the auth like other SetAutg ESAPI functions.
>     tests: esys-pcr-auth-value.int moved to destructive tests.
>     FAPI: Fix double free if keystore is corrupted.
>     Spec deviation in Fapi_GetDescription caused description to be NULL when it should be empty string.
>         This is API breaking but considered a bug since it deviated from the FAPI spec.
> 
> Signed-off-by: Peter Marko <peter.marko@siemens.com>
> ---
>  .../tpm2-tss/{tpm2-tss_3.2.0.bb => tpm2-tss_3.2.2.bb}      | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
>  rename meta-tpm/recipes-tpm2/tpm2-tss/{tpm2-tss_3.2.0.bb => tpm2-tss_3.2.2.bb} (91%)
> 
> diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.0.bb b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.2.bb
> similarity index 91%
> rename from meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.0.bb
> rename to meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.2.bb
> index 8440bb9..9b76c2f 100644
> --- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.0.bb
> +++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.2.bb
> @@ -10,7 +10,7 @@ SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN
>             file://fixup_hosttools.patch \
>             "
>  
> -SRC_URI[sha256sum] = "48305e4144dcf6d10f3b25b7bccf0189fd2d1186feafd8cd68c6b17ecf0d7912"
> +SRC_URI[sha256sum] = "ba9e52117f254f357ff502e7d60fce652b3bfb26327d236bbf5ab634235e40f1"
>  
>  inherit autotools pkgconfig systemd useradd
>  
> @@ -26,11 +26,6 @@ USERADD_PACKAGES = "${PN}"
>  GROUPADD_PARAM:${PN} = "--system tss"
>  USERADD_PARAM:${PN} = "--system -M -d /var/lib/tpm -s /bin/false -g tss tss"
>  
> -do_configure:prepend() {
> -    # do not extract the version number from git
> -    sed -i -e 's/m4_esyscmd_s(\[git describe --tags --always --dirty\])/${PV}/' ${S}/configure.ac
> -}
> -
>  do_install:append() {
>      # Remove /run as it is created on startup
>      rm -rf ${D}/run
> -- 
> 2.30.2
> 

> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59902): https://lists.yoctoproject.org/g/yocto/message/59902
> Mute This Topic: https://lists.yoctoproject.org/mt/98760863/7159507
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [mikko.rapeli@linaro.org]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


