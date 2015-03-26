Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2FCBE00779; Thu, 26 Mar 2015 16:13:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75B0AE00779
	for <yocto@yoctoproject.org>; Thu, 26 Mar 2015 16:13:29 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 625D6F811DC; Thu, 26 Mar 2015 17:13:29 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id F03A7F811DC;
	Thu, 26 Mar 2015 17:13:28 -0600 (MDT)
Message-ID: <5514929D.3010005@mlbassoc.com>
Date: Thu, 26 Mar 2015 17:13:33 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <55140D4C.2060107@mlbassoc.com>
In-Reply-To: <55140D4C.2060107@mlbassoc.com>
Subject: Re: Sharing sstate
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
X-List-Received-Date: Thu, 26 Mar 2015 23:13:33 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-03-26 07:44, Gary Thomas wrote:
> I have two development servers, one running an older version
> of Fedora (x86 *), the other runs a recent Ubuntu (x86_64).
> Both are the same CPU core (Intel(R) Core(TM)2 Quad CPU Q6600 @ 2.40GHz)
>
> I've just tried building the same target, using the same version
> of Poky/Yocto, sharing the sstate cache (fully populated) from
> the x86_64 machine with the x86 machine.  This was done using
> HTTP.  Sadly, there was not a single file found in the cache
> that could be used.
>
> Should this not be expected to work?  Does sstate cache only
> work across like systems (32 vs 64 bit hosts)?
>
> Also, Mark Hatle mentioned a few days ago that there are ways
> to "lock" versions of the sstate cache.  I still haven't found
> any info/documentation on this.  Can someone please explain more?
>
> Thanks
>
> (*) I can't update my x86 machine to a more recent (x86_64)
> distribution as I have many older "projects" that only run
> on that hardware and no time/opportunity to upgrade, hence
> my desire to share in this manner.
>

I've just verified that if I move my build tree from the x86
machine to the x86_64 (really just build/conf), then sstate
works as expected.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

