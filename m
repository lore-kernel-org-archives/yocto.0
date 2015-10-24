Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E07CE00B58; Sat, 24 Oct 2015 13:05:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF603E00473
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 13:05:07 -0700 (PDT)
Received: by wicfx6 with SMTP id fx6so68758122wic.1
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 13:05:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=eNIP6646aeKAXl1sa5wRkyy5O8UkpMbdljJqZ1PZVe4=;
	b=QwHH8HgjZLGCVkCBco61/80DN2Cyiohdi0O2xaHSNHahLxktAP/O8Xnek9dFuqs/pw
	4BtfA95v+xWRlVRzMU7KRcCpY0BRd23U5BWUJE1rltDmJZsij8BnlgrJs8E8yoENrlH6
	/8sHcMifdpxzXvDcZ8j0+V8JayQv71Y0VU7rGVEZQToHkgxkOZM/s7T+IRqwY50wZ2d3
	oqmURpwkoWKUf1NkXdMawakssqBGj51QbYKv2tJAGCQmyT0kh969e9EB4Ej8vvHZjeVu
	yg0Jy4V51Whr9FAvai9llHr5DXO+FSlQmaDSR/Fr7MFWhK1j6a7h0tYKesyMir63GEWt
	Y6QA==
X-Gm-Message-State: ALoCoQke1y20C2+ndYwt6UznM304x8q6kUuweOpxsMKvSPfmUUd6c2XGuzm/qgZSEc1UoO56eFnU
X-Received: by 10.180.36.15 with SMTP id m15mr10802809wij.90.1445717107325;
	Sat, 24 Oct 2015 13:05:07 -0700 (PDT)
Received: from resin (dslb-088-067-185-162.088.067.pools.vodafone-ip.de.
	[88.67.185.162]) by smtp.gmail.com with ESMTPSA id
	q1sm29763100wje.39.2015.10.24.13.05.05
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Oct 2015 13:05:06 -0700 (PDT)
Date: Sat, 24 Oct 2015 22:05:04 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20151024200504.GD4459@resin>
References: <1443890258-14442-1-git-send-email-raj.khem@gmail.com>
	<1443890258-14442-3-git-send-email-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1443890258-14442-3-git-send-email-raj.khem@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH V4 3/5] userland: Adjust include location for pthreads-headers
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
X-List-Received-Date: Sat, 24 Oct 2015 20:05:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Oct 03, 2015 at 04:37:36PM +0000, Khem Raj wrote:
> vcos headers include headers like "vcos_platform.h" "vcos_futex_mutex.h"
> "vcos_platform_types.h" and these headers are different based on
> platform/OSes. e.g. OS targets that support pthreads these headers
> should come from pthreads/ folder but not for others. So one would add
> right -I option for every package that accesses them directly or
> indirectly. so if a software does #include <EGL/egl.h> then it will
> break
>
> | In file included from
> /mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspberrypi2/usr/include/interface/vcos/vcos_assert.h:149:0,
> |                  from
> /mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspberrypi2/usr/include/interface/vcos/vcos.h:114,
> |                  from
> /mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspberrypi2/usr/include/interface/vmcs_host/vc_dispmanx.h:33,
> |                  from
> /mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspberrypi2/usr/include/EGL/eglplatform.h:110,
> |                  from
> /mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspberrypi2/usr/include/EGL/egl.h:36,
> |                  from
> /mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/armv7at2hf-vfp-neon-angstrom-linux-gnueabi/weston/1.8.0-r0/weston-1.8.0/clients/../shared/platform.h:29,
> |                  from
> /mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/armv7at2hf-vfp-neon-angstrom-linux-gnueabi/weston/1.8.0-r0/weston-1.8.0/clients/window.h:33,
> |                  from
> /mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/armv7at2hf-vfp-neon-angstrom-linux-gnueabi/weston/1.8.0-r0/weston-1.8.0/clients/eventdemo.c:40:
> |
> /mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspberrypi2/usr/include/interface/vcos/vcos_types.h:38:33:
> fatal error: vcos_platform_types.h: No such file or directory
> |  #include "vcos_platform_types.h"
> |                                  ^
> | compilation terminated.
>
> This is wrong, it should not happen since doing simple #include
> <EGL/egl.h> should not demand manual addition of some internal paths
> tobe added to -I flags.
>
> This patch fixes the headers which refer to headers inside pthreads/
> folder to prefix them with pthreads/ so we dont have to specify
> additional paths
>
> This fixes weston on rpi and I believe there are more patches now to
>
> recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
> recipes-multimedia/omxplayer/omxplayer_git.bb
>
> which can be removed as well
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---

Merged to master. Thank you Khem.

--
Andrei Gherzan

