Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
 by mx.groups.io with SMTP id smtpd.web11.519.1603124608523150168
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Oct 2020 09:23:29 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denx.de, ip: 212.18.0.10, mailfrom: sbabic@denx.de)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 4CFMWH2rVlz1rtZW;
	Mon, 19 Oct 2020 18:23:23 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 4CFMWH2TjHz1sM9C;
	Mon, 19 Oct 2020 18:23:23 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
	with ESMTP id FcgV0PIboSyG; Mon, 19 Oct 2020 18:23:22 +0200 (CEST)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net [88.217.136.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPS;
	Mon, 19 Oct 2020 18:23:22 +0200 (CEST)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id CF7484540636;
	Mon, 19 Oct 2020 18:23:21 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([IPv6:::1])
	by localhost (mail.babic.homelinux.org [IPv6:::1]) (amavisd-new, port 10024)
	with ESMTP id ig9CBqtN56TH; Mon, 19 Oct 2020 18:23:19 +0200 (CEST)
Received: from [192.168.178.64] (paperino.fritz.box [192.168.178.64])
	by babic.homelinux.org (Postfix) with ESMTP id 2F22C4540483;
	Mon, 19 Oct 2020 18:23:19 +0200 (CEST)
Subject: Re: [yocto] Generating non-rootfs file system images as update artifacts for multi-partition image updates
To: Enrico J?rns <ejo@pengutronix.de>, yocto@lists.yoctoproject.org
Cc: jlu <jlu@pengutronix.de>
References: <38cd4e9f948e734b3f32b4273fdde8d244507a37.camel@pengutronix.de>
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
Message-ID: <7cbd24d7-1240-c944-83ba-fe23e39f3cce@denx.de>
Date: Mon, 19 Oct 2020 18:23:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <38cd4e9f948e734b3f32b4273fdde8d244507a37.camel@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: 7bit

Hi Enrico,

On 19.10.20 17:43, Enrico J?rns wrote:
> Hi,
> 
> as I did not have much success with my question in the OR irc, let's
> try it here in a more verbose way. ;)
> 
> Imagine I have an A+B redundant boot system, with additional bootloader
> and separate home or application file system. Thus my layout would be
> like:
> 
> p1: bootloader
> p2: rootfs A
> p3: rootfs B
> p4: appfs A
> p5: appfs B
> 
> where rootfs A + appfs A form a logical unit with respect to the image-
> based update handling.
> 
> No my question is: How do I generate the images required for the
> bootloader partition and/or the appfs partition with the OE standard
> image generation mechanisms?
> 
> We have a working solution with the 'genimage' tool for quite some
> time, but I wonder if that could be done with the more tightly
> integrated wic, too.
> 
> 
> To my understanding, the way of creating something like a bootloader
> image or an application file system is by using wic's image split
> capabilities and doing (non-redundant example):
> 
> part /boot --source rootfs (or some plugin)
> part / ... --source rootfs
> part /app  --source rootfs

I had the same use case as you, and I could use something like

part /app --source rawcopy --sourceparams="file=..."

and the file points to the image I want to put on the partition.

> 
> This will create multiple file system images out of the prior monolitic
> rootfs one. It also does all necessary changes for mounting, like
> modifying the rootfs /etc/fstab etc.
> Thus, using these generated images in my update scenario would be the
> way to go for me.
> 
> 
> BUT, currently I do not see any straight-forward way of how to use
> them. One could add them to what the image_wic* image fstypes generate,
> but this will violate the default rule that each image fstype generates
> exactly one image.
> And the generated images are a little hard to reference as one cannot
> give them names (which is probably a negligable issue) and they do not
> have a fstype extension.
> The more sever issue is that I would also like to have archives (like
> tar.bz2) of the content of /app or /boot as I can use them quite good
> for installing to partitions whose size and other parameters I do not
> know very beforehand (also applicable to UBI volumes).
> 
> But, at the moment there does not seem to be a designated way of doing
> something like I intended. I wonder how others solve the generation of
> non-rootfs images with YP/OE?
> 
> Or did I miss something that already exists for this?

I have not a straightforward solution. I inherited just "image" and I
cleaned up at the end with a ROOTFS_POSTPROCESS_COMMAND what was
superfluous. Maybe forcing packagegroup-core-boot can be an option.

Best regards,
Stefano

-- 
=====================================================================
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================
