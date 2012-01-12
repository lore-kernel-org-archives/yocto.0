Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1DC9E0030F
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 10:28:35 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q0CISNgR028398
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 12 Jan 2012 10:28:23 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 12 Jan 2012 10:28:23 -0800
Message-ID: <4F0F263E.2070201@windriver.com>
Date: Thu, 12 Jan 2012 13:28:14 -0500
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
	<4F0F093B.7000408@windriver.com>
	<CAFZh4h-DRM-4zrBdiBwPH7T0bo+Ba5NGgPi5ppek33XmWtfJsw@mail.gmail.com>
In-Reply-To: <CAFZh4h-DRM-4zrBdiBwPH7T0bo+Ba5NGgPi5ppek33XmWtfJsw@mail.gmail.com>
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
X-List-Received-Date: Thu, 12 Jan 2012 18:28:36 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-01-12 11:48 AM, Brian Hutchinson wrote:
> On Thu, Jan 12, 2012 at 11:24 AM, Bruce Ashfield
> <bruce.ashfield@windriver.com>  wrote:
>> I prefer to work this way, since managing patches in a source git
>> repository is much easier for me. If you only have a few patches,
>> then they can just be pushed on top and added to the SRC_URI, but
>> you'd be doing more development under tmp/work/ in that case .. and
>> I'm paranoid about losing things :)
>
> I know it probably isn't the best way (did it mostly because I was in
> a hurry and never took the time to think about the "right" way to do
> it) but I've made changes to the kernel&  u-boot before in the tmp
> directories (with Angstrom and Arago) and build images manually (make
> uImage etc.) and that was OK for quick/dirty things but I've gotten
> burned before by forgetting my changes and doing a bitbake build and
> wiping out my changes.   I like the method of pointing yocto to local
> git repos and think that is better for long term development as it
> will contain history and would be easy to determine what changed etc.
> I'd like to do something similar with u-boot and thought you guys had
> worked out a defacto standard way but in looking through all the docs
> it doesn't look that way.

Ah yes. Nothing in particular. I was a non-oe import to yocto, so a
lot of what I've done is from being bitten in the past and making sure
that it didn't happen to me in a new environment.

Of course, I'm all for general solutions and getting feedback as well!

Cheers,

Bruce

>
> Regards,
>
> Brian


