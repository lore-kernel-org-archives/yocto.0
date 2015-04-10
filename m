Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B6C8E009B2; Fri, 10 Apr 2015 08:11:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 935DFE009C9
	for <yocto@yoctoproject.org>; Fri, 10 Apr 2015 08:11:37 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id B5C33F811DD; Fri, 10 Apr 2015 09:11:36 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 45CC8F811DB;
	Fri, 10 Apr 2015 09:11:36 -0600 (MDT)
Message-ID: <5527E83B.6030006@mlbassoc.com>
Date: Fri, 10 Apr 2015 09:11:55 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: [meta-raspberrypi] mesa & gl problems
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
X-List-Received-Date: Fri, 10 Apr 2015 15:11:42 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

If I try to use the 'libjpeg-turbo' package from meta-oe
(required to build 'vlc'), I get these errors:

ERROR: Multiple .bb files are due to be built which each provide virtual/libgles2 (/home/local/poky-cutting-edge/meta/recipes-graphics/mesa/mesa_10.4.4.bb 
/home/local/poky-cutting-edge/meta-raspberrypi/recipes-graphics/userland/userland_git.bb).
  This usually means one provides something the other doesn't and should.
ERROR: Multiple .bb files are due to be built which each provide virtual/mesa (/home/local/poky-cutting-edge/meta/recipes-graphics/mesa/mesa-gl_10.4.4.bb 
/home/local/poky-cutting-edge/meta/recipes-graphics/mesa/mesa_10.4.4.bb).
  This usually means one provides something the other doesn't and should.
ERROR: Multiple .bb files are due to be built which each provide jpeg (/home/local/poky-cutting-edge/meta-oe/recipes-core/jpeg/libjpeg-turbo_8d+1.4.0.bb 
/home/local/poky-cutting-edge/meta/recipes-core/jpeg/jpeg_8d.bb).
  This usually means one provides something the other doesn't and should.
ERROR: Multiple .bb files are due to be built which each provide virtual/libgl (/home/local/poky-cutting-edge/meta/recipes-graphics/mesa/mesa-gl_10.4.4.bb 
/home/local/poky-cutting-edge/meta/recipes-graphics/mesa/mesa_10.4.4.bb).
  This usually means one provides something the other doesn't and should.
ERROR: Multiple .bb files are due to be built which each provide virtual/egl (/home/local/poky-cutting-edge/meta/recipes-graphics/mesa/mesa_10.4.4.bb 
/home/local/poky-cutting-edge/meta-raspberrypi/recipes-graphics/userland/userland_git.bb).
  This usually means one provides something the other doesn't and should.

This happens when I add these lines to my local.conf:
   PREFERRED_PROVIDER_jpeg = "libjpeg-turbo"
   PREFERRED_PROVIDER_jpeg-native = "libjpeg-turbo-native"

How do I fix this?

Note: I've successfully done this on many other targets (qemuXXX,
i.MX6) - it's only failing on RaspberryPi

Thanks for any pointers

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

