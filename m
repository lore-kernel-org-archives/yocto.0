Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29A84E014A5
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 06:57:52 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 04 Jun 2013 06:57:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,799,1363158000"; d="scan'208";a="347936634"
Received: from unknown (HELO helios.localnet) ([10.252.121.221])
	by orsmga002.jf.intel.com with ESMTP; 04 Jun 2013 06:57:50 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Tue, 04 Jun 2013 14:57:49 +0100
Message-ID: <4896833.vPV5cWFueY@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-23-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <CAAGt+t3VoPRzymiJKG5kwEXeD=SPDWO1KTa2AqE6QHG5t0XTyw@mail.gmail.com>
References: <CAAGt+t1SvAkQik=jAr5xPPBe7NE-VOwbDhLTnszst7NKF5W5TA@mail.gmail.com>
	<62291455.6hREtkkLEB@helios>
	<CAAGt+t3VoPRzymiJKG5kwEXeD=SPDWO1KTa2AqE6QHG5t0XTyw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Hello world-Checksum error
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
X-List-Received-Date: Tue, 04 Jun 2013 13:57:52 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 04 June 2013 15:42:06 Zafrullah Syed wrote:
> On Tue, Jun 4, 2013 at 3:26 PM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:
> > Yes, conf/bblayers.conf is supposed to be in the build directory; and
> > whichever build directory you are actually using. The build directory can
> > be anywhere, but you shouldn't really have two build directories unless
> > you know what you are doing - did you perhaps run oe-init-build-env with
> > no arguments in two different places? I suspect this is what has happened.
>
> I think yes. I usually give just *source oe-init-build-env *command, this
> is how i used earlier and failed. May be that is the reason it has created
> another build directory in /poky.
> What should be the command before building? i guess this(
> TEMPLATECONF=meta-gumstix-extras/conf
> source ./poky/oe-init-build-env ). so, every time i just need to give
> TEMPLATECONF  command before building?

You need to run oe-init-build-env at the start of every session yes, but you 
shouldn't need to specify TEMPLATECONF except when you first create the build 
directory. The important thing is you need to be in the same directory when 
you run oe-init-build-env *or* specify the path to the build directory as a 
parameter.
 
> Lastly, my meta-bebot directory should be as following ?
> 
> /poky
>   --meta-bebot
>       --conf
>          --layer.conf
>   --recipes-bebot
>     --hello
>       --hello.bb

If you have recipes-bebot under meta-bebot, yes.
 
> and meta-bebot path should be set in bblayers.conf file?

Yes.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

