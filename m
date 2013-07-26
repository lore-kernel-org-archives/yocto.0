Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F287E0140D
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 09:07:07 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 16620F81206; Fri, 26 Jul 2013 10:07:06 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id D2560F811FF;
	Fri, 26 Jul 2013 10:07:04 -0600 (MDT)
Message-ID: <51F29EAA.4070702@mlbassoc.com>
Date: Fri, 26 Jul 2013 10:07:06 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <51F29A98.4030006@mlbassoc.com>
	<CAJTo0LYbiY-qiAgcSEBD2GVO7m9bF1VU4YTu0qP4W4ydhuNixg@mail.gmail.com>
In-Reply-To: <CAJTo0LYbiY-qiAgcSEBD2GVO7m9bF1VU4YTu0qP4W4ydhuNixg@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: It's a [PERL] lie...
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
X-List-Received-Date: Fri, 26 Jul 2013 16:07:08 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-07-26 09:54, Burton, Ross wrote:
> On 26 July 2013 16:49, Gary Thomas <gary@mlbassoc.com> wrote:
>>   It turns out that PERL is the only package
>> that cares about this DISTRO_FEATURE and it builds incorrectly
>> if it's left out :-(  Adding this feature back into my settings
>> made PERL build properly and now Amanda runs as well.
>
> According to grep it's perl, cmake and libarchive that respect the
> largefile feature.

Indeed, I missed them in my zeal :-(  I new I was looking for something
that affected my problem, and perl was the key (I'm not using either
of the other packages)

>
> If perl is known to break without largefile it's simple enough to make
> it error when building if the feature isn't enabled, but to be honest
> should we just remove this feature as it's so infrequently used?

I'd vote for at least fixing the perl recipe.  The problem is insidious;
it only fails at runtime and then in mysterious ways...  It also fails
on every architecture I tried (x86, ARM, PPC)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

