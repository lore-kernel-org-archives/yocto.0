Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 494394C80186
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2011 10:01:20 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p5GF1GHe009772;
	Thu, 16 Jun 2011 16:01:16 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 09380-06; Thu, 16 Jun 2011 16:01:12 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p5GF14oL009765
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 16 Jun 2011 16:01:07 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A52800155@shsmsx501.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A52800155@shsmsx501.ccr.corp.intel.com>
Date: Thu, 16 Jun 2011 16:01:02 +0100
Message-ID: <1308236462.15712.442.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: configure optimization feature update
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
X-List-Received-Date: Thu, 16 Jun 2011 15:01:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Dongxiao,

On Thu, 2011-06-16 at 08:57 +0800, Xu, Dongxiao wrote:
> Recently I was doing the "configure optimization" feature and
> collecting data for it.
> 
> The main logic of this feature is straight forward:
> 
> 1. Use the diff file as autoreconf cache. (I use command: "diff -ruN
> SOURCE-ORIG SOURCE", here "SOURCE-ORIG" is the source directory before
> running autoreconf, while "SOURCE" is the directory after running
> autoreconf).
> 2. Add SRC_URI checksum for all patches of the source code.
> 3. Tag each autoreconf cache file with ${PN} and the SRC_URI checksum
> of source code and all patches.
> 4. If the currently SRC_URI checksum matches the cached checksum, then
> we can patch the cache instead of running "autoreconf" stage.
> 
> I did some testings for sato build, the result is not as good as we
> expected:
> 
> On a server build machine (Genuine Intel(R) CPU @ 2.40GHz, 2 sockets with 6 core each and hyperthreading, thus 24 logical CPUs in all, 66G memory):
> 
> w/o the optimization:
> real    83m40.963s
> user    496m58.550s
> sys     329m1.590s
> 
> w/ the optimization:
> real    79m1.062s
> user    460m58.600s
> sys     347m42.120s
> 
> It has about 5% performance gain.

Whats interesting there is the relatively large sys times compared to
user. Any idea why that's happening? Spinning locks?

> I also tested the patch on a desktop core-i7 machine (Intel(R) Core(TM) i7 CPU 870 @ 2.93GHz, 4 core 8 logical CPU, 4G memory):
> 
> w/o the optimization:
> real    105m25.436s
> user    372m48.040s
> sys     51m23.950s
> 
> w/ the optimization:
> real    103m38.314s
> user    332m35.770s
> sys     49m4.520s
> 
> It only has about 2% performance gain.
> 
> The result is not encouraging.

Agreed, this isn't as good as we'd hoped for :(.

> There are also some other things we need to take into consideration
> for this feature:
> 
> 1. If add this feature, the first build time should be longer than
> current since it needs to build the autoreconf cache.
> 2. Maintainers needs to maintain the SRC_URI checksums not only for
> source code, but also all its patches. For some recipes, it has more
> than 20 patches, which needs assignable maintenance effort.
> 3. How to distribute the caches will be a problem. The total size of
> such cache is about 900M (before compression) and 200M (after
> compression). Since the size is not small, distributing it with Poky
> source code doesn't make sense. On another aspect, we can use
> something like "sstate". But since we already have caches of sstate, I
> think it is not necessary for us to enable another similar cache
> mechanism with little improvement.
> 
> Therefore my opinion is we may give up this feature. What's your
> comments and suggestions?

I think we should put the patches together on a branch in contrib so we
keep them somewhere in case we want them. Certainly tracking what
changes the autoreconf process makes may be useful in other situations
in future so its worth keeping the patches. I think you're right and we
should shelve the idea for now though as it doesn't look to be worth the
pain it entails.

For reference, we probably do need to start tracking the file checksums
for the benefit of sstate.

The mediocre performance improvement is likely down to the size of the
cache data but I can't immediately think of a way to improve that :(.

Cheers,

Richard


