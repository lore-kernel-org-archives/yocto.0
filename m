Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5220DE002AC
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2013 12:37:00 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 893B2F811E8; Mon, 18 Nov 2013 13:37:00 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id E7AE9F811E7;
	Mon, 18 Nov 2013 13:36:59 -0700 (MST)
Message-ID: <528A7A76.5080700@mlbassoc.com>
Date: Mon, 18 Nov 2013 13:37:10 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: [meta-raspberrypi] Using the camera
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
X-List-Received-Date: Mon, 18 Nov 2013 20:37:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I have the raspberrypi camera (the one that plugs directly into
the board) running with Raspbian.  Now I'd like to have it working
with my Yocto based build.  I'm running the latest kernel which I
think matches the same kernel on Raspbian and I copied the /boot/config.txt
from my Raspbian disk to my Yocto image which I think should enable the
camera.  I've also checked the kernel cmdline which I think matches.

However, when I try to access the camera I get this error:
   root@raspberrypi:~# raspistill  -o /tmp/xx.jpg
   mmal: mmal_component_create_core: could not find component 'vc.ril.camera'
   mmal: Failed to create camera component
   mmal: main: Failed to create camera component
   mmal: Failed to run camera app. Please check for firmware updates

Any ideas what I need to do to get the camera working?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

