Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
 by mx.groups.io with SMTP id smtpd.web10.4146.1585050840456436538
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Mar 2020 04:54:01 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denx.de, ip: 212.18.0.9, mailfrom: sbabic@denx.de)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 48mqQt6W9mz1qsbl;
	Tue, 24 Mar 2020 12:53:58 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 48mqQt5DgMz1r0c1;
	Tue, 24 Mar 2020 12:53:58 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
	with ESMTP id wI5H55MGX50r; Tue, 24 Mar 2020 12:53:57 +0100 (CET)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net [88.217.136.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPS;
	Tue, 24 Mar 2020 12:53:57 +0100 (CET)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id 8537745408CF;
	Tue, 24 Mar 2020 12:53:57 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([IPv6:::1])
	by localhost (mail.babic.homelinux.org [IPv6:::1]) (amavisd-new, port 10024)
	with ESMTP id WEUX9c4ULDpt; Tue, 24 Mar 2020 12:53:55 +0100 (CET)
Received: from [IPv6:2001:a61:6092:1f01:d1cf:3fe6:4801:4a9b] (paperino.fritz.box [IPv6:2001:a61:6092:1f01:d1cf:3fe6:4801:4a9b])
	by babic.homelinux.org (Postfix) with ESMTP id F33B345408A7;
	Tue, 24 Mar 2020 12:53:54 +0100 (CET)
Subject: Re: [yocto] Building FIT images with different initramfs images
To: Vladimir Motyka <vladimir.motyka@kistler.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <cfa2c0f18911496e8d3ebb61287a0e81@kistler.com>
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
Message-ID: <76da1b39-7e96-c7ec-ef30-21b7d2b6ccba@denx.de>
Date: Tue, 24 Mar 2020 12:53:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <cfa2c0f18911496e8d3ebb61287a0e81@kistler.com>
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: 7bit

Hi Vladimir,

On 24.03.20 11:00, Vladimir Motyka wrote:
> Hello,
> 
> I want to ask if there is some best practice or recommendation on how to build multiple FIT images with different initramfs image. We need more FIT images with a different set of packages to support different use cases(development image, production test image, etc.).
> 
> As the INITRAMFS_IMAGE variable is set in the machine configuration, we defined more machines with different INITRAMFS_IMAGE value. I think this is abusing of machine configuration.
> 
> I found a similar question here on the mailing list (https://www.yoctoproject.org/pipermail/yocto/2017-August/037676.html), where Christian describes his solution - adjusting kernel.bbclass and kernel-fitimage.bbclass and creating a new variable INITRAMFS_IMAGES. However, it wasn't integrated into YP.
> 
> To summarize, is there a better/recommended solution for building multiple FIT images with different initramfs image, then abusing the MACHINE configuration, or adjusting kernel.bbclass and kernel-fitimage.bbclass by myself?
> 

I do not know if there is a best practise - but I do not like to extend
kernel classes as described above. IMHO the ramdisk does not belong to
MACHINE. I can build several images, and I would like that some of them
are put into a fit container. The kernel-fitimage class fits a very
common use case and generates the .its file (the description of fitIMage
used by mkimage), too, but it cannot fit all possible use cases: I have
often to put into a fitImage other components, like FPGA bitstreams,
splash images, multiple DTs and further configuration.

I see and I use fitImage as a container for an image class, that means
not bound to MACHINE. So in my image recipe (where I generate the
Ramdisk), I add a task that uses a fetched "its" file to generate the
resulting fitImage.

Somethink like:


SRC_URI = " my-fit.its"

do_prepareitb() {
     < further compression, and so on>

      mkimage -f ${WORKDIR}/my-fit.its ${WORKDIR}/${PN}-${MACHINE}.itb

}

addtask prepareitb before do_build after do_image_complete

Maybe someone else has solved in a different way..

Best regards,
Stefano Babic




-- 
=====================================================================
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================
