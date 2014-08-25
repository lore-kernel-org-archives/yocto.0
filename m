Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CC90E006DB; Sun, 24 Aug 2014 17:14:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f182.google.com (mail-lb0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94342E0044A
	for <yocto@yoctoproject.org>; Sun, 24 Aug 2014 17:14:43 -0700 (PDT)
Received: by mail-lb0-f182.google.com with SMTP id z11so11180387lbi.41
	for <yocto@yoctoproject.org>; Sun, 24 Aug 2014 17:14:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=qCBkpaRVKbLj2yOcD9aNkqJ5I5xhtU8ClELtGQBlVL4=;
	b=U1Lf7o6DJSWYh1tWm6yd5AiA0FexAGKKa4yxQi6CpCEYNcwghhMcFPsMLyOobsMH0d
	OwmvOh4tpUioWmAoNLRdK1ob0SAamiabL27oIgL2lNKm9gt7x8kt/TSmBPQbI+YGX1zm
	ID4JpOSccU+V8buaahjKk/6Xm6xxmPtqkVIi3BvE6qSUkW+bcS0YWBk9f4wS1ATHk0mB
	X8E/lYcEQ8x/fX+C6WV4uimMmuED0NvL6pd6rLBCTbBMTcMTvYs4XSuwpS4yUYJUKdSm
	TxgI5ff2CpfZr9p6qBGahOZPprDfBrCcirvZShkPi/75Zj46/VgiYzBn59aHyoBSdxKO
	Vd2A==
MIME-Version: 1.0
X-Received: by 10.112.33.74 with SMTP id p10mr16996474lbi.0.1408925681023;
	Sun, 24 Aug 2014 17:14:41 -0700 (PDT)
Received: by 10.112.202.67 with HTTP; Sun, 24 Aug 2014 17:14:40 -0700 (PDT)
In-Reply-To: <53FA6F09.6040502@gmail.com>
References: <53FA6F09.6040502@gmail.com>
Date: Sun, 24 Aug 2014 20:14:40 -0400
Message-ID: <CADkTA4PeNvAuv8SDfUNtpsTT_25OHvTMRbuFtAe2-gJZQxB4rA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
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
X-List-Received-Date: Mon, 25 Aug 2014 00:14:51 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Aug 24, 2014 at 7:02 PM, akuster808 <akuster808@gmail.com> wrote:
>
> Hello,
>
> Is anyone else seeing kernel build issue on 3.14 with the resent updates?
>
>
> I am getting the following errors on ppc64 (standard/qemuppc). x86-64 built
> fine (core-image-minimal). building ppc now.

Hopefully qemuppc is building 32 bit :) .. but outside of that, I was
able to build 3.14
fine on Friday.  But I just started another build to see if something
snuck past in the
recent feature merges.

Bruce

>
> |   LD      init/built-in.o
> | mm/built-in.o: In function `.vm_cgroup_css_alloc':
> | vm_cgroup.c:(.text+0x7103c): undefined reference to `.res_counter_init'
> | vm_cgroup.c:(.text+0x71090): undefined reference to `.res_counter_init'
> | mm/built-in.o: In function `.vm_cgroup_read_u64':
> | vm_cgroup.c:(.text+0x711c4): undefined reference to
> `.res_counter_read_u64'
> | mm/built-in.o: In function `.vm_cgroup_charge_memory_mm':
> | (.text+0x71348): undefined reference to `.res_counter_charge'
> | mm/built-in.o: In function `.vm_cgroup_uncharge_memory_mm':
> | (.text+0x713a0): undefined reference to `.res_counter_uncharge'
> | mm/built-in.o: In function `.vm_cgroup_charge_shmem':
> | (.text+0x71508): undefined reference to `.res_counter_charge'
> | mm/built-in.o: In function `.vm_cgroup_uncharge_shmem':
> | (.text+0x71560): undefined reference to `.res_counter_uncharge'
> | make[2]: *** [vmlinux] Error 1
> | make[1]: *** [sub-make] Error 2
> | make: *** [all] Error 2
>
> - armin
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

