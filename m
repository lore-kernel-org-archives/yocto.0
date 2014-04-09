Return-Path: <edward@collabora.com>
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [93.93.135.160])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 793C5E00B88
	for <yocto@yoctoproject.org>; Wed,  9 Apr 2014 06:00:28 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: edward) with ESMTPSA id 9739E60066F
Message-ID: <1397048422.2265.13.camel@deumeu.home.bilboed.com>
From: Edward Hervey <edward@collabora.com>
To: Discussions specific to using GStreamer on embedded systems
	<gstreamer-embedded@lists.freedesktop.org>
Date: Wed, 09 Apr 2014 15:00:22 +0200
In-Reply-To: <CAF_dkJAbX84L7zVZPMkYKxesuwjfeHB-B6mzJFoqkEvHOqHj-Q@mail.gmail.com>
References: <CAF_dkJBmwwiaC0Kna5rrZ2J_WnKYz9gvTU55xBXCkEyxoZ88yQ@mail.gmail.com>
	<CAJTo0LbrFHPfQ5kD9XfaSTc2YM_1x=AzdC4CYJecc_w6FM7n9A@mail.gmail.com>
	<CAF_dkJAbX84L7zVZPMkYKxesuwjfeHB-B6mzJFoqkEvHOqHj-Q@mail.gmail.com>
X-Mailer: Evolution 3.10.4 (3.10.4-2.fc20) 
Mime-Version: 1.0
X-Mailman-Approved-At: Wed, 09 Apr 2014 08:11:22 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	gstreamer-devel <gstreamer-devel@lists.freedesktop.org>
Subject: Re: Squeezing a gstreamer video pipeline into the smallest footprint possible
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
X-List-Received-Date: Wed, 09 Apr 2014 13:00:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

  Disabling the GStreamer debugging system can also help trim off a
decent amount from the packages.

    Edward

On Wed, 2014-04-09 at 07:13 -0400, Patrick Doyle wrote:
> Thank you for the tips folks... please keep them coming.  At the moment
> (for this pinhole sized project) I only need support for video.  Is
> there any way to strip out all of the audio components from the
> gstreamer I generate?  I tried adding --disable-vorbis to my recipe,
> only to find that config.status shows that both --disable-vorbis and
> --enable-vorbis options we set in ac_cs_config.
> 
> In the mean time, I'm going to go build my own pipeline & link it
> statically as suggested by Sebastian.
> 
> Thank you again.
> 
> --wpd
> 
> 
> On Wed, Apr 9, 2014 at 4:53 AM, Burton, Ross <ross.burton@intel.com> wrote:
> > On 9 April 2014 00:03, Patrick Doyle <wpdster@gmail.com> wrote:
> >> I have a ridiculously pinhole sized memory footprint into which I
> >> would like to squeeze a gstreamer based video pipeline.  I am looking
> >> for tips on what I can do to minimize the footprint as much as
> >> possible for my Yocto based system.
> >
> > The GStreamer plugins and libraries are all packaged independently in
> > Yocto, so you can do some heavy size reduction by just installing the
> > packages you need, and double-checking that nothing unexpected gets
> > pulled in via dependencies.
> >
> > Ross
> _______________________________________________
> gstreamer-embedded mailing list
> gstreamer-embedded@lists.freedesktop.org
> http://lists.freedesktop.org/mailman/listinfo/gstreamer-embedded

-- 
Edward Hervey <edward@collabora.com>


