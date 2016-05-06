Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51C2EE00566; Fri,  6 May 2016 08:18:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f171.google.com (mail-yw0-f171.google.com
	[209.85.161.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A19CE00321
	for <yocto@yoctoproject.org>; Fri,  6 May 2016 08:18:31 -0700 (PDT)
Received: by mail-yw0-f171.google.com with SMTP id o66so214239596ywc.3
	for <yocto@yoctoproject.org>; Fri, 06 May 2016 08:18:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=ATgxQODvkPGcgRa4Tj6XbOJ/9jWKEIrU61Pm2S0U8c4=;
	b=W0Gy8zd48b09Sg4A0uv6SXKi18krkN2e3j86bX1vKV9c+ULc2zQ0a1ft8dhYaj5yvK
	lWg0StBiq+Sf8n9A74jJ0SEXq7MpX0BvAEy/Indqrgtek6FPZoJWRaaPJIXMvmshrVvV
	HkhmZE+mhiUqLvNMY6e127WawO6ZvgMojqUNE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=ATgxQODvkPGcgRa4Tj6XbOJ/9jWKEIrU61Pm2S0U8c4=;
	b=B8fA7DMBI9jiMfdhmfvC6P78lUX3NgwS8Ks0kfj+hsaV0nFNpcVvc+y9LrqAgC+LB9
	o4/tprmG0hhJfCCEPnwnEUlqptg/OfifT7W1/HS6fyYPTl+avStUV+CHTO/6HDxCqPdK
	YihX2tdcGji/vYqY51HOsXxKMY0MSYNRKEFY5T0xp/RHS0+UWz7Z4p5QlqsrJlNG+OEB
	wJmDNqchHU7JH7rC3mILUq+QvcnD5lH3dN6/O2WCVvuqkyFxsiFoVDGuaXwpf++Bd1z0
	HwjY6k+euwGZVsxg31DpV/L8HfgRMDuSu3uagQG+hyz3ZoAql5m/GBHK9eme2y1p+wVo
	h4Hw==
X-Gm-Message-State: AOPr4FX5WdNXsEpj7czJaFD0Sw7xINudiHBkhqeYmZ1tVpn6IQKF4iSrpxfpFexLobMJvg==
X-Received: by 10.37.59.149 with SMTP id i143mr11872446yba.151.1462547910853; 
	Fri, 06 May 2016 08:18:30 -0700 (PDT)
Received: from bill-the-cat ([2001:470:8:32a:7c1e:757f:3bd8:53db])
	by smtp.gmail.com with ESMTPSA id m8sm9023554ywb.18.2016.05.06.08.18.29
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Fri, 06 May 2016 08:18:29 -0700 (PDT)
Date: Fri, 6 May 2016 11:18:37 -0400
From: Tom Rini <trini@konsulko.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160506151837.GE24828@bill-the-cat>
References: <CAMKF1spQn114r9dCAk9z7c3hw-NJp3pVoVP+f3gao2mhLTBHYg@mail.gmail.com>
	<CAMKF1spwimpQwSE38B5jWmyZXwMKy6znMEF9p-NmTM4mGGr+4g@mail.gmail.com>
	<CAJTo0Lb25x1H44nGn05d6qBVLDpyiaZ3XW40fdrAWcP_D+qYwg@mail.gmail.com>
	<CAJTo0LZZ3Hs_yrm5ceik4j8Orv-UQ9T72Wu=R_PCRKw4Y9-WCw@mail.gmail.com>
	<CAMKF1sozR3_Mhy5PKSaKCo7S2yHrtLzTNrUURFhN38gV0AbkYQ@mail.gmail.com>
	<20160427221005.GA19598@bill-the-cat>
	<403123E7-85F1-4CBF-9D6C-E6377B89D5EA@gmail.com>
	<20160428121437.GJ19598@bill-the-cat>
	<CAMKF1spK=tkagRSRCyWzipHt8v1atfuhZahQOQ8UZ0FiCs+UsQ@mail.gmail.com>
	<20160428180131.GN19598@bill-the-cat>
MIME-Version: 1.0
In-Reply-To: <20160428180131.GN19598@bill-the-cat>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembeded-devel <openembedded-devel@lists.openembedded.org>,
	OE Core mailing list <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] GCC 6 Recipes
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
X-List-Received-Date: Fri, 06 May 2016 15:18:35 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 28, 2016 at 02:01:31PM -0400, Tom Rini wrote:
> On Thu, Apr 28, 2016 at 07:01:34AM -0700, Khem Raj wrote:
> > On Thu, Apr 28, 2016 at 5:14 AM, Tom Rini <trini@konsulko.com> wrote:
> > > On Thu, Apr 28, 2016 at 12:08:46AM -0700, Khem Raj wrote:
> > >>
> > >> > On Apr 27, 2016, at 3:10 PM, Tom Rini <trini@konsulko.com> wrote:
> > >> >
> > >> > On Wed, Apr 27, 2016 at 10:53:52AM -0700, Khem Raj wrote:
> > >> >> thanks I think most of them come to these categories. So any help in
> > >> >> fixing them is welcome.
> > >> >>
> > >> >> 1. kernel older than 4.4, backport needed fixed into these branches or
> > >> >> move to newer kernels.
> > >> >> 2. uboot dont have gcc6 compiler header files, backport the needed fixes
> > >> >
> > >> > 9b2c282b348dfe966bbba967dc7a45ce817cce50 from mainline.
> > >> >
> > >> >> 2. meta-qt4 needs to use gnu++98
> > >> >> 3. gcc6 providing its own stdlib.h in libstdc++
> > >> >> 4. gcc6 swtiching to gnu++14 for C++ as default.
> > >> >> 5. GPLv2-only versions of recipes are simply old will need fixing
> > >> >>
> > >> >> I will take a stab at fixing the nativesdk recipes which is mostly due
> > >> >> to stdlib.h issue.
> > >> >
> > >> > Please do, I'd like to see some SDKs so I can get more U-Boot testing
> > >> > done with gcc-6 :)
> > >> >
> > >>
> > >> I have pushed couple of more fixes which should now fix the nativesdk issues and SDKs should be building
> > >>
> > >> Tree is here. Let me know how it goes.
> > >>
> > >> http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/gcc-6
> > >>
> > >> and also to github
> > >>
> > >> https://github.com/kraj/openembedded-core/tree/kraj/master
> > >
> > > debian/jessie, nodistro, MACHINE=qemux86. bitbake busybox:
> > > | make[1]: Leaving directory
> > > '/home2/trini/oe-gcc-6/openembedded-core/build/tmp-glibc/work/x86_64-linux/gcc-cross-initial-i586/6.0.0-r0/gcc-6.0.0/build.x86_64-linux.i586-oe-linux/gcc'
> > > | cp: cannot create regular file
> > > '/home2/trini/oe-gcc-6/openembedded-core/build/tmp-glibc/work/x86_64-linux/gcc-cross-initial-i586/6.0.0-r0/image/home2/trini/oe-gcc-6/openembedded-core/build/tmp-glibc/sysroots/x86_64-linux/usr/lib/i586-oe-linux.gcc-cross-initial-i586/gcc/i586-oe-linux/6.0.1/include/limits.h':
> > > No such file or directory
> > >
> > > Doing MACHINE=qemux86-64 provides a similar error.  Thanks!
> > 
> > I forgot to rename recipes to 6.1 after I did the gcc rebase since 6.1
> > released yesterday. Anyway done now. please retry.
> 
> Making progress now, thanks!

I meant to follow up sooner, sorry, but these spit out valid and useful
meta-toolchain packages and I'm using them for some U-Boot testing now,
thanks again!

-- 
Tom

