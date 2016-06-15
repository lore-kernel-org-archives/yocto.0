Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B95DBE00C82; Tue, 14 Jun 2016 17:23:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43059E00C7D
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 17:23:44 -0700 (PDT)
Received: by mail-wm0-f50.google.com with SMTP id a66so707097wme.0
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 17:23:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=SoKDG6dsXstjcQwR8r3YxBy2tq2G98ycOfvhWqUinEA=;
	b=yqBPjr+IGYlQfkZQl5gftIpTNmJDl/pbbHWTdUe4DHy9s9ZzTxgWy06UF/jXfnH0pG
	uylhyRI5kEaQIAaxqkds5psKeTgjmCKRjmb1BQT1yzztHJ9nlPBUo0aLmIT2/DdlHh0s
	9yL+9y2E0NVwI5ouTXolBWu8NA8C+U9KEYQlrDtQpPYyYbH4A9fEUlfeBYMuVZ1LRp/5
	0//PmOQJeAE3Yxz71eusvTAXHYeuZyOXcQAjy1KhjQ5j1OX26fp/Yob3XhD+QwBUGjzK
	DsvxJYdlCvakP2hOEjE59OqWxH2PfoTqSkix01/Dfb6GdKc6QwjlWeVv/JsYJFQlwkcF
	mS2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=SoKDG6dsXstjcQwR8r3YxBy2tq2G98ycOfvhWqUinEA=;
	b=BEb0oDdAswXZTcN/FKG7LPLgXSBXbZJt9vWLVLnhjfFJtPxEWGNj86Z1tpjGx7AvKv
	4Aw5gbByg8/Alwf//Dgh1CWOy1kXkrYgt4mJzO88OM0Uw995QNJFz7oiy+lVQqqIGgkq
	qLFPCrtEqkWnDtLohXPGDWH8Vb2ybGLEbQBcccG8z94+nsmmw9mOMTLrbysc0DbvMVxw
	nwtj+UnuyvbUFqC8OJ7cfFNgdVz8zV8wWgoX+qXITklq3lCvik74B3s17dvkxSqPMQRf
	3aR/cL6UU+Ur72TqyjivyyH+7lcyRtK85c/Mcq/+1HFOyb8dUyI/yfnckmiZaR6JKBz5
	h63w==
X-Gm-Message-State: ALyK8tKOzE55RWLvoErXWbVOZeJTz92nm2NR7Q4MDl1akizjo4HeTI53w6Kddvs4NXy0LA==
X-Received: by 10.194.81.72 with SMTP id y8mr9020271wjx.83.1465950223800;
	Tue, 14 Jun 2016 17:23:43 -0700 (PDT)
Received: from resin ([85.255.232.185]) by smtp.gmail.com with ESMTPSA id
	x124sm6616405wmg.24.2016.06.14.17.23.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 14 Jun 2016 17:23:42 -0700 (PDT)
Date: Wed, 15 Jun 2016 01:23:39 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Paul Barker <paul@paulbarker.me.uk>
Message-ID: <20160615002339.GH22479@resin>
References: <CAMKF1sqhn+RckCxE0Kf68MFdNQMVP5d8K_8Rg3WkSaACsEbv_g@mail.gmail.com>
	<20160530091128.31b01008@nuc.betafive.co.uk>
	<CAMKF1srR=kqT5h4n+o7GSXtEO2yntURB+Ak70RxMJgd0+swucw@mail.gmail.com>
	<20160530231646.7557d3b4@nuc.betafive.co.uk>
	<CAMKF1sry_vLP59S+FJyHtUpEYBxdnQ-QUMJcSjdPu4TQ7y5D7Q@mail.gmail.com>
	<20160601185500.30c54bd7@nuc.betafive.co.uk>
	<9933cb0e-fccc-1b87-134d-06a9ca273b12@gmail.com>
	<20160602222519.48afd77f@nuc.betafive.co.uk>
	<259f2b97-1f00-7d6e-785e-1e6887f933c1@gmail.com>
	<20160603204745.15425713@nuc.betafive.co.uk>
MIME-Version: 1.0
In-Reply-To: <20160603204745.15425713@nuc.betafive.co.uk>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: yocto@yoctoproject.org, Ionel Badisor <ionelbadisor@gmail.com>
Subject: Re: [meta-raspberrypi][PATCH 1/6] linux-raspberrypi: Allow override of PV
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
X-List-Received-Date: Wed, 15 Jun 2016 00:23:48 -0000
X-Groupsio-MsgNum: 30530
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5vjQsMS/9MbKYGLq"
Content-Disposition: inline

