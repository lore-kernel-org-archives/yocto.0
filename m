Return-Path: <koen@dominion.thruhere.net>
Received: from mail-bw0-f48.google.com (mail-bw0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B76EE004CF
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2011 08:48:03 -0700 (PDT)
Received: by bkar19 with SMTP id r19so304581bka.35
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2011 08:48:01 -0700 (PDT)
Received: by 10.223.5.139 with SMTP id 11mr47469006fav.21.1318434480842;
	Wed, 12 Oct 2011 08:48:00 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id u6sm4326430faf.3.2011.10.12.08.47.59
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 12 Oct 2011 08:47:59 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1244.3)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4E95B544.2020907@linux.intel.com>
Date: Wed, 12 Oct 2011 17:47:57 +0200
Message-Id: <D008B06A-39A8-4977-82A0-A3FCA19851D4@dominion.thruhere.net>
References: <4E933C41.4000207@linux.intel.com> <1318371311.23801.128.camel@ted>
	<CAMKF1sp9tBJYzCBpo+zJr3Lhei1=StTGk2BkBmK13AZZwEZz5g@mail.gmail.com>
	<4E94DCD5.2060200@balister.org> <4E95B544.2020907@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1244.3)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: RFC: User configurable recipe features
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
X-List-Received-Date: Wed, 12 Oct 2011 15:48:05 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 12 okt. 2011, om 17:41 heeft Darren Hart het volgende geschreven:

>=20
>=20
> On 10/11/2011 05:18 PM, Philip Balister wrote:
>> On 10/11/2011 07:51 PM, Khem Raj wrote:
>>> On Tue, Oct 11, 2011 at 3:15 PM, Richard Purdie
>>> <richard.purdie@linuxfoundation.org> wrote:
>>>> On Mon, 2011-10-10 at 11:41 -0700, Darren Hart wrote:
>>>>> As part of working on meta-tiny, I've come across a need (want?) =
to
>>>>> present users with the ability to select some set of features in a =
local
>>>>> configuration file that will impact the build of the image and a =
set of
>>>>> recipes.
>>>>>=20
>>>>> It is currently possible to affect which packages are installed in =
an
>>>>> image with variables like POKY_EXTRA_INSTALL. What I'm not finding =
a way
>>>>> to do is specify some set of features that will impact how a =
recipe is
>>>>> built.
>>>>>=20
>>>>> For example, a user may or may not want networking support or =
virtual
>>>>> terminal support in their image. This impacts both the kernel and
>>>>> busybox (at least). The linux-yocto infrastructure provides us =
with
>>>>> config fragment functionality, something similar will need to be =
added
>>>>> to busybox. Access to that is still bound to the machine config by =
means
>>>>> of the SRC_URI machine override mechanism, but it would be useful =
to be
>>>>> able to influence it from the image config or the user's local =
config.
>>>>>=20
>>>>> For example, when building a tiny image I may decide I do not want =
VT
>>>>> nor INET support. I might wish to specify this like this (by =
removing
>>>>> them from the default features):
>>>>>=20
>>>>> local.conf:
>>>>> #CORE_IMAGE_TINY_FEATURES =3D "VT INET MDEV"
>>>>> CORE_IMAGE_TINY_FEATURES =3D "MDEV"
>>>>>=20
>>>>> I would want this to affect linux-yocto-tiny by dropping the =
vt.cfg and
>>>>> inet.cfg fragments from the SRC_URI (or from the .scc descriptor =
files
>>>>> assembled by the linux-yocto meta indrastructure).
>>>>>=20
>>>>> Busybox would need a similar configuration mechanism, and would =
also
>>>>> need to add a "no-vt-support.patch" patch to the SRC_URI to avoid =
a
>>>>> bug/oversight in the busybox init routine.
>>>>>=20
>>>>> I'd appreciate some help determining the proper bitbake way of =
doing
>>>>> this. I want to avoid having to create a new machine.conf and/or =
recipes
>>>>> for every possible combination of features that a user may want to =
turn
>>>>> on or off.
>>>>=20
>>>> We have a few mechanisms around for this but its a difficult =
problem to
>>>> do totally generically since everyone has their own ideas about =
what
>>>> should/shouldn't happen.
>>>>=20
>>>> One tricky aspect is that some people care about package feeds and =
the
>>>> output into those needs to be deterministic. This is why =
DISTRO_FEATURES
>>>> exist which state things like "does x11 make sense"? This means =
dbus may
>>>> or may not be compiled with X but given a set of policy decisions =
by the
>>>> distro, the output is determined.
>>>>=20
>>>> Recently we've taken the idea of PACKAGECONFIG on board. This is =
recipe
>>>> level policy which can enable/disable features in a given recipe =
(e.g.
>>>> does gsteamer depend on and build flac or not?). Whilst we have a =
high
>>>> level setup for this for autotools recipes, this is probably =
something
>>>> we need to do a more custom implementation of for busybox and the
>>>> features you mention above would map well to this. It would be good =
to
>>>> have a standardised way of representing this (and we may also want =
to
>>>> look at moving the kernel feature control towards this variable =
name
>>>> too).
>>>>=20
>>>> What we need to be really really careful about is getting the
>>>> namespacing right and your CORE_IMAGE_TINY_FEATURES =3D "VT INET =
MDEV"
>>>> example above scares me as it mixes up several different things. My
>>>> worry is for example trying to build two different versions of =
busybox
>>>> in the same tmpdir depending on what image you build, for example =
what
>>>> does "bitbake core-image-tiny core-image-sato" do?
>>>>=20
>>>> Contrast this to some settings:
>>>>=20
>>>> PACKAGECONFIG_pn-linux-yocto =3D "vt inet"
>>>> PACKAGECONFIG_pn-busybox =3D "mdev"
>>>>=20
>>>> which then mean you have one set of configuration for these recipes =
and
>>>> its clear what the bitbake command above would result in.
>>>>=20
>>>> One of the bigger problems we're going to have with tiny is its
>>>> effectively a different set of distro settings to our normal =
builds. The
>>>> side effect of that is that you couldn't share a tmpdir with a =
"big"
>>>> build but I'm not sure that is an issue in practise, we just need =
to do
>>>> it in a way which doesn't give us the nasty configuration corner =
cases.
>>>>=20
>>>> So I guess what I'm saying is the end result of your work is likely =
a
>>>> "poky-tiny" distro setting which would take the "poky" distro but =
tweak
>>>> some pieces for really small images. It would need a separate =
tmpdir and
>>>> we should look in the PACKAGECONFIG variable direction for handling
>>>> recipe specific customisations...
>>>>=20
>>>=20
>>> FWIW I agree it seems like a new distro to me. I think if we add =
more to mix
>>> it just will complicate the customizations and may even make it
>>> difficult to share
>>> things.
>>=20
>> Along the same line of thought, does this overlap with the micro =
distro?
>>=20
>=20
> Hrm... the micro distro? What's this?

http://cgit.openembedded.org/meta-micro/=

