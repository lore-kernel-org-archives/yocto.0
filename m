Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE1C9E006C2
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 14:15:00 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r5CLErWA014552
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 12 Jun 2013 14:14:53 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.22.64) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.342.3; Wed, 12 Jun 2013 14:14:53 -0700
Message-ID: <51B8E4CC.3060907@windriver.com>
Date: Wed, 12 Jun 2013 17:14:52 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:17.0) Gecko/20130509 Thunderbird/17.0.6
MIME-Version: 1.0
To: Trevor Woerner <twoerner@gmail.com>
References: <91586D499ADFD74FBCFB8425266A5DE4013B910EC22E@pluto.melinkcorp.local>
	<CADkTA4PkMUc8rzBWewZWwygE=XcXLBAQwHFEXcUPZX6mqzmADA@mail.gmail.com>
	<91586D499ADFD74FBCFB8425266A5DE4013B910EC264@pluto.melinkcorp.local>
	<CAHUNapQeeSN2eD9jG4mmw8hXU1n_vip7gNJ1TPossrOeD==PRw@mail.gmail.com>
In-Reply-To: <CAHUNapQeeSN2eD9jG4mmw8hXU1n_vip7gNJ1TPossrOeD==PRw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problems fetching branch for linux-yocto-custom
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
X-List-Received-Date: Wed, 12 Jun 2013 21:15:04 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-06-12 4:41 PM, Trevor Woerner wrote:
> On Wed, Jun 12, 2013 at 3:37 PM, Bryan Evenson <bevenson@melinkcorp.com> wrote:
>> # Added KBRANCH spec
>> KBRANCH = "linux-3.9-at91"
>>>> # Override SRC_URI in a bbappend file to point at a different source
>>> #
>>>> tree if you do not want to build from Linus' tree.
>>>> SRC_URI = "git://github.com/linux4sam/linux-at91.git;branch=linux-
>>> 3.9-
>>> at91;tag=dcdf169e24c0cb6d7dc69e0a09d2395934e95075;protocol=git;nochecko
>>> ut=1"
>>
>> # Changed SRC_URI to following
>> SRC_URI = "git://github.com/linux4sam/linux-at91.git;branch=${KBRANCH};protocol=git;nocheckout=1"
>
> It looks like all you did was to define the string "linux-3.9-at91" in
> its own variable, put that in your SRC_URI string, and remove the
> "tag=..." field. Would your original recipe have worked if all you did
> was remove the "tag=..." field?
>
> Is KBRANCH being used somewhere else? Doesn't bitbake's "git" fetcher
> already have a generic way of specifying a branch? Why would a kernel
> recipe need to also define a branch variable? Do non-kernel recipes
> also need to define some kind of branch variable too?

This is specific to the linux-yocto branch management. It is passed to
the configuration subsystem (and others) to properly prepare and process
the kernel.

It doesn't have anything to do with the fetcher.

Remember. linux-yocto is a set of standalone tools, mapped to bitbake
and yocto, so we are passing in what the tools need to work.

Cheers,

Bruce

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


