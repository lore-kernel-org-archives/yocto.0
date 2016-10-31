Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25082E00752; Mon, 31 Oct 2016 09:44:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6079AE00724
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:44:28 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id p190so12953619wmp.1
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:44:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=rRXqscRsPvsyZYe7DrPYDpu4vwAi/ayNR7utEFfgNYc=;
	b=uy00oPYXvKYsW71w2uW3EJUFMJdG3FBenGjQGEq7mN1MJWJHPrIKxDT8bNgXwsgnOx
	ghzMiTdFkAEVrW3rJMzy+WWQirdMbx4hEJYpUCHHcrMSbmpkKf0hYhKq8EFhLQpgSEb2
	OaiSF3M1N1AtxZDvEXzBMDYG56mPD2JfQl+DZM0e5PpqzjENSPzSVoN+8LdZ8eKBOEdH
	OdJ7kAgEXi0yR5SM0XvB3x13cKslPtGCaj6X1pAxcgpv21+AtmTk+oBom2aK60AKOyzb
	I/3N1XwMTg4K1vSkNKF1FWWVAAx06pJqlWsb2geEAObJA6OQZP55YmH4honOpygIDV+n
	sqzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=rRXqscRsPvsyZYe7DrPYDpu4vwAi/ayNR7utEFfgNYc=;
	b=bk2Y+1CLlxG3yCEDC1cPy/tISe0dGBnwDnKyWwmvrp1eo+2sUrEMjyCjSDrn+QcZen
	QAWrCDzYjt1Vxg+/vJB3L4yCGE/ahFq8HsHqSjIx0anHRXCJQ8Xdt1m4nvPEt3zLXxIS
	Zqd5AxG0V5uOTc2p24JeOfHpFZqGk/AA6n8ICHNxT+nac2+DuJ2YJU0ladvPFLtZvOo7
	+z1G1nVkYKMETNUDcGk7sa6+n1wOB4W4qDiKo6TiybXuegsXArPNP7bAxLZuc07IBXOe
	7uS/xNJXBJN/nZkFxZ2/F2wG7DdanLc7XCOz1+HQvTEYseL7HOG5dOryh67QHfzUY3gs
	jZbA==
X-Gm-Message-State: ABUngveRjrRFXiNTpFdzCbr14GNWz+/0v9EqIG574xxGl2K9t+ICYRvNHL6FAjcknNklxA==
X-Received: by 10.28.95.85 with SMTP id t82mr8034282wmb.56.1477932267467;
	Mon, 31 Oct 2016 09:44:27 -0700 (PDT)
Received: from carbonA (host86-163-63-150.range86-163.btcentralplus.com.
	[86.163.63.150]) by smtp.gmail.com with ESMTPSA id
	n72sm25555867wmd.11.2016.10.31.09.44.27
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 31 Oct 2016 09:44:27 -0700 (PDT)
Date: Mon, 31 Oct 2016 16:44:25 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20161031164425.GD3276@carbonA>
References: <1474523274-3883-1-git-send-email-schnitzeltony@googlemail.com>
	<1474523274-3883-7-git-send-email-schnitzeltony@googlemail.com>
	<20161031141011.GA9939@carbonA>
	<7D7B27EF-25D7-491A-B19F-098CDEA59106@gmail.com>
MIME-Version: 1.0
In-Reply-To: <7D7B27EF-25D7-491A-B19F-098CDEA59106@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 6/6] rpi-base.inc: build vc4-fkms-v3d.dtbo
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
X-List-Received-Date: Mon, 31 Oct 2016 16:44:34 -0000
X-Groupsio-MsgNum: 32700
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="W5WqUoFLvi1M7tJE"
Content-Disposition: inline

--W5WqUoFLvi1M7tJE
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 31, 2016 at 09:41:18AM -0700, Khem Raj wrote:
>
> > On Oct 31, 2016, at 7:10 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> >
> > On Thu, Sep 22, 2016 at 07:47:54AM +0200, Andreas M=FCller wrote:
> >> For those who want to run closed source driver with mesa. See further =
details
> >> at [1]
> >>
> >> [1] http://anholt.livejournal.com/47717.html
> >>
> >> Signed-off-by: Andreas M=FCller <schnitzeltony@googlemail.com>
> >> ---
> >> conf/machine/include/rpi-base.inc | 1 +
> >> 1 file changed, 1 insertion(+)
> >>
> >> diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/=
rpi-base.inc
> >> index 69774f4..737e842 100644
> >> --- a/conf/machine/include/rpi-base.inc
> >> +++ b/conf/machine/include/rpi-base.inc
> >> @@ -38,6 +38,7 @@ KERNEL_DEVICETREE ?=3D " \
> >>     overlays/w1-gpio-pullup.dtbo \
> >>     overlays/pi3-miniuart-bt.dtbo \
> >>     overlays/vc4-kms-v3d.dtbo \
> >> +    overlays/vc4-fkms-v3d.dtbo
> >
> > There is a problem with this change. It seems like this dtb overlay is
> > not availble in kernel version above 4.4. Don't know exactly why.
> >
>
> Interesting, did you apply latest firmware patch ?

You mean kernel update patch, right? No I haven't but the sources seem
to not deploy this dtbo:
https://github.com/raspberrypi/linux/tree/rpi-4.8.y/arch/arm/boot/dts/overl=
ays

>
> >>     "
> >> KERNEL_IMAGETYPE ?=3D "Image"
> >>
> >> --
> >> 2.5.5
> >>
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >
> > --
> > Andrei Gherzan
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>



--
Andrei Gherzan

--W5WqUoFLvi1M7tJE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYF3TpAAoJEHO76Gt+erfPRccP/0YmQ7UnRdmQ1X1n7ALomZu2
H7RSaIb9ZU57qnXVgFoknFyqm3wkYZVQpeOi8F6P7U89hVuVdiDlPAuYFuYCUzJq
bP3fsuc5il9MFz8PjdqJ0h4f83lu8UfpYLYC+7knN+fdX7zA2FTOW8ESBp/XhzgB
9/BwCSzhcqSv1+cyQc1fVovsGnE6GHdGRvT57jpqqR3ZuhyxgUj3febtsH+sLAso
TnXngnC7gLDx68Z/fJPLY4ClB4Ylg1FuVzIGKs9+wCgFo8z8FHBJFMfmtue7lq6S
mklx+w9my4RBPgGjKDlslwMzottO7tybh/M0+A1ipgyDXO6DRuRNqt8j/3Gy/iFI
O9NQwIY6QmiFl7MIqJnS9p/SOd+rrI3UYf1fNMqTG6bEu+SQysnmd9WHHbXmhfXY
A6TlY759cuoD7sPzMmucFK4ErGZPhVpn2u6Ys6iWkhsclaW2nujB88XP13630Ilu
Ld5/BgLk6yLQXHGMX73jIu1Rk5j40j69YORkJzwIIMIU+bHx2+5mL79m+MyrSXEL
t+/sMR0S3Ia5vEmL4rVDP3d7Q/0FpiMG8cCGcX3m8Z3tUvyomHwMZO7U0vbaPlHO
0u8F10W2RyPz6wigDx6XDyXgeNAa27OfXNlhGfAH37I7f4RmP0eSRSPEF7Gats9U
Zm0SytGL3D2PQGgmfYO3
=OZlg
-----END PGP SIGNATURE-----

--W5WqUoFLvi1M7tJE--
