Return-Path: <raj.khem@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BB15E0070D
	for <yocto@yoctoproject.org>; Tue,  3 Jan 2012 21:57:42 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iapp10 with SMTP id p10so42949531iap.35
	for <yocto@yoctoproject.org>; Tue, 03 Jan 2012 21:57:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=G0/arbAc5MWjfWkqa6BYrZR0lj5OUWk9wuSqTh4ndjQ=;
	b=Ek22QPJ7QmAH/GZw9CdIXisEVbNbXjjakxXmGBoXmzX1qH2yNRFYSYt8Fpb2npgmMM
	9Tq8RytYrC2CrgwnYyP7hRPYtR3bYT2KnNvTdEak2uuQ1TPFmIUqkJpdH3CBClllc0/t
	AifXrqecw73G6ga4PwHfsHfMe1z1nqQyq4cv8=
Received: by 10.50.180.138 with SMTP id do10mr65841871igc.20.1325656661612;
	Tue, 03 Jan 2012 21:57:41 -0800 (PST)
Received: from sakrah.homelinux.org
	(99-57-141-118.lightspeed.sntcca.sbcglobal.net. [99.57.141.118])
	by mx.google.com with ESMTPS id g7sm13040953igv.7.2012.01.03.21.57.39
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 03 Jan 2012 21:57:40 -0800 (PST)
Date: Tue, 3 Jan 2012 21:58:03 -0800
From: Khem Raj <raj.khem@gmail.com>
To: Pedro Algarvio <pedro@algarvio.me>
Message-ID: <20120104055803.GL31275@sakrah.homelinux.org>
Mail-Followup-To: Pedro Algarvio <pedro@algarvio.me>,
	yocto@yoctoproject.org
References: <4F02005F.4080705@algarvio.me>
MIME-Version: 1.0
In-Reply-To: <4F02005F.4080705@algarvio.me>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto@yoctoproject.org
Subject: Re: Python Math Module
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 04 Jan 2012 05:57:42 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (02/01/12 19:07), Pedro Algarvio wrote:
> I've started to port the Mini2440 openembedded layer found at
> http://code.google.com/p/mini2440/ and also PySide from Angstrom or
> the old OpenEmbedded layers I think(can't remember now).
> 
> My layers can be found at http://dev.ufsoft.org/projects/yocto
> 
> I found out while porting PySide's examples that python does not ship
> with it's math module, is there a specific reason why?

add RDEPENDS_${PN} += "python-math" to your  pyside recipe

> 
> I need to add that I'm pretty new to all this, so I might be doin'
> things the wrong way...
> 
> Anyway, any pointers on how to add the python's math module to an
> image is more than welcome, I'd like to include it as a dependency for
> the pyside examples bb script.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
-Khem

