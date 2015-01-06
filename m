Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FED9E0082D; Tue,  6 Jan 2015 06:44:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A92EE00344
	for <yocto@yoctoproject.org>; Tue,  6 Jan 2015 06:44:30 -0800 (PST)
Received: from [70.30.87.145] (port=35901 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Y8VMx-0001di-Co
	for yocto@yoctoproject.org; Tue, 06 Jan 2015 09:44:27 -0500
Date: Tue, 6 Jan 2015 09:44:20 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1501060937470.17584@localhost>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
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
Subject: section 5.2.3, dev manual, would seem to need clarification
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
X-List-Received-Date: Tue, 06 Jan 2015 14:44:35 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  still poring over the dev manual, and in section 5.2.3:

"You can also customize an image by creating a custom recipe that
defines additional software as part of the image. The following
example shows the form for the two lines you need:

     IMAGE_INSTALL = "packagegroup-core-x11-base package1 package2"

     inherit core-image"

but that's not what that code is doing -- defining "additional"
software. it is completely *overriding* the image content that would
be used, based on this snippet from core-image.bbclass:

  CORE_IMAGE_BASE_INSTALL = '\
    packagegroup-core-boot \
    packagegroup-base-extended \
    \
    ${CORE_IMAGE_EXTRA_INSTALL} \
    '

  CORE_IMAGE_EXTRA_INSTALL ?= ""

  IMAGE_INSTALL ?= "${CORE_IMAGE_BASE_INSTALL}"

  inherit image

as i'm sure everyone knows, explicitly setting IMAGE_INSTALL in a
recipe promptly overrides that selection of CORE_IMAGE_BASE_INSTALL,
which represents a recipe defining precisely the contents of the
image, not the "additional" software to be added to an image.

  to avoid confusion, i think it would be worth expanding the
discussion of the use of IMAGE_INSTALL and IMAGE_FEATURES in the
core-image*bb files, since new readers might not appreciate the
distinction between using "=" and using "+=" in some of those recipe
files.

  thoughts?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

