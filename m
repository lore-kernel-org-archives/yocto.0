Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB420E01737
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 08:16:10 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 29 Oct 2013 08:15:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="381727269"
Received: from timevans-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.121.13])
	by azsmga001.ch.intel.com with ESMTP; 29 Oct 2013 08:15:42 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Tue, 29 Oct 2013 15:15:40 +0000
Message-ID: <1773539.ulxCIGh1xn@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <526FCF51.1000701@mlbassoc.com>
References: <526FCF51.1000701@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Can't build any images
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
X-List-Received-Date: Tue, 29 Oct 2013 15:16:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 29 October 2013 09:08:01 Gary Thomas wrote:
> Since this commit:
>    commit 8b42409dca729b7abbbdac04f533e161de86a3ef
>    Author: Paul Eggleton <paul.eggleton@linux.intel.com>
>    Date:   Fri Oct 18 15:19:58 2013 +0100
> 
>      scripts/oe-pkgdata-util: improve help text and command line parsing
> 
>      * Use optparse to parse command line
>      * Make help text actually helpful by describing what each command does
>      * Drop comment at the top listing the commands which is now superfluous
> 
>      (From OE-Core rev: feb317513fff638ad7abdba8ab34b8413f0ab055)
> 
>      Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
>      Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> 
> I get these errors for any image I try to create:
>    | Traceback (most recent call last):
>    |   File "/local/poky-cutting-edge/scripts/oe-pkgdata-util", line 334, in
>    |   <module>   |   
>    |     main()
>    |   
>    |   File "/local/poky-cutting-edge/scripts/oe-pkgdata-util", line 319, in
>    |   main
>    |   
>    |     glob(args[1:], parser.print_help)
>    |   
>    |   File "/local/poky-cutting-edge/scripts/oe-pkgdata-util", line 143, in
>    |   glob
>    |   
>    |     if debug:
>    | NameError: global name 'debug' is not defined
> 
> The attached patch fixes the problem, but I'm not sure if it is 100%
> correct.

Oops. I'm working on a proper fix now, sorry for the hassle...

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

