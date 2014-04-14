Return-Path: <denis@denix.org>
Received: from vms173019pub.verizon.net (vms173019pub.verizon.net
	[206.46.173.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6676E00A2F
	for <yocto@yoctoproject.org>; Mon, 14 Apr 2014 15:44:26 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [71.191.205.189])
	by vms173019.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0N41008A3LTNUH20@vms173019.mailsrvcs.net> for
	yocto@yoctoproject.org; Mon, 14 Apr 2014 17:44:26 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 59806200AC; Mon,
	14 Apr 2014 18:44:09 -0400 (EDT)
Date: Mon, 14 Apr 2014 18:44:09 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Gary Thomas <gary@mlbassoc.com>
Message-id: <20140414224409.GF3370@denix.org>
References: <534A54F0.5020203@mlbassoc.com> <20140414023328.GY3370@denix.org>
	<534BB7B3.3060104@mlbassoc.com> <20140414154653.GZ3370@denix.org>
	<534C0415.20701@mlbassoc.com> <20140414160038.GB3370@denix.org>
	<534C0719.5050908@mlbassoc.com> <20140414160838.GC3370@denix.org>
	<534C40D9.40509@mlbassoc.com>
MIME-version: 1.0
In-reply-to: <534C40D9.40509@mlbassoc.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto@yoctoproject.org
Subject: Re: BBB doesn't boot
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
X-List-Received-Date: Mon, 14 Apr 2014 22:44:27 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Mon, Apr 14, 2014 at 02:11:05PM -0600, Gary Thomas wrote:
> Very interesting results!  These are the results from the build hosts I have:
>   Fedora 13 (i686) - fails
>   Fedora 17 (i686) - fails
>   Ubuntu 12.04 (x86_64) - boots

Interesting indeed. I have no idea what's so special about Fedora host - this 
is the first time I hear about issues with it. I may try experimenting with 
different VMs once I have more time...


> Note that I routinely build for other targets (which does imply other, mostly
> older, kernels) using all of these machines with no differences based on the
> build host.

Same here - building for different targets with different kernels from meta-ti 
and on 32 and 64 bit hosts and never had an issue like that...


> I don't know what's unique about an x86_64 host, but it does seem to work.
> 
> I was trying this to see how the stock Yocto support for the BBB competes with
> building using meta-beaglebone which I've been using successfully.  Based on
> these results, I'll be sticking with the meta-beaglebone approach for now
> (not just for the booting issue, but support for my LCD cape and other things
> that aren't there in the Yocto kernel)

This is not a "Yocto" kernel, this is a vanilla mainline 3.14 kernel (as a 
successor to 3.12 work done in meta-ti). Indeed, cape support is missing, as 
it is still not merged upstream, going through numerous iterations... The 
point of meta-beagleboard was to work on cape support and such, with the goal 
to upstream it, while meta-ti kept on working on SoC and peripheral support. 
Due to different circumstances, meta-beagleboard still uses 3.8 kernel. Once 
it is accepted upstream, it will be part of the mainline kernel and one of the 
later versions of the Yocto Project reference BSP.

-- 
Denys

