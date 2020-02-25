Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
 by mx.groups.io with SMTP id smtpd.web09.338.1582655786299560666
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Feb 2020 10:36:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@stusta.de header.s=default header.b=mloaYkt5;
 spf=pass (domain: stusta.de, ip: 141.84.69.5, mailfrom: bunk@stusta.de)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 48Rnh53M1jz4M;
	Tue, 25 Feb 2020 19:36:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1582655782;
	bh=OltEKKx+Rk6bVqHFXwYAolWJajfZUWSl1MnjkkIvoHw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mloaYkt5Y+2CaBvbvq+AyUpWEf9cVSqy0a77FdTLnYEzC4bAhbEOUxgQHVMp59URy
	 PT+qtaLizWn2FyvDDhDtwBaVg0BU+Pwzs8RVN8xjOOEBa1Ptayls1FnfpKKqyQZzpH
	 PgiF397MGmKJOfFVwxdAflGXfe+U+KRe3JkrzIf/qglTf1Bxf3Eu5upfNX100+PW/5
	 OSuvD9dEBr7KOlgUN737oL8tQ0Pb9TwG7mbupNbrlmR/GCpraR+GuHaVjze0d8wwiA
	 C13XbzvIHjKUvPnt7precTtccyAiNJ0hcbgAuFtUgDQUuXwx6mQ0pcZ1Tq14gM7gqJ
	 1LwOAJ9On3+UlqQazl/8CnDl4xgnLohhqisDafv0tNQQ59BBEKqwkmUH6UXCyF6jgB
	 2QaICUli0s1ocKki5MElZt5H+ZEDGXKCojbn1Povls9mr7zuge4tSpAHv9/WQze0Sf
	 xguti6CdZS+HTk6bVPgX2YyAIPEUvzC/rYL4uXFemEzggxYGsAXo3YuQzBI9Nu2J72
	 992M2CySZMZqTzmX1uB3vLD/rmyBjq94s6U4N8PDOJHIiwkjk/ZfdBGGmKXQBvO90e
	 CdcjlcL2TLd2Gp+eI0M097yup3DKxek8xuyui1+veUlXRPakVi9yiT5V3d5MWwaF3p
	 c9kgFNoTJvFcMwJ28w6wpA/s=
Date: Tue, 25 Feb 2020 20:36:16 +0200
From: "Adrian Bunk" <bunk@stusta.de>
To: Mark Hatle <mark.hatle@kernel.crashing.org>
Cc: yocto@lists.yoctoproject.org, jpewhacker@gmail.com
Subject: Re: [yocto] [[meta-mingw][PATCH] libgcrypt: disable amd64 optimization
Message-ID: <20200225183616.GA9058@localhost>
References: <20200225180214.114643-1-mark.hatle@kernel.crashing.org>
MIME-Version: 1.0
In-Reply-To: <20200225180214.114643-1-mark.hatle@kernel.crashing.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Tue, Feb 25, 2020 at 12:02:14PM -0600, Mark Hatle wrote:
> amd64 optimization when using with mingw32 sometimes results in:
> 
> | ../../libgcrypt-1.8.4/cipher/rijndael-tables.h:103:24: error: expected
> ']' before '.' token
> |  103 | #define encT enc_tables.T
>...

Please send a complete build log, this looks like a parallel build 
failure where some .c is compiled before some header it uses is
fully generated (or something similar).

> --- a/recipes-support/libgcrypt/libgcrypt_%.bbappend
> +++ b/recipes-support/libgcrypt/libgcrypt_%.bbappend
> @@ -1,3 +1,4 @@
> +EXTRA_OECONF_append_mingw32 = " --disable-amd64-as-feature-detection"
>...

I assume PARALLEL_MAKE = "" would also work instead?

cu
Adrian
