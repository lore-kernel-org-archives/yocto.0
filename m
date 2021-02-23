Received: from esa12.hc324-48.eu.iphmx.com (esa12.hc324-48.eu.iphmx.com [207.54.72.34])
 by mx.groups.io with SMTP id smtpd.web08.9224.1614085099239797177
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Feb 2021 04:58:20 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1 header.b=ZUlQGGpH;
 spf=pass (domain: bmw.de, ip: 207.54.72.34, mailfrom: prvs=681a2f65d=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1614085099; x=1645621099;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=pENNifX6Hq15luKCW2EWFzl3ggxRtywfauGrp/qr0DA=;
  b=ZUlQGGpHoqTsXEF39xcdkNpJl/2cGZ7jMKJbN1SUD12mjtEfp/ES4uFw
   1AKexkM9Ez7SpzoEBdWWb3LpLGiO+/ZSnuKMNjBDWtl0XmNtasP7MPGlm
   b3poyL72H9rsg8RGWMdo7E/mFEbhg+HTlQhpUgQ4rMx4qPKbP6LMg3vhM
   g=;
Received: from esagw2.bmwgroup.com (HELO esagw2.muc) ([160.46.252.38]) by
 esa12.hc324-48.eu.iphmx.com with ESMTP/TLS; 23 Feb 2021 13:58:16 +0100
Received: from esabb6.muc ([160.50.100.50])  by esagw2.muc with ESMTP/TLS;
 23 Feb 2021 13:58:16 +0100
Received: from smucm33m.bmwgroup.net (HELO smucm33m.europe.bmw.corp) ([160.46.167.69])
 by esabb6.muc with ESMTP/TLS; 23 Feb 2021 13:58:16 +0100
Received: from smucm33l.europe.bmw.corp (160.46.167.68) by smucm33m.europe.bmw.corp
 (160.46.167.69) with Microsoft SMTP Server (TLS;
 Tue, 23 Feb 2021 13:58:15 +0100
Received: from smucm33l.europe.bmw.corp ([160.46.167.68]) by
 smucm33l.europe.bmw.corp ([160.46.167.68]) with mapi id 15.00.1497.010; Tue,
 23 Feb 2021 13:58:15 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <cbing@cybernetics.com>
CC: <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Updating Yocto
Thread-Topic: [yocto] Updating Yocto
Thread-Index: AQHXCT32WniIw9ZwJky0adg/5XDiB6plo9gA
Date: Tue, 23 Feb 2021 12:58:15 +0000
Message-ID: <YDT75mK/tmGXsl+z@korppu>
References: <60430e1e-0c5d-9cc4-5496-a6f4152ec976@cybernetics.com>
In-Reply-To: <60430e1e-0c5d-9cc4-5496-a6f4152ec976@cybernetics.com>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <2C1DF8EC2BD57C43A78CD1DC8C8834AD@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Feb 22, 2021 at 12:12:21PM -0500, Claude Bing wrote:
> Hello all. My organization has been working with Yocto recently, and we
> have noticed that there are often weird errors encountered after
> updating revisions within a release branch (e.g., 3.1.3 -> 3.1.5). Is
> there an accepted process to merging in upstream changes?  Here is a
> distillation of our workflow:
>=20
> * Yocto releases 3.1.0 / dunfell
>=20
> * Create a local tracking branch for the Yocto release
>   "sample-yocto-dunfell" based on upstream 3.1.0 tag / dunfell branch.
>   This is necessary because some of our local tooling is located in the
>   top level directory and it is a pain to copy the files each time.
>=20
> * Create firmware with Yocto
>=20
> * Yocto releases 3.1.x
>=20
> * Merge upstream yocto-3.1.x tag into local tracking branch
>=20
> * Create firmware with Yocto
>=20
> Sometimes, after this last step, we encounter problems where patches
> cannot be applied, or files cannot be found when bitbake tries to build
> the recipes. We have tried deleting build/{tmp,sstate-cache} whenever we
> merge upstream changes, but random errors still persist.  For each of
> these packages, if we run "bitbake -c cleanall", the error goes away.

When both yocto update and your own changes are modifying the same recipes,
then conflicts can occur.

> Most of the time, these recipes have not been extended in our project,
> so they are purely meta-oe / meta packages.

If builds are failing, then your environment is breaking something.
It might even be the BSP layers that you use.

> Are we doing something wrong, or is there a more acceptable way to
> handle updates?
>=20
> How tightly should meta-openembedded be tied to the core Yocto release?

I update all open source meta layers for every run of the update and also r=
esolve
any issues by digging into details why the failure happened. I've done dunf=
ell
updates with several BSP layers for multiple arm64 SoC's and have not seen
major issues.

What is useful and one of the best practices, is to clear the bitbake tmp
directory in between builds. Depending on details, there can be some cruft =
there
which fails when rebuilding.

Cheers,

-Mikko=
