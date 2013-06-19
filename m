Return-Path: <gary@mlbassoc.com>
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1F1FE014BF
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 07:39:57 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 5184468A01B; Wed, 19 Jun 2013 15:39:56 +0100 (BST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	loki.analogue-micro-ltd.com
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.12.145] (unknown [192.168.12.145])
	by mail.analogue-micro.com (Postfix) with ESMTP id B9D0B68A019;
	Wed, 19 Jun 2013 15:39:54 +0100 (BST)
Message-ID: <51C1C2BA.9020505@mlbassoc.com>
Date: Wed, 19 Jun 2013 15:39:54 +0100
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <51C1BA25.6080200@mlbassoc.com>
	<CAJTo0LZ5y1wXXh7wN04k+z=KUz79wjS=ESBBtVoYbJzNd7a0mg@mail.gmail.com>
In-Reply-To: <CAJTo0LZ5y1wXXh7wN04k+z=KUz79wjS=ESBBtVoYbJzNd7a0mg@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Cross building question
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
X-List-Received-Date: Wed, 19 Jun 2013 14:39:58 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-06-19 15:14, Burton, Ross wrote:
> On 19 June 2013 15:03, Gary Thomas <gary@mlbassoc.com> wrote:
>> What's the best way to handle this and how?  I recall in the
>> dark old days that there were many such things that relied on
>> running QEMU to actually execute target code.  Is this still
>> possible (and being done)?  If so, is that a solution and how
>> might I force it to happen?
>
> You can use qemu, for example the fontconfig cache generation is done
> at image construction time using qemu running the target binaries.
> The alternative solution is to use the host compiler ($BUILD_CC etc)
> and build the tool natively - either by patching the build system or
> building it manually yourself before invoking make.
>
> Of course, if this binary is just used to print some stuff for the
> user, you could just patch it out. :)

Probably what I will do!

In the mean time, I faked that one and moved on and got the whole thing
to build :-)  Now I face this packaging issue:
   ERROR: QA Issue: non -dev/-dbg/-nativesdk package contains symlink .so: amanda path 
'/work/ppce500v2-amltd-linux-gnuspe/amanda/3.3.3-r0/packages-split/amanda/usr/lib/amanda/libamar.so'

Any clues how I fix this?

Query: I've built this now using a cross build (normal Yocto style) and
native using a Yocto created SDK.  These _should_ be the same tools, no?
I ask because I had a few gotchas - things that were different between
the two environments.  If I track them down, are they of any interest?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