--5vjQsMS/9MbKYGLq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 03, 2016 at 08:47:45PM +0100, Paul Barker wrote:
> On Fri, 3 Jun 2016 09:07:37 +0300
> Ionel Badisor <ionelbadisor@gmail.com> wrote:
>
> > On 06/03/2016 12:25 AM, Paul Barker wrote:
> > > On Thu, 2 Jun 2016 10:59:37 +0300
> > > Ionel Badisor <ionelbadisor@gmail.com> wrote:
> > >
> > >> On 06/01/2016 08:55 PM, Paul Barker wrote:
> > >>> On Tue, 31 May 2016 10:39:03 +0300
> > >>> Khem Raj <raj.khem@gmail.com> wrote:
> > >>>
> > >>>> On May 30, 2016 3:15 PM, "Paul Barker" <paul@paulbarker.me.uk>
> > >>>> wrote:
> > >>>>>
> > >>>>>
> > >>>>> I'm trying to build from a source archive instead of a git
> > >>>>> repository (to avoid a ~1.3GB git clone operation) so the use of
> > >>>>> ${SRCPV} is causing me trouble.
> > >>>>>
> > >>>>
> > >>>> Can you override the whole PV
> > >>>
> > >>> I've given this another look and I can get the recipe to parse if
> > >>> I require linux-raspberrypi.inc before setting PV instead of
> > >>> afterwards. However do_kernel_configme then gets confused looking
> > >>> for a "standard/raspberrypi" configuration. It only works if I
> > >>> modify linux-raspberrypi.inc as per my patch and set PV before
> > >>> requiring that include file.
> > >>>
> > >>> I'm starting to think that I might be doing something wrong here -
> > >>> is there a supported way to build a kernel from an archive instead
> > >>> of a git repository within OE?
> > >>>
> > >>> Thanks,
> > >>> Paul Barker
> > >>>
> > >> Are you trying to avoid repeated cloning operation to save bandwith
> > >> and time or you are trying to save disk space?
> > >
> > > I'm trying to reduce "time to first build" on a new build machine as
> > > well as the amount of space/bandwidth needed to mirror downloaded
> > > files.
> > >
> > > Instead of setting PV in each recipe I could just duplicate
> > > linux-raspberrypi.inc into my own layer with the change I need.
> > > That's probably the simplest approach for now, I'll just have to
> > > keep my eye on meta-raspberrypi going forward for any changes to
> > > linux-raspberrypi.inc which I'd need to incorporate.
> > >
> > Maybe you can use the `DL_DIR ?= "/path/to/downloads/"` in your
> > conf/local.conf file for multiple build directories and if you want
> > you can copy downloads directory to new machine and point to it the
> > new local.conf  then all do_fetch operations are already performed,
> > except new changes in which case the git fetch operation is performed
> > when git is used and takes less time then when fetching entire
> > archive.
> >
> > note: multiple builds on same machine can use same downloads
> > directory.
>
> I'm planning to release this as part of a distro layer in the future.
> Not all build machines will be under my control if others use the
> layer.
>
> I'm going to drop this patch for now as I can maintain my own copy of
> linux-raspberrypi.inc. I think it'd be good to get the other changes
> into master.
>
> V2 incoming.

I managed to follow the discussion. Sorry for my last reply on this.

I don't think the solution would be to manage a custom inc file. We need
to find a solution with this. Can I see and try your changes for the
arhive?

--
Andrei Gherzan

--5vjQsMS/9MbKYGLq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXYKAKAAoJEHO76Gt+erfPh0cQAJkz2+6Z75pxl2tOt3EFQ7ZQ
4ZaElu0McQ2AgmpOXJ3RLzihTZOoTS9rSj2kdMDGtMgoZiprkEx1WAxxLnluHaJ1
kKDbDfgHpL2t2R3aEfZhJ+F2AQOUJu12X1CBOfIVZGuFEK9RU4fnbxEkGUls/wca
D3YmBFjjCiQoEVm1I/HUYQqUb3OWasU18v8xQWAvs7R+s7TGSJ1tIzFEYYYKa05z
RjaZiEny4GgV61ct32vrtLcYnrsg/2Qec1xFM2Mr48HDTXzLjuBcDOYOOF3t0gUm
x2IRdmUQ9duIY23cIdM/CRK34o2Fa/PnxKFoJt/EqMvHJq1e4tdvX25A8ZNduvbX
zTxVnViitv0dv0pRDHYObVINFOBfDdflLZVQtsa+Yh3e+TwiwG49dbKiac7tIGOG
KX7QeyjdODT4A+AFc7Tr8ySLy9cL9Yk1d3ucTJAgmqS9Qe4Yt26NnKIViHiIyTZF
RfV6oFZNDNSPPMSFa/by+IwmbDNnMGbtzgPGE3EX61UHPBiUde8PsdiVZIPw3bkL
aP3GvESTFQYLCxh4uc/7k5By5pmsEXzTfLtxT+rDPv+j2ep5BDwkE69bWIut8n0B
bYKtjlXfPZvCBWckxQDfvptlzf8Lmn+gqcz63g+ODFN640F3Lb7lPhjQkmx53SFK
VCNN70KwTraOB3vIp3R6
=hxX8
-----END PGP SIGNATURE-----

--5vjQsMS/9MbKYGLq--
