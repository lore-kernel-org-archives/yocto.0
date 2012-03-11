Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07AE5E0074A
	for <yocto@yoctoproject.org>; Sun, 11 Mar 2012 05:46:19 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 58D13F81205; Sun, 11 Mar 2012 06:46:18 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 19388F811F9;
	Sun, 11 Mar 2012 06:46:17 -0600 (MDT)
Message-ID: <4F5C9E99.5010509@mlbassoc.com>
Date: Sun, 11 Mar 2012 06:46:17 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <alpine.DEB.2.02.1203100438340.24798@oneiric>
	<2830925.MktUsbZfsZ@helios>
In-Reply-To: <2830925.MktUsbZfsZ@helios>
Cc: yocto@yoctoproject.org
Subject: Re: is yocto based on oe-core *as-is*?
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
X-List-Received-Date: Sun, 11 Mar 2012 12:46:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-03-11 06:33, Paul Eggleton wrote:
> On Saturday 10 March 2012 04:40:15 Robert P. J. Day wrote:
>>    while i'm working my thru the docs, i want to verify that yocto is
>> built on top of oe-core straight from the oe-core repo, is that
>> correct?  as in, yocto doesn't make any yocto-specific mods to the
>> fundamental, lower-level OE core layers, does it?  it simply adds
>> layers on top, right?
>
> This is correct, and you can verify it by doing a diff of the OE-Core meta/
> subdirectory against Poky's meta/ - the only difference is that Poky does not
> include the sample configs (it provides its own in meta-yocto).

Have you actually done such a comparison?  I just compared them like this:
   poky/yocto:
      commit 320558f494c618f53e0c773db3ea0109476e8359
      Author: Paul Eggleton <paul.eggleton@linux.intel.com>
      Date:   Wed Feb 29 12:59:14 2012 +0000

   openembedded-core:
      commit 50dc8bfbac42b9a9b52a2f7d0568740c41790c13
      Author: Richard Purdie <richard.purdie@linuxfoundation.org>
      Date:   Fri Mar 9 14:14:04 2012 +0800

These are the up-to-date master branches, as of 2012-03-11 12:40 GMT

Tons of changes, many minor/cosmetic, but lots of substantial changes in
recipes, etc.  Maybe the Poky policy is to match oe-core (follow?), but at least
today, it's pretty far out of sync (10 days is forever in net-time)

>
> It's also worth noting that Poky uses its own distro (policy) configuration via
> meta-yocto, although this builds upon the default policy in OE-Core.
>
> Cheers,
> Paul
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

