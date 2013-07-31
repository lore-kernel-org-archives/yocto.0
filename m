Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5B9CE00407
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 02:11:44 -0700 (PDT)
Received: from [174.115.5.73] (port=39966 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1V4SRb-0005dY-Mp; Wed, 31 Jul 2013 05:11:43 -0400
Date: Wed, 31 Jul 2013 05:11:40 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <1523931.rJmFDsbDNv@helios>
Message-ID: <alpine.DEB.2.02.1307310509410.13616@oneiric>
References: <alpine.DEB.2.02.1307300512280.7428@oneiric>
	<1523931.rJmFDsbDNv@helios>
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
Subject: Re: any ETA for when the downloadable toolchains will be updated?
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
X-List-Received-Date: Wed, 31 Jul 2013 09:11:48 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 30 Jul 2013, Paul Eggleton wrote:

> On Tuesday 30 July 2013 05:14:37 Robert P. J. Day wrote:
> >   based simply on the timestamps, it would appear that the toolchains
> > here:
> >
> > http://downloads.yoctoproject.org/releases/yocto/yocto-1.4.1/toolchain/
> >
> > still contain the script bug involving the now-dead "find" option in
> > fedora 19 where -perm no longer accepts a value starting with "+". is
> > there any plan to replace those packages with updated versions that
> > work properly on fedora 19?
>
> The fix in question has only just been backported to the dylan
> branch. We're currently figuring out when the next 1.4 point release
> (1.4.2) should be scheduled, the current thinking is mid-August.

  just started downloading the nightly build and the arm .sh script is
*noticeably* larger than the older 1.4.1 versions -- 270M versus 160M.
what else is packed in there? (i can't check yet as the download is in
progress, and rogers is determined to screw up every download i try.)

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

