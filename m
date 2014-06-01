Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0547E0073A; Sun,  1 Jun 2014 14:35:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13C92E00716
	for <yocto@yoctoproject.org>; Sun,  1 Jun 2014 14:35:40 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 59CF427E024;
	Sun,  1 Jun 2014 21:35:37 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id Al3MsrdzFBsg; Sun,  1 Jun 2014 21:35:35 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id B1D8327E019;
	Sun,  1 Jun 2014 21:35:34 +0000 (UTC)
Message-ID: <538B9CA5.8040704@dynamicdevices.co.uk>
Date: Sun, 01 Jun 2014 22:35:33 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Alexandru Vaduva <vaduva.jan.alexandru@gmail.com>, 
	Andrei Gherzan <andrei@gherzan.ro>
References: <CANwz6nzE64e0hiEm_D-m_Z27X0M1NJSwLAxTS1koy3mPqfkUwg@mail.gmail.com>	<528B9049.7010704@mlbassoc.com>	<CAK18fxFgx_d2wdwEG+WTknqFynKHKU1Hd7p7h1T+gXgtXqXNGQ@mail.gmail.com>	<CABwVrCrvXJvMspai9GVf0eJCXhEXZpyk2ibDwKiMPKxRFJzt7g@mail.gmail.com>	<5381D5B3.1070509@dynamicdevices.co.uk>	<1401051077.12067.YahooMailNeo@web122504.mail.ne1.yahoo.com>	<538319DB.40309@dynamicdevices.co.uk>	<5383805E.4020603@dynamicdevices.co.uk>	<CABwVrCp-mCsYZiWiLV_LMzKRgaoSoRVhftwAvqq-9Cx+KiiYcw@mail.gmail.com>	<5383891A.4050109@dynamicdevices.co.uk>	<CABwVrCoNRULO9xBFLeXMfrX7sc+dHCb1o-t_oR5vBtuc+Jeiww@mail.gmail.com>	<538B95F6.6070008@dynamicdevices.co.uk>
	<CABwVrCp9Mtw_xc-djNMsiiSTAS5Duh1vCwmOSF-coHPqHqcE3g@mail.gmail.com>
In-Reply-To: <CABwVrCp9Mtw_xc-djNMsiiSTAS5Duh1vCwmOSF-coHPqHqcE3g@mail.gmail.com>
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
X-List-Received-Date: Sun, 01 Jun 2014 21:35:52 -0000
X-Groupsio-MsgNum: 19866
Content-Type: multipart/alternative;
	boundary="------------000607080207030202060107"

--------------000607080207030202060107
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 01/06/2014 22:22, Alexandru Vaduva wrote:
> This are indeed some very good news Alex J Lennon.
> I have some questions, but those maybe can be answered by the
> maintainers of the meta-raspberrypi layer:
> Why was this change done?
>      -PREFERRED_PROVIDER_virtual/egl ?= "vc-graphics-hardfp"
>      -PREFERRED_PROVIDER_virtual/libgles2 ?= "vc-graphics-hardfp"
>      +PREFERRED_PROVIDER_virtual/egl ?= "userland"
>      +PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
> How it may affect other applications?
> Andrei: Do you have any input on this?
>
>

The maintainers would know better than I, but if I had to guess, it
might have been to replace the binary
only proprietary licensed vc-graphics with the replacement userland
source code when Broadcom opened it,

i.e. http://www.raspberrypi.org/open-source-arm-userspace/

I'm going to have a go at compiling userland on Raspbian to see if it
might be a cross-compilation issue.

Cheers,

Alex

