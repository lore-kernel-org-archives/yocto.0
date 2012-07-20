Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAEFFE00288
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 10:13:35 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:41185 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1SsGli-00051d-0n; Fri, 20 Jul 2012 13:13:34 -0400
Date: Fri, 20 Jul 2012 13:13:24 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE20AD3BE5B@ORSMSX105.amr.corp.intel.com>
Message-ID: <alpine.DEB.2.02.1207201313060.7846@oneiric>
References: <D956029D25CF204F948EA0FB515E1EE20AD3AA4C@ORSMSX105.amr.corp.intel.com>
	<5599187.lbIDYtH909@helios>
	<D956029D25CF204F948EA0FB515E1EE20AD3BE5B@ORSMSX105.amr.corp.intel.com>
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
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to set environment variables inside a recipe?
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
X-List-Received-Date: Fri, 20 Jul 2012 17:13:36 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 20 Jul 2012, Bodke, Kishore K wrote:

>
>
> >-----Original Message-----
> >From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> >Sent: Friday, July 20, 2012 3:14 AM
> >To: Bodke, Kishore K
> >Cc: yocto@yoctoproject.org
> >Subject: Re: [yocto] How to set environment variables inside a recipe?
> >
> >On Thursday 19 July 2012 18:16:45 Bodke, Kishore K wrote:
> >> The driver needs a bunch of environmental variables to be set ( specific to
> >> driver only ) to build.
> >>
> >> Right now to move forward I am doing like below in my recipe to build it.
> >>
> >> export  AAA = "${S}"
> >> export BBB = "${B}"
> >> export CCC = "{S}/build-system"
> >> export DDD = "{S}/env-files"
> >>
> >> Is this right way to do?  Are there any other ways to set the environment
> >> variables inside a recipe?
> >
> >This is valid; I would recommend setting them within the function though (e.g.
> >do_configure) rather than at the recipe level, assuming that works for your
> >case.
>
> If I set outside the do_configure it builds fine.
> But If I do inside
> do_confiugre() {
>  export  AAA = "${S}"
>  export BBB = "${B}"
>  export CCC = "{S}/build-system"
>  export DDD = "{S}/env-files"
> }
>
> run.do_configure.20832: line 78: export: `=': not a valid identifier
> NOTE: task do_configure: Failed

  pretty sure you can't have spaces around the "=".

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

