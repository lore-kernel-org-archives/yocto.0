Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4E80E0027D
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 14:19:09 -0700 (PDT)
Received: by lboj14 with SMTP id j14so6201472lbo.35
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 14:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=6uEXl1W80X1oIAKd8+eIFv9w2oww+Z/OckOv1bPrGS4=;
	b=rTplznJUvemCq1+OqrUUOzjcwxw8v3aELKJbjk+v6Fb4/6teV/D6WlrenyqFURR2Ri
	bqWsT0lIWA8JyOVvEnKr7eAUWpAAT52Wa+ZgNkh+DgagXxjJSYO6fDMPqMvMBg7/Sf1F
	7ava5BEfXT2u4H7HHY39bR3jPO9MhRYuygHF5S/E4LX/yDblS53RF9My/2/AYBt/k9sr
	2JZWA0g4uB28zHxto8VAVWaJWSjtjQbZyAzqTSC8DiAmN+3KZblzUo2+YSwdVsf5h5HT
	cF7NPTKcl9WAJHX4mvx1ebms/1a1HHBTHUTH+qGE/zqnYoSKuAAGEjsT3HKveIKNrimS
	FN+Q==
Received: by 10.112.11.38 with SMTP id n6mr1458592lbb.82.1342214348664; Fri,
	13 Jul 2012 14:19:08 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.64.180 with HTTP; Fri, 13 Jul 2012 14:18:48 -0700 (PDT)
In-Reply-To: <CAE9DZUTmGR7SYTEGdjimvF4J_G=O07XC5Um+v2X-ncx5ypUu_A@mail.gmail.com>
References: <CAE9DZUR_W2vDPL+UjAqn_5A-2xig7x9GUx_JKQEd_R0HrrRyzQ@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A3BF09@ORSMSX101.amr.corp.intel.com>
	<CABcZAN=F6thT=-fy2U4B6r0cMs=S_0MvPM0AnY=SOborSmxwhA@mail.gmail.com>
	<CAE9DZUTmGR7SYTEGdjimvF4J_G=O07XC5Um+v2X-ncx5ypUu_A@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Fri, 13 Jul 2012 14:18:48 -0700
X-Google-Sender-Auth: 0aRwVzo2-MS-_lVx8FSsK1Bdjfw
Message-ID: <CABcZANnOZ-yW0wBgqOJka7H8mr2aiSk+ooZEKEQg6UPmS8Sx-g@mail.gmail.com>
To: Dallas Clement <dallas.a.clement@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: sysroot / external toolchain
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
X-List-Received-Date: Fri, 13 Jul 2012 21:19:10 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jul 13, 2012 at 2:05 PM, Dallas Clement
<dallas.a.clement@gmail.com> wrote:
> Thanks Chris.  I was close, just missing the actual copying part from
> the do_install() as observed.  ;^)
>
> I got quite a bit further.  Am running into issues like this now:
>
> ERROR: QA Issue: No GNU_HASH in the elf binary:
> '/development/dallasc/yocto/poky/build/tmp/work/armv5te-poky-linux-gnueabi/external-marvell-armada-sdk-5.0-64k-toolchain-1.0-r0/packages-split/external-marvell-armada-sdk-5.0-64k-toolchain/usr/bin/gdbserver'
> ERROR: QA Issue: non debug package contains .debug directory:
> external-marvell-armada-sdk-5.0-64k-toolchain path
> /work/armv5te-poky-linux-gnueabi/external-marvell-armada-sdk-5.0-64k-toolchain-1.0-r0/packages-split/external-marvell-armada-sdk-5.0-64k-toolchain/usr/libexec/getconf/.debug/POSIX_V6_ILP32_OFFBIG


INSANE_SKIP_${PN} += "ldflags"
-- 
Christopher Larson

