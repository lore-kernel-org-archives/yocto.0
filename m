Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web11.5122.1610645496586452342
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jan 2021 09:31:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=aGLD8BuV;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1610645496; x=1768325496;
  h=from:to:cc:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=6dfmYGKU+PxJD5T9i5A+NRwTJXb8bu/PALcOX2cf50U=;
  b=aGLD8BuV0ACuo2fcya8/KaTdMZQwnJaldofs3j3UE9EqRpdftgELdkVm
   HMFMLQaXWciE1RPxuhnAlIVYgbapjWK+3wON01+DbD9u77io4D6BXsQu8
   5r+xwxMMG8UbH9uWcJoTYdqtjnW6zXY90Su62MvnmUOtctiJgx3IkR82k
   M=;
IronPort-PHdr: =?us-ascii?q?9a23=3AeTHjRhXVG7SGs7ib+C30OBlPOhbV8LGtZVwlr6E/?=
 =?us-ascii?q?grcLSJyIuqrYZRWEtadThVPEFb/W9+hDw7KP9fy5CCpYud3e6ThCKMUKC0Zaz5?=
 =?us-ascii?q?1O3kQJO42sMQXDNvnkbig3ToxpdWRO2DWFC3VTA9v0fFbIo3e/vnY4ExT7Mhdp?=
 =?us-ascii?q?dKyuQtaBx8u42Pqv9JLNfg5GmCSyYa9oLBWxsA7dqtQajZFtJ6oszhbFuGdEd/?=
 =?us-ascii?q?hZyW5qOF6YghLw6tut8JJ5/ClcpvAs+9RcXanmeqgzUKBVAikhP20p/sPgqAPN?=
 =?us-ascii?q?TRGI5nsSU2UWlgRHDg3Y5xzkXZn/rzX3uPNl1CaVIcP5Q7Y0WS+/76hwUx/nlD?=
 =?us-ascii?q?0HNz8i/27JjMF7kb9Wrwigpxx7xI7UfZ2VOf9jda7TYd8WWWxMVdtKWidfHo2z?=
 =?us-ascii?q?cZcAD+sZPeZZsYb9oUcOrQCjDgWoHe/j1yNEimPz0aA8zu8vExzJ3BY4EtwOrn?=
 =?us-ascii?q?rascn1OqkRX+C7zqbIzCnMYfxZ1jrm9IjIaxIhre2QUb5sb8bcz1QkGQPfjlWX?=
 =?us-ascii?q?rIzoJz2Z2OMKs2id9OpvS/ygi3U/pwpsvzav2tkjipfXiYIT11vJ6zhyzII7Kt?=
 =?us-ascii?q?OlTUJ3b8OvHZxLtyGGKYR2XN0tQ2dytCY/zb0Gv4W7czYUx5Q83BPQcOaIfJaT?=
 =?us-ascii?q?4hPjT+aRPSl3hHd+eL6lmxmy9k2gx/T6W8Kp31lEsjBLncPQtnARyRPT8M6HR+?=
 =?us-ascii?q?Ny8Eqh2DuC2Rzf5+FELE07mqTXNYAtzL4+m5cNrEnNHjL7lUHogaOKaEkp+eml?=
 =?us-ascii?q?5ub5brjop5KQKYB6hwDjPqgznMG0HOo2Mg8LX2eB+OS80qXu/E3+QLpWkv02lb?=
 =?us-ascii?q?HZsIrdJcQZuKG2HxNV3pwk6xalADeqyNMYnWEZI1JDZh2HipPmNE/TL//lE/iw?=
 =?us-ascii?q?nk6gkDBxx/DJOLDqH5bDLmDbnbv8Ybpx8UBRxQgpwdxC459ZBKsNLfPzV0Ppqd?=
 =?us-ascii?q?DUEgU1PgO7zur9B9hxzJ4SVGKJD6SEKq3dq0WI6fgqI+SUYY8VvyvyJOY96v71?=
 =?us-ascii?q?iH85hUcdfa603ZsLcHy4HuppI0GeYXf0nNcOC2cKvgw7TOzxjFCPVTpea2qvU6?=
 =?us-ascii?q?4m4DE0EpiqApzZSY+zm7yA3Dy7HoFIaWBDEVCAC2vnd4KBW/sUaSKSJNFukiAc?=
 =?us-ascii?q?WLS8V4Mtzx+juQ3gx7Z6KufZ9DcUuJPj2dRt4u3cjxAy9Th6D8SH1GGNSnl5nn?=
 =?us-ascii?q?gURzAowqBwv0p9xk2G0ah/hfxYDsJc6O1SUgohLpHT1fJ1C8vyWwLaYteGVlOm?=
 =?us-ascii?q?Qs68DT4tSdIxxscCY1xhFNW6khDDwy2qDqcVlryMGJM07qXc0mP1J8Z80HbGyL?=
 =?us-ascii?q?Ihg0MmQ8tIKWKmmql/9xDJB47OkUWWibqldbgG0C7K7meDwjnGgEYNaRN9V7nE?=
 =?us-ascii?q?WzgkbUvLqcaxslrfQrmyCLJhKQBB1MqQArBWcNDgiEhAQPbmOcjTbyS6nGLmVj?=
 =?us-ascii?q?iSwbbZJq/tfX4Q0T6ZQHMYnh4e+z6tfUgDPWbr6zbFEDFwGFSpZkTq6uRzs1ux?=
 =?us-ascii?q?R0Iv3hqWYkh6kbGy/0hG1rSnV/oP0+dc628aoDJuEQP4hoqOBg=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2DgAwCofgBg/0HBJQpiHgEBCxIMQINFg?=
 =?us-ascii?q?SuBOQqWBAOKHJA4gWgLAQEBAQEBAQEBCAEYBhEEAQGESgKBbiY4EwIQAQEGAQE?=
 =?us-ascii?q?BAQEGBAGGUQyCOCkBgxEBAQEEATk/DAQCAQgRBAEBAR4QIQcKHQgCBA4FCIMfg?=
 =?us-ascii?q?lUDPa53dIE0iDQNgiWBOIVqh0mCAz6EKj6CG0IEARaBEQESAQmGEASCRRRCIRQ?=
 =?us-ascii?q?qIXczgSaSMqUQWAcDgneJLotDgViFFSuEWp4MnzKCeo8UhCECBAIEBQIWgW2BC?=
 =?us-ascii?q?nBwgzkJRxcCDZcmhUR0CywCBgoBAQMJjRcyXwEB?=
