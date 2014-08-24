Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6517EE006DB; Sun, 24 Aug 2014 16:25:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B20C9E0044A
	for <yocto@yoctoproject.org>; Sun, 24 Aug 2014 16:25:19 -0700 (PDT)
Received: by mail-ig0-f171.google.com with SMTP id l13so2010217iga.4
	for <yocto@yoctoproject.org>; Sun, 24 Aug 2014 16:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=yzcizdx824js2iQN0dNur3V4O7JNlr0s37POewpos6Y=;
	b=E11Vui+zCFvYB/2lDuHQotrf14tQI+Gztkl7qMB2YebPcFZzU6C173iMfpVSj7tG/m
	TpEtUkJ4zaWuFah0RI/7Qotw4GXOzNVOLJ7wIYqn0hvvqeyt44vqZNbhDtc56dlDXwUX
	E7Yfme+kGqv0HXpPQ4EEY+mqFvOR3Id6+e60+RHxMtv6pci/dGT7Ec4kLcbESK+ueV2i
	EGHz5IVB43RqqwR4+694Zfl7CtLTsbDoWulw/rOW6lAG/tMV4EDfKMkn/Wwx21fHaX7u
	W7lOzlGwGLzi4/0cSMHwPeS9zG8vRUZbFX53u4fitY5oPeB9kHkfuEZfUciB3agg9bpk
	Mb1w==
X-Received: by 10.50.111.112 with SMTP id ih16mr11974121igb.30.1408922718754; 
	Sun, 24 Aug 2014 16:25:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.102.67 with HTTP; Sun, 24 Aug 2014 16:24:48 -0700 (PDT)
In-Reply-To: <CAMKF1srMoavYLXfrs=KoUArTxqrJbGFX2koahB-wE3Dm=51GWw@mail.gmail.com>
References: <53FA6F09.6040502@gmail.com>
	<CAMKF1srMoavYLXfrs=KoUArTxqrJbGFX2koahB-wE3Dm=51GWw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 24 Aug 2014 16:24:48 -0700
Message-ID: <CAMKF1sohuxWjSyMmH=JDU=Dx0xEx3JX1q+0aTQbXV=8-dABiCw@mail.gmail.com>
To: akuster808 <akuster808@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: New kernel error after syncing
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
X-List-Received-Date: Sun, 24 Aug 2014 23:25:21 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Aug 24, 2014 at 4:22 PM, Khem Raj <raj.khem@gmail.com> wrote:
> On Sun, Aug 24, 2014 at 4:02 PM, akuster808 <akuster808@gmail.com> wrote:
>>
>> Hello,
>>
>> Is anyone else seeing kernel build issue on 3.14 with the resent updates?
>>
>>
>> I am getting the following errors on ppc64 (standard/qemuppc). x86-64 built
>> fine (core-image-minimal). building ppc now.
>>
>> |   LD      init/built-in.o
>> | mm/built-in.o: In function `.vm_cgroup_css_alloc':
>> | vm_cgroup.c:(.text+0x7103c): undefined reference to `.res_counter_init'
>> | vm_cgroup.c:(.text+0x71090): undefined reference to `.res_counter_init'
>> | mm/built-in.o: In function `.vm_cgroup_read_u64':
>> | vm_cgroup.c:(.text+0x711c4): undefined reference to
>> `.res_counter_read_u64'
>> | mm/built-in.o: In function `.vm_cgroup_charge_memory_mm':
>> | (.text+0x71348): undefined reference to `.res_counter_charge'
>> | mm/built-in.o: In function `.vm_cgroup_uncharge_memory_mm':
>> | (.text+0x713a0): undefined reference to `.res_counter_uncharge'
>> | mm/built-in.o: In function `.vm_cgroup_charge_shmem':
>> | (.text+0x71508): undefined reference to `.res_counter_charge'
>> | mm/built-in.o: In function `.vm_cgroup_uncharge_shmem':
>> | (.text+0x71560): undefined reference to `.res_counter_uncharge'
>> | make[2]: *** [vmlinux] Error 1
>> | make[1]: *** [sub-make] Error 2
>> | make: *** [all] Error 2
>
> Do you have CONFIG_CGROUP_VM turned off ?

if this is on make sure CONFIG_RESOURCE_COUNTERS is enbled too.
>
>>
>> - armin
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