> Thanks,
> Alex
>
>
>
>
>
> On Mon, Jun 2, 2014 at 12:07 AM, Alex J Lennon
> <ajlennon@dynamicdevices.co.uk <mailto:ajlennon@dynamicdevices.co.uk>>
> wrote:
>
>
>     On 26/05/2014 19:40, Alexandru Vaduva wrote:
>     > It`s really hard to just offer impressions or suggestion.
>     > Also I agree with the fact that the camera is ok cause I also tested
>     > it with raspbian. No problems there.
>     > But never the less I hope to keep me posted on any progress and
>     > observations.
>     > When I will have the time I will try some things of my own.
>     >
>     > Alex
>
>     I've made a certain amount of progress with this Alex.
>
>     1) I've been comparing Raspbian with a Yocto meta-raspberrypi armhf
>     build, as raspivid works for me with Raspbian, but not with my
>     meta-raspberrypi poky build.
>
>          To cut a long story short the raspivid in Raspian is v1.3.9
>     and it
>     comes from raspiberrypi/firmware which as you know is the binary-only
>     release
>
>          If I copy only the raspivid executable from the Raspbian
>     installation over to the Yocto installation then raspivid runs up ok,
>     shows the cam onscreen and so forth.
>          (so shared libs, config and so forth all would seem to be fine)
>
>          I tried building the same v1.3.9 version of raspivid from the
>     userland repository, but I get the same error as before,
>
>     root@raspberrypi:~# raspivid -o test
>     mmal: mmal_component_create_core: could not find component
>     'vc.ril.camera'
>     mmal: Failed to create camera component
>     mmal: main: Failed to create camera component
>     mmal: Failed to run camera app. Please check for firmware updates
>
>          So it looks to me as though there's something different
>     between the
>     firmware binary release and the more recent open-sourced userland code
>
>         I can show that by just doing my armhf build then pulling down the
>     binary, which runs up,
>
>
>     https://github.com/raspberrypi/firmware/raw/master/hardfp/opt/vc/bin/raspivid
>
>         Looking back through the meta-raspberrypi commit logs it looks as
>     though userland replaced vc-graphics-hardfp back at 33d2e1d7
>
>     -PREFERRED_PROVIDER_virtual/egl ?= "vc-graphics-hardfp"
>     -PREFERRED_PROVIDER_virtual/libgles2 ?= "vc-graphics-hardfp"
>     +PREFERRED_PROVIDER_virtual/egl ?= "userland"
>     +PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
>
>         If I build with vc-graphics-hardfp I get a raspivid that runs up
>
>     2) I was wrong about the Bellagio support. Instead there are a set of
>     library mappings in /etc/xdg/gstomx.conf
>       These need to be modified to point to libopenmaxil.so not the
>     bellagio
>     library
>
>     e.g.
>
>     [omxh264enc]
>     type-name=GstOMXH264Enc
>     core-name=/opt/vc/lib/libopenmaxil.so
>     component-name=OMX.broadcom.video_encode
>     rank=256
>     in-port-index=200
>     out-port-index=201
>     hacks=no-component-role
>
>       With this in place we can do some hardware encoding of h.264 video
>     with gstreamer-1.0, both to file and via RTP over UDP.
>
>     3) I believe gstreamer1.0-omx may need to be configured to target RPi
>     not Bellagio
>
>     e.g. GSTREAMER_1_0_OMX_TARGET="rpi"
>
>     https://github.com/openembedded/oe-core/blob/master/meta/recipes-multimedia/gstreamer/gstreamer1.0-omx.inc
>
>     There's also a patch needed in gstreamer1.0-omx.inc as the RPi headers
>     are as incomplete as the Bellagio headers .
>
>     4) There are some issues using the v4l2 driver with gstreamer. It
>     seems
>     to block on polling
>
>     As v4l2src doesn't currently support h.264 for Gstreamer1.0 inherently
>     (my reading is that there's some uvch264_src code for this in
>     development) I'm concentrating on getting raspivid working for now and
>     then piping into an Gstreamer1.0 fdsrc which works for me on Raspbian,
>     and I'll see what the overhead is with that approach.
>
>     Cheers,
>
>     Alex
>
>

-- 

Dynamic Devices Ltd <http://www.dynamicdevices.co.uk/>

Alex J Lennon / Director
1 Queensway, Liverpool L22 4RA

mobile: +44 (0)7956 668178

Linkedin <http://www.linkedin.com/in/alexjlennon> Skype
<skype:alexjlennon?add>

This e-mail message may contain confidential or legally privileged
information and is intended only for the use of the intended
recipient(s). Any unauthorized disclosure, dissemination, distribution,
copying or the taking of any action in reliance on the information
herein is prohibited. E-mails are not secure and cannot be guaranteed to
be error free as they can be intercepted, amended, or contain viruses.
Anyone who communicates with us by e-mail is deemed to have accepted
these risks. Company Name is not responsible for errors or omissions in
this message and denies any responsibility for any damage arising from
the use of e-mail. Any opinion and other statement contained in this
message and any attachment are solely those of the author and do not
necessarily represent those of the company.


--------------000607080207030202060107
Content-Type: multipart/related;
 boundary="------------040404030909060207040505"

--------------040404030909060207040505
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <div class="moz-cite-prefix">On 01/06/2014 22:22, Alexandru Vaduva
      wrote:<br>
    </div>
    <blockquote
cite="mid:CABwVrCp9Mtw_xc-djNMsiiSTAS5Duh1vCwmOSF-coHPqHqcE3g@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>
          <div>This are indeed some very good news Alex J Lennon.<br>
          </div>
          I have some questions, but those maybe can be answered by the
          <br>
          maintainers of the meta-raspberrypi layer:<br>
        </div>
        <div>Why was this change done?<br>
               -PREFERRED_PROVIDER_virtual/egl ?= "vc-graphics-hardfp"<br>
          <div id=":nq" class="">    
            -PREFERRED_PROVIDER_virtual/libgles2 ?= "vc-graphics-hardfp"<br>
                 +PREFERRED_PROVIDER_virtual/egl ?= "userland"<br>
                 +PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"<br>
          </div>
          <div id=":nq" class="">
            How it may affect other applications?<br>
          </div>
          <div id=":nq" class="">Andrei: Do you have any input on this?<br>
          </div>
          <div id=":nq" class=""><br>
            <br>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    The maintainers would know better than I, but if I had to guess, it
    might have been to replace the binary <br>
    only proprietary licensed vc-graphics with the replacement userland
    source code when Broadcom opened it,<br>
    <br>
    i.e. <a class="moz-txt-link-freetext" href="http://www.raspberrypi.org/open-source-arm-userspace/">http://www.raspberrypi.org/open-source-arm-userspace/</a><br>
    <br>
    I'm going to have a go at compiling userland on Raspbian to see if
    it might be a cross-compilation issue.<br>
    <br>
    Cheers,<br>
    <br>
    Alex<br>
    <br>
    <blockquote
cite="mid:CABwVrCp9Mtw_xc-djNMsiiSTAS5Duh1vCwmOSF-coHPqHqcE3g@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>
          <div id=":nq" class="">Thanks,<br>
            Alex<br>
          </div>
          <div id=":nq" class="">
            <br>
          </div>
          <br>
        </div>
        <br>
      </div>
      <div class="gmail_extra"><br>
        <br>
        <div class="gmail_quote">On Mon, Jun 2, 2014 at 12:07 AM, Alex J
          Lennon <span dir="ltr">&lt;<a moz-do-not-send="true"
              href="mailto:ajlennon@dynamicdevices.co.uk"
              target="_blank">ajlennon@dynamicdevices.co.uk</a>&gt;</span>
          wrote:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">
            <div class=""><br>
              On 26/05/2014 19:40, Alexandru Vaduva wrote:<br>
              &gt; It`s really hard to just offer impressions or
              suggestion.<br>
              &gt; Also I agree with the fact that the camera is ok
              cause I also tested<br>
              &gt; it with raspbian. No problems there.<br>
              &gt; But never the less I hope to keep me posted on any
              progress and<br>
              &gt; observations.<br>
              &gt; When I will have the time I will try some things of
              my own.<br>
              &gt;<br>
              &gt; Alex<br>
              <br>
            </div>
            I've made a certain amount of progress with this Alex.<br>
            <br>
            1) I've been comparing Raspbian with a Yocto
            meta-raspberrypi armhf<br>
            build, as raspivid works for me with Raspbian, but not with
            my<br>
            meta-raspberrypi poky build.<br>
            <br>
                 To cut a long story short the raspivid in Raspian is
            v1.3.9 and it<br>
            comes from raspiberrypi/firmware which as you know is the
            binary-only<br>
            release<br>
            <br>
                 If I copy only the raspivid executable from the
            Raspbian<br>
            installation over to the Yocto installation then raspivid
            runs up ok,<br>
            shows the cam onscreen and so forth.<br>
                 (so shared libs, config and so forth all would seem to
            be fine)<br>
            <br>
                 I tried building the same v1.3.9 version of raspivid
            from the<br>
            userland repository, but I get the same error as before,<br>
            <br>
            root@raspberrypi:~# raspivid -o test<br>
            mmal: mmal_component_create_core: could not find component
            'vc.ril.camera'<br>
            <div class="">mmal: Failed to create camera component<br>
            </div>
            mmal: main: Failed to create camera component<br>
            mmal: Failed to run camera app. Please check for firmware
            updates<br>
            <br>
                 So it looks to me as though there's something different
            between the<br>
            firmware binary release and the more recent open-sourced
            userland code<br>
            <br>
                I can show that by just doing my armhf build then
            pulling down the<br>
            binary, which runs up,<br>
            <br>
            <br>
            <a moz-do-not-send="true"
