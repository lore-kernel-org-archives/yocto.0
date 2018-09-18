Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5ECC1E0095C; Tue, 18 Sep 2018 08:59:03 -0700 (PDT)
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
	*      [209.85.214.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
	[209.85.214.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6185E0090A
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2018 08:59:02 -0700 (PDT)
Received: by mail-pl1-f195.google.com with SMTP id p5-v6so1220742plk.3
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2018 08:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=9YDTIllGffTwCL4cEHb+AJNYT9gcJo1FEaieE7uwlhk=;
	b=AUO16JMMpNm4rn3TpvNCzkFifKOzOjC3eTFxygeH6KaZikBcMQ99t2SNKwxfiuRY6m
	ZX4DMgYLcCXuAGs5AmhM1M5FuV8upDI0TLQzVNgcs4w6cpkBR4k8QFisfHcNpjQ6V8Q/
	Qdocb8AudUIQjpwGosKrWNz9whYU+GLZawqfHsPZfludgvXW+CO4pST7zBy8AZvGvQ5e
	xDStquo9HPlvav0PmLSc1sg/Jf5ZNJoNELZYQitEE7RyqL2jx3nffXc0UCOWIzNrGGsZ
	89Eo2X4xtQiket9Oy+El8ovL5HT6MsR7cMFphnLa4oUMRZeQW1+rpVdjL31nhIDB827V
	0/Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=9YDTIllGffTwCL4cEHb+AJNYT9gcJo1FEaieE7uwlhk=;
	b=bTS825Db32Jjk2VfJDG8CX6d/ZAuzucpqiR7tmqTO71nqa2dGaz7t+J3/bDLw73gsv
	7DKnONgEFChiaePLB2OWBUvspxCZflkm9kZeCU7VZ573y9Hz4Piq0vASoPMog+75zW0A
	1uK5X2Myym4+VN7fGhpXFXMTnC7u0533l0CV0TbR9Gze7LJyR+X7af5xCAZZ0KdsJkXy
	nf2s0wjXHB+5vm/oCEdt2eHkQhxTrwUdgvD9BlU+FGgUWTCQOqOCuGH/dkUq9+XPk2ss
	czM+ggo+MulBKv6kg9+dcA7VdvI6IQsvJwndqwvuTxjEZjQXbQ1lcLYyAt9Yh3BTPH1Y
	YemA==
X-Gm-Message-State: APzg51BdOmdyM8XOjjsHVN5JG3IIiE2Nq4yUJ5+ZxAV8yFq/fUM6Ut4N
	mUYVQL1bjIgbvtu+rWvVNBGdTAPg
X-Google-Smtp-Source: ANB0VdYtAYEeDARw2l0kgi0qy6PikUW8IiYbyBEOTl/dyqsucO/Uy8NQ4NtbYNaO/LPGfxWhXu9w6Q==
X-Received: by 2002:a17:902:e85:: with SMTP id
	5-v6mr29432744plx.73.1537286342249; 
	Tue, 18 Sep 2018 08:59:02 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:78f4:40e4:a9bf:d5d1?
	([2601:202:4180:c33:78f4:40e4:a9bf:d5d1])
	by smtp.gmail.com with ESMTPSA id
	g25-v6sm32421932pfd.23.2018.09.18.08.59.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 18 Sep 2018 08:59:01 -0700 (PDT)
To: Yi Zhao <yi.zhao@windriver.com>, yocto@yoctoproject.org
References: <1536739792-20296-1-git-send-email-yi.zhao@windriver.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <806720c5-6494-cdef-2100-0abc53d66121@gmail.com>
Date: Tue, 18 Sep 2018 08:59:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1536739792-20296-1-git-send-email-yi.zhao@windriver.com>
Subject: Re: [meta-security][PATCH] keynote: depend on openssl10
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
X-List-Received-Date: Tue, 18 Sep 2018 15:59:03 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 09/12/2018 01:09 AM, Yi Zhao wrote:
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ---
>  recipes-security/keynote/keynote_2.3.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-security/keynote/keynote_2.3.bb b/recipes-security/keynote/keynote_2.3.bb
> index 0300894..6ec26b8 100644
> --- a/recipes-security/keynote/keynote_2.3.bb
> +++ b/recipes-security/keynote/keynote_2.3.bb
> @@ -23,7 +23,7 @@ inherit autotools-brokensep ptest
>  SRC_URI[md5sum] = "a14553e6ad921b5c85026ce5bec3afe7"
>  SRC_URI[sha256sum] = "38d2acfa1c3630a07adcb5c8fe92d2aef7f0e6d242b8998b2bbb1c6e4c408d46"

merged. thanks,
Armin
>  
> -DEPENDS = "flex openssl bison-native"
> +DEPENDS = "flex openssl10 bison-native"
>  
>  EXTRA_OEMAKE += "test-sample -j1"
>  


