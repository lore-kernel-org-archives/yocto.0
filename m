Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3481E00A51; Fri, 24 Jul 2015 13:17:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55917E00A3C
	for <yocto@yoctoproject.org>; Fri, 24 Jul 2015 13:17:11 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id A236FF811E0; Fri, 24 Jul 2015 14:17:10 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7677CF81188;
	Fri, 24 Jul 2015 14:17:09 -0600 (MDT)
Message-ID: <55B29D4A.8090301@mlbassoc.com>
Date: Fri, 24 Jul 2015 14:17:14 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: Christopher Larson <clarson@kergoth.com>
References: <55B27DC9.1090307@mlbassoc.com> <55B2926F.4010608@linux.intel.com>
	<55B296CA.6000404@mlbassoc.com>
	<CABcZANn0aLo8Pzxrn0G=5BkeHk=BFvf1QyTKiUY2G5YUzEVv-A@mail.gmail.com>
In-Reply-To: <CABcZANn0aLo8Pzxrn0G=5BkeHk=BFvf1QyTKiUY2G5YUzEVv-A@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Missing certificates
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
X-List-Received-Date: Fri, 24 Jul 2015 20:17:16 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-07-24 14:09, Christopher Larson wrote:
>
> On Fri, Jul 24, 2015 at 12:49 PM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     On 2015-07-24 13:30, Aníbal Limón wrote:
>
>         Hi Gary,
>
>         What version of python do you use?.
>
>         Since 2.7.9 cert checking is enabled by default causing this kind of errors. [1]
>
>         [1] https://www.python.org/dev/peps/pep-0476/
>
>         Kind regards,
>               alimon
>
>
>     I'm using the stock python 2.7.9 from Poky/Yocto master:901be2cb69892595443ed41ab4be285932db15eb
>
>     Is there an answer for this that's a bit less intrusive?
>     Perhaps there could be a DISTRO or even IMAGE feature to
>     enable/disable this checking?
>
>     The pep you referenced mostly talks about why this was changed
>     and how to disable it - manually within the python code itself.
>     What I don't see is where/how/what to change/import to actually
>     let the full certificate checking happen.
>
>
> I think the better bet is to fix it so it actually finds the certs from ca-certificates rather than bypassing certificate checking, personally, but I can see how that would be a
> useful workaround. :)

I tried this same code on my Ubuntu 15.04 desktop and it looks
like they've disabled it in the main python http[s] code - there
were no certificates examined during the transaction as far as
I could tell (strace is my friend)

I'll see if I can figure out how to stitch this together with our
[Poky/Yocto/OE-core] setup for OpenSSL and ca-certificates.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