X-IPAS-Result: =?us-ascii?q?A2DgAwCofgBg/0HBJQpiHgEBCxIMQINFgSuBOQqWBAOKHJA?=
 =?us-ascii?q?4gWgLAQEBAQEBAQEBCAEYBhEEAQGESgKBbiY4EwIQAQEGAQEBAQEGBAGGUQyCO?=
 =?us-ascii?q?CkBgxEBAQEEATk/DAQCAQgRBAEBAR4QIQcKHQgCBA4FCIMfglUDPa53dIE0iDQ?=
 =?us-ascii?q?NgiWBOIVqh0mCAz6EKj6CG0IEARaBEQESAQmGEASCRRRCIRQqIXczgSaSMqUQW?=
 =?us-ascii?q?AcDgneJLotDgViFFSuEWp4MnzKCeo8UhCECBAIEBQIWgW2BCnBwgzkJRxcCDZc?=
 =?us-ascii?q?mhUR0CywCBgoBAQMJjRcyXwEB?=
X-IronPort-AV: E=Sophos;i="5.79,347,1602547200"; 
   d="scan'208";a="477579611"
X-IronPort-AV: E=Sophos;i="5.79,347,1602547200"; 
   d="scan'208";a="455405919"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
CC: Khem Raj <raj.khem@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto #kernel
Thread-Topic: [yocto] #yocto #kernel
Thread-Index: AdbpHa4uv+X65smLT56sbWhYtNALIwARKvQAABDJg2AAAi/tkAAMtERAACukENAAAaWMUAAAX51gAArbdoAACgsmEA==
Date: Thu, 14 Jan 2021 17:31:33 +0000
In-Reply-To: <20210114171809.joferqzcexsonuik@qschulz>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Message-ID: <MADEUP.165A298C367D3856.8149@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Do we know why it was disabled ?

