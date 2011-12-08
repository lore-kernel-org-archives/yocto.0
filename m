Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FE2CE005B9
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2011 14:47:12 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pB8Ml4gR009256;
	Thu, 8 Dec 2011 22:47:04 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 06221-09; Thu,  8 Dec 2011 22:47:00 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pB8MkrKh009220
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 8 Dec 2011 22:46:54 GMT
Message-ID: <1323384424.5309.85.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
Date: Thu, 08 Dec 2011 22:47:04 +0000
In-Reply-To: <4EE106CB.6080104@linux.intel.com>
References: <88701C38B5D07249817D428430999C910B774261@sestoex09.enea.se>
	<CABcZANkovWJH9dFUpRngNzrQH5VAxYOiO1dK3H2pPB4SM9GS6A@mail.gmail.com>
	<1605255.ltn5bNtJ0l@helios>
	<752D6B50-3DE9-4257-B160-AE1CAA99F2C7@dominion.thruhere.net>
	<88701C38B5D07249817D428430999C910B774381@sestoex09.enea.se>
	<CADkTA4O1DeNXkfVk0Oc3Gspsz2erGf0pJTRE0XOLypww8M2n_Q@mail.gmail.com>
	<4EE106CB.6080104@linux.intel.com>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: David =?ISO-8859-1?Q?Nystr=F6m?= <David.Nystrom@enea.com>,
	Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Variable locality too restricted.
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
X-List-Received-Date: Thu, 08 Dec 2011 22:47:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-12-08 at 10:49 -0800, Darren Hart wrote:
> On 12/08/2011 06:31 AM, Bruce Ashfield wrote:
> > If you want to then modify the configuration slightly using either
> > in-tree or add on kernel
> > configuration fragments you can simply add a .cfg to the SCR_URI or set the
> > KERNEL_FEATURES variable, just like Darren did recently.
> > 
> >    KERNEL_FEATURES_append_fri2 += " cfg/smp.scc cfg/efi-ext.scc"
> 
> 
> This has the same original variable scope issue as before however. It
> would be nice to be able to do this:
> 
> $ bitbake core-image-minimal
> $ bitbake core-image-minimal-debug
> 
> The latter image would use the same machine, but it would build perf,
> add "debug" and other configurable options to "APPEND", and add a
> configurable set of KERNEL_FEATURES. We should also update the base
> kernel tools (non-Yocto) to use merge_config.sh so fragments can be used
> in those recipes as well.
> 
> The problem I've run into here in the past has been that I cannot
> specify things like PREFERRED_PROVIDER in the image recipe. So, for
> example, to build RT, the current documented approach is to first add a
> PREFERRED_PROVIDER line to either local.conf or bblayers to select
> linux-yocto-rt and then to build core-image-rt which merely adds some
> relevant packages. It would be much preferable to be able to specify
> just an image target and not have to change your configuration because
> the image is the intuitive distinguishing factor for people.

I'd like to give the bitbake perspective on this problem.

PREFERRED_PROVIDER in images doesn't really make sense to bitbake.
Imagine you have:

core-image-minimal setting PREFERRED_PROVIDER = "kernelA" and
core-image-minima-debug setting PREFERRED_PROVIDER = "kernelB". Both
would depend on "virtual/kernel". You then run:

"bitbake core-image-minimal core-image-minimal-debug"

What would you expect bitbake to do?

The kernel is special in that doesn't really stage output that is reused
by other parts of the system but we have to consider the general case
where output such as libraries would end up in a shared sysroot. Even
then, the kernel does generate packages which it places in a machine
specific feed and the names don't reflect the different inputs, there is
one kernel-image package for example and in the above case it would be a
race on which one built last.

Bitbake therefore takes PREFERRED_PROVIDER and VERSION decisions from
the core configuration (.conf / .inc / machine / distro / bitbake.conf /
base.bbclass). There is no easy solution to this problem, even recipe
specific sysroots would only get a part solution.

Having said that, if you enable sstate checksums on the stamp files, you
will get a system that is *much* more responsive to change. With that
enabled you could:

bitbake core-image-minimal
<realise you need debug enabled>
<edit some .conf which turns it on>
bitbake core-image-minimal
<have an image with debug enabled>

The reason is that with the checksums on, bitbake can tell exactly what
changed, what it needs to rebuild and it will then do so.

Cheers,

Richard











