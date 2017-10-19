Return-Path: <marlon.smith10@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D08B0E00D46; Thu, 19 Oct 2017 14:23:16 -0700 (PDT)
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
	*      [209.85.192.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F428E00D41
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 14:23:16 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id t188so7832623pfd.10
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 14:23:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=Gw1XJjHCChRN7qY/c51qa4HmhL1yaH74dakqw6/A1Ng=;
	b=PjyujqrNXtlaO+Ipne6iuyPJY001D4BYO0JYsgglAVGEhomxjFc1+x+5KyIMigrR+W
	11uCaqMwwZnzDBpfsWmP/rit0ecmtFfYFKjsYiFIMosARP2ldOjMajLQaPnpaRFVOzFc
	6tD82q754pDmRBA7MUgi2JcSUpTlki2uqfOGXOJ/7MqupKTBdUT9hgfp4PNOehK+Cgww
	CfU26lfvzzz08ymegrInNE1E++2E8DXsUirkoPQCnQA5xiSSGrJVxr9XkVxROFhByOdh
	/9WAKv7koBhKb+4if7Z8TY5RLxG8vwRcnuSDM80EcgKS6mmRlpeW8MaUdYSp9GhhyKAK
	XEgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=Gw1XJjHCChRN7qY/c51qa4HmhL1yaH74dakqw6/A1Ng=;
	b=cQLrUoSFleOIMolPBove65ykhn9EW5/RWNtI9tddxGaR3cJzuYWk+YRHXEtVaO4Z0Z
	cL4BxPwWX8i9azZ+vbY6EIqztWt9duj/szR18hxP3peWl9Ol1ZoxSCOC9KNG1oyzW39j
	QTLbpov84pXVyeE3URb5fUiaZb/VTa1CHrq8isN3oBiAp9n/mCX4bhNFP9rDSYtEz/Uz
	e9i8bHe8w9/Ottwq0DFA9rzT1E1o7QLeI42Ivt477r9xrxzaz5m7rJqNGQgjDS2gTDHK
	qqa03D2yVwQX8kkNrI93SFdo+iGi/JdjydwpEd5GZoSuIP6k0pFoyADjcynMR9PAHjR2
	Ybpw==
X-Gm-Message-State: AMCzsaVgedQKjMCQRR84iQZYnqjw9UWqwBHrTr66VnNECpHpb25kt4cd
	aYvNyDNSoeDiBIGVnomCdVI=
X-Google-Smtp-Source: ABhQp+T6uwa5Hf5ltCdtxibz3wLcZ9cBIeYrN5UAEyetA5VrLMsRDgi65KF0koSNR76tS6F9kmI+8w==
X-Received: by 10.99.5.205 with SMTP id 196mr2485498pgf.419.1508448195721;
	Thu, 19 Oct 2017 14:23:15 -0700 (PDT)
Received: from [10.2.0.10] (S0106a84e3f53ec33.gv.shawcable.net.
	[184.66.238.184]) by smtp.gmail.com with ESMTPSA id
	j6sm29869623pfk.159.2017.10.19.14.23.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 19 Oct 2017 14:23:15 -0700 (PDT)
Message-ID: <1508448194.4636.77.camel@gmail.com>
From: Marlon Smith <marlon.smith10@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Thu, 19 Oct 2017 14:23:14 -0700
In-Reply-To: <CAMKF1sqz8cCN=cE4zoc-HVH1K5FhAQdTkXDMuTCw1H763Www3g@mail.gmail.com>
References: <1508364829.4636.30.camel@gmail.com>
	<CAMKF1srFzdJusbLTTEikKQHrzKinot3=YgR+nkegsKGUCbM6tQ@mail.gmail.com>
	<1508441896.4636.70.camel@gmail.com>
	<CAMKF1sqz8cCN=cE4zoc-HVH1K5FhAQdTkXDMuTCw1H763Www3g@mail.gmail.com>
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
X-List-Received-Date: Thu, 19 Oct 2017 21:23:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2017-10-19 at 14:18 -0700, Khem Raj wrote:
> On Thu, Oct 19, 2017 at 12:38 PM, Marlon Smith <marlon.smith10@gmail.
> com> wrote:
> > 
> > On Wed, 2017-10-18 at 22:50 -0700, Khem Raj wrote:
> > > 
> > > On Wed, Oct 18, 2017 at 3:13 PM, Marlon Smith <marlon.smith10@gma
> > > il.c
> > > om> wrote:
> > > > 
> > > > 
> > > > Hi everyone,
> > > > 
> > > > I'm trying to build the Linux backports project to get updated
> > > > wifi
> > > > drivers
> > > > on an older kernel.  The problem is that when building
> > > > backports,
> > > > it first
> > > > builds several tools that need to be run natively before cross-
> > > > compiling the
> > > > rest of the project.
> > > > 
> > > > I know how to write a bitbake recipe to compile natively, and
> > > > how
> > > > to write
> > > > one to build for the target, but I can't figure out how to
> > > > combine
> > > > the two.
> > > > The backports project has steps for LTIB:
> > > > 
> > > >  %Build
> > > >  export PATH=$UNSPOOF_PATH
> > > > 
> > > >  make menuconfig prefix=%{_prefix} \
> > > >    CROSS_COMPILE=${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX} \
> > > >    ARCH=$LINTARCH KLIB=${TOP}/rootfs/lib/modules/%{kversion} \
> > > >    KLIB_BUILD=${TOP}/rpm/BUILD/linux
> > > > 
> > > >  export PATH=$SPOOF_PATH
> > > > 
> > > >  make prefix=%{_prefix} \
> > > >    CROSS_COMPILE=${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX} \
> > > >    ARCH=$LINTARCH KLIB=${TOP}/rootfs/lib/modules/%{kversion} \
> > > >    KLIB_BUILD=${TOP}/rpm/BUILD/linux
> > > > 
> > > > 
> > > > I believe what I need is an equivalent to the line export
> > > > PATH=$UNSPOOF_PATH
> > > > but I can't find anything in the Yocto documentation or mailing
> > > > lists that
> > > > would be equivalent to that.
> > > > 
> > > > 
> > > > Any help would be much appreciated!
> > > You might try this out
> > > 
> > > https://github.com/kraj/meta-himvis/blob/master/recipes-kernel/li
> > > nux-
> > > backports/linux-backports_4.14-rc4.bb
> > > 
> > > it does not work out of box but with few fixes here and there it
> > > should work
> > It looks like that recipe inherits backports_module and kernel-
> > backports_module-split.. do I need those files as well?
> > 
> backports_module is merged into recipe itsellf. Other one can be
> replaced with inehrtiting
> module bbclasss

Ok I'll give that a try.  Thanks for the help!

> 
> > 
> > > 
> > > 
> > > > 
> > > > 
> > > > 
> > > > 
> > > > Thanks
> > > > 
> > > > 
> > > > Marlon
> > > > 
> > > > 
> > > > --
> > > > _______________________________________________
> > > > yocto mailing list
> > > > yocto@yoctoproject.org
> > > > https://lists.yoctoproject.org/listinfo/yocto
> > > > 

