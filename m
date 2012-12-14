Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 534AEE00294
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 12:33:34 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:38106 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Tjbwr-0002F3-47; Fri, 14 Dec 2012 15:33:33 -0500
Date: Fri, 14 Dec 2012 15:33:29 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Martin Jansa <martin.jansa@gmail.com>
In-Reply-To: <20121214201540.GD8699@jama.jama.net>
Message-ID: <alpine.DEB.2.02.1212141532400.22801@oneiric>
References: <alpine.DEB.2.02.1212141442080.21542@oneiric>
	<20121214201540.GD8699@jama.jama.net>
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
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: is distro_tracking_fields.inc actually used?
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
X-List-Received-Date: Fri, 14 Dec 2012 20:33:34 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 14 Dec 2012, Martin Jansa wrote:

> On Fri, Dec 14, 2012 at 02:43:08PM -0500, Robert P. J. Day wrote:
> >
> >   from https://wiki.yoctoproject.org/wiki/Distro_Tracking
> >
> > "The Distro Tracking Fields
> > (meta/conf/distro/include/distro_tracking_fields.inc) is a location
> > for sharing information about the status of recipes and tracking
> > version information. Not all of this information can be generated
> > automatically (yet), so the manual editing is needed."
> >
> >   i don't see that file so what's the story?
>
> Why don't you use git log if you're interested in stories?
>
> git log -- meta/conf/distro/include/distro_tracking_fields.inc
> commit e8808c85a6bba8422cd82631b2bbc367543e4cdd
> Author: Saul Wold <sgw@linux.intel.com>
> Date:   Tue Jun 12 07:03:27 2012 -0700
>
>     distro_tracking_fields: move to meta-yocto as seperate files
>
>     We are going to take a phased approach of breaking up the
>     distro_tracking_fields, first is to remove it from oe-core,
>     then create new files in meta-yocto.  We are doing this because
>     the distro_tracking_fields is getting unweildly and some of
>     the data can be part of a burn down list instead continually
>     stored, thus it will get split up.
>
>     Signed-off-by: Saul Wold <sgw@linux.intel.com>
> ...
>
> ./meta-yocto/conf/distro/include/upstream_tracking.inc

  ah, quite right, my fault for not poking further.  in any event, it
would seem that that wiki page could use some updating.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

