Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99A44E005B7; Wed,  2 Dec 2015 13:43:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EDBDE00404
	for <yocto@yoctoproject.org>; Wed,  2 Dec 2015 13:43:00 -0800 (PST)
Received: by wmec201 with SMTP id c201so274101751wme.0
	for <yocto@yoctoproject.org>; Wed, 02 Dec 2015 13:42:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=lGQWc1VolUblm71uGONV+rnWc1soLHi45kWRd4eb3/c=;
	b=0l0jYX5gr5wZUsBWjrw6lGVgjGJ8xa6Mv+KP2hbEcmu9TdF47zNkgwQ4WmaeYMzPZt
	TZhao2ipsmgi1wfO8RqocVr7R+zChlBDs4LpOKgYERcgHp1jjMr+xZPEDUYbXIQPjZqq
	dLZ/KVp5Kk4fXeC205ra8WSXS6ECkztSW0WR8x+z7DYZzjP+DF4RTUepvEpIl91a/bl8
	UBpn45kRuhKd629gD7D2NpD+3igz8ufeGDkUGJE3ZJS29W5MLjLbKBgbhKaUg3MzWPJL
	gssV4eVs4obm23QjwcZC7WWPe1PHver3+EL63HSIe71u/FmcO5llFHoA5NWvwPlXCywV
	a5pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=lGQWc1VolUblm71uGONV+rnWc1soLHi45kWRd4eb3/c=;
	b=ORNUDGjwWLoyjG7X7wi72psAPO6T/jRrfcuETZc4Y7L3q6bHkwUYlHldmsATgXyftQ
	9kFBNuScI4776ykUBleBuhSNIVVw16FLtXBlS8q1dTHb6OpT1ydtY1EOS/qfoYU5iyBR
	5viaJv2K+llkwfw6/nDtehupXn9pmNRXevmZg/b6XhsTYQ6QbgvQJUETImw+rK8E3wjT
	ZM/jNXb+2L40nvBGIwi82mpZG7C9gwcSNGeFJV3VYih01OUXZNc7kKiu5QVzYqB9FVpf
	ji6Ytmax3ItZAeWetvjvutU5ymJt4YaGvEdTJEN4jd8F7yGsXzBTT9lra+45jbLW2KNZ
	1InQ==
X-Gm-Message-State: ALoCoQnY+UNCMGW/uOgmwRA0mIbf5wujuJbnI1Nk+cl6plOQpS3u83mOOyRtD6jSMQk+VsOoPo+Z
X-Received: by 10.28.51.83 with SMTP id z80mr8883918wmz.54.1449092579722;
	Wed, 02 Dec 2015 13:42:59 -0800 (PST)
Received: from resin (ipservice-092-217-115-210.092.217.pools.vodafone-ip.de.
	[92.217.115.210]) by smtp.gmail.com with ESMTPSA id
	gl10sm4541018wjb.30.2015.12.02.13.42.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 02 Dec 2015 13:42:58 -0800 (PST)
Date: Wed, 2 Dec 2015 22:42:51 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20151202214234.GA8209@resin>
References: <1447951930-18686-1-git-send-email-gary@mlbassoc.com>
	<565EFAB2.1070105@mlbassoc.com> <20151202142056.GA21739@resin>
MIME-Version: 1.0
In-Reply-To: <20151202142056.GA21739@resin>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] rpi-config: SPI bus support
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
X-List-Received-Date: Wed, 02 Dec 2015 21:43:04 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Dec 02, 2015 at 03:20:56PM +0100, Andrei Gherzan wrote:
> On Wed, Dec 02, 2015 at 07:05:38AM -0700, Gary Thomas wrote:
> > Ping?
> > 
> > On 2015-11-19 09:52, Gary Thomas wrote:
> > >With the newer kernels that use device tree, the SPI bus is only
> > >enabled by a device tree setting.  This is now supported by adding
> > >   ENABLE_SPI_BUS = "1"
> > >in local.conf
> > >
> > >Signed-off-by: Gary Thomas <gary@mlbassoc.com>
> > >---
> > >  README                                  | 5 +++++
> > >  recipes-bsp/bootfiles/rpi-config_git.bb | 6 ++++++
> > >  2 files changed, 11 insertions(+)
> > >
> > >diff --git a/README b/README
> > >index e16dee9..bef13a3 100644
> > >--- a/README
> > >+++ b/README
> > >@@ -189,6 +189,11 @@ kernels.
> > >  NOTE: KERNEL_DEVICETREE is default enabled for kernel >= 3.18 and always disabled for
> > >        older kernel versions.
> > >
> > >+2.M. Optional - enable SPI bus
> > >+==============================
> > >+When using device tree kernels, set this variable to enable the SPI bus
> > >+ENABLE_SPI_BUS = "1"
> > >+
> > >  3. Extra apps
> > >  =============
> > >
> > >diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
> > >index 45b9f1d..aa11b25 100644
> > >--- a/recipes-bsp/bootfiles/rpi-config_git.bb
> > >+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> > >@@ -66,6 +66,12 @@ do_deploy() {
> > >          echo "# Enable offline compositing" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> > >          echo "dispmanx_offline=1" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> > >      fi
> > >+
> > >+    # SPI bus support
> > >+    if [ -n "${ENABLE_SPI_BUS}" ]; then
> > >+        echo "# Enable SPI bus" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> > >+        echo "dtparam=spi=on" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> > >+    fi
> > >  }
> > >
> > >  addtask deploy before do_package after do_install
> > >
> 
> Looks good to me. Compiling and merging soon.
> 
> -- 
> Andrei Gherzan

Merged to master. Thank you.
-- 
Andrei Gherzan

