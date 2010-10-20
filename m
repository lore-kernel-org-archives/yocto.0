Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1DBA84C801BF
	for <yocto@yoctoproject.org>; Tue, 19 Oct 2010 20:13:43 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 19 Oct 2010 18:13:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.57,353,1283756400"; d="scan'208";a="848918275"
Received: from unknown (HELO [10.255.12.85]) ([10.255.12.85])
	by fmsmga001.fm.intel.com with ESMTP; 19 Oct 2010 18:13:42 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A2FF0D0F8@shsmsx501.ccr.corp.intel.com>
References: <1287522903.24666.5.camel@scimitar> <4CBE0E4A.1050208@intel.com>
	<1287533087.2283.5.camel@scimitar> <1287533773.2283.10.camel@scimitar>
	<D5AB6E638E5A3E4B8F4406B113A5A19A2FF0D0F8@shsmsx501.ccr.corp.intel.com>
Date: Tue, 19 Oct 2010 20:13:17 -0500
Message-ID: <1287537197.26874.226.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Call for help for demo UPNP media renderer
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
X-List-Received-Date: Wed, 20 Oct 2010 01:13:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-10-19 at 17:40 -0700, Xu, Dongxiao wrote:
> Joshua Lock wrote:
> > On Wed, 2010-10-20 at 01:04 +0100, Joshua Lock wrote:
> >> On Tue, 2010-10-19 at 14:31 -0700, Saul Wold wrote:
> >>> 
> >>> Dongxiao,
> >>> 
> >>> Can you take a look at this since you have worked with the
> >>> gstreamer? 
> >> 
> >> I did a sloppy job pushing my changes when leaving the office but
> >> think I have replicated most/all of the in the josh/demo branch.
> >> 
> >> I also took a look through the rygel code to see what gstreamer
> >> elements are explicitly being used, I've created a list and tried to
> >> ensure as many as possible of them are in the IMAGE_INSTALL list for
> >> poky-image-rygel, adding them to the RDEPENDS for rygel doesn't
> >> appear to have included them in the image I just created...
> >> 
> >> Full list of names of pipeline elements I found in the rygel code
> >> follows: 
> >> 
> >> decodebin2, videorate, videoscale, ffmpegcolorspace, ffenc_wmv1,
> >> twolame, lame, mp3parse, ffenc_wmav2, convert-sink-pad,
> >> ffenc_mpeg2video, audio-src-pad, audio-sink-pad, audio-enc-sink-pad,
> >> sink, mpegtsmux, audioconvert, audioresample, audiorate, capsfilter,
> >> audiotestsrc, videotestsrc, ffmux_asf
> >> 
> > 
> > The image I just built with my latest changes in josh/demo worked!?!
> > Rygel did not segfault :-)
> > 
> > If you have time Dongxiao (or anyone else) I'd appreciate if you
> > could double-check my changes (my install_append in rygel to create a
> > .config isn't working, so you'll need to do that manually and run
> > rygel-preferences to disable the tracker plugin). If you could test
> > using Rygel as a renderer for some content served by the mediatomb
> > image, that would be much appreciated. You'll want gupnp-av-cp as
> > provided by gupnp-tools to control the renderer and content server.  
> > 
> > Thanks,
> > Joshua
> 
> I will try your branch, however I didn't find josh/demo in poky-contrib.
> Is it reside in other place?
> 

It should be here:

ssh://git@git.pokylinux.org/meta-demo.git

Tom


