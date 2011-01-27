Return-Path: <aleksandr.koltsoff@ebts.fi>
Received: from smtp.mmd.net (smtp.mmd.net [80.83.0.30])
	by mx1.pokylinux.org (Postfix) with ESMTP id 65BE14C80050
	for <yocto@yoctoproject.org>; Thu, 27 Jan 2011 07:34:52 -0600 (CST)
Received: from [192.168.0.102] (ebi0.eke.fi [213.140.179.212])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested) (Authenticated sender: ebtsfi-4)
	by smtp.mmd.net (Postfix) with ESMTPSA id 0C66A208A8;
	Thu, 27 Jan 2011 15:34:51 +0200 (EET)
Message-ID: <4D41747D.6060708@ebts.fi>
Date: Thu, 27 Jan 2011 15:34:53 +0200
From: Aleksandr Koltsoff <aleksandr.koltsoff@ebts.fi>
Organization: EKE Building Technology Systems
User-Agent: Thunderbird 2.0.0.24 (X11/20100317)
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <AANLkTikG322KfbJ-ZEKXFbsOLkzLE3Kdp4L-096ODvxd@mail.gmail.com>
	<46CAF87B-6605-4026-88C3-47258B9FDDB7@keylevel.com>
In-Reply-To: <46CAF87B-6605-4026-88C3-47258B9FDDB7@keylevel.com>
X-Virus-Scanned: clamav-milter 0.96.5 at smtp.mmd.net
X-Virus-Status: Clean
Cc: yocto@yoctoproject.org
Subject: Re: rootfs image size
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
X-List-Received-Date: Thu, 27 Jan 2011 13:34:53 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Chris Tapp wrote:
> I've built poky-image-minimal for atom-pc using the 0.9 Poky release.
> 
> This gives me an ext3 rootfs of over 80MB, which doesn't sound minimal
> to me ;-)
> 
> Can I reduce the size of the image, or is it expected to be this size?

Hi there,

The rpm packaging version does has some issues (half-statically built
binaries, full SAT-solver which might be an overkill for a minimal
image, etc).

I got much better results by switching to PACKAGE_CLASSES ?=
"package_ipk" in local.conf.

This will not be an RPM based system, but the image size will be
significantly smaller (especially if you're trying to reduce minimal).

Also, some fixes (post 0.9) should drop the rpm size requirement a bit,
if you want to try git/master.

regards,

ak.
-- 
Best regards,

Aleksandr Koltsoff
Head of Software Development, EKE Building Technology Systems
+358 44 566 2030, Piispanportti 7, 02240 Espoo, Finland
-= Easy Home Control for Everyone @ www.ebts.fi =-

