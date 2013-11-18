Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F361FE00530
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2013 03:23:48 -0800 (PST)
Received: from [69.196.158.250] (port=48814 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1ViMvh-0007Gn-W1; Mon, 18 Nov 2013 06:23:46 -0500
Date: Mon, 18 Nov 2013 06:23:43 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <3439049.gDsLHNyZCo@helios>
Message-ID: <alpine.DEB.2.02.1311180616510.4910@oneiric>
References: <alpine.DEB.2.02.1311170415270.16236@oneiric>
	<CABcZANkx+EgeVp2h-enLxSZGh7XV1607fRdVFidoJhkRnqbnjA@mail.gmail.com>
	<alpine.DEB.2.02.1311171105010.23270@oneiric>
	<3439049.gDsLHNyZCo@helios>
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
Cc: yocto@yoctoproject.org, Chris Larson <clarson@kergoth.com>
Subject: Re: why is "package-management" defined as a PACKAGE_GROUP?
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
X-List-Received-Date: Mon, 18 Nov 2013 11:23:50 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-153870013-1384773825=:4910"

--8323329-153870013-1384773825=:4910
Content-Type: TEXT/PLAIN; charset=utf-8
Content-Transfer-Encoding: 8BIT

On Mon, 18 Nov 2013, Paul Eggleton wrote:

> Hi Robert,
>
> On Sunday 17 November 2013 11:17:13 Robert P. J. Day wrote:
> > On Sun, 17 Nov 2013, Chris Larson wrote:
> >
> > ... huge snip that i hope won't be necessary ...
> >
> > > This test you did makes no sense. Of course it’s in IMAGE_FEATURES,
> > > you put it there. What you didn’t check is whether
> > > ${ROOTFS_PKGMANAGE} ended up being installed in the image, which it
> > > won’t be.
> >
> >   i think i see my basic and fatal misunderstanding, and if you can
> > tolerate one more post, i want to make sure i know what i did wrong as
> > i want to write this up and i want to be accurate.
> >
> >   as i understood it (apparently incorrectly), IMAGE_FEATURES fell
> > into two categories:
> >
> >   1) actual package groups, as defined in core-image.bbclass, as in:
> >
> > PACKAGE_GROUP_x11 = "packagegroup-core-x11"
> > PACKAGE_GROUP_x11-base = "packagegroup-core-x11-base"
> > PACKAGE_GROUP_x11-sato = "packagegroup-core-x11-sato"
>
> As I keep saying, these aren't package groups despite the name of
> the variable. Please stop calling them that. All they say is that if
> "x11" is present in IMAGE_FEATURES, bring in packagegroup-core-x11.
> The fact that these *do* point to actual package groups as packages
> is pretty much incidental.

  yes, i think i finally figured it out, and it was that variable name
prefix "PACKAGE_GROUP" that kept throwing me. in fact, it might have
been clearer if the terminology used had been:

IMAGE_FEATURE_x11 = "... package list for feature x11 ..."
IMAGE_FEATURE_x11-base = "... package list for feature x11-base ..."

etc, etc. so it's finally sunk in that, no, there's nothing magic
about a "packagegroup", it's just a way of abbreviating a package list
corresponding to a value in IMAGE_FEATURES.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323329-153870013-1384773825=:4910--
