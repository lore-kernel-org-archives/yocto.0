Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 225CAE0074B; Thu,  3 Nov 2016 12:20:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f173.google.com (mail-pf0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA456E0050B
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 12:19:58 -0700 (PDT)
Received: by mail-pf0-f173.google.com with SMTP id i88so36225017pfk.2
	for <yocto@yoctoproject.org>; Thu, 03 Nov 2016 12:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=AKkkratGYoLB6VA8vsttyRoGdGX9vD8aj3zcI5AU9Ps=;
	b=Y8+Mtn6kDb54XIWK30K1hfR2BNdW8KGu/8WX0VAvhfTWn0XYXevnUER3VjjWpd1H2P
	L9I/1wlbg356hNvA78bTJ6eaMGen/EvGkPLyWOt5dlyKx+UKOhRQ1tvYyvIWGIT0JmjP
	dwc89tTQDpHz1QGvk4EK8JC9ZlAWwIx2Wzh4lkmOOZfO6PZpS3KN7+zUpFkdORwks87Y
	VaE1cQFyYeMNe3BUHZWlH9F9Vf9IErcS1cy7OZD0rXEne7hlFapsFHgWhRdIbLklgy1m
	rJ68a0M+Digi5NhlYFASH2z3530KIbkn6WVdNUdmrlcLtsGeT95XNR1d0R/+h86P9sjb
	HXiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=AKkkratGYoLB6VA8vsttyRoGdGX9vD8aj3zcI5AU9Ps=;
	b=Vi5MWbg1uwAw8/bTZRIJnCLop+x9AQPVYAvXFXolYl88jrP5VdBLEb8GYSJRfvf+fB
	/1triEMJ8G1QBCZhLNbuDEcMv6or74RnlKjtu/YkH5kcN2a5+7cgATJKy0AWeRsAi7cs
	4ScwGo98Hkxr38eJlqSswy6UJIF1xr+13elSqGg2RZ8NSMOb5mppT8leiIbf7PTaFN95
	b0LsR7CzFL5xNj5qn1EzEKgTOOLz9WyKiShAzJGzCIoDEqmg0yXfDfgc7csj/Jq0PuxX
	dAD0MLIbAGHaLstk30FF/gOteM9LjiC3p4edS18sHolR1FAncTaXP3UOU25lgVV2k/Z7
	kOCg==
X-Gm-Message-State: ABUngvchfkPbG16OcMt4BZ/CuQhnmAX5yy54KEoUsRBHpHqwEWgb5YXAxB2zZAdamJeNgQ==
X-Received: by 10.99.56.22 with SMTP id f22mr16051468pga.72.1478200798100;
	Thu, 03 Nov 2016 12:19:58 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:a08a:c533:b969:820?
	([2601:646:8882:b8c:a08a:c533:b969:820])
	by smtp.gmail.com with ESMTPSA id
	r1sm14527218pfg.56.2016.11.03.12.19.56
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 03 Nov 2016 12:19:57 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <d3a15e96-ecd8-50c5-65e2-c13937d101ee@mlbassoc.com>
Date: Thu, 3 Nov 2016 12:19:56 -0700
Message-Id: <49487B19-7092-405D-8B74-C8DE45676DF8@gmail.com>
References: <d3a15e96-ecd8-50c5-65e2-c13937d101ee@mlbassoc.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Shallow git clones?
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
X-List-Received-Date: Thu, 03 Nov 2016 19:20:02 -0000
X-Groupsio-MsgNum: 32827
Content-Type: multipart/signed;
	boundary="Apple-Mail=_972D97F6-7AD0-45FC-9214-DE61C6BCA415";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_972D97F6-7AD0-45FC-9214-DE61C6BCA415
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Nov 3, 2016, at 6:06 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>=20
> I recall seeing some discussion in the past about using shallow
> GIT clones when importing repositories?  Is this ever going to
> happen?
>=20
> The reason I ask is that I routinely save the GIT tarballs and
> some of them are obscenely obese :-(  The worst of the bunch
> is the device firmware for the RaspberryPi (as of today):
>  -rw-rw-r-- 1 gthomas gthomas 6321877646 Nov  3 12:13 =
git2_github.com.raspberrypi.firmware.git.tar.gz
>=20
> This particular tar file increased by more than 300MB since
> the last time I downloaded it (only 2016-09-13!)  I routinely
> slosh these files across the oceans (sometimes using tin cans
> and strings it seems) and this can be very tedious.  Is there
> anything that can be done to make these files a bit more manageable?

while shallow clones is a comprehensive solution and we should probably =
slot it for 2.3 release
the above recipe should stop using git fetcher and convert to using =
tarballs
since this git repo hosts binaries, it will bloat with every time they =
push
stuff into it. Someone should teach these RPi folks to not abuse github.

>=20
> Note: the RaspberryPi files are not the only offenders.  Take
> a look at the really big ones on my download mirror (~1GB or larger):
>  912558047 Jun  3  2015 =
git2_git.yoctoproject.org.linux-yocto-3.14.git.tar.gz
>  916869431 Sep 18 16:54 =
git2_git.yoctoproject.org.linux-yocto-4.4.git.tar.gz
>  917066415 Mar  8  2011 chrome-11.0.686.0.tar.bz2
>  929710560 Jun  5  2014 =
git2_git.yoctoproject.org.linux-yocto-3.10.git.tar.gz
>  975438005 May 14  2015 =
git2_git.yoctoproject.org.linux-yocto-3.19.git.tar.gz
>  997340641 Jan  4  2013 =
git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz
> 1013093794 Jul 22  2011 chrome-14.0.825.0.tar.bz2
> 1097457194 Jul  9  2015 git2_github.com.Itseez.opencv.git.tar.gz
> 1101241868 Jul 15 15:44 =
git2_git.freescale.com.ppc.sdk.linux.git.tar.gz
> 1167801376 Oct 24  2013 =
git2_git.kernel.org.pub.scm.linux.kernel.git.stable.linux-stable.git.tar.g=
z
> 1192994858 Nov 24  2014 =
git2_github.com.Freescale.linux-mainline.git.tar.gz
> 1399737300 Mar 30  2010 =
git_git.kernel.org.pub.scm.linux.kernel.git.tmlind.linux-omap-2.6.git.tar.=
gz
> 1455878541 Feb 22  2016 =
git2_github.com.Freescale.linux-fslc.git.tar.gz
> 1637597724 Aug 11 09:45 =
git2_git.freescale.com.imx.linux-2.6-imx.git.tar.gz
> 1785320074 Aug 15  2012 git2_github.com.mirrors.gcc.git.tar.gz
> 1787717120 Oct 11 10:28 =
git2_git.ti.com.ti-linux-kernel.ti-linux-kernel.git.tar.gz
> 2070939344 Nov  3 12:11 git2_github.com.raspberrypi.linux.git.tar.gz
> 2478557202 Aug 10 11:47 =
git2_github.com.boundarydevices.linux-imx6.git.tar.gz
> 2525826872 Jul 12 16:42 git2_github.com.gcc-mirror.gcc.tar.gz
> 6321877646 Nov  3 12:13 =
git2_github.com.raspberrypi.firmware.git.tar.gz
>=20
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_972D97F6-7AD0-45FC-9214-DE61C6BCA415
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgbjdwACgkQuwUzVZGdMxRqAACcD/5UkyEHpLcBMCwEC5C1RC5Y
aG0An0TG0EYBd75jTVliBXCz83OHadV/
=V+zm
-----END PGP SIGNATURE-----

--Apple-Mail=_972D97F6-7AD0-45FC-9214-DE61C6BCA415--
