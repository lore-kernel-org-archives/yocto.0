Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74BABE0044A
	for <yocto@yoctoproject.org>; Wed,  2 May 2012 08:23:02 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1SPbOO-0003xr-EA; Wed, 02 May 2012 11:23:00 -0400
Date: Wed, 2 May 2012 11:22:54 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: "Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>
In-Reply-To: <CALZ2gZXUVzF6zrMPEb=aWd9Wmmpv+i+b5-+FtzFmaWJmutSZuQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1205021122330.22325@oneiric>
References: <54272CA3-A67B-4CA5-9AE5-C9E2D44FC2B3@gmail.com>
	<CALZ2gZXUVzF6zrMPEb=aWd9Wmmpv+i+b5-+FtzFmaWJmutSZuQ@mail.gmail.com>
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
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Is it not necessary to sudo dpkg-reconfigure dash with Poky 1.2 on Ubuntu 12.04
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
X-List-Received-Date: Wed, 02 May 2012 15:23:02 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 2 May 2012, Osier-mixon, Jeffrey wrote:

> Good catch. I'm still installing 12.04 and can't check at the
> moment, but there is an easy way to tell:
>
> file /bin/sh
>
> If it points to bash you should be fine, if it points to dash then
> you'll need to reconfigure. Please let me know the results and I'll
> make sure it gets documented either way.

  i was fairly sure this was no longer an issue.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

