Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0690E0176F
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2013 08:39:35 -0700 (PDT)
Received: from [128.107.17.87] (port=59899 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VZN0Y-000816-VD
	for yocto@yoctoproject.org; Thu, 24 Oct 2013 11:39:35 -0400
Date: Thu, 24 Oct 2013 08:39:32 -0700 (PDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1310240832580.5411@oneiric>
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
Subject: filling in the "missing" entries in the ref manual variable glossary
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
X-List-Received-Date: Thu, 24 Oct 2013 15:39:36 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  expecting the standard reaction to be, "hey, feel free to submit a
patch :-)", i've noticed that there are (unsurprisingly) quite a
number of variables missing from the variable glossary in the ref
manual.

  just related to u-boot (which i've been messing with this morning),
here's the current situation:

http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-U

and what seems to be missing is:

  * UBOOT_ARCH
  * UBOOT_SUFFIX
  * UBOOT_BINARY
  * UBOOT_IMAGE
  * UBOOT_MAKE_TARGET
  * UBOOT_SYMLINK

short of submitting full patches for things like this, is there at
least a list we can keep track of this stuff on? i'm not sure i have
the time to submit full explanatory patches for everything i run
across, but i can at least report what's missing if that's useful.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

