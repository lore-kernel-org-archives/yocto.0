Return-Path: <lists@philipp-wagner.com>
Received: from turboconrad.planet-school.de (turboconrad.planet-school.de
	[194.116.187.108])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E76B0E0030B
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2013 13:10:31 -0800 (PST)
Received: from turboconrad.planet-school.de (srv004.service.ps-server.net
	[194.116.186.79])
	by turboconrad.planet-school.de (Postfix) with ESMTP id 19A3BB6A018
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2013 22:10:30 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	srv004.service.ps-server.net
X-Spam-Level: 
X-Spam-Status: No, score=-100.9 required=5.0 tests=ALL_TRUSTED,AWL,
	LOCAL_USER_RULE autolearn=unavailable version=3.3.2
Received: from poweramy.site (ppp-188-174-91-108.dynamic.mnet-online.de
	[188.174.91.108])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: mail@philipp-wagner.com)
	by turboconrad.planet-school.de (Postfix) with ESMTPSA id E6A48B6A00F
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2013 22:10:29 +0100 (CET)
Message-ID: <528A823E.4040305@philipp-wagner.com>
Date: Mon, 18 Nov 2013 22:10:22 +0100
From: Philipp Wagner <lists@philipp-wagner.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
References: <528A7A76.5080700@mlbassoc.com>
In-Reply-To: <528A7A76.5080700@mlbassoc.com>
X-Virus-Scanned: ClamAV using ClamSMTP
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
X-List-Received-Date: Mon, 18 Nov 2013 21:10:33 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Am 18.11.2013 21:37, Gary Thomas wrote:
> I have the raspberrypi camera (the one that plugs directly into
> the board) running with Raspbian.  Now I'd like to have it working
> with my Yocto based build.  I'm running the latest kernel which I
> think matches the same kernel on Raspbian and I copied the /boot/config.txt
> from my Raspbian disk to my Yocto image which I think should enable the
> camera.  I've also checked the kernel cmdline which I think matches.
> 
> However, when I try to access the camera I get this error:
>   root@raspberrypi:~# raspistill  -o /tmp/xx.jpg
>   mmal: mmal_component_create_core: could not find component
> 'vc.ril.camera'
>   mmal: Failed to create camera component
>   mmal: main: Failed to create camera component
>   mmal: Failed to run camera app. Please check for firmware updates
> 
> Any ideas what I need to do to get the camera working?

Did you also check that you are using the latest firmware (i.e. a quite
recent checkout of meta-raspberrypi)? I don't have the camera myself, so
I've never tested this feature.

Philipp

