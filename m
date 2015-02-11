Return-Path: <dpquigl@tycho.nsa.gov>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C02BBE00546; Wed, 11 Feb 2015 09:08:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [63.239.67.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 856 seconds by postgrey-1.32 at yocto-www;
	Wed, 11 Feb 2015 09:08:25 PST
Received: from emvm-gh1-uea09.nsa.gov (emvm-gh1-uea09.nsa.gov [63.239.67.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCD33E002F9
	for <yocto@yoctoproject.org>; Wed, 11 Feb 2015 09:08:25 -0800 (PST)
X-TM-IMSS-Message-ID: <8025d0c700109633@nsa.gov>
Received: from tarius.tycho.ncsc.mil ([144.51.242.1]) by nsa.gov
	([63.239.67.10]) with ESMTP (TREND IMSS SMTP Service 7.1;
	TLSv1/SSLv3 DHE-RSA-AES256-SHA (256/256)) id 8025d0c700109633 ;
	Wed, 11 Feb 2015 11:55:43 -0500
Received: from moss-clam.infosec.tycho.ncsc.mil (moss-clam [192.168.25.42])
	by tarius.tycho.ncsc.mil (8.14.4/8.14.4) with ESMTP id t1BGrcXY024195; 
	Wed, 11 Feb 2015 11:53:48 -0500
Message-ID: <1423673755.1873.5.camel@tycho.nsa.gov>
From: dpquigl <dpquigl@tycho.nsa.gov>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Wed, 11 Feb 2015 11:55:55 -0500
In-Reply-To: <6445648.XiRzhvmYHl@peggleto-mobl5.ger.corp.intel.com>
References: <1423669983.23617.78.camel@tycho.nsa.gov>
	<6445648.XiRzhvmYHl@peggleto-mobl5.ger.corp.intel.com>
X-Mailer: Evolution 3.12.10 (3.12.10-1.fc21) 
Mime-Version: 1.0
X-Mailman-Approved-At: Thu, 12 Feb 2015 08:12:59 -0800
Cc: yocto@yoctoproject.org, openembedded-devel@lists.openembedded.org
Subject: Re: [oe] meta-selinux
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
X-List-Received-Date: Wed, 11 Feb 2015 17:08:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2015-02-11 at 16:29 +0000, Paul Eggleton wrote:
> (Adding yocto@yoctoproject.org to CC since that is where meta-selinux patches 
> tend to go at least)
> 
> On Wednesday 11 February 2015 10:53:03 dpquigl wrote:
> > I'm working on OpenXT and it makes use of the meta-selinux repo hosted
> > by the yocto project. I'm trying to use it with a base openembedded core
> > and its not in sync with oe-core because its based on pokey. 
> 
> To be clear, poky and OE-Core are in lock-step. No patch to core recipes goes 
> into Poky directly, they are applied to OE-Core and then they flow into Poky 
> immediately thereafter (Richard, who does the merging of patches into OE-Core, 
> does the sync to Poky immediately afterwards.)
> 
> What's more likely happening I suspect is that you are on a newer 
> branch/revision of OE-Core/Poky than the meta-selinux maintainers have tested. 
> I can't speak to the maintenance schedule for meta-selinux but maybe others 
> with knowledge there can chime in.


I think this makes the most sense. 3 of the problems were bbappend files
trying to append the wrong version of a recipe (although with these
changes I should move them over to a wildcard) and the last one was with
LXC. After that I encountered a typo in one of the recipes where it
wasn't able to pull the sources down. 

> 
> > This made me think of two questions. 1) Why is this not in OE core since so
> > many packages in core can potentially have SELinux support enabled and 2) if
> > its not supposed to be in core where should turning on SELinux support
> > in a recipe go? For example coreutils can have SELinux support enabled.
> > Currently this is in meta-selinux as a bbappend to the coreutils
> > package. This works out because its always going to be there. However
> > there is also a bbappend for an LXC recipe. LXC isn't in core which
> > means it has a dependency on a layer not in core.
> > 
> > Ideally I would put the recipes needed for SELinux support in core and
> > have a distro feature which is checked in the recipes in core for
> > whether or not to add --with-selinux to the build flags. Then LXC could
> > check a core distro feature and enable SELinux if it wants to.
> 
> We have to draw the line somewhere for what to include in OE-Core, and at the 
> moment I guess we have considered SELinux to be outside its scope. Obviously 
> these things get re-evaluated from time to time, and SELinux is a little bit 
> painful for this because of how many recipes it has to touch. Ultimately it 
> depends on how many people in the embedded space want to enable and use 
> SELinux.
> 
> Thoughts from others?
> 

In OpenXT we're using OE to generate images for dom0, a user interface
domain, a network driver domain, and various other service domains for
isolating tasks in the platform. In addition to that we're using
openembedded for building on various embedded research platforms. I'm
assuming yocto is using SELinux to some extent since they are
maintaining the repository for it and there are quite a few developers
using SELiunx on embedded products in Japan.


Dave




