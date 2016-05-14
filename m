Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8048FE0088C; Sat, 14 May 2016 15:28:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f46.google.com (mail-qg0-f46.google.com
	[209.85.192.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0249E00849
	for <yocto@yoctoproject.org>; Sat, 14 May 2016 15:28:04 -0700 (PDT)
Received: by mail-qg0-f46.google.com with SMTP id 90so74312368qgz.1
	for <yocto@yoctoproject.org>; Sat, 14 May 2016 15:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Pn5zvLnPQ1WfdgKkMlvbrgNg8Vd0Un5odXPj4BFgO8o=;
	b=TA0SyCt2BWiE4rmQVeIVTpo2YhGHvq6LHl8JAU7BZstTo+/f3bpszNRT1YEi3QuMCP
	LRBvLswhXQJZjCYqN1PptTL4q0WC+Hn0UtDO1nelLpfDP0tMGVz9c+fEhFW52EAOiYMq
	vn483Be2uzKmiJ4SRRvuEL/30MrZNzpas4IJmmfjp/YFVA1hLabe0z8R6tlYQfZ28vhI
	EExa+clxTzLTCX4dWtTjhOzB28Ix3Jf9lOvCnk981oOp7Ldx+uAeuBRsCjmZc2KGg8Is
	GjLkvqTeIUVPNnnrfibejlNfTEuApMlSbN4dFcAeu1bxKWxK9y6bI/OYJHnGAgXO5rIt
	BOIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Pn5zvLnPQ1WfdgKkMlvbrgNg8Vd0Un5odXPj4BFgO8o=;
	b=I+65tbGKDdILh9npdLfMa5FIy7q4BtXcNb+dhNkiFWc14owTqXg6IkXdMemXQJicom
	XRFwgjM8pHZvzu44pMnKqQMF1OcgqMV1vZqWI9IEl61ch+K8OFF9NS7vjvPgTLD3T12z
	Nr9EEIk9Rk79hApvgTJhBIxlnCTla755EC9cS1RP/04y8DTbAHbmuHjU+mJLflUsSY2h
	A9Uyh+iVp8Ork8i2On8RsOl5Y1XOCu6cTEvigl8+oCIbmi11dgD586b5SZjxBSt8A3uF
	Cc4rOPqrGVIDhDHW8CTMeMH4njk8e6jZk2+Pb3Tdm/2AJ91Xbrm7lfthdfUDlLkpQk5B
	a0Xg==
X-Gm-Message-State: AOPr4FWPPLbrctcWzzi0bqdr9314mF1SHwoLTyFNAbIWP2X2QLFY/i07Onr+ufWaAaQoMuD4XU09DM1jIFkRAQ==
X-Received: by 10.140.150.20 with SMTP id 20mr23280170qhw.98.1463264883912;
	Sat, 14 May 2016 15:28:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Sat, 14 May 2016 15:27:34 -0700 (PDT)
In-Reply-To: <CABfz71e32ixS10u7Wyr+XnZm+N93s6tPNorYNRqf276xh5ay9Q@mail.gmail.com>
References: <CABfz71dsLkf5W9LDsEewXj2Rmw715jqqMFvwKE7WYT=83iAs6g@mail.gmail.com>
	<CAMKF1so7vzL4iKu5LiBKNK2cNBbV_0fuRoD_c7aVaN8x+kAh3Q@mail.gmail.com>
	<CABfz71dAJ4L6rKFgCOQgYNdqmr9jk5UaSLkMO=2PJ58gMBCLkw@mail.gmail.com>
	<CABfz71e32ixS10u7Wyr+XnZm+N93s6tPNorYNRqf276xh5ay9Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 14 May 2016 15:27:34 -0700
Message-ID: <CAMKF1srhr1uYJq53LZ+CKUNqYPAv3uq2onv3PtY=nVVyz7+bgA@mail.gmail.com>
To: Paul Knopf <pknopf@medxchange.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: machine arch files for Jetson TX1 (Quad-core ARMCortex-A57 MPCore Processor)
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
X-List-Received-Date: Sat, 14 May 2016 22:28:06 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, May 14, 2016 at 3:23 PM, Paul Knopf <pknopf@medxchange.com> wrote:
> NVideo provides the following crosstools-ng config for building a
> cross-compile toolchain.
>
> https://gist.github.com/anonymous/95b2ec71aebf8df644b1789bc3ed958d
>

with OE it will build everything for you
just clone

https://github.com/kraj/meta-jetson-tk1

add it to bblayers.conf
and then set MACHINE = "jetson-tk1"
and bitbake core-image-minimal


> Some parts I think that are relevant...
>
> ---------
> CT_ARCH="arm"
> CT_ARCH_SUPPORTS_BOTH_MMU=y
> CT_ARCH_SUPPORTS_BOTH_ENDIAN=y
> CT_ARCH_SUPPORTS_32=y
> CT_ARCH_SUPPORTS_WITH_ARCH=y
> CT_ARCH_SUPPORTS_WITH_CPU=y
> CT_ARCH_SUPPORTS_WITH_TUNE=y
> CT_ARCH_SUPPORTS_WITH_FLOAT=y
> CT_ARCH_SUPPORTS_WITH_FPU=y
> CT_ARCH_SUPPORTS_SOFTFP=y
> CT_ARCH_DEFAULT_HAS_MMU=y
> CT_ARCH_DEFAULT_LE=y
> CT_ARCH_DEFAULT_32=y
> CT_ARCH_ARCH="armv7-a"
> CT_ARCH_CPU="cortex-a9"
> CT_ARCH_TUNE="cortex-a9"
> CT_ARCH_FPU=""
> # CT_ARCH_BE is not set
> CT_ARCH_LE=y
> CT_ARCH_32=y
> CT_ARCH_BITNESS=32
> CT_ARCH_FLOAT_HW=y
> # CT_ARCH_FLOAT_SW is not set
> CT_TARGET_CFLAGS=""
> CT_TARGET_LDFLAGS=""
> # CT_ARCH_alpha is not set
> CT_ARCH_arm=y
> # CT_ARCH_avr32 is not set
> # CT_ARCH_blackfin is not set
> # CT_ARCH_m68k is not set
> # CT_ARCH_mips is not set
> # CT_ARCH_powerpc is not set
> # CT_ARCH_s390 is not set
> # CT_ARCH_sh is not set
> # CT_ARCH_sparc is not set
> # CT_ARCH_x86 is not set
> CT_ARCH_alpha_AVAILABLE=y
> CT_ARCH_arm_AVAILABLE=y
> CT_ARCH_avr32_AVAILABLE=y
> CT_ARCH_blackfin_AVAILABLE=y
> CT_ARCH_m68k_AVAILABLE=y
> CT_ARCH_mips_AVAILABLE=y
> CT_ARCH_powerpc_AVAILABLE=y
> CT_ARCH_s390_AVAILABLE=y
> CT_ARCH_sh_AVAILABLE=y
> CT_ARCH_sparc_AVAILABLE=y
> CT_ARCH_x86_AVAILABLE=y
> ---------
>
> What files do I need to build with this cross-toolchain, inside of Yocto?
>
>
> Thanks,
> Paul Knopf
> Software Engineer
> Med X Change, Inc
> pknopf@medxchange.com
>
> On Sat, May 14, 2016 at 6:14 PM, Paul Knopf <pknopf@medxchange.com> wrote:
>>
>> They are using "require conf/machine/include/tune-cortexa15.inc" for the
>> TK1, but the TX1 uses a Cortex A57, not a A15. There is no "tune-cortexa57".
>>
>> Thanks,
>> Paul Knopf
>> Software Engineer
>> Med X Change, Inc
>> pknopf@medxchange.com
>>
>> On Sat, May 14, 2016 at 6:08 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>>
>>> Look at kraj/meta-jetson-tk1 on github
>>>
>>> On May 14, 2016 2:17 PM, "Paul Knopf" <pknopf@medxchange.com> wrote:
>>>>
>>>> What configs do I need to include in my machine.conf to support this
>>>> processor?
>>>>
>>>> http://www.nvidia.com/object/jetson-tx1-dev-kit.html
>>>>
>>>> "require conf/machine/include/arm/arch-*.inc" ?
>>>>
>>>> Thanks,
>>>> Paul Knopf
>>>> Software Engineer
>>>> Med X Change, Inc
>>>> pknopf@medxchange.com
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>
>

