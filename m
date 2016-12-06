Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B258E00C41; Mon,  5 Dec 2016 22:03:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D68AFE00C37
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2016 22:03:27 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id B3E3C68A01B; Tue,  6 Dec 2016 06:03:25 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id E728F68A019;
	Tue,  6 Dec 2016 06:03:24 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 585A66740222;
	Tue,  6 Dec 2016 07:03:24 +0100 (CET)
From: Gary Thomas <gary@mlbassoc.com>
To: Khem Raj <raj.khem@gmail.com>, "Burton, Ross" <ross.burton@intel.com>
References: <46bab4e1-e552-12b4-5847-daeeaf93099a@mlbassoc.com>
	<CAJTo0La8z_DDK3dGT4kh163oPdvkMdU=bPbXBW0ypnTORRPung@mail.gmail.com>
	<CAMKF1srnjaSa314J7GJEuT8Gs8oy2swEWb=oq=Yeob1Wm+mFuw@mail.gmail.com>
Message-ID: <e2d92350-4a05-5d53-11c6-bb1c6dde5d9a@mlbassoc.com>
Date: Tue, 6 Dec 2016 07:03:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1srnjaSa314J7GJEuT8Gs8oy2swEWb=oq=Yeob1Wm+mFuw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] X11 failure
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
X-List-Received-Date: Tue, 06 Dec 2016 06:03:30 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-12-05 19:22, Khem Raj wrote:
> On Mon, Dec 5, 2016 at 3:15 AM, Burton, Ross <ross.burton@intel.com> wrote:
>>
>> On 5 December 2016 at 11:12, Gary Thomas <gary@mlbassoc.com> wrote:
>>>
>>> What do I need to do to get libGL v1 so X11 will work again?
>>
>>
>> That would be part of mesa-gl, but I'm surprised RPi X needs OpenGL (as that
>> is pure software, not accelerated).
>
> mesa-gl is used as provider for virtual/libgl when using userland
> display driver.
> if you use vc4graphics then you will use mesa for everything.

I used to do this with these lines in local.conf
   PREFERRED_PROVIDER_virtual/egl ?= "vc-graphics-hardfp"
   PREFERRED_PROVIDER_virtual/libgles2 ?= "vc-graphics-hardfp"

However this now leads to a cascade of errors:
   ERROR: Nothing PROVIDES 'userland' (but 
/local/poky-cutting-edge/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.8.3.bb DEPENDS on or otherwise 
requires it)
   ERROR: userland was skipped: PREFERRED_PROVIDER_virtual/libgles2 set to vc-graphics-hardfp, not userland
   NOTE: Runtime target 'gst-player-dev' is unbuildable, removing...
   Missing or unbuildable dependency chain was: ['gst-player-dev', 'gstreamer1.0-plugins-bad', 'userland']
   NOTE: Runtime target 'gst-player-bin' is unbuildable, removing...
   Missing or unbuildable dependency chain was: ['gst-player-bin', 'gstreamer1.0-plugins-bad', 'userland']
   ERROR: Required build target 'video-demo-image' has no buildable providers.
   Missing or unbuildable dependency chain was: ['video-demo-image', 'gst-player-bin', 'gstreamer1.0-plugins-bad', 
'userland']

If I remove gst-player-* from my image, I can build using vc-graphics-hardfp
and X11 works again.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

