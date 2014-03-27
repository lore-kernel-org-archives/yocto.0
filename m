Return-Path: <laurentiu.palcu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22448E00B93
	for <yocto@yoctoproject.org>; Thu, 27 Mar 2014 00:22:15 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 27 Mar 2014 00:22:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,739,1389772800"; d="scan'208";a="507978873"
Received: from lpalcu-linux.rb.intel.com (HELO lpalcu-linux) ([10.237.105.45])
	by fmsmga002.fm.intel.com with ESMTP; 27 Mar 2014 00:21:29 -0700
Date: Thu, 27 Mar 2014 09:21:28 +0200
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
To: Meenakumari Shedole <meenakumari.s@hcl.com>
Message-ID: <20140327072128.GI32501@lpalcu-linux>
References: <E4938C0D959B3445943720B88F072134156124E7@NDA-HCLT-MBS02.hclt.corp.hcl.in>
MIME-Version: 1.0
In-Reply-To: <E4938C0D959B3445943720B88F072134156124E7@NDA-HCLT-MBS02.hclt.corp.hcl.in>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Help-Gstreamer Vaapi Plugin Issue in 1080p mp4 playback
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
X-List-Received-Date: Thu, 27 Mar 2014 07:22:18 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Meena,

On Thu, Mar 27, 2014 at 06:58:53AM +0000, Meenakumari Shedole wrote:
> Hi All,
> 
> We are having some problem regarding gstreamer Vaapi Plugin would like to
> discuss.
> 
> We are using gstreamer0.10.36 for our 1080p mp4 playback and we have used
> following gstraemer pipeline.
> filesrc-> decodebin->queue->ffmpegcolorspace->xvimagesink
> 
> Here we are facing lot of buffer drop and video is displaying like slow motion
> so, we think that may be xvimagesink is not using the video acceleration
> provided by Intel, hence we moved to vaapivideosink. However we found the
> following error while using vaapivideosink
> 
> libva: VA-API version 0.32.0
> libva: va_getDriverName() returns 0
> libva: Trying to open /usr/lib/dri/i965_drv_video.so
> libva: va_openDriver() returns -1
> vaInitialize failed with error code -1 (unknown libva error),exit
> 
> Even the same error we are getting while doing 'vainfo' also.
> 
> We have gone through some INTERNET search, but did't find useful informations.
> 
> Basically we have 2 quires
> 1. Is it possible to play 1080p mp4 playback with software decoders smoothly ?
> How we will fix buffer drop issue ?
> 2. How we will use vaapi sink in other case (solving the va_openDriver()
> error)? Do we need to rebuild some other vaapi versions to make it work ?
I'm far from an expert in gstreamer but I used it once in a while to
test intel video driver upgrades. Here's the pipeline I use:

gst-launch filesrc location=./sintel_trailer-720p.mp4  ! qtdemux name=demuxer demuxer.video_00 ! vaapidecode ! vaapisink fullscreen=true

I don't remember where I got this pipeline from but... maybe it works
for you too.

Perhaps others can give you a more in-depth explanation.

laurentiu

> 
> 
> Our platform information:
> a. Intel-E3800 Baytrail
> b. Yocto Dora build
> c. Base Kernel Linux Baytrail32 3.8.0-yocto standard
> 
> Thanks in advance.
> 
> Thanks & Regards,
> Meena
> 
> 
> 
> 
> 
> ::DISCLAIMER::
> ----------------------------------------------------------------------------------------------------------------------------------------------------
> 
> The contents of this e-mail and any attachment(s) are confidential and intended
> for the named recipient(s) only.
> E-mail transmission is not guaranteed to be secure or error-free as information
> could be intercepted, corrupted,
> lost, destroyed, arrive late or incomplete, or may contain viruses in
> transmission. The e mail and its contents
> (with or without referred errors) shall therefore not attach any liability on
> the originator or HCL or its affiliates.
> Views or opinions, if any, presented in this email are solely those of the
> author and may not necessarily reflect the
> views or opinions of HCL or its affiliates. Any form of reproduction,
> dissemination, copying, disclosure, modification,
> distribution and / or publication of this message without the prior written
> consent of authorized representative of
> HCL is strictly prohibited. If you have received this email in error please
> delete it and notify the sender immediately.
> Before opening any email and/or attachments, please check them for viruses and
> other defects.
> 
> ----------------------------------------------------------------------------------------------------------------------------------------------------
> 

> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


