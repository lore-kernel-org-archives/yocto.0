Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4DDFE00B51; Tue, 30 May 2017 18:11:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f195.google.com (mail-wr0-f195.google.com
	[209.85.128.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D742E00B3D
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 18:11:44 -0700 (PDT)
Received: by mail-wr0-f195.google.com with SMTP id 6so162545wrb.1
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 18:11:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GWCJI2yp6jKsZLjMpU0wUmwJ7Fqs1uuQNNbFOb3SVaA=;
	b=X4hswOlo6iYBK7v2/0ZcTLhHOI4cm4sP1y/eYpLO7POHlp438XBy9QQLHJzHwnyzNj
	m9H+me6jJyArUMGMDTociFByVq2TT/0g/ehQQGwbAbkaozZwGnrNJil/HHMv9bVpwslZ
	zr2tAqV+RzN91zyortsdb8LkUVmvK53yeG67Hkf2IJqvi61dY003dU2slz4p+aMTQZkA
	vLxzbDfvXmwLy9ikPtiksjG+3WdbO3i9F+KXytcL6eB9wzQRzsUmj3aQxL6BrvqfYyF9
	5geM67euWS4PYEo1AmtM4uP7Ku4RCo/6I9JXgWH0CilAebSYkOb7g4pgfmXG+CQt5UMY
	lNvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GWCJI2yp6jKsZLjMpU0wUmwJ7Fqs1uuQNNbFOb3SVaA=;
	b=rO6w5vmi+kxxAGmF5jAg7UeViiidnUtWBB8WTwAM/P2qts39RP65R1A6vLgh5EMLop
	37snIFaSE3n/HvN+8wlssgep2pP9Jwfo+f92ljQUgY3QhvBE0143+Ngtb/oLutaxhkeT
	cANCWuqAeEugZzAPkyPzvSdMShbtHbZlBni4tNrpiJVJwjnUwcgsaYubEAXshWoNE543
	eDtt+kVi575NuEjeXVSzG//ZRb2ew4+DJ42EL4SsY/Qn6OiQ/2mi1SeEhTlZDxuaZXtf
	AGnQZDmd6kdLq2bWTHe0MhxWExyCR/PK3kk8k6mq8VwAHCcyJWWcSYYzcQ4ldRbMOcLT
	B7BQ==
X-Gm-Message-State: AODbwcBs6g+nBesXZpd3EAtempENISAHgvfG8ogU/tUoracL65KdDb1v
	YVrd7w6f46iIgm86TBv5KnklaIEGvQ==
X-Received: by 10.223.170.67 with SMTP id q3mr19261751wrd.19.1496193104244;
	Tue, 30 May 2017 18:11:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.176.148 with HTTP; Tue, 30 May 2017 18:11:43 -0700 (PDT)
In-Reply-To: <743ad939-371f-9396-c159-ac5844f9ebda@linux.intel.com>
References: <20170530184434.35089-1-alejandro.hernandez@linux.intel.com>
	<1496174354.26945.54.camel@linux.intel.com>
	<d3161d0d-4452-20fb-c9fa-8b234dc1caa5@linux.intel.com>
	<CAJ86T=V0UGAjZOwC54bu0T=PoycdkTabZJJQvRf3_gn0Thnhsg@mail.gmail.com>
	<743ad939-371f-9396-c159-ac5844f9ebda@linux.intel.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Tue, 30 May 2017 18:11:43 -0700
Message-ID: <CAJ86T=UVNvBZ3-pmqvVjKi=RKfy4qZkuUiS_jrrs2PoVtaT3DQ@mail.gmail.com>
To: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [PATCH] yocto-bsp: Fix QEMUARM based bsps to not offer SMP support
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
X-List-Received-Date: Wed, 31 May 2017 01:11:46 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, May 30, 2017 at 3:52 PM, Alejandro Hernandez
<alejandro.hernandez@linux.intel.com> wrote:
> Hey Andy,
> On 05/30/2017 05:32 PM, Andre McCurdy wrote:
>> On Tue, May 30, 2017 at 1:12 PM, Alejandro Hernandez
>> <alejandro.hernandez@linux.intel.com> wrote:
>>>
>>> Hey Leo,
>>>
>>> Nope, this change only applies to qemuARM, the other ARM based BSPs are
>>> based on > ARMv6
>>>
>>> Alejandro
>>>
>>> On 05/30/2017 02:59 PM, Leonardo Sandoval wrote:
>>>>
>>>> Alex,
>>>>
>>>> is this change only applies to qemu arm? I wonder if the native arm arch
>>>> needs a similar series.
>>>>
>>>> Leo
>>>>
>>>> On Tue, 2017-05-30 at 11:44 -0700, Alejandro Hernandez wrote:
>>>>>
>>>>> The SMP kernel config presents issues on qemuarm because:
>>>>>
>>>>> CONFIG_SMP=y
>>>>> Dependencies Missing:
>>>>>     - CPU_V6K or CPU_V7:
>>>>>       These are selected by setting:
>>>>>       CONFIG_ARCH_MULTI_V7=y
>>>>>       or
>>>>>       CONFIG_ARCH_MULTI_V6=y
>>>>>
>>>>> But our QEMU + ARM BSPs are based on armv4/v5 hence they are
>>>>> incompatible with CONFIG_SMP.
>>
>> Maybe time to think (again) about updating OE's qemu ARM builds to ARMv7.
>
> I believe qemu has deep issues with newer ARMs, and thats why it's been kept
> like that.

I think the stated reason is that since almost no real world
ARMv4/ARMv5 based projects track new releases of OE, the ARM qemu
targets are held back to ensure that ARMv4/ARMv5 continue to get some
test coverage (the fear being that if these targets don't get tested
via the OE qemuarm builds they won't get tested at all).

