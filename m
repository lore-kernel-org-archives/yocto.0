Received: from esa1.bmw.c3s2.iphmx.com (esa1.bmw.c3s2.iphmx.com [68.232.133.201])
 by mx.groups.io with SMTP id smtpd.web11.7495.1584605117797992402
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Mar 2020 01:05:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=RhNsZDzT;
 spf=pass (domain: bmw.de, ip: 68.232.133.201, mailfrom: prvs=340a7fc1c=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1584605118; x=1616141118;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=xEb/QBaEkalBJdAbTNz77yZVTrSGHr/AZjn8XVS9Y/4=;
  b=RhNsZDzTbVW8PCosc9G38yuZ/wENFcS3wo4U2LAPcRyu4JwVep7G55MD
   LS+2+SxvxeJLFIgoLGeK+WC5u4wXKL4NqSJ20cxiA9zYYeYUFmjlxnNTm
   ck3VUYe8TOMbQ7VRhrEDHdbX4vBXTbzXiVsyQfqG7yNphnvrxNYAV4GBr
   Q=;
Received: from esagw2.bmwgroup.com (HELO esagw2.muc) ([160.46.252.38]) by
 esa1.bmw.c3s2.iphmx.com with ESMTP/TLS; 19 Mar 2020 09:05:16 +0100
Received: from esabb2.muc ([160.50.100.34])  by esagw2.muc with ESMTP/TLS;
 19 Mar 2020 09:05:15 +0100
Received: from smucm10m.bmwgroup.net (HELO smucm10m.europe.bmw.corp) ([160.48.96.49])
 by esabb2.muc with ESMTP/TLS; 19 Mar 2020 09:05:15 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10m.europe.bmw.corp
 (160.48.96.49) with Microsoft SMTP Server (TLS;
 Thu, 19 Mar 2020 09:05:15 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Thu,
 19 Mar 2020 09:05:15 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <ross@burtonini.com>
CC: <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] What are the key factors for yocto build speed?
Thread-Topic: [yocto] What are the key factors for yocto build speed?
Thread-Index: AQHV/SQvHMEDglrWJECufLQaId00LqhOUpqAgACTXgCAAJk5AA==
Date: Thu, 19 Mar 2020 08:05:15 +0000
Message-ID: <20200319080514.GR104502@korppu>
References: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
 <f53ec55d-5f43-4ea3-f9a7-827f0f29154f@topic.nl>
 <8032ed75-802c-9dd3-2d76-f468159b90af@burtonini.com>
In-Reply-To: <8032ed75-802c-9dd3-2d76-f468159b90af@burtonini.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <E998FB4B178B134F876C434B5E7B2C5A@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 18, 2020 at 10:56:50PM +0000, Ross Burton wrote:
> On 18/03/2020 14:09, Mike Looijmans wrote:
> > Harddisk speed has very little impact on your build time. It helps with
> > the "setscene" parts, but doesn't affect actual compile time at all. I
> > recall someone did a build from RAM disks only on a rig, and it was onl=
y
> > about 1 minute faster on a one hour build compared to rotating disks.
>=20
> My build machine has lots of RAM and I do builds in a 32GB tmpfs with
> rm_work (and no, I don't build webkit, which would make this impractical)=
.
>=20
> As you say, with sufficient RAM the build speed is practically the same a=
s
> on disks due to the caching (especially if you tune the mount options), s=
o
> I'd definitely spend money on more RAM instead of super-fast disks.  I ju=
st
> prefer doing tmpfs builds because it saves my spinning rust. :)

Alternative for tmpfs with hard size limit is to keep file system caches in
memory as long as possible and only start writes to disks when page cache g=
ets
too full. This scales but still uses all the RAM available. Here's how to d=
o this:

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

Once this is done, IO still happens when anything calls sync() and fsync()
and worst offenders are package management tools. In yocto builds, package
manager actions to flush to disk are always useless since rootfs images
are going to be compressed and original ones wiped by rm_work anyway.
I've tried to hook eatmydata library into the build which makes sync() and =
fsync()
calls no-ops but I've still failed to fix all the tools and processes calle=
d
during build from python code. For shell based tasks this does it:

$ export LD_LIBRARY_PATH=3D/usr/lib/libeatmydata
$ export LD_PRELOAD=3Dlibeatmydata.so
$ grep -rn LD_PRELOAD conf/local.conf
conf/local.conf:305:BB_HASHBASE_WHITELIST_append =3D " LD_PRELOAD"
conf/local.conf:306:BB_HASHCONFIG_WHITELIST_append =3D " LD_PRELOAD"

The effect is clearly visible during build time using Performance Co-Pilot =
(pcp)
or similar tools to monitor CPU, memory, IO and network IO. The usage of RA=
M
as page cache grows until limits are hit and only then writes to disk
start, except for the python image classes... Hints to fix this are welcome=
!

To my knowledge of monitoring our builds, there is a lot of optimization
potential to better build times. CPU are under utilized during bitbake reci=
pe
parsing, fetch, configure, package and rootfs tasks. Memory is not fully ut=
ilized
either since IO through sync()/fsync() happens everywhere, and due to backg=
round
writes by default on ext4 etc file systems. Only do_compile() tasks are sat=
urating
all CPUs and when linking lots of C++ also all of RAM. Then dependencies be=
tween
various recipes and tasks leaves large gaps in CPU utilization too.

-Mikko=
