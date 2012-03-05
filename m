Return-Path: <denis@denix.org>
Received: from vms173005pub.verizon.net (vms173005pub.verizon.net
	[206.46.173.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC9D4E013BA
	for <yocto@yoctoproject.org>; Sun,  4 Mar 2012 20:27:24 -0800 (PST)
Received: from gandalf.denix.org ([unknown] [71.178.225.66])
	by vms173005.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0M0E009IO9OAN011@vms173005.mailsrvcs.net> for
	yocto@yoctoproject.org; Sun, 04 Mar 2012 22:26:34 -0600 (CST)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 4196B20168; Sun,
	04 Mar 2012 23:26:34 -0500 (EST)
Date: Sun, 04 Mar 2012 23:26:34 -0500
From: Denys Dmytriyenko <denis@denix.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-id: <20120305042634.GC14417@denix.org>
References: <alpine.DEB.2.02.1203021729040.31351@oneiric>
	<4F514EC8.8000606@ti.com> <4F515551.50708@mlbassoc.com>
	<20120304061843.GN24667@denix.org>
	<alpine.DEB.2.02.1203040716190.496@oneiric>
	<4F5361B6.8040908@mlbassoc.com>
	<alpine.DEB.2.02.1203041310220.20388@oneiric>
	<20120304192728.GO24667@denix.org> <4F53C63D.1000305@mlbassoc.com>
	<alpine.DEB.2.02.1203041629001.18196@oneiric>
MIME-version: 1.0
In-reply-to: <alpine.DEB.2.02.1203041629001.18196@oneiric>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 05 Mar 2012 04:27:24 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Sun, Mar 04, 2012 at 04:38:36PM -0500, Robert P. J. Day wrote:
> On Sun, 4 Mar 2012, Gary Thomas wrote:
> 
> > Can you explain what the toolchain problems are and why the versions
> > in oe-core don't work for meta-ti?
> 
>   i just finished doing a "bitbake core-image-minimal" for a
> beagleboard using the meta-ti layer, and having only to set a
> preferred version for udev.
> 
>   the build finished (albeit with a few warnings), and i have all of
> the images i would expect for a beagle xM.  should i consider this a
> form of success -- the simple fact that the build appeared to succeed?

Did you have meta-oe in your layer stack?

-- 
Denys

