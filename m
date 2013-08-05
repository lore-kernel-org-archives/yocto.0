Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78431E002F9
	for <yocto@yoctoproject.org>; Mon,  5 Aug 2013 14:21:04 -0700 (PDT)
Received: from [174.115.226.96] (port=58317 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1V6SD8-0003hq-K1; Mon, 05 Aug 2013 17:21:02 -0400
Date: Mon, 5 Aug 2013 17:20:55 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Chris Larson <clarson@kergoth.com>
In-Reply-To: <CABcZANnuHQDFmvNe77KECajcm-ex9HMXsLQkLeHq=GNf7hqmkA@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1308051719530.6277@oneiric>
References: <alpine.DEB.2.02.1308051615370.5540@oneiric>
	<CABcZANnuHQDFmvNe77KECajcm-ex9HMXsLQkLeHq=GNf7hqmkA@mail.gmail.com>
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
Subject: Re: easiest way to add opkg and all .ipk data to core-image-minimal?
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
X-List-Received-Date: Mon, 05 Aug 2013 21:21:07 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1083771798-1375737662=:6277"

--8323329-1083771798-1375737662=:6277
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Mon, 5 Aug 2013, Chris Larson wrote:

>
> On Mon, Aug 5, 2013 at 1:19 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>         i should know this but, if i don't want to define a new image, what
>       is the canonical way to add "opkg" and full ipk data to a stock build
>       of, say, core-image-minimal? i can see that what i'll want is to
>       inherit rootfs_ipk in some way, but i'm not sure of the correct way.
>
>
> You should never have to inherit rootfs_ipk. image.bbclass inherits
> the appropriate rootfs class based on the packaging class(es) you
> have inherited and a variable.
>
> From what I can recall, you'd need to add "package-management" to
> its IMAGE_FEATURES, or copy and modify its IMAGE_INSTALL to include
> ${ROOTFS_PKGMANAGE} rather than ${ROOTFS_PKGMANGE_BOOTSTRAP}. --
> Christopher Larson

  yes, it was adding the "package-management" to IMAGE_FEATURES that i
saw as one option -- just wasn't sure that that was the "proper" way
to do it. for now, as long as it works, i'll go with that.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323329-1083771798-1375737662=:6277--
