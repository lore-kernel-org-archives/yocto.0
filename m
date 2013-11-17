Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EF89E002AC
	for <yocto@yoctoproject.org>; Sun, 17 Nov 2013 07:28:45 -0800 (PST)
Received: from [173.34.6.101] (port=57798 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Vi4HD-0002Fz-VP; Sun, 17 Nov 2013 10:28:44 -0500
Date: Sun, 17 Nov 2013 10:28:31 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Chris Larson <clarson@kergoth.com>
In-Reply-To: <CABcZANkx+EgeVp2h-enLxSZGh7XV1607fRdVFidoJhkRnqbnjA@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1311171027550.22723@oneiric>
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
X-List-Received-Date: Sun, 17 Nov 2013 15:28:46 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-842780829-1384702114=:22723"

--8323329-842780829-1384702114=:22723
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sun, 17 Nov 2013, Chris Larson wrote:

>
> On Sun, Nov 17, 2013 at 5:45 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>         leaving aside the bug report, i am now hopelessly confused. are you
>       saying this line:
>
>       PACKAGE_GROUP_package-management = "${ROOTFS_PKGMANAGE}"
>
>       from core-image.bbclass is currently *necessary* to properly support
>       the image feature of "package-management" in core images? i don't see
>       how or why. using that logic, you'd also need lines of that form for
>       "read-only-rootfs" and "debug-tweaks", which certainly don't exist.
>
>         are you sure you're answering the question i'm asking?
>
>       rday
>
>       p.s.  i just don't see how that line has any value based on a few
>       simple tests i ran. using dora to build for a beagle xm, i can display
>       some variables:
>
>       $ bb show -r core-image-base IMAGE_FEATURES
>       Parsing recipes..done.
>       IMAGE_FEATURES="debug-tweaks splash"
>       $ bb show -r core-image-base
>       EXTRA_IMAGE_FEATURES
>       Parsing recipes..done.
>       EXTRA_IMAGE_FEATURES="debug-tweaks"
>       $
>
>       which looks correct. now let's edit my local.conf and change:
>
>       EXTRA_IMAGE_FEATURES = "debug-tweaks"
>
>       to
>
>       EXTRA_IMAGE_FEATURES = "debug-tweaks package-management"
>
>       save, exit and verify:
>
>       $ bb show -r core-image-base IMAGE_FEATURES
>       Parsing recipes..done.
>       IMAGE_FEATURES="debug-tweaks splash package-management"
>       $ bb show -r core-image-base
>       EXTRA_IMAGE_FEATURES
>       Parsing recipes..done.
>       EXTRA_IMAGE_FEATURES="debug-tweaks package-management"
>
>       good. and now, let's edit core-image.bbclass and remove the line:
>
>       PACKAGE_GROUP_package-management = "${ROOTFS_PKGMANAGE}"
>
>       save, exit and test:
>
>       $ bb show -r core-image-base IMAGE_FEATURES
>       Parsing recipes..done.
>       IMAGE_FEATURES="debug-tweaks splash package-management"
>       $ bb show -r core-image-base
>       EXTRA_IMAGE_FEATURES
>       Parsing recipes..done.
>       EXTRA_IMAGE_FEATURES="debug-tweaks package-management"
>       $
>
>         seems like the "package-management" image feature is being picked up
>       just fine.
>
>
> This test you did makes no sense. Of course it’s in IMAGE_FEATURES,
> you put it there. What you didn’t check is whether
> ${ROOTFS_PKGMANAGE} ended up being installed in the image, which it
> won’t be.

  ah, i think i see my misunderstanding, i will experiment further and
clarify it for myself, thanks.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323329-842780829-1384702114=:22723--
