Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87852E00E55; Mon, 11 Apr 2016 20:55:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72C16E00BBF
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 20:55:26 -0700 (PDT)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=[10.79.148.125])
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1appOY-0000oY-UP; Tue, 12 Apr 2016 03:53:45 +0000
To: Joe MacDonald <Joe_MacDonald@mentor.com>,
	wenzong fan <wenzong.fan@windriver.com>
References: <1459729295-79553-1-git-send-email-flihp@twobit.us>
	<1459729295-79553-3-git-send-email-flihp@twobit.us>
	<57076B89.20404@windriver.com> <20160411125433.GA4693@mentor.com>
From: Philip Tricca <flihp@twobit.us>
Message-ID: <570C71B6.2010808@twobit.us>
Date: Mon, 11 Apr 2016 20:55:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.7.0
MIME-Version: 1.0
In-Reply-To: <20160411125433.GA4693@mentor.com>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 2/3] Integrate selinux-config into refpolicy_common.
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
X-List-Received-Date: Tue, 12 Apr 2016 03:55:28 -0000
X-Groupsio-MsgNum: 29377
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature";
	boundary="jMNKhXrfSHkIMvrWLwRhFmuWiOJC1oNlF"

--jMNKhXrfSHkIMvrWLwRhFmuWiOJC1oNlF
Content-Type: multipart/mixed; boundary="v3SBFjSPd8HMLT68xxLg21Fa4tbGh2PK5"
From: Philip Tricca <flihp@twobit.us>
To: Joe MacDonald <Joe_MacDonald@mentor.com>,
 wenzong fan <wenzong.fan@windriver.com>
Cc: mark.hatle@windriver.com, yocto@yoctoproject.org
Message-ID: <570C71B6.2010808@twobit.us>
Subject: Re: [yocto] [meta-selinux][PATCH 2/3] Integrate selinux-config into
 refpolicy_common.
References: <1459729295-79553-1-git-send-email-flihp@twobit.us>
 <1459729295-79553-3-git-send-email-flihp@twobit.us>
 <57076B89.20404@windriver.com> <20160411125433.GA4693@mentor.com>
In-Reply-To: <20160411125433.GA4693@mentor.com>

--v3SBFjSPd8HMLT68xxLg21Fa4tbGh2PK5
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hello,

