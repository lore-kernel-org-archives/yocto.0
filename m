Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86389E00D2F; Tue, 23 Feb 2016 13:03:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f47.google.com (mail-lf0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FC1EE00D21
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 13:02:58 -0800 (PST)
Received: by mail-lf0-f47.google.com with SMTP id j78so123699961lfb.1
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 13:02:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm-se.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:organization:user-agent;
	bh=jStOiRw/kzR2QZt6OYuxQFrn5LZmaaTzFS6L6pURGgA=;
	b=iO/RkLWFEXl/c1a/Wy6w3z6Ficlhn+1bRgJcHUfm09loHt1Bvgoy2Xa+KcxFDcWT2u
	rZM26WBsfmyfVCrGC0OMSW0ZPsztXglEOnrV7EtEiVtBcLHCaAN3p7oBfX+5Er8mMDQg
	5Bc2IEpX+KXHIQe+/HKoW+1N/ivGz67QMy+dxiqVL7u5mafvATHDKIRuYiSZSvwSbbbD
	jBTr3kYY+MYmNPC/CUc4sh/R4gA2zSCa5hI/dZ6f7u19SwzEJvnkbkcAbj7l/TKG4P7K
	SxlrHQXtPWwlxJCIml156nakCwHz7x/GmH9Jymt2PKFsWQK3DS/kQm3bGQMytujKnche
	HK9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-type:content-disposition
	:in-reply-to:organization:user-agent;
	bh=jStOiRw/kzR2QZt6OYuxQFrn5LZmaaTzFS6L6pURGgA=;
	b=Oizk9cWGxMVmIOzm/oIYvjrozkLBc5EPiD7kSZ/2BKnVQJsuD/dybrm3QU5hYspx9D
	28zO7hFuoyYb5/hmH4gBR064kl4ktLTZO0/rxUpFpuAc/Pi5+0WhI+PS0QGkYjrSvEkX
	NAljO11XEjBWZKRQFmNezdzWiJsabXcYDP3IsZ2m4S7HE7D0iLu/AdzG/ni8ljMGWdHS
	+OHyupiCwRxV6ZCz5mskoxbQ8t6cyOeg2Lm7uK1xLKJBDPA2OrF4v3SCHFmDjOCJHOL/
	sEGc5VDZ40CiNliFXZj56JRCWT+f28Vk9hmRtlRm6WC4Eg6Zf3jmd2Rr0MCilyNPHQ9c
	r3og==
X-Gm-Message-State: AG10YOT30zxDQCnU+fYTBf/MBjFpy1iG6IaaOBv5VtljcalGiwvnBduc7N3vC9KKinTVFw==
X-Received: by 10.25.163.76 with SMTP id m73mr10394622lfe.39.1456261377026;
	Tue, 23 Feb 2016 13:02:57 -0800 (PST)
Received: from ad.chargestorm.se (2.69.41.159.mobile.tre.se. [2.69.41.159])
	by smtp.gmail.com with ESMTPSA id
	x125sm2445680lfd.12.2016.02.23.13.02.55 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 23 Feb 2016 13:02:55 -0800 (PST)
Date: Tue, 23 Feb 2016 22:02:51 +0100
From: Anders Darander <anders@chargestorm.se>
To: yocto@yoctoproject.org
Message-ID: <20160223210251.GC10598@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <1454173548-5806-1-git-send-email-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1454173548-5806-1-git-send-email-raj.khem@gmail.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: Adjust for libexecdir changes
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
X-List-Received-Date: Tue, 23 Feb 2016 21:03:00 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Ping?

We can't build on master branch without this fix...

Cheers,
Anders

* Khem Raj <raj.khem@gmail.com> [160130 18:07]:

> libexecdir has changed its location in latest OE core, it used to be
> pointing to /usr/lib which was essentially same as libdir and when
> hardcoded in do_rpiboot_mkimage it worked.

> Fixes kernel build failures e.g.

> DEBUG: Executing shell function do_rpiboot_mkimage
> /a/builder/mnt/build-oe/tmp-musl/work/raspberrypi2-oe-linux-musleabi/linux-raspberrypi/1_4.1.10+gitAUTOINC+b74df9228c-r0/temp/run.do_rpiboot_mkimage.5543:
> line 111:
> /a/builder/mnt/build-oe/tmp-musl/sysroots/x86_64-linux/usr/lib/rpi-mkimage/mkknlimg: No such file or directory

> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-kernel/linux/linux-raspberrypi.inc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
> index 70e8bfe..0798788 100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -60,7 +60,7 @@ do_rpiboot_mkimage() {
>      if test "x${KERNEL_IMAGETYPE}" != "xuImage" ; then
>          if test -n "${KERNEL_DEVICETREE}"; then
>              # Add RPi bootloader trailer to kernel image to enable DeviceTree support
> -            ${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
> +            ${STAGING_DIR_NATIVE}${libexecdir}/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
>          fi
>      fi
>  }
-- 
Anders Darander, Senior System Architect
ChargeStorm AB / eStorm AB

