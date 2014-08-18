Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9543AE00563; Mon, 18 Aug 2014 11:27:01 -0700 (PDT)
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
	*      [209.85.213.176 listed in list.dnswl.org]
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 325F9E004F5
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 11:26:57 -0700 (PDT)
Received: by mail-ig0-f176.google.com with SMTP id hn18so8847163igb.3
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 11:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=AUvRNtS2la5Y+6GFKSOBXQdilg0ZuZRqyOqtFZm/7HA=;
	b=kfvATC8QwaFRlpThn6PFN1rZc/kV0klAyt19iWMlH73fY4hz6fCCPqcFCQvMId0KDS
	80amIe1+1ZFr+th/QXg6r64h7ZzC169nOhqWrMoQgcI4UTk8Ea0aub6Yl4uGZlvU6vmt
	+M0qXkZPnWieTtsHpMJjMY6xuMrLt2KqjPwwzvni64FTd+MEw2ST5h9zKRe+K1QQtQys
	pU/w4fXHwrc5eRnmNL9vGex6jnBmv+/KFlf4nBV2k9Kt1QaG81VQ8yJarkOyaVsRlAZE
	D+rn3vXEPzqgigyLrQjEEfg+0+91UldnH42rEP6U/zh8LzFGOcawBPHiOVBZdgBYWd8Z
	FrgQ==
X-Received: by 10.50.234.193 with SMTP id ug1mr756303igc.20.1408386416847;
	Mon, 18 Aug 2014 11:26:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.126.103 with HTTP; Mon, 18 Aug 2014 11:26:26 -0700 (PDT)
In-Reply-To: <20140818181424.GG12992@gmail.com>
References: <CAMKF1sp9Z6vj1Dz96_WYiHOtYFqa-zECrNHOFgb=dBUDJN2Z_g@mail.gmail.com>
	<20140818181424.GG12992@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 18 Aug 2014 11:26:26 -0700
Message-ID: <CAMKF1srjVfmfAWZ0mx+AfE_nR4erYtAEYt2OVhEsU+q++XKVrg@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, musl@lists.openwall.com,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Announcing meta-musl OE/Yocto layer supporting musl C library
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
X-List-Received-Date: Mon, 18 Aug 2014 18:27:01 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Aug 18, 2014 at 11:14 AM, Paul Barker <paul@paulbarker.me.uk> wrote:
> On Sat, Aug 16, 2014 at 05:50:38PM -0700, Khem Raj wrote:
>> Hello All
>>
>> musl <http://www.musl-libc.org/> is a newer implementation licensed
>> under MIT licence
>> A layer to support musl to supply your system C library as an
>> alternative to uclibc and eglibc/glibc  is now available at
>>
>> https://github.com/kraj/meta-musl
>>
>> README describes way to get going with it.
>>
>> Few things to note
>>
>> * Supports gcc 4.9 in OE not 4.8
>> * Current musl recipe is 1.1.4 based
>> * You need latest master of OE-Core
>> (106305227003761c3fc562c21bb859a5256f2b36) or          newer and
>> bitbake
>> * Its only able to build core-image-minimal
>> * core-image-minimal boots on qemuarm, qemuppc, qemumips, qemux86, qemux86-64
>>
>> I will send a request to add it to layerindex soon and then you should
>> be able to find it using
>> layerindex.opernembedded.org as well
>>
>> If you try it out on your hardware and/or have feedback I am
>> interested. Fork it from github, file bugs
>> send patches ....
>>
>> Happy hacking
>>
>
> core-image-minimal works with my configuration on qemuarm. It also successfully
> builds what will soon be released as opkg-0.2.3 and the recipe for toybox-0.4.9
> which I've recently created.
>
> I tried building core-image-full-cmdline as I think that would be good next step
> from core-image-minimal. I'm seeing failures in:
>
>   meta/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bb, do_compile
>   meta/recipes-extended/tcp-wrappers/tcp-wrappers_7.6.bb, do_compile
>   meta/recipes-extended/libtirpc/libtirpc_0.2.4.bb, do_compile
>   meta/recipes-extended/iptables/iptables_1.4.21.bb, do_compile
>   meta/recipes-connectivity/nfs-utils/libnfsidmap_0.25.bb, do_compile
>   meta/recipes-devtools/perl/perl_5.20.0.bb, do_compile
>   meta/recipes-extended/sysklogd/sysklogd_1.5.bb, do_compile
>   meta/recipes-extended/ethtool/ethtool_3.14.bb, do_compile
>   meta/recipes-extended/psmisc/psmisc_22.21.bb, do_compile
>   meta/recipes-extended/pax/pax_3.4.bb, do_compile
>   meta/recipes-extended/procps/procps_3.2.8.bb, do_compile
>   meta/recipes-extended/net-tools/net-tools_1.60-25.bb, do_compile
>   meta/recipes-extended/findutils/findutils_4.4.2.bb, do_compile
>   meta/recipes-extended/logrotate/logrotate_3.8.7.bb, do_compile
>   meta/recipes-extended/cronie/cronie_1.4.11.bb, do_compile
>   meta/recipes-devtools/elfutils/elfutils_0.148.bb, do_compile
>   meta/recipes-extended/at/at_3.1.14.bb, do_compile
>   meta/recipes-extended/iputils/iputils_s20121221.bb, do_compile
>   meta/recipes-extended/gzip/gzip_1.6.bb, do_compile
>   meta/recipes-extended/sudo/sudo_1.8.10p3.bb, do_compile
>   meta/recipes-extended/mc/mc_4.8.12.bb, do_compile
>
> I can share detailed logs if anyone wants them. I'll have a look and see if I
> can find some low hanging fruit amongst these which are easy to fix.
>


Thanks cool. Can you open a ticket on github with this information ?