href="https://github.com/raspberrypi/firmware/raw/master/hardfp/opt/vc/bin/raspivid"
              target="_blank">https://github.com/raspberrypi/firmware/raw/master/hardfp/opt/vc/bin/raspivid</a><br>
            <br>
                Looking back through the meta-raspberrypi commit logs it
            looks as<br>
            though userland replaced vc-graphics-hardfp back at 33d2e1d7<br>
            <br>
            -PREFERRED_PROVIDER_virtual/egl ?= "vc-graphics-hardfp"<br>
            -PREFERRED_PROVIDER_virtual/libgles2 ?= "vc-graphics-hardfp"<br>
            +PREFERRED_PROVIDER_virtual/egl ?= "userland"<br>
            +PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"<br>
            <br>
                If I build with vc-graphics-hardfp I get a raspivid that
            runs up<br>
            <br>
            2) I was wrong about the Bellagio support. Instead there are
            a set of<br>
            library mappings in /etc/xdg/gstomx.conf<br>
              These need to be modified to point to libopenmaxil.so not
            the bellagio<br>
            library<br>
            <br>
            e.g.<br>
            <br>
            [omxh264enc]<br>
            type-name=GstOMXH264Enc<br>
            core-name=/opt/vc/lib/libopenmaxil.so<br>
            component-name=OMX.broadcom.video_encode<br>
            rank=256<br>
            in-port-index=200<br>
            out-port-index=201<br>
            hacks=no-component-role<br>
            <br>
              With this in place we can do some hardware encoding of
            h.264 video<br>
            with gstreamer-1.0, both to file and via RTP over UDP.<br>
            <br>
            3) I believe gstreamer1.0-omx may need to be configured to
            target RPi<br>
            not Bellagio<br>
            <br>
            e.g. GSTREAMER_1_0_OMX_TARGET="rpi"<br>
            <br>
            <a moz-do-not-send="true"
