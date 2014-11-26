Return-Path: <matt.schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E974E00953; Tue, 25 Nov 2014 23:51:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [63.128.21.105 listed in list.dnswl.org]
Received: from us-smtp-delivery-105.mimecast.com
	(us-smtp-delivery-105.mimecast.com [63.128.21.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD14EE008C6
	for <yocto@yoctoproject.org>; Tue, 25 Nov 2014 23:51:43 -0800 (PST)
Received: from msxbvt03.planar.net (199.244.171.48 [199.244.171.48]) by
	us-mta-6.us.mimecast.lan; Wed, 26 Nov 2014 02:51:41 -0500
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Tue, 25 Nov 2014 23:51:35 -0800
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Tue, 25 Nov 2014 23:51:33 -0800
Thread-Topic: Support for writable files with a read-only root file system
Thread-Index: AdAJTZ3XNi7l6+XhTSW9vKEnveuh8g==
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FDB561BFD@MSXBEBVT12.planar.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-MC-Unique: mkK0Hv3dRWCHDT4hchoF2A-1
Subject: Support for writable files with a read-only root file system
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
X-List-Received-Date: Wed, 26 Nov 2014 07:51:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

I've been investigating the support for read only root file systems and try=
ing to suss out how to support persistent writeable files in my image where=
 the root file system is read only, this seems like a very common thing for=
 an embedded Linux system to need but I'm not seeing the support for it.=20
=20
I should note that I'm working off of the Dylan branch, I'm not sure if thi=
ngs have changed in a newer branch.=20

So far I've had to read the code to figure out as much as I have, and I hav=
en't found any documentation for this, am I missing something?=20

It appears that my recipe(s) are supposed to install a volatiles file under=
 ${D}${sysconfdir}/default/volatiles/ that lists out the volatile directori=
es, links and files that need to be created in the image.=20

For writeable persistent files I would presume that I should specify links =
that point to some place on a write partition.=20

What I don't see is any sort of mechanism for setting up the default files =
on that writeable partition, am I on my own for this or is there some other=
 recommended mechanism.=20

In my early research I found the MentorEmbedded/meta-ro-rootfs layer that h=
ad a nifty way of specifying VOLATILE_BINDS to create a list of binds that =
should occur at boot up and in the process creating the mounts if the targe=
t of the bind didn't exist a copy was made from the read only location, thi=
s appears to have provided a sort of default to go into the writeable locat=
ion. Was this functionality abandoned when support for ro-rootfs was brough=
t into oe-core? If so why?=20

A good example for the kind of writeable persistent file that I intend to h=
ave is /etc/network/interfaces
How do I go about letting the init_ifupdown recipe install it normally and =
then have another recipe or even the image configure it to be either a link=
 or a bind mount at another location while still preserving the default con=
tents.=20

I hope I'm making sense here.=20

Thanks,
Matt S.=20


