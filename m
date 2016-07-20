Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D41FE00DAB; Wed, 20 Jul 2016 04:58:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C887FE00DA2
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 04:58:08 -0700 (PDT)
Received: by mail-wm0-f42.google.com with SMTP id i5so65132947wmg.0
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 04:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=tca+1SZRiq2tV6H5NBdwH6r4kHKAunFYeWwO71TKtv8=;
	b=TcbFU267mDnZaBkQPnNkVlnDxfAcsB2P31uwxIhH49CfFo4WKaGwvZeXdVYFbOi2XP
	0zLdtrRVRqgOtoUlTjAU+GLoViZUUjvfShMKcIId5N42K8RZMRLzNaZRA7Xtok+CIMRe
	qSAuF1U8cO08mJyyHpXuxO1IYncxgcl2bxn6VaC6tgTlolPTzDhOIL3dMHL03P/YNUnj
	BM6P5GHwjHA/lgEG2yEETPFd8dtC8p0XnZ7g+yE+gAI0jToJzefZNnXgS4Z5qURrXOG1
	uWQLduNE87THZ6VgH/ZNyO7ccPjUO9hm6utQTC6/xeHOkGXfqhvCjDtoYzxWq7kI1BIE
	mvMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=tca+1SZRiq2tV6H5NBdwH6r4kHKAunFYeWwO71TKtv8=;
	b=JdO7X3RUrLB5C2fUqXchY5L8fWLJNtRCshlFrBwZ4nrnT+mpdsjYQgInHEf3F6m22A
	7OQG+xdgBuE0rG4WoGd9KsDEnPqJYNps13xaC011yAFJ6wywEffa9c0FBfRirnSSprba
	U1Tb2jPeJArJNYtYu618RJM0KbC75dMU8/HFDT/OIGxtd3P3Am6VryZeFoFcKHKPQeBI
	6rlDppI11buRdKiGGoCxGw+bIKhf6EulkL/p53kiaHEg5q9aH6ALHC/HxCH5Me5IDOt4
	hFqwxN7o6Um9x2DSI68HB1ATlfO0K8OSYD8KbbY/DoMP86Q42bXCc9ZemqPFcgTKodRw
	lhVw==
X-Gm-Message-State: ALyK8tJj30vjuRmcGA+XQcIV0hl9MCvcMzvT1CFM3bhzf6UAFyflxX+H4rTOPi41bfk/zQ==
X-Received: by 10.195.10.100 with SMTP id dz4mr945579wjd.124.1469015886883;
	Wed, 20 Jul 2016 04:58:06 -0700 (PDT)
Received: from [192.168.2.129] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	w129sm4784343wmd.9.2016.07.20.04.58.06 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 20 Jul 2016 04:58:06 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: "piotr.lewicki" <piotr.lewicki@elfin.de>
Message-ID: <55b8f36a-dac2-a328-ff8f-6925fcd849a9@elfin.de>
Date: Wed, 20 Jul 2016 13:58:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
Subject: [meta-raspberrypi] problem with building gstreamer1.0-omx
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
X-List-Received-Date: Wed, 20 Jul 2016 11:58:13 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

After recent update of meta-raspberrypi I have a problem with building 
gstreamer1.0-omx package.

I have one strange warning and one error due to missing gstglmemoryegl.h 
file (marked with pluses below):

| In file included from ../../gst-omx-1.2.0/omx/gstomx.h:48:0,
|                  from ../../gst-omx-1.2.0/omx/gstomx.c:30:
| 
/home/piotr.lewicki/yocto-raspberry/2016-07-18/build/tmp/sysroots/raspberrypi3/usr/include/IL/OMX_Core.h:45:4: 
warning: #warning OMX_SKIP64BIT is not defined - this will be 
incompatible with the VC GPU code. [-Wcpp]
++++++++|    #warning OMX_SKIP64BIT is not defined - this will be 
incompatible with the VC GPU code.
|     ^
++++++++| ../../gst-omx-1.2.0/omx/gstomxvideodec.c:41:39: fatal error: 
gst/gl/egl/gstglmemoryegl.h: No such file or directory
| compilation terminated.
| make[2]: *** [libgstomx_la-gstomxvideodec.lo] Error 1
| make[2]: *** Waiting for unfinished jobs....
| make[2]: Leaving directory 
`/home/piotr.lewicki/yocto-raspberry/2016-07-18/build/tmp/work/raspberrypi3-poky-linux-gnueabi/gstreamer1.0-omx/1.2.0-r1/build/omx'
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory 
`/home/piotr.lewicki/yocto-raspberry/2016-07-18/build/tmp/work/raspberrypi3-poky-linux-gnueabi/gstreamer1.0-omx/1.2.0-r1/build'
| make: *** [all] Error 2
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at 
/home/piotr.lewicki/yocto-raspberry/2016-07-18/build/tmp/work/raspberrypi3-poky-linux-gnueabi/gstreamer1.0-omx/1.2.0-r1/temp/log.do_compile.4424)
ERROR: Task 
/home/piotr.lewicki/yocto-raspberry/2016-07-18/build/../layers/poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bb:do_compile 
(/home/piotr.lewicki/yocto-raspberry/2016-07-18/build/../layers/poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bb:do_compile) 
failed with exit code '1'


Do you have any idea why I have those messages?

I use gstreamer1.0 1.8.2 and corresponding plugin versions.

I have noticed that after removing 
file://0007-omxvideodec-Use-gstglmemoryegl-for-the-RPi.patch from 
gstreamer1.0-omx_1.2.0.bbappend - the package builds..

Any hint why I don't have this gstglmemoryegl.h header?


Thanks,

Piotr