href="https://github.com/openembedded/oe-core/blob/master/meta/recipes-multimedia/gstreamer/gstreamer1.0-omx.inc"
              target="_blank">https://github.com/openembedded/oe-core/blob/master/meta/recipes-multimedia/gstreamer/gstreamer1.0-omx.inc</a><br>
            <br>
            There's also a patch needed in gstreamer1.0-omx.inc as the
            RPi headers<br>
            are as incomplete as the Bellagio headers .<br>
            <br>
            4) There are some issues using the v4l2 driver with
            gstreamer. It seems<br>
            to block on polling<br>
            <br>
            As v4l2src doesn't currently support h.264 for Gstreamer1.0
            inherently<br>
            (my reading is that there's some uvch264_src code for this
            in<br>
            development) I'm concentrating on getting raspivid working
            for now and<br>
            then piping into an Gstreamer1.0 fdsrc which works for me on
            Raspbian,<br>
            and I'll see what the overhead is with that approach.<br>
            <br>
            Cheers,<br>
            <br>
            Alex<br>
            <br>
          </blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
    <div class="moz-signature">-- <br>
      <div class="preview">
        <p style="font-family: Helvetica, Arial, sans-serif; font-size:
          10px; line-height: 12px;"><a
            href="http://www.dynamicdevices.co.uk/" class="clink"><img
              src="cid:part4.08030003.09070903@dynamicdevices.co.uk"
              alt="Dynamic Devices Ltd" id="sig-logo" border="0"></a></p>
        <p style="font-family: Helvetica, Arial, sans-serif; font-size:
          10px; line-height: 12px; color: rgb(153, 153, 153);"><span
            id="name-input" style="font-weight: bold;" class="txt">Alex
            J Lennon</span> <span id="title-sep">/</span> <span
            id="title-input" style="color: #999;" class="txt">Director</span><br>
          <span id="address-input" style="color: #999;" class="txt">1
            Queensway, Liverpool L22 4RA</span> </p>
        <p style="font-family: Helvetica, Arial, sans-serif; font-size:
          10px; line-height: 12px;"> <span id="mobile-input"
            style="color: #999;" class="txt">mobile: +44 (0)7956 668178</span>
          <br>
          <br>
        </p>
        <p style="font-size: 10px; line-height: 12px; font-family:
          Helvetica, Arial, sans-serif"> <a id="linkedin-input"
            class="social" href="http://www.linkedin.com/in/alexjlennon"><img
              src="cid:part6.08080205.05040603@dynamicdevices.co.uk"
              alt="Linkedin"></a> <a id="skype-input" class="social"
            href="skype:alexjlennon?add"><img
              src="cid:part8.03040202.01010905@dynamicdevices.co.uk"
              alt="Skype"></a></p>
        <p id="disclaimer-input" style="font-family: Helvetica, Arial,
          sans-serif; color: rgb(153, 153, 153); font-size: 9px;
          line-height: 12px;width: 25%" class="txt">This e-mail message
          may contain confidential or legally privileged information and
          is intended only for the use of the intended recipient(s). Any
          unauthorized disclosure, dissemination, distribution, copying
          or the taking of any action in reliance on the information
          herein is prohibited. E-mails are not secure and cannot be
          guaranteed to be error free as they can be intercepted,
          amended, or contain viruses. Anyone who communicates with us
          by e-mail is deemed to have accepted these risks. Company Name
          is not responsible for errors or omissions in this message and
          denies any responsibility for any damage arising from the use
          of e-mail. Any opinion and other statement contained in this
          message and any attachment are solely those of the author and
          do not necessarily represent those of the company.</p>
      </div>
    </div>
  </body>
