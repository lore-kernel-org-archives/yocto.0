Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
 by mx.groups.io with SMTP id smtpd.web11.13271.1618408551076144893
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Apr 2021 06:55:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rzyX5A2l;
 spf=pass (domain: gmail.com, ip: 209.85.214.176, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f176.google.com with SMTP id u7so8332566plr.6
        for <yocto@lists.yoctoproject.org>; Wed, 14 Apr 2021 06:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=4w2pvV46/Nh9uaaLNp7uzQorvukhJrwNZUJmWeRb2g0=;
        b=rzyX5A2lXvEQTEkLepJtZ0oI2OI2pj/0IFBP+ZOWqvtCr6jBL2jWzUE4z/9uC1UKzJ
         O+wVO502Gy8f40LtlR4qPOHxsMgjreN2Wnj0u/u01L8SKku6iaTxucfdS5u2oa2i40iW
         A+SPxIULY+/l8DRraPlVGVzamhpgWfwEuLLnZiedFztvhD8tFAjRhWfra1Dgk5sRE9L8
         31Hwv/sE/+5LrNUr5eAzvNH0w4M/mU5x2ilYvUKJhOmqHup8WtnXFF3TIz+FFkF3yGXL
         y/UR1whLrCZylLUwPxq5ZNRL1DbQxg+3jaVKpJ7uYbxiIjVvRNqHgN2PlX6StKGtCvw3
         7CxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=4w2pvV46/Nh9uaaLNp7uzQorvukhJrwNZUJmWeRb2g0=;
        b=hsYWNEs3sN22ayKYsflhvUCHWCcku1CvnWRIIX8DijDRmM0Bt1n29qulY3zNlGKU+w
         jr4plotcG5T/PYm7PUTJjQKIUwxdPNffcS74Ikhbwd+2gFEjNxTTzp0bR7KrBDU/jw5J
         Br9xlWg5O4AXrbgHyQ8lfe0tC/MtUTInCwNtpTQp1vD/ax4rGAmRxYtQzlUDzR9/kHJF
         adBct5l6tpp1FEW36AOZRVGCzH+RuCzQDKn+HaubUVIIg1qE0vUdLk+3hrsmsrqshXxv
         QlrN2pf88GNe6CDwHmPdQVwSL2rq7dNofudIGiEti4RfIwQr4QowSfd85Jy43RkBflZd
         S00A==
X-Gm-Message-State: AOAM531i6u2uBpBkOsL81ZsjiU1BR475ytC5e6MiSZQbDwP/KuqOsiwH
	V74pOJARRM8hoKlKE75aaKG6Njtt9jO9EA==
X-Google-Smtp-Source: ABdhPJxgEkYEMlzIZn90GqBPE44P6b08bLP0+LC+pILbrDBLQxHrcz0Ge6U8qrUoEcblaIxNzJFMHQ==
X-Received: by 2002:a17:902:c408:b029:e7:3242:5690 with SMTP id k8-20020a170902c408b02900e732425690mr38450045plk.85.1618408550470;
        Wed, 14 Apr 2021 06:55:50 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:2d0c:893d:5593:863c? ([2601:202:4180:a5c0:2d0c:893d:5593:863c])
        by smtp.gmail.com with ESMTPSA id ms9sm1336273pjb.32.2021.04.14.06.55.49
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 06:55:49 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] Use libest "main" branch instead of "master".
To: yocto@lists.yoctoproject.org
References: <20210407101954.1422-1-Anton.Antonov@arm.com>
From: "Armin Kuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <fc4bb981-3826-589e-db64-1a70bccfe77a@gmail.com>
Date: Wed, 14 Apr 2021 06:55:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210407101954.1422-1-Anton.Antonov@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

merged

thanks,
armin

On 4/7/21 3:19 AM, Anton Antonov wrote:
> This patch fixes the issue:
>
> WARNING: libest-3.2.0-r0 do_fetch: Failed to fetch URL git://github.com/cisco/libest, attempting MIRRORS if available
> ERROR: libest-3.2.0-r0 do_fetch: Fetcher failure: Unable to find revision 4ca02c6d7540f2b1bcea278a4fbe373daac7103b in branch master even from upstream
> ERROR: libest-3.2.0-r0 do_fetch: Fetcher failure for URL: 'git://github.com/cisco/libest'. Unable to fetch URL from any source.
>
> Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>
> ---
>  recipes-security/libest/libest_3.2.0.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-security/libest/libest_3.2.0.bb b/recipes-security/libest/libest_3.2.0.bb
> index f993bd6..5b6dc99 100644
> --- a/recipes-security/libest/libest_3.2.0.bb
> +++ b/recipes-security/libest/libest_3.2.0.bb
> @@ -6,7 +6,7 @@ LICENSE = "OpenSSL"
>  LIC_FILES_CHKSUM = "file://LICENSE;md5=ecb78acde8e3b795de8ef6b61aed5885"
>  
>  SRCREV = "4ca02c6d7540f2b1bcea278a4fbe373daac7103b"
> -SRC_URI = "git://github.com/cisco/libest"
> +SRC_URI = "git://github.com/cisco/libest;branch=main"
>  
>  DEPENDS = "openssl"
>  
>
> 
>

