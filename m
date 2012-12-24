Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17C29E006B4
	for <yocto@yoctoproject.org>; Mon, 24 Dec 2012 08:28:32 -0800 (PST)
Received: from wnpgmb0903w-ds01-73-59.dynamic.mtsallstream.net
	([207.161.73.59]:38632 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TnAtC-0006ON-LD
	for yocto@yoctoproject.org; Mon, 24 Dec 2012 11:28:30 -0500
Date: Mon, 24 Dec 2012 10:28:24 -0600 (CST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1212241018290.21944@oneiric>
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
Subject: what's the rationale for kern-tools-native bbappend in poky-extras?
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
X-List-Received-Date: Mon, 24 Dec 2012 16:28:32 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


 i just noticed, in the poky-extras layer,
kern-tools-native_git.bbappend, which describes itself as for "local
kern-tools work".

  is there a use case for this?  oe-core already supplies
kern-tools-native, and that bbappend appears to simply let the
developer work with the head of kern-tools rather than a fixed SRCREV.

  so is it just providing the ability to work with the dev source for
developers who want the bleeding edge?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

