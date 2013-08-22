Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67D93E00747
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2013 03:33:03 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 22 Aug 2013 03:30:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,933,1367996400"; d="scan'208";a="366736949"
Received: from timevans-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.122.241])
	by orsmga001.jf.intel.com with ESMTP; 22 Aug 2013 03:32:57 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Barry G <mr.scada@gmail.com>
Date: Thu, 22 Aug 2013 11:32:56 +0100
Message-ID: <4868939.GRWcjUSgc3@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <4227060.Yf8nXQEr8V@helios>
References: <CAFrvcAredx-8f=-4V1RYr=AM9vxeiuR8=52T6+aOjuEGQhwVbQ@mail.gmail.com>
	<4227060.Yf8nXQEr8V@helios>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Yocto Methods of Loading DB Schema
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
X-List-Received-Date: Thu, 22 Aug 2013 10:33:04 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 22 August 2013 11:16:48 Paul Eggleton wrote:
> Hi Barry,
> 
> On Wednesday 21 August 2013 16:21:22 Barry G wrote:
> > The last big hurdle is how to load the database.  We are using
> > Yocto 1.3 and I have ported in the postgresql recipies from
> > gumstix-yocto.  Since I can't load the postgresql database schema
> > without the cross-compiled postgresql database running, I assume
> > this needs deferred to first device boot.  I can use pkg_postinstall
> > to create/populate the postgresql databases, but this seems a little
> > dirty since the text version of the sql would need to be on the
> > device image to load.
> > 
> > Is anyone else doing anything like this?  Is there a best known
> > method for performing these kind of operations?
> 
> I've not done anything like this myself, but if the process of loading the
> database is specific to the target device/arch and can't be run directly on
> the build host, I do know we have some support for running processes like
> these under qemu on the host to avoid the need to run anything on first
> boot - see meta/classes/pixbufcache.bbclass and
> meta/classes/gtk-icon-cache.bbclass, as well as the intercept scripts in
> scripts/postinst-intercepts/ that get used when these are run on the build
> host during root filesystem construction.

Hmm, I missed that you said you were using 1.3. You won't find the above in 
that version since IIRC that code was introduced in 1.4; however you could use 
a similar technique (using QEMU in application emulation rather than system 
emulation mode to run the appropriate tools for the target architecture).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

