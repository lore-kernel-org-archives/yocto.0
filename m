Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34CB5E006CC
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2013 04:05:38 -0800 (PST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r0UCA50n030843; Wed, 30 Jan 2013 12:10:05 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id SKFn7H9weH-O; Wed, 30 Jan 2013 12:10:05 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r0UC9vv7030823
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Wed, 30 Jan 2013 12:10:00 GMT
Message-ID: <1359547510.28244.5.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Wed, 30 Jan 2013 12:05:10 +0000
In-Reply-To: <5108B181.9000204@windriver.com>
References: <5106A449.7020902@gmail.com> <5108B181.9000204@windriver.com>
X-Mailer: Evolution 3.6.2-0ubuntu0.1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: PREFERRED_PROVIDER in image recipes
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
X-List-Received-Date: Wed, 30 Jan 2013 12:05:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2013-01-30 at 00:37 -0500, Bruce Ashfield wrote:
> On 13-01-28 11:16 AM, Daniel Kenji Morgan wrote:
> > Sorry to bring up an old post, but I haven't managed to find information in the mail archives and bugzilla on how the issue stands as of today.
> >
> > The post I am referring to is as follows:
> > https://lists.yoctoproject.org/pipermail/yocto/2011-December/005951.html
> >
> > I have two separate recipes for the same kernel version.
> > One with a kernel configuration with various options enabled to assist debugging.
> > The other with said options disabled.
> >
> > Ideally, I would like to be able to set PREFERRED_PROVIDER to the kernel recipes in custom image recipes for the same machine.
> > This is something that is being discussed in the referred post above.
> > Does anyone know if such functionality is being pursued in a future release of Poky?
> 
> I haven't heard of anything myself, local.conf, distro configs or
> separate machines are how this is still currently being done.
> 
> We have quite a bit of flexibility in the way that kernel configs
> can be stacked and used since the thread that you noticed, so there
> are options in that area to pursue as well. There's been planning
> around image creation and construction lately, that could also end
> up helping a use case such as this down the road.
> 
> As to whether or not work is planned in the areas of images and
> preferred providers, Richard would know.

PREFERRED_PROVIDER is fundamentally a top level configuration level
option. It *cannot* be specified at the image level, its just not the
way bitbake and the whole system works.

Think about this from the packages perspective - what would we do with
two sets of kernel modules which may or may not overwrite each other?
That is a packaging limitation, not a bitbake one but its one of several
problems we'd have to overcome to address this.

So no, there are no plans to try and change this functionality in future
releases, its simply not something we have a good plan even for
implementing at this point. If someone comes up with a well thought out
plan, great but there isn't one right now and I don't even have ideas
about how we could solve all the problems.

Cheers,

Richard



