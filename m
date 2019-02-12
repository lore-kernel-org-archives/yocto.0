Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2367E00CCE; Mon, 11 Feb 2019 18:05:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
	[209.85.214.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EEB1E00872
	for <yocto@yoctoproject.org>; Mon, 11 Feb 2019 18:03:06 -0800 (PST)
Received: by mail-pl1-f196.google.com with SMTP id s1so474451plp.9
	for <yocto@yoctoproject.org>; Mon, 11 Feb 2019 18:03:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=A9ufpQ96/XLOGkodmg98iujDHTX53p0TgMNYk4lCIgY=;
	b=yaT3NfP5s2aD/QAXAGybV/gIhjI02aIeDALaT2mqIWR6tKyXf4eMdy7mT253CREq8y
	6yQCI+uOp0Yr5MhYUfoB1q5ktF2Fxlb8inlpbcBdn0uUBli1xfv3eKMzVGXws+npaIDr
	cxKSkumUrBtnDGSpQEJLxfWsOAy0x9QxGR4xfX3SNL7I6kxylg/eJ8TVyQmzKxoHuXHk
	lo4PhsXG6zBy/DIpHBpYbMn7It3lZCbQinO1nyqqMv0KHmkoeMo5Llopu540m8mlpier
	g9Gn2Ojf41gAxLs44UgXyRmaeZe5s8yCpITRyewa00lUKaZ5mDIB6CBemyydzjKg0Ipj
	3xOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=A9ufpQ96/XLOGkodmg98iujDHTX53p0TgMNYk4lCIgY=;
	b=oEkixqXnMIFAzPtRe1qyq35k2NSBSKC7doEBx6N1535fKRPMVPIGUQAqo0BzNjoJ3o
	7ef2qmZ6p4BRXbukWCvcGeCdg/cOF/lVVz7hmgGh4p2YG3GyhoL3jlRndq6WFsDW77hp
	oltquEjYfu2GUwQL03Fc3Sq5ymeZYYxSaxoZfWB7gwRuqDGx6twnicO58JXEaSMhKbJn
	zt1nbgqRiJA9EniDbfB6jNV2L0mZEYIivVH6SqU5Xv7z/V8ZXJWypKOIvyoNkPA9YkCl
	uDn65gm5Iis0gGBGxqEAHuyWMCBG1tWLwBfTCb3rit+eZVTYVkfvZaxmIyjO9L4HOCAk
	WRXw==
X-Gm-Message-State: AHQUAuZNlBzl3licO4Is+Za6qaimy8U4S4rj4O+9jYbRBdeSmvu9snDs
	AgA+d7Mx43HbvlhuuoPVX1xrAaKRCKE=
X-Google-Smtp-Source: AHgI3IbJy1tbaKnLaOsgupPiKLsWIcPcS25XB38rPAVGQAaNNh1PnduEY8d8wSeLSrriPCfEEFr8Uw==
X-Received: by 2002:a17:902:a70b:: with SMTP id
	w11mr1493659plq.84.1549936986179; 
	Mon, 11 Feb 2019 18:03:06 -0800 (PST)
Received: from ?IPv6:2601:202:4180:c33:de5:9efe:99a0:e6a7?
	([2601:202:4180:c33:de5:9efe:99a0:e6a7])
	by smtp.gmail.com with ESMTPSA id
	m68sm6479226pfj.89.2019.02.11.18.03.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 11 Feb 2019 18:03:05 -0800 (PST)
To: Adrian Bunk <bunk@stusta.de>, yocto@yoctoproject.org
References: <20190130095743.12467-1-bunk@stusta.de>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <2db5446d-5408-aaac-66ff-4ce07167caf0@mvista.com>
Date: Mon, 11 Feb 2019 18:03:04 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190130095743.12467-1-bunk@stusta.de>
Subject: Re: [meta-security][PATCH] xmlsec1: Include libxmlsec1-*.so in the main package
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
X-List-Received-Date: Tue, 12 Feb 2019 02:05:49 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

series merged.

On 1/30/19 1:57 AM, Adrian Bunk wrote:
> They can be dynamically loaded with xmlSecCryptoDLLoadLibrary().
>
> Signed-off-by: Adrian Bunk <bunk@stusta.de>
> ---
>  recipes-security/xmlsec1/xmlsec1_1.2.26.bb | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/recipes-security/xmlsec1/xmlsec1_1.2.26.bb b/recipes-security/xmlsec1/xmlsec1_1.2.26.bb
> index 2dbbf33..aca9634 100644
> --- a/recipes-security/xmlsec1/xmlsec1_1.2.26.bb
> +++ b/recipes-security/xmlsec1/xmlsec1_1.2.26.bb
> @@ -32,6 +32,11 @@ EXTRA_OECONF = "\
>      --with-nss=${STAGING_LIBDIR}/../.. --with-nspr=${STAGING_LIBDIR}/../.. \
>      "
>  
> +# these can be dynamically loaded with xmlSecCryptoDLLoadLibrary()
> +FILES_SOLIBSDEV = "${libdir}/libxmlsec1.so"
> +FILES_${PN} += "${libdir}/libxmlsec1-*.so"
> +INSANE_SKIP_${PN} = "dev-so"
> +
>  FILES_${PN}-dev += "${libdir}/xmlsec1Conf.sh"
>  FILES_${PN}-dbg += "${PTEST_PATH}/.debug/*"
>  


