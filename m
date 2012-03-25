Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25002E013A8
	for <yocto@yoctoproject.org>; Sun, 25 Mar 2012 09:17:00 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1SBq7n-0006aW-6j
	for yocto@yoctoproject.org; Sun, 25 Mar 2012 12:16:59 -0400
Date: Sun, 25 Mar 2012 12:16:50 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1203251213170.6445@oneiric>
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
Subject: meta-x32: disagreement between ref manual and README.TXT
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
X-List-Received-Date: Sun, 25 Mar 2012 16:17:00 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  poky ref manual reads:

"As usual, use BitBake to build an image that supports the x32 psABI.
Here is an example:

     $ bitake core-image-sato

As usual, run your image using QUEM [sic]:

     $ runqemu qemux86-64 core-image-sato"

while the README.TXT file that comes with the experimental/meta-x32
layer reads:

"build
	bitbake core-image-minimal-x32

4. boot the image
	runqemu qemux86-64 core-image-minimal-x32"

  thoughts?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


