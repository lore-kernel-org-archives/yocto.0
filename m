Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89954E00CBC; Sat, 16 Apr 2016 22:09:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25534E00C44
	for <yocto@yoctoproject.org>; Sat, 16 Apr 2016 22:09:49 -0700 (PDT)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=[10.79.148.125])
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1arewB-0004US-0R; Sun, 17 Apr 2016 05:08:01 +0000
To: wenzong fan <wenzong.fan@windriver.com>
References: <1459729295-79553-1-git-send-email-flihp@twobit.us>
	<1459729295-79553-3-git-send-email-flihp@twobit.us>
	<57076B89.20404@windriver.com> <20160411125433.GA4693@mentor.com>
	<570C71B6.2010808@twobit.us> <570C8D7E.8040804@windriver.com>
	<20160412140507.GA7154@mentor.com> <570DF3FA.4020805@windriver.com>
From: Philip Tricca <flihp@twobit.us>
Message-ID: <57131AAA.2040602@twobit.us>
Date: Sat, 16 Apr 2016 22:10:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.7.0
MIME-Version: 1.0
In-Reply-To: <570DF3FA.4020805@windriver.com>
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
X-List-Received-Date: Sun, 17 Apr 2016 05:09:53 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 04/13/2016 12:23 AM, wenzong fan wrote:
> On 04/12/2016 10:05 PM, Joe MacDonald wrote:
>> Philip / Wenzong,
>>
>> [Re: [yocto] [meta-selinux][PATCH 2/3] Integrate selinux-config into
>> refpolicy_common.] On 16.04.12 (Tue 13:54) wenzong fan wrote:
>>
>>> On 04/12/2016 11:55 AM, Philip Tricca wrote:
>>>> Hello,
>>>>
>>>> On 04/11/2016 05:54 AM, Joe MacDonald wrote:
>>>>>> This causes do_populate_sysroot error if build two or more types of
>>>>>> refpolicy:
>>>>>>
>>>>>> $ bitbake refpolicy-minimum && bitbake refpolicy-mls
>>>>>>
>>>>>> ERROR: refpolicy-mls-git-r0 do_populate_sysroot: The recipe
>>>>>> refpolicy-mls is
>>>>>> trying to install files into a shared area when those files
>>>>>> already exist.
>>>>>> Those files and their manifest location are:
>>>>>
>>>>> I think this was always the intent with the series Philip submitted
>>>>> last
>>>>> week (for reference, the thread is
>>>>> https://www.mail-archive.com/yocto@yoctoproject.org/msg28530.html).
>>>>> Isn't this (part of) the expected behaviour of the virtual provider
>>>>> mechanism?
>>>>
>>>> This is the question I think we need to figure out. My understanding
>>>> (quite possibly wrong) is that the virtual provider stuff would prevent
>>>> the installation of more than one provider. I hadn't considered the
>>>> implications for the sysroot.
>>>>
>>>> Is the ability to install multiple providers in the sysroot expected? I
>>>> imagine that this problem must have been solved before in another
>>>> package with virtual providers that install the same file. I'm happy to
>>>> doing some digging here but if anyone knows of a good example I'd
>>>> appreciate a pointer.
>>>>
>>>>> We did discuss what it would mean to be trying out multiple
>>>>> policies on a system at the same time and at the time it seemed
>>>>> like the
>>>>> "just works" angle was more important than "buffet style" when it came
>>>>> to providing policy on the image.
>>>>
>>>> I guess the thing I like the most about setting the policy package
>>>> up as
>>>> a virtual package is the ability to select the policy type as a distro
>>>> config. The virtual provider seemed like a natural fit as it's a
>>>> pattern
>>>> that similar packages (kernel etc) use extensively.
>>>>
>>>>> It might be worth considering extending the changes to only do some
>>>>> install steps at, say, do_rootfs but I don't know if that even makes
>>>>> sense, this is really the first I've thought of it.  I think Philip's
>>>>> original changes are good, though, for our maintenance and for clients
>>>>> of meta-selinux.
>>>>
>>>> There may be a middle ground and I think that would be leaving the
>>>> configuration file as a separate package. Personally I liked the
>>>> idea of
>>>> rolling the config file into the policy package as it was always a bit
>>>> awkward requiring coordination of some variables across the policy and
>>>> the config package which made it a bit brittle.
>>>>
>>>> Wenzong: A few questions: What's your use case for building multiple
>>>> policy packages? Would you suggest just backing out the removal of the
>>>> config package or the whole virtual provider thing?
>>>
>>> Hi Philip,
>>>
>>> The virtual provider is OK, just restore the config package is the
>>> simplest
>>> ways for fixing such issue I think.
>>>
>>> My use cases include:
>>> a. update refpolicy and build each type to make sure patch/build/install
>>> work;
>>
>> That's not necessarily an argument against the change ...
>>
>>> b. run world build with meta-selinux layer.
>>
>> ... but I think this is.  Or, rather, I think what we have now makes more
>> sense from an end-user perspective, that your image wouldn't have more
>> than a single policy installed at a time and that if you tried to install
>> multiple policies for nearly everyone this represents a mistake and
>> undesirable behaviour so warnings / errors are appropriate.
>>
>> But if this is breaking world builds with yocto+meta-selinux, that's
>> something I'd like to repair.  Though I'm surprised that what we have
>> right now would break the world builds.  Philip / Wenzong / Mark:  Do you
>> have publicly-accessible world builds right now?  I don't and I don't
>> have
>> world builds for yocto+meta-selinux on my autobuilder, but I'll go set
>> one
>> up if you don't have one.
> 
> Oh, it's my fault. I can't reproduce the issue with a fresh build now,
> it must be I had been run refpolicy-* build manually :(

I tested a few days back and wasn't able to reproduce. Glad we both
ended up with the same results. I'm looking into setting up a world
build since that sounds like an additional level of testing that would
be good to have.

Philip

> I don't want to install multiple policies to target as well, so I have
> no objection now.
> 
> Thanks all for your patience.
> 
> Wenzong
> 
>>
>> -J.
>>
>>>
>>> Thanks
>>> Wenzong
>>>
>>>>
>>>> Thanks,
>>>> Philip
>>>>
>>>>>> /buildarea/raid5/wfan/yocto/builds/selinux_sysvinit/tmp/sysroots/qemux86-64/etc/selinux/sepolgen.conf
>>>>>>
>>>>>>   Matched in manifest-qemux86-64-refpolicy-minimum.populate_sysroot
>>>>>>
>>>>>> /buildarea/raid5/wfan/yocto/builds/selinux_sysvinit/tmp/sysroots/qemux86-64/etc/selinux/config
>>>>>>
>>>>>>   Matched in manifest-qemux86-64-refpolicy-minimum.populate_sysroot
>>>>>>
>>>>>> /buildarea/raid5/wfan/yocto/builds/selinux_sysvinit/tmp/sysroots/qemux86-64/sysroot-providers/virtual_refpolicy
>>>>>>
>>>>>>   Matched in manifest-qemux86-64-refpolicy-minimum.populate_sysroot
>>>>>> Please verify which recipe should provide the above files.
>>>>>>
>>>>>> Philip,
>>>>>>
>>>>>> Can you consider to withdraw the integration?
>>>>>>
>>>>>> Thanks
>>>>>> Wenzong
>>>>>>
>>>>>> On 04/04/2016 08:21 AM, Philip Tricca wrote:
>>>>>>> With the virutal package there's no need for a separate recipe to
>>>>>>> build
>>>>>>> the config. This can be generated and included as part of the policy
>>>>>>> package.
>>>>>>>
>>>>>>> Signed-off-by: Philip Tricca <flihp@twobit.us>
>>>>>>> ---
>>>>>>>   .../packagegroups/packagegroup-core-selinux.bb     |  1 -
>>>>>>>   .../packagegroups/packagegroup-selinux-minimal.bb  |  1 -
>>>>>>>   recipes-security/refpolicy/refpolicy_common.inc    | 30
>>>>>>> ++++++++++++++--
>>>>>>>   recipes-security/selinux/selinux-config_0.1.bb     | 40
>>>>>>> ----------------------
>>>>>>>   4 files changed, 28 insertions(+), 44 deletions(-)
>>>>>>>   delete mode 100644 recipes-security/selinux/selinux-config_0.1.bb
>>>>>>>
>>>>>>> diff --git
>>>>>>> a/recipes-security/packagegroups/packagegroup-core-selinux.bb
>>>>>>> b/recipes-security/packagegroups/packagegroup-core-selinux.bb
>>>>>>> index 62c5a76..c6d22b7 100644
>>>>>>> --- a/recipes-security/packagegroups/packagegroup-core-selinux.bb
>>>>>>> +++ b/recipes-security/packagegroups/packagegroup-core-selinux.bb
>>>>>>> @@ -22,7 +22,6 @@ RDEPENDS_${PN} = " \
>>>>>>>       packagegroup-selinux-policycoreutils \
>>>>>>>       setools \
>>>>>>>       setools-console \
>>>>>>> -    selinux-config \
>>>>>>>       selinux-autorelabel \
>>>>>>>       selinux-init \
>>>>>>>       selinux-labeldev \
>>>>>>> diff --git
>>>>>>> a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
>>>>>>> b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
>>>>>>> index 87ae686..451ae8b 100644
>>>>>>> --- a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
>>>>>>> +++ b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
>>>>>>> @@ -21,7 +21,6 @@ RDEPENDS_${PN} = "\
>>>>>>>       policycoreutils-semodule \
>>>>>>>       policycoreutils-sestatus \
>>>>>>>       policycoreutils-setfiles \
>>>>>>> -    selinux-config \
>>>>>>>       selinux-labeldev \
>>>>>>>       virtual/refpolicy \
>>>>>>>   "
>>>>>>> diff --git a/recipes-security/refpolicy/refpolicy_common.inc
>>>>>>> b/recipes-security/refpolicy/refpolicy_common.inc
>>>>>>> index ba887e4..305675f 100644
>>>>>>> --- a/recipes-security/refpolicy/refpolicy_common.inc
>>>>>>> +++ b/recipes-security/refpolicy/refpolicy_common.inc
>>>>>>> @@ -1,3 +1,5 @@
>>>>>>> +DEFAULT_ENFORCING ??= "enforcing"
>>>>>>> +
>>>>>>>   SECTION = "base"
>>>>>>>   LICENSE = "GPLv2"
>>>>>>>
>>>>>>> @@ -14,7 +16,8 @@ SRC_URI += "file://customizable_types \
>>>>>>>
>>>>>>>   S = "${WORKDIR}/refpolicy"
>>>>>>>
>>>>>>> -FILES_${PN} = " \
>>>>>>> +CONFFILES_${PN} += "${sysconfdir}/selinux/config"
>>>>>>> +FILES_${PN} += " \
>>>>>>>       ${sysconfdir}/selinux/${POLICY_NAME}/ \
>>>>>>>       ${datadir}/selinux/${POLICY_NAME}/*.pp \
>>>>>>>       ${localstatedir}/lib/selinux/${POLICY_NAME}/ \
>>>>>>> @@ -25,7 +28,6 @@ FILES_${PN}-dev =+ " \
>>>>>>>   "
>>>>>>>
>>>>>>>   DEPENDS += "checkpolicy-native policycoreutils-native m4-native"
>>>>>>> -RDEPENDS_${PN} += "selinux-config"
>>>>>>>
>>>>>>>   PACKAGE_ARCH = "${MACHINE_ARCH}"
>>>>>>>
>>>>>>> @@ -137,13 +139,37 @@ install_misc_files () {
>>>>>>>       oe_runmake 'DESTDIR=${D}' 'prefix=${D}${prefix}'
>>>>>>> install-headers
>>>>>>>   }
>>>>>>>
>>>>>>> +install_config () {
>>>>>>> +    echo "\
>>>>>>> +# This file controls the state of SELinux on the system.
>>>>>>> +# SELINUX= can take one of these three values:
>>>>>>> +#     enforcing - SELinux security policy is enforced.
>>>>>>> +#     permissive - SELinux prints warnings instead of enforcing.
>>>>>>> +#     disabled - No SELinux policy is loaded.
>>>>>>> +SELINUX=${DEFAULT_ENFORCING}
>>>>>>> +# SELINUXTYPE= can take one of these values:
>>>>>>> +#     standard - Standard Security protection.
>>>>>>> +#     mls - Multi Level Security protection.
>>>>>>> +#     targeted - Targeted processes are protected.
>>>>>>> +#     mcs - Multi Category Security protection.
>>>>>>> +SELINUXTYPE=${POLICY_TYPE}
>>>>>>> +" > ${WORKDIR}/config
>>>>>>> +    install -d ${D}/${sysconfdir}/selinux
>>>>>>> +    install -m 0644 ${WORKDIR}/config ${D}/${sysconfdir}/selinux/
>>>>>>> +}
>>>>>>> +
>>>>>>>   do_install () {
>>>>>>>       prepare_policy_store
>>>>>>>       rebuild_policy
>>>>>>>       install_misc_files
>>>>>>> +    install_config
>>>>>>>   }
>>>>>>>
>>>>>>>   do_install_append(){
>>>>>>>       # While building policies on target, Makefile will be
>>>>>>> searched from SELINUX_DEVEL_PATH
>>>>>>>       echo
>>>>>>> "SELINUX_DEVEL_PATH=${datadir}/selinux/${POLICY_NAME}/include" >
>>>>>>> ${D}${sysconfdir}/selinux/sepolgen.conf
>>>>>>>   }
>>>>>>> +
>>>>>>> +sysroot_stage_all_append () {
>>>>>>> +    sysroot_stage_dir ${D}${sysconfdir}
>>>>>>> ${SYSROOT_DESTDIR}${sysconfdir}
>>>>>>> +}
>>>>>>> diff --git a/recipes-security/selinux/selinux-config_0.1.bb
>>>>>>> b/recipes-security/selinux/selinux-config_0.1.bb
>>>>>>> deleted file mode 100644
>>>>>>> index e902e98..0000000
>>>>>>> --- a/recipes-security/selinux/selinux-config_0.1.bb
>>>>>>> +++ /dev/null
>>>>>>> @@ -1,40 +0,0 @@
>>>>>>> -DEFAULT_ENFORCING ??= "enforcing"
>>>>>>> -
>>>>>>> -SUMMARY = "SELinux configuration"
>>>>>>> -DESCRIPTION = "\
>>>>>>> -SELinux configuration files for Yocto. \
>>>>>>> -"
>>>>>>> -
>>>>>>> -SECTION = "base"
>>>>>>> -LICENSE = "MIT"
>>>>>>> -LIC_FILES_CHKSUM =
>>>>>>> "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
>>>>>>>
>>>>>>> -PR = "r4"
>>>>>>> -
>>>>>>> -S = "${WORKDIR}"
>>>>>>> -
>>>>>>> -CONFFILES_${PN} += "${sysconfdir}/selinux/config"
>>>>>>> -
>>>>>>> -PACKAGE_ARCH = "${MACHINE_ARCH}"
>>>>>>> -
>>>>>>> -do_install () {
>>>>>>> -    echo "\
>>>>>>> -# This file controls the state of SELinux on the system.
>>>>>>> -# SELINUX= can take one of these three values:
>>>>>>> -#     enforcing - SELinux security policy is enforced.
>>>>>>> -#     permissive - SELinux prints warnings instead of enforcing.
>>>>>>> -#     disabled - No SELinux policy is loaded.
>>>>>>> -SELINUX=${DEFAULT_ENFORCING}
>>>>>>> -# SELINUXTYPE= can take one of these values:
>>>>>>> -#     standard - Standard Security protection.
>>>>>>> -#     mls - Multi Level Security protection.
>>>>>>> -#     targeted - Targeted processes are protected.
>>>>>>> -#     mcs - Multi Category Security protection.
>>>>>>> -SELINUXTYPE=${@d.getVar("PREFERRED_PROVIDER_virtual/refpolicy",
>>>>>>> False)[len("refpolicy-"):]}
>>>>>>> -" > ${WORKDIR}/config
>>>>>>> -    install -d ${D}/${sysconfdir}/selinux
>>>>>>> -    install -m 0644 ${WORKDIR}/config ${D}/${sysconfdir}/selinux/
>>>>>>> -}
>>>>>>> -
>>>>>>> -sysroot_stage_all_append () {
>>>>>>> -    sysroot_stage_dir ${D}${sysconfdir}
>>>>>>> ${SYSROOT_DESTDIR}${sysconfdir}
>>>>>>> -}
>>>>>>>
>>>>>
>>>>
>>>>
>>


