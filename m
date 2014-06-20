Return-Path: <ashcharles@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BFCFE00BC1; Fri, 20 Jun 2014 07:39:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ashcharles[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.128.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ve0-f179.google.com (mail-ve0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D17ABE00B7B
	for <yocto@yoctoproject.org>; Fri, 20 Jun 2014 07:39:21 -0700 (PDT)
Received: by mail-ve0-f179.google.com with SMTP id sa20so3643111veb.38
	for <yocto@yoctoproject.org>; Fri, 20 Jun 2014 07:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type; bh=Xg3UXvDHsxMfIYjx0yTB3Lx+ll/XEQmsOjS5b/FugRc=;
	b=qO8+GY4ZV7MIor6Yvdk7+G50haQj39b73imAl2MqZ7ksM6+Qhvf3sEy2EJjXW1djxU
	bAU/G+IiAF3TBguE8qJZ7u9BOx20JdlFL/p0tsNuLek+yi9sc2kKMljEiZx6+wGBEhjH
	b/LwR579Ld0lT7+yrWT2f7Rp+SXUULRJRb6lIsTefwHiafIM+zI8glxvjoLcXUC+Q8Le
	FTzN7kCULYlNeAtcpgZin2Ni63K0z5Um4UFezq2/pl2an5iRdPwREGo3PQ1Hsk6gc7l8
	3BBpVU+ga7lPWlij13t1mqNJX5vo2Pn2ZtmTtsIV248FYPvqKofk88+S0UXeyd3IEx6Q
	xpzQ==
X-Received: by 10.52.92.100 with SMTP id cl4mr1154849vdb.48.1403275160941;
	Fri, 20 Jun 2014 07:39:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.196.229 with HTTP; Fri, 20 Jun 2014 07:38:50 -0700 (PDT)
In-Reply-To: <CAK8F28nCuu06sXBX2FSDxGKOQ2j-rjFcysnXAqMk3F4jv6vNcA@mail.gmail.com>
References: <CAK8F28nCuu06sXBX2FSDxGKOQ2j-rjFcysnXAqMk3F4jv6vNcA@mail.gmail.com>
From: Ash Charles <ashcharles@gmail.com>
Date: Fri, 20 Jun 2014 07:38:50 -0700
Message-ID: <CAK8F28n5_7o-=Wx7MCdG2gYE7MyYic_Wg83czBmk+p70k08HbQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Setting preferred version of kernel for feature support
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
X-List-Received-Date: Fri, 20 Jun 2014 14:39:31 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

In thinking about this a bit more (and struggling with all three
methods), I wonder that creating a separate machine type in much the
same fashion as crownbay and crownbay-noemgd is the way to go.

--Ash

On Tue, Jun 17, 2014 at 8:56 AM, Ash Charles <ashcharles@gmail.com> wrote:
> Hi,
>
> I have two kernels for my device: one is current mainline kernel and
> one is an older kernel that supports magic proprietary hardware
> acceleration blobs.  Some developers want the modern kernel, others
> need the hardware acceleration which means they need the older kernel
> plus a bunch of out-of-tree kernel modules and some additional
> packages included in their image.  What is the best way to give users
> of the meta layer for this device an easy switch?
>
> I came up with three basic ways to do this:
> 1. Create an image recipe or packagegroup.  In this recipe, set the
> PREFERRED_VERSION_<kernel>, add RDEPENDS on the out-of-tree kernel
> modules and pull in any extra recipes to the build.
>
> 2. Describe the dependency information; the user can just choose to
> include one top-level package or not.  The userspace packages depend
> on the out-of-tree modules which would set the preferred version of
> the kernel.  Is setting the preferred version of something as major as
> the kernel in a random recipe okay?
>
> 3. Add a USE_HW_ACCEL type parameter to the machine configuration or
> add a feature to MACHINE_FEATURES and select the packages and versions
> based on this.  Is there any problems adding new features to
> MACHINE_FEATURES?  Does this break the package feeds?
>
> Any suggestions on the best way to achieve this goal or any
> compare-contrast between the methods would be most appreciated.
>
> --Ash

