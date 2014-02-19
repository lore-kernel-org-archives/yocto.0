Return-Path: <koansoftware@gmail.com>
Received: from mail-bk0-f53.google.com (mail-bk0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF3BAE007C9
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2014 05:50:35 -0800 (PST)
Received: by mail-bk0-f53.google.com with SMTP id my13so205930bkb.26
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2014 05:50:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:reply-to:organization:user-agent:mime-version
	:to:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=0NSTJiE5iJ12VrQ0Jml3uGG/0DQgniqag0kXw2xz+fg=;
	b=bgJGYw63b5Kjp8bF/TAVeenJmzp8DpuxtG2tBqP03yOtuVwnGnPH5EAHpMF5FF/sPf
	WHd1j0LT7hR/6VOpv1/e+lUaASlhwfS8Stj/9GaUGhoV9hNlDTcTz6QdMZXQ9vXpnZwX
	GcAIOmEhpf9CwpC2cqv6R+75vKS6L5ED+mbN5kz27DNJFvrzwGV6TEG15zD7XTu7cDpk
	PG+Q33shsEmHuyAcAioaXgSPUwEJRZ8G+7JJWBvlt423r5mb28iE75N0tvZW3RvgJXT/
	sl5vHSAL0c3ksdoAhlOTPyuNNCQIKASrlxItmu/xdUBzGtbgukfYcN332oFqylTEQeHK
	FImQ==
X-Received: by 10.204.58.66 with SMTP id f2mr229378bkh.150.1392817834503;
	Wed, 19 Feb 2014 05:50:34 -0800 (PST)
Received: from [192.168.0.5]
	(host56-7-static.30-87-b.business.telecomitalia.it. [87.30.7.56])
	by mx.google.com with ESMTPSA id zf3sm601981bkb.4.2014.02.19.05.50.31
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 19 Feb 2014 05:50:33 -0800 (PST)
Message-ID: <5304B6A4.8010602@gmail.com>
Date: Wed, 19 Feb 2014 14:50:28 +0100
From: Marco <koansoftware@gmail.com>
Organization: MC
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CABhkJRdZ9zR+Pn8dWtNe2Xeob5QhcXTZPkNoNGgd_yHmbDzJKg@mail.gmail.com>	<CAE_REAvKGCm4k=UZvG7UDe6updeBs-TYNGVa+BtoF4jUPFbwhQ@mail.gmail.com>	<CABhkJRdrR2EeadeZHQBhmLei1Yb-T454F1bE7xZTyMK4n_zGzQ@mail.gmail.com>	<5D91AAAA-D703-484D-943A-6E8D1FF6644A@gmail.com>	<CABhkJRdkG816YH8+ghUtwsV6MkaaTd0q2JXtjsqaHRjWYM4ePg@mail.gmail.com>
	<47700885-9D75-4CA5-AA01-FA5A95242C2C@gmail.com>
In-Reply-To: <47700885-9D75-4CA5-AA01-FA5A95242C2C@gmail.com>
Subject: Re: meta-java compilation failure
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: koansoftware@gmail.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 19 Feb 2014 13:50:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Il 16/02/2014 07:09, Khem Raj ha scritto:
>
> On Feb 15, 2014, at 4:03 AM, Ashish Dalela <ashish.dalela@gmail.com
> <mailto:ashish.dalela@gmail.com>> wrote:
>
>> checking where jni_md.h is installed... /usr/local/classpath/include
>> checking /usr/local/classpath/include/jni_md.h usability... no
>> checking /usr/local/classpath/include/jni_md.h presence... no
>> checking for /usr/local/classpath/include/jni_md.h... no
>> configure: error: cannot find jni_md.h
>> Configure failed. The contents of all config.log files follows to aid
>> debugging
>>
>
> It seems to me that cacao is missing patch for supporting openjdk7, can
> you check if it has
> this patch applied in sources
>
> http://www.complang.tuwien.ac.at/hg/cacao/rev/a567bcb7f589
>
> if not then you have to apply it
>
> -Khem
>

I have the same problem here with meta-java (branch master and dora are 
the same)
The patch above looks already applied to the original sources 
m4/java-runtime-library.m4 used by cacao_1.6.1

Do you have any other idea?

TIA
-- 
Marco

