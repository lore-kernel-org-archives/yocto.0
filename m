Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2076C4C800C1
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 08:40:19 -0500 (CDT)
Received: by wyg34 with SMTP id 34so231088wyg.35
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 06:40:19 -0700 (PDT)
Received: by 10.227.177.12 with SMTP id bg12mr2122166wbb.59.1310650818885;
	Thu, 14 Jul 2011 06:40:18 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id eo18sm242196wbb.29.2011.07.14.06.40.17
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 14 Jul 2011 06:40:17 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4E1EEB87.1020200@windriver.com>
Date: Thu, 14 Jul 2011 15:40:15 +0200
Message-Id: <9BDFCF4A-EA10-4963-87E0-556604F3E0AB@dominion.thruhere.net>
References: <F6CE52B0-7638-4DC3-BEC0-3DC44A6794A5@kernel.crashing.org>
	<4E1EEB87.1020200@windriver.com>
To: Bruce Ashfield <Bruce.Ashfield@windriver.com>
X-Mailer: Apple Mail (2.1084)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: IMAGE_FSTYPES that are supported?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 14 Jul 2011 13:40:20 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 14 jul 2011, om 15:13 heeft Bruce Ashfield het volgende geschreven:

> On 07/14/11 09:05, Kumar Gala wrote:
>> Is there a list of which IMAGE_FSTYPES are supported.  I didn't see =
anything in the docs.  Looking to see if a u-boot 'mkimage' wrapped set =
of images is supported or not.
>=20
> I'm not 100% where the list is, but I can confirm that
> uImages are supported and work nicely. Assuming that
> you are talking about the common use case, and not something
> more exotic :)


I think he means partitioned uimages where you have a kernel + initrd in =
a single uimage. We don't support that *yet*, but all the needed blocks =
are there. And we finally get a usecase for having the loadadresses in =
the machine.conf files :)=

