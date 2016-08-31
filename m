Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82403E00AB4; Wed, 31 Aug 2016 03:21:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3FEFE007C2
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2016 03:21:13 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga105.fm.intel.com with ESMTP; 31 Aug 2016 03:21:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,261,1470726000"; d="scan'208";a="755381307"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.71])
	by FMSMGA003.fm.intel.com with ESMTP; 31 Aug 2016 03:21:12 -0700
Date: Wed, 31 Aug 2016 13:18:53 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20160831101853.GB27076@mbabyjoh-desk.ger.corp.intel.com>
References: <94135907-910a-eea9-263d-89e9ef21bf56@mlbassoc.com>
	<20160829114913.GB5724@mbabyjoh-desk.ger.corp.intel.com>
	<90b87072-3f5d-a439-9bf2-8f216655f386@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <90b87072-3f5d-a439-9bf2-8f216655f386@mlbassoc.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: X display touch calibration
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
X-List-Received-Date: Wed, 31 Aug 2016 10:21:14 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Mon, Aug 29, 2016 at 05:52:31PM +0200, Gary Thomas wrote:
> On 2016-08-29 13:49, Maxin B. John wrote:
> >Hi Gary,
> >
> >On Mon, Aug 29, 2016 at 11:09:25AM +0200, Gary Thomas wrote:
> >>How is the touchscreen calibration supposed to work now (after
> >>the recent changes dropping pointercal, tslib, etc)?  I can
> >>see when I launch X that the screen calibration program runs,
> >>but I think only briefly as the main [matchbox] screen immediately
> >>comes up and without calibration, my pointer (touchscreen) is pretty
> >>useless...
> >
> >Could you share some more details about the device that you are using?
> 
> I'm using an i.MX6Q SabreLite (Boundary Devices) with a 7" LCD that has
> a TSC-2004 resistive touch screen.
> 
> >
> >Most likely, the layer which supports your device, already provides a
> >default "/etc/pointercal.xinput" file. Removing that file and restarting
> >the device should bring back the screen calibration program during boot.
> 
> I removed that file and still the same behavior.

Looks a bit strange :(

> >
> >>Ideas / pointers?
> >
> >Please update that .bbappend file or provide a "reasonable"(which works
> >with the latest xinput_calibrator) set of default values in the
> >pointercal.xinput file.
> 
> Since the autocalibrate isn't working, can you give some guidance
> what this looks like?  The one created by the [erroneous] .bbappend
> looks like this:
>   xinput set-int-prop "EETI eGalax Touch Screen" "Evdev Axis Calibration" 42060 2062 -8 -783544 1 1549 65536
>   xinput set-int-prop "EETI eGalax Touch Screen" "Evdev Axes Swap" 8 0
> 
> Note: the reason you didn't see my error when you built for imx28 was
> that this specific file is i.MX6 specific.

Oh, ok.

> Also, in the past I used a [manually crafted] file:
>     ================= /etc/X11/xorg.conf.d/11-touchscreen.conf
>     Section "InputClass"
>     Identifier "tsc2004"
>     MatchProduct "tsc2004"
>     MatchDevicePath "/dev/input/event*"
>     Driver "evdev"
>     Option "InvertX" "true"
>     Option  "Calibration"   "85 4045 166 3991"
>     EndSection
> 
> The touchscreen still works if I include this but I was trying to play
> by the new rules and use the new configuration tools, so I removed it
> and /etc/pointercal*

Good to hear that it works with the manually created file. To debug the problem
further, is it possible to share the output from the target ?
# xinput_calibrator --list

Best Regards,
Maxin

