Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id 045C14C800AB
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 11:20:18 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6EGK7qW002137;
	Thu, 14 Jul 2011 11:20:07 -0500
Mime-Version: 1.0 (Apple Message framework v1084)
From: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <4E1EF577.2080807@windriver.com>
Date: Thu, 14 Jul 2011 11:20:06 -0500
Message-Id: <AD2400E9-D0BD-4064-8905-40647AB26518@kernel.crashing.org>
References: <F6CE52B0-7638-4DC3-BEC0-3DC44A6794A5@kernel.crashing.org>
	<4E1EEB87.1020200@windriver.com>
	<9BDFCF4A-EA10-4963-87E0-556604F3E0AB@dominion.thruhere.net>
	<4E1EF577.2080807@windriver.com>
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
X-List-Received-Date: Thu, 14 Jul 2011 16:20:20 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jul 14, 2011, at 8:56 AM, Bruce Ashfield wrote:

> On 07/14/11 09:40, Koen Kooi wrote:
>>=20
>> Op 14 jul 2011, om 15:13 heeft Bruce Ashfield het volgende =
geschreven:
>>=20
>>> On 07/14/11 09:05, Kumar Gala wrote:
>>>> Is there a list of which IMAGE_FSTYPES are supported.  I didn't see =
anything in the docs.  Looking to see if a u-boot 'mkimage' wrapped set =
of images is supported or not.
>>>=20
>>> I'm not 100% where the list is, but I can confirm that
>>> uImages are supported and work nicely. Assuming that
>>> you are talking about the common use case, and not something
>>> more exotic :)
>>=20
>>=20
>> I think he means partitioned uimages where you have a kernel + initrd =
in a single uimage. We don't support that *yet*, but all the needed =
blocks are there. And we finally get a usecase for having the =
loadadresses in the machine.conf files :)
>=20
> Yah, that's what I wondered as well. I've done this locally,
> but nothing out of the box .. so I had nagging doubts!
>=20
> Cheers,
>=20
> Bruce
>=20

What's the IMAGE_FSTYPE for a normal uImage ?

- k=

