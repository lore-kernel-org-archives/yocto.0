Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1A40E00D60; Mon, 10 Jun 2019 07:48:52 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.193 listed in list.dnswl.org]
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
	[209.85.210.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB532E00D60
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2019 07:48:50 -0700 (PDT)
Received: by mail-pf1-f193.google.com with SMTP id p184so2163220pfp.7
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2019 07:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=+QzwQt6e8L38HJEj8Ec94Udq8tr9D9r2EK5vepQ8xr8=;
	b=qkA31751oyFeezDLv94Y7Ergt7rGG4u3c1d00UN5OjlFwPgthEmsf9hk6a00djDhe0
	5MIzjR6HnB/rWUxCo/d0Xr1xqnti2NM2SY7wMobANAiQ1hDikTLHa4djKoVk64qjWPOv
	yQvZEl4dWjOTJTOPmh1m30eIEp5OlLNymWWp3GAQl5e0eUXYWLkU8CS122+K0gDQXf27
	NdzRym1vntebfXv/DEf6ZsUkDk0QsFvUod3X1xM5Z4759zTwn1pm8qS/abEXOeV2BPlV
	EjEyKnAL2vTPJC8yb2/biKo1zQMO8449pWKB/CgdVUTK7KPviTPiEck2HekTtVEvIJ4P
	5yPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=+QzwQt6e8L38HJEj8Ec94Udq8tr9D9r2EK5vepQ8xr8=;
	b=p6S2JUCU5SxB8AHzhA4Y/IEZ3rIJiQFQ6ELJjQBJIlZzBD2G324LcUsiGpOeAL+3c1
	kL8F5jcPXWrDv6WAsOMs83SIYb+n1e429SYL9pMP9aBAMISXgSzENBMM0bhBMBTj796m
	O8G6bfiiwbj+MzsLiVkdy4r3uLGPxAHoA0tAldpAgHd3ZyaumGkfT07gmJMJ/sTgb9Iw
	JTslMh0R7O4lowaArwx9A92QYf1mpIcK3upwmykqkHm05awHjVexqAWFhnLJtXKTWjsk
	/iP21CG+2Z++hNyTI9SZvkAjdb9Wsq1uwzkTNViX23pDju9t0yPzq8smCCC/CouOK8FA
	gbEw==
X-Gm-Message-State: APjAAAV6oxBT+k31BUMqZBKLxColm8ABLDHarYezZ14/BOKsZ1wsNztm
	ffEsESg/mpSL/sPUtdz4jH5nN5Pz
X-Google-Smtp-Source: APXvYqydUFL9FhZJ+/abNWUYicRHUXK9qlZXjM1fsJIpEDy0G2uf5fJTQZQftV91Dk/ikj+v7GvsMA==
X-Received: by 2002:a17:90a:b115:: with SMTP id
	z21mr21538952pjq.64.1560178130201; 
	Mon, 10 Jun 2019 07:48:50 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:41f8:3a5:3f1:1b89?
	([2601:202:4180:c33:41f8:3a5:3f1:1b89])
	by smtp.gmail.com with ESMTPSA id
	f141sm11229949pfa.24.2019.06.10.07.48.49
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 10 Jun 2019 07:48:49 -0700 (PDT)
To: Zang Ruochen <zangrc.fnst@cn.fujitsu.com>, yocto@yoctoproject.org
References: <20190610072424.14779-1-zangrc.fnst@cn.fujitsu.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <9c97e3b7-ba23-028e-150d-fca628fb3e29@gmail.com>
Date: Mon, 10 Jun 2019 07:48:48 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190610072424.14779-1-zangrc.fnst@cn.fujitsu.com>
Subject: Re: [meta-security][master][warrior][PATCH 0/3] python-scapy:solved the conflict with python3-scapy
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
X-List-Received-Date: Mon, 10 Jun 2019 14:48:52 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 6/10/19 12:24 AM, Zang Ruochen wrote:
> -Remove redundant sed operations.
>
> -Rename conflicting files to resolve conflicts.
merged to master.

working on warrior

thanks,
- armin
>
>
> Zang Ruochen (3):
>   [yocto][meta-security][master][warrior][PATCH 1/3] python-scapy: Remove
>     redundant sed operations
>   [yocto][meta-security][master][warrior][PATCH 2/3] python-scapy: solved
>     the conflict with python3-scapy
>   [yocto][meta-security][master][warrior][PATCH 3/3] python3-scapy: solved
>     the conflict with python-scapy
>
>  recipes-security/scapy/python-scapy.inc       | 7 -------
>  recipes-security/scapy/python-scapy_2.4.2.bb  | 5 +++++
>  recipes-security/scapy/python3-scapy_2.4.2.bb | 4 ++++
>  3 files changed, 9 insertions(+), 7 deletions(-)
>


