Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70A7FE00824; Thu, 12 Feb 2015 13:38:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1F40E00546
	for <yocto@yoctoproject.org>; Thu, 12 Feb 2015 13:38:48 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 64E50F811DD; Thu, 12 Feb 2015 14:38:47 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id CC6D9F811D8;
	Thu, 12 Feb 2015 14:38:39 -0700 (MST)
Message-ID: <54DD1D71.2050302@mlbassoc.com>
Date: Thu, 12 Feb 2015 14:38:57 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <54DD1A4C.60004@mlbassoc.com>
	<CAJTo0LYSUvVvcu7-CubRfNEaJi8vRJMzK=0Nx_O-hFswvFhkoA@mail.gmail.com>
In-Reply-To: <CAJTo0LYSUvVvcu7-CubRfNEaJi8vRJMzK=0Nx_O-hFswvFhkoA@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Why did my build need to redo so many tasks?
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
X-List-Received-Date: Thu, 12 Feb 2015 21:38:51 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-02-12 14:33, Burton, Ross wrote:
>
> On 12 February 2015 at 21:25, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     Yesterday, I built a large image using Poky/Yocto 870323cac1e
>     Today I updated my Poky repo to 231d4a9d3
>
>     When I rebuilt the same image, bitbake kicked off more than
>     5200 tasks, building virtually every package from scratch.
>
>     How can I tell why this happened?  I don't have buildhistory
>     enabled, but I do still have the tmp & sstate-cache trees
>     from the process.  Is there enough info laying around that
>     I can tell, e.g. why the GCC toolchain had to be rebuilt
>     completely?
>
>     Am I correct in assuming that bitbake-whatchanged is really
>     a Quija board and can only tell me [in advance] what will need
>     to be done if my layers change?  When I ran it after the long
>     build above, it didn't really tell me much :-(
>
>
> If you checkout the first commit, do a build, then the second commit and run bitbake-whatchanged, it should tell you the difference.
>
> Looking at the git log shows cc5f80, which is a change to libtool, so everything inheriting autotools will need a rebuild.

Ouch, thanks.  Next time I'll know a bit more on how to diagnose this.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

