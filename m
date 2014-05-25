Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6A04E00B59; Sun, 25 May 2014 04:36:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from www.dynamicdevices.co.uk (unknown [89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F1DFE006D8
	for <yocto@yoctoproject.org>; Sun, 25 May 2014 04:36:24 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id E90B327E01E;
	Sun, 25 May 2014 11:36:22 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id OGf9R3VWYgW1; Sun, 25 May 2014 11:36:22 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id DD8CA27E019;
	Sun, 25 May 2014 11:36:21 +0000 (UTC)
Message-ID: <5381D5B3.1070509@dynamicdevices.co.uk>
Date: Sun, 25 May 2014 12:36:19 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: jan alexandru vaduva <vaduva.jan.alexandru@gmail.com>
References: <CANwz6nzE64e0hiEm_D-m_Z27X0M1NJSwLAxTS1koy3mPqfkUwg@mail.gmail.com>	<528B9049.7010704@mlbassoc.com>	<CAK18fxFgx_d2wdwEG+WTknqFynKHKU1Hd7p7h1T+gXgtXqXNGQ@mail.gmail.com>
	<CABwVrCrvXJvMspai9GVf0eJCXhEXZpyk2ibDwKiMPKxRFJzt7g@mail.gmail.com>
In-Reply-To: <CABwVrCrvXJvMspai9GVf0eJCXhEXZpyk2ibDwKiMPKxRFJzt7g@mail.gmail.com>
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
X-List-Received-Date: Sun, 25 May 2014 11:36:27 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 03/12/2013 22:13, jan alexandru vaduva wrote:
> Hello guys, I am trying to enable the functionality for the camera.
> I am trying to solve the following problem:
>     mmal: mmal_vc_component_create: failed to create component
> 'vc.ril.camera'
>     mmal: mmal_component_create_core: could not create component
> 'vc.ril.camera'
>     mmal: Failed to create camera component
> Updated to the latest firmware, enabled the functionality into
> config.txt but the problem continues.
>
> The problem seems to be the rootfs constructions. The right libraries
> are there but the name of the component that the function needs is not
> there. I assume it will take me some time to solve it, but when the
> time permits I will try to wrap this thing up.
>

Hi Alex,

Did manage to get to the bottom of this? I'm seeing the same thing with
raspivid / raspistill (although mjpg-streamer works fine).

mmal: mmal_vc_component_create: failed to create component 'vc.ril.camera'

- My checkout of meta-raspberrypi is current on f3a8693f (Andrei
Gherzan, May 8th) so I don't believe this is an out of date firmware
issue (?)

- I tried disabling the preview screen in case there was some kind of
video overlay issue

e.g. raspivid -n -w 640 -h 480 -fps 5

- I'm not seeing ENOMEM as the error and my GPU_MEM = "128" which I've
checked translates into the correct setting in config.txt in the boot
partition

- I read that it could possibly be related to current consumption and
the polyfuse, so I'm now powering from a bench PSU direct into the P1
header, and current limiting isn't the issue.

- I've just put a downloaded and put copy of Raspbian on there.  Running
raspivid seems to work fine (preview screen etc. etc.)

e.g. raspivid -w 640 -h 480 -fps 5

- Looking at the raspivid source it seems a fairly straightforward setup
call is failing early on, leading me to think something is missing as
you suggest?

https://github.com/raspberrypi/userland/blob/677f3cc646c8847822998c6409a748c900897076/host_applications/linux/apps/raspicam/RaspiVid.c

Thanks,

Alex



