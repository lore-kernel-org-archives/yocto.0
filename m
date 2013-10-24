Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 573D9E01768
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2013 08:24:57 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 10642F8121E; Thu, 24 Oct 2013 09:24:57 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id DC6B5F8121C;
	Thu, 24 Oct 2013 09:24:55 -0600 (MDT)
Message-ID: <52693BCC.100@mlbassoc.com>
Date: Thu, 24 Oct 2013 09:25:00 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Testing wayland/weston
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
X-List-Received-Date: Thu, 24 Oct 2013 15:24:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'd like to try testing wayland/weston on my BeagleBoard (clone).
I've built core-image-weston, but it fails to start up with this error:

[15:07:01.465] weston 1.1.0
                http://wayland.freedesktop.org/
                Bug reports to: https://bugs.freedesktop.org/enter_bug.cgi?product=Wayland&comp0
                Build:
[15:07:01.466] OS: Linux, 3.3.0, #1 Mon Oct 21 14:35:36 MDT 2013, armv7l
couldn't open //.config/weston.ini
[15:07:01.472] Loading module '/usr/lib/weston/drm-backend.so'
couldn't open //.config/weston.ini
[15:07:01.484] initializing drm backend
couldn't open //.config/weston.ini
couldn't open //.config/weston.ini
[15:07:01.492] compositor: using new vt /dev/tty1
[15:07:01.511] no drm device found
[15:07:01.511] failed to drop master: Invalid argument
[15:07:01.557] fatal: failed to create compositor

What would I need to add/change to get this basic setup to work?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

