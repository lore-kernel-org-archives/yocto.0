Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85042E003FA; Fri, 18 Jul 2014 09:26:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AC11E00342
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 09:26:51 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 56ECAF811DA; Fri, 18 Jul 2014 10:26:50 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id C7124F8119A;
	Fri, 18 Jul 2014 10:26:46 -0600 (MDT)
Message-ID: <53C94ACD.6010800@mlbassoc.com>
Date: Fri, 18 Jul 2014 10:26:53 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Extending images
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
X-List-Received-Date: Fri, 18 Jul 2014 16:26:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I've always used 'IMAGE_INSTALL += " xyz"' in my local.conf
to add new packages to a build.  That said, I had a working
build for qemuarm (probably doesn't matter) and I added:
   IMAGE_INSTALL += " strace"
This produced a completely broken image which barely came
up to a shell, lots of missing programs, etc.

I then tried
   CORE_IMAGE_EXTRA_INSTALL += " strace"
which produced a perfectly working build (just as previous)
with the new package added.

I can see that the images produced are vastly different:

* Original working build
-rw-r--r-- 1 gthomas gthomas     11719 Jul 18 09:34 core-image-sato-qemuarm-20140718124453.rootfs.manifest
-rw-r--r-- 1 gthomas gthomas  87611203 Jul 18 09:34 core-image-sato-qemuarm-20140718124453.rootfs.tar.bz2

* After 'IMAGE_INSTALL += '
-rw-r--r-- 1 gthomas gthomas      9986 Jul 18 09:55 core-image-sato-qemuarm-20140718155134.rootfs.manifest
-rw-r--r-- 1 gthomas gthomas  37859884 Jul 18 09:56 core-image-sato-qemuarm-20140718155134.rootfs.tar.bz2

* After 'CORE_IMAGE_EXTRA_INSTALL += '
-rw-r--r-- 1 gthomas gthomas     11738 Jul 18 10:05 core-image-sato-qemuarm-20140718160108.rootfs.manifest
-rw-r--r-- 1 gthomas gthomas  87720106 Jul 18 10:05 core-image-sato-qemuarm-20140718160108.rootfs.tar.bz2

What's the difference and why did the first attempt fail?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

