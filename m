Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7443E00346
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2012 15:21:38 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 25 Sep 2012 15:21:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,485,1344236400"; d="scan'208";a="197036472"
Received: from unknown (HELO helios.localnet) ([10.252.122.18])
	by azsmga001.ch.intel.com with ESMTP; 25 Sep 2012 15:21:37 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Ross Burton <ross.burton@intel.com>
Date: Tue, 25 Sep 2012 23:21:36 +0100
Message-ID: <1988742.vVm7Lma6pF@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.1 (Linux/3.2.0-31-generic-pae; KDE/4.9.1; i686; ; )
In-Reply-To: <34F347852CDC4B699F8565643D33E53B@intel.com>
References: <CEE73346-DC1B-4CB2-9D51-A2D47705ADFC@keylevel.com>
	<34F347852CDC4B699F8565643D33E53B@intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How can I build gstreamer and its plugins without x11?
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
X-List-Received-Date: Tue, 25 Sep 2012 22:21:39 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 25 September 2012 23:12:12 Ross Burton wrote:
> On Tuesday, 25 September 2012 at 21:51, Chris Tapp wrote:
> > I'm trying to build gstreamer to run on a system that does not have x11
> > (for audio and to stream video). It seems as if gst-plugins-good-id3demux
> > needs x11: ...
> > ERROR: Required build target 'task-sjs' has no buildable providers.
> > Missing or unbuildable dependency chain was: ['task-sjs',
> > 'gst-plugins-good-id3demux', 'pulseaudio', 'consolekit',
> > 'virtual/libx11']
> I'm not entirely sure why a demuxer is depending on pulseaudio, but you'll
> hit this somewhere else.
> 
> pulseaudio's build dependency on consolekit is entirely spurious and I've
> fixed this in master.  pulseaudio-server then has a runtime dependency on
> consolekit which you could argue should be a recommends - in Guacamayo for
> now we're just removing that dependency as we're not using consolekit.

Hmm, I think an item that fell off my todo list was to make the gstreamer 
pulseaudio dependency conditional on pulseaudio being in DISTRO_FEATURES after 
I added that feature. I think we should still do that, not sure if it's too 
late for the current development cycle though - at least it's not too 
intrusive since pulseaudio is a backfilled feature.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

