Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9990AE0090A; Sat, 21 Apr 2018 08:14:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EFC5E007A2
	for <yocto@yoctoproject.org>; Sat, 21 Apr 2018 08:14:07 -0700 (PDT)
Received: by mail-pg0-f68.google.com with SMTP id i6so5391276pgv.3
	for <yocto@yoctoproject.org>; Sat, 21 Apr 2018 08:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=dBgorH9moZYqLCat8Fy2ndfjPbIKHgp0oOjAP1nulkc=;
	b=VSUlY39Sv8O4H29t5vbBCm7MdUHvBch5os232fTrjxbqX3CEDcyMxzZgGBIiIyE5bD
	Qqu6Q7KF/WIQIF6bxPw+nRd6KLAzuTZ1Dh9NqrPjyvZknQxEcd+96j0WXv6FnEewUMEC
	T/ScsxDgkjdliU5vufTkbN47A7x9tkWvIWu4GSdlW5jD9x2OkGV2F0qAfgRa9Th5SbUq
	Dl7pljViqujNd0toDriQndxNAm44MnpQS1pWf1fEowOZ/sBDxq8Aj59b0/S3F9bMwGHA
	iDVJqomUZuv6hKOXUDxCm7MKKVDD77kmSaUF8oAONdheAjmSDQyd1wa/q7pOgGyUXFug
	i6og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=dBgorH9moZYqLCat8Fy2ndfjPbIKHgp0oOjAP1nulkc=;
	b=WzgdQT/RzgSnYWzauIVFTb82R5zSLBC1ENrn7T0wTayPp1tAXZ+vGB57kAkSSzJng5
	kTEbBNKjVQLTOPUAI1Xkk5KFuT9rjJ2gSAwEQIlh0SivTEKCQhSby7oDre4Z/iVMZI9h
	YGk0vpBBwAKxbv2Kh1B9QKvOTpnR4wqHUn6x22ArGPZdB5D2uz3gD4yuapClD1If9MIS
	EZC3mr38sgYoGZ2IkXhxFkXaMbwLt7nEXtsXfBba9adEzksHaXmx30Zmzbp3lnvCOlvH
	nzvof/+5d+gwu3eVmbOds9nWtlqAmdfGLurHK2LXudktADtvtIBc6gc9a0bZ+B6s9o2G
	J6Nw==
X-Gm-Message-State: ALQs6tD2Wrx6HnCXTauorhvh3SHO4/8UblMTr1Xu9V8uLBGK+Bh8KHXV
	0bd5d8nF7ZkAHPN5lzic4Sffdw==
X-Google-Smtp-Source: AIpwx48zxpIa63GCrQaQ4z1I5awWAPR8Me5faOQhtULBmamRvmEavLnu5HqA0eAiMx7s4tbp6HhVjQ==
X-Received: by 2002:a17:902:bd8d:: with SMTP id
	q13-v6mr14181620pls.330.1524323647422; 
	Sat, 21 Apr 2018 08:14:07 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1184:ad3f:3096:6add:98d8?
	([2601:202:4000:1184:ad3f:3096:6add:98d8])
	by smtp.gmail.com with ESMTPSA id
	l10sm26312963pfc.84.2018.04.21.08.14.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 21 Apr 2018 08:14:06 -0700 (PDT)
To: Armin Kuster <akuster808@gmail.com>, yocto@yoctoproject.org
References: <1523758104-25257-1-git-send-email-akuster@mvista.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <271e1c14-4c10-1d2c-f94c-9a0c04aeebae@gmail.com>
Date: Sat, 21 Apr 2018 08:14:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <1523758104-25257-1-git-send-email-akuster@mvista.com>
Subject: Re: [meta-selinux][PATCH] libselinux: python-importlib is now part of python*-core
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
X-List-Received-Date: Sat, 21 Apr 2018 15:14:08 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 04/14/2018 07:08 PM, Armin Kuster wrote:
> Missing or unbuildable dependency chain was: ['meta-world-pkgdata', 'restorecond', 'libselinux', 'python-importlib']
>
> Signed-off-by: Armin Kuster <akuster@mvista.com>
> ---
>  recipes-security/selinux/libselinux.inc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
Ping
>
> diff --git a/recipes-security/selinux/libselinux.inc b/recipes-security/selinux/libselinux.inc
> index bd5ce8d..51d0875 100644
> --- a/recipes-security/selinux/libselinux.inc
> +++ b/recipes-security/selinux/libselinux.inc
> @@ -8,7 +8,7 @@ LICENSE = "PD"
>  inherit lib_package pythonnative
>  
>  DEPENDS += "libsepol python libpcre swig-native"
> -RDEPENDS_${PN}-python += "python-importlib"
> +RDEPENDS_${PN}-python += "python-core"
>  
>  PACKAGES += "${PN}-python"
>  FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/*"


