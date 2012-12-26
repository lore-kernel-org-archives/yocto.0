Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89911E014A7
	for <yocto@yoctoproject.org>; Wed, 26 Dec 2012 04:36:16 -0800 (PST)
Received: from wnpgmb0903w-ds01-73-59.dynamic.mtsallstream.net
	([207.161.73.59]:39091 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TnqDX-0008FP-RT
	for yocto@yoctoproject.org; Wed, 26 Dec 2012 07:36:15 -0500
Date: Wed, 26 Dec 2012 06:36:12 -0600 (CST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1212260629440.5217@oneiric>
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
Subject: clarifying terminology: "tasks" and "images"
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
X-List-Received-Date: Wed, 26 Dec 2012 12:36:16 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  a couple observations about ambiguous use of terminology.  in ch 3
of dev manual, "yocto project terms":

http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#yocto-project-terms

i first assume that the "Tasks" definition should be rebranded as
"Package Groups", no?  and that "tasks" should perhaps be defined as
bitbake tasks such as fetch, unpack, etc, etc.

  also, the term "image" is used in a confusing way.  the definition
in that same list is confusing as the definition reads "the result
produced when BitBake processes a given collection of recipes and
related metadata", yet the link to the "Images" chapter in the ref
manual is to images such as core-image-base, core-image-minimal and so
on.  this is pretty much guaranteed to confuse readers.

  it would have made much more sense to call the output of the bitbake
build step "artifacts", which is in fact the term used in a number of
places in the development manual and which is the perfect word for
that.

  thoughts?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

