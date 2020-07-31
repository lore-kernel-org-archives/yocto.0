Received: from esa13.hc324-48.eu.iphmx.com (esa13.hc324-48.eu.iphmx.com [207.54.72.35])
 by mx.groups.io with SMTP id smtpd.web10.17803.1596200524578472219
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Jul 2020 06:02:05 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1 header.b=J9qV6vVi;
 spf=pass (domain: bmw.de, ip: 207.54.72.35, mailfrom: prvs=474e6858f=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1596200524; x=1627736524;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=tz8t0wJXYWizZWq85eIZzME1MZgURlSBXjBO+hlrEWg=;
  b=J9qV6vViELC3Lh3ICXA4YUz4avuEY05YafbI9i5JY3d7wJwsVruHPSlS
   XGSQ2V0k+POn72E67lAKwyWfAPxcNRUsz/DV8+LCjOEItnn5CsXVRy3nf
   OpVT8LMgG1fCuIoX8wdre5+6S/Ij2h7br3T6nCOzM8RSPadK8Qc9EBhUt
   Q=;
Received: from esagw5.bmwgroup.com (HELO esagw5.muc) ([160.46.252.46]) by
 esa13.hc324-48.eu.iphmx.com with ESMTP/TLS; 31 Jul 2020 15:02:01 +0200
Received: from esabb5.muc ([160.50.100.47])  by esagw5.muc with ESMTP/TLS;
 31 Jul 2020 15:02:01 +0200
Received: from smucm10k.bmwgroup.net (HELO smucm10k.europe.bmw.corp) ([160.48.96.47])
 by esabb5.muc with ESMTP/TLS; 31 Jul 2020 15:02:01 +0200
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10k.europe.bmw.corp
 (160.48.96.47) with Microsoft SMTP Server (TLS;
 Fri, 31 Jul 2020 15:02:01 +0200
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1497.006; Fri,
 31 Jul 2020 15:02:01 +0200
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <rprowel@comcast.net>
CC: <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] one way hash analogy of yocto
Thread-Topic: [yocto] one way hash analogy of yocto
Thread-Index: AQHWZzh47Y9CRKnrF0y5N6H07ZJ0t6khhZSA
Date: Fri, 31 Jul 2020 13:02:01 +0000
Message-ID: <20200731130159.GE108868@korppu>
References: <e4947fc8-98a7-c74d-0e9b-a33a90bb4495@comcast.net>
In-Reply-To: <e4947fc8-98a7-c74d-0e9b-a33a90bb4495@comcast.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <A33ECBA4E48A514883CE4BBEFB2078F4@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 31, 2020 at 08:45:17AM -0400, Rob Prowel wrote:
> What I really need is information about introspection or the ability to
> query an existing yocto distro to return data about features included an=
d
> more to the point, to understand EXACTLY where recipes or classes are
> overridden or appended.  You can only do so much with recursive grep and
> find scripts.  Based on what I've seen so far, it seems that capability =
is
> lacking in yocto.
>=20
> In essence I have what is like a one way hash ABCDEFG-->X and I have X b=
ut
> cannot fully figure out the whole input that generated it.
>=20
> An example would be an overridden task method like
>=20
> do_something
>=20
> I need a quick way to determine the highest priority level that task was
> overridden or appended in for a given recipe.
>=20
> a command like "bitbake -describe -c do_something my-recipe"

bitbake -e my-recipe ?

Maybe grep for the variable of interest?

> and it should also be possible to query this kind of information for
> variables and not just methods or tasks.
>=20
> Do these tools exist or am I looking at parsing megabytes of verbose bui=
ld
> data and tracing output to find what I'm looking for?
>=20
> and no, I didn't create the distro...I'm an end user customer who was gi=
ven
> an undocumented distro with quazi-proprietary BSP layers in it that not =
only
> describe our specific product purchased, but the vendor's others product=
s as
> well, which complicates matters.
>=20
> Thoughts?

When adding layers, only way to be sure is to actually review the layers
and their bbappends. I tend to BBMASK everything out which I haven't check=
ed
at least on BSP layer side. Open source layers from yocto community are be=
tter.

Cheers,

-Mikko

>=20

>=20
