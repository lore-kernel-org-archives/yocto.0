Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFB57E0030A
	for <yocto@yoctoproject.org>; Sun, 17 Nov 2013 08:17:27 -0800 (PST)
Received: from [173.34.6.101] (port=60015 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Vi52L-00045I-Mh; Sun, 17 Nov 2013 11:17:25 -0500
Date: Sun, 17 Nov 2013 11:17:13 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Chris Larson <clarson@kergoth.com>
In-Reply-To: <CABcZANkx+EgeVp2h-enLxSZGh7XV1607fRdVFidoJhkRnqbnjA@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1311171105010.23270@oneiric>
References: <alpine.DEB.2.02.1311170415270.16236@oneiric>
	<1530936.srmMeFasFY@helios>
	<alpine.DEB.2.02.1311170626370.18680@oneiric>
	<13190111.cIECxPcJYb@helios>
	<alpine.DEB.2.02.1311170734160.20107@oneiric>
	<CABcZANkx+EgeVp2h-enLxSZGh7XV1607fRdVFidoJhkRnqbnjA@mail.gmail.com>
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
X-List-Received-Date: Sun, 17 Nov 2013 16:17:28 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-182535960-1384705036=:23270"

--8323329-182535960-1384705036=:23270
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sun, 17 Nov 2013, Chris Larson wrote:

... huge snip that i hope won't be necessary ...

> This test you did makes no sense. Of course it’s in IMAGE_FEATURES,
> you put it there. What you didn’t check is whether
> ${ROOTFS_PKGMANAGE} ended up being installed in the image, which it
> won’t be.

  i think i see my basic and fatal misunderstanding, and if you can
tolerate one more post, i want to make sure i know what i did wrong as
i want to write this up and i want to be accurate.

  as i understood it (apparently incorrectly), IMAGE_FEATURES fell
into two categories:

  1) actual package groups, as defined in core-image.bbclass, as in:

PACKAGE_GROUP_x11 = "packagegroup-core-x11"
PACKAGE_GROUP_x11-base = "packagegroup-core-x11-base"
PACKAGE_GROUP_x11-sato = "packagegroup-core-x11-sato"

  2) non-package group values that were processed independently by
code in image.bbclass, such as "read-only-rootfs" or "debug-tweaks"

  what i *thought* was that each setting had to be one *or* the other,
but not both. so when i saw code in image.bbclass that was handling
the "package-management" IMAGE_FEATURE, i immediately assumed that
meant it couldn't *also* represent an actual package group. is that
where i went wrong?

  so, in this one case for the IMAGE FEATURE "package-management",
there is an actual package group defined as:

PACKAGE_GROUP_package-management = "${ROOTFS_PKGMANAGE}"

which represents the packages:

$ bb show -r core-image-base ROOTFS_PKGMANAGE
Parsing recipes..done.
# ROOTFS_PKGMANAGE=opkg opkg-collateral ${EXTRAOPKGCONFIG}
ROOTFS_PKGMANAGE="opkg opkg-collateral poky-feed-config-opkg"
$

but that feature *also* pulls in additional processing as it's defined
in image.bbclass.

  have i finally got it right?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323329-182535960-1384705036=:23270--
