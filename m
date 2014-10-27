Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2044E00848; Mon, 27 Oct 2014 15:26:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77218E007A0
	for <yocto@yoctoproject.org>; Mon, 27 Oct 2014 15:26:26 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 9CBB0F811EA; Mon, 27 Oct 2014 16:26:24 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 539A8F811E0;
	Mon, 27 Oct 2014 16:26:21 -0600 (MDT)
Message-ID: <544EC68E.1090701@mlbassoc.com>
Date: Mon, 27 Oct 2014 16:26:22 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <544E77DC.5080408@mlbassoc.com> <544E890A.5000402@linux.intel.com>
	<544E9F93.1050808@mlbassoc.com>
	<CAJTo0Lb1SdFRQizn9dGGo45y-m5wPh9jd8C6KxYnkx-NvtJAPg@mail.gmail.com>
In-Reply-To: <CAJTo0Lb1SdFRQizn9dGGo45y-m5wPh9jd8C6KxYnkx-NvtJAPg@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Is the build system SCM sensitive?
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
X-List-Received-Date: Mon, 27 Oct 2014 22:26:33 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-10-27 14:07, Burton, Ross wrote:
>
> On 27 October 2014 19:40, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     I think I know what triggered this - a recent change in bitbake.conf
>     redefined BUILD_CPP (and others).  I had merged this change some six
>     hours before my strange build and had been building many other recipes
>     (also python with a similar set of dependencies) a number of times
>     before I touched the python-pygtk recipe.  Some dependency in that
>     recipe set off the rebuild storm that my other recipes had not.
>
>
> Ah yes, welcome back to master.  There's been stuff building up for a while.  :)
>
> This is where I point out that master between a release and M1 is known to be "volatile".  Whilst we obviously endeavour for it to be always buildable, deep and fundamental changes
> will be going in sooner rather than later.

This doesn't bother me - I expect it.  What took me by surprise
was when the behaviour radically changed from what I had seen
all day.  Totally explainable, but unexpected nonetheless.

>
> (ie this might be time to dust of my libexecdir-changing series)

Go for it :-)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

