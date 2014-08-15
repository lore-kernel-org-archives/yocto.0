Return-Path: <markus.eich@dfki.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A18B9E006AE; Fri, 15 Aug 2014 06:14:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,T_HK_NAME_DR
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000] *  0.0 T_HK_NAME_DR T_HK_NAME_DR
Received: from sea-mail.dfki.de (sea-mail.dfki.de [134.96.191.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EEB1E0044A
	for <yocto@yoctoproject.org>; Fri, 15 Aug 2014 06:13:59 -0700 (PDT)
Received: from sea-mail.dfki.de (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id
	35BB0A0C9F_3EE0794B
	for <yocto@yoctoproject.org>; Fri, 15 Aug 2014 13:13:56 +0000 (GMT)
Received: from mail.dfki.de (lnv-104.sb.dfki.de [134.96.191.146])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	by sea-mail.dfki.de (Sophos Email Appliance) with ESMTPS id
	12230A0C7D_3EE0794F
	for <yocto@yoctoproject.org>; Fri, 15 Aug 2014 13:13:56 +0000 (GMT)
Received: from [10.250.3.118] (unknown [10.250.3.118])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by mail.dfki.de (Postfix) with ESMTPSA id E9588311B9
	for <yocto@yoctoproject.org>; Fri, 15 Aug 2014 15:13:56 +0200 (CEST)
Message-ID: <53EE0794.40107@dfki.de>
Date: Fri, 15 Aug 2014 15:13:56 +0200
From: "Dr. Markus Eich" <markus.eich@dfki.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Problems running gstreamer v4l2 on Yocto
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
X-List-Received-Date: Fri, 15 Aug 2014 13:14:10 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Dear all,

I am trying to set up a USB webcam with Yocto using gstreamer. The 
camera is detected by my Yocto /Poky distro and tested with VLC (build 
with yocto).

I am using the following build

==
Build Configuration:
BB_VERSION        = "1.22.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-14.04"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "odroid-xu"
DISTRO            = "poky"
DISTRO_VERSION    = "1.6.1"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "daisy:87671f72e7459d5d5ddb37691354fab970c557ee"
meta-oe
meta-networking
meta-multimedia
meta-gnome        = "daisy:d85b01997ce8cc354ccc53f97fdffc79cf2277d5"
meta-odroid       = "master:bbdf8273297e310736c48a7c6490c84fe1dea6d9"
meta-ros          = "master:f6ba83122674a80bc4beb03ebfc60ea003493ec0"
meta-gumstix      = "daisy:b160dd5ca424e0f8b76871187a76095b06af7d58"
meta-dfki         = "master:82995e78f5792a91af0a6ca28f2bc63ce0a904a9"
==

I execute the following command

gst-launch v4l2src device=/dev/video0 ! ffmpegcolorspace ! ximagesink

This works perfectly on my Ubuntu 14.04 laptop as well as on my Linaro 
Image (14.04) for my embedded system (using the same camera).

I have build all gstreamer-plugins-* with Yocto.

The very same command on my Yocto distro produces:

==
Setting pipeline to PAUSED ...
ERROR: Pipeline doesn't want to pause.
ERROR: from element /GstPipeline:pipeline0/GstV4l2Src:v4l2src0: Device 
'/dev/video0' cannot capture at 32768x32768
Additional debug info:
/home/eich/odroid_xu/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gst-plugins-good/0.10.31-r8/gst-plugins-good-0.10.31/sys/v4l2/gstv4l2object.c(2212): 
gst_v4l2_object_set_format (): /GstPipeline:pipeline0/GstV4l2Src:v4l2src0:
Call to S_FMT failed for UYVY @ 32768x32768: Invalid argument
==

Something wrong with the build config of gstreamer with Yocto?

Cheers,

Markus








-- 
Dr.-Ing. Markus Eich

  Senior Researcher
  Marine Inspection Robotics
  Space Robotics
  
  Besuchsadresse der Nebengeschäftstelle:
  DFKI GmbH
  Robotics Innovation Center
  Robert-Hooke-Straße 5
  28359 Bremen, Germany
  
  Postadresse der Hauptgeschäftsstelle Standort Bremen:
  DFKI GmbH
  Robotics Innovation Center
  Robert-Hooke-Straße 1
  28359 Bremen, Germany

  Tel.:     +49 421 178 45-4105
  Zentrale: +49 421 178 45-0
  Fax:      +49 421 178 45-4150 (Faxe bitte namentlich kennzeichnen)
  E-Mail:   markus.eich@dfki.de

  Weitere Informationen: http://www.dfki.de/robotik
  -----------------------------------------------------------------------
  Deutsches Forschungszentrum fuer Kuenstliche Intelligenz GmbH
  Firmensitz: Trippstadter Straße 122, D-67663 Kaiserslautern
  Geschaeftsfuehrung: Prof. Dr. Dr. h.c. mult. Wolfgang Wahlster
  (Vorsitzender) Dr. Walter Olthoff
  Vorsitzender des Aufsichtsrats: Prof. Dr. h.c. Hans A. Aukes
  Amtsgericht Kaiserslautern, HRB 2313
  Sitz der Gesellschaft: Kaiserslautern (HRB 2313)
  USt-Id.Nr.:    DE 148646973
  Steuernummer:  19/673/0060/3
  -----------------------------------------------------------------------