</html>

--------------040404030909060207040505
Content-Type: image/png;
 name="ddlogo-4.png"
Content-Transfer-Encoding: base64
Content-ID: <part4.08030003.09070903@dynamicdevices.co.uk>
Content-Disposition: inline;
 filename="ddlogo-4.png"

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
RU5ErkJggg==

--------------040404030909060207040505
Content-Type: image/png;
 name="linkedin.png"
Content-Transfer-Encoding: base64
Content-ID: <part6.08080205.05040603@dynamicdevices.co.uk>
Content-Disposition: inline;
 filename="linkedin.png"

iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAACXBIWXMAAAsTAAALEwEAmpwYAAAA
GXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAgRJREFUeNqUUs9r1EAU/jKZ7I+2
abBZVikKoYhCsbB/gXcFwV7Eu3jwInjyogdBj3oSPHm14KGhBwuC/gkKUqtVSglYarduKutu2c1m
MuO82dqk1YX6YJL35r3vez/mWbWbCw3fd0PfnwjciQqOI51uH3HcjeK4M8+nToyHd640gnP1SViW
dSwCpRS+7vwKniy9D7k3WQl2+xYWv7Sx2epgxmMmaKMtcbrmjiSZrjL4U+MBr5RsfGwlEJr1jGvh
8dXzJuD24hqa3cFIgt09C1zn4kJk6KViWBovlgmk2jdKUn0IyykoSYeBbzbbuPXyk9GXVluoudVD
INtmqHtjOvNwVoTlmf5k+5mo+2fXZo3+4u5bbD24aPSVrQ7mpl20ewL3ltfxORaGhHCMylBCakNC
SfXPcglM4lU5Hl4+i+bPPYMhLJNCoKQbNkQqJ2CFF1149x33X60fkIhMGgxhGZXBiUDPwS5kHXPy
iT56HSH88COfhT6EMViZZXCMIeEUFsktOQe6c2TByCYMYfmAWPRlov92kaCcV2AfISCbvIRlqWYp
QaGv+5KFxp1yXgHdF32kE4awVv3Gc3XpwizWegp6e1Fy7L9eYbC/J398tO0zXGJ5ZVW3kKTRt53t
YO7kKXCnPGLvnEOWSBNsNLeRDkRkedefNsBYqN8twP+IVBGknP8twABFyPH3kUzF5AAAAABJRU5E
rkJggg==

