Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 574F4E004DD
	for <yocto@yoctoproject.org>; Tue, 27 Sep 2011 13:08:11 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Sep 2011 13:08:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="56485026"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga001.jf.intel.com with ESMTP; 27 Sep 2011 13:08:11 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 27 Sep 2011 13:08:10 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.109]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.146]) with mapi id
	14.01.0323.003; Tue, 27 Sep 2011 13:08:10 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Hart, Darren" <darren.hart@intel.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Thread-Topic: [yocto] MACHINE_EXTRA_* and MACHINE_ESSENTIAL_* documentation
Thread-Index: AQHMeKWQ6kaoPJ9rb0aZgniXPgA3h5Vh3seAgAAlNICAACD6AP//i8XQ
Date: Tue, 27 Sep 2011 20:08:10 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237916E832F3@ORSMSX101.amr.corp.intel.com>
References: <4E7A573D.8040207@linux.intel.com> <4E81F113.1050706@intel.com>
	<1317146705.26109.215.camel@ted> <4E822BF2.2090603@intel.com>
In-Reply-To: <4E822BF2.2090603@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>, "Wold, Saul" <saul.wold@intel.com>,
	"Eggleton, Paul" <paul.eggleton@intel.com>
Subject: Re: MACHINE_EXTRA_* and MACHINE_ESSENTIAL_* documentation
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
X-List-Received-Date: Tue, 27 Sep 2011 20:08:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am currently crafting descriptions of these four variables plus the RDEPE=
NDS and RRECOMMENDS variables.  When I get them done I will distribute for =
discussion.=20

Thanks,=20
Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Darren Hart
Sent: Tuesday, September 27, 2011 1:03 PM
To: Richard Purdie
Cc: Yocto Project; Eggleton, Paul; Wold, Saul
Subject: Re: [yocto] MACHINE_EXTRA_* and MACHINE_ESSENTIAL_* documentation

