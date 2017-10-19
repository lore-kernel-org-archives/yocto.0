Return-Path: <marlon.smith10@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B6D1E00CD1; Thu, 19 Oct 2017 12:38:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marlon.smith10[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E985E00C45
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 12:38:19 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id z11so7449441pfk.4
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 12:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=fL3Vc39bVooqulTKcxScifMWYt6aezbZIizvmyn9LXk=;
	b=AmW3NZUlPcHnagItCBhoXYIfj1fi4tU0weFjN76PbyMPQebjHf5GSmTBJi/CawNnB0
	oLFz98cGwwld5UwygXwzsXdKv2kLXC7SI6dvrNgbk7CiFbmLphgd0bw/bH4JzoLJIDS0
	TKXi5wtC45WVCFDswKsH20Zm89BpPNosALjybRFZjhER2jt92VTI6jcXtJBo6AMITNdA
	7Ko0eDsY09ZiEO+9eZJuJ7+p8c+nBhHiwqY5Exp8JIwJbj4SiCr0khzV5MIWyR0ZN8sT
	kwxx9uv6j6RZB/i0vioNJPG/KgAreh/hYhnIxtWDm9rEPRYNIQu2wuAxyMyFsdUcQLU9
	esBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=fL3Vc39bVooqulTKcxScifMWYt6aezbZIizvmyn9LXk=;
	b=PrekuED3sKQ3KYg3Qs428MrpOeOFu2NyvgP1L9OWOce35NO1wC/z328UYEkbP0o4cO
	G6nLvFfIGwpuOodE1Zhdt9G+GGruWqx6g+NvbmEKKdyz5G9LDUGTeYpg0O/kKa3EKM1A
	O+ADRHZoD1UFTknsoN8pnkn16cBh5XDKlb48ROo5bG9BZhVtkSS7vIDSwp64kmuaT+XT
	CKqma0pZMqwTpj4fa0YebTIC8PPjxREoo6GpLw3jIhAywdYYJ0UOfaGdxF+XCb7uDMxf
	zQjwHxYZ4/7ImWbzeP9umZuHz6HAzNsrcZkglfVGtD4EIqKHGt/JjyPwlIxtrVRI7zqR
	dEYw==
X-Gm-Message-State: AMCzsaW8AkNeGcD5iRxUFuu4SBZq8wByhTNll99iBXtXGPRSPOs2JKnJ
	ppubeYb+4F9jbd150o/uo3OWwQ==
X-Google-Smtp-Source: ABhQp+QOLV7AsQRfsSW/FIymWRT9mKf0sex/J1V/nFnnSLkzbTJLBt6QiCK4IIq74aOWd+c4g7th/Q==
X-Received: by 10.99.37.193 with SMTP id l184mr2337950pgl.14.1508441898951;
	Thu, 19 Oct 2017 12:38:18 -0700 (PDT)
Received: from [10.2.0.10] (S0106a84e3f53ec33.gv.shawcable.net.
	[184.66.238.184]) by smtp.gmail.com with ESMTPSA id
	186sm25982869pfe.174.2017.10.19.12.38.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 19 Oct 2017 12:38:17 -0700 (PDT)
Message-ID: <1508441896.4636.70.camel@gmail.com>
From: Marlon Smith <marlon.smith10@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Thu, 19 Oct 2017 12:38:16 -0700
In-Reply-To: <CAMKF1srFzdJusbLTTEikKQHrzKinot3=YgR+nkegsKGUCbM6tQ@mail.gmail.com>
References: <1508364829.4636.30.camel@gmail.com>
	<CAMKF1srFzdJusbLTTEikKQHrzKinot3=YgR+nkegsKGUCbM6tQ@mail.gmail.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building kernel backports for ARM with Yocto
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
X-List-Received-Date: Thu, 19 Oct 2017 19:38:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2017-10-18 at 22:50 -0700, Khem Raj wrote:
> On Wed, Oct 18, 2017 at 3:13 PM, Marlon Smith <marlon.smith10@gmail.c
> om> wrote:
> > 
> > Hi everyone,
> > 
> > I'm trying to build the Linux backports project to get updated wifi
> > drivers
> > on an older kernel.  The problem is that when building backports,
> > it first
> > builds several tools that need to be run natively before cross-
> > compiling the
> > rest of the project.
> > 
> > I know how to write a bitbake recipe to compile natively, and how
> > to write
> > one to build for the target, but I can't figure out how to combine
> > the two.
> > The backports project has steps for LTIB:
> > 
> >  %Build
> >  export PATH=$UNSPOOF_PATH
> > 
> >  make menuconfig prefix=%{_prefix} \
> >    CROSS_COMPILE=${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX} \
> >    ARCH=$LINTARCH KLIB=${TOP}/rootfs/lib/modules/%{kversion} \
> >    KLIB_BUILD=${TOP}/rpm/BUILD/linux
> > 
> >  export PATH=$SPOOF_PATH
> > 
> >  make prefix=%{_prefix} \
> >    CROSS_COMPILE=${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX} \
> >    ARCH=$LINTARCH KLIB=${TOP}/rootfs/lib/modules/%{kversion} \
> >    KLIB_BUILD=${TOP}/rpm/BUILD/linux
> > 
> > 
> > I believe what I need is an equivalent to the line export
> > PATH=$UNSPOOF_PATH
> > but I can't find anything in the Yocto documentation or mailing
> > lists that
> > would be equivalent to that.
> > 
> > 
> > Any help would be much appreciated!
> You might try this out
> 
> https://github.com/kraj/meta-himvis/blob/master/recipes-kernel/linux-
> backports/linux-backports_4.14-rc4.bb
> 
> it does not work out of box but with few fixes here and there it
> should work

It looks like that recipe inherits backports_module and kernel-
backports_module-split.. do I need those files as well?

> 
> > 
> > 
> > 
> > Thanks
> > 
> > 
> > Marlon
> > 
> > 
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> > 

