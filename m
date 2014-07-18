Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28188E003FA; Fri, 18 Jul 2014 11:55:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.80.204.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp486.redcondor.net (smtp486.redcondor.net [208.80.204.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14592E00342
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 11:55:42 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp486.redcondor.net ({6695537a-536a-45f9-a249-877c85428649})
	via TCP (outbound) with ESMTPS id 20140718185541681
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 18:55:41 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=50044 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1X8DJf-0001RZ-H6; Fri, 18 Jul 2014 14:55:35 -0400
Date: Fri, 18 Jul 2014 14:55:32 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Christopher Larson <clarson@kergoth.com>
In-Reply-To: <CABcZANm+Nb9OKDHrvjBm-BOyWaKy5pHgZmp33F0fjAmoUQH18Q@mail.gmail.com>
Message-ID: <alpine.LFD.2.11.1407181453420.13980@localhost>
References: <53C94ACD.6010800@mlbassoc.com>
	<CABcZAN=B3uNLKrTK4j_G5Ex=9WQw3xHkidhVVR-2E-2oLpOrhw@mail.gmail.com>
	<53C9515F.1040504@mlbassoc.com>
	<alpine.LFD.2.11.1407181439030.24703@localhost>
	<CABcZANm+Nb9OKDHrvjBm-BOyWaKy5pHgZmp33F0fjAmoUQH18Q@mail.gmail.com>
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
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: yocto <yocto@yoctoproject.org>, Gary Thomas <gary@mlbassoc.com>
Subject: Re: Extending images
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
X-List-Received-Date: Fri, 18 Jul 2014 18:55:49 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 18 Jul 2014, Christopher Larson wrote:

> I really don't think this was ever safe, as it completely depended
> on how the image recipe added its bits to IMAGE_INSTALL, which could
> easily vary from image to image. I've *always* told folks to use
> IMAGE_INSTALL_append if anything, even back in oe classic :) --

  a quick grep in openembedded-core/meta shows:

$ grep -r "IMAGE_INSTALL +=" *
recipes-core/images/core-image-minimal-mtdutils.bb:IMAGE_INSTALL += "mtd-utils"
recipes-extended/images/core-image-testmaster.bb:IMAGE_INSTALL += "\
recipes-extended/images/core-image-lsb-sdk.bb:IMAGE_INSTALL += "kernel-dev"
recipes-graphics/images/core-image-directfb.bb:IMAGE_INSTALL += "\
recipes-qt/images/qt4e-demo-image.bb:IMAGE_INSTALL += "\
recipes-rt/images/core-image-rt-sdk.bb:IMAGE_INSTALL += "rt-tests hwlatdetect kernel-dev"
recipes-rt/images/core-image-rt.bb:IMAGE_INSTALL += "rt-tests hwlatdetect"
recipes-sato/images/core-image-sato-sdk.bb:IMAGE_INSTALL += "kernel-dev"
recipes-sato/images/core-image-sato.bb:IMAGE_INSTALL += "packagegroup-core-x11-sato-games"
$

  now i'm scared to look. :-)

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