On 09/27/2011 11:04 AM, Richard Purdie wrote:
> On Tue, 2011-09-27 at 08:51 -0700, Darren Hart wrote:
>> On 09/21/2011 02:29 PM, Darren Hart wrote:
>>> This is something I've run into frequently and have been putting off
>>> trying to resolve. Hopefully the following will help illustrate the pat=
h
>>> a BSP developer might go down trying to use the MACHINE_ESSENTIAL* and
>>> MACHINE_EXTRA* variables. If someone with more knowledge on the subject
>>> could fill in the gaps noted below, I'll be happy to test and work with
>>> Scott to improve the documentation.
>>>
>>> I am unable to discern from the following text in the reference manual,
>>> which variable I should be using to include a firmware package in the
>>> images for a given BSP.
>>>
>>> From
>>> http://www.yoctoproject.org/docs/1.1/poky-ref-manual/poky-ref-manual.ht=
ml:
>>>
>>> "
>>> MACHINE_ESSENTIAL_RDEPENDS
>>>
>>>     List of packages required to boot device
>>> MACHINE_ESSENTIAL_RRECOMMENDS
>>>
>>>     List of packages required to boot device (usually additional kernel
>>> modules)
>>
>> As Saul points out, these should be:
>>
>> MACHINE_ESSENTIAL_EXTRA_*
>>
>>
>>> MACHINE_EXTRA_RDEPENDS
>>>
>>>     List of packages required to use device
>>> MACHINE_EXTRA_RRECOMMNEDS  (<-- typo still present)
>>>
>>>     List of packages useful to use device (for example additional kerne=
l
>>> modules)
>>> "
>>>
>>> From the above, I don't learn anything about what the impact of using
>>> each of these variables is. Which ones add the packages to the rootfs,
>>> which only build them, do they impact the initrd (one might assume a
>>> package required for boot should be in the initrd). The difference
>>> between RDEPENDS and RRECOMMENDS is unclear. Three of the four use the
>>> term "required" while the other uses "useful" in the description.
>>> Neither semantic split (RDEPENDS vs. RRECOMMENDS, ESSENTIAL vs. EXTRA)
>>> can be understood from the available descriptions.
>>>
>>> The firmware I want to add is needed for wireless functionality. This i=
s
>>> likely not required for boot, so I added it to MACHINE_EXTRA_RRECOMMEND=
S
>>> as it is only needed if the wireless driver is used. This resulted in
>>> the package being built, but not installed. In practice this would mean
>>> that people building the BSP would need to manually add the firmware
>>> package to IMAGE_INSTALL or install it manually later. This strikes me
>>> as unnecessarily complex.
>>>
>>> This was also unexpected given the definition of RRECOMMENDS in the
>>> manual, which would have led me to believe the package should have been
>>> installed:
>>>
>>> "
>>> RRECOMMENDS
>>>
>>>     List of packages which extend usability of the package. Those
>>> packages will be automatically installed but can be removed by user.
>>> "
>>
>>
>> Paul E. explained that RRECOMMENDS differs from RDEPENDS in that if a
>> RRECOMMENDS package is not available (because the providing recipe
>> doesn't build it - like a custom linux kernel not building a particular
>> module) the image build will continue and not error out.
>=20
> Right. Its really there so people can flag modules to include (if
> they're built as modules) so that is that difference.
>=20
> Let me explain what should happen:
>=20
> ESSENTIAL are ones which are required to get the system to boot and be
> of any use. These would be flash/mtd drivers, screen drivers,
> keyboard/mouse/touchscreen.=20
>=20
> The EXTRA things are things that are nice to have but are not needed to
> boot. Wifi drivers would be an example if we known a given machine
> contains some kind of wifi card, the driver would need to be present to
> make the system 100% functional.
>=20
> There is a line in task-base.bb which hints at this:
>=20
> #
> # those ones can be set in machine config to supply packages needed to ge=
t machine booting
> #
> MACHINE_ESSENTIAL_EXTRA_RDEPENDS ?=3D ""
> MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS ?=3D ""
>=20
>=20
>>> I wasn't able to find a general meaning for the term "EXTRA" by
>>> searching through the manual.
>>>
>>> I then tried the remaining 3 variables, doing the following after
>>> setting each:
>>>
>>> $ bitbake -c cleanall task-machine-base task-core-boot
>>> linux-firmware-core-image-sato
>>> $ bitbake -u depexp -g core-image-sato
>>> $ bitbake core-image-sato
>>>
>>> I then determined if the linux-firmware package appeared in the list
>>> presented by the depexp UI and whether or not the linux-firmware packag=
e
>>> was built and installed. The results follow:
>>>
>>> MACHINE_EXTRA_RDEPENDS =3D "linux-firmware-iwlwifi-6000g2a-5"
>>> # appears in depexp with no rdepends, builds, does not install
>>>
>>> #MACHINE_EXTRA_RECOMMENDS +=3D "linux-firmware-iwlwifi-6000g2a-5"
>>> # does not appear in depexp, does not build
>>>
>>> #MACHINE_ESSENTIAL_RDEPENDS =3D "linux-firmware-iwlwifi-6000g2a-5"
>>> # does not appear in depexp, does not build
>>
>>
>> If I use the appropriate MACHINE_ESSENTIAL_EXTRA_RDEPENDS here, the
>> package is built, but it is not included in the final image.
>=20
> We have two different types of image, minimal/basic and the others. The
> former is derived from task-core-boot, the others derive from task-base.
> The former is a minimal setup of things just needed to boot, task-base
> has more dependencies but is more suited to real world use.
>=20
>>> I've tried searching the sources for these variables, and quickly lose
>>> their scent. Here is what I did find:
>>>
>>> task-base.bb:
>>> #
>>> # packages added by machine config
>>> #
>>> RDEPENDS_task-machine-base =3D "${MACHINE_EXTRA_RDEPENDS}"
>>> RRECOMMENDS_task-machine-base =3D "${MACHINE_EXTRA_RRECOMMENDS}"
>>>
>>> task-core-boot.bb:
>>> RDEPENDS_task-core-boot =3D "\
>>>     ...
>>>     ${MACHINE_ESSENTIAL_EXTRA_RDEPENDS}"
>>>
>>> RRECOMMENDS_task-core-boot =3D "\
>>>     ${MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS}"
>>>
>>>
>>> How these should impact the final image is not clear to me.
>=20
> So if you change MACHINE_EXTRA* you need to rebuild task-base, if you
> change MACHINE_ESSENTIAL_EXTRA* you need to rebuild task-core-boot.
> Confusing and the checksum code we'll enable soon should make this
> automatic.
>=20
> The task-core-boot is included into task-base by task-distro-base
> through DISTRO_EXTRA_RDEPENDS which in meta-yocto is set to
> task-core-boot. Both sets of variables should therefore appear in most
> images except minimal and basic which should only get the essential
> ones.
>=20
> I hope that at least clarifies what should happen...

I pulled master and rebuilt using all 4 options. All 4 resulted in the
firmware packages being built and installed in the rootfs. Either
something changed in master since I tried this last, or my machine was
the victim of a gamma ray event.... sigh.

Nevermind, there is nothing to see here.

Still, I think the discussion of documentation was worth the trouble,
I'll work with Scott to update what we have in the reference manual with
the feedback from Saul, Paul, and RP.

Thanks everyone.


--=20
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

