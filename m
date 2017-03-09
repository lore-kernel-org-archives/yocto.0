Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0E0FE00726; Wed,  8 Mar 2017 16:00:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.171 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBA60E004D2
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 16:00:51 -0800 (PST)
Received: by mail-qk0-f171.google.com with SMTP id p64so95429266qke.1
	for <yocto@yoctoproject.org>; Wed, 08 Mar 2017 16:00:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=34nTLOx1pbUhV+OadM3oeyFVsJ7b7wM3gBxnbkyaiVY=;
	b=YiuJlHDz6h4fMz4pF3CibYpktl8pBbo7Xova6Nw2J39eHu+EFvexhJ6C6DSSst4pAD
	UXDHaIYNcUIcjIpUR8tL88cUPm+WdA4S3/h2vns09cT/CJ7sXquJo3ydPW02vbEAwnig
	gZMLr78LR1NC+BK4SFBVrEt3zc2QcaJt5SB78=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=34nTLOx1pbUhV+OadM3oeyFVsJ7b7wM3gBxnbkyaiVY=;
	b=EkJNfxBnLS+mISkcEVhww3BYCV+YdRYaILGaOXbJAkGrK+XNTrNC/WvVIXKAsvvWVY
	EWihh2AG6sjBuI/eCt+UsGpPJ+ZlpvTytaNV311AabcBLS7cMlsOXOKlJeqJ/ZwjkyKk
	1rr/2a47pBE6aAOAlDXd7NHfeScRCqyvUmlL2y7nKtvNHiDC66I1EPFrEb/QZkGjDfay
	8reHx4x+czkfJtd6rLIHLF/R30xl08eXtzNJeWuXAmmZE74VOrTEVwzPsXxBwQVdSTnJ
	OHbsoRWrM53H3NEi6tPNqI5a3ilQb0w6d6WldK5/fGPj8lsRRZxVbAhzzsH6X3xRK7p4
	g3UQ==
X-Gm-Message-State: AMke39mFk1azM7UEF5a1/Iv/VrmSMEq5L5Pl7ENDXQEfQA/VhLmI4JGc/xbKWseG9Vz24g==
X-Received: by 10.237.55.99 with SMTP id i90mr10748268qtb.262.1489017650827;
	Wed, 08 Mar 2017 16:00:50 -0800 (PST)
Received: from bill-the-cat (cpe-75-180-228-133.ec.res.rr.com.
	[75.180.228.133]) by smtp.gmail.com with ESMTPSA id
	s46sm3153096qtc.62.2017.03.08.16.00.50
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Wed, 08 Mar 2017 16:00:50 -0800 (PST)
Date: Wed, 8 Mar 2017 19:01:05 -0500
From: Tom Rini <trini@konsulko.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170309000105.GI19897@bill-the-cat>
References: <20170308173147.21841-1-twoerner@gmail.com>
	<20170308232821.GH19897@bill-the-cat>
	<20170308234200.GA24752@haswell>
MIME-Version: 1.0
In-Reply-To: <20170308234200.GA24752@haswell>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] u-boot-rockchip: fix for binutils-2.28
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
X-List-Received-Date: Thu, 09 Mar 2017 00:00:54 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Mar 08, 2017 at 03:42:00PM -0800, Khem Raj wrote:
> On 17-03-08 18:28:21, Tom Rini wrote:
> > On Wed, Mar 08, 2017 at 12:31:47PM -0500, Trevor Woerner wrote:
> > 
> > > openembedded-core updated bintuils from 2.27 to 2.28 which causes u-boot to
> > > fail to compile:
> > > 
> > > 	arm-oe-linux-gnueabi-ld.bfd: u-boot: Not enough room for program headers, try linking with -N
> > > 
> > > Building with -N does fix the issue, so this patch simply adds that flag to
> > > the build so it succeeds.
> > > 
> > > This has been build-tested, as well as run-tested on the firefly.
> > > 
> > > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> > 
> > Unless there's an immediate need I would ask holding off on this for a
> > bit, I want to track down why this is happening.
> 
> perhaps linker map files from 2.27 and 2.28 binutils will help to
> understand it

Nothing is standing out yet:
https://lists.denx.de/pipermail/u-boot/2017-March/283278.html
https://lists.denx.de/pipermail/u-boot/2017-March/283286.html

I'm asking Trevor to poke at something that would change where we link
things at and perhaps there's a linker bug here (this platform says that
we link U-Boot at 0x0).

-- 
Tom

