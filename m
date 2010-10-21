Return-Path: <josh@linux.intel.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 033044C801BF
	for <yocto@yoctoproject.org>; Thu, 21 Oct 2010 06:09:55 -0500 (CDT)
Received: from [10.250.128.245] (unknown [158.43.2.102])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id C033B12EC1CA;
	Thu, 21 Oct 2010 06:45:24 -0500 (CDT)
From: Joshua Lock <josh@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4CBF7FBB.3080804@linux.intel.com>
References: <1287595139.2635.16.camel@scimitar>
	<1287612589.2231.3.camel@scimitar> <4CBF7FBB.3080804@linux.intel.com>
Date: Thu, 21 Oct 2010 12:09:52 +0100
Message-ID: <1287659392.2325.6.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.0 (2.32.0-2.fc14) 
Cc: yocto@yoctoproject.org
Subject: Re: UPnP demo - call for testing
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Oct 2010 11:09:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-10-20 at 16:48 -0700, Darren Hart wrote:
> On 10/20/2010 03:09 PM, Joshua Lock wrote:
> > On Wed, 2010-10-20 at 18:18 +0100, Joshua Lock wrote:
> >> Hi all,
> >>
> >> I've successfully tested the UPnP demo in my office but would appreciate
> >> someone else taking a bash.
> >>
> >> Unfortunately you currently need my branch from poky-contrib (josh/demo)
> >> and the corresponding branch from meta-demo (josh/demo).
> >
> > I've just pushed one change to poky/master and merged a tidied up
> > changeset into the master branch of meta-demo. So you should now be able
> > to test with latest poky and meta-demo master.
> >
> > Cheers,
> > Joshua
> 
> I have added the COMMERCIAL_LICENSE bits to my local.conf and mediatomb 
> built after that.
> 
> building poky-image-rygel-live, gupnp-dlna do_configure is failing with:
> 
> 	configure: error: Package requirements (gstreamer-0.10 >=
> 	0.10.29.2) were not met:
> 
> 	No package 'gstreamer-0.10' found
> 
> Have you seen that?

No, but I can see how it happened. Gstreamer isn't listed in
gupnp-dlna's DEPENDS and it's likely that gstreamer wasn't built before
gupnp-dlna configure was run - I have updated the gupnp-dlna recipe in
the meta-demo master branch.


Sorry about that!

Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


