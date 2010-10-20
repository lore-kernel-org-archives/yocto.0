Return-Path: <josh@linux.intel.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4875B4C801BF
	for <yocto@yoctoproject.org>; Wed, 20 Oct 2010 02:18:33 -0500 (CDT)
Received: from [192.168.0.7] (5ad6a226.bb.sky.com [90.214.162.38])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 61DD112EC1F1;
	Wed, 20 Oct 2010 02:53:59 -0500 (CDT)
From: Joshua Lock <josh@linux.intel.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A2FF0D378@shsmsx501.ccr.corp.intel.com>
References: <1287522903.24666.5.camel@scimitar> <4CBE0E4A.1050208@intel.com>
	<1287533087.2283.5.camel@scimitar> <1287533773.2283.10.camel@scimitar>
	<D5AB6E638E5A3E4B8F4406B113A5A19A2FF0D0F8@shsmsx501.ccr.corp.intel.com>
	<1287537197.26874.226.camel@elmorro>
	<D5AB6E638E5A3E4B8F4406B113A5A19A2FF0D144@shsmsx501.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A2FF0D2C6@shsmsx501.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A2FF0D378@shsmsx501.ccr.corp.intel.com>
Date: Wed, 20 Oct 2010 08:18:30 +0100
Message-ID: <1287559110.2268.1.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.0 (2.32.0-2.fc14) 
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
X-List-Received-Date: Wed, 20 Oct 2010 07:18:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-10-20 at 14:07 +0800, Xu, Dongxiao wrote:
> Hi Josh,
> 
> Today I took a glance at the rygel crash issue in poky. Though I didn't
> get the root cause, I found when configure Tracker plugin into rygel,
> the segmentation fault will happen. Since we have already configured
> the media-export plugin, and tracker plugin plays the same role, I
> think we can simply disable tracker plugin (by configure time or change
> by rygel-preferences) for demo usage.

Yes, I thought I mentioned disabling the tracker plugin in an earlier
mail? I'll prepare a patch to the recipe to disable that so we don't
have to remember to do that by hand.

Cheers,
Joshua

> 
> Thanks,
> Dongxiao
> 
> Xu, Dongxiao wrote:
> > I just built out the poky-image-rygel image with your meta-demo
> > layer, and run 
> > 
> > rygel --gst-debug-level=5
> > 
> > I still saw it "segmentation fault" in the last...
> > 
> > I am looking into it.
> > 
> > Thanks,
> > Dongxiao
> > 
> > Xu, Dongxiao wrote:
> >> Zanussi, Tom wrote:
> >>> On Tue, 2010-10-19 at 17:40 -0700, Xu, Dongxiao wrote:
> >>>> Joshua Lock wrote:
> >>>>> On Wed, 2010-10-20 at 01:04 +0100, Joshua Lock wrote:
> >>>>>> On Tue, 2010-10-19 at 14:31 -0700, Saul Wold wrote:
> >>>>>>> 
> >>>>>>> Dongxiao,
> >>>>>>> 
> >>>>>>> Can you take a look at this since you have worked with the
> >>>>>>> gstreamer?
> >>>>>> 
> >>>>>> I did a sloppy job pushing my changes when leaving the office but
> >>>>>> think I have replicated most/all of the in the josh/demo branch.
> >>>>>> 
> >>>>>> I also took a look through the rygel code to see what gstreamer
> >>>>>> elements are explicitly being used, I've created a list and tried
> >>>>>> to ensure as many as possible of them are in the IMAGE_INSTALL
> >>>>>> list for poky-image-rygel, adding them to the RDEPENDS for rygel
> >>>>>> doesn't appear to have included them in the image I just
> >>>>>> created... 
> >>>>>> 
> >>>>>> Full list of names of pipeline elements I found in the rygel
> >>>>>> code follows: 
> >>>>>> 
> >>>>>> decodebin2, videorate, videoscale, ffmpegcolorspace, ffenc_wmv1,
> >>>>>> twolame, lame, mp3parse, ffenc_wmav2, convert-sink-pad,
> >>>>>> ffenc_mpeg2video, audio-src-pad, audio-sink-pad,
> >>>>>> audio-enc-sink-pad, sink, mpegtsmux, audioconvert, audioresample,
> >>>>>> audiorate, capsfilter, audiotestsrc, videotestsrc, ffmux_asf
> >>>>>> 
> >>>>> 
> >>>>> The image I just built with my latest changes in josh/demo
> >>>>> worked!?! Rygel did not segfault :-)
> >>>>> 
> >>>>> If you have time Dongxiao (or anyone else) I'd appreciate if you
> >>>>> could double-check my changes (my install_append in rygel to
> >>>>> create a .config isn't working, so you'll need to do that
> >>>>> manually and run rygel-preferences to disable the tracker
> >>>>> plugin). If you could test using Rygel as a renderer for some
> >>>>> content served by the mediatomb image, that would be much
> >>>>> appreciated. You'll want gupnp-av-cp as provided by gupnp-tools
> >>>>> to control the renderer and content server. 
> >>>>> 
> >>>>> Thanks,
> >>>>> Joshua
> >>>> 
> >>>> I will try your branch, however I didn't find josh/demo in
> >>>> poky-contrib. Is it reside in other place?
> >>>> 
> >>> 
> >>> It should be here:
> >>> 
> >>> ssh://git@git.pokylinux.org/meta-demo.git
> >>> 
> >>> Tom
> >> 
> >> Got it, thanks!
> >> 
> >> Dongxiao
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.pokylinux.org/listinfo/yocto
> 

-- 
Joshua Lock
        Intel Open Source Technology Centre


