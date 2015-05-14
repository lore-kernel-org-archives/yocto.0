Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B43B4E00956; Thu, 14 May 2015 07:29:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B1A2E00956
	for <yocto@yoctoproject.org>; Thu, 14 May 2015 07:29:37 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 28D51F811E4; Thu, 14 May 2015 08:29:37 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 67F74F811DC;
	Thu, 14 May 2015 08:29:36 -0600 (MDT)
Message-ID: <5554B152.8030401@mlbassoc.com>
Date: Thu, 14 May 2015 08:29:38 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <5554ADDE.7030508@mlbassoc.com>
	<CAJTo0LZZsuEQfizOctX5VnK5KiCJ9iyyuTPUxtum_DpYoqmsWA@mail.gmail.com>
In-Reply-To: <CAJTo0LZZsuEQfizOctX5VnK5KiCJ9iyyuTPUxtum_DpYoqmsWA@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: gtk-play issues
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
X-List-Received-Date: Thu, 14 May 2015 14:29:42 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-05-14 08:22, Burton, Ross wrote:
>
> On 14 May 2015 at 15:14, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     I'm trying to build on the latest Ubuntu (15.04/x86_64), but have
>     run into a block in ./configure:
>        No package 'gstreamer-video-1.0' found.
>        No package 'gstreamer-pbutils-1.0' found.
>
>     Does anyone know what package(s) I need to install to be able
>     to complete the build?
>
>
> gst-play is a glorified wrapper around the gstreamer PlayBin, so gst-launch will let you replicate its behaviour.

As I figured.  Is there a way to get the pipeline out of gtk-play so I
know how it's launching the bits?

>
> But for you Ubuntu problem, search the package database for eg gstreamer-video-1.0.pc:
>
> http://packages.ubuntu.com/search?searchon=contents&keywords=gstreamer-video-1.0.pc&mode=exactfilename&suite=trusty&arch=any
>
> libgstreamer-plugins-base1.0-dev is what you're after.

That helped, thanks.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

