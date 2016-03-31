Return-Path: <josep.puigdemont@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4DA7FE00B9E; Thu, 31 Mar 2016 08:30:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 68 seconds by postgrey-1.32 at yocto-www;
	Thu, 31 Mar 2016 08:30:46 PDT
Received: from mx-3.enea.com (mx-3.enea.com [192.36.1.72])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 4F9E9E008F1
	for <yocto@yoctoproject.org>; Thu, 31 Mar 2016 08:30:46 -0700 (PDT)
Received: from iapetus.enea.se (172.16.140.26) by smtp.enea.com (172.21.1.208)
	with Microsoft SMTP Server (TLS) id 14.3.294.0;
	Thu, 31 Mar 2016 17:29:35 +0200
Date: Thu, 31 Mar 2016 17:29:34 +0200
From: Josep Puigdemont <josep.puigdemont@enea.com>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20160331152934.GA23893@iapetus.enea.se>
References: <1704123.nFWplM32RM@valkyrie> <20160331152604.GA23623@linux-yxv0>
MIME-Version: 1.0
In-Reply-To: <20160331152604.GA23623@linux-yxv0>
User-Agent: Mutt/1.5.24 (2015-08-30)
Received-SPF: None (SESTOEX08.enea.se: josep.puigdemont@enea.com does not
	designate permitted sender hosts)
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-raspberry] Raspberry Pi 3
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
X-List-Received-Date: Thu, 31 Mar 2016 15:30:49 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

On Thu, Mar 31, 2016 at 11:26:04AM -0400, Trevor Woerner wrote:
> On Fri 2016-03-18 @ 10:15:39 AM, David Weisgerber wrote:
> > Hi,
> > did anyone succeed in building an image that runs on Raspberry Pi 3? I set my 
> > conf/local.conf to
> > 
> > MACHINE ??= "raspberrypi3" 
> > GPU_MEM = "128" 
> > DISABLE_OVERSCAN = "1"
> > 
> > and built rpi-basic-image but when booting the Pi 3 up I only see 4 
> > raspberries in the top right but nothing else happens. The image works 
> > perfectly on a Pi 2 though.
> 
> I'm able to get a raspi3 image running on my Raspberry Pi 3, but my console is
> messed up. Everything works fine via the usb+hdmi ports, but plugging a
> console cable into the GPIO header is messed up.
> 
> It looks like what happens when the baud rate is set incorrectly, but I've
> tried every baud rate in my terminal emulator and it all looks the same
> (messed up).
> 
> Anyone got their console working? The same cable/setup works fine on the
> raspi2 (ttyAMA0) but doesn't work on my raspi3 (ttyS0).

I think you are seeing this problem:
https://github.com/raspberrypi/firmware/issues/553

/Josep


