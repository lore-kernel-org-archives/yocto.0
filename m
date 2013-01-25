Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44EBCE014DD
	for <yocto@yoctoproject.org>; Fri, 25 Jan 2013 01:06:22 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:46816 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TyfEq-0006FT-9Y; Fri, 25 Jan 2013 04:06:20 -0500
Date: Fri, 25 Jan 2013 04:06:14 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: daniel.schnel.extern@ifm.com
In-Reply-To: <OF78A692B9.437116F7-ONC1257AFE.00288F32-C1257AFE.0030603B@ifm-electronic.com>
Message-ID: <alpine.DEB.2.02.1301250359530.7311@oneiric>
References: <OFBE0EFB03.95C8CD96-ONC1257AFD.00580557-C1257AFD.00584DE3@ifm-electronic.com>
	<alpine.DEB.2.02.1301241412340.6204@oneiric>
	<OF78A692B9.437116F7-ONC1257AFE.00288F32-C1257AFE.0030603B@ifm-electronic.com>
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
Subject: Re: Antwort: Re: PREMIRRORS_prepend & friends
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
X-List-Received-Date: Fri, 25 Jan 2013 09:06:22 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 25 Jan 2013, daniel.schnel.extern@ifm.com wrote:

> Von:	"Robert P. J. Day" <rpjday@crashcourse.ca>
> An:	daniel.schnel.extern@ifm.com
> Kopie:	yocto@yoctoproject.org
> Datum:	24.01.2013 21:47
> Betreff:	Re: [yocto] PREMIRRORS_prepend & friends
> Gesendet von:	yocto-bounces@yoctoproject.org
>
>
>
> On Thu, 24 Jan 2013, daniel.schnel.extern@ifm.com wrote:
>
> >
> > Hi,
> >
> > after hours of trying and googling I finally make my first coming out
> here
> > on this list to get some help with PREMIRRORS_prepend & friends.So please
> > be friendly ;)
> >
> > I want to setup local mirrors for our yocto build for reproducability
> > purposes. I am using ELDK-5.2.1 which is based on yocto-1.2
> >
> > I have made the following settings in my local.conf:
> >
> > PREMIRRORS_prepend = "\
> >      git://.*/.*   git://git@dettlx79: \n \
> >      ftp://.*/.* http://dettlx79/sources \n \
> >      http://.*/.* http://dettlx79/sources \n \
> >      https://.*/.* http://dettlx79/sources \n \"
> >
> >
> > BB_FETCH_PREMIRRORONLY = "1"
>
>   ... snip ...
>
> i documented how i set up my own local mirror here:
>
> http://www.crashcourse.ca/wiki/index.php/OE_Creating_your_%22own_mirror%22
>
> it's all based on eventually storing tarballs of the sources, no
> matter how you fetched the original sources.  is that what you're
> after for reproducibility?
>
>
>
> We want to guarantee even after +5 years or so that the bits of our
> binaries are the same whenever we hit the build trigger. In my eyes
> this can only be achieved if the sources are archived via revision
> control system, because otherwise we would be dependent on archives
> and their filename always staying unmodified over time. This is a
> policy outside of our realm and so a revision control system would
> get this straight.

  that makes no sense to me.  what could be more reliable than keeping
your own copies of the relevant tarballs to guarantee that you always
use exactly the same source for every build?  how does leaving that
source in a revision control system make it any more reproducible?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

