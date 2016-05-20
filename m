Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2BC4E00EDE; Fri, 20 May 2016 03:39:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FSL_HELO_HOME,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.0 FSL_HELO_HOME FSL_HELO_HOME
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7EFBE00EE5
	for <yocto@yoctoproject.org>; Fri, 20 May 2016 03:39:38 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id s63so13484902wme.2
	for <yocto@yoctoproject.org>; Fri, 20 May 2016 03:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=EdLjGBt/B+4RTqngG7r8IC5o+nXnX8tnw9xqLBTlWa4=;
	b=U/tEOy6DQxFdneDxjiwmAinUV1lMoVn2b0NTyooN1cQ5sdKGirC8X/eYZw+5mxMFW8
	EK0mvAt6W+Dc40owjadVWixd7x/LOgePyH5Ok786gVPkclW3rowNXrqTf9vzB7HYf2Wd
	16yr1mv2iNqHdt8P12LQJkbtwiGVQ4/AF7okTL25iDqe1+CZoDB6kvfEqM45guP/3reR
	iyzB4S3pus5k0okZly8QH6nHH/sRsOTXMgUqcR5r4o3WAOBHjjzjECGW3kGX2K5EpPYA
	N2dwB9V8qnK6JTh/m28C7ElHxMiDl4k7Cj12ekwjo3VEpiWUjupR2v7ohgYG6x95/+Ns
	eOFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=EdLjGBt/B+4RTqngG7r8IC5o+nXnX8tnw9xqLBTlWa4=;
	b=HycBQCKV6ByRVNILAsXntjbYUV2FW71KSYOEIxAaIKcWMLcWZpGH5xLnRHfLmT0HXD
	GLrKGvfIzYjrNQ1rK34Ij8/a/llPwenzS0RqBcWKTNijC9S4GcxD77m646BJ8mifvcLf
	nd6xwhNUn2Zr5vyuZzX4zgQPvX3F8NyCT87ERvqoka18wexjq7uGPc5JKllRBiXJMKgv
	3EgVZ/sLn0IOiUkPdVvHltxmoUIpU1TOiWQD5bKRDctZ/qpiZWKL3oIZPed0vpsXV+VE
	WSeBQYiuP6MgSyZn9nOH0T4Cmsdsrp+YB4WMQDwXXfrSeW7nlFDeQWd6O9s4xIO+AvC8
	tJMg==
X-Gm-Message-State: AOPr4FW54nQWIhrpKJ+kfI+nsguP9HR3UZQIkGsdQD7+dXC76l4VI4eVOVrfjwEhX6rb1A==
X-Received: by 10.28.186.195 with SMTP id k186mr2813901wmf.44.1463740778275;
	Fri, 20 May 2016 03:39:38 -0700 (PDT)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	lf9sm19103203wjc.44.2016.05.20.03.39.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 20 May 2016 03:39:37 -0700 (PDT)
Date: Fri, 20 May 2016 12:39:35 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160520103935.GI9848@resin.home>
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
	<1463574082-126198-6-git-send-email-herve.jourdain@neuf.fr>
	<722F295F-4BEE-4E0A-9078-BB24EF9BAAE2@gmail.com>
	<F57461B0-379F-4CA7-8A72-F993A6BFC155@neuf.fr>
	<5E856D17-B2AF-4439-A778-1F1A93B4103B@neuf.fr>
	<CALbNGRSiO_PNDx1sxpCqLS75pyj9jfDBWAQQPhNgUBj8hZScOA@mail.gmail.com>
	<20160519151111.GB9848@resin.home>
	<CAMKF1sobZFxrWtiPQYtzqKEnZyqFCAR9Mgf=9BuS9gj5k-ynhw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1sobZFxrWtiPQYtzqKEnZyqFCAR9Mgf=9BuS9gj5k-ynhw@mail.gmail.com>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 5/8] Support for vc4 graphics driver: upgrade 4.4 kernel to 4.4.10
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
X-List-Received-Date: Fri, 20 May 2016 10:39:56 -0000
X-Groupsio-MsgNum: 30103
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="byLs0wutDcxFdwtm"
Content-Disposition: inline

