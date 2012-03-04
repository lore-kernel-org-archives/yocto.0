Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7AF2E0044C
	for <yocto@yoctoproject.org>; Sun,  4 Mar 2012 08:16:46 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1S4E73-000140-Io
	for yocto@yoctoproject.org; Sun, 04 Mar 2012 11:16:45 -0500
Date: Sun, 4 Mar 2012 11:16:36 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1203041109200.9209@oneiric>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: in ref manual, images list (and other lists) appear incomplete
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 04 Mar 2012 16:16:46 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  just wandering through the yocto/poky reference manual, and it seems
that some of the lists there are missing a few entries.

  first, in the images section,

file:///home/rpjday/yocto/git/documentation/poky-ref-manual/poky-ref-manual.html#ref-images

if you run the given command:

  $ ls meta*/recipes*/images/*.bb

you'll get at least a couple more recipes directory (recipes-rt,
recipes-qt) than is mentioned there, and more image recipe files:

$ ls -1 meta*/recipes*/images/*.bb
meta-hob/recipes-core/images/hob-image.bb        <-- not listed
meta/recipes-core/images/core-image-base.bb
meta/recipes-core/images/core-image-core.bb
meta/recipes-core/images/core-image-minimal.bb
meta/recipes-core/images/core-image-minimal-dev.bb
meta/recipes-core/images/core-image-minimal-initramfs.bb
meta/recipes-core/images/core-image-minimal-mtdutils.bb
meta/recipes-core/images/self-hosted-image.bb    <-- not listed
meta/recipes-extended/images/core-image-basic.bb
meta/recipes-extended/images/core-image-lsb.bb
meta/recipes-extended/images/core-image-lsb-dev.bb
meta/recipes-extended/images/core-image-lsb-sdk.bb
meta/recipes-graphics/images/core-image-clutter.bb
meta/recipes-graphics/images/core-image-gtk-directfb.bb
meta/recipes-qt/images/qt4e-demo-image.bb       <-- not listed
meta/recipes-rt/images/core-image-rt.bb         <-- not listed
meta/recipes-rt/images/core-image-rt-sdk.bb     <-- not listed
meta/recipes-sato/images/core-image-sato.bb
meta/recipes-sato/images/core-image-sato-dev.bb
meta/recipes-sato/images/core-image-sato-sdk.bb
$

  also, in Appendix E, the various lists there look incomplete as
well.  for example, it would appear that the valid options for
DISTRO_FEATURES should include things like x11, opengl, pulseaudio and
more.

  just making observations.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

