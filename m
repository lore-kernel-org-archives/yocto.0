Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC543E01473
	for <yocto@yoctoproject.org>; Thu, 18 Apr 2013 09:33:52 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 657FBF811EA; Thu, 18 Apr 2013 10:33:52 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id CD187F811DA;
	Thu, 18 Apr 2013 10:33:51 -0600 (MDT)
Message-ID: <51702071.4050509@mlbassoc.com>
Date: Thu, 18 Apr 2013 10:33:53 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130329 Thunderbird/17.0.5
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Package woes
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
X-List-Received-Date: Thu, 18 Apr 2013 16:33:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

This morning, I had built an image successfully using a slightly older
Poky/Yocto master (af9ed97e30ac1a3a2b4e1062f2f8aee255d05972).
Then I updated to master (90b98764555945a186562ca8d501a9585ce2b23f)

Now, when I try to build an image (any 'rootfs' image), I
get a ton of errors like these:
|  * opkg_install_pkg: Package python-modules md5sum mismatch. Either the opkg or the package index are corrupt. Try 'opkg update'.
|  * opkg_install_cmd: Cannot install package python-modules.
|  * opkg_install_pkg: Package libffi6 md5sum mismatch. Either the opkg or the package index are corrupt. Try 'opkg update'.
|  * opkg_install_cmd: Cannot install package gst-plugins-base-app.
|  * opkg_install_pkg: Package libx11-6 md5sum mismatch. Either the opkg or the package index are corrupt. Try 'opkg update'.
|  * opkg_install_cmd: Cannot install package gst-plugins-base-xvimagesink.

There are also a lot of messages like these:
| Found /home/local/imx6_poky/tmp/deploy/ipk/armv7a-vfp-neon/locale-base-sw-ke_2.17-r0_armv7a-vfp-neon.ipk in Packages, but mtime differs - re-reading
| Found /home/local/imx6_poky/tmp/deploy/ipk/armv7a-vfp-neon/locale-base-sw-tz_2.17-r0_armv7a-vfp-neon.ipk in Packages, but mtime differs - re-reading
| Found /home/local/imx6_poky/tmp/deploy/ipk/armv7a-vfp-neon/locale-base-szl-pl_2.17-r0_armv7a-vfp-neon.ipk in Packages, but mtime differs - re-reading

I don't understand this one at all because I tried rebuilding
virtual/libc-locale and I still get them.

Any ideas what's happening?  Sadly, I seem to be totally stuck
with this problem :-(

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

