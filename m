Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAF8EE00348
	for <yocto@yoctoproject.org>; Fri, 14 Sep 2012 14:52:29 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 14 Sep 2012 14:52:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,424,1344236400"; d="scan'208";a="145226200"
Received: from unknown (HELO [10.255.13.77]) ([10.255.13.77])
	by AZSMGA002.ch.intel.com with ESMTP; 14 Sep 2012 14:52:23 -0700
Message-ID: <1347659543.6185.21.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 14 Sep 2012 16:52:23 -0500
In-Reply-To: <CAJTo0LbVU6u5GwZkn2pGzzG=2bem5QUY=76B40ic2ygqQqP+iQ@mail.gmail.com>
References: <cover.1347650435.git.tom.zanussi@intel.com>
	<e5aa858a33392e0a7569c50d308049f88cd802a4.1347650435.git.tom.zanussi@intel.com>
	<CAJTo0LbgWdoX8GnMsKYa-y176X1YiTEd7Ucw7CNLLi6OBqaB2g@mail.gmail.com>
	<1347657906.6185.17.camel@empanada>
	<CAJTo0LbVU6u5GwZkn2pGzzG=2bem5QUY=76B40ic2ygqQqP+iQ@mail.gmail.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: Re: [PATCH 1/1] meta-intel: make video acceleration choice dependent on LICENSE_FLAGS
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
X-List-Received-Date: Fri, 14 Sep 2012 21:52:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-09-14 at 22:39 +0100, Burton, Ross wrote:
> On 14 September 2012 22:25, Tom Zanussi <tom.zanussi@intel.com> wrote:
> > From the gstreamer-vaapi README:
> >
> > "vaapidecoder currently relies on FFmpeg"
> 
> Ha, fair enough.
> 
> > Anyway, it would be nice if someone who had a better understanding of
> > this 'stack' could suggest better ways of doing things - at this point
> > it works for 3 different video acceleration implementations (emgd, pvr
> > and standard intel va) and I'm not looking forward to going through that
> > exercise again - for now I'll just be trying to fix the build problems
> > introduced by the new licensing restrictions.
> 
> I'm off to the London office on Monday, there's bound to be a few
> Cedar Trail netbooks hanging around there still.  I know they play
> h264 through vaapi (albeit fluendo-va) in MeeGo because that was the
> most frustrating/rewarding week I've had for along time, so I'll build
> an image with meta-intel and see what I can do.
> 

That would be great - any knowledge you could apply from what worked in
Meego would be welcome - feel free to rip the whole thing apart and
replace it if you have to...

> I'd also like to see anything MIX related in meta-intel die, that's an
> abomination now that gst-va actually works.
> 

The mixvideo stuff is actually what comes bundled with emgd so I'm not
sure we're any further ahead replacing it unless we can also replace
emgd...

Tom

> Ross