On 04/11/2016 05:54 AM, Joe MacDonald wrote:
>> This causes do_populate_sysroot error if build two or more types of
>> refpolicy:
>>
>> $ bitbake refpolicy-minimum && bitbake refpolicy-mls
>>
>> ERROR: refpolicy-mls-git-r0 do_populate_sysroot: The recipe refpolicy-=
mls is
>> trying to install files into a shared area when those files already ex=
ist.
>> Those files and their manifest location are:
>=20
> I think this was always the intent with the series Philip submitted las=
t
> week (for reference, the thread is
> https://www.mail-archive.com/yocto@yoctoproject.org/msg28530.html).
> Isn't this (part of) the expected behaviour of the virtual provider
> mechanism?

This is the question I think we need to figure out. My understanding
(quite possibly wrong) is that the virtual provider stuff would prevent
the installation of more than one provider. I hadn't considered the
implications for the sysroot.

Is the ability to install multiple providers in the sysroot expected? I
imagine that this problem must have been solved before in another
package with virtual providers that install the same file. I'm happy to
doing some digging here but if anyone knows of a good example I'd
appreciate a pointer.

> We did discuss what it would mean to be trying out multiple
> policies on a system at the same time and at the time it seemed like th=
e
> "just works" angle was more important than "buffet style" when it came
> to providing policy on the image.

I guess the thing I like the most about setting the policy package up as
a virtual package is the ability to select the policy type as a distro
config. The virtual provider seemed like a natural fit as it's a pattern
that similar packages (kernel etc) use extensively.

> It might be worth considering extending the changes to only do some
> install steps at, say, do_rootfs but I don't know if that even makes
> sense, this is really the first I've thought of it.  I think Philip's
> original changes are good, though, for our maintenance and for clients
> of meta-selinux.

There may be a middle ground and I think that would be leaving the
configuration file as a separate package. Personally I liked the idea of
rolling the config file into the policy package as it was always a bit
awkward requiring coordination of some variables across the policy and
the config package which made it a bit brittle.

Wenzong: A few questions: What's your use case for building multiple
policy packages? Would you suggest just backing out the removal of the
config package or the whole virtual provider thing?

Thanks,
Philip

>> /buildarea/raid5/wfan/yocto/builds/selinux_sysvinit/tmp/sysroots/qemux=
86-64/etc/selinux/sepolgen.conf
>>  Matched in manifest-qemux86-64-refpolicy-minimum.populate_sysroot
>>
>> /buildarea/raid5/wfan/yocto/builds/selinux_sysvinit/tmp/sysroots/qemux=
86-64/etc/selinux/config
>>  Matched in manifest-qemux86-64-refpolicy-minimum.populate_sysroot
>>
>> /buildarea/raid5/wfan/yocto/builds/selinux_sysvinit/tmp/sysroots/qemux=
86-64/sysroot-providers/virtual_refpolicy
>>  Matched in manifest-qemux86-64-refpolicy-minimum.populate_sysroot
>> Please verify which recipe should provide the above files.
>>
>> Philip,
>>
>> Can you consider to withdraw the integration?
>>
>> Thanks
>> Wenzong
>>
>> On 04/04/2016 08:21 AM, Philip Tricca wrote:
>>> With the virutal package there's no need for a separate recipe to bui=
ld
>>> the config. This can be generated and included as part of the policy
>>> package.
>>>
>>> Signed-off-by: Philip Tricca <flihp@twobit.us>
>>> ---
>>>  .../packagegroups/packagegroup-core-selinux.bb     |  1 -
>>>  .../packagegroups/packagegroup-selinux-minimal.bb  |  1 -
>>>  recipes-security/refpolicy/refpolicy_common.inc    | 30 ++++++++++++=
++--
>>>  recipes-security/selinux/selinux-config_0.1.bb     | 40 ------------=
----------
>>>  4 files changed, 28 insertions(+), 44 deletions(-)
>>>  delete mode 100644 recipes-security/selinux/selinux-config_0.1.bb
>>>
>>> diff --git a/recipes-security/packagegroups/packagegroup-core-selinux=
=2Ebb b/recipes-security/packagegroups/packagegroup-core-selinux.bb
>>> index 62c5a76..c6d22b7 100644
>>> --- a/recipes-security/packagegroups/packagegroup-core-selinux.bb
>>> +++ b/recipes-security/packagegroups/packagegroup-core-selinux.bb
>>> @@ -22,7 +22,6 @@ RDEPENDS_${PN} =3D " \
>>>  	packagegroup-selinux-policycoreutils \
>>>  	setools \
>>>  	setools-console \
>>> -	selinux-config \
>>>  	selinux-autorelabel \
>>>  	selinux-init \
>>>  	selinux-labeldev \
>>> diff --git a/recipes-security/packagegroups/packagegroup-selinux-mini=
mal.bb b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
>>> index 87ae686..451ae8b 100644
>>> --- a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
>>> +++ b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
>>> @@ -21,7 +21,6 @@ RDEPENDS_${PN} =3D "\
>>>  	policycoreutils-semodule \
>>>  	policycoreutils-sestatus \
>>>  	policycoreutils-setfiles \
>>> -	selinux-config \
>>>  	selinux-labeldev \
>>>  	virtual/refpolicy \
>>>  "
>>> diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipe=
s-security/refpolicy/refpolicy_common.inc
>>> index ba887e4..305675f 100644
>>> --- a/recipes-security/refpolicy/refpolicy_common.inc
>>> +++ b/recipes-security/refpolicy/refpolicy_common.inc
>>> @@ -1,3 +1,5 @@
>>> +DEFAULT_ENFORCING ??=3D "enforcing"
>>> +
>>>  SECTION =3D "base"
>>>  LICENSE =3D "GPLv2"
>>>
>>> @@ -14,7 +16,8 @@ SRC_URI +=3D "file://customizable_types \
>>>
>>>  S =3D "${WORKDIR}/refpolicy"
>>>
>>> -FILES_${PN} =3D " \
>>> +CONFFILES_${PN} +=3D "${sysconfdir}/selinux/config"
>>> +FILES_${PN} +=3D " \
>>>  	${sysconfdir}/selinux/${POLICY_NAME}/ \
>>>  	${datadir}/selinux/${POLICY_NAME}/*.pp \
>>>  	${localstatedir}/lib/selinux/${POLICY_NAME}/ \
>>> @@ -25,7 +28,6 @@ FILES_${PN}-dev =3D+ " \
>>>  "
>>>
>>>  DEPENDS +=3D "checkpolicy-native policycoreutils-native m4-native"
>>> -RDEPENDS_${PN} +=3D "selinux-config"
>>>
>>>  PACKAGE_ARCH =3D "${MACHINE_ARCH}"
>>>
>>> @@ -137,13 +139,37 @@ install_misc_files () {
>>>  	oe_runmake 'DESTDIR=3D${D}' 'prefix=3D${D}${prefix}' install-header=
s
>>>  }
>>>
>>> +install_config () {
>>> +	echo "\
>>> +# This file controls the state of SELinux on the system.
>>> +# SELINUX=3D can take one of these three values:
>>> +#     enforcing - SELinux security policy is enforced.
>>> +#     permissive - SELinux prints warnings instead of enforcing.
>>> +#     disabled - No SELinux policy is loaded.
>>> +SELINUX=3D${DEFAULT_ENFORCING}
>>> +# SELINUXTYPE=3D can take one of these values:
>>> +#     standard - Standard Security protection.
>>> +#     mls - Multi Level Security protection.
>>> +#     targeted - Targeted processes are protected.
>>> +#     mcs - Multi Category Security protection.
>>> +SELINUXTYPE=3D${POLICY_TYPE}
>>> +" > ${WORKDIR}/config
>>> +	install -d ${D}/${sysconfdir}/selinux
>>> +	install -m 0644 ${WORKDIR}/config ${D}/${sysconfdir}/selinux/
>>> +}
>>> +
>>>  do_install () {
>>>  	prepare_policy_store
>>>  	rebuild_policy
>>>  	install_misc_files
>>> +	install_config
>>>  }
>>>
>>>  do_install_append(){
>>>  	# While building policies on target, Makefile will be searched from=
 SELINUX_DEVEL_PATH
>>>  	echo "SELINUX_DEVEL_PATH=3D${datadir}/selinux/${POLICY_NAME}/includ=
e" > ${D}${sysconfdir}/selinux/sepolgen.conf
>>>  }
>>> +
>>> +sysroot_stage_all_append () {
>>> +	sysroot_stage_dir ${D}${sysconfdir} ${SYSROOT_DESTDIR}${sysconfdir}=

>>> +}
>>> diff --git a/recipes-security/selinux/selinux-config_0.1.bb b/recipes=
-security/selinux/selinux-config_0.1.bb
>>> deleted file mode 100644
>>> index e902e98..0000000
>>> --- a/recipes-security/selinux/selinux-config_0.1.bb
>>> +++ /dev/null
>>> @@ -1,40 +0,0 @@
>>> -DEFAULT_ENFORCING ??=3D "enforcing"
>>> -
>>> -SUMMARY =3D "SELinux configuration"
>>> -DESCRIPTION =3D "\
>>> -SELinux configuration files for Yocto. \
>>> -"
>>> -
>>> -SECTION =3D "base"
>>> -LICENSE =3D "MIT"
>>> -LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9=
cfbcb788c80a0384361b4de20420"
>>> -PR =3D "r4"
>>> -
>>> -S =3D "${WORKDIR}"
>>> -
>>> -CONFFILES_${PN} +=3D "${sysconfdir}/selinux/config"
>>> -
>>> -PACKAGE_ARCH =3D "${MACHINE_ARCH}"
>>> -
>>> -do_install () {
>>> -	echo "\
>>> -# This file controls the state of SELinux on the system.
>>> -# SELINUX=3D can take one of these three values:
>>> -#     enforcing - SELinux security policy is enforced.
>>> -#     permissive - SELinux prints warnings instead of enforcing.
>>> -#     disabled - No SELinux policy is loaded.
>>> -SELINUX=3D${DEFAULT_ENFORCING}
>>> -# SELINUXTYPE=3D can take one of these values:
>>> -#     standard - Standard Security protection.
>>> -#     mls - Multi Level Security protection.
>>> -#     targeted - Targeted processes are protected.
>>> -#     mcs - Multi Category Security protection.
>>> -SELINUXTYPE=3D${@d.getVar("PREFERRED_PROVIDER_virtual/refpolicy", Fa=
lse)[len("refpolicy-"):]}
>>> -" > ${WORKDIR}/config
>>> -	install -d ${D}/${sysconfdir}/selinux
>>> -	install -m 0644 ${WORKDIR}/config ${D}/${sysconfdir}/selinux/
>>> -}
>>> -
>>> -sysroot_stage_all_append () {
>>> -	sysroot_stage_dir ${D}${sysconfdir} ${SYSROOT_DESTDIR}${sysconfdir}=

>>> -}
>>>
>=20



--v3SBFjSPd8HMLT68xxLg21Fa4tbGh2PK5--

--jMNKhXrfSHkIMvrWLwRhFmuWiOJC1oNlF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJXDHG5AAoJEDL3fnXC4dO6/FMP/RZCScQOkcghooWzicPgFBL9
WPt7DJlYRY+WC0kEYdz0JMMIfvOt6hQQ0mPkvfWOLRTc5reuPhkWhRlECXYmFnVu
dyJFmV67Q6/YiJniu/8vtcQVdZEhQ4WG1sQ03LMYHYpu3vwkuZdjDcMooaGXlU3y
aRgExnZOa95Pi39VpD60mCdnSNMTsENPO5Fa1xoRgfA1n39qbI2MtIikqgAbGu+/
1gypi1lnYOVY12Kik78IFP0qCKykZ8ynsuH3B65VsT6RkP1ckHzx80HPgL6JqfSo
U9vU+XdxLMB4FUJStDn6l22W77vQCtNBEWOOZ8OlYRGy8dbHquqI7mQDQYF2tETh
Fd2drrCn9aDai73jg+iCt0RGHBKCjn3SRBCaqlxDEeHEPtx/eew7f3VJu3GAFPvp
R5wmWbJMF11Mq6kyFSQdM5xnqbkr98JjF6rwCoCFstVvoLJAFEsRze1aFmLVnNyM
TDGdiy5n0jNX+Y05qMPZx9cEkX98ZehyGjfBbMz41mlwBti7r/eAp3mBSD5NT4Vd
uDSNgXNUm3CpzML+2Guo+Z1d5b36lIXI3hblAQKLqo7qMGPuGpNfr6fxHS+3c0gX
P0P1BLcjUd5heibzcadJ79R46YWd8LLHyZKTX5gAZyVCnP+v5lZF/ytzhL9Ypa2o
ua5SfikPzlqTy5q5c8Zp
=vGgJ
-----END PGP SIGNATURE-----

--jMNKhXrfSHkIMvrWLwRhFmuWiOJC1oNlF--
