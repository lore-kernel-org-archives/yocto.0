Return-Path: <Rainer.Koenig@ts.fujitsu.com>
Received: from dgate10.ts.fujitsu.com (dgate10.ts.fujitsu.com [80.70.172.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20964E006B4
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2011 00:15:39 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1536-bit key; insecure key) header.i=Rainer.Koenig@ts.fujitsu.com;
	x-dkim-adsp=none (insecure policy)
DomainKey-Signature: s=s1536a; d=ts.fujitsu.com; c=nofws; q=dns;
	h=X-SBRSScore:X-IronPort-AV:Received:X-IronPort-AV:
	Received:Message-ID:Date:From:User-Agent:MIME-Version:To:
	CC:Subject:References:In-Reply-To:X-Enigmail-Version:
	Content-Type:Content-Transfer-Encoding;
	b=q63JMqsKFhgjrNjbc0JaRhuz2/4rirnRXuXlKBJGzPtdN/PFO3WXIXCy
	jcoE8+BauflXuyNa1cJE6Offefnq9qclWU1TBX+i/sfVuGGG1YJIPLL3r
	vRZHayF5mlVU0JHDSKOWDUw1n5QtL0eEraCfEohu57vbL1SkooegNmmWw
	qK8i+cUAS9WIR+NQR5WmlgmFMyCQjfMUtwsP55I8KVM5UX+2Zen+ZC2u3
	Hwy+t3905NfXpz/kkvTnXoAqZQRQW;
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=ts.fujitsu.com; i=Rainer.Koenig@ts.fujitsu.com;
	q=dns/txt; s=s1536b; t=1319094940; x=1350630940;
	h=message-id:date:from:mime-version:to:cc:subject:
	references:in-reply-to:content-transfer-encoding;
	bh=XjK1o34mX73zI5mZiFy/naxmu51jTXYv+6+jurPvGOQ=;
	b=mpizcjTIVBxQewsj18Cxtbd7bIfqxNLTKwld/ZRziOcaimCpozft3gGj
	PRFNz+TBBIFS04ds2Ah9O3qqGkq5eBJmtHktQo9vTla6ap1c7nlMM0O9o
	ez32WkK+HVBFdKxBOu/wsoMGXGTZYGHaqRg+k2pSzHACleq84MSXEXP/J
	S8SIDlBjo0zBnZGhBRZoE8UgCBYBJ5a8CXJSWNpUSgo2Re4IJZdO6NaxJ
	UhCZrB8nf3mlehFRt33PDNqy4GMH9;
X-SBRSScore: None
X-IronPort-AV: E=Sophos;i="4.69,377,1315173600"; d="scan'208";a="90763733"
Received: from abgdgate40u.abg.fsc.net ([172.25.138.90])
	by dgate10u.abg.fsc.net with ESMTP; 20 Oct 2011 09:15:37 +0200
X-IronPort-AV: E=Sophos;i="4.69,377,1315173600"; d="scan'208";a="122023277"
Received: from abg3595c.abg.fsc.net (HELO [172.25.145.158]) ([172.25.145.158])
	by abgdgate40u.abg.fsc.net with ESMTP; 20 Oct 2011 09:15:37 +0200
Message-ID: <4E9FCA99.5050209@ts.fujitsu.com>
Date: Thu, 20 Oct 2011 09:15:37 +0200
From: Rainer Koenig <Rainer.Koenig@ts.fujitsu.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.16) Gecko/20111004 Icedove/3.0.11
MIME-Version: 1.0
To: William Mills <wmills@ti.com>
References: <4E9EC5ED.6050503@ts.fujitsu.com> <4E9EF175.1050605@ti.com>
In-Reply-To: <4E9EF175.1050605@ti.com>
X-Enigmail-Version: 1.0.1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Questions from a greenhorn about build problems
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
X-List-Received-Date: Thu, 20 Oct 2011 07:15:40 -0000
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8bit

Hi William,

> I think your probably running a bit ahead of us.

Yes, looks like. :-) Well, my goal is to be able to build a small
embedded Linux distribution for ARM based SoC boards. Currently we have
the Beagleboard and the TI 8148 EVM to test, but sooner or later there
will be another board available.

> Keep in mind that at this point meta-texasinstruments has not been 
> tested with the poky layer stack.  It is a work in progress and is being 
> tested with a layer stack that includes oe-core + meta-oe + meta-angstrom.

Yes. I just tried out and ran into problems, that's what makes a
developers life challenging. ;-) I really don't mind about problems as
long as I have hope to fix them.

> It is certainly in scope for meta-ti (new name) to work w/ a stock poky 
> release or snapshot, were just not verified that yet.  As of now our 
> plan includes building and testing the following layer combinations:
> 
> oe-core + meta-ti
> oe-core + meta-ti + meta-openembedded + meta-angstrom
> poky + meta-ti
> oe-core + meta-ti + meta-openembedded + meta-arago <= TI SDKs

Looks good, even that I faild in playing around with oe-core. One thing
that made me fail could be the SOCKS problem that I solved now. Maybe I
give it another test run. Anyway, yocto seems to fit perfectly for my
needs since its well documented and gave me some success events.

> I would encourage you to subscribe to our brand spanking new meta-ti 
> mailing list to discuss, monitor and prod.

Ok, I subscribed to that list too.

> I don't think any of this explains why you are having proxy issues and 
> we will let the rest of the thread play out for that.  I just wanted to 
> set your expectations.

That's ok. Looks like the proxy issue is solved and my next obstacle in
the way to success is called u-boot_git.bb. So far I see that this
recipe fails during configure because it wants to make with a rule
"ti8148_evm_config_nand" that is not available in the u-boot sources
that we currently get from git.denx.de.

On the other hand I have the TI EZSDK kit available and there is an
u-boot version shipped that covers the TI8148 EVM board, so I guess all
I have to do is to include those sources in the meta-ti layer so that
u-boot will also build for my TI8148 EVM.

Well, I keep on testing and trying things out. Still new to the embedded
world after many years of desktop Linux.

Regards
Rainer
-- 
Dipl.-Inf. (FH) Rainer Koenig
Project Manager Linux Clients
Dept. PDG WPS R&D SW OSE

Fujitsu Technology Solutions
Bürgermeister-Ullrich-Str. 100
86199 Augsburg
Germany

Telephone: +49-821-804-3321
Telefax:   +49-821-804-2131
Mail:      mailto:Rainer.Koenig@ts.fujitsu.com

Internet         ts.fujtsu.com
Company Details  ts.fujitsu.com/imprint.html