--byLs0wutDcxFdwtm
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 19, 2016 at 09:02:04AM -0700, Khem Raj wrote:
> On Thu, May 19, 2016 at 8:11 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > On Wed, May 18, 2016 at 11:46:39PM +0200, Andreas M=FCller wrote:
> >> On Wed, May 18, 2016 at 7:32 PM, Herve Jourdain <herve.jourdain@neuf.f=
r> wrote:
> >> > One thing I didn't make configurable, but that maybe could be, is th=
e parameter passed to the overlay.
> >> > I selected cma-256, based on experience from other people, and becau=
se my configuration is RPI2/3 with 1G of memory.
> >> > I realize it might not work well with RPI0/1, which have less memory=
 available...
> >> > So even if I believe cma-256 is a good default value, it might be ma=
de selectable by the user, if we want to consider vc4 on RPI0/1.
> >> I played around with vc4 to but did not manage to get it work for an
> >> elder version 4.1 of kernel.
> >>
> >> I did in rpi-config:
> >>
> >> CMA_SIZE =3D "cma-256"
> >> CMA_SIZE_raspberrypi =3D "cma-64"
>
>
> >
> > I sent reply about this too. This is definitely one solution would I
> > would rather have a CMA_SIZE default value and a python function to
> > check its match with board variant. Cause in this way a user might be
> > able to use cma-96 on rapsberrypi.
> >
> >> CMA_SIZE_raspberrypi0 =3D "cma-128"
>
>
> setting CMA_SIZE should be moved into machine.conf file IMO
>

That's actually a good idea. I would say to have it in machine as a
default value for that specific machine. And then be able to overwrite
it as user needs. Optionally have a python function to check that what
user requested makes sense for the selected board.

--
Andrei Gherzan

--byLs0wutDcxFdwtm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXPulnAAoJEHO76Gt+erfPxCUP/1GsCX9iVFcpy13Xha4SUYkn
82KmK3ZwIsvhIkR+t87vLU4UtQ0cMmQBKsXlyevoKaEMuqvZ9hKamZZ66Ui5TvYU
Ph0nwpjS9lZ2HJups3lg032ERr6Q7TAAE5Sv0KLioia8LpWqinhKZuYI4cGzT1o0
ts4yvZWivTu+437XfFHzAtaBJ6+wZ5Wh4mCmON6Hr1ylliS/SRheHzf8YYKMtkCl
0LQ2foYCPLn/G55WRrA8b+l4gUZrs1yQMcvp3vh8Kpo6xyY3TrdmgNXu7Ro+3F0T
JYI1+qkGEl4VpbvPVPniPvSb9JiMZb4YXa8b1HOPr10WtEVzzAI3Lu1OXOu+Mq2n
USxs2hSsIGaiN1Qgta3xNfgmVC3bwoHL6ZFWEP8oKDe6+veGnCJ3mxdu/AEz6u1T
R5rzija6djDFZGDO+6FeHDtm8Kb3AH43UTw/kVT4nJGPfWPbeb60ww24uF+IT0dg
9QExRWmVMI5i5MgqVW6kOe9ug1SnzAgU53pxhBhzPfZKR+aNzpkPj8PhFzJSJnaR
qUTeIRqAfQSWNWUg6hF/A1K5daMh8x5o8ZvQfjoHhfx5ym28h3m2grh01oGTjMMI
r+hBJOwf/n4wrqdaDytLx/jGISYN1nfOdyeQmPymQIKGEGVBtxCnioseL3R45zh0
RxCAJtAwgSHYujQRJ7gn
=Y1bA
-----END PGP SIGNATURE-----

--byLs0wutDcxFdwtm--
