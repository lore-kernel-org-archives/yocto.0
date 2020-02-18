Received: from esa2.bmw.c3s2.iphmx.com (esa2.bmw.c3s2.iphmx.com [68.232.133.169])
 by mx.groups.io with SMTP id smtpd.web10.442.1582150196307944474
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 14:09:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=P+4uGxdT;
 spf=pass (domain: bmw.de, ip: 68.232.133.169, mailfrom: prvs=311c70376=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1582150196; x=1613686196;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-id:content-transfer-encoding:mime-version;
  bh=s7dNfnDQkvJdup6uSRFui7R2OyD1rvqDos3qeUsoRGI=;
  b=P+4uGxdTYQbnBE3qZCA59dIc26attrVpo4cFJULfKq8rBqxj2cpUs0YZ
   47Sg+mvcHkxGVsDzrRZaIVu7B247nMFmqVKmqyIZlOqXSutRys7niQ1FK
   i2/gU7tc7v8pHZORknNKp4LHmqN5OvywZ2+jK/CoHgBoS9SFhkfTDCnAc
   c=;
IronPort-SDR: NgUEVgkj2Vv2XKvFB3RG/HOpWEguxbP/MSr/Ie1Izuk57aFuJVd3aEq+Y84fVvML6yi491oImr
 iA/dR9ABT9jGzHFmZlbH8LUH7BXvt/h5PDTluAnrIK/H0z4cNa0FvUeNs8O1MAIYjZczr3RwDJ
 7LXTGR4XGOj0kr3IKyPj7ocqWudSRDFxf0XVbJihXvVSN+9EJz+58VgJWcaGUvtjvY1bQLU7yz
 nEiSwuBzBuwjLTDgnymWRQ2Sh/0tXtmzERYep0HnmqclRxAmjGC8dTsSyxtANaT9GaQsgXTO1+
 9LQ=
Received: from esagw5.bmwgroup.com (HELO esagw5.muc) ([160.46.252.46]) by
 esa2.bmw.c3s2.iphmx.com with ESMTP/TLS; 18 Feb 2020 09:41:14 +0100
Received: from esabb2.muc ([160.50.100.34])  by esagw5.muc with ESMTP/TLS;
 18 Feb 2020 09:41:10 +0100
Received: from smucm10j.bmwgroup.net (HELO smucm10j.europe.bmw.corp) ([160.48.96.46])
 by esabb2.muc with ESMTP/TLS; 18 Feb 2020 09:41:09 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10j.europe.bmw.corp
 (160.48.96.46) with Microsoft SMTP Server (TLS;
 Tue, 18 Feb 2020 09:41:09 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Tue,
 18 Feb 2020 09:41:08 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Creating a build system which can scale. #yocto
Thread-Topic: [yocto] Creating a build system which can scale. #yocto
Thread-Index: AQHV5Y2csebBRFcpkEqTpKLABW/Y7KgfmL4AgAD5twA=
Date: Tue, 18 Feb 2020 08:41:08 +0000
Message-ID: <20200218084108.GZ104502@korppu>
References: <5HUZ.1581942437691543674.aeQI@lists.yoctoproject.org>
 <ea92a8a308253301273f97ad910281638d350b69.camel@linuxfoundation.org>
In-Reply-To: <ea92a8a308253301273f97ad910281638d350b69.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <A21B95EAAB71F2469024E4FB32FB0DE0@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

Good pointers in this thread already. Here are mine:

 * Share sstate mirror and download cache from release builds to
   developer topic builds. NFS, web server or rsync before calling bitbake
   will work.

 * I've added buildhistory and prserv database as extra files to sstate mir=
ror
   and use that to initiate new developer topic and release builds. This wa=
y
   we don't add prserv or buildhistory git trees to critical path in builds
   but get the benefits of QA checks, binary package versions, full history=
 etc.

 * Don't use virtual machines or clouds to build. Bare metal throw away mac=
hines
   are much faster and more reliable. We've broken all clouds.

 * Use rm_work to reduce disk space usage during builds.

 * Tune build machines to bind things into memory and to not flush things t=
o disk
   all the time since bitbake tmp, images etc are anyways going to be tar'e=
d
   as build output. If they fit to page cache in RAM, you can avoid a lot o=
f IO and
   save disks/ssd. Linux kernel vm tuning does this:

$ cat /etc/sysctl.d/99-build_server_fs_ops_to_memory.conf=20
# fs cache can use 90% of memory before system starts io to disk,
# keep as much as possible in RAM
vm.dirty_background_bytes =3D 0
vm.dirty_background_ratio =3D 90
# keep stuff for 12h in memory before writing to disk,
# allows reusing data as much as possible between builds
vm.dirty_expire_centisecs =3D 4320000
vm.dirtytime_expire_seconds =3D 432000
# allow single process to use 60% of system RAM for file caches, e.g. image=
 build
vm.dirty_bytes =3D 0
vm.dirty_ratio =3D 60
# disable periodic background writes, only write when running out of RAM
vm.dirty_writeback_centisecs =3D 0

 * Finding optimal cost and power combination for build slaves is tricky.
   Track CPU, memory, IO and network usage for your project and find out wh=
ich
   one is the bottle neck. For us it was RAM. CPUs are not effectly used by=
 bitbake
   builds except when all hell breaks loose with C++ projects and their tem=
plates.
   Lots of CPU time is wasted when running single threaded bitbake tasks an=
d
   creating images. Avoiding IO to disk and caching to RAM helps. I've not =
seen benefits
   of having more than 64 gigs of RAM or more than 32 CPUs (with hyper thre=
ading).
   Also project evolve over time and suddenly may start eating more RAM and=
 triggering
   the kernel OOM killer, shivers..

Hope this helps,

-Mikko=
