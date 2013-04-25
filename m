Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 605B3E0150E
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 06:08:07 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id A305CF811DF; Thu, 25 Apr 2013 07:08:06 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id D9159F811DB;
	Thu, 25 Apr 2013 07:08:04 -0600 (MDT)
Message-ID: <51792AC3.7080501@mlbassoc.com>
Date: Thu, 25 Apr 2013 07:08:19 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130329 Thunderbird/17.0.5
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Files and overrides
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
X-List-Received-Date: Thu, 25 Apr 2013 13:08:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to supply a target specific file for which there are
already many alternatives.  For whatever reason, the wrong file
is always being chosen.

Here are the details: I have a local layer (meta-imx6) which is used
to override/overlay a BSP layer (meta-fsl-arm) which in turn is
supplying some tuned files.  In particular, the file 'xorg.conf'
which appears in all of these places:
   ./meta-imx6/recipes-graphics/xorg-xserver/xserver-xf86-config/sabrelite/xorg.conf
   ./meta/recipes-graphics/xorg-xserver/xserver-xf86-config/qemuarm/xorg.conf
   ./meta/recipes-graphics/xorg-xserver/xserver-xf86-config/qemuppc/xorg.conf
   ./meta/recipes-graphics/xorg-xserver/xserver-xf86-config/xorg.conf
   ./meta/recipes-graphics/xorg-xserver/xserver-xf86-config/qemux86-64/xorg.conf
   ./meta/recipes-graphics/xorg-xserver/xserver-xf86-config/qemush4/xorg.conf
   ./meta/recipes-graphics/xorg-xserver/xserver-xf86-config/qemumips/xorg.conf
   ./meta/recipes-graphics/xorg-xserver/xserver-xf86-config/qemumips64/xorg.conf
   ./meta/recipes-graphics/xorg-xserver/xserver-xf86-config/qemux86/xorg.conf
   ./meta-fsl-arm/recipes-graphics/xorg-xserver/xserver-xf86-config/mx6/xorg.conf
   ./meta-fsl-arm/recipes-graphics/xorg-xserver/xserver-xf86-config/mx5/xorg.conf
   ./meta-fsl-arm/recipes-graphics/xorg-xserver/xserver-xf86-config/mxs/xorg.conf

My meta-imx6 layer sets up the overrides to be:
   FILESOVERRIDES="imx6qsabrelite:arm:armv7a:mx6:mx6q:sabrelite:amltd"
   OVERRIDES="imx6qsabrelite:arm:armv7a:mx6:mx6q:sabrelite:amltd"
where "amltd" is the name of my distribution and "sabrelite" is my machine name.

The file that is actually chosen is .../mx6/xorg.conf, but I want it to
be .../sabrelite/xorg.conf  I have other files in the .../xserver-xf86-config/sabrelite
directory being picked up (that's part of what this is about, adding such configury)
but not xorg.conf

How can I fix this?  I tried moving/adding sabrelite to the front of the
*OVERRIDES variables with no change.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

