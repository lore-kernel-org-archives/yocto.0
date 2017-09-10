Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCD16E00C35; Sun, 10 Sep 2017 09:08:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f43.google.com (mail-pg0-f43.google.com [74.125.83.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63ADFE00851
	for <yocto@yoctoproject.org>; Sun, 10 Sep 2017 09:08:57 -0700 (PDT)
Received: by mail-pg0-f43.google.com with SMTP id d8so11587295pgt.4
	for <yocto@yoctoproject.org>; Sun, 10 Sep 2017 09:08:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=o9lXLvNeEX+wxmW2erGmjD5zLIIWbmvG+f0pqSBSsIE=;
	b=ZMRls0tQ+AEjkjmhcyra+HiOOVGEbHdy9q8ssZcjPWSv2X8FYlN7RnyQa3QMm0uxD5
	2kJQ5nSmqMlnI9W+o3VJ3N7zrX38fsjmb5DgCoWPb/olmvQ121GDzv6IiCcD9xjO74Rh
	RnZiqu6BSA1HdlpPwDMpQFNoMWDR0GGQA86jeAO6I9FHgY3I3AAEj1/qABlavwZqa8Lh
	jZUDu/TTs8nZQ+HQKhMJTD9iNHiI7iy7cj7eD4m+9EtkBR5FZE71pTzTpMwndsUDRd7u
	Ka3qI05ZzFKtFJuxeUwQncI+DkuhCr8ohh+q/39Rhi9DHn8yfo7/Op24aIqqE//HXCu2
	+qPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=o9lXLvNeEX+wxmW2erGmjD5zLIIWbmvG+f0pqSBSsIE=;
	b=mhGIrTkAIiCRdVqciwiTsd0qVdnoqF/UnkqYUxsjHQtoRePmgaCPFHigm8xPGpfDCF
	tksS7AUJjrnt6OYDljCY7sUFEWO9gRYCDs17anOZ0SKjcz8sLK4R4AUcEu2fPLF1K8B8
	+4OPAoMNqWQOchZh/pgyfBzKZZLV43rdbi5h3JbbMlUX2maD0qffwmd90RQK+6DDyasY
	VZPrcEAEND/UgjZ5JyxRAsxB2WrCxpXc8N4HU0avgPjppXY7ZfGb70/zfLfV6V5TFNNh
	yQnGeaaXmnJY9g3qir8Vp1VxABhRTvBSbvYycemBwiOHtOoMY+CtPKQyVBI1ENfiV5gz
	dRPQ==
X-Gm-Message-State: AHPjjUjBj0OQEueFTbLYWtne32cMM8cP34BKNKI0bowHYqkqIkIPNqoj
	wLbU2ntJXyl80VtT
X-Google-Smtp-Source: ADKCNb7Lec2tAZ2OdB7O4JEnREkm1TxU5mQuJQoAH1S8LU9dXu47EAXfg31GbopkgO7BFXuBFsNBkw==
X-Received: by 10.98.34.85 with SMTP id i82mr5121854pfi.111.1505059736612;
	Sun, 10 Sep 2017 09:08:56 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:9da8:8707:1dee:2cdf?
	([2601:202:4001:9ea0:9da8:8707:1dee:2cdf])
	by smtp.gmail.com with ESMTPSA id
	k15sm11089891pgs.60.2017.09.10.09.08.55
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 10 Sep 2017 09:08:56 -0700 (PDT)
To: Patrick Ohly <patrick.ohly@intel.com>, yocto@yoctoproject.org
References: <92571f32870c78d268447b5f2eb5be18dc980171.1504799605.git-series.patrick.ohly@intel.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <dc6e9e79-e2c3-17a1-84d8-89371c7f61cd@gmail.com>
Date: Sun, 10 Sep 2017 09:08:55 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <92571f32870c78d268447b5f2eb5be18dc980171.1504799605.git-series.patrick.ohly@intel.com>
Subject: Re: [meta-security][PATCH] tpm2.0-tss: fix systemd package list
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
X-List-Received-Date: Sun, 10 Sep 2017 16:08:57 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 09/07/2017 08:55 AM, Patrick Ohly wrote:
> Commit 4c4fa8c "tpm2.0-tss: install resourcemgr service" introduced
> systemd support for the resourcemgr package, but left the default
> ${PN} in SYSTEMD_PACKAGES, leading to an apparently harmless (?) build
> error, emitted by systemd.bbclass via bb.error() because tpm2.0-tss
> does not have a package of that name:
>
> ERROR: tpm2.0-tss-git-r0 do_package: tpm2.0-tss does not appear in package list, please add it
>
> Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
> ---
>   meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)

merged.

thanks,
armin
>
> diff --git a/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb b/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
> index 14ec0ab..fd5ace8 100644
> --- a/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
> +++ b/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
> @@ -33,7 +33,7 @@ EXTRA_USERS_PARAMS = "\
>   	groupadd tss; \
>   	"
>   
> -SYSTEMD_PACKAGES += "resourcemgr"
> +SYSTEMD_PACKAGES = "resourcemgr"
>   SYSTEMD_SERVICE_resourcemgr = "resourcemgr.service"
>   SYSTEMD_AUTO_ENABLE_resourcemgr = "enable"
>   
>
> base-commit: 1014cc61fc1d5723f77fcd1a0147f3ca10519171


