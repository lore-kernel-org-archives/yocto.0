Return-Path: <linuxhippy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75D22E00D1B; Thu, 28 Mar 2019 17:05:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (linuxhippy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
	[209.85.215.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED9A4E00D12
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 17:05:56 -0700 (PDT)
Received: by mail-pg1-f195.google.com with SMTP id q1so272932pgv.13
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 17:05:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=C6PhN//F3WWTjBgqtWoou8MY5+ZimQ/jaQm0IUmwpWw=;
	b=nCBHEOsQAH9ECsnAqDJwo08yqWxEj2ZeLMmDCSTsGVCa3bOu+TDuraizeOIlLZ+pkJ
	lIiFVLV1svvxGqK7F3c7yG35bbv6KMR+PP9XE4qsnOx4W0t+VOuNT/ZH/NCvA1EhY2hI
	dL5JtqlFsH47v4StUR2S+cwoKPZom6VWwRnorQct1b3q4wPifL5u7nr7H6EfUEEw44do
	7bg+d+2TeRi2coDk+11R+Q/KBHkNbOu4kKA29R47sWUz/Zxfl05H6AQ/S4h2JSM3R0N5
	tnA/m1CnNtP8vk+nkIMVA2UsWEafBHvtmoi9wD7UUTBW5x5Q7PTUAD9277ZXBcOpTpQZ
	NbNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=C6PhN//F3WWTjBgqtWoou8MY5+ZimQ/jaQm0IUmwpWw=;
	b=PXqgx2hb5PLsFqbTRrorzy67LVnIJWVAMbdUj/m2gkpuGQhelV3fyxRfh7spcujL07
	If/vvxcoe+78K8BWpzPIeJUqoX2JyO9Evr61o9Uboyf42nMHj8sgZl5LPg7JN/ZuPfWf
	eu0P7ktXq5qseCfFd4gdIXgSVOJbF94RfFzNGSYdUlMp4SxNJvt5TznH4JZqAfV0WHDe
	gQKnKA1S5NYBltyjspjK8rAkoSu2VZe0yYhSj7dXsma4z2JF67EsnBmg6cEtbuMh+pJA
	paZJ5zIbBAE0vQ9oqgfhKk8io9Jk2xOvWkZS08MNaURA1GkFNjWBqdUdV1cz1wBTm7iT
	1/AQ==
X-Gm-Message-State: APjAAAV3RrpOP0rFtcYCMHAzcuxj6XaPtLwZ1845UFcTnhjQ1U9ka1D/
	8pCMmFNyOcoVmUayvvYMaPx02FATrK0coJpsdHnVEsOS
X-Google-Smtp-Source: APXvYqwyhwcydtP0ksqUVlf103wBKv1X8efGOucd7bSRbJGQbk3SxG51tNMYP6EmsnzNfMVLHK6ts6nqmxyxMKdOWTg=
X-Received: by 2002:a62:5ec2:: with SMTP id s185mr6253066pfb.16.1553817955837; 
	Thu, 28 Mar 2019 17:05:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAFvQSYSDbe5YEEvFG+sF8enGzG+AsGoms6TYe_DCv-snZiqRYw@mail.gmail.com>
	<CAJTo0LaromaqsWigi1skaoD5gRQp6JdPXg1WUBV=i8LRq2PHRQ@mail.gmail.com>
In-Reply-To: <CAJTo0LaromaqsWigi1skaoD5gRQp6JdPXg1WUBV=i8LRq2PHRQ@mail.gmail.com>
From: Clemens Eisserer <linuxhippy@gmail.com>
Date: Fri, 29 Mar 2019 01:05:43 +0100
Message-ID: <CAFvQSYTY4cFD9QbC6R3JHAqtc_7r9X_NAj8zb8mGA1iu_9A3EQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: pkg-config does not find "luajit" since upgrade to sumo
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
X-List-Received-Date: Fri, 29 Mar 2019 00:05:57 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Burton,

> > RDEPENDS_${PN} = "luajit"
> > inherit autotools pkgconfig
>
> Considering you're trying to use luajit at build time, it's probably
> sensible to have it as a build dependency instead (DEPENDS).

I've just tried it without success - it still fails stating luajit can
not be found - despite the fact that "bitbake luajit" seems to work
without any issues.

I am not sure it makes a difference, I additionally use the
meta-altera layer and I am running inside a debian chroot (in the same
environment where the build with angstrom-v2016.06-yocto2 actually
succeeds).

Could it have something to do with pkg-config not beeing prefixed -
like mentioned in the configure log?

Best regard, Clemens

 checking for arm-angstrom-linux-gnueabi-pkg-config... no
| checking for pkg-config...
/home/ce/yocto_xposure2019/build/tmp-angstrom-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/xpcompiler/0.1-r0/recipe-sysroot-native/usr/bin/pkg-config
| configure: WARNING: using cross tools not prefixed with host triplet

