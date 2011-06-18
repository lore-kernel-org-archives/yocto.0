Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 431BF4C800AC
	for <yocto@yoctoproject.org>; Sat, 18 Jun 2011 11:32:19 -0500 (CDT)
Received: by wyb40 with SMTP id 40so3659897wyb.35
	for <yocto@yoctoproject.org>; Sat, 18 Jun 2011 09:32:19 -0700 (PDT)
Received: by 10.227.164.129 with SMTP id e1mr3321929wby.67.1308414737954;
	Sat, 18 Jun 2011 09:32:17 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id fl19sm1803998wbb.32.2011.06.18.09.32.16
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 18 Jun 2011 09:32:16 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4DFCCDD5.2040005@windriver.com>
Date: Sat, 18 Jun 2011 18:32:14 +0200
Message-Id: <6E8B5151-B486-4769-ACCD-DF97C0F77954@dominion.thruhere.net>
References: <cover.1308351938.git.dvhart@linux.intel.com>
	<E7D9CEE2-98E3-42F4-B2C2-CF1B72049AB8@dominion.thruhere.net>
	<4DFCBF67.4000808@linux.intel.com>
	<430B8D35-8952-4193-9C39-445651FD25A7@dominion.thruhere.net>
	<855B477A-4466-49C8-9886-36E2FC6AC9C8@dominion.thruhere.net>
	<4DFCCDD5.2040005@windriver.com>
To: Bruce Ashfield <Bruce.Ashfield@windriver.com>
X-Mailer: Apple Mail (2.1084)
Cc: yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: [PULL][linux-yocto] beagleboard: sync with meta-ti linux-omap_2.6.37
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
X-List-Received-Date: Sat, 18 Jun 2011 16:32:20 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 18 jun 2011, om 18:09 heeft Bruce Ashfield het volgende geschreven:

> On 11-06-18 11:13 AM, Koen Kooi wrote:
>>=20
>> Op 18 jun 2011, om 17:10 heeft Koen Kooi het volgende geschreven:
>>=20
>>>=20
>>> Op 18 jun 2011, om 17:08 heeft Darren Hart het volgende geschreven:
>>>=20
>>>>=20
>>>>=20
>>>> On 06/18/2011 01:11 AM, Koen Kooi wrote:
>>>>>=20
>>>>> Op 18 jun 2011, om 01:18 heeft Darren Hart het volgende =
geschreven:
>>>>>=20
>>>>>> From: Darren Hart<dvhart@linux.intel.com>
>>>>>>=20
>>>>>> The following commits have been pulled in from the meta-ti
>>>>>> linux-omap_2.6.37 recipe, with the exception of: USB: ehci: =
remove
>>>>>> structure packing from ehci_def which hails from mainline and
>>>>>> should be applied to yocto/base, while the rest should be applied
>>>>>> to yocto/standard/beagleboard.
>>>>>>=20
>>>>>> Fixes [YOCTO #764] Fixes [YOCTO #765] Fixes [YOCTO #767]
>>>>>>=20
>>>>>> This brings linux-yocto in sync with the meta-ti =
linux-omap_2.6.37
>>>>>> recipe and significantly improves Beagleboard support in
>>>>>> linux-yocto. As there are 115 patches in total, and none of them
>>>>>> are new, I have omitted them from the email.
>>>>>=20
>>>>>=20
>>>>> You seem to be including the patches that patch the  kernel from
>>>>> 37rc7 (or rc8, I forget) to .37 final, which shouldn't apply. So
>>>>> basically leave out the patches in the 'linus' directory.
>>>>=20
>>>> There were about 200 patches in total, I've removed all those that
>>>> reverse applied and failed do to a conflict that was obviously a =
merge
>>>> of a very similar patch. That accounted for most of the 37-rc[78] =
to 37
>>>> patches from the linus directory.
>>>>=20
>>>>> The camera
>>>>> interface also doesn't work, so the 'media' directory can be left =
out
>>>>> as well.
>>>>=20
>>>> The goal was to stay as close to the meta-ti/linux-omap_2.6.37 =
recipe as
>>>> possible with the linux-yocto kernel repository. Will you be =
removing
>>>> all of the media directory from there as well? I don't want to =
remove
>>>> them from here if you'll be *adding* to them there. However, if =
you'll
>>>> be sure to just be replacing them there, then I can drop them here.
>>>=20
>>> The .37 isn't used, developed or supported for beagleboard anymore, =
.39 is all the rage now :)
>>=20
>> Speaking of .39, is there a 'linux-yocto' type of tree for .39 =
mainline with a skeleton for machine support? If there is, I'd like to =
fork it to see if it can improve my current workflow which consist of =
self written scripts that emulate guilt.
>=20
> I've got the linux-yocto-dev recipe in poky-extras, meta-kernel-dev
> layer. That recipe tracked 2.6.39, and has now jumped to 3.0 (with
> a minor cheat as I work through the 3.0 naming issues). The kernel
> repo is hosted on git.yoctoproject.org as the linux-yocto-dev repo.
>=20
> The repo is fast forward for a given version, and then is re-generated
> when I jump it from version to version. I carry forward all the =
existing
> patches and keep the qemu machines working. Although at the moment,
> qemuppc is losing interrupts and can't get past init :)
>=20
> That's also the repo where I'm testing out some changes to kern-tools
> (but they are stable), which will show up shortly.

Thanks, I'll have a look at that. Is there already some doc out on how =
to create such a structure from scratch?=

