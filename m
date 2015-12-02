Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17D3EE005A2; Wed,  2 Dec 2015 06:21:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A59BE0048C
	for <yocto@yoctoproject.org>; Wed,  2 Dec 2015 06:21:04 -0800 (PST)
Received: by wmvv187 with SMTP id v187so257236332wmv.1
	for <yocto@yoctoproject.org>; Wed, 02 Dec 2015 06:21:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=X24jY+S7cycilD2D+6PsIZzooaFCPevjEkIxHsipr08=;
	b=QuP2Lxt5Js6Vs3pxWtXv7qcFHx5JL4mHhy8oFaMSE+RglCe230rVYOc6TfldvXD7Cy
	z23VuGf2l5p9ASVxbY08WI67d3wAC4a6j6TFUaZRloTr7dqdKbZ6UwmYWZ2JWiFCT1Gi
	t1imDHhE7e7ml/8VaVf4p4IzjoPVXNuu7gWgebRqwQ4C76PHn+r7KHx+jU+XiJ1gMa0n
	nOzoFak2tS7OalbpNsJok6zqO+WDJ/SoOTD2kxK+V4O7XZ6Ivu/yIW00XmlCikycFbGu
	ng1jqvKgmdZR9DU+EEpLNcZGsxA932VWTwnss+36p783EWyB6uwUCQz6XQzLiednutHz
	MC/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=X24jY+S7cycilD2D+6PsIZzooaFCPevjEkIxHsipr08=;
	b=Ir6bMyoSTD/z1QhKkDJXx9ch3JmiilMvQIehbgyaq4BX/4WqI/P+0gszQ7E2ZJglCq
	N7vgJkuXqAAUnuwXC5Q8dQwtwMhW9vQGwKDcZxZIExsBEkhnKlcjMZlF04b97Gw8Xp0C
	g3AEwH6vIFr1ja6TvJT+yMXcpWVaqPQCJzcKjyGy5iAlLwD2+SxAF5S4Wz8/AENi494x
	YW0W0Uzj651lFwqPvJMar6GWRpgBzT/L694ky49R8pJRIR7MMQhiqr5rJNtMdLeP1NZs
	/Yan6uG1vKLD+Mx3b+36JdWQAQOoO+XOZ4sLDS5CRUnEneBMJsuOnzrpgkGf2dpBdA0H
	gFbA==
X-Gm-Message-State: ALoCoQm4DWIEUm4PITH6j8bq1BVT3FmKSMTR+wB5EAaHPMPJyqptROdR085PMpwTN6yzsp9wo5v5
X-Received: by 10.194.205.137 with SMTP id lg9mr4978134wjc.156.1449066063016; 
	Wed, 02 Dec 2015 06:21:03 -0800 (PST)
Received: from resin (98.202.eduroam.dynamic.rbg.tum.de. [131.159.202.98])
	by smtp.gmail.com with ESMTPSA id lx4sm3024166wjb.5.2015.12.02.06.21.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 02 Dec 2015 06:21:01 -0800 (PST)
Date: Wed, 2 Dec 2015 15:20:56 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20151202142056.GA21739@resin>
References: <1447951930-18686-1-git-send-email-gary@mlbassoc.com>
	<565EFAB2.1070105@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <565EFAB2.1070105@mlbassoc.com>
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
X-List-Received-Date: Wed, 02 Dec 2015 14:21:06 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Dec 02, 2015 at 07:05:38AM -0700, Gary Thomas wrote:
> Ping?
> 
> On 2015-11-19 09:52, Gary Thomas wrote:
> >With the newer kernels that use device tree, the SPI bus is only
> >enabled by a device tree setting.  This is now supported by adding
> >   ENABLE_SPI_BUS = "1"
> >in local.conf
> >
> >Signed-off-by: Gary Thomas <gary@mlbassoc.com>
> >---
> >  README                                  | 5 +++++
> >  recipes-bsp/bootfiles/rpi-config_git.bb | 6 ++++++
> >  2 files changed, 11 insertions(+)
> >
> >diff --git a/README b/README
> >index e16dee9..bef13a3 100644
> >--- a/README
> >+++ b/README
> >@@ -189,6 +189,11 @@ kernels.
> >  NOTE: KERNEL_DEVICETREE is default enabled for kernel >= 3.18 and always disabled for
> >        older kernel versions.
> >
> >+2.M. Optional - enable SPI bus
> >+==============================
> >+When using device tree kernels, set this variable to enable the SPI bus
> >+ENABLE_SPI_BUS = "1"
> >+
> >  3. Extra apps
> >  =============
> >
> >diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
> >index 45b9f1d..aa11b25 100644
> >--- a/recipes-bsp/bootfiles/rpi-config_git.bb
> >+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> >@@ -66,6 +66,12 @@ do_deploy() {
> >          echo "# Enable offline compositing" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> >          echo "dispmanx_offline=1" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> >      fi
> >+
> >+    # SPI bus support
> >+    if [ -n "${ENABLE_SPI_BUS}" ]; then
> >+        echo "# Enable SPI bus" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> >+        echo "dtparam=spi=on" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> >+    fi
> >  }
> >
> >  addtask deploy before do_package after do_install
> >

Looks good to me. Compiling and merging soon.

-- 
Andrei Gherzan

