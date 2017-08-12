Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1095E00C62; Sat, 12 Aug 2017 00:52:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.50 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12C08E00C3A
	for <yocto@yoctoproject.org>; Sat, 12 Aug 2017 00:52:27 -0700 (PDT)
Received: by mail-wm0-f50.google.com with SMTP id i66so7346896wmg.0
	for <yocto@yoctoproject.org>; Sat, 12 Aug 2017 00:52:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=J7IRzBonQLVw26PoHLhoMKZxDIh5B2jVtuxGm76L9Ew=;
	b=1KoHSQuyJ8sQ156IH+pAR31hsJDbR6zIER+1fECEpQ91BZnNkx2ZFr8RD6oJBrhYIK
	q3ms9lnYka2OP6AEHCQZlw4Aaom36KWqzET1IUt12flapy9rO9H1k7y2mQQ1WnDtZGsQ
	u7H+gepDhA+rjly/Yesy2Zdp0wT2AZuuwfjwVa1kriJoD9JWaLjEExPpuZ8Amo7EJA8g
	y4avnYJ1TJzr5+ODTvteiB0rA5fzXCPOS/XDABwEyX7XKT8BjeBpvqv4x0pydk6bT5nF
	dKLroXAh6NDGvYVhGK3Or7NZDgP5IpVGFFIuBAmKZdD1H97JuClOENiA+yafCGzg/EcB
	8W7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=J7IRzBonQLVw26PoHLhoMKZxDIh5B2jVtuxGm76L9Ew=;
	b=C01TreT4hw3eoiiBKstR3cOf1SsKMBnNMQ3BL02coVNUcqRkLToTGDMQes5+aD4C5G
	g0Lw8kyYAWjUCv2HysQB2G9OhCo2/yOA4IhKuHaVp4ohDMwNGLXPuY9vKWqGXT53GXrC
	3vnhYcRyAsUUAcZ3+qPf06FyyoiLWnoPRmtgX4OJouC/9RhnWocmcvgg363yrDv4mw0x
	xoZERcVAaQF9dxV754+OCfBnahXkG0sorU/YnYyti5Of/Hfc8WCl5UgwWhr0A1hf5moY
	iWDvKtpltv3rlvpaVNXhXzGnfuA9rCBnqyeaUUvpnwg50Ufqugk8YE1HHezl677y9erT
	vXdw==
X-Gm-Message-State: AHYfb5gBJakOwMbRaMIGNgEpUPH5SK19H9DXz2uqsyM9o48Ee+NPXCXx
	nXvaHBJUgt+9Nww7PUqeF4v/zo4/e0OW
X-Received: by 10.28.187.86 with SMTP id l83mr673248wmf.162.1502524346930;
	Sat, 12 Aug 2017 00:52:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.164.153 with HTTP; Sat, 12 Aug 2017 00:52:26 -0700 (PDT)
In-Reply-To: <CAGsrAHfOmMFfZPNWgZ64U52h968Mri4VT-QUMXt1CpsN1b3uqg@mail.gmail.com>
References: <CAGsrAHfOmMFfZPNWgZ64U52h968Mri4VT-QUMXt1CpsN1b3uqg@mail.gmail.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Sat, 12 Aug 2017 08:52:26 +0100
Message-ID: <CAPyrkgz7O0wKJ7sNqDx+NdPdnbUEpRZjk5_m1BaRtTe7dN4r4w@mail.gmail.com>
To: mohammed aqdam <mohammedaqdam@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: rpi-basic-image-1.0-r0 do_rootfs: Function failed: do_rootfs
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
X-List-Received-Date: Sat, 12 Aug 2017 07:52:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 10, 2017 at 5:16 AM, mohammed aqdam <mohammedaqdam@gmail.com> w=
rote:
> i was building image for rpi 3.
> so when i run bitbake -k rpi-basic-image i'm getting following error.
> how to recover this error...
>
> root@pcz-ee207837-2:/u/my_poky/poky/build# bitbake -k rpi-basic-image
> Parsing recipes: 100%
> |########################################################################=
##################################################################|
> Time: 0:01:10
> Parsing of 851 .bb files complete (0 cached, 851 parsed). 1320
> targets, 73 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION        =3D "1.34.0"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "universal-4.8"
> TARGET_SYS        =3D "arm-poky-linux-gnueabi"
> MACHINE           =3D "raspberrypi3"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "2.3.1"
> TUNE_FEATURES     =3D "arm armv7ve vfp thumb neon vfpv4
> callconvention-hard cortexa7"
> TARGET_FPU        =3D "hard"
> meta
> meta-poky
> meta-yocto-bsp    =3D "pyro:4a39979c8d1e560fa54240e99734a651dfbaa63a"
> meta-raspberrypi  =3D "master:f6a2ca21c72b8d97cd0f89a0a436bf90b431698b"

It looks like you're mixing branches here. Could you re-try this using
the pyro branch of meta-raspberrypi?

Cheers,

--=20
Paul Barker
Tog=C3=A1n Labs Ltd

