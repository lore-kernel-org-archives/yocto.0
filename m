Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CF2CE00B70; Wed, 21 May 2014 03:51:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from www.dynamicdevices.co.uk (unknown [89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0872DE00AFD
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 03:51:16 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 7158E860E7
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 10:51:15 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id V0Fx12jDcXKj for <yocto@yoctoproject.org>;
	Wed, 21 May 2014 10:51:15 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id D4396860E6
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 10:51:14 +0000 (UTC)
Message-ID: <537C8522.4090405@dynamicdevices.co.uk>
Date: Wed, 21 May 2014 11:51:14 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Yocto <yocto@yoctoproject.org>
X-Enigmail-Version: 1.6
Subject: [meta-raspberrypi] Raspberry Pi Camera + kernel driver + gstreamer
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
X-List-Received-Date: Wed, 21 May 2014 10:51:21 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

Has anybody had any luck with the PiCam and Gstreamer?

I had the bcm2835_v4l2 kernel driver detecting the camera and
mjpg-streamer is working for me.

Now I'd like to have gstreamer doing the streaming instead of
mjpeg-streamer.

I've had something like the following pipeline working with USB webcams
but can't seem to get the right incantation for the PiCam:

gst-launch\
  v4l2src !\
  ffmpegcolorspace !\
  video/x-raw-yuv,width=640,height=480,framerate=\(fraction\)30/1 !\
  queue !\
  videorate !\
  video/x-raw-yuv,framerate=10/1 !\
  jpegenc !\
  multipartmux !\
  tcpserversink host=192.168.0.21 port=1010 sync=false

Thanks,

Alex


