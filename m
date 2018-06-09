Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A734EE0110F; Fri,  8 Jun 2018 18:18:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40EDFE01106
	for <yocto@yoctoproject.org>; Fri,  8 Jun 2018 18:18:37 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id q4-v6so6073069pgr.1
	for <yocto@yoctoproject.org>; Fri, 08 Jun 2018 18:18:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=Ipx7WNxRxE+6LDhyRsPStrzXAN+eG9huaTHotFrPVkA=;
	b=icjaP06tgHsyTkFnjvm6HyJxZwe7ZHLHZdu/Mu6QkeYaDuBsIQshX3cV73lOJAUmtZ
	z8CNhvCDWixe0Ta76LkGI94YSh5QaBxDO8B9+H7bG6vZ/tRHrLCaFrDKF+ZspvF9J7dJ
	zDxgbBBOu+DKgJq0wiH8k6V7sefpHgd9kErgXPpurbApfM2LrBuXFJMahJIk0sdJpoNt
	I0m/OtakEfLtnAaY2gPnPJ6OVhOQyjKxETmmRrA5/BIWpbqSdxBoAQF1XQofDK0RHqNa
	hvPOKIpr2vQpGynLU8GU39C92GvIB56OndN+qD4A/MlcgDQbCNvfNnRduRUt7kUrd8ES
	QhkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=Ipx7WNxRxE+6LDhyRsPStrzXAN+eG9huaTHotFrPVkA=;
	b=sTlqLrnvyAlipYv5TXGkKrj3Fg96ubXVRETO+jQWHvDKSg2Om2JsiJytuAJ4Xz40it
	6lwL/m5jB209CFNtVc3MG+BgB8U0+Ih9ONtCUSSj9nVmfbhhL1tnh9hrj5S309VLVHAa
	Rht2QPrMvXx0fM2a38swr/bz8CucUpDB2GHmU4raRJiAyTKfYCIAZmNN+ajY13cmYwZM
	jfKtDhnAf4yoatYwG2EFX1NTUPxhj0Yl7J0OjQiVz0rjAanQ7tGjf5cMoVKT3cR5/KKS
	mvQhz0YEkHic8dlGLEnedsiOT9tzGBuOg+ASf1K8d3vqQxQnNhnkjRGxWeEFcr1GHnX8
	wslA==
X-Gm-Message-State: APt69E0daKLtd1hdOFr9sNQDLJTpb79qpCcBaTkuN+BtUXjBp+0pv+4z
	glwkhjJepa3yS2i4rCdetHhj1IaW
X-Google-Smtp-Source: ADUXVKIenk9K/UdyGBn1GUPl70RBVqa1z4D7pcIjt4vaYKM7XKQSVlABr4fQt8oSUHziyRkINrCxWQ==
X-Received: by 2002:a62:bca:: with SMTP id 71-v6mr8067552pfl.234.1528507116920;
	Fri, 08 Jun 2018 18:18:36 -0700 (PDT)
Received: from hermes.local ([2601:646:877f:9499:45cd:78c5:1629:a1d4])
	by smtp.gmail.com with ESMTPSA id
	t3-v6sm35050999pfk.161.2018.06.08.18.18.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 08 Jun 2018 18:18:36 -0700 (PDT)
To: George McCollister <george.mccollister@gmail.com>, yocto@yoctoproject.org
References: <20180608220600.44144-1-george.mccollister@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <641d3e7b-d443-9f49-161a-604ea90b9fa7@gmail.com>
Date: Fri, 8 Jun 2018 18:18:31 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <20180608220600.44144-1-george.mccollister@gmail.com>
Subject: Re: [meta-selinux][PATCH] semodule-utils: create empty package
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
X-List-Received-Date: Sat, 09 Jun 2018 01:18:38 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi George

On 6/8/18 3:06 PM, George McCollister wrote:
> Allow creation of an empty package since semodule-utils itself doesn't
> actually contain any files but is still required by semodule-utils-dev.
> This recipe places every file under one of it's sub-packages.
> 
> This fixes an error encountered when building an SDK:
>   nothing provides semodule-utils = 2.7-r0 needed by
>   semodule-utils-dev-2.7-r0.core2-32
> 
> Signed-off-by: George McCollister <george.mccollister@gmail.com>
> ---
>   recipes-security/selinux/semodule-utils.inc | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/recipes-security/selinux/semodule-utils.inc b/recipes-security/selinux/semodule-utils.inc
> index 1e92745..114b4b1 100644
> --- a/recipes-security/selinux/semodule-utils.inc
> +++ b/recipes-security/selinux/semodule-utils.inc
> @@ -8,6 +8,8 @@ LICENSE = "GPLv2+"
>   
>   DEPENDS += "libsepol"
>   
> +ALLOW_EMPTY_${PN} = "1"
> +

Perhaps

RDEPENDS_${PN}-dev = ""

Would solve it without a need to create empty package.

>   EXTRA_OEMAKE += "LIBSEPOLA=${STAGING_LIBDIR}/libsepol.a"
>   
>   PACKAGES =+ "\
> 

