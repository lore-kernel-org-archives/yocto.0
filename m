Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3C7FE00839; Tue,  6 Dec 2016 10:05:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18598E007AA
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 10:05:02 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id g23so23056326wme.1
	for <yocto@yoctoproject.org>; Tue, 06 Dec 2016 10:05:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=GSJxjhZEIvWiJsLCY/dfEu/UlZtTUOvCQ5k0DtFJSuo=;
	b=mWGbuYUM4WMitH7QJpajMz1SbvY0ykGRHC6pIBW9kudKHpjNqPWdXSPQgQsGQlMNcn
	R/hVHBjnCTuVaQLIom8v3/tTRKxcEoKulqc7tECzJDYv/P31VlDWqu6zQSc7ditgo9+0
	U0jCET/yo+CKlde2iUt5ONABCVOd2e/5rMgQrR5LleAISS/226yCohY/EAvVqYd7DKSZ
	aaHSoVAWsmxIAzyPORbedzxPs9y5XxNDop5sBg7e1O+MiOSsXfeRgMPjcmynvp07KFSE
	IyhMrUvomIgOQ/jU2HuqRmbUGJn1clM4dSs1okui09fCusXavxmCzmAYLdQNThSLWoJv
	8a+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=GSJxjhZEIvWiJsLCY/dfEu/UlZtTUOvCQ5k0DtFJSuo=;
	b=GccX6RGnPUTWjELcvN4TFwKsBbZ93RTQKm5QMwTQ2juS6C39hGZVN5GqBMKB+eoooA
	mkbdNd+kU4PNIIuMIGeK3CCDi5iOkbW6uqki5X9A/nkpGIgA3cqK5aqMv9qSj1QPpzSi
	Vev4j+YNgFlxHEweKhm6YScj8xKCMIWxOeKGToj3CEfYwu5tuwkBzMUuS0Q0+3Og2eeZ
	g0esCZmfgGf0nHLzyZUrm66PY/Y/5MZKnmXoaoYuMGagS3f5pcoVQ5a/syhFI6K/J5le
	wN+VNFnNb5CLhoq9n2BvUTnAcWpi/m4qAQgll+yczRbQ4T3pyFK80kyMMv2D21wKpiTR
	qxcA==
X-Gm-Message-State: AKaTC02l5PWjydr2JKqXQgqUqzlS64GjLmaZLqQdZ49Zge/i4rAck4FMc3tlGIHKMIDi+g==
X-Received: by 10.28.31.23 with SMTP id f23mr4064222wmf.94.1481047501053;
	Tue, 06 Dec 2016 10:05:01 -0800 (PST)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	i132sm5210440wmf.14.2016.12.06.10.05.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 06 Dec 2016 10:05:00 -0800 (PST)
Date: Tue, 6 Dec 2016 18:04:58 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20161206180458.GF1636@carbonA>
References: <1481016818-27612-1-git-send-email-gary@mlbassoc.com>
	<001e01d24fbe$b293d8e0$17bb8aa0$@neuf.fr>
	<4618c4f6-81dc-18ca-dfc6-a823ee640bc3@mlbassoc.com>
	<20161206154801.GC1636@carbonA>
	<456946d1-6c5c-15cb-4c76-4c8484dacfda@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <456946d1-6c5c-15cb-4c76-4c8484dacfda@mlbassoc.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] gstreamer1.0-plugins-bad: Don't hard wire use of userland
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
X-List-Received-Date: Tue, 06 Dec 2016 18:05:04 -0000
X-Groupsio-MsgNum: 33323
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4VrXvz3cwkc87Wze"
Content-Disposition: inline

--4VrXvz3cwkc87Wze
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Dec 06, 2016 at 04:57:42PM +0100, Gary Thomas wrote:
> On 2016-12-06 16:48, Andrei Gherzan wrote:
> > On Tue, Dec 06, 2016 at 04:02:20PM +0100, Gary Thomas wrote:
> > > On 2016-12-06 13:45, Herve Jourdain wrote:
> > > > Hi Gary,
> > > >
> > > > But dispmanx is really only provided by userland, it does not exist in other
> > > > flavors of egl/libgles.
> > > > Actually, dispmanx should not be selected in PACKAGECONFIG if userland is
> > > > not in use for EGL/GLES.
> > >
> > > Fine, but I'm looking for a solution where I can choose to use vc-graphics-hardfp
> > > so X11 works again and I can also have gst-player which depends on gstreamer-1.0-bad
> > >
> > > Any ideas?
> > >
> >
> > Disabling dispamanx is not working?
>
> How might I do that?  It's not clear from [at least] that recipe.
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------

Uh. I see the append now. I'm thinking on how we can fix this...

--
Andrei Gherzan

--4VrXvz3cwkc87Wze
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYRv3KAAoJEHO76Gt+erfPcKsQAIQ2cyLWKFJ2EeJMw3JJaG7V
IKut8aZbgNruq5qrYYciQsSPJJv1fnXjPVz2z5Gyxnzfdj+PJs5rIqoDTuYmbY6b
WIgAc06QGGdPRiGm3ptTGXKvDUc078rtGJYXskpdHAK1/UCI8cDFG/RD4U8b2eXX
M52bHMlv1pnL29Yg5TNUlJyB0y/3aU/Itwq1bEBxXLTe0yE3bi7a9CaAfEqvMeqg
BVS/NNmov8lYQjo8CsTtJ4bDkU/85efP9aGWnah0V9vmvSZ7N4PEHwySVQH8fwPv
TpYkeGrXE3DfF8MQ47USE2VE1ZTJA1MvPi+ORt+8YIHMaKREJXs+xfPuqz5sIN0E
uDwVMHdWWThf3SFwR1pH2qwsJ7SCoq8gGghRaZCIGCP4rCse9E7DLwObAmUro2mj
zt1naLgFM9NxiQvFHxoHnAQ5LqVHZsjGqp3yibPqY4ad0iJ5w2McFJbQIV9gZHW5
g3yjMiDeBOe3IBQ9Jm9arsBd4FfXa9Xh0T9lNwO4YpyAMSWvEm8TJJrVjQNdRXMb
CqzVroQNbxN+jXkA3pLyuxr8Vyt3Up1wV0fq0yW1i/n0EETvT1ZO5Jes3Z/m7oQh
AHRFhB1KyF+bypFa1oG4cZcoSDSXEcHVsd2+/nyH1Mb/lwbko6Kw8B/bkoRN7MXb
RctOQq2kQecbHXOqw978
=uM4a
-----END PGP SIGNATURE-----

--4VrXvz3cwkc87Wze--
