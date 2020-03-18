Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web10.18324.1584545887308450040
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 08:38:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sfUhNvSS;
 spf=pass (domain: gmail.com, ip: 209.85.221.49, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f49.google.com with SMTP id w16so14586458wrv.13
        for <yocto@lists.yoctoproject.org>; Wed, 18 Mar 2020 08:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=vvob0LSPfS7HGOpkxVhmvywjmpP0CqoeVGPjOG8M0Mk=;
        b=sfUhNvSS0yREmss45LTgz1oj7Hg4+LBI4bL01x24/iMY9aGTuiDhRbyOc86nh6TZs9
         eeZcKEjjA0fj7aUnKeYXhLLBzfbZYLCVusMau50bP2lF/HPBFjFAN+ZBzm7pdrvEj/nL
         Wv2KSFFaT4urha+8TV0QLCAMrc7Sl9B6CEgNaVjbN0egi0G/Qck080AcaDifeHCIowDb
         ps6W3Z6XvknImMSSGBC3rClIQOLPwTNbdSptn/V2Z+c5qGwdtg7fLk+fvat0Qu+fce2s
         L1NkNvKE5XJAZlLoxmLbQvJqRhuNrKwW+8VfmeJLaYPN4QC9MKCFilBG/AuHUNr/GtBN
         wY/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=vvob0LSPfS7HGOpkxVhmvywjmpP0CqoeVGPjOG8M0Mk=;
        b=JO4I8XizxJYf0lkt9rxEDApqt6pVfNwtk7qyFTLwooybt155apBG6uXFyxcL6ORptb
         wXJTcwBe+0mTFIEkHxvYbrOdAps830RH9Al2Tyx46raM17S//4RSuZJdCE0IHOq1zUJe
         p/MxJYScC1wxKGiK+2/F1XOREQ8xwslRSDq4Xm9zB/oaUCzthmL+VEyzZdXgeZM2SlJv
         USlWXHTGb4KSNjwQy6zHO/LSlLmAO7M0OegCFYnRB3hrON2ykno2nmAG6g82SmWY1bxn
         AIK9Nc00ZYN+zppanAumL07ncJbhSku2Jhv+Yhlyz27VYsWysD0EKIrpHa8A2PSrsMfX
         NWGQ==
X-Gm-Message-State: ANhLgQ2MR/wdLKkBqDEtEzf8YbBHXKB+NWt734V0Y+JqxMhkJIDDF3Gj
	iOJRucaZWwBBEsYxoh1ftUI=
X-Google-Smtp-Source: ADFU+vu0ZtTVIbyQ+Z1tigcBp01NykjIL1B8w6S2LbI2KVQs7Jy1c52ttin84QRnd/1jBGHCFP3wjQ==
X-Received: by 2002:a5d:428a:: with SMTP id k10mr6515087wrq.150.1584545885761;
        Wed, 18 Mar 2020 08:38:05 -0700 (PDT)
Return-Path: <martin.jansa@gmail.com>
Received: from localhost ([109.238.218.228])
        by smtp.gmail.com with ESMTPSA id f187sm4740999wme.31.2020.03.18.08.38.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 08:38:04 -0700 (PDT)
From: "Martin Jansa" <Martin.Jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Wed, 18 Mar 2020 16:38:03 +0100
To: Oliver Westermann <oliver.westermann@cognex.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] What are the key factors for yocto build speed?
Message-ID: <20200318153803.spyb4vci4ixgf5dc@jama>
References: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
X-Groupsio-MsgNum: 48819
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="lktyh2f7zpuefoq3"
Content-Disposition: inline

--lktyh2f7zpuefoq3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 18, 2020 at 05:52:37AM -0700, Oliver Westermann wrote:
> Hey,
>=20
> We're currently using a VM on Windows and it's a lot slower than the nat=
ive linux build (which is expected).
> We're looking into getting a dedicated build server for our team (basica=
lly a self-build tower PC). Any suggestions what to put in that build to ge=
t the most out of it?
>=20
> Currently we're looking at a big Ryzen, 64G of RAM and one or multiple S=
SDs on a "consumer grade" board like the X570.
>=20
> Suggestions, hints and links welcome :)

Other replies look good to me, here are few additions:

If you want to compare how terrible your current VM compares with some
other builders, you can use:
https://github.com/shr-project/test-oe-build-time
I wouldn't be surprised if your VM performs even worse than +- 200USD
ryzen 1600 system.

I would be happy to apply pull requests from other people in this
thread with their suggestions.

You didn't mention the budget, but big Ryzen is definitely good choice.

You also didn't mention how "big" your typical builds are, if you're
building something as big as the webengines used in test-oe-build-time,
then it might be worth to spend a bit extra on 3970X Threadripper if
budget allows.

I'm still looking for someone with access to Epyc (ideally 7702P or
7502P), because it's only a bit more expensive than corresponding
Threadripper, but without the unfortunate limitation to 8 DIMM slots
with difficult to buy 256GB sets:
https://www.gskill.com/community/1502239313/1574739775/G.SKILL-Announces-N=
ew-High-Performance,-Ultra-Capacity-DDR4-Memory-Kits-for-HEDT-Platforms
will be nice when it gets finally available. On Epyc on the other hand
you'll get 8 channels instead of 4 and much less issues to find
compatible kit (even with ECC support). If the performance is
significantly better than 3990X, then 7702P might be much better option
for "professional" builder - as long as you can cool server
mother board in tower PC efficiently enough.

Cheers,

>=20


--lktyh2f7zpuefoq3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCXnJAWwAKCRA3VSO3ZXaA
HJS3AKCtQmKhb0Pd8bOpTtKy7j+qi91nugCgo8cNV0w2EbI4w42pPwOgw/c7my4=
=tXUn
-----END PGP SIGNATURE-----

--lktyh2f7zpuefoq3--
