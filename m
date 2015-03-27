Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FBBEE00922; Fri, 27 Mar 2015 11:56:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC7F7E00906
	for <yocto@yoctoproject.org>; Fri, 27 Mar 2015 11:56:20 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id CF86FF811E0; Fri, 27 Mar 2015 12:56:19 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 602A0F811D7;
	Fri, 27 Mar 2015 12:56:19 -0600 (MDT)
Message-ID: <5515A7D8.1000900@mlbassoc.com>
Date: Fri, 27 Mar 2015 12:56:24 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Dependencies gone wild
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
X-List-Received-Date: Fri, 27 Mar 2015 18:56:25 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I was just comparing a build I did on 2015-03-20 and 2015-03-27.
I noticed that [today] almost every package in my build had to
be rebuilt :-(  [I thought that things were pretty much frozen
for the next release!]

I compared some of the stamps and every one I examined looked
something like this:
Dependency on variable SYSTEMD_SERVICE_xserver-xorg-module-exa was added
Dependency on variable SYSTEMD_SERVICE_xserver-xorg-module-libcfb was added
Dependency on variable SYSTEMD_SERVICE_xserver-xorg-utils was added
Dependency on variable SYSTEMD_SERVICE_xserver-xorg-module-xaa was added
Dependency on variable SYSTEMD_SERVICE_xserver-xorg-xvfb was added
Dependency on variable SYSTEMD_SERVICE_xserver-xorg-xephyr was added
Dependency on variable SYSTEMD_SERVICE_xserver-xorg-module-libafb was added
Dependency on variable SYSTEMD_SERVICE_xserver-xorg-extension-glx was added
Dependency on variable SYSTEMD_SERVICE_xserver-xorg-staticdev was added
Dependency on variable SYSTEMD_SERVICE_xserver-xorg-module-libint10 was added
Dependency on variable SYSTEMD_SERVICE_xserver-xorg-dev was added
Dependency on variable SYSTEMD_SERVICE_xserver-xorg-sdl was added
Dependency on variable SYSTEMD_SERVICE_xserver-xorg-module-libmfb was added
Dependency on variable SYSTEMD_SERVICE_xserver-xorg-multimedia-modules was added
Dependency on variable SYSTEMD_SERVICE_xserver-xorg-security-policy was added
Dependency on variable SYSTEMD_SERVICE_xserver-xorg-extension-dbe was added
Dependency on variable SYSTEMD_SERVICE_xserver-xorg-extension-dri was added
Dependency on variable SYSTEMD_SERVICE_xserver-xorg-module-libxf4bpp was added
Dependency on variable SYSTEMD_SERVICE_xserver-xorg-module-libwfb was added
Dependency on variable SYSTEMD_SERVICE_xserver-xorg-extension-extmod was added
Dependency on variable SYSTEMD_SERVICE_xserver-xorg was added
Dependency on variable SYSTEMD_SERVICE_xserver-xorg-locale was added
Dependency on variable SYSTEMD_SERVICE_xserver-xorg-doc was added
Dependency on variable SYSTEMD_SERVICE_xserver-xorg-fbdev was added
Dependency on variable SYSTEMD_SERVICE_xserver-xorg-module-libxf1bpp was added
Dependency on variable SYSTEMD_SERVICE_xserver-xorg-extension-dri2 was added
Dependency on variable SYSTEMD_SERVICE_xserver-xorg-dbg was added
Dependency on variable SYSTEMD_SERVICE_xserver-xorg-extension-record was added
   -and-
Dependency on variable SYSTEMD_SERVICE_busybox-httpd was added
Dependency on variable SYSTEMD_SERVICE_busybox-hwclock was added
Dependency on variable SYSTEMD_SERVICE_busybox-dbg was added
Dependency on variable SYSTEMD_SERVICE_busybox-syslog was added
Dependency on variable SYSTEMD_SERVICE_busybox-staticdev was added
Dependency on variable SYSTEMD_SERVICE_busybox-mdev was added
Dependency on variable SYSTEMD_SERVICE_busybox-doc was added
Dependency on variable SYSTEMD_SERVICE_busybox-locale was added
Dependency on variable SYSTEMD_SERVICE_busybox-udhcpd was added
Dependency on variable SYSTEMD_SERVICE_busybox-dev was added
Dependency on variable SYSTEMD_SERVICE_busybox was added
Dependency on variable SYSTEMD_SERVICE_busybox-udhcpc was added


What are these all about and why do I have them if I'm not
running systemd?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

