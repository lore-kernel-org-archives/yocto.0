Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C1A5E0097C; Tue,  8 Nov 2016 03:08:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9B30E00571
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 03:08:36 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id p190so21851815wmp.1
	for <yocto@yoctoproject.org>; Tue, 08 Nov 2016 03:08:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=vd3VSWlKe/K6lH2xSPqQB7InfO6Q2Y4rudw4pmm2EkE=;
	b=jDqiKUO+IKCEsorKdmcQsomDsmCuCJPbQnR7f0w6e1Bty9oTPEw9Iom6fEgDw4oaxW
	EvOirbKgb6SF9xqYP0isoWN2fPTB4fzFl8KK15QhnjAaWlXvZ+Jk8KZ/QSzYebG4xM7N
	5W75/cCbs1cGW60Y4X8QpuT9d/IxhR00cHv6fLDB+zirws+piaOu47WlydarLnjhQPt7
	wzOFhjCGFw0LwRkTsCnmuRNLHTHqjipx9PQNgQ8U7MZ6ONJ/gdjk1L52qIU8lZZq1NTd
	ua9ynqyz1D5mBGimntBA5fM+uMX23wpqh/gIHzS9bd8Qb5m41Vy8FLFdb4B1z3DwTd4r
	zQ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=vd3VSWlKe/K6lH2xSPqQB7InfO6Q2Y4rudw4pmm2EkE=;
	b=nKiET0Zb/Iq8ldIp8XkglfSs/I018s5Fgu0V8f0H+ueVIreuQff5OqbZ5pzhnY7gOi
	CmpbD1gUvNQIHfmVZbcr4Iec4+9FPEOv9OIqk3aMB0QxNNjU11wP5DC0AIB+kzISgG/d
	PZPUwDEV3V8j3xuyHWfYKw7berFgz6WCUVDgJRtMmB3KXWhr8G5ZLig8PQbZggnpf+TT
	K97a5FDFYDyhCDL3T3QVOqf4YWPMc0fezjhMyUi4SMg1TGPc3pcTNxdNZLMoufqlNmdd
	g1g3kDieJUgBBn7Si7kfgFFw8v/kZRwgUjJtcOXr+EvY0lMrq4s9D2NdaoTmMvOdIKwN
	C+Dw==
X-Gm-Message-State: ABUngvfP3KqZ8rmL7Uo5brxcVBomvJMNNji/l51ZK5lGirLuKl43PWH5u4N2sqbshxQ8AA==
X-Received: by 10.194.178.200 with SMTP id da8mr9953314wjc.157.1478603316252; 
	Tue, 08 Nov 2016 03:08:36 -0800 (PST)
Received: from carbonA (adsl-191.109.242.150.tellas.gr. [109.242.150.191])
	by smtp.gmail.com with ESMTPSA id
	cl10sm27984262wjb.4.2016.11.08.03.08.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 08 Nov 2016 03:08:35 -0800 (PST)
Date: Tue, 8 Nov 2016 11:08:22 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20161108110822.GF19465@carbonA>
References: <20161031165208.16286-1-raj.khem@gmail.com>
	<20161031165208.16286-5-raj.khem@gmail.com>
	<20161108105754.GC19465@carbonA>
	<c692300e-a7bd-e289-04f0-0de3abe00b9a@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <c692300e-a7bd-e289-04f0-0de3abe00b9a@mlbassoc.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 5/6] firmware: Update to 20161030
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
X-List-Received-Date: Tue, 08 Nov 2016 11:08:38 -0000
X-Groupsio-MsgNum: 32912
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ExXT7PjY8AI4Hyfa"
Content-Disposition: inline

--ExXT7PjY8AI4Hyfa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Nov 08, 2016 at 12:04:55PM +0100, Gary Thomas wrote:
> On 2016-11-08 11:57, Andrei Gherzan wrote:
> > On Mon, Oct 31, 2016 at 09:52:07AM -0700, Khem Raj wrote:
> > > Signed-off-by: Khem Raj <raj.khem@gmail.com>
> > > ---
> > >  recipes-bsp/common/firmware.inc | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
> > > index 6ce89a5..ed0782f 100644
> > > --- a/recipes-bsp/common/firmware.inc
> > > +++ b/recipes-bsp/common/firmware.inc
> > > @@ -1,5 +1,5 @@
> > > -RPIFW_SRCREV ?= "ec5a517ed6051974a5a09f7b7811d21c443a7c74"
> > > -RPIFW_DATE ?= "20161020"
> > > +RPIFW_SRCREV ?= "413fc664838e81caeabdc4118dc51e138d5d6c71"
> > > +RPIFW_DATE ?= "20161030"
> > >  RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
> > >  RPIFW_S ?= "${WORKDIR}/git"
> > >
> > > --
> > > 2.10.1
> > >
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> >
> > Merged to master. Thanks.
> >
> > --
> > Andrei Gherzan
> >
> >
> >
>
> What about the patches to switch to tarballs for the firmware?
> This seems much more sensible than sloshing around 6+GB GIT files...
>

Next in line. :)

--
Andrei Gherzan

--ExXT7PjY8AI4Hyfa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYIbImAAoJEHO76Gt+erfPVHMQAIpJ4dwbIqaZL2tlR0mVuCR2
mQY8055nvf2+3IHW7qB8L3QlsWOmUHFXHAMDNiyCkeQVBdWQObSu01Yj7DITgaLc
MzK3LPSO2JuLyLrZGdkkXnuEOAKCyU6TcPiPygEdySk+VqDfmA+IGtoBWV6La72T
yThjM1FOSGa19DxKAFn65ggAgJdgDbuDOpo6XR6IKiMwtT+syH0yJksqz3vmVugr
9UoKR7q7oryrAam+nFy1fK5ZuwkMmRRJ5EkA8t8G583xcBbrU34YYe2oTiYBSLJY
QPKmeIM6C5l2vbubefXWXf6FQpRh2ikXSEblXKd+JKb5kGz+CQVeIG7uXuzBj3SO
3d4OD7FBtBj+j7/PrvmZoT9JAnIXsdQFd4W5qFIlDjzYyp/adqDtuZzta4EPrxbQ
wrDTiWfkSFZ/X7KqCKJW6DRMl06n0G2keL+ni571uO3u2SdoBa/qPoE/MoVB9eiz
XNjOIpGDWzTbLXH6tj9GW5SvGJ+d5YmkRnCwyQxmPWdiH71E0VAnUQsGHYHkNBx3
R5LCA8/Fr2BDRQPX35/Nk/aoIwbCaA8xTxJBSnTbDPDIg2qLx6lxWM5Udc54Ygl7
2WZLGHJtUKfzz/sN0+OKhiYR3THQAm1sm+gvRnnKEkxBpgPDgq90Ua5jLGq+6jsV
IGuzV7E+UfAP+4jkz2ux
=D5DX
-----END PGP SIGNATURE-----

--ExXT7PjY8AI4Hyfa--
