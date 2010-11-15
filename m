Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id A66174C80B71
	for <yocto@yoctoproject.org>; Mon, 15 Nov 2010 15:50:25 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAFLoCK2026067;
	Mon, 15 Nov 2010 21:50:12 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 25578-07; Mon, 15 Nov 2010 21:50:08 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAFLo7SI026060
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 15 Nov 2010 21:50:07 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
In-Reply-To: <B08D4353009C0E4FB5FE1A4D0041EBC4BEAC1D@orsmsx001.amr.corp.intel.com>
References: <B08D4353009C0E4FB5FE1A4D0041EBC4BEAC1D@orsmsx001.amr.corp.intel.com>
Date: Mon, 15 Nov 2010 21:50:02 +0000
Message-ID: <1289857802.1272.6698.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Questions based on sysroot testing
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
X-List-Received-Date: Mon, 15 Nov 2010 21:50:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Jessica,

On Mon, 2010-11-15 at 12:05 -0800, Zhang, Jessica wrote:
> As we'll allow dynamic setup sysroot for app developers, I've done
> some testing and here are some findings that want to further discuss
> with you:
>  
> 1. We talked about using qemu rootfs as target sysroot, some I've
> tried pass "--sysroot" to cross gcc and tested against one of our
> existing testing app, cvs.  The cvs project client.c is using
> gssapi.h, with the sysroot option, it'll strictly looking for target
> include within the sysroot setup, so it failed at finding "gssapi.h".
> While our original sysroots under /opt/poky, even we don't have
> gssapi.h under our sysroot, but since we're not using --sysroot option
> to enforce searching target libraries and include files, it was able
> to use the gssapi.h under /usr/include/gssapi.  My question here is
> which one is the desired behavior, the --sysroot enforcement which
> means we/user need to include everything needed in the sysroot, or the
> current /opt/poky sysroot behavior that uses the host setting as the
> 2nd choice...

This is desired behaviour, you should *never* be mixing host and target
system headers or libraries. The current behaviour is plain wrong and if
I'd known it was doing that, I'd have fixed it before now ;-).

> 2. Under our /opt/poky/sysroot, we have target sysroot(e.g.
> i586-poky-linux), and host sysroot (i586-pokysdk-linux), for the user
> sysroot setup, I don't think we need to copy the host sysroot under
> the usr sysroort setup dir, seems for the specific arch, the host
> sysroot will be fixed, only the target sysroot may change even for the
> same target arch which we'll use target qemu rootfs, is this correct?

This is correct.

Cheers,

Richard



