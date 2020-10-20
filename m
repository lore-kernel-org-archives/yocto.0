Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
 by mx.groups.io with SMTP id smtpd.web09.3024.1603185535802455514
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Oct 2020 02:18:56 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denx.de, ip: 212.18.0.10, mailfrom: sbabic@denx.de)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 4CFp313MNPz1s0tw;
	Tue, 20 Oct 2020 11:18:53 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 4CFp312frJz1qvgT;
	Tue, 20 Oct 2020 11:18:53 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
	with ESMTP id arHx2LyhBdpS; Tue, 20 Oct 2020 11:18:52 +0200 (CEST)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net [88.217.136.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPS;
	Tue, 20 Oct 2020 11:18:52 +0200 (CEST)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id B61FA454069B;
	Tue, 20 Oct 2020 11:18:51 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([IPv6:::1])
	by localhost (mail.babic.homelinux.org [IPv6:::1]) (amavisd-new, port 10024)
	with ESMTP id l-X2JAprFXEX; Tue, 20 Oct 2020 11:18:48 +0200 (CEST)
Received: from [192.168.178.64] (paperino.fritz.box [192.168.178.64])
	by babic.homelinux.org (Postfix) with ESMTP id 6D6EA454039D;
	Tue, 20 Oct 2020 11:18:48 +0200 (CEST)
Subject: Re: [yocto] Generating non-rootfs file system images as update artifacts for multi-partition image updates
To: =?UTF-8?Q?Martin_Hundeb=c3=b8ll?= <martin@geanix.com>,
 Stefano Babic <sbabic@denx.de>, Enrico J?rns <ejo@pengutronix.de>,
 yocto@lists.yoctoproject.org
Cc: jlu <jlu@pengutronix.de>
References: <38cd4e9f948e734b3f32b4273fdde8d244507a37.camel@pengutronix.de>
 <7cbd24d7-1240-c944-83ba-fe23e39f3cce@denx.de>
 <76407cc3-811c-5e12-c895-525b0e8ede40@geanix.com>
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
Message-ID: <0b6ec216-d760-9920-bbf0-fa3c7fdc15b3@denx.de>
Date: Tue, 20 Oct 2020 11:18:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <76407cc3-811c-5e12-c895-525b0e8ede40@geanix.com>
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: quoted-printable

Hi Martin,

On 20.10.20 11:00, Martin Hundeb=C3=B8ll wrote:
> Hi Stefano,
>=20
> On 19/10/2020 18.23, Stefano Babic wrote:
>> Hi Enrico,
>>
>> On 19.10.20 17:43, Enrico J?rns wrote:
>>> Hi,
>>>
>>> as I did not have much success with my question in the OR irc, let's
>>> try it here in a more verbose way. ;)
>>>
>>> Imagine I have an A+B redundant boot system, with additional bootload=
er
>>> and separate home or application file system. Thus my layout would be
>>> like:
>>>
>>> p1: bootloader
>>> p2: rootfs A
>>> p3: rootfs B
>>> p4: appfs A
>>> p5: appfs B
>>>
>>> where rootfs A + appfs A form a logical unit with respect to the imag=
e-
>>> based update handling.
>>>
>>> No my question is: How do I generate the images required for the
>>> bootloader partition and/or the appfs partition with the OE standard
>>> image generation mechanisms?
>>>
>>> We have a working solution with the 'genimage' tool for quite some
>>> time, but I wonder if that could be done with the more tightly
>>> integrated wic, too.
>>>
>>>
>>> To my understanding, the way of creating something like a bootloader
>>> image or an application file system is by using wic's image split
>>> capabilities and doing (non-redundant example):
>>>
>>> part /boot --source rootfs (or some plugin)
>>> part / ... --source rootfs
>>> part /app=C2=A0 --source rootfs
>>
>> I had the same use case as you, and I could use something like
>>
>> part /app --source rawcopy --sourceparams=3D"file=3D..."
>>
>> and the file points to the image I want to put on the partition.
>>
>>>
>>> This will create multiple file system images out of the prior monolit=
ic
>>> rootfs one. It also does all necessary changes for mounting, like
>>> modifying the rootfs /etc/fstab etc.
>>> Thus, using these generated images in my update scenario would be the
>>> way to go for me.
>>>
>>>
>>> BUT, currently I do not see any straight-forward way of how to use
>>> them. One could add them to what the image_wic* image fstypes generat=
e,
>>> but this will violate the default rule that each image fstype generat=
es
>>> exactly one image.
>>> And the generated images are a little hard to reference as one cannot
>>> give them names (which is probably a negligable issue) and they do no=
t
>>> have a fstype extension.
>>> The more sever issue is that I would also like to have archives (like
>>> tar.bz2) of the content of /app or /boot as I can use them quite good
>>> for installing to partitions whose size and other parameters I do not
>>> know very beforehand (also applicable to UBI volumes).
>>>
>>> But, at the moment there does not seem to be a designated way of doin=
g
>>> something like I intended. I wonder how others solve the generation o=
f
>>> non-rootfs images with YP/OE?
>>>
>>> Or did I miss something that already exists for this?
>>
>> I have not a straightforward solution. I inherited just "image" and I
>> cleaned up at the end with a ROOTFS_POSTPROCESS_COMMAND what was
>> superfluous. Maybe forcing packagegroup-core-boot can be an option.
>=20
> Yeah, this is also what I often end up doing. I often need a way to
> bundle several artifacts together, i.e. bootloader, rootfs, sdk, etc.
>=20
> With that in mind, I would also very much like a way to make image
> artifacts available in WORKDIR without pulling from DEPLOY_DIR_IMAGE -
> it just feels wrong to use files from the output folder as input in rec=
ipe.
>=20

...but as Enrico already said (and I agree with him), this is quite a
"hacking" way to do it. Anyway, I would prefer a clean way in this
direction instead of generating a wic just to extract artifacts (but
again, this is just another way to reach the goal, probably it is just a
question of taste). This could be maybe reachable introducing a more
"base" class for image (or one inheriting just from image ) and make
sure that no packages are implicitely (ok, this means to force
RDEPENDS..) installed.

Regards,
Stefano


--=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
