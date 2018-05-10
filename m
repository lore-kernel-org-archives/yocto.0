Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFC37E00C25; Thu, 10 May 2018 11:50:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f66.google.com (mail-pl0-f66.google.com
	[209.85.160.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0C83E009BC
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 11:50:05 -0700 (PDT)
Received: by mail-pl0-f66.google.com with SMTP id t12-v6so1807501plo.7
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 11:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=aPUi75QM5kUXpOBGZzDpVnBxhkzO9ZqF5xqBLsjVYBg=;
	b=f7ogmbOcGrXna1RUSq24pIRQZveJq0XZth6QS7cfO1oY0RRhm5vwcKkw9CznrgjXzF
	E9aUDY15n+nPn95RaNta5Z8QvQ7Z/u4yxcFlw2gmrbkKNAxhZr1z6mRyp5SYqD3CD88f
	4vTe6JWNdjM7/k4jAzgSFyUV+cFerW8J9veMZsZ13yilMddjnkITR3+yXaQl1wEF/6JS
	D3QbgfhegafHkLfpBmXsQnnegT+mDuSSlkoA1aZyyUmq9ntcGqpcdOZRDjjRYD5Z9IuD
	t6mIWp2CDXLhhdomo7//2BZr72MYoFIS1SWHCxztjjPtiU8LGv6WTVpMuhur51LHC4AT
	5eCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=aPUi75QM5kUXpOBGZzDpVnBxhkzO9ZqF5xqBLsjVYBg=;
	b=ajsbAlmlsuIJKvJeRuvORWD5fAyKaJ7386fimMAAGA04NtDFKPiYm4xkn9AmsQLcjf
	iFaDZ48b08e2MBRHIJWckM6yU9TTeYYKeSQKpWhw9OIoHvJBGIJQmcybCCMuL4YXgAD1
	WHFFetQiZDusqig/IT4m/Y3Hf4J42bie0rNYcVOhUrzlHWKCNGsM35dfBzDExcMsEEKV
	2wbslNlyszKS/kNPbxWTi/83Kq62oOdLJr5eCQDAKwU0eUiAYzwsCR/LkapUlEutzgxx
	daAEt/l9CIYkUlwGclVPd3WBhk+b3J8cso4CPnxmK1xcheUoKwc7dnC+HxyAvFx4zRc9
	c1Qw==
X-Gm-Message-State: ALKqPwem6VE8R9JMk45Ikch80+RviCMu8HmbxJQmHSZmF0UqhoysodQj
	9pTK+ruB+MwQ8+QrRdj/7DvCPTZw
X-Google-Smtp-Source: AB8JxZqPkVo6OANnXGxT5BQaF8egrVXBZ3oc5ykrpsZfmQInlDrKyjcDwdIPq1hLRD+P5Oqv5JnQug==
X-Received: by 2002:a17:902:3181:: with SMTP id
	x1-v6mr2452134plb.198.1525978204495; 
	Thu, 10 May 2018 11:50:04 -0700 (PDT)
Received: from hermes.local ([2601:646:877f:9499:49fa:9382:bcbc:28ae])
	by smtp.gmail.com with ESMTPSA id
	n10-v6sm4362534pfk.145.2018.05.10.11.50.03
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 10 May 2018 11:50:03 -0700 (PDT)
To: Martin Jansa <martin.jansa@gmail.com>
References: <CAMKF1spa1bbrUjQWbhdUw3C4Cxu99fU=Be3sEm+SYFNq_oxEKw@mail.gmail.com>
	<CA+chaQcUU=Dew1cATDBpuA2_f_eh1=DAyEMaDHfVx7kY88rZhg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <8d962430-ac63-5e97-fd32-2c0464c62acb@gmail.com>
Date: Thu, 10 May 2018 11:50:02 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0)
	Gecko/20100101 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <CA+chaQcUU=Dew1cATDBpuA2_f_eh1=DAyEMaDHfVx7kY88rZhg@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] GCC 8.1
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
X-List-Received-Date: Thu, 10 May 2018 18:50:06 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi Martin

Thanks for testing and reporting back

On 5/9/18 2:38 AM, Martin Jansa wrote:
> My initial tests show couple issues, but usually caused by other changes 
> in that branch, not the gcc-8 itself.
> 
> 1) strace-4.22 from 
> http://git.openembedded.org/openembedded-core-contrib/commit/?h=kraj/gcc-8&id=af33a8b721cc9caebd3f5226b4c5903f666ab654
> fails to build with ptest enabled (it builds with 4.20 version if I 
> revert this change)
> ../../strace-4.22/tests/inject-nf.c: In function 'main':
> ../../strace-4.22/tests/inject-nf.c:86:1: error: r7 cannot be used in 
> asm here
>   }
>   ^

are you targeting thumb1 ? how can I reproduce it ?

