Return-Path: <krueger@ind.rwth-aachen.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59944E00EC9; Thu, 19 May 2016 21:45:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.130.5.187 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Thu, 19 May 2016 21:45:36 PDT
Received: from mx-out-2.rwth-aachen.de (mx-out-2.rwth-aachen.de
	[134.130.5.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AF9EE00EC4
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 21:45:36 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.26,337,1459807200"; d="scan'208";a="439994414"
Received: from mail.ind.rwth-aachen.de ([137.226.238.9])
	by mx-2.rz.rwth-aachen.de with ESMTP; 20 May 2016 06:44:32 +0200
Received: from [192.168.178.104] (aftr-88-153-7-189.unity-media.net
	[88.153.7.189])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by mail.ind.rwth-aachen.de (Postfix) with ESMTP id 2638716741C9
	for <yocto@yoctoproject.org>; Fri, 20 May 2016 06:44:30 +0200 (CEST)
To: yocto@yoctoproject.org
From: public-hk@iks.rwth-aachen.de
Message-ID: <05bb0eaa-71c1-f850-e7e4-f028bbe8b715@ind.rwth-aachen.de>
Date: Fri, 20 May 2016 08:44:28 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.1.0
MIME-Version: 1.0
Subject: Newbie Question regarding custom layer and populate_rootfs
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
X-List-Received-Date: Fri, 20 May 2016 04:45:38 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi all,
I have recently started to use Yocto. I also figured out a lot y myself
already. However, there is one problem I just can not solve. Sorry if
this is a dumb question..

My purpose is to create a customized distro for the Raspberry 2 which I
managed to get up and running. Yesterday, I tried to create a customized
splash image on bootup. That can be done via the psplash tool.

The current image that I create incorporates a recipe from the layer
meta-raspberry/recipes-core/psplash which adds a bbappend File and a
corresponding header which origins back to PNG file. This rule is
responsible for the typical bootup screen.

I myself created another layer meta-myproject and added a copy of the
same subfolder meta-myproject/recipes-core/psplash with ANOTHER header
file originating from ANOTHER image file. Also, I copied the
configuration file from meta-raspberry/conf to meta-myproject/conf (with
some minor adaptations) and added my new layer meta-myproject to the
bblayers-conf file in my main build folder.

Once running bitbake, I see that the psplash rules given in the
meta-raspberry layer causes a psplash-raspberry to be created. And due
to my new layer meta-myproject another version is created named
psplash-myproject. That all to be reviewd in tmp/work subfolder of my
build folder. So, that all worked out rather well.
If I afterwards run the step to create the root file system
(populate_rootfs), only the psplash-raspberry package seems to be
installed: There is only
/usr/bin/psplash-raspberry but there is no /usr/bin/psplash-myproject.

Copying the psplash-myproject binary to the raspberry manually and
setting up everything allows to display my image.

I also tried to deactivate the original recipe from
meta-raspberry/recipes-core/psplash by using BBMASK. This, however leads
to an error message during bitbake complaining that the RDEPENDENCY
psplash-raspberry can not be resoved.

So here are the questions:
1) Why my version of the psplash executable - even though it was built -
is not installed in the root fs?
2) I have been able to review the logs from build steps and almost
everything related to the package creation in tmp/work subfolder of my
build project. But how can I see which packages are installed during the
populate_rootfs step? There seems to be no dedicated log file.

I'd appreciate any assistance.

Thank you and best regards

Hauke


