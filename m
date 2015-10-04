Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D8A4E00C9F; Sat,  3 Oct 2015 17:04:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BBB2E00A54
	for <yocto@yoctoproject.org>; Sat,  3 Oct 2015 17:04:23 -0700 (PDT)
Received: by wicge5 with SMTP id ge5so75797647wic.0
	for <yocto@yoctoproject.org>; Sat, 03 Oct 2015 17:04:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=oNCWXg2djNhy1m3C8gIAVRUKVxqaHcIeizA5ZPJk4vI=;
	b=ijlJT0wvEH3P6PfkgBPwAJqp2PlGJzhNiJbg1bLA0bdP+PqIWzMlvd9kzHgIgFttGn
	N2NSbioaihfKF4KDjSWhHFdCEiI7/bjKM+L+Av6C7TIDHEP8G7SNcRAIqnEAFw6pKtxO
	1o0CNPd+GAPqW6IN0Gdb+0nVRm2L7Haaxrzoy4cT9BaEsbnYoOaMVkMZbLDe4PO3QXOu
	ilccRzfefkN1y7QeltHyqlHrRbqk224+3vDudAgPvHmj3hlRrjAVFOg/Zd4W41Z+Utee
	W3wGGvwAPd8+jqXZUR3nhQLwAKl0Xrk/HYTLB61jtThMvwDgFvwzKfS9Bdv6/2RvsuIF
	FqOQ==
X-Gm-Message-State: ALoCoQlP7btEmliEUUn5Gyo75P9L6x+xB6R88RPb3vhUBll/bPfzaT92UEZ2U/XlVpCufUcCBA5+
X-Received: by 10.180.223.102 with SMTP id qt6mr4105540wic.11.1443917063251;
	Sat, 03 Oct 2015 17:04:23 -0700 (PDT)
Received: from resin (ipservice-092-217-119-031.092.217.pools.vodafone-ip.de.
	[92.217.119.31]) by smtp.gmail.com with ESMTPSA id
	jt3sm15635575wjc.12.2015.10.03.17.04.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 03 Oct 2015 17:04:21 -0700 (PDT)
Date: Sun, 4 Oct 2015 02:04:19 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20151004000419.GA28229@resin>
References: <1440231935-11042-1-git-send-email-net147@gmail.com>
	<561067E2.5020807@gmail.com>
MIME-Version: 1.0
In-Reply-To: <561067E2.5020807@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2] linux-raspberrypi.inc: use SRCPV instead of SRCREV for PV
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
X-List-Received-Date: Sun, 04 Oct 2015 00:04:28 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Oct 04, 2015 at 10:42:26AM +1100, Jonathan Liu wrote:
> On 22/08/2015 6:25 PM, Jonathan Liu wrote:
> >SRCPV is intended to be used by PV. Using SRCREV for PV is incorrect.
> >
> >Signed-off-by: Jonathan Liu <net147@gmail.com>
> >---
> >  recipes-kernel/linux/linux-raspberrypi.inc | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> >diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
> >index d60a3e9..ef98421 100644
> >--- a/recipes-kernel/linux/linux-raspberrypi.inc
> >+++ b/recipes-kernel/linux/linux-raspberrypi.inc
> >@@ -12,7 +12,8 @@ SRC_URI += " \
> >  COMPATIBLE_MACHINE = "raspberrypi"
> >-PV = "${LINUX_VERSION}+git${SRCREV}"
> >+PV = "${LINUX_VERSION}+git${SRCPV}"
> >+PR = "r1"

Why would you want to bump PR? It will eventually end up being the same value,
right? The PV change makes sense and is a good idea. And even if it's not the
same value will trigger a new build cause PV will change.

> >  # NOTE: For now we pull in the default config from the RPi kernel GIT tree.
> >  KERNEL_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
> Bump.
>
> Regards,
> Jonathan

--
Andrei Gherzan

