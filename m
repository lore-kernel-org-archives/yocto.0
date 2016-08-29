Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A59D0E00F2F; Mon, 29 Aug 2016 08:52:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B0D8E00F2A
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 08:52:33 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 2C90868A01B; Mon, 29 Aug 2016 16:52:32 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 8441368A019;
	Mon, 29 Aug 2016 16:52:31 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 1A58467402E9;
	Mon, 29 Aug 2016 17:52:31 +0200 (CEST)
To: "Maxin B. John" <maxin.john@intel.com>
References: <94135907-910a-eea9-263d-89e9ef21bf56@mlbassoc.com>
	<20160829114913.GB5724@mbabyjoh-desk.ger.corp.intel.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <90b87072-3f5d-a439-9bf2-8f216655f386@mlbassoc.com>
Date: Mon, 29 Aug 2016 17:52:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20160829114913.GB5724@mbabyjoh-desk.ger.corp.intel.com>
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
X-List-Received-Date: Mon, 29 Aug 2016 15:52:36 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-08-29 13:49, Maxin B. John wrote:
> Hi Gary,
>
> On Mon, Aug 29, 2016 at 11:09:25AM +0200, Gary Thomas wrote:
>> How is the touchscreen calibration supposed to work now (after
>> the recent changes dropping pointercal, tslib, etc)?  I can
>> see when I launch X that the screen calibration program runs,
>> but I think only briefly as the main [matchbox] screen immediately
>> comes up and without calibration, my pointer (touchscreen) is pretty
>> useless...
>
> Could you share some more details about the device that you are using?

I'm using an i.MX6Q SabreLite (Boundary Devices) with a 7" LCD that has
a TSC-2004 resistive touch screen.

>
> Most likely, the layer which supports your device, already provides a
> default "/etc/pointercal.xinput" file. Removing that file and restarting
> the device should bring back the screen calibration program during boot.

I removed that file and still the same behavior.

>
>> Ideas / pointers?
>
> Please update that .bbappend file or provide a "reasonable"(which works
> with the latest xinput_calibrator) set of default values in the
> pointercal.xinput file.

Since the autocalibrate isn't working, can you give some guidance
what this looks like?  The one created by the [erroneous] .bbappend
looks like this:
   xinput set-int-prop "EETI eGalax Touch Screen" "Evdev Axis Calibration" 42060 2062 -8 -783544 1 1549 65536
   xinput set-int-prop "EETI eGalax Touch Screen" "Evdev Axes Swap" 8 0

Note: the reason you didn't see my error when you built for imx28 was
that this specific file is i.MX6 specific.

Also, in the past I used a [manually crafted] file:
     ================= /etc/X11/xorg.conf.d/11-touchscreen.conf
     Section "InputClass"
     Identifier "tsc2004"
     MatchProduct "tsc2004"
     MatchDevicePath "/dev/input/event*"
     Driver "evdev"
     Option "InvertX" "true"
     Option  "Calibration"   "85 4045 166 3991"
     EndSection

The touchscreen still works if I include this but I was trying to play
by the new rules and use the new configuration tools, so I removed it
and /etc/pointercal*


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

