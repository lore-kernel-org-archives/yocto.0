Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99177E00B78; Sun,  1 Jun 2014 14:07:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4D0DE00B0B
	for <yocto@yoctoproject.org>; Sun,  1 Jun 2014 14:07:11 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 8808427E024;
	Sun,  1 Jun 2014 21:07:08 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id gYDhfW46e99T; Sun,  1 Jun 2014 21:07:05 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 48E3027E019;
	Sun,  1 Jun 2014 21:07:05 +0000 (UTC)
Message-ID: <538B95F6.6070008@dynamicdevices.co.uk>
Date: Sun, 01 Jun 2014 22:07:02 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Alexandru Vaduva <vaduva.jan.alexandru@gmail.com>
References: <CANwz6nzE64e0hiEm_D-m_Z27X0M1NJSwLAxTS1koy3mPqfkUwg@mail.gmail.com>	<528B9049.7010704@mlbassoc.com>	<CAK18fxFgx_d2wdwEG+WTknqFynKHKU1Hd7p7h1T+gXgtXqXNGQ@mail.gmail.com>	<CABwVrCrvXJvMspai9GVf0eJCXhEXZpyk2ibDwKiMPKxRFJzt7g@mail.gmail.com>	<5381D5B3.1070509@dynamicdevices.co.uk>	<1401051077.12067.YahooMailNeo@web122504.mail.ne1.yahoo.com>	<538319DB.40309@dynamicdevices.co.uk>	<5383805E.4020603@dynamicdevices.co.uk>	<CABwVrCp-mCsYZiWiLV_LMzKRgaoSoRVhftwAvqq-9Cx+KiiYcw@mail.gmail.com>	<5383891A.4050109@dynamicdevices.co.uk>
	<CABwVrCoNRULO9xBFLeXMfrX7sc+dHCb1o-t_oR5vBtuc+Jeiww@mail.gmail.com>
In-Reply-To: <CABwVrCoNRULO9xBFLeXMfrX7sc+dHCb1o-t_oR5vBtuc+Jeiww@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: Gary Thomas <gary@mlbassoc.com>, Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Using the camera
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
X-List-Received-Date: Sun, 01 Jun 2014 21:07:27 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 26/05/2014 19:40, Alexandru Vaduva wrote:
> It`s really hard to just offer impressions or suggestion.
> Also I agree with the fact that the camera is ok cause I also tested
> it with raspbian. No problems there.
> But never the less I hope to keep me posted on any progress and
> observations.
> When I will have the time I will try some things of my own.
>
> Alex

I've made a certain amount of progress with this Alex.

1) I've been comparing Raspbian with a Yocto meta-raspberrypi armhf
build, as raspivid works for me with Raspbian, but not with my
meta-raspberrypi poky build.

     To cut a long story short the raspivid in Raspian is v1.3.9 and it
comes from raspiberrypi/firmware which as you know is the binary-only
release

     If I copy only the raspivid executable from the Raspbian
installation over to the Yocto installation then raspivid runs up ok,
shows the cam onscreen and so forth.
     (so shared libs, config and so forth all would seem to be fine)

     I tried building the same v1.3.9 version of raspivid from the
userland repository, but I get the same error as before,

root@raspberrypi:~# raspivid -o test
mmal: mmal_component_create_core: could not find component 'vc.ril.camera'
mmal: Failed to create camera component
mmal: main: Failed to create camera component
mmal: Failed to run camera app. Please check for firmware updates

     So it looks to me as though there's something different between the
firmware binary release and the more recent open-sourced userland code

    I can show that by just doing my armhf build then pulling down the
binary, which runs up,
  
   
https://github.com/raspberrypi/firmware/raw/master/hardfp/opt/vc/bin/raspivid

    Looking back through the meta-raspberrypi commit logs it looks as
though userland replaced vc-graphics-hardfp back at 33d2e1d7

-PREFERRED_PROVIDER_virtual/egl ?= "vc-graphics-hardfp"
-PREFERRED_PROVIDER_virtual/libgles2 ?= "vc-graphics-hardfp"
+PREFERRED_PROVIDER_virtual/egl ?= "userland"
+PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"

    If I build with vc-graphics-hardfp I get a raspivid that runs up

2) I was wrong about the Bellagio support. Instead there are a set of
library mappings in /etc/xdg/gstomx.conf
  These need to be modified to point to libopenmaxil.so not the bellagio
library

e.g.

[omxh264enc]
type-name=GstOMXH264Enc
core-name=/opt/vc/lib/libopenmaxil.so
component-name=OMX.broadcom.video_encode
rank=256
in-port-index=200
out-port-index=201
hacks=no-component-role
 
  With this in place we can do some hardware encoding of h.264 video
with gstreamer-1.0, both to file and via RTP over UDP.

3) I believe gstreamer1.0-omx may need to be configured to target RPi
not Bellagio

e.g. GSTREAMER_1_0_OMX_TARGET="rpi"

https://github.com/openembedded/oe-core/blob/master/meta/recipes-multimedia/gstreamer/gstreamer1.0-omx.inc

There's also a patch needed in gstreamer1.0-omx.inc as the RPi headers
are as incomplete as the Bellagio headers .

4) There are some issues using the v4l2 driver with gstreamer. It seems
to block on polling

As v4l2src doesn't currently support h.264 for Gstreamer1.0 inherently
(my reading is that there's some uvch264_src code for this in
development) I'm concentrating on getting raspivid working for now and
then piping into an Gstreamer1.0 fdsrc which works for me on Raspbian,
and I'll see what the overhead is with that approach.

Cheers,

Alex


