Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99130E013B7
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 13:37:47 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:35000 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1T4HgO-0003lU-JB
	for yocto@yoctoproject.org; Wed, 22 Aug 2012 16:37:44 -0400
Date: Wed, 22 Aug 2012 16:37:44 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1208221629150.20737@oneiric>
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
Subject: dev manual section on "customizing images" needs serious adjustment
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
X-List-Received-Date: Wed, 22 Aug 2012 20:37:47 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  from here:

http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#usingpoky-extend-customimage-custombb

a couple gripes.

  end of 4.2.1 suggests

  IMAGE_INSTALL += "strace"

when creating a new image .bb file.  as i read it, the docs currently
suggest

  IMAGE_INSTALL_append = " strace"

when adding to your local.conf, and i don't think it's sufficiently
clear to the reader the distinction between "+=" and "_append", and
when to use one or the other.  and reading the source doesn't help
since it bounces back and forth constantly.  is this clarified
anywhere?

  a bigger gripe for me is this:

One way to get additional software into an image is to create a
custom image. The following example shows the form for the two lines
you need:

     IMAGE_INSTALL = "task-core-x11-base package1 package2"

     inherit core-image

no.  that is not a way to get "additional" software into an image, it
is a way to *override* core-image.bbclass's conditional setting of:

  IMAGE_INSTALL ?= "${CORE_IMAGE_BASE_INSTALL}"

which i think is overly confusing.  in general, i'm really unhappy
with the number of image definitions that explicitly set
IMAGE_INSTALL, *then* inherit core-image.  the potential to mislead
the reader as to what's happening is really overwhelming.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================




