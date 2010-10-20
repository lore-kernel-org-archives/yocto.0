Return-Path: <josh@linux.intel.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4D94F4C80121
	for <yocto@yoctoproject.org>; Tue, 19 Oct 2010 19:19:41 -0500 (CDT)
Received: from [192.168.0.7] (5ad6a226.bb.sky.com [90.214.162.38])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 4298D12EC346;
	Tue, 19 Oct 2010 19:55:06 -0500 (CDT)
From: Joshua Lock <josh@linux.intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504CF2575B60@shsmsx502.ccr.corp.intel.com>
References: <1287522903.24666.5.camel@scimitar> <4CBE0E4A.1050208@intel.com>
	<1287533087.2283.5.camel@scimitar>
	<625BA99ED14B2D499DC4E29D8138F1504CF2575B60@shsmsx502.ccr.corp.intel.com>
Date: Wed, 20 Oct 2010 01:19:38 +0100
Message-ID: <1287533978.2283.12.camel@scimitar>
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
X-List-Received-Date: Wed, 20 Oct 2010 00:19:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-10-20 at 08:08 +0800, Tian, Kevin wrote:
>From: Joshua Lock
> >Sent: Wednesday, October 20, 2010 8:05 AM
> >
> >On Tue, 2010-10-19 at 14:31 -0700, Saul Wold wrote:
> >>
> >> Dongxiao,
> >>
> >> Can you take a look at this since you have worked with the
gstreamer?
> >
> >I did a sloppy job pushing my changes when leaving the office but
think
> >I have replicated most/all of the in the josh/demo branch.
> >
> >I also took a look through the rygel code to see what gstreamer
elements
> >are explicitly being used, I've created a list and tried to ensure as
> >many as possible of them are in the IMAGE_INSTALL list for
> >poky-image-rygel, adding them to the RDEPENDS for rygel doesn't
appear
> >to have included them in the image I just created...
> >
> >Full list of names of pipeline elements I found in the rygel code
> >follows:
> >
> >decodebin2, videorate, videoscale, ffmpegcolorspace, ffenc_wmv1,
> >twolame, lame, mp3parse, ffenc_wmav2, convert-sink-pad,
> >ffenc_mpeg2video, audio-src-pad, audio-sink-pad, audio-enc-sink-pad,
> >sink, mpegtsmux, audioconvert, audioresample, audiorate, capsfilter,
> >audiotestsrc, videotestsrc, ffmux_asf
> 
> Have all of above elements already enabled in your branch, or is it
still
> in progress to follow up?
> 
They have now.


> Is it a separate issue from segfault or related in your gut-feeling?
> 
Definitely related, rygel launches without segfault now. It doesn't
explicitly specify which elements are required at build time and for at
least some of them doesn't handle them not being there very well at all.

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


