Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18504E00752; Mon, 31 Oct 2016 10:05:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.45 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 632A0E00724
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 10:05:40 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id t79so62135516wmt.0
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 10:05:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=T0j+nEWHBYYKSro1xLrv5FCaTFAwYKSOVlqPYcvukW4=;
	b=OJZjLJ20/k+Nh9soj52Od9+G0mO99VAnDkO4Q9Y+e/GH51lHwstfafrmugT2r56/mX
	f5mNVww5iZBoTUZKVjk2Z26ZfSvNO3wQrt+7qSIvEy6+eCBrEouOu99m4TVZ0vDF+y7C
	N9Bn8sC6/b8xIXuVjbOO9jTt/7eq5nF85Dqre65KVfVe03Y8zL5BhxuaP1JgVa8VuWSP
	WGE3PA7c1IscxzTFB3Kqiq508UwC9movXdrfsYItf+GUmC2VDYW5WXzrNHJdf1VA2fGu
	Nq+smc+IqYxH8tGcXbWTIJYs/sE/1HLW8DKBYwJwu5hATEkbE4UucVDODjTi1CKqaXdv
	sobQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=T0j+nEWHBYYKSro1xLrv5FCaTFAwYKSOVlqPYcvukW4=;
	b=nDRJZ3q0ULir3+SKXs/2a9wrf2e4QASZ2XUsOlbucvrbV9h9Kvx5+pWs0GKXJXUMr2
	g9DGsfVBewIsdexw2TvXJ5gjX1fdFgV5BZf4wARU79jGNRbC3TmvgIh7cB1GpmhlyICj
	wdKXWjsdanuoBCVLvyLzQPxqkBx+RrPSDJui6qjPsEOMSq82EJTXX+iLaULGJbn387fL
	gKTQdBD2bbBf7Q+/6X0S3tNoOAazDtAtf+1Zfc3MBriFf5pL6StrwRkP/aSSTtyyHjyn
	gIZtqhH6FK0hDSpZ2qxdawyuaJIa00BoT8FN6XlQ8BgACEtsl6crcbeIpvpIbhSQ2pVz
	3HBg==
X-Gm-Message-State: ABUngvc+n8gDGBcSWelTPQ/CV8uoPURJVtAqfBgTW4LWZDsDqQgvGpaiVEF1i9YJOOLocg==
X-Received: by 10.28.217.131 with SMTP id q125mr10551070wmg.95.1477933539338; 
	Mon, 31 Oct 2016 10:05:39 -0700 (PDT)
Received: from carbonA (host86-163-63-150.range86-163.btcentralplus.com.
	[86.163.63.150]) by smtp.gmail.com with ESMTPSA id
	w65sm25634663wmd.23.2016.10.31.10.05.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 31 Oct 2016 10:05:39 -0700 (PDT)
Date: Mon, 31 Oct 2016 17:05:37 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Frank Earl <Frank.Earl@flextronics.com>
Message-ID: <20161031170537.GI3276@carbonA>
References: <DM2PR08MB7209533987800927B4C9AAD98DF0@DM2PR08MB720.namprd08.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <DM2PR08MB7209533987800927B4C9AAD98DF0@DM2PR08MB720.namprd08.prod.outlook.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Master doesn't seem to be building right...
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
X-List-Received-Date: Mon, 31 Oct 2016 17:05:42 -0000
X-Groupsio-MsgNum: 32713
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="VaKJWhUROU/xPxjb"
Content-Disposition: inline

