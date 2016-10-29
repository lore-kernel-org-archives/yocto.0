Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F509E00EA3; Sat, 29 Oct 2016 14:52:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [178.33.111.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1199 seconds by postgrey-1.32 at yocto-www;
	Sat, 29 Oct 2016 14:52:20 PDT
Received: from 1.mo173.mail-out.ovh.net (1.mo173.mail-out.ovh.net
	[178.33.111.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B67E2E00B62
	for <yocto@yoctoproject.org>; Sat, 29 Oct 2016 14:52:20 -0700 (PDT)
Received: from player739.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo173.mail-out.ovh.net (Postfix) with ESMTP id 89AFFD1C1
	for <yocto@yoctoproject.org>; Sat, 29 Oct 2016 23:13:08 +0200 (CEST)
Received: from nuc.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net [86.27.96.131])
	(Authenticated sender: paul@betafive.co.uk)
	by player739.ha.ovh.net (Postfix) with ESMTPSA id 2E5234A006D;
	Sat, 29 Oct 2016 23:13:07 +0200 (CEST)
Date: Sat, 29 Oct 2016 22:13:06 +0100
From: Paul Barker <paul@paulbarker.me.uk>
To: Karim ATIKI <karim_atiki@hotmail.com>
Message-ID: <20161029221306.73a1ab9d@nuc.betafive.co.uk>
In-Reply-To: <DB5PR01MB188012CEF43ADE751770A39D92AD0@DB5PR01MB1880.eurprd01.prod.exchangelabs.com>
References: <HE1PR01MB1883A54CB9FBC20C3EC9225692AB0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<20161027212610.33d285b0@nuc.betafive.co.uk>
	<20161027221841.69b62716@nuc.betafive.co.uk>
	<DB5PR01MB188012CEF43ADE751770A39D92AD0@DB5PR01MB1880.eurprd01.prod.exchangelabs.com>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 1217097801242413472
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeelvddrjeehgdduheekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi3] Failed to build gstreamer1.0-plugins-bad with minimal configuration
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
X-List-Received-Date: Sat, 29 Oct 2016 21:52:24 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 28 Oct 2016 05:56:07 +0000
Karim ATIKI <karim_atiki@hotmail.com> wrote:

> Hi Paul,
> 
> 
> Thanks a lot for your feedback and analysis.
> 
> I think it sohuld compile without X11 and Wayland as it's a very
> common configuration
> 
> for RaspberryPi being used with Qt5.x applications.
> 
> 
> Do you think it's bug related to Gstreamer1.0 configuration ?
> 
> 
> 
> Karim
> 

The do_configure log for gstreamer1.0-plugins-bad does contain:

	configure: WARNING: X or Wayland is required for OpenGL support

configure.ac in gst-plugins-bad-1.8.3 contains:

    dnl EGL
    if test "x$HAVE_EGL" = "xno"; then
      if test "x$HAVE_GL" = "xno"; then
        AC_MSG_WARN([Building requires either EGL or GLX for OpenGL support])
      fi
    else
      if test "x$NEED_EGL" != "xno"; then
        if test "x$HAVE_WINDOW_WAYLAND" = "xyes" -o "x$HAVE_WINDOW_X11" = "xyes" -o "x$HAVE_WINDOW_DISPMANX" = "xyes"; then
          GL_LIBS="$GL_LIBS -lEGL $EGL_LIBS"
          GL_CFLAGS="$GL_CFLAGS $EGL_CFLAGS"
          USE_EGL=yes
        fi
      fi
    fi
    ;;

In config.status EGL_LIBS contains "-lbcm_host -lvcos
-lvchiq_arm", however GL_LIBS only contains "-lGLESv2". So I'd say
EGL_LIBS is not being included in to GL_LIBS because
HAVE_WINDOW_WAYLAND, HAVE_WINDOW_X11 and HAVE_WINDOW_DISPMAX are all
false.

GL_LIBS is used in gst-libs/gst/gl/Makefile.am so that's the variable
the libraries should be listed in.

I'd say that's an upstream issue - it really looks like it's demanding
X or Wayland to be enabled for OpenGL to work. I'd suggest raising the
issue upsteream.

Thanks,
Paul Barker

