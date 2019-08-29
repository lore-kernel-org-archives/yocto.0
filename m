Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD460E00D35; Thu, 29 Aug 2019 07:14:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
	[209.85.210.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D4F6E00C9C
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 07:14:39 -0700 (PDT)
Received: by mail-pf1-f195.google.com with SMTP id o70so2149107pfg.5
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 07:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=j8qp7mA96fhMJ21ngcLN6fjvrfwDIpPGJIU34rMfd6E=;
	b=LCiYpnCDV637wPUq4PG2IvO4jRerOdlcscaIrUtqOGxqQuEDGAV/ziN+dYdcCjpW9Q
	m0DWMyk5eR0VVUZvCuufHSlrqFGPorBPoPS+v4BFULyG4Ke7evloc0Fwm1kIPApSLj3g
	yIfJCXyF+ecA3VBh1oHgozAaYtSzpmhQDsgGA+hfH/fi0zoy7fs1JGjkeaYxrP1tNo7P
	1da0sjZwGHOXsEfe34Lp+jQAg9bbTn107gHknJA5HmxXunDGRW3/IH61jAPTRrySwgF2
	nGVjN3u/YViQ3j7PCI+R961wkKwUGcauO7cNYRsZ3GJMY6gh1T2GrlTKCP0ntvcEqV8t
	QdxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=j8qp7mA96fhMJ21ngcLN6fjvrfwDIpPGJIU34rMfd6E=;
	b=A0A8NhSgQiFb52mUDMSYUs1H1Y0fi3Z9fzNW0gfgsNYRehXiYd37ANxk0BkdIoEaQA
	z/4MVyrFOEqmJuPPFQSj4mZ3gM1furoxJH29oLRHdK0QGNA+VsTnvkQNin0VtAXLekRr
	YT8Kak3SdBwWZTxTEwH2zfeVg/krcAZySZeN4YSBJ5P3w5z9YEqN0HAAb81ZCr2Wx0xR
	aGTvBKtjhHjQmmDNX16mubMNUTUascOMmlnDQ05tnK7/fUyyhjXdhYSxkDI5/MwjuKRt
	QYMGovGzecYmWAzShvL3X2CxYJfVy6+8yivv+mYpmtRe+ZA3juxkDiksF5XXJC9jSSlU
	fqLQ==
X-Gm-Message-State: APjAAAXMAo7pSztTw0v0jixx4rQMS5RISSq2Sfu+QNk9qukJMUXkQKKT
	U+gfb7XuznERPHmzDVzAs9YIR9IN
X-Google-Smtp-Source: APXvYqw2hIGWFMG646cMf0E/ktZcNgvf91PJD8s6CiB0PVBiIkrdephScoyv/HI+5rQmwne07Zc59g==
X-Received: by 2002:a65:47c1:: with SMTP id f1mr8420677pgs.169.1567088078558; 
	Thu, 29 Aug 2019 07:14:38 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:e5a5:4b94:b3b5:f092?
	([2601:202:4180:c33:e5a5:4b94:b3b5:f092])
	by smtp.gmail.com with ESMTPSA id
	e9sm4568223pfh.155.2019.08.29.07.14.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 29 Aug 2019 07:14:38 -0700 (PDT)
To: Yuan Chao <yuanc.fnst@cn.fujitsu.com>, yocto@yoctoproject.org
References: <20190829054108.12642-1-yuanc.fnst@cn.fujitsu.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <754c1003-89ef-cf33-2508-d58c55947b99@gmail.com>
Date: Thu, 29 Aug 2019 07:14:37 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190829054108.12642-1-yuanc.fnst@cn.fujitsu.com>
Subject: Re: [meta-selinux] [PATCH] python-scapy: upgrade 2.4.2 -> 2.4.3
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
X-List-Received-Date: Thu, 29 Aug 2019 14:14:40 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 8/28/19 10:41 PM, Yuan Chao wrote:
> License file changed from bin/scapy to LICENSE
Is this the correct layer?

-armin
>
> Signed-off-by: Yuan Chao <yuanc.fnst@cn.fujitsu.com>
> ---
>  recipes-security/scapy/python-scapy.inc                       | 4 ++--
>  .../scapy/{python-scapy_2.4.2.bb => python-scapy_2.4.3.bb}    | 0
>  .../scapy/{python3-scapy_2.4.2.bb => python3-scapy_2.4.3.bb}  | 0
>  3 files changed, 2 insertions(+), 2 deletions(-)
>  rename recipes-security/scapy/{python-scapy_2.4.2.bb => python-scapy_2.4.3.bb} (100%)
>  rename recipes-security/scapy/{python3-scapy_2.4.2.bb => python3-scapy_2.4.3.bb} (100%)
>
> diff --git a/recipes-security/scapy/python-scapy.inc b/recipes-security/scapy/python-scapy.inc
> index baa69b2..28e13f2 100644
> --- a/recipes-security/scapy/python-scapy.inc
> +++ b/recipes-security/scapy/python-scapy.inc
> @@ -3,11 +3,11 @@ DESCRIPTION = "Scapy is a powerful interactive packet manipulation program. It i
>  SECTION = "security"
>  LICENSE = "GPLv2"
>  
> -LIC_FILES_CHKSUM = "file://bin/scapy;beginline=9;endline=13;md5=1d5249872cc54cd4ca3d3879262d0c69"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=b234ee4d69f5fce4486a80fdaf4a4263"
>  
>  S = "${WORKDIR}/git"
>  
> -SRCREV = "bad14cb1a5aee29f8107fbe8ad008d4645f14da7"
> +SRCREV = "3047580162a9407ef05fe981983cacfa698f1159"
>  SRC_URI = "git://github.com/secdev/scapy.git"
>  
>  inherit ptest
> diff --git a/recipes-security/scapy/python-scapy_2.4.2.bb b/recipes-security/scapy/python-scapy_2.4.3.bb
> similarity index 100%
> rename from recipes-security/scapy/python-scapy_2.4.2.bb
> rename to recipes-security/scapy/python-scapy_2.4.3.bb
> diff --git a/recipes-security/scapy/python3-scapy_2.4.2.bb b/recipes-security/scapy/python3-scapy_2.4.3.bb
> similarity index 100%
> rename from recipes-security/scapy/python3-scapy_2.4.2.bb
> rename to recipes-security/scapy/python3-scapy_2.4.3.bb


