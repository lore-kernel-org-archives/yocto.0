Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id D8EB24C800AB
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 18:11:06 -0500 (CDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.2.77] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1QhV3h-0003xg-Su; Thu, 14 Jul 2011 19:11:05 -0400
Date: Thu, 14 Jul 2011 19:10:57 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Joshua Lock <josh@linux.intel.com>
In-Reply-To: <1310682531.7553.2.camel@vorpal.jf.intel.com>
Message-ID: <alpine.DEB.2.02.1107141854400.3059@localhost6.localdomain6>
References: <alpine.DEB.2.02.1107141729570.7692@localhost6.localdomain6>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237903146B@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1107141800140.14563@localhost6.localdomain6>
	<1310682531.7553.2.camel@vorpal.jf.intel.com>
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
Cc: yocto@yoctoproject.org
Subject: Re: why does quick start guide refer to non-provided "poky-image-sato"?
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
X-List-Received-Date: Thu, 14 Jul 2011 23:11:07 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 14 Jul 2011, Joshua Lock wrote:

> As I understand it documentation repository updates are reflected on
> the website so the docs tend to reflect the released version.
>
> It would be nice to be able to provide development & release
> documentation but I can't see it happening any time soon.

  ok, that explains it but it doesn't defend it.  IMHO, any single
versioned tarball or repository checkout should always be internally
consistent, and that includes embedded documentation.  when i do a
"git pull" of any software, i expect the contents of any docs/
directory to reflect what's there.

  if you want to publicly publish the docs that reflect the last
official release, then build those docs from the appropriate git tag.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

