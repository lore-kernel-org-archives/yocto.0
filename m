Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89CDEE00867; Tue, 18 Apr 2017 05:58:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05911E00826
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 05:58:47 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id o81so14531631wmb.0
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 05:58:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=Xg+TkceRxK/0SusmGieWxC7DyDwI4dfDQDsokOJ3aJM=;
	b=zqNWPZgvIvEIsoxSBCgBGSMAzq7uTNzo5dR6GRzjFpEsLJQoRJ9XzfgiftKcUbqEW3
	3kys+iyqB2cj8OgRaA6MxT1lX1v3m7GOWhVShGpZi+lz2oD8EyIbDRuuu7iXa2LrOyYR
	dm3wbHOYYRi7JZd4kN4rWLpjIVRyYag/l6P9/zxOcKnF/GChJ73hywtEPvaFbv6gtz2V
	cIf1EY53aPsM5Syb3DgI7pLc3yydZCXK8d63XXNghfxudrUCYroEB/x2l46SxisVog30
	qn5a+AlA3GKNKFeCXcYZDh8bCLs2ltxMKLzLN9TRYMKg+fnlDv8H/uKq3+Vve52m6ECL
	5lyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Xg+TkceRxK/0SusmGieWxC7DyDwI4dfDQDsokOJ3aJM=;
	b=F7iZn5Jt1EYU7FTZwcdTHBK9JYYoxeTwIOZuYR8omdae8g5FKJd3gCgOaYq7y+MmId
	8ExYwSc9tXqMIy5OLq2XcP0/Fz9rjezI87JaTeaI4oIMzPb9cnhLzRyy1tyvOI8ALrQo
	F2QbK06OaJpmZGY350BGYwD5+9PUGvosHp1rHzbvnDoaYnWYq5zG7IYje38ejTOV6x5M
	gltu/ty9GlnekypoXVHCLZAKYfpBpS7jHd+Qqyp6cYh45806ayHU2QQxOL7uYKXFOGvD
	iX9iCVLc8rJnAGQlBNtsMhK1Ey1K3WcZRRAo9YVftnXLo/QqZG/gzvXojyWWOD4luXbL
	fHHw==
X-Gm-Message-State: AN3rC/7B/mo8K2pvo6i0no4aunhqCCWdwgr2pCK5JiVIzURk2G2jNUB/
	K5V0NQwGW5wZBko+Qhw=
X-Received: by 10.28.63.148 with SMTP id m142mr6349732wma.98.1492520326297;
	Tue, 18 Apr 2017 05:58:46 -0700 (PDT)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	p26sm14890281wmi.18.2017.04.18.05.58.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 18 Apr 2017 05:58:45 -0700 (PDT)
Date: Tue, 18 Apr 2017 13:58:37 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Paul Barker <pbarker@toganlabs.com>
Message-ID: <20170418125837.GA2724@carbonA>
References: <20170414201313.3138-1-andrei@gherzan.ro>
	<20170414201313.3138-4-andrei@gherzan.ro>
	<CAPyrkgx4stTPY-kEV5rMtJYyXwPkag47bP8N8KaRLCnAf3wWeA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAPyrkgx4stTPY-kEV5rMtJYyXwPkag47bP8N8KaRLCnAf3wWeA@mail.gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 4/7] linux-raspberrypi_4.9: Bump to 4.9.21
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
X-List-Received-Date: Tue, 18 Apr 2017 12:58:49 -0000
X-Groupsio-MsgNum: 35635
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="TB36FDmn/VVEgNH/"
Content-Disposition: inline

--TB36FDmn/VVEgNH/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Apr 18, 2017 at 12:10:47PM +0100, Paul Barker wrote:
> On Fri, Apr 14, 2017 at 9:13 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> > ---
> >  recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> > index 3aba67b..c0e8b83 100644
> > --- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> > +++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> > @@ -1,8 +1,8 @@
> >  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
> >
> > -LINUX_VERSION ?= "4.9.13"
> > +LINUX_VERSION ?= "4.9.21"
> >
> > -SRCREV = "28ea32b9afb5d813986c4ab940c26fe298d80ed2"
> > +SRCREV = "5e4ee836560d4c0371e109bf469e1ad808ae7a44"
> >  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y \
> >  "
> >  require linux-raspberrypi.inc
> > --
> > 2.12.1
> >
>
> I'm going to backport this to morty and test this week. Any other
> patches worth testing for morty at the same time?
>
> Cheers,
> Paul

I would probably want to have 64b rpi3 too in morty. And yes, 4.9
defaulted for kernel?

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--TB36FDmn/VVEgNH/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlj2DXkACgkQJrqo2vax
FPa8MQ//aspLpiPVBLrsWWgZ/xDHiDu2got57w31x4MB5kgmMy7vufr+p8yiG1p7
8Zyd0MiyeEVwPYXd8fYFH/Uk+vwVD2g6bHgWzX4mYmggERYXpPe3aE3DSHyJzXZy
8cJbRzsajPZ+1UyB2wWCAo1fTBxWbgk3tg6um8U8y9YA8rP54YMRihafJNRYsTO1
FebNNp+E2CQ4nQvnoPTPMQG5mxWpXoX0LW0WDdNvHz26ApbzlIM2YB6aAcF68ff2
Jx9P1oGydGUp6uEBeNIjbZkLpStEFGJnA9WkE2YSjIBTI4MSEmVh4bJzCr1WgoQe
YbLiJZ0eEg0OmH4HIQswZRy1+rQhu+QwDIz4GFNfj2rZVpVz5QsVTZCCvLbPB36S
5nYPnOzG3XnZ6wWf1lGazPjkIyVvIU1KJuToCbcOE6HzZ9+ws2oDsipiii+2Vpds
izJ4dLBNk6eEd3LFTVtSOgiD+CMRU/q7x1t9fg79ZKTyCvs6AnVrVyX0rnjFmM2y
JNGRSd0f5pdTWGIogsD16biLZH4XzBExvNr66pa+j8hgmDzsu6QvlSkjCqlB+eao
elsvODl87CkRPRpfl8KSJUYKBxSnpSQInGYWY/fn/pyetqYV9/iF4vI8OsS7A9gx
TExmGuwvWn0IOvrPHUOj5eongS6v+G+2Djf7Elj8uQnugRs2JDM=
=i1me
-----END PGP SIGNATURE-----

--TB36FDmn/VVEgNH/--
