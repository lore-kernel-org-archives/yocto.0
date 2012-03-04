Return-Path: <denis@denix.org>
Received: from vms173003pub.verizon.net (vms173003pub.verizon.net
	[206.46.173.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 366C4E0070C
	for <yocto@yoctoproject.org>; Sat,  3 Mar 2012 22:08:21 -0800 (PST)
Received: from gandalf.denix.org ([unknown] [71.178.225.66])
	by vms173003.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0M0C00HU9JPRS0R0@vms173003.mailsrvcs.net> for
	yocto@yoctoproject.org; Sun, 04 Mar 2012 00:08:16 -0600 (CST)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 728A52016D; Sun,
	04 Mar 2012 01:08:15 -0500 (EST)
Date: Sun, 04 Mar 2012 01:08:15 -0500
From: Denys Dmytriyenko <denis@denix.org>
To: William Mills <wmills@ti.com>
Message-id: <20120304060815.GM24667@denix.org>
References: <alpine.DEB.2.02.1202281349020.2440@oneiric>
	<4F4D457F.7000306@windriver.com>
	<alpine.DEB.2.02.1202281651040.8024@oneiric>
	<D8B2FCF1-09C3-4DEF-BFFB-3E0A421C61AE@beagleboard.org>
	<alpine.DEB.2.02.1202281723110.9200@oneiric> <4F514826.5050402@ti.com>
MIME-version: 1.0
In-reply-to: <4F514826.5050402@ti.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Koen Kooi <koen@beagleboard.org>
Subject: Re: proper recipe for building for beagle xM? meta-ti?
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
X-List-Received-Date: Sun, 04 Mar 2012 06:08:21 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Fri, Mar 02, 2012 at 05:22:30PM -0500, William Mills wrote:
> 
> 
> On 02/28/2012 05:28 PM, Robert P. J. Day wrote:
> >On Tue, 28 Feb 2012, Koen Kooi wrote:
> >
> >>Op 28 feb. 2012, om 22:55 heeft Robert P. J. Day het volgende geschreven:
> >>
> >>>On Tue, 28 Feb 2012, Bruce Ashfield wrote:
> >>>
> >>>>It is true that the beagleboard is a hardware reference board in the
> >>>>yocto consolidated kernel tree and meta-yocto layers. That means
> >>>>that it gets the yocto standard QA builds and boot testing.
> >>>>
> >>>>That being said, if you are looking for the latest + specific
> >>>>features then you've been pointed in a good direction .. meta-ti
> >>>>will meet your needs.
> >>>>
> >>>>As for disentangling and reducing questions in this area .. rest
> >>>>assured, we are working on it.
> >>>  ok, that's perfectly reasonable -- meta-yocto provides a generic,
> >>>well-tested product, while the meta-ti layer provides more
> >>>leading-edge content, correct?
> >>No, the amount of testing is not the difference, the amount of
> >>support for the board is. Meta-ti supports the camera interfaces, 3d
> >>engine, dsp, crypto engines, expansion boards, etc. Meta-yocto lacks
> >>all that for beagleboard.
> >   i understand that reasonably well, and i'll make one more
> >observation, then i'll shut up.
> >
> >   i cloned the meta-ti layer into my yocto clone, and here's the
> >majority of the meta-ti README:
> >
> >===== start
> >
> >This layer depends on:
> >
> >URI: git://git.openembedded.org/openembedded-core
> >branch: master
> >revision: HEAD
> >
> >URI: git://git.openembedded.org/meta-openembedded
> >branch: master
> >revision: HEAD
> >
> >URI: git://git.angstrom-distribution.org/meta-angstrom
> >branch: master
> >revision: HEAD
> >
> >Currently meta-ti only works with the Angstrom distribution and hence
> >requires the meta-angstrom layer. There are known issues when using
> >gcc-4.6 based toolchain from OpenEmbedded-Core, thus gcc-4.5
> >toolchain, provided by meta-openembedded, is needed. It is planned to
> >fix these shortcomings in the near future and allow building the base
> >BSP part of meta-ti with different distributions and layer stacks,
> >such as: distro-less (only with OE-Core), with Yocto/Poky, with
> >Angstrom or Arago.
> >
> >Due to the above, it is now recommended to follow the instructions at
> >http://www.angstrom-distribution.org/building-angstrom
> >
> >This will set it up for the OpenEmbedded-core layout instead of the
> >old "Classic" OpenEmbedded-dev layout. You can optionally tweak
> >sources/layers.txt and conf/bblayers.conf to (de)select BSP layers.
> >
> >===== end
> >
> >   by the time i'm done reading that, i'm not sure whether i've been
> >told i can use yocto as long as i do the necessary prep first, or that
> >i should give up on yocto and just use angstrom directly.  i'm fine
> >with either approach, but the README seems to just waffle *totally* on
> >which strategy to use.
> >
> >   quite simply, that README seems to provide nothing but more
> >confusion than anything else.
> 
> Congratulations you are the first beta tester for the new README.txt
> language :) (patched two days ago).

Actually, he is the first one to complain about the meat (i.e. added one 
paragraph with 3 statements) - everyone else before him was complaining about 
not enough info in the README, hence the addition.

-- 
Denys

