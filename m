Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A82AC77B61
	for <webhook@archiver.kernel.org>; Mon, 24 Apr 2023 12:09:31 +0000 (UTC)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
 by mx.groups.io with SMTP id smtpd.web10.49367.1682338162655145207
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Apr 2023 05:09:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=rgkSgm/R;
 spf=pass (domain: gmail.com, ip: 209.85.128.182, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-54fae5e9ec7so48177977b3.1
        for <yocto@lists.yoctoproject.org>; Mon, 24 Apr 2023 05:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682338162; x=1684930162;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=66AqwUomYYEpcPyiUI6xe12lvc+t4b5ZZ0M7iYQOg7g=;
        b=rgkSgm/RHaPoA4y9XAncapOQk1Dmz/S3z1W0xumXIsHwNLpafH8hUzpG5gkAVYYlad
         fC8qJXyz1SOwOgEgxMTOS6re3Td7ecWLahtYQNW8mQtLJgNMUQGb/TpbXQzFve7JTgAO
         BjLaUWcnrT/bCNk+uARtDAW0mNFUwCYpleofbcWRmoJF4QS7OrYfYs5OD3kZEL6pewzv
         0mhMUi+Gy36UFAx+EXuzPh4TY4qQwsfJdpzSZigl8uKt5lVTELTZVFi7jKUOnrjwu1E1
         E2/63jXLjv40N6fM3/onvIYfltsYL+doGrQRA+EG9haxY2IZZTH+95EwtHeho3O9NUPj
         fLEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682338162; x=1684930162;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=66AqwUomYYEpcPyiUI6xe12lvc+t4b5ZZ0M7iYQOg7g=;
        b=f3oc7gAV25hSHLyHKp7brBmrJuujADkLtTuvNz9WJfOdWTS4VU66Xtb/nWF1tOM25V
         3OPbogVNt3p0OSRG7WABuFLqL3YI4A1jT7ISrrSaOg9PD+FJYLWkmVkgHDfqyNLetG82
         zPiOH24cZX1sVFCXDzqdUoNVYvH41CO1acQ8R8fKIyOvjnwOvJ4pNeJLRbsQYmiQc76D
         a07rqi8cvcUsCk65cn6xPivR1EHpi7tibVyLPc7y2t97cgef4mhHWVIXXfloQYvPzZZb
         4HcweqRhlXbOKK092i2GjXwVP8dT6OuCo5qOzIInG9wZZ/H0xSRjqn7pD02V5NGyPobI
         F14w==
X-Gm-Message-State: AAQBX9d1vYcFiR0hf7cRVz845d4vxC3/gtwd/D68DD5OGwnS7PcPqoIe
	l+0/dzbRbGsDaxUouvbNiPk=
X-Google-Smtp-Source: AKy350Z0PRPYiy4reJQaiAE1y/DygTxib6hLxY6VkQ4LCc5aZS0LA7jeqDPgn4J4pufmGCFjunF0Sw==
X-Received: by 2002:a81:5d02:0:b0:54f:8b56:bb3 with SMTP id r2-20020a815d02000000b0054f8b560bb3mr7593840ywb.5.1682338161719;
        Mon, 24 Apr 2023 05:09:21 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:ff19:de76:6377:dd58? ([2600:1700:9190:ba10:ff19:de76:6377:dd58])
        by smtp.gmail.com with ESMTPSA id v131-20020a816189000000b00545a08184c9sm2905215ywb.89.2023.04.24.05.09.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Apr 2023 05:09:20 -0700 (PDT)
Message-ID: <f9879f12-9737-1c99-ff06-9e39528262ff@gmail.com>
Date: Mon, 24 Apr 2023 08:09:18 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [meta-security] Unnecessary/optional dependencies in tpm2-tools
Content-Language: en-US
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
References: <DB5PR02MB102133E92A506FE021382BDF5EF609@DB5PR02MB10213.eurprd02.prod.outlook.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <DB5PR02MB102133E92A506FE021382BDF5EF609@DB5PR02MB10213.eurprd02.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Apr 2023 12:09:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59766

Hello Peter,

On 4/21/23 7:15 PM, Peter Kjellerstedt wrote:
> I have a team that is looking at starting to use some of the
> recipes from meta-security and I am currently reviewing their
> changes to our layers. In a bbappend for tpm2-tools they
> removed the build dependency on tpm2-abrmd, which got me
> wondering why it was there in the first place. After doing
> some experimentation, I came up with the following patch:
>
> diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.5.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.5.bb
> index ef73238..8119bb1 100644
> --- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.5.bb
> +++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.5.bb
> @@ -4,7 +4,7 @@ LICENSE = "BSD-3-Clause"
>   LIC_FILES_CHKSUM = "file://docs/LICENSE;md5=a846608d090aa64494c45fc147cc12e3"
>   SECTION = "tpm"
>
> -DEPENDS = "tpm2-abrmd tpm2-tss openssl curl autoconf-archive"
> +DEPENDS = "tpm2-tss openssl curl"
>
>   SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz"
>
> @@ -13,6 +13,3 @@ SRC_URI[sha256sum] = "1fdb49c730537bfdaed088884881a61e3bfd121e957ec0bdceeec02612
>   UPSTREAM_CHECK_URI = "https://github.com/tpm2-software/${BPN}/releases"
>
>   inherit autotools pkgconfig bash-completion
> -
> -# need tss-esys
> -RDEPENDS:${PN} = "libtss2 tpm2-abrmd"
>
> Motivation for the proposed changes above:
>
> * The dependency on autoconf-archive is only needed when
>    building from the Git repository (and it should really be
>    autoconf-archive-native). This dependency can probably be
>    removed from more recipes that now build from tar balls
>    where they originally built from Git repositories.
> * Removing the build dependency on tpm2-abrmd does not change
>    the output in any way, i.e., nothing is used from it.
> * The runtime dependency on libtss2 is added automatically by
>    bitbake since /usr/bin/tpm2 is linked with libtss2-esys.so.0.
> * The runtime dependency on tpm2-abrmd is AFAICT optional. And
>    in my book such dependencies are better handled at a higher
>    level, e.g., by depending on packagegroup-security-tpm2. If
>    it is removed, the instructions in meta-parsec/README.md that
>    references tpm2-tools may need to be complemented by a
>    reference to tpm2-abrmd. Similar for the runtime dependencies
>    in tpm2-pkcs11. An alternative to removing the runtime
>    dependency would be to instead introduce a PACKAGECONFIG for
>    it, but I do not like PACKAGECONFIGs that only add runtime
>    dependencies.

Thanks for the write up and bringing it to my attention.
If you didn't know already, there are some basic QA tests for TPM2. I 
ran those with your changes above and they pass.
any plans of sending a patch?

BR,
Armin

>
> Bear in mind that I know nothing about tpm2. I am looking at
> this strictly from what is produced when building the recipe.
>
> Comments?

>
> //Peter
>


