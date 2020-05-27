Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.2505.1590570985472146641
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 May 2020 02:16:26 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1 header.b=gjgr779s;
 spf=neutral (domain: bmw.de, ip: 140.211.169.56, mailfrom: prvs=409a2c66c=mikko.rapeli@bmw.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5667CE01BDC; Wed, 27 May 2020 02:16:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [68.232.139.97 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from esa8.bmw.c3s2.iphmx.com (esa8.bmw.c3s2.iphmx.com [68.232.139.97])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D78F0E01BD8
	for <yocto@yoctoproject.org>; Wed, 27 May 2020 02:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1590570983; x=1622106983;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=0nxLUSRgDEsZST32HxPAbBoLWQLErLmBBJ3cyQoqzB0=;
  b=gjgr779sopLc4njYehMiKZQcXg/FNw5e7OGBRVylXs9DxeDrUwoew88p
   SNDw/AEanDLDnFWeu3ZXF19iN+N4SDA+Rztagi4nuHM4+D7/TrV0eNNAz
   or4uYFHyCDDyZzjnTxowD4V7V8NgKds2/Q6hAYwdiTKPnY55Kx1K3ezNv
   s=;
Received: from esagw2.bmwgroup.com (HELO esagw2.muc) ([160.46.252.38]) by
 esa8.bmw.c3s2.iphmx.com with ESMTP/TLS; 27 May 2020 11:16:21 +0200
Received: from esabb2.muc ([160.50.100.34])  by esagw2.muc with ESMTP/TLS;
 27 May 2020 11:16:20 +0200
Received: from smucm10j.bmwgroup.net (HELO smucm10j.europe.bmw.corp) ([160.48.96.46])
 by esabb2.muc with ESMTP/TLS; 27 May 2020 11:16:17 +0200
Received: from smucm10m.europe.bmw.corp (160.48.96.49) by smucm10j.europe.bmw.corp
 (160.48.96.46) with Microsoft SMTP Server (TLS;
 Wed, 27 May 2020 11:16:18 +0200
Received: from smucm10m.europe.bmw.corp ([160.48.96.49]) by
 smucm10m.europe.bmw.corp ([160.48.96.49]) with mapi id 15.00.1473.005; Wed,
 27 May 2020 11:16:18 +0200
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <mans.zigher@gmail.com>
CC: <yocto@yoctoproject.org>
Subject: Re: [yocto] what to expect from distributed sstate cache?
Thread-Topic: [yocto] what to expect from distributed sstate cache?
Thread-Index: AQHWNAUbHRq33WE0DEGJwEh1muxgm6i7hVwA
Date: Wed, 27 May 2020 09:16:18 +0000
Message-ID: <20200527091612.GY108868@korppu>
References: <CAEhQi8mNzC8QV=xuRBH1=cxn40RL9923kpw2vwK-7Nh-=enNnA@mail.gmail.com>
In-Reply-To: <CAEhQi8mNzC8QV=xuRBH1=cxn40RL9923kpw2vwK-7Nh-=enNnA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <CD1827E3B3D05640BAD9D14023938199@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, May 27, 2020 at 10:58:55AM +0200, Mans Zigher wrote:
> This is maybe more related to bitbake but I start by posting it here.
> I am for the first time trying to make use of a distributed sstate
> cache but I am getting some unexpected results and wanted to hear if
> my expectations are wrong. Everything works as expected when a build
> node is using a sstate cache from it's self so I do a clean build and
> upload the sstate cache from that build to our mirror. If then do a
> complete build using the mirror I get a 99% hit rate which is what I
> would expect. If I then start a build on a different node using the
> same cache I am only getting a 16% hit rate. I am running the builds
> inside docker so the environment should be identical. We have several
> build nodes in our CI and they where actually cloned  and all of them
> have the same HW. They are all running the builds in docker but it
> looks like they can share the sstate cache and still get a 99% hit
> rate. This to me suggests that the hit rate for the sstate cache is
> node depending so a cache cannot actually be shared between different
> nodes which is not what I expected. I have not been able find any
> information about this limitation. Any clarification regarding what to
> expect from the sstate cache would be appreciated.

We do something similar except we rsync a sstate mirror to build
nodes from latest release before a build (and topic from gerrit
are merged to latest release too to avoid sstate and build tree getting
too out of sync).

bitbake-diffsigs can tell you why things get rebuild. The answers
should be there.

Also note that docker images are not reproducible by default
and might end up having different patch versions of openssl etc
depending on who build them and when. One way to work around this
is to use e.g. snapshots.debian.org repos for Debian containers
with a timestamped state of the full package repo used to generate
the container. I've done something similar but manual on top of
debootstrap to create a build rootfs tarball for lxc.

Hope this helps,

-Mikko=
