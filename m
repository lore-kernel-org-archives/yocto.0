Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A9D8E010F3; Thu,  5 Jul 2018 02:53:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CD6CE00BFB
	for <yocto@yoctoproject.org>; Thu,  5 Jul 2018 02:53:37 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w659rVbE030580
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Thu, 5 Jul 2018 10:53:32 +0100
Message-ID: <386cff1e76b86bbd4f3569208fe224bd23b1cd96.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Aaron Chan <aaron.chun.yew.chan@intel.com>, yocto@yoctoproject.org
Date: Thu, 05 Jul 2018 10:53:31 +0100
In-Reply-To: <1530768887-9349-1-git-send-email-aaron.chun.yew.chan@intel.com>
References: <1530768887-9349-1-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Subject: Re: [PATCH] [yocto-ab-helper] clobberdir: Fix Unicode data expansion with utils API
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
X-List-Received-Date: Thu, 05 Jul 2018 09:53:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2018-07-05 at 13:34 +0800, Aaron Chan wrote:
> This fix is to move clobberdir from python2 to python3 to resolve
> unicode data
> in python2 and change the data extraction expansion from
> ourconfig["TRASH_DIR"]
> to utils.getconfig("TRASH_DIR", ourconfig) on "Clobber build dir"
> BuildStep
> 
> Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
> ---
>  janitor/clobberdir | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/janitor/clobberdir b/janitor/clobberdir
> index 5e04ed7..b05a876 100755
> --- a/janitor/clobberdir
> +++ b/janitor/clobberdir
> @@ -1,4 +1,4 @@
> -#!/usr/bin/env python2
> +#!/usr/bin/env python3
>  #
>  # Delete a directory using the ionice backgrounded command
>  #

At this point I think we're all getting frustrated with this. Please
can you give patches a sanity check when you're sending them. You
mention in the commit message what you need to do but the getconfig()
change is missing from the patch itself. This has happened with several
previous patches too where there were pieces missing. I deal with a lot
of patches and I can't fix up each one.

The commit message mentions its fixing something but not what (a
regression introduced by a previous change).

In the interests of resolving this I've fixed up this commit and merged
it:

http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder-helper/commit/?id=54f848380fc77a9b9523bd85cd1cdce075bfb96e

Cheers,

Richard

