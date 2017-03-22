Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62DBFE00939; Wed, 22 Mar 2017 05:39:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.42 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.42 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f42.google.com (mail-pg0-f42.google.com [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EFB0E00655
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 05:39:20 -0700 (PDT)
Received: by mail-pg0-f42.google.com with SMTP id g2so107579330pge.3
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 05:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=yCzupWyi1hpZD9Q8qXP9Q6udvj9SKmeQciiPNOZM4lo=;
	b=pvUSyuVTzWPQRbqgzYu8lYul5dNhvIQGLVFTWH00ob9L/qt1svoeIqJPu+eOYT1clf
	WC93dbQPEjQO0Ep7/mLxS2QIIVhdk9qwbl1qwy4T+Hpk1DqPp70of6BH/s7xcD6x8kJf
	g2kTr/U6zEYFzWzwFR7chG8gc6UzORmkBnsj3M2qcVvoHAPEI1KNEPS7YzJ1FoWZtVBz
	/ncfhMRmbaYo3CBQ7XbXX4WkeTzxjJVMKMXeBKWmNZ4xMO3/MR7TiHGnFoZS/ACSatk5
	toRDbOJkIEw8edez95fWh94viweXSZDcMsSfEjOOshhQCGDdgoSCughHhJ8z3QIoRwT9
	K56g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=yCzupWyi1hpZD9Q8qXP9Q6udvj9SKmeQciiPNOZM4lo=;
	b=Lmfy91iShh/fkMW1rB7hYDLkvegJsvl6WLDUn0fLvWdVrv8QEgfTrH2QQHn2VBvnh2
	M8BYjT5oYmpRTH1UzYxoHBzMZtk82oXH4iuOUQqXhqKY1cUdFKZL78qxL/A1AqmLnd5O
	d6TnxRLtk/QUmE30IiH+W3WcmE9jG9GRiQxEd8xbeWIqfgPiJYx7PdA5TXjIi01OZ8fX
	5/Hkv8K5mtRePGTzKNpq9UUAj2K483Iqu0HQzeoAvDu781LsHNxFX+Z3szzGgjvIx2HY
	Vu86akZ0DkiRr8+hnUNe85HTjdrqk0X6ax0/VHhgVBxhJPGAY2bzEpw/JdcMaM0Du/r5
	DlaQ==
X-Gm-Message-State: AFeK/H2nAItlKoV/CL4JIAs9GcAZcUP4+xFqx/ENVxQADkndUVWpmv6ZKFySbO3TF8aOOwiK
X-Received: by 10.99.199.69 with SMTP id v5mr43938035pgg.90.1490186359871;
	Wed, 22 Mar 2017 05:39:19 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:e3df:bf0a:9f90:498e?
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id r89sm3928756pfe.6.2017.03.22.05.39.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 22 Mar 2017 05:39:18 -0700 (PDT)
To: Benjamin Gaignard <benjamin.gaignard@linaro.org>, yocto@yoctoproject.org
References: <1490175555-5478-1-git-send-email-benjamin.gaignard@linaro.org>
From: akuster <akuster@mvista.com>
Message-ID: <b3ccbeec-b9be-630f-817f-23b428b556ad@mvista.com>
Date: Wed, 22 Mar 2017 05:39:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <1490175555-5478-1-git-send-email-benjamin.gaignard@linaro.org>
Subject: Re: [meta-security][PATCH] swtpm: depends on expect-native and socat-native
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
X-List-Received-Date: Wed, 22 Mar 2017 12:39:22 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 03/22/2017 02:39 AM, Benjamin Gaignard wrote:
> The configure script checks for expect and socat and
> fails when it is not present.

merged,

thanks
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@linaro.org>
> ---
>   recipes-tpm/swtpm/swtpm_1.0.bb | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-tpm/swtpm/swtpm_1.0.bb b/recipes-tpm/swtpm/swtpm_1.0.bb
> index 0d3bab0..7b9662a 100644
> --- a/recipes-tpm/swtpm/swtpm_1.0.bb
> +++ b/recipes-tpm/swtpm/swtpm_1.0.bb
> @@ -7,7 +7,7 @@ DEPENDS = "libtasn1 fuse expect socat glib-2.0 libtpm libtpm-native"
>   
>   # configure checks for the tools already during compilation and
>   # then swtpm_setup needs them at runtime
> -DEPENDS += "tpm-tools-native"
> +DEPENDS += "tpm-tools-native expect-native socat-native"
>   RDEPENDS_${PN} += "tpm-tools"
>   
>   SRCREV = "65d8e4d83447f4c13a41a6f995bd0490f49bc5ef"


