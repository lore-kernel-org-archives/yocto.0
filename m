Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 026ECE00CDF; Thu, 17 Jan 2019 15:47:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com
	[209.85.215.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57F4FE00C91
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2019 15:47:46 -0800 (PST)
Received: by mail-pg1-f179.google.com with SMTP id y4so5132816pgc.12
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2019 15:47:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=QvEKJ51zWz51EPkBQ3XwPxrgHGiOTd3s17rXV7AUtvA=;
	b=cWtW/ngmQRZgA0mSaBjiC9Ey+N64k1W0C7tkp7EM2v3Xp8kHFazb3rHC4qpSVf0MXl
	107uTvsaP8IkatAdzKzITQIuGMZZLtkxAz2CGTNrOllliWUUlmOi7sFrnjuFbFU89i5j
	TDHEiRNfP5eB9XXZhU2LdDTtHH5bgFf/PHMIl3XbTH6V6uwg5NbLmasL+KZII5rzLvMc
	49OitQBbMVVwm9vAN9U7kWzcuw9qDlZJ0qumSfvswwA/Em911Ypma3qna3zelUPijK0r
	G4y+4oZHjbTZTGj8POP8kDkAJMvw9X0KRYyJFhV+cGrVrbxxPMexhnsxA1rHaBhqPSHd
	l4Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=QvEKJ51zWz51EPkBQ3XwPxrgHGiOTd3s17rXV7AUtvA=;
	b=m6irmlFRCn/F8CXeTGfru84qyi3JfVrGIc/SOCHHo257y+jqecWm0ET2woccZr7rYK
	NmrZnZreMxpfmxzQspan3QVVN5Ynj6P1KtTN5euGHEon1v8ZhEmw7gA+AJlWeKfjjDE+
	wwI7TzDRWn9G2syCWVT42kIi369yxO+T9hhMQrHmejFH5s7qGKRAMgCrJhmBmN8csd1k
	xaxk1ksqs3PRCqtkMiHNMjPrV7FBkI55E0NY5NHdPm3tcLwWOe37zngQgZkqmqA2Fv2E
	QerwfStXX/zaTfbmApiiTLpuEK9IMyyrHFPKDSrEDem4uIgTbQ3fpWaJmxT35YIeSfeT
	fpMQ==
X-Gm-Message-State: AJcUukcgLaKeAAIqnk9JELpVzZElObjYTm+wl4ws0ku5y60JwojHRjxd
	UddyuUf21Yq+AXfoUQpU6YgBFQ==
X-Google-Smtp-Source: ALg8bN54GNtf9SRN64qSjFYH58ODVykbP4QbCbG+j1k6Pb2weMUcR38VQKZ2stwtfozajyfYOyd0VA==
X-Received: by 2002:a63:990a:: with SMTP id d10mr15431763pge.279.1547768865709;
	Thu, 17 Jan 2019 15:47:45 -0800 (PST)
Received: from ?IPv6:2601:202:4180:c33:2453:9f59:d993:51d9?
	([2601:202:4180:c33:2453:9f59:d993:51d9])
	by smtp.gmail.com with ESMTPSA id
	h15sm4025428pgl.43.2019.01.17.15.47.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 17 Jan 2019 15:47:44 -0800 (PST)
To: Scott Ellis <scottellis.developer@gmail.com>, yocto@yoctoproject.org
References: <20190112214518.29181-1-scott@jumpnowtek.com>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <cbc6c05a-e182-8635-589c-a4985144f352@mvista.com>
Date: Thu, 17 Jan 2019 15:47:43 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190112214518.29181-1-scott@jumpnowtek.com>
Cc: Scott Ellis <scott@jumpnowtek.com>
Subject: Re: [meta-security][PATCH] Upgrade scapy to 2.4.2
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
X-List-Received-Date: Thu, 17 Jan 2019 23:47:52 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 1/12/19 1:45 PM, Scott Ellis wrote:
> Signed-off-by: Scott Ellis <scott@jumpnowtek.com>
> ---
>  recipes-security/scapy/python-scapy.inc                       | 4 ++--
>  .../scapy/{python-scapy_2.4.0.bb => python-scapy_2.4.2.bb}    | 0
>  .../scapy/{python3-scapy_2.4.0.bb => python3-scapy_2.4.2.bb}  | 0
>  3 files changed, 2 insertions(+), 2 deletions(-)
>  rename recipes-security/scapy/{python-scapy_2.4.0.bb => python-scapy_2.4.2.bb} (100%)
>  rename recipes-security/scapy/{python3-scapy_2.4.0.bb => python3-scapy_2.4.2.bb} (100%)
>
> diff --git a/recipes-security/scapy/python-scapy.inc b/recipes-security/scapy/python-scapy.inc
> index 5abe7db..d5a70fe 100644
> --- a/recipes-security/scapy/python-scapy.inc
> +++ b/recipes-security/scapy/python-scapy.inc
> @@ -5,8 +5,8 @@ LICENSE = "GPLv2"
>  
>  LIC_FILES_CHKSUM = "file://bin/scapy;beginline=9;endline=13;md5=1d5249872cc54cd4ca3d3879262d0c69"
>  
> -SRC_URI[md5sum] = "d7d3c4294f5a718e234775d38dbeb7ec"
> -SRC_URI[sha256sum] = "452f714f5c2eac6fd0a6146b1dbddfc24dd5f4103f3ed76227995a488cfb2b73"
> +SRC_URI[md5sum] = "e6a03d8c924a6bbde1e86fc58bd2b9d6"
> +SRC_URI[sha256sum] = "1baa048936207ceb1a4281a0e1e3b4317667c754872a0bb4734c5213c468e86a"

When i build this with "ptest" enabled I get this failure.
| grep: Makefile: No such file or directory
| install: cannot stat
'/home/akuster/oss/maint/openembedded-core/build/tmp-glibc/work/aarch64-oe-linux/python3-scapy/2.4.2-r0/scapy-2.4.2/test/regression.uts':
No such file or directory

regression.uts no longer exists.

- armin

>  
>  inherit pypi ptest
>  
> diff --git a/recipes-security/scapy/python-scapy_2.4.0.bb b/recipes-security/scapy/python-scapy_2.4.2.bb
> similarity index 100%
> rename from recipes-security/scapy/python-scapy_2.4.0.bb
> rename to recipes-security/scapy/python-scapy_2.4.2.bb
> diff --git a/recipes-security/scapy/python3-scapy_2.4.0.bb b/recipes-security/scapy/python3-scapy_2.4.2.bb
> similarity index 100%
> rename from recipes-security/scapy/python3-scapy_2.4.0.bb
> rename to recipes-security/scapy/python3-scapy_2.4.2.bb


