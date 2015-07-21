Return-Path: <vm.rod25@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33F88E0096A; Tue, 21 Jul 2015 08:30:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vm.rod25[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0C38E00837
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 08:30:13 -0700 (PDT)
Received: by igvi1 with SMTP id i1so105649773igv.1
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 08:30:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=t+WfnH1AWAv/gPqRMhQkybdIc51OvWirPloduoBSDv8=;
	b=uk+OGXTvjW8SCU9samNjnCeq2dn/ah69x2s6r4eOArFeqqNZyjCzgSx9jeyGFDOvrM
	EIinUKZ1GoFRhNQzQpbe8PPmcbPmKkoKl9q05DZ2ui+xdxlQMhk+bORASZG2eUTquckb
	0vGpvZZTHreETSQX37CReqlEAT5FtA6NAcdGPVAJgAZs8alz2CHV2L1WGJL04u7qJaHq
	YeRscOSDRIoNhjgLE5vBklHKB4y44ITgbmgq5Jsqh8RAANm9TAwiv1pzQhEMzNxB2pTW
	iolqs3K1gCiFywnCom8EmLGQ1IMAnm2t9/WGmi9c+uf7GPqay7BmUUw5F6Us4sgLhFjr
	w7JQ==
MIME-Version: 1.0
X-Received: by 10.107.166.72 with SMTP id p69mr51520541ioe.65.1437492613119;
	Tue, 21 Jul 2015 08:30:13 -0700 (PDT)
Received: by 10.50.141.228 with HTTP; Tue, 21 Jul 2015 08:30:13 -0700 (PDT)
Date: Tue, 21 Jul 2015 10:30:13 -0500
Message-ID: <CAK5mteyN20HOKiGAu+YJrkdTQ==YDWV75UdLJ1Qmf59tVRs+xg@mail.gmail.com>
From: Victor Rodriguez <vm.rod25@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Why do I need to specify kernel-modules in local.conf if I did bitbake menuconfig?
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
X-List-Received-Date: Tue, 21 Jul 2015 15:30:17 -0000
Content-Type: text/plain; charset=UTF-8

Hi team

The other day I enable a module ( USB WEB CAM ) in my
core-image-minimal-xfce but I could find the module once it booted
until someone really kind toll me that you need to add the kernel
modules:

IMAGE_INSTALL_append = " kernel-modules"

Is not the expected that if you do bitbake menuconfig then enable the
module you want save it .. the module be there .. I mean thats the
reason why you did the menuconfig right ?

Is this an expected behaivor for Yocto ?

Best regards

Victor Rodriguez

