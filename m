Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4EC25E00B20; Mon, 26 May 2014 10:57:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=HTML_MESSAGE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from www.dynamicdevices.co.uk (unknown [89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7430E0073D
	for <yocto@yoctoproject.org>; Mon, 26 May 2014 10:56:58 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id E3D6927E025;
	Mon, 26 May 2014 17:56:55 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id vMDNnR48P0e4; Mon, 26 May 2014 17:56:51 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 1A13227E019;
	Mon, 26 May 2014 17:56:51 +0000 (UTC)
Message-ID: <5383805E.4020603@dynamicdevices.co.uk>
Date: Mon, 26 May 2014 18:56:46 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>, 
	jan alexandru vaduva <vaduva.jan.alexandru@gmail.com>
References: <CANwz6nzE64e0hiEm_D-m_Z27X0M1NJSwLAxTS1koy3mPqfkUwg@mail.gmail.com>	<528B9049.7010704@mlbassoc.com>	<CAK18fxFgx_d2wdwEG+WTknqFynKHKU1Hd7p7h1T+gXgtXqXNGQ@mail.gmail.com>	<CABwVrCrvXJvMspai9GVf0eJCXhEXZpyk2ibDwKiMPKxRFJzt7g@mail.gmail.com>	<5381D5B3.1070509@dynamicdevices.co.uk>	<1401051077.12067.YahooMailNeo@web122504.mail.ne1.yahoo.com>
	<538319DB.40309@dynamicdevices.co.uk>
In-Reply-To: <538319DB.40309@dynamicdevices.co.uk>
X-Enigmail-Version: 1.6
Cc: Yocto Project <yocto@yoctoproject.org>, Gary Thomas <gary@mlbassoc.com>
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
X-List-Received-Date: Mon, 26 May 2014 17:57:03 -0000
Content-Type: multipart/alternative;
	boundary="------------070608060000010001030208"

--------------070608060000010001030208
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 26/05/2014 11:39, Alex J Lennon wrote:
>
> On 25/05/2014 21:51, Alexandru Vaduva wrote:
>> Hello,
>>
>> Sorry for my late response, I put on pause the investigation with
>> this bug.
>> Hope to return to it next month (or at least after 13 June).
>> Right now in my head there are more questions then answers regarding
>> this bug, so I cannot really help.
>> A quick suggestion would be to inspect the config.txt for raspbian
>> for example
>> and investigate the differences.
>> Also try GPU_MEM = "256" just to make a confirmation of my assumption
>> that
>> something is missing.
>>
>
> Thanks Alex. I will try that. I'm going to have another look today and
> see if I can get to the bottom of it

Hi Alex,

I've been taking a look at various things. I don't have a solution
though unfortunately at present

- The GPU_MEM = "256" doesn't help unfortunately

- The raspivid call is failing here, when it tries to instantiate a
camera component

https://github.com/raspberrypi/userland/blob/master/host_applications/linux/apps/raspicam/RaspiVid.c#L1674

calls,

https://github.com/raspberrypi/userland/blob/master/interface/mmal/core/mmal_component.c#L708

This seems to be because there is no supplier registered for the camera
component. Why I am not sure...

...

As I was investigating this I came across OpenMAX Bellagio which seems
to provide an intermediary registry of OpenMax components.

I'm not sure whether this relates to the RaspiVid issue but I believe it
does relate to an issue I am seeing when I try to run a Gstreamer pipeline

gst-launch-0.10 -v videotestsrc pattern=smpte !
'video/x-raw-rgb,width=1920,height=1080' ! omx_h264enc ! rpth264pay !
udpsink=192.168.0.13 port=5000
OMX-Component not found with current ST static component loader.

Now apparently we are supposed to have run omxregister-bellagio which
registers up components.

(omxregister-bellagio is provided by the
poky/meta/recipes-multimedia/libomxil recipe.)

On Raspbian there are a set of components registered with bellagio, and
provided by individual libomx-foo packages.
(e.g. libomxvideosrc.so, libomxfbdev.so, libomxclocksrc.so,
libomxcamera.so, libomxaudio_effects.so, libomxxvideo.so)

ref:
http://www.nielsmayer.com/bin/view/Raspberry+Pi/Notes+on+Qt5,+Multimedia,+OpenMax+Acceleration,+5.1+Audio

These are missing on my Yocto Poky RPi image.

It looks as though at some time in the past these components may have
been present in the core bellagio build, but then at some point they
were broken out into separate components tarballs.

e.g. http://sourceforge.net/projects/omxil/files/components/

I can't see recipes for these anywhere so I am wondering if they need to
be added in...

Cheers,

Alex


Looking at



--------------070608060000010001030208
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <div class="moz-cite-prefix">On 26/05/2014 11:39, Alex J Lennon
      wrote:<br>
    </div>
    <blockquote cite="mid:538319DB.40309@dynamicdevices.co.uk"
      type="cite">
      <meta content="text/html; charset=ISO-8859-1"
        http-equiv="Content-Type">
      <br>
      <div class="moz-cite-prefix">On 25/05/2014 21:51, Alexandru Vaduva
        wrote:<br>
      </div>
      <blockquote
        cite="mid:1401051077.12067.YahooMailNeo@web122504.mail.ne1.yahoo.com"
        type="cite">
        <div style="color:#000; background-color:#fff;
          font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial,
          Lucida Grande, sans-serif;font-size:12pt">
          <div style="" class=""><span style="" class="">Hello,</span></div>
          <div class="" style="color: rgb(0, 0, 0); font-size: 16px;
            font-family: HelveticaNeue,Helvetica
            Neue,Helvetica,Arial,Lucida Grande,sans-serif;
            background-color: transparent; font-style: normal;"><br
              style="" class="">
            <span style="" class=""></span></div>
          <div class="" style="color: rgb(0, 0, 0); font-size: 16px;
            font-family: HelveticaNeue,Helvetica
            Neue,Helvetica,Arial,Lucida Grande,sans-serif;
            background-color: transparent; font-style: normal;"><span
              style="" class="">Sorry for my late response, I put on
              pause the investigation with this bug.</span></div>
          <div class="" style="color: rgb(0, 0, 0); font-size: 16px;
            font-family: HelveticaNeue,Helvetica
            Neue,Helvetica,Arial,Lucida Grande,sans-serif;
            background-color: transparent; font-style: normal;"><span
              style="" class="">Hope to return to it next month (or at
              least after 13 June).</span></div>
          <div class="" style="color: rgb(0, 0, 0); font-size: 16px;
            font-family: HelveticaNeue,Helvetica
            Neue,Helvetica,Arial,Lucida Grande,sans-serif;
            background-color: transparent; font-style: normal;"><span
              style="" class="">Right now in my head there are more
              questions then answers regarding<br style="" class="">
              this bug, so I cannot really help.</span></div>
          A quick suggestion would be to inspect the config.txt for
          raspbian for example <br>
          and investigate the differences. <br style="" class="">
          Also try GPU_MEM = "256" just to make a confirmation of my
          assumption that <br>
          something is missing.<br>
          <br>
        </div>
      </blockquote>
      <br>
      Thanks Alex. I will try that. I'm going to have another look today
      and see if I can get to the bottom of it</blockquote>
    <br>
    Hi Alex,<br>
    <br>
    I've been taking a look at various things. I don't have a solution
    though unfortunately at present<br>
    <br>
    - The GPU_MEM = "256" doesn't help unfortunately<br>
    <br>
    - The raspivid call is failing here, when it tries to instantiate a
    camera component<br>
    <br>
<a class="moz-txt-link-freetext" href="https://github.com/raspberrypi/userland/blob/master/host_applications/linux/apps/raspicam/RaspiVid.c#L1674">https://github.com/raspberrypi/userland/blob/master/host_applications/linux/apps/raspicam/RaspiVid.c#L1674</a><br>
    <br>
    calls,<br>
    <br>
<a class="moz-txt-link-freetext" href="https://github.com/raspberrypi/userland/blob/master/interface/mmal/core/mmal_component.c#L708">https://github.com/raspberrypi/userland/blob/master/interface/mmal/core/mmal_component.c#L708</a><br>
    <br>
    This seems to be because there is no supplier registered for the
    camera component. Why I am not sure...<br>
    <br>
    ...<br>
    <br>
    As I was investigating this I came across OpenMAX Bellagio which
    seems to provide an intermediary registry of OpenMax components.<br>
    <br>
    I'm not sure whether this relates to the RaspiVid issue but I
    believe it does relate to an issue I am seeing when I try to run a
    Gstreamer pipeline<br>
    <br>
    gst-launch-0.10 -v videotestsrc pattern=smpte !
    'video/x-raw-rgb,width=1920,height=1080' ! omx_h264enc ! rpth264pay
    ! udpsink=192.168.0.13 port=5000<br>
    OMX-Component not found with current ST static component loader.<br>
    <br>
    Now apparently we are supposed to have run omxregister-bellagio
    which registers up components.<br>
    <br>
    (omxregister-bellagio is provided by the
    poky/meta/recipes-multimedia/libomxil recipe.)<br>
    <br>
    On Raspbian there are a set of components registered with bellagio,
    and provided by individual libomx-foo packages.<br>
    (e.g. libomxvideosrc.so, libomxfbdev.so, libomxclocksrc.so,
    libomxcamera.so, libomxaudio_effects.so, libomxxvideo.so)<br>
    <br>
    ref:
<a class="moz-txt-link-freetext" href="http://www.nielsmayer.com/bin/view/Raspberry+Pi/Notes+on+Qt5,+Multimedia,+OpenMax+Acceleration,+5.1+Audio">http://www.nielsmayer.com/bin/view/Raspberry+Pi/Notes+on+Qt5,+Multimedia,+OpenMax+Acceleration,+5.1+Audio</a><br>
    <br>
    These are missing on my Yocto Poky RPi image.<br>
    <br>
    It looks as though at some time in the past these components may
    have been present in the core bellagio build, but then at some point
    they were broken out into separate components tarballs.<br>
    <br>
    e.g. <a class="moz-txt-link-freetext" href="http://sourceforge.net/projects/omxil/files/components/">http://sourceforge.net/projects/omxil/files/components/</a><br>
    <br>
    I can't see recipes for these anywhere so I am wondering if they
    need to be added in...<br>
    <br>
    Cheers,<br>
    <br>
    Alex<br>
    <br>
    <br>
    Looking at <br>
    <br>
    <br>
  </body>
</html>

--------------070608060000010001030208--
