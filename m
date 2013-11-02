Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC7CAE0052B
	for <yocto@yoctoproject.org>; Sat,  2 Nov 2013 11:38:17 -0700 (PDT)
Received: from [173.34.6.101] (port=41921 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Vcg5P-0004OI-Gu; Sat, 02 Nov 2013 14:38:15 -0400
Date: Sat, 2 Nov 2013 14:38:10 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Martin Jansa <martin.jansa@gmail.com>
In-Reply-To: <20131102181638.GC5768@jama>
Message-ID: <alpine.DEB.2.02.1311021437340.26326@oneiric>
References: <alpine.DEB.2.02.1311021306510.26003@oneiric>
	<20131102181638.GC5768@jama>
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
Subject: Re: so how does PACKAGECONFIG really work?
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
X-List-Received-Date: Sat, 02 Nov 2013 18:38:18 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 2 Nov 2013, Martin Jansa wrote:

> On Sat, Nov 02, 2013 at 01:15:04PM -0400, Robert P. J. Day wrote:
> >
> >   most of the way thru the variable glossary and this one confuses me.
> > from here:
> >
> > http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-PACKAGECONFIG
> >
> > we have:
> >
> > "This variable provides a means of enabling or disabling features of a
> > recipe on a per-recipe basis. PACKAGECONFIG blocks are defined in
> > recipes when you specify features and then arguments that define
> > feature behaviors. Here is the basic block structure:
> >
> >      PACKAGECONFIG ??= "f1 f2 f3 ..."
> >      PACKAGECONFIG[f1] = "--with-f1,--without-f1,build-deps-f1,rt-deps-f1"
> >      PACKAGECONFIG[f2] = "--with-f2,--without-f2,build-deps-f2,rt-deps-f2"
> >      PACKAGECONFIG[f3] = "--with-f3,--without-f3,build-deps-f3,rt-deps-f3"
> >
> > which *seems* to suggest that you must first set PACKAGECONFIG to the
> > list of features, but i see numerous examples that don't seem to obey
> > that condition.
>
> Not all features, but *enabled* features.

  ah, gotcha, thanks.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

