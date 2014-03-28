Return-Path: <ross.burton@intel.com>
Received: from mail-qa0-f45.google.com (mail-qa0-f45.google.com
	[209.85.216.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18634E00BA7
	for <yocto@yoctoproject.org>; Fri, 28 Mar 2014 04:12:24 -0700 (PDT)
Received: by mail-qa0-f45.google.com with SMTP id hw13so5119370qab.32
	for <yocto@yoctoproject.org>; Fri, 28 Mar 2014 04:12:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=VNFyc8eAc+6+miCaV2J75A3wkTIAIY7yGNAAOSRaD4g=;
	b=Uo6VwA7QK5W7PrXZbX7mkm4u269pg8OJdl05OsKg6HwHJU4DebdcOp8aaFKJVcQUoq
	VsILLmJLbD/luKaEzp0SYwuT+IP2kQOVznlkLDVbqPP13SAlQsnrDhcmHViWAuMv3ndG
	bJnRMGeGABwcTWi07botMpO+8/sxBbRn7JpVrRui4Z+VP932Z4FtShtZQ19J3FcBSjnt
	xVZPHdvhtE5PH1UFQzXI2uxZ7g9MQfmtht1qtEdemSc3ZneaQOLo89Rb8KTmpUu7va9K
	iiO1euJcTicNnkivNW99Zre+AWQafHZ/BQLKSYFaVVGLKhJKfpc10HkdHnOJxo8Qsv+r
	a6sw==
X-Gm-Message-State: ALoCoQlySkLayKdMEo9aBVZ8HkD2pEkx2gLEjG/oBrAs0HPv18OUMOyu+HA4ytMpR/Xqm2zrczs7
X-Received: by 10.224.75.5 with SMTP id w5mr8533057qaj.52.1396005144039; Fri,
	28 Mar 2014 04:12:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.27.167 with HTTP; Fri, 28 Mar 2014 04:12:03 -0700 (PDT)
In-Reply-To: <E4938C0D959B3445943720B88F07213415613522@NDA-HCLT-MBS02.hclt.corp.hcl.in>
References: <E4938C0D959B3445943720B88F07213415613522@NDA-HCLT-MBS02.hclt.corp.hcl.in>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 28 Mar 2014 11:12:03 +0000
Message-ID: <CAJTo0LY5VVCZbimtTBNdgDCEB+1mwSwdsVH31ik8GSdheg48OQ@mail.gmail.com>
To: Meenakumari Shedole <meenakumari.s@hcl.com>
Cc: Dipesh Karmakar <Dipesh.Karmakar@hcl.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 28 Mar 2014 11:12:25 -0000
Content-Type: text/plain; charset=UTF-8

On 28 March 2014 06:05, Meenakumari Shedole <meenakumari.s@hcl.com> wrote:
> 1. playbin2 + avi/3gp is working properly because of xvimagesink is used interally.
> 2. playbin2 + mp4 is not taking vaapi sink, we need to manually set video-sink=vaapisink.
>    Also we are getting arbitrary crash while setting the qml video window id to the vaapi sink.
>    So we are not getting any single pipe to play mp4/avi/3gp stuff.

The important question is what recipe are you using to get the vaapi elements?

What happens if you use vaapisink with AVI/3GP?  You should still get
some acceleration.

Note that especially when using vaapi sink you need to wait for the
sink to create the window and then reparent it, you can't provide your
own X window to vaapisink.  This is the usual cause for breakage.  Do
testing with gst-launch before attempting to use your own application.

Ross

