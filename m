Return-Path: <mike.looijmans@topic.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2885FE00961; Wed, 26 Nov 2014 06:38:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [217.149.192.139 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp103.mer-nm.internl.net (smtp103.mer-nm.internl.net
	[217.149.192.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83A99E00942
	for <yocto@yoctoproject.org>; Wed, 26 Nov 2014 06:38:29 -0800 (PST)
Received: from amavisd-new (mailscanner08.wrt-nm.internl.net [217.149.192.54])
	by smtp103.mer-nm.internl.net (Postfix) with ESMTP id 25C523F82D
	for <yocto@yoctoproject.org>; Wed, 26 Nov 2014 15:38:28 +0100 (CET)
Received: from smtp103.mer-nm.internl.net ([217.149.192.139])
	by amavisd-new (mailscanner08.wrt-nm.internl.net [217.149.192.160])
	(amavisd-new, port 10024) with ESMTP for <yocto@yoctoproject.org>;
	Wed, 26 Nov 2014 15:38:27 +0100 (CET)
Received: from TOP-EX01.TOPIC.LOCAL (mail.topic.nl [82.204.13.182])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp103.mer-nm.internl.net (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Wed, 26 Nov 2014 15:38:27 +0100 (CET)
Received: from [192.168.80.45] (192.168.80.45) by TOP-EX01.TOPIC.LOCAL
	(192.168.10.102) with Microsoft SMTP Server (TLS) id 14.3.181.6;
	Wed, 26 Nov 2014 15:38:41 +0100
Message-ID: <5475E5E2.7090805@topic.nl>
Date: Wed, 26 Nov 2014 15:38:26 +0100
From: Mike Looijmans <mike.looijmans@topic.nl>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <4B07ADD556F70043925DA2E9C5D4346D2FDB561BFD@MSXBEBVT12.planar.net>
In-Reply-To: <4B07ADD556F70043925DA2E9C5D4346D2FDB561BFD@MSXBEBVT12.planar.net>
X-Originating-IP: [192.168.80.45]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
Subject: Re: Support for writable files with a read-only root file system
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 26 Nov 2014 14:38:41 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFThe one-size-fits-all solution is to use an unionfs, and a writabl=
e part in=20
RAM or mounted elsewhere, e.g. in flash (typically a tiny jffs2 partition).

It requires quite some scripting to get right, you have to boot the system =
and=20
then mount the overlay, the unionfs to join it with the rootfs, and then=20
"pivot" it to make it the new root.

After that you get a root where you can modify any file, and even persist t=
hat=20
change (if you use a persistent overlay).



On 11/26/2014 08:51 AM, Matt Schuckmann wrote:
> I've been investigating the support for read only root file systems and t=
rying to suss out how to support persistent writeable files in my image whe=
re the root file system is read only, this seems like a very common thing f=
or an embedded Linux system to need but I'm not seeing the support for it.
>
> I should note that I'm working off of the Dylan branch, I'm not sure if t=
hings have changed in a newer branch.
>
> So far I've had to read the code to figure out as much as I have, and I h=
aven't found any documentation for this, am I missing something?
>
> It appears that my recipe(s) are supposed to install a volatiles file und=
er ${D}${sysconfdir}/default/volatiles/ that lists out the volatile directo=
ries, links and files that need to be created in the image.
>
> For writeable persistent files I would presume that I should specify link=
s that point to some place on a write partition.
>
> What I don't see is any sort of mechanism for setting up the default file=
s on that writeable partition, am I on my own for this or is there some oth=
er recommended mechanism.
>
> In my early research I found the MentorEmbedded/meta-ro-rootfs layer that=
 had a nifty way of specifying VOLATILE_BINDS to create a list of binds tha=
t should occur at boot up and in the process creating the mounts if the tar=
get of the bind didn't exist a copy was made from the read only location, t=
his appears to have provided a sort of default to go into the writeable loc=
ation. Was this functionality abandoned when support for ro-rootfs was brou=
ght into oe-core? If so why?
>
> A good example for the kind of writeable persistent file that I intend to=
 have is /etc/network/interfaces
> How do I go about letting the init_ifupdown recipe install it normally an=
d then have another recipe or even the image configure it to be either a li=
nk or a bind mount at another location while still preserving the default c=
ontents.
>
> I hope I'm making sense here.
>
> Thanks,
> Matt S.
>



Met vriendelijke groet / kind regards,

Mike Looijmans
System Expert


TOPIC Embedded Systems
Eindhovenseweg 32-C, NL-5683 KH Best
Postbus 440, NL-5680 AK Best
Telefoon: (+31) (0) 499 33 69 79
Telefax:  (+31) (0) 499 33 69 70
E-mail: mike.looijmans@topic.nl
Website: www.topic.nl

Please consider the environment before printing this e-mail

Topic zoekt gedreven (embedded) software specialisten!
http://topic.nl/vacatures/topic-zoekt-software-engineers/


