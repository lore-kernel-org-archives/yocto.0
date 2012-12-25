Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65154E002AB
	for <yocto@yoctoproject.org>; Tue, 25 Dec 2012 11:36:12 -0800 (PST)
Received: from wnpgmb0903w-ds01-73-59.dynamic.mtsallstream.net
	([207.161.73.59]:54393 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TnaIN-00033q-JY
	for yocto@yoctoproject.org; Tue, 25 Dec 2012 14:36:11 -0500
Date: Tue, 25 Dec 2012 13:36:07 -0600 (CST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
In-Reply-To: <alpine.DEB.2.02.1212251309530.4843@oneiric>
Message-ID: <alpine.DEB.2.02.1212251327120.5038@oneiric>
References: <alpine.DEB.2.02.1212251309530.4843@oneiric>
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
Subject: Re: which is the *official* yocto "download" page?
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
X-List-Received-Date: Tue, 25 Dec 2012 19:36:12 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  as one more data point to suggest that the URLs to yocto pages need
some kind of reorg, toward the bottom of section 2.2 in the dev
manual, one reads:

"Tarball Extraction: You can download any released BSP tarball from
the same download site used to get the Yocto Project release."

  the link under "download site" is
http://www.yoctoproject.org/download which, again because of
redirection, takes you here:

https://www.yoctoproject.org/download/yocto-project-13-poky-80

which is definitely inappropriate since that has nothing to do with
BSPs.

  for a number of these things, there appear to be two types of URLs.
in the case of BSPs, there's both of:

https://www.yoctoproject.org/downloads/bsp
http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/machines/

the latter obviously representing the earlier BSP download page before
the yocto web site had a total makeover.  the same can be said for the
"tools" download page -- which of these two is it?

https://www.yoctoproject.org/downloads/tools
http://downloads.yoctoproject.org/tools/

  just looking for consistency.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

