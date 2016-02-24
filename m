Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A17EE009C3; Wed, 24 Feb 2016 12:28:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB56FE00920
	for <yocto@yoctoproject.org>; Wed, 24 Feb 2016 12:28:29 -0800 (PST)
Received: by mail-lb0-f176.google.com with SMTP id x4so17445970lbm.0
	for <yocto@yoctoproject.org>; Wed, 24 Feb 2016 12:28:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm-se.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:organization:user-agent;
	bh=VkOFHCLqkwveOHUs/mu4aNutBDaQr8NhYkI9kw3WPGo=;
	b=hFmaQ/J7Tp+1IdBDpJwircFMlJKDOPhakcmbTYFp8NFuFjfE9tyD6UELFxgfRQtPSi
	MIv8KmQCv4XjUEThtamuWQcdVpVqvLMOzmNCJ7S1fb7kVAL7BG0pprm+Wpio2Be4x9Ku
	bvzXf4Kd8U3p2ZiOw3GX8lX2f9T5BOIR48xTFiT8cIEYPA0x4egJ7j0Pv896uzbAtBKv
	IEMlcPsv01BrLG5gEVArv4HMCdjR0LBlgHLKHyoSnHogb4Y/QS9fSLmkn5UNrbS5+lC+
	C5DCKSN3HkdN33jwNLP3ED13YHJXIP0i2O5OUOxvfZLg2K3OnI+PbeDfbxDAw89xhNW1
	ijKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:organization:user-agent;
	bh=VkOFHCLqkwveOHUs/mu4aNutBDaQr8NhYkI9kw3WPGo=;
	b=MoEUx+8sBcELXDwn34djRlPX88UmNic6fO6o3bdye+v8p2a1z8KToF84Vrip/Gr5LC
	3mnLjqrBADq5OG+hEYd6vLo8xqXi+dlzqkG3dNThtH0hsmDIl8nxyyUgqFbxr5jUXiYW
	hVpw3/IxZVUQeQkHFTtwPUs2eapI/uounm4NWEubllAxaNbhNWDmmXF8XbC5/YHHSrVL
	HmasisRc31+gEwjVI6PHEVpQmuwGFYdTM1x9jopxFW0r5v7H2Yb2Ky6kKfnVJk+gRXrC
	XCx+wdizDgOIDx1MXeijknlQT4GXaCw+1bn3wBew9slPF5arXSayLDaSxqI2qb2PPHsO
	2Nsg==
X-Gm-Message-State: AG10YOS7ZvK4HXmmG2R9CxHma99h7yk0G9Z+/YS3fWYbBocJT/Xz5+BfyoSv3Ek/k2YAAw==
X-Received: by 10.112.160.3 with SMTP id xg3mr15194101lbb.67.1456345708027;
	Wed, 24 Feb 2016 12:28:28 -0800 (PST)
Received: from ad.chargestorm.se (37.250.1.147.bredband.tre.se. [37.250.1.147])
	by smtp.gmail.com with ESMTPSA id 37sm615989lfs.3.2016.02.24.12.28.26
	for <yocto@yoctoproject.org> (version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 24 Feb 2016 12:28:27 -0800 (PST)
Date: Wed, 24 Feb 2016 21:28:24 +0100
From: Anders Darander <anders@chargestorm.se>
To: yocto@yoctoproject.org
Message-ID: <20160224202824.GA5109@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <1454173548-5806-1-git-send-email-raj.khem@gmail.com>
	<20160223210251.GC10598@ad.chargestorm.se>
	<CALbNGRSLRGvmdTNg6hF8YwGXRPza5Xn8sLLjrcgOrT+B1--+yA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALbNGRSLRGvmdTNg6hF8YwGXRPza5Xn8sLLjrcgOrT+B1--+yA@mail.gmail.com>
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
X-List-Received-Date: Wed, 24 Feb 2016 20:28:31 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Andreas M=FCller <schnitzeltony@googlemail.com> [160223 22:38]:
> > * Khem Raj <raj.khem@gmail.com> [160130 18:07]:
> >
> >> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kern=
el/linux/linux-raspberrypi.inc
> >> index 70e8bfe..0798788 100644
> >> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> >> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> >> @@ -60,7 +60,7 @@ do_rpiboot_mkimage() {
> >>      if test "x${KERNEL_IMAGETYPE}" !=3D "xuImage" ; then
> >>          if test -n "${KERNEL_DEVICETREE}"; then
> >>              # Add RPi bootloader trailer to kernel image to enable De=
viceTree support
> >> -            ${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/mkknlimg --dtok=
 ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
> >> +            ${STAGING_DIR_NATIVE}${libexecdir}/mkknlimg --dtok ${KERN=
EL_OUTPUT} ${KERNEL_OUTPUT}
> >>          fi
> >>      fi
> >>  }
> This patch is mandatory but there was a serial with additional fixes
> send by Maciej Borzecki on Feb 2nd. I think this is worth taken into
> account.
>=20

Yes, that's right.

If the rest of the patches in that series is non-controversial, could we
have them applied? Otherwise, could we have Khem's patch applied, and
the other series rebased upon that?

We've had the master branch non-building for quite a while now...

I'm just keen to get either of those patches applied to
meta-raspberrypi. I'd like to avoid having to use a local fork as much
as possible...=20

Cheers,
Anders

--=20
Anders Darander, Senior System Architect
ChargeStorm AB / eStorm AB

