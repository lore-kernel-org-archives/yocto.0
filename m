Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FF7EE00524
	for <yocto@yoctoproject.org>; Sun,  9 Feb 2014 03:44:52 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 Feb 2014 03:44:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,812,1384329600"; d="scan'208";a="480432100"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.123.140])
	by orsmga002.jf.intel.com with ESMTP; 09 Feb 2014 03:44:50 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Brad Litterell <brad@evidence.com>
Date: Sun, 09 Feb 2014 11:44:48 +0000
Message-ID: <4071843.gqm7EcH4Fa@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.2 (Linux/3.12.9-301.fc20.x86_64; KDE/4.12.2; x86_64; ; )
In-Reply-To: <E51394554A503C4E852F9BEE46B03E8D019CE809@TI-THOR.tasernet.com>
References: <E51394554A503C4E852F9BEE46B03E8D019CE809@TI-THOR.tasernet.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to exclude QT Debug libraries from image
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
X-List-Received-Date: Sun, 09 Feb 2014 11:44:59 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Brad,

On Sunday 09 February 2014 01:44:26 Brad Litterell wrote:
> I have a package "bar" that uses qt4-embedded (inherit qt4e).  When I
> include the dbg package for my stuff (bar-dbg) in the image, I also get
> several hundred MB of QT related debug files that I'm not interested in. 
> All I want to do is run GDB on my code, I don't care to debug into the QT
> code.
> 
> That makes sense as Yocto figures out the dependency chain for all the
> packages in the image, but I'm wondering if there is a way to defeat it
> since it will reduce the size of my image considerably (over 10x) and save
> me a lot of time during the build.
> 
> In essence, I want something like DEPENDS -= "<list of packages I want to
> exclude>".
> 
> Is there a way to do this?

Indeed there is; assuming you are using the dora (1.5) release or newer, you
can add the debug packages to BAD_RECOMMENDATIONS (since relationships between
-dbg and -dev packages are RRECOMMENDS.) This should also allow you to add
individual -dbg packages back in by explicitly adding them to IMAGE_INSTALL if 
you need to.

http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-BAD_RECOMMENDATIONS

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

