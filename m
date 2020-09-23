Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.8915.1600851357154057272
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Sep 2020 01:55:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@basmevissen.nl header.s=default header.b=NFGdzhsf;
 spf=softfail (domain: basmevissen.nl, ip: 198.145.29.25, mailfrom: abuse@basmevissen.nl)
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 75B6E38C0717
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2020 01:55:56 -0700 (PDT)
Received: from hosting.emcodev.net (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 69C54212002;
	Wed, 23 Sep 2020 10:55:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=basmevissen.nl;
	s=default; t=1600851352; h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/v4o/mX45jJk7U79/rfQERG5F8TDCu3RBTvDf8GOdiY=;
	b=NFGdzhsfycpru9YgCqODKn9g5mSTF9Hkwn2pdHS3RoR5OTVLx1yQJOXKtSY4ijPdUl3Fg8
	7XxvGw6gXXKWkvcVQoc9qKbznMPPJx3rvg71QYmGVrxoK/CE3p950cbi1NdxbqpTmKHESf
	Qt8+q6t5rqsZLL2vv1SAQ87v819obcsbkKL6W4TKshVEaz1U/stYprJmaNUs3tg64cejau
	Tny+xutjEAX1I2VKodJpBzCg7vrgIugUfhBaEC+u3ME+u3ln3Pzp8J98sOWyzC74SAzyu+
	FIAY8irdTmX+ujsyLU8hj2NPDtesSwjbEW/f4aNiLqctM3v6FIirJePPXpYOZYUhKM8Zr0
	s5fHB6cAbVgZvlLYGF4G4q2MDzinRbWh2MIsKvKsKJtdBADDJwp61/uaFMDWg9XBWLT1D7
	dwJ0XPhKW4nCs/n7//NgSN/3eufYOdD8y/Dbid/Hs6XLaU8toQWqYLVKkcgGULY/At0UUH
	ldomFG7Ulhjfgq4uNcaL/MFger8LjYcIBtZs2oWqi7fMxN96rAWSzzi0Mj/rHYeYbz1g5i
	+G5Sg0FfpbUid/lYQKKgDtVkGZYmRWf8u+xM3zRIP0vJZscM3DFD0wfQ8O31WMPMKbe+Y2
	+xMfEyLzZygzqu1cp5HDwG6vQq+Pok5AI0B8DstYc9XD0YC92hZ4E=
MIME-Version: 1.0
Date: Wed, 23 Sep 2020 10:55:52 +0200
From: "Bas Mevissen" <abuse@basmevissen.nl>
To: Chen Qi <Qi.Chen@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [meta-cgl][PATCH] ucarp: fix build error with gcc-10
In-Reply-To: <20200923075623.23073-1-Qi.Chen@windriver.com>
References: <20200923075623.23073-1-Qi.Chen@windriver.com>
User-Agent: Roundcube Webmail/1.4.8
Message-ID: <b93b0b27a4633138dac7038f43d24fc1@basmevissen.nl>
X-Sender: abuse@basmevissen.nl
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

On 2020-09-23 09:56, Chen Qi wrote:
> gcc-10 uses '-fno-common' by default, causing multiple definition
> error. Use '-fcommon' to fix this problem.
> 
> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
> ---
>  meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
> b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
> index d17baa0..87e5ada 100644
> --- a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
> +++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
> @@ -37,6 +37,9 @@ SYSTEMD_AUTO_ENABLE = "disable"
>  export FETCHCMD_wget = "/usr/bin/env wget --secure-protocol=TLSv1_2
> -t 2 -T 30 --passive-ftp --no-check-certificate"
>  EXTRA_OECONF += "--sysconfdir=${sysconfdir}/${BPN}"
> 
> +# Fix build error with gcc-10
> +CFLAGS_append = " -fcommon"
> +

Why are you not patching the source to use "extern" where it is needed, 
like in pacemaker? How many errors does ucarp give?
Then it might also a patch that upstream will take, solving the issue 
forever in a proper way.

>  # fix the perms for config.rpath
>  do_configure_prepend() {
>      chmod 755 ${S}/config.rpath
> 
> 

