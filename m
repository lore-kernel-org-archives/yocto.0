Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 226C6E006DB; Sun, 24 Aug 2014 16:22:47 -0700 (PDT)
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
	*      [209.85.213.170 listed in list.dnswl.org]
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52B80E0044A
	for <yocto@yoctoproject.org>; Sun, 24 Aug 2014 16:22:41 -0700 (PDT)
Received: by mail-ig0-f170.google.com with SMTP id h3so3396272igd.3
	for <yocto@yoctoproject.org>; Sun, 24 Aug 2014 16:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=lnv+2//XK52mQA8HJ83i7mc+vJTXJh4kIOcVYsdep/o=;
	b=zGIfLw4FElCj0yzKz5QUvl4VnWA1YTfuFTBrNKl9ZRvZU+0k6QFJdsVFCO12b3LTOO
	3im1OU5nXwvleGmi/m1f2cnBjEM/Y89rO3nDHBeb80I/qiOvLS9sAX+0GA16dKsO3M3M
	rOAOLGR51dNH+nEGalWjW/BvDk/NTVNLuIJbkO8OhBDvTF70lPEqxYWvw4t42YJOJEEi
	qqQG+dei1TrLBRxicsIsoSSlpJ+bdYGo4GdVixIWO4cl32IpugWyh3LGJz0tj+jBL6b9
	khr8B5SMgmIWdwBkPPdJZ5HlbQkEcyb0uqdw7ZKD9rDS+LYEFD/BCXwv3pYO3wpeuLkw
	uq1g==
X-Received: by 10.50.153.83 with SMTP id ve19mr12275675igb.4.1408922561467;
	Sun, 24 Aug 2014 16:22:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.102.67 with HTTP; Sun, 24 Aug 2014 16:22:11 -0700 (PDT)
In-Reply-To: <53FA6F09.6040502@gmail.com>
References: <53FA6F09.6040502@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 24 Aug 2014 16:22:11 -0700
Message-ID: <CAMKF1srMoavYLXfrs=KoUArTxqrJbGFX2koahB-wE3Dm=51GWw@mail.gmail.com>
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
X-List-Received-Date: Sun, 24 Aug 2014 23:22:47 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Aug 24, 2014 at 4:02 PM, akuster808 <akuster808@gmail.com> wrote:
>
> Hello,
>
> Is anyone else seeing kernel build issue on 3.14 with the resent updates?
>
>
> I am getting the following errors on ppc64 (standard/qemuppc). x86-64 built
> fine (core-image-minimal). building ppc now.
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

Do you have CONFIG_CGROUP_VM turned off ?

>
> - armin
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

