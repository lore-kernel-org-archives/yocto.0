Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23D4CE00CB7; Sat, 15 Dec 2018 15:28:17 -0800 (PST)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.175 listed in list.dnswl.org]
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
	[209.85.214.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C85A2E00D2F
	for <yocto@yoctoproject.org>; Sat, 15 Dec 2018 15:27:46 -0800 (PST)
Received: by mail-pl1-f175.google.com with SMTP id t13so4379097ply.13
	for <yocto@yoctoproject.org>; Sat, 15 Dec 2018 15:27:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=2nqicp5BkvnGWqC8k94VMhvjVAvWX7j2/Bx8PPHQCI4=;
	b=mSsVLV7bLjNDzZepe/G4gCLzUtYEaYJylE4kQxB2GS0PhpVCib7iHjuF9MtOjdSBzA
	lX7hdTSVQCDXClGsV1BtgE+Dd6OF270B9bm9nxhuiHLmivu/e0uDzkJ70IToRBGMkHBQ
	yBs6abuSigrzxpq2fvfGv/+ZwlXoh7518/YWpYh7osEDLZXQsKbzyeFoECIjWYiFe9E1
	X6BIFt2krkycTik8AAHE9aiR1MlAZBs/4shxAjY4ZdWCcGGX0pm9OXf0A0hiltr5UuaK
	2SQJR4/kWBnCA62c6N9vFKD6MelGOVu602WRU4nd7xCjKCxftrNz+Xduy8n/daLj8gRV
	oqiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=2nqicp5BkvnGWqC8k94VMhvjVAvWX7j2/Bx8PPHQCI4=;
	b=NCulQucXa4Q/QXP/y5mv+UaofRdkoJMlTIiK1bSE3nfg2v/sn64hXJF0cvoWZqHGUA
	cFt25bv8dIcVMtlp0llBKSsyNPRRzhsBNJ22Wi2RBSc9Rk+zdpK+UCqdRmeLKRkWm2cZ
	ULUV9DIFxlHIY+j9b8j/gd/bOvv4ltnJtott109TiX0bUrewO+nrzxkITna6nai/oXo9
	vTAjl2rxb0/SgGb5gIuuW0mIq42f28S9hTLFaVuZlWMctmCYdqWKRdtv0rAMye3fVLDO
	mNBv9R1ivg5Ox7p0xKA9TReJpS4SZB0IxmnIQ74hyLdJyhpQm9tYD3aGrdX+HnwquP67
	GILw==
X-Gm-Message-State: AA+aEWZ8n6UCzdcZqbXz1aQT2UQcurZ0QQGRCRsK26g1jpaHaVMsYKhI
	nUdUl0iAdJ8tAoUgItIKfKhHLaxY
X-Google-Smtp-Source: AFSGD/Wa6l1pvRVjWyqOiMnizwgXSZTgK/v5fiffsZmhz3XU9G7wngSDaQciLGmxSi2dPxjQWCbPiA==
X-Received: by 2002:a17:902:aa82:: with SMTP id
	d2mr7901367plr.153.1544916466062; 
	Sat, 15 Dec 2018 15:27:46 -0800 (PST)
Received: from ?IPv6:2601:202:4180:c33:142d:7852:54a7:93fc?
	([2601:202:4180:c33:142d:7852:54a7:93fc])
	by smtp.gmail.com with ESMTPSA id
	g2sm10902650pfi.95.2018.12.15.15.27.45 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 15 Dec 2018 15:27:45 -0800 (PST)
To: yocto@yoctoproject.org
References: <1544628453-2324-1-git-send-email-daniel.dragomir@windriver.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <78527814-e77f-c394-bbd4-c12140e2514f@gmail.com>
Date: Sat, 15 Dec 2018 15:27:44 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <1544628453-2324-1-git-send-email-daniel.dragomir@windriver.com>
X-Mailman-Approved-At: Tue, 18 Dec 2018 08:06:28 -0800
Subject: Re: [meta-security][thud][PATCH] tpm2-abrmd: Fix QA error
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
X-List-Received-Date: Sat, 15 Dec 2018 23:28:17 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 12/12/18 7:27 AM, Daniel Dragomir wrote:
> QA Issue: tpm2-abrmd: Files/directories were installed but not
>           shipped in any package:
> /usr/share/dbus-1
> /usr/share/dbus-1/system-services
> /usr/share/dbus-1/system-services/com.intel.tss2.Tabrmd.service

merged
>
> Signed-off-by: Daniel Dragomir <daniel.dragomir@windriver.com>
> ---
>  meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.2.bb | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.2.bb b/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.2.bb
> index 951556d..6347379 100644
> --- a/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.2.bb
> +++ b/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.2.bb
> @@ -46,7 +46,8 @@ do_install_append() {
>      install -m 0644 "${WORKDIR}/tpm2-abrmd.default" "${D}${sysconfdir}/default/tpm2-abrmd"
>  }
>  
> -FILES_${PN} += "${libdir}/systemd/system-preset"
> +FILES_${PN} += "${libdir}/systemd/system-preset \
> +		${datadir}/dbus-1"
>  
>  RDEPENDS_${PN} += "tpm2.0-tss"
>  


