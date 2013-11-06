Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20D8EE01793
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2013 12:41:11 -0800 (PST)
Received: from [173.34.6.101] (port=36629 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Ve9uY-0006tu-0x; Wed, 06 Nov 2013 15:41:10 -0500
Date: Wed, 6 Nov 2013 15:41:02 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Saul Wold <sgw@linux.intel.com>
In-Reply-To: <527AA8B5.8060603@linux.intel.com>
Message-ID: <alpine.DEB.2.02.1311061540140.23267@oneiric>
References: <alpine.DEB.2.02.1311061346180.25975@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F44CAE@ORSMSX101.amr.corp.intel.com>
	<527AA8B5.8060603@linux.intel.com>
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
Subject: Re: FW: curious about ref manual, sec 6.1.11, oe-init-build-env-memres
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
X-List-Received-Date: Wed, 06 Nov 2013 20:41:12 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 6 Nov 2013, Saul Wold wrote:

> On 11/06/2013 11:11 AM, Rifenbark, Scott M wrote:
> > Anyone know this?
> >
> > > -----Original Message-----
> > > From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
> > > Sent: Wednesday, November 06, 2013 10:48 AM
> > > To: Rifenbark, Scott M
> > > Subject: curious about ref manual, sec 6.1.11, oe-init-build-env-memres
> > >
> > >
> > >   i've never used that memory-resident version of bitbake -- it's not
> > > clear from
> > > that section whether you need to start bitbake running before you run that
> > > script.
> > >
> Running that scripts will start the server at the default port of 12345 and
> setup the default "build" directory.

  i suspected as much, but the way that section is worded, that isn't
clear. thanks.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

