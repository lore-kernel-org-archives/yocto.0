Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7164FE0030C
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 08:24:39 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q0CGOaXk022000
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 12 Jan 2012 08:24:36 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 12 Jan 2012 08:24:36 -0800
Message-ID: <4F0F093B.7000408@windriver.com>
Date: Thu, 12 Jan 2012 11:24:27 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Brian Hutchinson <b.hutchman@gmail.com>
References: <CAFZh4h-oJeiWFcM1mowKDwmF0gqT3Y0DBMFZ0WEcjJchUS+N4A@mail.gmail.com>
	<4F0DF55E.4030605@linux.intel.com>
	<CAFZh4h_JA8Oq3U=9HkrhXsyOB86dHV2u3XxY25UQDFgJpFg=Ug@mail.gmail.com>
	<CAFZh4h8CtWD3q7_bWQoH9X1j=J=irW05Mhvbqvv5h_fp-oFn+A@mail.gmail.com>
	<4F0F03AB.1010808@windriver.com>
	<CAFZh4h8Z3GW8mrsgpHVQCQgHpg1CpmwmP=xMXcitA=h4A1L52A@mail.gmail.com>
In-Reply-To: <CAFZh4h8Z3GW8mrsgpHVQCQgHpg1CpmwmP=xMXcitA=h4A1L52A@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Does Edison work with Beagleboard & linux-yocto-3.0 kernel?
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
X-List-Received-Date: Thu, 12 Jan 2012 16:24:39 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-01-12 11:20 AM, Brian Hutchinson wrote:
> On Thu, Jan 12, 2012 at 11:00 AM, Bruce Ashfield
> <bruce.ashfield@windriver.com>  wrote:
>> The bitbake AUTOREV code should take care of updating the clone
>> of your local repo in downloads/git2. I take it that this isn't
>> happening ?
>
> ... haven't tried ... was just sticking to the example in the
> documentation which says to push changes and do a cleanall.  The spin

Good point. I hadn't noticed that it was in there. Worth trying
without it, and raising a bug if it isn't required. It's
bitbake internals rather than kernel at play here, so I'm far
from authoritative about what should or shouldn't work.

> time on my dev machine wasn't too bad but long enough to get old quick
> if I had to do it often.

Agreed!

>
>> It should be (largely) as simple as that. We could create something
>> simple and throw it in with the meta-kernel-dev layer if there's any
>> interest in adding it.
>
> Just wanting to know what the "best practice" is as I have lots of
> platforms to support.

I prefer to work this way, since managing patches in a source git
repository is much easier for me. If you only have a few patches,
then they can just be pushed on top and added to the SRC_URI, but
you'd be doing more development under tmp/work/ in that case .. and
I'm paranoid about losing things :)

Cheers,

Bruce

>
> Regards,
>
> Brian


