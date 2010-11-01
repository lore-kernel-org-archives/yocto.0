Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 427C54C80132
	for <yocto@yoctoproject.org>; Mon,  1 Nov 2010 06:03:29 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oA1B3QjV018475;
	Mon, 1 Nov 2010 11:03:26 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18105-06; Mon,  1 Nov 2010 11:03:22 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oA1B3KOj018469
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 1 Nov 2010 11:03:21 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Scott Garman <scott.a.garman@intel.com>
In-Reply-To: <4CCE8A82.7070000@intel.com>
References: <4CCE8A82.7070000@intel.com>
Date: Mon, 01 Nov 2010 11:03:14 +0000
Message-ID: <1288609394.22875.133.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: nightly-release takes more than 24 hours to build.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 01 Nov 2010 11:03:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-11-01 at 02:38 -0700, Scott Garman wrote:
> Leading up to our 0.9 release, our autobuilder has been building an 
> increasing number of targets for our nightly-release buildset. We've now 
> reached the point that the nightly build takes more than 24 hours to run 
> (> 26 hours, in fact) - which is clearly a problem on a build that we'd 
> like to generate on a daily basis.
> 
> The following is a list of everything which is built within nightly-release:
> 
> The following targets are built for qemux86, qemux86-64, qemuarm, 
> qemumips, and qemuppc:
> 
> * poky-image-minimal
> * poky-image-sato
> * poky-image-lsb
> * poky-image-sdk
> * meta-toolchain-sdk (SDKMACHINE=i586 and also x86_64)
> 
> For emenlow and atom-pc, we build:
> 
> * poky-image-minimal-live
> * poky-image-sato-live
> * poky-image-sdk-live
> * meta-toolchain-sdk (SDKMACHINE=i586 and also x86_64)
> 
> Finally, we also build the Eclipse plugin, and copy the shared state 
> prebuilds and RPM output at the end of the build.
> 
> I was going to post build times for some of these targets for reference, 
> but it would be misleading as we build the targets in succession (e.g, 
> we start with poky-image-sdk which takes the bulk of the time, and then 
> the other targets can largely rely on the shared state builds).
> 
> Ideally I think our nightly build should take much less than 24 hours to 
> build. The question is what we can move out of the nightly build and do 
> on perhaps a weekly basis instead?
> 
> Our buildserver hardware is a dual quad-core Xeon server with 12 GB of 
> RAM. Throwing hardware at the problem is another solution, but not an 
> inexpensive one (we'd be looking at a 4-socket machine filled with 
> quad-cores and 32 GB of RAM).

There doesn't just have to be one build machine, we are going to end up
needing multiple machines and we can split the load between them quite
easily. I think there is going to be a second machine needed alongside
the existing one regardless of what other optimisations we make.

The changes in development at the moment will have a mixed effect on the
autobuilder's load. On the plus side we know there are performance
regressions with 0.9 which we're about to investigate. I can think of
one change I have in mind which on its own should get the builds back
under the 24 hour time.

On the down side there are going to be changes that need increased
horsepower from the build machines such as the runtime testing we're
close to enabling or enabling builds of world.

Cheers,

Richard


