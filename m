Return-Path: <marcelo.magallon@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1E45E00DA5; Wed,  6 Dec 2017 10:51:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.233.16.89 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 350 seconds by postgrey-1.32 at yocto-www;
	Wed, 06 Dec 2017 10:51:52 PST
Received: from g2t1383g.austin.hpe.com (g2t1383g.austin.hpe.com [15.233.16.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56B77E00D71
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 10:51:52 -0800 (PST)
Received: from g2t2354.austin.hpe.com (g2t2354.austin.hpe.com [15.233.44.27])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g2t1383g.austin.hpe.com (Postfix) with ESMTPS id DEDF22489
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 18:46:01 +0000 (UTC)
Received: from g2t2360.austin.hpecorp.net (g2t2360.austin.hpecorp.net
	[16.196.225.135])
	by g2t2354.austin.hpe.com (Postfix) with ESMTP id 06330AF;
	Wed,  6 Dec 2017 18:46:01 +0000 (UTC)
Received: from hpe.com (nyx.americas.hpqcorp.net [10.250.101.104])
	by g2t2360.austin.hpecorp.net (Postfix) with ESMTP id 9C6733D;
	Wed,  6 Dec 2017 18:46:00 +0000 (UTC)
Date: Wed, 6 Dec 2017 12:45:59 -0600
From: "Marcelo E. Magallon" <marcelo.magallon@hpe.com>
To: "Koehler, Yannick" <yannick.koehler@hpe.com>
Message-ID: <20171206184557.3mxnbq6h6x4hebqh@nyx.americas.hpqcorp.net>
References: <CS1PR8401MB0840E46EE333163758C5D9B3ED320@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
	<d7cac90e-b07c-fe83-945f-82725ceeda81@linux.intel.com>
	<CS1PR8401MB08404303F44A38D6603DE3B3ED320@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
	<20171206144616.zlfpkmqgz2wsexol@nyx.americas.hpqcorp.net>
	<CS1PR8401MB0840A114AD0B63DF969D818BED320@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
MIME-Version: 1.0
In-Reply-To: <CS1PR8401MB0840A114AD0B63DF969D818BED320@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
User-Agent: NeoMutt/20170609 (1.8.3)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: externalsrc + sstate why is not compatible?
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
X-List-Received-Date: Wed, 06 Dec 2017 18:51:59 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Dec 06, 2017 at 10:59:37AM -0600, Koehler, Yannick wrote:
> Ok, will try that.  If that works, I may see if I can alter the file
> fetcher to use symlinks, not sure if sstate subsystem will like that
> or not.

That was my idea, but I've never tried it. I'm sure the devil is in the
details. If you can elide the copy and simply replace it with a symlink,
you'd get faster builds.

> If we do so, and someone change the file in /src/somedir will yocto
> redo the fetch/unpack pattern to recopy over the original content by
> itself?

Yes, it does. You change a file, and the fetcher runs again. This means
S and B are deleted (if split), do_fetch runs again and S is populated
fresh. do_configure and do_compile populate B again.

Once you get that working, people will complain as to why the system is
rebuilding everything instead of just the file that changed :-) It might
work "as expected" if S = B, and your build system in the module is
smart enough to produce the correct dependencies (e.g. cmake or bazel).

Marcelo

