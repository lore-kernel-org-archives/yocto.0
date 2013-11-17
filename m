Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5068E0050B
	for <yocto@yoctoproject.org>; Sun, 17 Nov 2013 08:47:12 -0800 (PST)
Received: from [173.34.6.101] (port=38168 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Vi5V7-00056L-CT; Sun, 17 Nov 2013 11:47:09 -0500
Date: Sun, 17 Nov 2013 11:46:57 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Chris Larson <clarson@kergoth.com>
In-Reply-To: <CABcZANnKfrXQBWietG5NXG2OEoM__ht9qj0zuPg=ViUTZ4Xe6Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1311171144290.23665@oneiric>
References: <alpine.DEB.2.02.1311170415270.16236@oneiric>
	<1530936.srmMeFasFY@helios>
	<alpine.DEB.2.02.1311170626370.18680@oneiric>
	<13190111.cIECxPcJYb@helios>
	<alpine.DEB.2.02.1311170734160.20107@oneiric>
	<CABcZANkx+EgeVp2h-enLxSZGh7XV1607fRdVFidoJhkRnqbnjA@mail.gmail.com>
	<alpine.DEB.2.02.1311171105010.23270@oneiric>
	<CABcZANnKfrXQBWietG5NXG2OEoM__ht9qj0zuPg=ViUTZ4Xe6Q@mail.gmail.com>
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
	yocto <yocto@yoctoproject.org>
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
X-List-Received-Date: Sun, 17 Nov 2013 16:47:20 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-10940993-1384706819=:23665"

--8323329-10940993-1384706819=:23665
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sun, 17 Nov 2013, Chris Larson wrote:

>
> On Sun, Nov 17, 2013 at 9:17 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>       $ bb show -r core-image-base ROOTFS_PKGMANAGE
>       Parsing recipes..done.
>       # ROOTFS_PKGMANAGE=opkg opkg-collateral ${EXTRAOPKGCONFIG}
>       ROOTFS_PKGMANAGE="opkg opkg-collateral poky-feed-config-opkg"
>       $
>
>       but that feature *also* pulls in additional processing as it's defined
>       in image.bbclass.
>
>
> If you’re referring to the bootstrap bits, technically that doesn’t
> do something when it’s included in image features, it does something
> when it’s *not* included in image features — include
> ROOTFS_PKGMANAGE_BOOTSTRAP instead of ROOTFS_PKGMANAGE.

  ah, right ... but i did identify my earlier confusion, that
"package-management" is indeed a valid packagegroup, i just foolishly
didn't understand that. thanks.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323329-10940993-1384706819=:23665--