--VaKJWhUROU/xPxjb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 14, 2016 at 03:26:53PM +0000, Frank Earl wrote:
> It's boggling on the sd card image build.  Attached is the console output from the build (Don't need the log, this one's clear from the build fail output.) and a dump of the directory structures in tmp/deploy/images/raspberrypi2 from my setup.
>
> It's choking on trying to put the overlays onto the sd card image:
>
> /home/frank/git_repos/guardhat/build/tmp/deploy/images/raspberrypi2/Image-hifiberry-amp.dtbo: No such file or directory
> | WARNING: /home/frank/git_repos/guardhat/build/tmp/work/raspberrypi2-poky-linux-gnueabi/gh-base-image/1.0-r0/temp/run.do_image_rpi_sdimg.26079:1 exit 1 from 'mcopy -i /home/frank/git_repos/guardhat/build/tmp/work/raspberrypi2-poky-linux-gnueabi/gh-base-image/1.0-r0/boot.img -s /home/frank/git_repos/guardhat/build/tmp/deploy/images/raspberrypi2/Image-${DTB_BASE_NAME}.${DTB_EXT} ::overlays/${DTB_BASE_NAME}.${DTB_EXT}'
>
>
> Directory path:
>
>   4 -rw-r--r-- 2 frank frank      779 Oct 13 20:27 /home/frank/git_repos/guardhat/build/tmp/deploy/images/raspberrypi2/Image-1-4.4.23+git0+c2a1d97553-r0-hifiberry-amp.dtbo-20161014012231.dtb
>
> So, the backing file seems to be there...but...
>
>     4 lrwxrwxrwx 1 frank frank       71 Oct 13 20:45 /home/frank/git_repos/guardhat/build/tmp/deploy/images/raspberrypi2/Image-hifiberry-amp.dtbo.dtb -> Image-1-4.4.23+git0+c2a1d97553-r0-hifiberry-amp.dtbo-20161014012231.dtb
>
>
> Heh...  Something's not QUITE right there.  The packager is looking for .dtbo's and we're symlinking .dtb's...    I'm looking through the path trying to understand how it's setting the 'latest-build' symlinks, but if someone actually has a hint for me, it'd be appreciated.  :-D
>
>
>
> Frank Earl
>
>
>
> Frank Earl
>
>
>
> Legal Disclaimer:
> The information contained in this message may be privileged and confidential. It is intended to be read only by the individual or entity to whom it is addressed or by their designee. If the reader of this message is not the intended recipient, you are on notice that any distribution of this message, in any form, is strictly prohibited. If you have received this message in error, please immediately notify the sender and delete or destroy any copy of this message!

> Loading cache...done.
> Loaded 2741 entries from dependency cache.
> WARNING: No recipes available for:
>   /home/frank/git_repos/guardhat/build/../meta-gh/recipes-bsp/u-boot/u-boot-ti-staging_2015.07.bbappend
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION        = "1.30.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "universal"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "raspberrypi2"
> DISTRO            = "poky"
> DISTRO_VERSION    = "2.1.1"
> TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4 callconvention-hard cortexa7"
> TARGET_FPU        = "hard"
> meta
> meta-poky
> meta-yocto-bsp    = "krogoth:e93596fe74927e2e2f4dd7f671994ccb9744cff8"
> meta-linaro-toolchain = "krogoth:85faf6c6824597e7fd9e2d35fc9d8da2e9f90bc7"
> meta-oe
> meta-filesystems
> meta-networking
> meta-multimedia
> meta-initramfs
> meta-systemd
> meta-python       = "krogoth:851a064b53dca3b14dd33eaaaca9573b1a36bf0e"
> meta-telephony    = "HEAD:8cf5a67850adf270bc2fdb4c0ed708b0ba037670"
> meta-gh           = "master:12dc12456e7f6f486ca2815603c5f21f74c2d2c2"
> meta-ti           = "master:6cb779a6ba1b0693f6bf82777e1a333effe6fca5"
> meta-raspberrypi  = "master:05be947a31df873405cdd70ada210c9f7f7b132f"
>

I see that you are using master of meta-raspberrypi. Can you try with
the krogoth branch, please?

--
Andrei Gherzan

--VaKJWhUROU/xPxjb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYF3nhAAoJEHO76Gt+erfPNCgP/RRn6MWKpVDSyGGd/o9ZTKZP
KY1H84qi1EezMyYiaGcFA/ydBy13349+TLiQa8fND5onZOR/dby1AhHZ/weWRyg2
yapxaWFr7Z140dJsCHjDZ0PPHepcFYSuMBdAXVpNc85cK+tBtC+wH171v3/fIfCS
G5IZEH1WDcqh7jSrB/9L8XRbBz68/fr8yyadRlPGpgXTkqbpXP/nSzCfoPHW8ha4
9GI9qR36IRV2Zo8bATbeLkl4IyaS60VEG1U9S1r/BPLnQ6coULiPD9DDZlyX/18L
3CPXFHKZNrdfTtvuSsxGX2fvw9sVCIA2St3fmKi+Iqqsfo4CfKp1iohytAFJTWbX
nD3NkSZdaoPVTWC5tFGxSr+04UhLDc3WwQBbKnpC+vSiTvz7SWOTCmxX6c63tM7e
eQngZN5wrwy1joGWhV5KJ3h9QVc1mdYIRnrDoeBzVa7m1+ywhuos0KZrHfcS73QJ
vGRzigyq3+Eze+pNp/1d+LY3YnjcV4qvDwnLzVnNZvvB1fg9hh/SIuHBSYpbrGKz
NDJIHr02nF3YXTWiHp6cei29BrB3Bfxe+xKdltgdRsZVeLmDc4R2j1bE4NzurraT
CitxVL44RlAlPqoCP3QLrXZzzo7ja09oHeK7vKx2a7uJ3PsD8VmVZUe3G2lq9y3m
X31WodDf6lYVYJ560i6y
=nnew
-----END PGP SIGNATURE-----

--VaKJWhUROU/xPxjb--
