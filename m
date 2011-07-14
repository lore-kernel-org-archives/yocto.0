Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B13A24C800A1
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 17:24:40 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Jul 2011 15:24:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,531,1304319600"; d="scan'208";a="26011772"
Received: from vorpal.jf.intel.com (HELO [10.7.199.64]) ([10.7.199.64])
	by orsmga002.jf.intel.com with ESMTP; 14 Jul 2011 15:24:28 -0700
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Jul 2011 15:28:51 -0700
In-Reply-To: <alpine.DEB.2.02.1107141800140.14563@localhost6.localdomain6>
References: <alpine.DEB.2.02.1107141729570.7692@localhost6.localdomain6>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237903146B@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1107141800140.14563@localhost6.localdomain6>
X-Mailer: Evolution 3.0.2 (3.0.2-3.fc15) 
Message-ID: <1310682531.7553.2.camel@vorpal.jf.intel.com>
Mime-Version: 1.0
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
X-List-Received-Date: Thu, 14 Jul 2011 22:24:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-07-14 at 18:01 -0400, Robert P. J. Day wrote:
> On Thu, 14 Jul 2011, Rifenbark, Scott M wrote:
> 
> > Robert,
> >
> > My understanding was that the target for this sample command could
> > not be 'core-image-sato' for the QS version on the website, which
> > supports Bernard.  Maybe someone out there has a bit more
> > information on details to your question.
> >
> > ScottR
> >
> > -----Original Message-----
> > From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
> > Sent: Thursday, July 14, 2011 2:32 PM
> > To: Yocto discussion list
> > Subject: [yocto] why does quick start guide refer to non-provided "poky-image-sato"?
> >
> >
> >   maybe i'm misreading something, but the yocto QS guide provides the
> > sample command:
> >
> >   $ bitbake -k poky-image-sato
> >
> > however, nothing provides that target.  i can see the git log entry:
> >
> > commit 1947b17478187bb623da74484747e470ce42d206
> > Author: Scott Rifenbark <scott.m.rifenbark@intel.com>
> > Date:   Tue May 10 12:50:36 2011 -0500
> >
> >     documentation/yocto-project-qs/yocto-project-qs.xml: changed build command
> >
> >     The command used in the example to build an image was using
> >     'bitbake core-image-sato', which is only available in master and
> >     not Bernard.  So, I changed the command to be 'bitbake poky-image-sato'
> >     at Dave Stewart's request.  He located and pointed out the error.
> >
> >     (From yocto-docs rev: 3fa83550aaec5a3549825814a77fa7a823a2daea)
> >
> >     Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
> >     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> >
> > but it seems that "core-image-sato" is perfectly valid, at least at
> > the moment.  clarification?
> 
>   currently, scripts/oe-setup-builddir lists one of the common targets
> as "core-image-sato", so certainly *something* is out of sync.

As I understand it documentation repository updates are reflected on the
website so the docs tend to reflect the released version.

It would be nice to be able to provide development & release
documentation but I can't see it happening any time soon.

Joshua
-- 
Joshua Lock
        Yocto Project "Johannes Factotum"
        Intel Open Source Technology Centre


