Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F78CE006F9
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 10:07:19 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:39775 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UUKD0-0007hx-C2
	for yocto@yoctoproject.org; Mon, 22 Apr 2013 13:07:18 -0400
Date: Mon, 22 Apr 2013 13:07:15 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1304221302120.10824@oneiric>
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
Subject: standard for doc URL links?
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
X-List-Received-Date: Mon, 22 Apr 2013 17:07:19 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  noticed the following in kernel-dev manual, if you want to link to
the glossary entry for a variable while using it in an expression,
there's:

<ulink url='&YOCTO_DOCS_REF_URL;#var-FILESEXTRAPATHS'>FILESEXTRAPATHS</ulink> := "${THISDIR}/${PN}"

  however, that really should be eventually rendered as:

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}"

but in that case, since you're appending "_prepend" to the variable
name, do you still link? or link with just the proper variable name
part? or what?

  i don't see any example of trying to combine those two features.
would you do something like:

<ulink url='&YOCTO_DOCS_REF_URL;#var-FILESEXTRAPATHS'>FILESEXTRAPATHS</ulink>_prepend := "${THISDIR}/${PN}"

is this even used?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================



