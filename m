Return-Path: <denis@denix.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83355E00848; Tue,  7 Oct 2014 17:53:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,HDRS_LCASE,
	RCVD_IN_DNSWL_NONE,T_MANY_HDRS_LCASE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [206.46.173.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 HDRS_LCASE Odd capitalization of message header
	* 0.0 T_MANY_HDRS_LCASE Odd capitalization of multiple message headers
X-Greylist: delayed 3601 seconds by postgrey-1.32 at yocto-www;
	Tue, 07 Oct 2014 17:53:27 PDT
Received: from vms173021pub.verizon.net (vms173021pub.verizon.net
	[206.46.173.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08D20E0076C
	for <yocto@yoctoproject.org>; Tue,  7 Oct 2014 17:53:27 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [108.18.33.160])
	by vms173021.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0ND300FABMD195W3@vms173021.mailsrvcs.net> for
	yocto@yoctoproject.org; Tue, 07 Oct 2014 18:53:26 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id D7F5B200EA; Tue,
	07 Oct 2014 19:53:25 -0400 (EDT)
Date: Tue, 07 Oct 2014 19:53:25 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: "Burton, Ross" <ross.burton@intel.com>
Message-id: <20141007235325.GJ25997@denix.org>
References: <OF2C69ED33.175EBBCF-ONC1257D65.0034C92B@alpine.de>
	<CAJTo0LaHLETQJxzVpm_B9y+GX9RNBiCY1UF7kBhuWBEeMcs+Uw@mail.gmail.com>
MIME-version: 1.0
In-reply-to: <CAJTo0LaHLETQJxzVpm_B9y+GX9RNBiCY1UF7kBhuWBEeMcs+Uw@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Recommended Hardware for building
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
X-List-Received-Date: Wed, 08 Oct 2014 00:53:31 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Thu, Oct 02, 2014 at 11:04:43AM +0100, Burton, Ross wrote:
> On 2 October 2014 10:36, Oliver Novakovic <Oliver.Novakovic@alpine.de> wrote:
> > Can anyone recommend a reasonable performant hardware setup to use ?
> >
> > What should be considered ? Are there any pitfalls ? What about bottlenecks
> > in the build system ?
> >
> > Specifically:
> >
> > How many cores are recommended ? And how much cache is necessary ?
> > How much of the main memory does Yocto really use ? Is 32 GB sufficient or
> > should I go for 64 ?
> >
> > Does it make sense to use two SSDs as Raid0  to get builds faster ?
> 
> As much of everything as you can afford.  :)  The build isn't heavy in
> any particular metric, so don't sacrifice RAM for SSDs for example.
> 
> RAID 0 over SSD would be nice and fast, but I prefer having a good
> amount of RAM and a tuned ext4 (no journal, long commit delay) so data
> doesn't actually hit the disk as frequently. Keeping the actual build
> directories on a separate disk is good for performance and not causing
> data loss when you lose a disk.
> 
> There are people that have 64GB in machines and then set TMPDIR to a
> tmpfs.  Surprisingly this isn't that much faster (5% or so), but it's
> a lot easier on the hardware and power consumption.

That's how I roll - after I lost few SSD drives by constantly building and 
rebuilding stuff, I ended up shoving 64GB of RAM into my gear and building 
into RAM-based tmpfs. Of course, there are size limits to what can be built in 
one go, but there are workarounds and ways to serialize builds...

-- 
Denys