--------------040404030909060207040505
Content-Type: image/png;
 name="skype.png"
Content-Transfer-Encoding: base64
Content-ID: <part8.03040202.01010905@dynamicdevices.co.uk>
Content-Disposition: inline;
 filename="skype.png"

iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAACXBIWXMAAAsTAAALEwEAmpwYAAAA
GXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAq1JREFUeNqMk0trE1EUx/935s4k
k1czbVpfWEctRaFiKZiCUCjqooggxZ0KfgC/QcVF1/oRBLsRXQjxgSu7qAsFpYuWoliLTaSNUJvQ
vJvceVzPndBSF0KHOTPD5fz+55z/vcNmXi2OZuKRHIWTiho4zFVruyg1OwWKaW7HzNz1kUEnk4pD
0xh2fQm6keDsvwJBIFGqNZ23K79yPBWNOJJH8K3q4VPVhfABjwQCSuSMQUiJXkNDNsVhHxDlxNgx
y+GmYaDuMbwvd9Ck0gpOcg2Xeo3wW0Wx7ePhzxZuDZgYT/JQgJG4ruvgLrXzmxL24ITOMHM+jpj+
7wg3jkVwb6kOUM5YQg/XFKu5gfroVhL0nsjwEF4stzA1v447Hzew0XIxHNcxngKebAnsMSo0EQSw
qFggyUBaGDBl1yh6nemz8aXOcHm+gNmv23i52cAmVVmqtMmrAIrlqqpqNkqPbaKerlcw1hdDNtMN
wMbrYh0vim209Cg6lL/ZEhhOmGHHmppDVeuQ221aWG4ZmFrIYy6/g4raErpunkjiebYfV9OgHImK
1ENm34OAYItcVQKTGQN3HRsPVko4+S6PoTc/sLDVCIXuD0ZD8ENdhoxiudpnNfVZk+FzQ+IKmTh5
JIGRnggerdWxQ1lpo+t6peOFB2SruUuMFZ4RrlSUgElx0fDx+HsNo7YVxrOstb+NapzZVeokiIJJ
P2S6HVBPUs1Dj3MWx05TwzVyfaKXI22qygwVypwreqgYSWgywAUuQkaxXPg+dl0POtMgKMb7e3Cq
WsdaTWBV7EKQwLLQ0NFMpDpVjBgebp8+GjLC82gEVxTWyjVnqC8F2+oe0+NWGmMHTqFH+91oC3A9
gUTERItgYuB6boEHnjtd+FPK5ctVR2r6oX5nRmMwTxSY707/FWAAwixkevHIXSQAAAAASUVORK5C
YII=

--------------040404030909060207040505--

--------------000607080207030202060107--
