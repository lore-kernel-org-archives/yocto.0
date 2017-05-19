Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9135E0094C; Fri, 19 May 2017 07:39:04 -0700 (PDT)
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
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31479E00812
	for <yocto@yoctoproject.org>; Fri, 19 May 2017 07:39:03 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id u26so9779037pfd.2
	for <yocto@yoctoproject.org>; Fri, 19 May 2017 07:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=IUiVAxwg0U5frKh/M8j8ROJR00qZLe8hyFMfsnaBxGU=;
	b=nritvQfihBIWyg4xpDtM4L6aQUcs7b8e4rPRAt7QamL7xiiVZIQEw0Q7R8/v8noCRJ
	b0Bvu11Bw+TM2gedbUGkmh3xa9E3fIrvmFIMzPbOpzvtEkKaf5S1GFlL6L6Qwnzc5Q4j
	ovKGRJyx32CUsECm47tyoCh5w0+ofBceomj52SP44V0mAKgmQc/lA6PLAWRNE/XgVkDp
	XZBqeOKV5w4lUFeks04CIqORwRK9DkUVzbOP51PQU7tpQ1IegMrQjBgW7ov8kFRJHMfj
	zJbT9vyqYiM4gvxGkTqAkaKdy+M5VwI4orZvC6nhem/rc08SgGIq3CXCZ34u85za/phg
	f3mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=IUiVAxwg0U5frKh/M8j8ROJR00qZLe8hyFMfsnaBxGU=;
	b=iTNzYjEs2kMGIKNrP5NXJXWGqpyvj2G9jhF7kRERhEpYthX0jBbDAn+W/Kqn5gJF9j
	fMep0BnPjrMno9RXH3j18EjCmFefPlT3QSWLe8jC2pfaOU8kpjkRQgNg49DKweBbMC2D
	9RmISesi9kFuHiLth9ZjK/HuGohdSJ/BDZNN15Wzl+xPae3cAxu6x0nUiXAekkGCxfw/
	WJZqfmJm2WYIQzpsdzqCA4Fkmo1TvYtJ7bdN5ObQW8FvWVvLnRxnfzJJ9L+IkJ63pNHp
	hx6dtWRq/1YHWSndVYSn5vI74+LP7QFWHj5dfpVozmw0SABZur6bg3u2KbY8w68bIydP
	duMg==
X-Gm-Message-State: AODbwcDrlC7nijXV8PSkYvFnsWtJDNkLpVurL/GILJQPKT6J60T47yVQ
	jX2/+7e1uGqWqyZBcDs=
X-Received: by 10.84.174.67 with SMTP id q61mr12131563plb.97.1495204743352;
	Fri, 19 May 2017 07:39:03 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:556f:b9ba:b26e:7f00?
	([2601:202:4001:9ea0:556f:b9ba:b26e:7f00])
	by smtp.gmail.com with ESMTPSA id
	q24sm17219486pfj.3.2017.05.19.07.39.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 19 May 2017 07:39:02 -0700 (PDT)
To: Peter Lei <peter.lei@ieee.org>, yocto@yoctoproject.org
References: <20170519042949.7646-1-peter.lei@ieee.org>
From: akuster808 <akuster808@gmail.com>
Message-ID: <64e4d6e3-887d-6986-c2d0-ff38d2eb10bf@gmail.com>
Date: Fri, 19 May 2017 07:39:01 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20170519042949.7646-1-peter.lei@ieee.org>
Subject: Re: [meta-security][PATCH] packagegroup-security-tpm-i2c: fix syntax
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
X-List-Received-Date: Fri, 19 May 2017 14:39:04 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 05/18/2017 09:29 PM, Peter Lei wrote:
> Fix "ERROR: ExpansionError during parsing" when building with multilib.

merged.

thanks
>
> Signed-off-by: Peter Lei <peter.lei@ieee.org>
> ---
>   meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb
> index d3d9ebc..2d93aca 100644
> --- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb
> +++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb
> @@ -10,7 +10,7 @@ PACKAGES = "packagegroup-security-tpm-i2c"
>   SUMMARY_packagegroup-security-tpm-i2c = "Security TPM i2c support"
>   RDEPENDS_packagegroup-security-tpm-i2c = " \
>       ${@bb.utils.contains('MACHINE_FEATURES', 'tpm', 'packagegroup-security-tpm', '', d)} \
> -    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm2', 'packagegroup-security-tpm2, '', d)} \
> +    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm2', 'packagegroup-security-tpm2', '', d)} \
>       kernel-module-tpm-i2c-atmel \
>       kernel-module-tpm-i2c-infineon \
>       kernel-module-tpm-i2c-nuvoton \


