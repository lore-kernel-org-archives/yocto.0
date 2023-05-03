Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02081C77B75
	for <webhook@archiver.kernel.org>; Wed,  3 May 2023 12:38:50 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.18058.1683117527578430984
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 May 2023 05:38:48 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 415802F4;
	Wed,  3 May 2023 05:39:31 -0700 (PDT)
Received: from [10.1.199.64] (unknown [10.1.199.64])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A80C13F5A1;
	Wed,  3 May 2023 05:38:46 -0700 (PDT)
Message-ID: <43b59670-edcd-7df4-0787-8e5f5d1cd47a@arm.com>
Date: Wed, 3 May 2023 13:38:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [yocto] [meta-parsec][master,mickledore][PATCH]
 meta-parsec/layer.conf: Insert addpylib declaration
To: Armin Kuster <akuster808@gmail.com>
References: <1759D2D1FA358DEB.32698@lists.yoctoproject.org>
Content-Language: en-US
Cc: yocto@lists.yoctoproject.org
From: Peter Hoyes <Peter.Hoyes@arm.com>
In-Reply-To: <1759D2D1FA358DEB.32698@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 May 2023 12:38:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59853

Hi Armin,

On 27/04/2023 16:01, Peter Hoyes via lists.yoctoproject.org wrote:
> From: Peter Hoyes <Peter.Hoyes@arm.com>
>
> Yocto mickledore introduced the addpylib directive for explicitly adding
> layer paths to the PYTHONPATH.
>
> Standalone OEQA test suite discovery does not require this directive but
> it is required to import test cases from other layers, e.g. to extend
> and modify the test cases.
>
> Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
Is it possible that this small patch missed your filters?

Cheers, Peter

> ---
>   meta-parsec/conf/layer.conf | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/meta-parsec/conf/layer.conf b/meta-parsec/conf/layer.conf
> index 0a71694..7d272a2 100644
> --- a/meta-parsec/conf/layer.conf
> +++ b/meta-parsec/conf/layer.conf
> @@ -12,3 +12,5 @@ LAYERSERIES_COMPAT_parsec-layer = "mickledore"
>   
>   LAYERDEPENDS_parsec-layer = "core clang-layer"
>   BBLAYERS_LAYERINDEX_NAME_parsec-layer = "meta-parsec"
> +
> +addpylib ${LAYERDIR}/lib oeqa

