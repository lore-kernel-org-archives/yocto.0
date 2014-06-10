Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26628E00BE1; Tue, 10 Jun 2014 16:23:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14CB3E00B83
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 16:23:25 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 1DB9727E03A;
	Tue, 10 Jun 2014 23:23:24 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id rP4j5_7BQDQG; Tue, 10 Jun 2014 23:23:00 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id A12F727E036;
	Tue, 10 Jun 2014 23:23:00 +0000 (UTC)
Message-ID: <53979352.6040909@dynamicdevices.co.uk>
Date: Wed, 11 Jun 2014 00:22:58 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Andrei Gherzan <andrei@gherzan.ro>
References: <cover.1402296985.git.ajlennon@dynamicdevices.co.uk>
	<9c061d514d5c846032c672ae42b6a1119e4e69db.1402296985.git.ajlennon@dynamicdevices.co.uk>
	<CAK18fxGg1sCKbsKS=Qg4n8==sJJgEME4_N11CriNa+irL-ziBg@mail.gmail.com>
In-Reply-To: <CAK18fxGg1sCKbsKS=Qg4n8==sJJgEME4_N11CriNa+irL-ziBg@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/1] gstreamer1.0-plugins-bad: Build eglglessink for Raspberry Pi
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
X-List-Received-Date: Tue, 10 Jun 2014 23:23:26 -0000
Content-Type: multipart/alternative;
	boundary="------------070402060301090009090800"

--------------070402060301090009090800
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 10/06/2014 19:48, Andrei Gherzan wrote:
> Hi Alex,
>
>
> On Mon, Jun 9, 2014 at 10:23 AM, Alex J Lennon
> <ajlennon@dynamicdevices.co.uk <mailto:ajlennon@dynamicdevices.co.uk>>
> wrote:
>
>     The eglglessink needs to be built to target the Raspberry Pi or it
>     will seg-fault in use.
>
>     Autoconf attempts to detect whether to build for RPi but there are
>     some include files needed, the search path to which must be specified.
>
>
> Format lines - max 78 chars per line.
>  
>
>
>     ref: https://github.com/raspberrypi/firmware/issues/34
>
>     ref: https://github.com/raspberrypi/firmware/issues/99
>
>     This patch adds the needed include paths and forces the plugin to
>     be built for Raspberry Pi.
>
>     With this patch the following pipeline works on RPi,
>
>     modprobe bcm2835-v4l2 gst_v4l2src_is_broken=1
>     gst-launch-1.0 --gst-debug-no-color v4l2src !
>     'video/x-raw,format=RGB,width=1280,height=720,framerate=(fraction)30/1'
>     ! eglglessink max-lateness=-1
>
>     Change-Id: I80826a43a428199b2a05ea51404ead24a815c38f
>     Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk
>     <mailto:ajlennon@dynamicdevices.co.uk>>
>     ---
>      recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend
>     | 1 +
>      1 file changed, 1 insertion(+)
>      create mode 100644
>     recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend
>
>     diff --git
>     a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend
>     b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend
>     new file mode 100644
>     index 0000000..199e0c1
>     --- /dev/null
>     +++
>     b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend
>     @@ -0,0 +1 @@
>     +EXTRA_OECONF += "
>     CPPFLAGS='-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads
>     -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux'
>     --with-egl-window-system=rpi"
>
>
> This append should be done only for raspberrypi machine. Having this
> append (EXTRA_OECONF) for other machines too would
> break gstreamer1.0-plugins-bad as most of the times bblayers.conf
> includes many layers not always related to the MACHINE selected.

Absolutely. Our emails may have crossed here and if so my apologies, but
this is why I directed the .bbappend to [meta-raspberrypi] as that's
where it's needed.

Cheers,

Alex


--------------070402060301090009090800
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <div class="moz-cite-prefix">On 10/06/2014 19:48, Andrei Gherzan
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAK18fxGg1sCKbsKS=Qg4n8==sJJgEME4_N11CriNa+irL-ziBg@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hi Alex,<br>
        <div class="gmail_extra"><br>
          <br>
          <div class="gmail_quote">On Mon, Jun 9, 2014 at 10:23 AM, Alex
            J Lennon <span dir="ltr">&lt;<a moz-do-not-send="true"
                href="mailto:ajlennon@dynamicdevices.co.uk"
                target="_blank">ajlennon@dynamicdevices.co.uk</a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">
              <div class="im">The eglglessink needs to be built to
                target the Raspberry Pi or it will seg-fault in use.<br>
                <br>
                Autoconf attempts to detect whether to build for RPi but
                there are some include files needed, the search path to
                which must be specified.<br>
              </div>
            </blockquote>
            <div><br>
            </div>
            <div>Format lines - max 78 chars per line.</div>
            <div> </div>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">
              <div class="im">
                <br>
                ref: <a moz-do-not-send="true"
                  href="https://github.com/raspberrypi/firmware/issues/34"
                  target="_blank">https://github.com/raspberrypi/firmware/issues/34</a><br>
                <br>
                ref: <a moz-do-not-send="true"
                  href="https://github.com/raspberrypi/firmware/issues/99"
                  target="_blank">https://github.com/raspberrypi/firmware/issues/99</a><br>
                <br>
                This patch adds the needed include paths and forces the
                plugin to be built for Raspberry Pi.<br>
                <br>
                With this patch the following pipeline works on RPi,<br>
                <br>
                modprobe bcm2835-v4l2 gst_v4l2src_is_broken=1<br>
                gst-launch-1.0 --gst-debug-no-color v4l2src !
                'video/x-raw,format=RGB,width=1280,height=720,framerate=(fraction)30/1'
                ! eglglessink max-lateness=-1<br>
                <br>
                Change-Id: I80826a43a428199b2a05ea51404ead24a815c38f<br>
                Signed-off-by: Alex J Lennon &lt;<a
                  moz-do-not-send="true"
                  href="mailto:ajlennon@dynamicdevices.co.uk">ajlennon@dynamicdevices.co.uk</a>&gt;<br>
                ---<br>
              </div>
              <div class="im"> recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend
                | 1 +<br>
                 1 file changed, 1 insertion(+)<br>
                 create mode 100644
                recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend<br>
                <br>
              </div>
              <div class="im">diff --git
                a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend
b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend<br>
                new file mode 100644<br>
                index 0000000..199e0c1<br>
                --- /dev/null<br>
                +++
                b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend<br>
                @@ -0,0 +1 @@<br>
                +EXTRA_OECONF += "
                CPPFLAGS='-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads
                -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux'
                --with-egl-window-system=rpi"<br>
              </div>
            </blockquote>
            <div><br>
            </div>
            <div>This append should be done only for raspberrypi
              machine. Having this append (EXTRA_OECONF) for other
              machines too would break gstreamer1.0-plugins-bad as most
              of the times bblayers.conf includes many layers not always
              related to the MACHINE selected.</div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    Absolutely. Our emails may have crossed here and if so my apologies,
    but this is why I directed the .bbappend to [meta-raspberrypi] as
    that's where it's needed.<br>
    <br>
    Cheers,<br>
    <br>
    Alex<br>
    <br>
  </body>
</html>

--------------070402060301090009090800--