I will look into this, thanks...

-----Original Message-----
From: Quentin Schulz <quentin.schulz@streamunlimited.com>=20
Sent: Thursday, January 14, 2021 12:18 PM
To: Monsees, Steven C (US) <steven.monsees@baesystems.com>
Cc: Khem Raj <raj.khem@gmail.com>; yocto@lists.yoctoproject.org
Subject: Re: [yocto] #yocto #kernel

*** WARNING ***
EXTERNAL EMAIL -- This message originates from outside our organization.


Hi Steve,

On Thu, Jan 14, 2021 at 05:11:29PM +0000, Monsees, Steven C (US) via lists.=
yoctoproject.org wrote:
>=20
> Khem:
>=20
> Should have waited for build to complete... this just delays where the er=
ror occurs.
>=20
> Now rather than upfront, it fails on packaging with the following error:
>=20
> ERROR: aiox-defaultfs-1.0-r0 do_rootfs: Unable to install packages. Comma=
nd '/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/ai=
ox-default/tmp/work/aiox_default-poky-linux/aiox-defaultfs/1.0-r0/recipe-sy=
sroot-native/usr/bin/opkg --volatile-cache -f /disk0/scratch/smonsees/yocto=
/workspace_3/meta-bae/meta-limws/builds/aiox-default/tmp/work/aiox_default-=
poky-linux/aiox-defaultfs/1.0-r0/opkg.conf -t /disk0/scratch/smonsees/yocto=
/workspace_3/meta-bae/meta-limws/builds/aiox-default/tmp/work/aiox_default-=
poky-linux/aiox-defaultfs/1.0-r0/temp/ipktemp/ -o /disk0/scratch/smonsees/y=
octo/workspace_3/meta-bae/meta-limws/builds/aiox-default/tmp/work/aiox_defa=
ult-poky-linux/aiox-defaultfs/1.0-r0/rootfs  --force_postinstall --prefer-a=
rch-to-version   install base-files bash bc binutils bridge-utils coreutils=
 crush cs-hdlc dhcp-server dhcp-server-config e2fsprogs ethtool haveged hdp=
arm i2c-tools inetutils inetutils-rsh iperf3 iproute2 iptables iputils iput=
ils-ping kernel-modules key-helper kmod libpci3 module-init-tools mtd-utils=
 mtd-utils-ubifs nano ncurses ncurses-dev net-tools netcat nfs-utils nfs-ut=
ils-stats ntfs-3g ntfsprogs openssh openssh-sftp-server packagegroup-base-v=
fat packagegroup-core-boot pciutils pciutils-ids peekpoke perl plx8000 plx8=
000nt plxsvc pub-key python python-stringold python-subprocess rsync run-po=
stinsts sg3-utils swig tar tcpdump tftp-hpa tftp-hpa-server traceroute usbu=
tils util-linux wolfssl xinetd' returned 255:
> Collected errors:
>  * opkg_prepare_url_for_install: Couldn't find anything to satisfy 'inetu=
tils-rsh'.
>=20
> What has changed in the build process ?, under rocko I do not see an issu=
e adding inetutils-rsh...
>=20

http://cgit.openembedded.org/openembedded-core/commit/meta/recipes-connecti=
vity/inetutils?h=3Dzeus&id=3D9e13dad6ea76dd036098ef62427804e4138bf83b

It's disabled by default now.

You can probably re-enable it by appending --enable-rsh again I guess?

Quentin

