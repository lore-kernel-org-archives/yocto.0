Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9C05E00C69; Wed, 20 Jul 2016 11:08:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50570E00C43
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 11:08:25 -0700 (PDT)
Received: from nbhjo (unknown [8.36.234.10])
	by msfrf2616.sfr.fr (SMTP Server) with ESMTP id 241AC1C000832;
	Wed, 20 Jul 2016 20:08:23 +0200 (CEST)
Received: from nbhjo (unknown [8.36.234.10])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2616.sfr.fr (SMTP Server) with ESMTPSA;
	Wed, 20 Jul 2016 20:08:22 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: "'piotr.lewicki'" <piotr.lewicki@elfin.de>, yocto@yoctoproject.org
References: <55b8f36a-dac2-a328-ff8f-6925fcd849a9@elfin.de>
In-Reply-To: <55b8f36a-dac2-a328-ff8f-6925fcd849a9@elfin.de>
Date: Wed, 20 Jul 2016 20:08:19 +0200
Message-ID: <00f401d1e2b1$b3581cc0$1a085640$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQKBexfNx2Dk04fEzuW+CjgyeKD8uJ7CbI5A
X-sfr-mailing: LEGIT
Subject: Re: [meta-raspberrypi] problem with building gstreamer1.0-omx
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
X-List-Received-Date: Wed, 20 Jul 2016 18:08:29 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Language: fr

Hi,

I have the exact same problem...
I believe the patch that Khem has sent depends on another patch in
gstreamer, that wasn't sent...
I'll send a patch soon to fix that "locally" (with a .bbappend to gstreamer
in meta-raspberrypi), though it should end up ultimately in oe, once
properly tested on other platforms.

Herve

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
On Behalf Of piotr.lewicki
Sent: mercredi 20 juillet 2016 13:58
To: yocto@yoctoproject.org
Subject: [yocto] [meta-raspberrypi] problem with building gstreamer1.0-omx

Hi,

After recent update of meta-raspberrypi I have a problem with building
gstreamer1.0-omx package.

I have one strange warning and one error due to missing gstglmemoryegl.h
file (marked with pluses below):

| In file included from ../../gst-omx-1.2.0/omx/gstomx.h:48:0,
|                  from ../../gst-omx-1.2.0/omx/gstomx.c:30:
| 
/home/piotr.lewicki/yocto-raspberry/2016-07-18/build/tmp/sysroots/raspberryp
i3/usr/include/IL/OMX_Core.h:45:4: 
warning: #warning OMX_SKIP64BIT is not defined - this will be incompatible
with the VC GPU code. [-Wcpp]
++++++++|    #warning OMX_SKIP64BIT is not defined - this will be
incompatible with the VC GPU code.
|     ^
++++++++| ../../gst-omx-1.2.0/omx/gstomxvideodec.c:41:39: fatal error: 
gst/gl/egl/gstglmemoryegl.h: No such file or directory
| compilation terminated.
| make[2]: *** [libgstomx_la-gstomxvideodec.lo] Error 1
| make[2]: *** Waiting for unfinished jobs....
| make[2]: Leaving directory
`/home/piotr.lewicki/yocto-raspberry/2016-07-18/build/tmp/work/raspberrypi3-
poky-linux-gnueabi/gstreamer1.0-omx/1.2.0-r1/build/omx'
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory
`/home/piotr.lewicki/yocto-raspberry/2016-07-18/build/tmp/work/raspberrypi3-
poky-linux-gnueabi/gstreamer1.0-omx/1.2.0-r1/build'
| make: *** [all] Error 2
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/home/piotr.lewicki/yocto-raspberry/2016-07-18/build/tmp/work/raspberrypi3-p
oky-linux-gnueabi/gstreamer1.0-omx/1.2.0-r1/temp/log.do_compile.4424)
ERROR: Task
/home/piotr.lewicki/yocto-raspberry/2016-07-18/build/../layers/poky/meta/rec
ipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bb:do_compile
(/home/piotr.lewicki/yocto-raspberry/2016-07-18/build/../layers/poky/meta/re
cipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bb:do_compile)
failed with exit code '1'


Do you have any idea why I have those messages?

I use gstreamer1.0 1.8.2 and corresponding plugin versions.

I have noticed that after removing
file://0007-omxvideodec-Use-gstglmemoryegl-for-the-RPi.patch from
gstreamer1.0-omx_1.2.0.bbappend - the package builds..

Any hint why I don't have this gstglmemoryegl.h header?


Thanks,

Piotr

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


