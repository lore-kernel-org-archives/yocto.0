Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
 by mx.groups.io with SMTP id smtpd.web11.11032.1594216259991441636
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jul 2020 06:51:01 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denx.de, ip: 212.18.0.9, mailfrom: sbabic@denx.de)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 4B210x42X9z1qs3M;
	Wed,  8 Jul 2020 15:50:57 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 4B210x3mm8z1r57C;
	Wed,  8 Jul 2020 15:50:57 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
	with ESMTP id NymUPf-VpPXM; Wed,  8 Jul 2020 15:50:55 +0200 (CEST)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net [88.217.136.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPS;
	Wed,  8 Jul 2020 15:50:54 +0200 (CEST)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id 9D43A45403F8;
	Wed,  8 Jul 2020 15:50:54 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([IPv6:::1])
	by localhost (mail.babic.homelinux.org [IPv6:::1]) (amavisd-new, port 10024)
	with ESMTP id l3wcVBF7kv9I; Wed,  8 Jul 2020 15:50:51 +0200 (CEST)
Received: from [192.168.178.64] (paperino.fritz.box [192.168.178.64])
	by babic.homelinux.org (Postfix) with ESMTP id CAC634540338;
	Wed,  8 Jul 2020 15:50:51 +0200 (CEST)
Subject: Re: [yocto] Broken dunfell branch
To: Guy Morand <guy@guy-morand.ch>, yocto@lists.yoctoproject.org
References: <66c69152-4aaa-fdee-2e02-9bd9b8763cbe@guy-morand.ch>
From: "Stefano Babic" <sbabic@denx.de>
Autocrypt: addr=sbabic@denx.de; prefer-encrypt=mutual; keydata=
 mQGiBEfdB5IRBADkpYcnh2BoAkGD5p186ysEkWlcp5DU07m7BKzvkEMRhFjeFUOU0klKNmh0
 ZM6rKpYpAYPYBm9YahMyqvj9DmLrZ4yfJ5MssvW9SRETmHpva+h1rN+DzmEcwrqZmLG1JWGy
 LA5ruJaFSzxJHBoROoog1NDMbNDB8A9F7VKrePfkVwCgmODpW/uh2IuMYLVidzDeuvo7alED
 /iV8rwU7C+eBcKy2htuDsEmsqlkBxIDM7IO6h5XxdyqbZOYizuBP3Ksb6xK54weEaB5aQs7S
 8N9Soi0p1Xh0LMWj6PBCzTC4LF+OCGEMBPc6bBHNzivChgztJlUMioCDSVpOXB/QpBaK302G
 yP5WdmcB1Jn6neq/YRlxHN38MV2yA/46jnzeUotL9LliVZKA/ql4GmyWg2Ae1BUiCqEJQNwl
 knGJOmIS4uABLArB5HjsfDU5hA9FORaNGCIiZlezBkZ3JXA2uQMQhfgqBXrZt4j1fcw9I7E+
 7IZ2kSCeTPZFLd5FiGQPDOm3Z9eHrpK6pmBGMeBG0pDgUEbN9awyLNBLj7QeU3RlZmFubyBC
 YWJpYyA8c2JhYmljQGRlbnguZGU+iGMEExECACMCGwMGCwkIBwMCBBUCCAMEFgIDAQIeAQIX
 gAUCT9deSgIZAQAKCRD09WXkmmjvppF1AKCRl8d49K4yxWzdBVRTTWG55cyo/gCfRD1RAttl
 R1ofs2wGLHNtXousyL25Ag0ER90HmBAIAIFfX4bKnOmCyB3nPh+jbXZuBSMZTuyDEnguRxl5
 N8Q0ayofQwucCBjXYv65sQ9Rq6FNhEnWqUZBu8A5CwvSakOFOGNC5ta/8VxVRLh0Z0ZTgEep
 SKiPonJyacCbmgWDECdVrKowV7QB9be3Wu67uAZ74rPw2Kd7f0FKnL3djvVRMaBWFIpyQ6SE
 bGOCJjhRQ5L1pIM1Soko+reU7eO+1g6IBw6YkFJisdQE6fzTwaSqUKPPsQLz/W03invQltOb
 Eg7ZwtFs0DFonr1DMm57ksiEhW6SN1wylRO/JzRYG1Qe7u1EVln6iV3ilBvbbfkyRssk4/0e
 kicpSnQknA72YOMAAwYH+QGpAiQ4hAMHrp1bUrtyGXYdeQpYufIZAM4etOnBy/G+e1nfu6y+
 jH4SN9sVK7bwBBAbhEJqkqR5LVsFIRapThJQOWB11rQxLpwkBU9wao/pRM+o95ujGo32WUzf
 wWrzWrkTDy7vMCZuUOLVi4n1GZlUAwpG4rzb6UxPC6GWymkVWGgXp1NC58og5i3Y+rKT7+Xi
 XT2BtvC6PDepoH4JhD+9OkHQO6UfTxPSmtgNbTgtl6L6tj+bm5dOHgkPJFMkEiG8qhUZYQzb
 bYz37orRbA72M2bxK76e9QKn0mVu+d/YCd8wRcvvJbGsozpzcxPvD5Wy5RNJCES8McPtAseU
 tMeISQQYEQIACQUCR90HmAIbDAAKCRD09WXkmmjvpv+3AJ9RakBsH1j0X/Kxp6t2lf0VUfS2
 qACfZ+J6ktk8PKNuyHf0J/I0mbCrhV4=
Message-ID: <b3f172de-28d4-ac7d-8e76-70afc609399b@denx.de>
Date: Wed, 8 Jul 2020 15:50:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <66c69152-4aaa-fdee-2e02-9bd9b8763cbe@guy-morand.ch>
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: quoted-printable

Hi Guy,

On 08.07.20 15:15, Guy Morand wrote:
> Hallo Yocto deveopers!
>=20
> For our daily release, we build from the latest dunfell branch. I would
> like to thank and congratulate you because we have been doing so for
> over a year and the build never broke because of poky/OE meta layers!
>=20
> However, we recently got some errors:
>=20
> ERROR: mtd-utils-2.1.1-r0 do_patch: Command Error: 'quilt --quiltrc
> /mnt/sdb/buildAgent/work/8161e17a85bb6b69/build/tmp/work/armv7vet2hf-neo=
n-scewo-linux-gnueabi/mtd-utils/2.1.1-r0/recipe-sysroot-native/etc/quiltrc
> push' exited with 0=C2=A0 Output:
> Applying patch 0001-mtd-utils-Fix-return-value-of-ubiformat.patch
> patching file ubi-utils/ubiformat.c
> Hunk #1 FAILED at 550.
> Hunk #2 FAILED at 643.
> Hunk #3 FAILED at 669.
> 3 out of 3 hunks FAILED -- rejects in file ubi-utils/ubiformat.c
> Patch 0001-mtd-utils-Fix-return-value-of-ubiformat.patch can be
> reverse-applied
> ERROR: Logfile of failure stored in:
> /mnt/sdb/buildAgent/work/8161e17a85bb6b69/build/tmp/work/armv7vet2hf-neo=
n-scewo-linux-gnueabi/mtd-utils/2.1.1-r0/temp/log.do_patch.23641
>=20
> ERROR: Task
> (/mnt/sdb/buildAgent/work/8161e17a85bb6b69/meta-layers/poky/meta/recipes=
-devtools/mtd/mtd-utils_git.bb:do_patch)
> failed with exit code '1'
>=20
> It seems the faulty commit is:
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=3Ddunfell&id=3D=
994783b52e5c0a97000b8b643c8fd80d81069097
>=20
>=20
> For now I simply build from the previous commit and everything is fine.
> Not sure if someone already noticed that or if there is something wrong
> with my setup?
>=20

Do you have meta-swupdate in your layers, too, and are you using -master
(see commit ece400ed5) ?

Best regards,
Stefano Babic

> Best regards,
>=20
> Guy Morand
>=20
>=20
>=20


--=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
