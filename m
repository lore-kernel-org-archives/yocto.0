Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id AB5954C800A1
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 17:01:10 -0500 (CDT)
Received: from [128.224.252.2] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1QhTy1-0000kh-GF; Thu, 14 Jul 2011 18:01:09 -0400
Date: Thu, 14 Jul 2011 18:01:04 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237903146B@ORSMSX101.amr.corp.intel.com>
Message-ID: <alpine.DEB.2.02.1107141800140.14563@localhost6.localdomain6>
References: <alpine.DEB.2.02.1107141729570.7692@localhost6.localdomain6>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237903146B@ORSMSX101.amr.corp.intel.com>
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
X-List-Received-Date: Thu, 14 Jul 2011 22:01:10 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 14 Jul 2011, Rifenbark, Scott M wrote:

> Robert,
>
> My understanding was that the target for this sample command could
> not be 'core-image-sato' for the QS version on the website, which
> supports Bernard.  Maybe someone out there has a bit more
> information on details to your question.
>
> ScottR
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
> Sent: Thursday, July 14, 2011 2:32 PM
> To: Yocto discussion list
> Subject: [yocto] why does quick start guide refer to non-provided "poky-image-sato"?
>
>
>   maybe i'm misreading something, but the yocto QS guide provides the
> sample command:
>
>   $ bitbake -k poky-image-sato
>
> however, nothing provides that target.  i can see the git log entry:
>
> commit 1947b17478187bb623da74484747e470ce42d206
> Author: Scott Rifenbark <scott.m.rifenbark@intel.com>
> Date:   Tue May 10 12:50:36 2011 -0500
>
>     documentation/yocto-project-qs/yocto-project-qs.xml: changed build command
>
>     The command used in the example to build an image was using
>     'bitbake core-image-sato', which is only available in master and
>     not Bernard.  So, I changed the command to be 'bitbake poky-image-sato'
>     at Dave Stewart's request.  He located and pointed out the error.
>
>     (From yocto-docs rev: 3fa83550aaec5a3549825814a77fa7a823a2daea)
>
>     Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
>     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>
> but it seems that "core-image-sato" is perfectly valid, at least at
> the moment.  clarification?

  currently, scripts/oe-setup-builddir lists one of the common targets
as "core-image-sato", so certainly *something* is out of sync.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

