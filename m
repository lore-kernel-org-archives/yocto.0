Return-Path: <ashcharles@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6DD2E008DC; Fri, 17 Apr 2015 14:44:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ashcharles[at]gmail.com)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AACB8E0085D
	for <yocto@yoctoproject.org>; Fri, 17 Apr 2015 14:44:00 -0700 (PDT)
Received: by igbpi8 with SMTP id pi8so33223199igb.0
	for <yocto@yoctoproject.org>; Fri, 17 Apr 2015 14:43:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=zKkj5UtzRRAp4/1jvCHfI/t6xuvE7+rfghQNsEsHdJM=;
	b=OzL7ChzRpXBbBAO5153XCbI28q4V06UuupcX7sjf65sgk5WVLvSnlYdZBJcBkGCstL
	Rr6qQndS6H7hSryYgJ4QJ6Gpz8N9gj860z9FfQNz2Tqo4wgkrv96lgLT5gxKTpT0Yrpb
	4bIkp21L1uzXFbpuuaQ02t5hly2Y+kQQeCZPPqMhjl4w4DCw43Ria5j0NeLWHQEKhbCA
	Q7mtKiAJxrJ5VcCNfiemExsNlQcYj2H5rNRTvG4xnppmVLcfaxT61cDuaju1Cm6YHdAL
	YXKArbjStMlexkJIJjMJYqQO/v4YSSVUlwNJ0WcsE6dhUBnUmAtQ/OC5TIAuNfYRbDOz
	R0yw==
X-Received: by 10.50.50.74 with SMTP id a10mr5675147igo.21.1429307039709; Fri,
	17 Apr 2015 14:43:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.138.144 with HTTP; Fri, 17 Apr 2015 14:43:29 -0700 (PDT)
From: Ash Charles <ashcharles@gmail.com>
Date: Fri, 17 Apr 2015 14:43:29 -0700
Message-ID: <CAK8F28niLBdUNbev27+TGL3CmpmzksR5QLNmQ2OieNZQf85t=A@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Using the yocto version of createrepo (want the MISSINGOK flag)
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
X-List-Received-Date: Fri, 17 Apr 2015 21:44:03 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I'm hosting an RPM based package repository on a different server than
the build machine; I've been use the distro's version of the
createrepo tool to keep the package index up to date.  The Yocto
version of the createrepo tool has some customizations notably adding
a 'missingok' flag to handle 'RRECOMMENDED' packages which is really
useful.

How might I use the Yocto version of createrepo on my package server
(or have I just got this all backwards)?  These three options jumped
to mind:

1. Do a minimal yocto install on the server and use the createrepo
tool from the build.  If so, is there a way to use the native/host
tools built by Yocto?  I've used a toolchain before but never python
tools like createrepo.  At this point, I figured I'd just tweak the
run.do_package_index script (if I can figure out what nativepython is
;-) ).

2. BBCLASSEXTEND nativesdk for createrepo and add it to the
buildtools-tarball.bb recipe.  This feels like the best option.  But
the python environment doesn't get picked up properly...e.g.
Traceback (most recent call last):
  File "/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/share/createrepo/genpkgmetadata.py",
line 26, in <module>
    import rpm
ImportError: No module named rpm


3.  Totally outside of Yocto, patch and use a source version
createrepo (or a speedy version like createrepo_c).  I think this
means also patching RPM support on the system to detect the
RPMSENSE_MISSINGOK flag.


Thanks for any advice and suggestions!
--Ash

