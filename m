Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id CAC954C800AB
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 11:21:25 -0500 (CDT)
Received: by wwf4 with SMTP id 4so460607wwf.11
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 09:21:24 -0700 (PDT)
Received: by 10.227.11.134 with SMTP id t6mr2287196wbt.21.1310660484430;
	Thu, 14 Jul 2011 09:21:24 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id fo2sm319800wbb.14.2011.07.14.09.21.23
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 14 Jul 2011 09:21:23 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <AD2400E9-D0BD-4064-8905-40647AB26518@kernel.crashing.org>
Date: Thu, 14 Jul 2011 18:21:21 +0200
Message-Id: <1943392B-9988-4CDD-8147-E25F8C8C7203@dominion.thruhere.net>
References: <F6CE52B0-7638-4DC3-BEC0-3DC44A6794A5@kernel.crashing.org>
	<4E1EEB87.1020200@windriver.com>
	<9BDFCF4A-EA10-4963-87E0-556604F3E0AB@dominion.thruhere.net>
	<4E1EF577.2080807@windriver.com>
	<AD2400E9-D0BD-4064-8905-40647AB26518@kernel.crashing.org>
To: Kumar Gala <galak@kernel.crashing.org>
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
X-List-Received-Date: Thu, 14 Jul 2011 16:21:26 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 14 jul 2011, om 18:20 heeft Kumar Gala het volgende geschreven:

>=20
> On Jul 14, 2011, at 8:56 AM, Bruce Ashfield wrote:
>=20
>> On 07/14/11 09:40, Koen Kooi wrote:
>>>=20
>>> Op 14 jul 2011, om 15:13 heeft Bruce Ashfield het volgende =
geschreven:
>>>=20
>>>> On 07/14/11 09:05, Kumar Gala wrote:
>>>>> Is there a list of which IMAGE_FSTYPES are supported.  I didn't =
see anything in the docs.  Looking to see if a u-boot 'mkimage' wrapped =
set of images is supported or not.
>>>>=20
>>>> I'm not 100% where the list is, but I can confirm that
>>>> uImages are supported and work nicely. Assuming that
>>>> you are talking about the common use case, and not something
>>>> more exotic :)
>>>=20
>>>=20
>>> I think he means partitioned uimages where you have a kernel + =
initrd in a single uimage. We don't support that *yet*, but all the =
needed blocks are there. And we finally get a usecase for having the =
loadadresses in the machine.conf files :)
>>=20
>> Yah, that's what I wondered as well. I've done this locally,
>> but nothing out of the box .. so I had nagging doubts!
>>=20
>> Cheers,
>>=20
>> Bruce
>>=20
>=20
> What's the IMAGE_FSTYPE for a normal uImage ?

None, it's built by the kernel class, not the rootfs class.=

