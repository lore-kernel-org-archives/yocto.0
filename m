Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40CF9E006F1; Thu,  8 Oct 2015 15:15:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B25BE006F1
	for <yocto@yoctoproject.org>; Thu,  8 Oct 2015 15:15:08 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 441DDF811D7; Thu,  8 Oct 2015 16:15:07 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 3CC42F811D7;
	Thu,  8 Oct 2015 16:15:07 -0600 (MDT)
To: "Burton, Ross" <ross.burton@intel.com>
References: <5616D923.1060600@mlbassoc.com>
	<CAJTo0LZCkJ5SaqRjh_kpW+tDK-Z_XrtzsPbohLd=z3pqEgBFaA@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <5616EB06.8020400@mlbassoc.com>
Date: Thu, 8 Oct 2015 16:15:34 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZCkJ5SaqRjh_kpW+tDK-Z_XrtzsPbohLd=z3pqEgBFaA@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Missing sanity / dependency
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
X-List-Received-Date: Thu, 08 Oct 2015 22:15:12 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-10-08 15:40, Burton, Ross wrote:
> That bug was fixed some time ago, try updating your clone.  In particular I expect your checkout is before poky bb34181b42b62e0476ba9e12f9125ed9f785cf23.

Nope - I'm at master:eac61f37e36099f74485dab398b57f3812826d17 (current tip)
and I still get the same error.

> On 8 October 2015 at 21:59, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     I just ran across this on a [fairly new] system:
>
>     $ bitbake meta-toolchain -g -u depexp
>     Traceback (most recent call last):
>        File "/local/poky-cutting-edge/bitbake/bin/bitbake", line 45, in <module>
>          cookerdata.CookerConfiguration()))
>        File "/local/poky-cutting-edge/bitbake/lib/bb/main.py", line 334, in bitbake_main
>          ui_module = import_extension_module(bb.ui, configParams.ui, 'main')
>        File "/local/poky-cutting-edge/bitbake/lib/bb/main.py", line 103, in import_extension_module
>          module = __import__(pkg.__name__, fromlist = [modulename])
>        File "/local/poky-cutting-edge/bitbake/lib/bb/ui/depexp.py", line 22, in <module>
>          import gtk
>     ImportError: No module named gtk
>
>     Should this have been caught by the sanity checker, or perhaps
>     handled better?  In my Ubuntu case, I was missing python-gtk2
>     and friends.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

