Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24104E006D9
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2012 00:23:56 -0700 (PDT)
Received: from [192.168.0.2] (host86-170-63-53.range86-170.btcentralplus.com
	[86.170.63.53]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 47C239C07
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2012 08:23:55 +0100 (BST)
Message-ID: <4FD6EE8A.2040101@r-finger.com>
Date: Tue, 12 Jun 2012 08:23:54 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
CC: yocto@yoctoproject.org
References: <1B44395A-0DD8-4136-83B3-FD82C9F5DDCA@keylevel.com>
	<4FD59E5D.4080008@r-finger.com> <4FD5F85C.3030203@gmail.com>
	<26798960.m4OGCU6P52@helios>
In-Reply-To: <26798960.m4OGCU6P52@helios>
Subject: Re: RaspberryPi Kernel - sometimes it works, sometimes it doesn't
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
X-List-Received-Date: Tue, 12 Jun 2012 07:23:56 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/06/12 17:29, Paul Eggleton wrote:
> On Monday 11 June 2012 06:53:32 Khem Raj wrote:
>> On 6/11/2012 12:29 AM, Tomas Frydrych wrote:
>>> I find that -c clean does not work very well, afterward the package
>>> gets recompiled but instead of the actual package packages being
>>> rebuilt, an earlier version of the packages gets pulled out of
>>> sstate into the image. I definitely saw this behaviour with Yocto
>>> kernels, but I think happens with other packages as well; I always
>>> do -c cleansstate now to avoid this.
>>
>> yes thats the intended behavior if nothing changed that ensues a
>> recompile then it will use precompiled sstate for the package
> 
> To clarify, it's designed to be able to determine when the recipe has changed 
> in such a way that it needs to be rebuilt (by building up dependencies between 
> variables and computing a checksum of the value of each one, which ends up in 
> a checksum for each task); if it sees no change then the previous task output 
> will be used from the sstate cache. It's worth noting however that until 
> recently (post-1.2) we did not handle when local files referred to in SRC_URI 
> changed. There also still may be other circumstances under which changes to 
> the recipe or variables which it refers to will not change the sstate 
> checksums; if you come across a situation where you made a change and sstate 
> was re-used when you expected it to be rebuilt, please raise it.

Over years of working with Poky I have developed this sort of a normal
work flow:

  bitbake -c devshell <package>
  < do some tweaking >
  bitbake -c compile -f <package>
  bitbake <package>          <---- this pulls package from sstate!!!
  scp ...
  < test, repeat>

This no longer works, even after a forced recompile, Poky just pulls a
package out of sstate. It seems the only reliable way to force a package
rebuild is either to cleansstate or bump the PR, neither of which is
viable an option in the above scenario. What am I missing? Is this
really intended?

Tomas