> Makefile:6313: recipe for target 'inject-nf.o' failed
> make: *** [inject-nf.o] Error 1
> make: Leaving directory 'strace/4.22-r0/build/tests'
> 
> 2) glibc with obsolete rpc disabled from: 
> http://git.openembedded.org/openembedded-core-contrib/commit/?h=kraj/gcc-8&id=0cd820424d4bdb5cc68e7503e09a0359fd21150a
> causes busybox's mount applet to fail building:
> util-linux/mount.c:252:11: fatal error: rpc/rpc.h: No such file or directory
>   # include <rpc/rpc.h>
>             ^~~~~~~~~~~
> compilation terminated.
> make[1]: *** [util-linux/mount.o] Error 1
> make: *** [util-linux] Error 2

I think you sent a patch already for this so discussion for fix are on 
going.

> 
> 3) grub and grub-efi fails to build with gcc8:
> In file included from ../grub-2.02/grub-core/partmap/gpt.c:26:
> ../grub-2.02/include/grub/gpt_partition.h:79:1: error: alignment 1 of 
> 'struct grub_gpt_partentry' is less than 8 [-Werror=packed-not-aligned]
>   } GRUB_PACKED;
>   ^
> In file included from ../grub-2.02/grub-core/disk/ldm.c:26:
> ../grub-2.02/include/grub/gpt_partition.h:79:1: error: alignment 1 of 
> 'struct grub_gpt_partentry' is less than 8 [-Werror=packed-not-aligned]
>   } GRUB_PACKED;
>   ^
> ..
> ../grub-2.02/grub-core/fs/btrfs.c:186:1: error: alignment 1 of 'struct 
> grub_btrfs_inode' is less than 4 [-Werror=packed-not-aligned]
>   } GRUB_PACKED;
>   ^
> 

I think we need to align end of these structs here, can you try
https://src.fedoraproject.org/rpms/grub2/raw/master/f/0198-align-struct-efi_variable-better.patch

> 4) iotivity fails to build with gcc8:
> service/resource-encapsulation/src/common/primitiveResource/unittests/PrimitiveResourceTest.cpp: 
> In lambda function:
> service/resource-encapsulation/src/common/primitiveResource/unittests/PrimitiveResourceTest.cpp:164:30: 
> error: 'value' is not captured
>                   ocRep[KEY] = value;
>                                ^~~~~
> 

this needs more investigation. May be move
https://github.com/iotivity/iotivity/blob/master/service/resource-encapsulation/src/common/primitiveResource/unittests/PrimitiveResourceTest.cpp#L160

just above
https://github.com/iotivity/iotivity/blob/master/service/resource-encapsulation/src/common/primitiveResource/unittests/PrimitiveResourceTest.cpp#L165

> 5) nativesdk-libxcrypt fails to build (not sure which change caused 
> this, it build OK with sumo since the -std=gnu99 addition.
> ../git/crypt-sunmd5.c:189:13: error: 'snprintf' output may be truncated 
> before the last format character [-Werror=format-truncation=]
>               "$" CRYPT_ALGNAME "," ROUNDS "%u$%s$",
>               ^~~
> 

something new, I will look into reproducing this.

> 6) couple internal components which usually fail to build with gcc8, 
> because of more strict warnings + Werror.

OK, feel free to send out question if you get stuck

> 
> I didn't get very far in testing, because our old kernel fails to build 
> with gcc8 and there are some other issues caused by other master 
> changes. But it doesn't look too bad (in my small test, lets see what 
> bitbake world will show), thanks a lot for new gcc.
> 

yes, older kernel needs fixes, especially to disable new warnings.
the mips/ppc fixes that I put out there might be helpful to cook up 
fixes for older kernels if running into same issues.

> Cheers,
> 
> 
> 
> 
> 
> On Sat, May 5, 2018 at 2:26 AM, Khem Raj <raj.khem@gmail.com 
> <mailto:raj.khem@gmail.com>> wrote:
> 
>     Hi All
> 
>     As you might have noticed that gcc 8.1 was released this week, I am
>     calling out for some testing help on testing branch so we can weed out
>     issues you might see in your setups. so if you have your
>     builders idling over weekend, then you know what they can do this
>     weekend :)
> 
>     Highlighted changes are
> 
>     https://gcc.gnu.org/gcc-8/changes.html
>     <https://gcc.gnu.org/gcc-8/changes.html>
> 
>     and porting doc is
> 
>     https://gcc.gnu.org/gcc-8/porting_to.html
>     <https://gcc.gnu.org/gcc-8/porting_to.html>
> 
>     The branch is here
> 
>     http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/gcc-8
>     <http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/gcc-8>
> 
>     Its uptodate on top of current master oe-core
> 
>     May fourth be with you !!
> 
>     Cheers!
> 
>     -Khem
>     -- 
>     _______________________________________________
>     Openembedded-core mailing list
>     Openembedded-core@lists.openembedded.org
>     <mailto:Openembedded-core@lists.openembedded.org>
>     http://lists.openembedded.org/mailman/listinfo/openembedded-core
>     <http://lists.openembedded.org/mailman/listinfo/openembedded-core>
> 
> 

