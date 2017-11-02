Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FE84E00CE8; Thu,  2 Nov 2017 05:51:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.41 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDB75E00CC4
	for <yocto@yoctoproject.org>; Thu,  2 Nov 2017 05:51:51 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id n82so8635912oig.3
	for <yocto@yoctoproject.org>; Thu, 02 Nov 2017 05:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=6qXTwk4RinUN/EYD7YqS7BwwEMO5mHAiTJGwr8KxwXw=;
	b=MjIs+nB8EbnbzTYsNCLriR/vXKS8+zTRjc9O2mLYAUHPPpJj3vWrUEXpLfS1uKkh+2
	hH2N8qmxYI54BngRBbECmpttahDOxwH/0Ooat6VZCmCvXvV+XYjyMB1XUhclmEVgQJor
	xHjKqsKTgm+ZevK9+fFSkeomqsJZo4KGnksNGFt2hJl17KSN628/kcj07M8Rp9n6ZFi+
	hMBOSck+hpwyG4U4zjuKthj1L3HyH8gEDeleV5Qsv6/k48H/LWrLQPzpymJTD0bWcZeW
	ElyDhqNksFxFhz0o/qfDkQWZCs03jjY7qsMJRChdzOeO2LnKgt7KJGx/T21J7wux599S
	Jb9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=6qXTwk4RinUN/EYD7YqS7BwwEMO5mHAiTJGwr8KxwXw=;
	b=gzP6Sstovsw2IhmAgy6xSNQdnbvbBeb+Wpb6jJBNsmIXTVlcPzKp3Si4pTD7vPii2+
	Iz6NH6/STp2g4wB0eXXD/N1re+1HQ+XkMCIGhjSjyAuUOz7CQ985K2wCkfQgM/g8NuzX
	9nhLFthbLDoeudsiDfgYqrLIaYBVStwwG/2AIfh+k7aizgbOKmFkGtfjsrq/j4FJRpk4
	wyQ2PX5tfC53Iu5DN+H64lSOuiDNOOGmDiUaO8NSfUubRehJvPuyabv9PpUL38OR2F9a
	B6XmLHOX2FiGpzZl9P/5hbpfd+ZqRcCZSuzOu6BDth1Fl27V7v6BaFqvedLs8wf/Z2XT
	M7GQ==
X-Gm-Message-State: AMCzsaX44ZlEy6C9ARgY3WVdD37ALHcrL3BOa2BdA6+/0+qg5BfO4uX6
	P5Oaur/7LtY5lVGQjsiigu4Fvpn+q4oB65xFJ9gBWw==
X-Google-Smtp-Source: ABhQp+RY9wfCwzA+ZsT0+skuv9E1XKJtK1Nm8j2MdwE+4RlZ78GMPWUrW2PS/dsmqGC7a7gsDGV85mXRIZbwH2pIku0=
X-Received: by 10.202.97.67 with SMTP id v64mr1914772oib.256.1509627110770;
	Thu, 02 Nov 2017 05:51:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.41.133 with HTTP; Thu, 2 Nov 2017 05:51:50 -0700 (PDT)
In-Reply-To: <CAJTo0LaPLuDMi=vQf+EvXnftzm11OqPPbEAiJmNh0XPdDtz7sQ@mail.gmail.com>
References: <CAOT_U5ZYFa_5Ua0swNRGyxG+hV9xNtTzGuEe5yGzYG4rDxsdNQ@mail.gmail.com>
	<CAGxhq2aHU7xgimpRhavOp6AqL4ALf9SBDk6Wti6BFPtftGC99Q@mail.gmail.com>
	<CAOT_U5ZsGM5WHnkX+eQ3KeeAFwR=mzaBgqqW-698jd9euXxoCg@mail.gmail.com>
	<CAJTo0LbY+nCmSA3o_hbaTm69okMA9z9V_V_CULY3e6rMNKV6xQ@mail.gmail.com>
	<CAOT_U5bvt5FfWMowG2YcknTy2=t0hJG8XO90OyqyypNa94BLbw@mail.gmail.com>
	<CAJTo0LaPLuDMi=vQf+EvXnftzm11OqPPbEAiJmNh0XPdDtz7sQ@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Thu, 2 Nov 2017 13:51:50 +0100
Message-ID: <CAOT_U5ZY+UWe-69XuS_m+D5LKE0OyxkrabPcHgOB3p226aiZdA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Debugging a build issue in an isolated enviroment
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
X-List-Received-Date: Thu, 02 Nov 2017 12:51:53 -0000
Content-Type: multipart/alternative; boundary="001a113d485aae5f7f055cff73ff"

--001a113d485aae5f7f055cff73ff
Content-Type: text/plain; charset="UTF-8"

That I can't see the changes for that particular patch in the source (by
manually checking the source for the changes).
Other patches are applied correctly, I can trace them in the sources.

I have no "temp/log.do_patch" and find notions of patches (both the
successfully and unsuccessfully applied ones) only in the log.do_fetch and
log.do_unpack steps.

Is there a way to grep through how a recipe looks like when all the
inherited parts have been expanded?
There seems to be a do_patch task (
http://www.yoctoproject.org/docs/2.3/ref-manual/ref-manual.html#patching-dev-environment
)
which I would grep for in that expanded recipe.

For more insight, the current recipe (the one I'd like to see expanded)
looks like this:

$ cat u-boot-fw-utils-senic_2017.03.bb
SUMMARY = "U-Boot bootloader fw_printenv/setenv utilities"
LICENSE = "GPLv2+"
LIC_FILES_CHKSUM =
"file://Licenses/README;md5=a2c678cfd4a4d97135585cad908541c6"
SECTION = "bootloader"
DEPENDS = "mtd-utils"

require recipes-bsp/u-boot/u-boot-fw-utils-mender.inc

SRCBRANCH = "senic/v2017.03"
SRC_URI = "git://
git@github.com/getsenic/senic-os-uboot.git;protocol=ssh;branch=${SRCBRANCH};
\
           file://boot.cmd \

 file://0001-sun8i-configs-Add-CONFIG_BOOTCOUNT_LIMIT-ENV-for-men.patch \
           file://0002-sunxi-common-Remove-variables-used-by-Mender.patch \
           file://default-gcc.patch"

SRC_URI_remove =
"file://0003-Integration-of-Mender-boot-code-into-U-Boot.patch"
SRC_URI_append = "
file://0001-Integration-of-Mender-boot-code-into-U-Boot.patch"

SRCREV = "5233f173335a61b1e2b9120c55422a8d60ff7ffe"
PV = "v2017.03+git${SRCPV}"
S = "${WORKDIR}/git"

# For Mender.io integration
BOOTENV_SIZE = "0x20000"
PROVIDES += "u-boot-fw-utils"
RPROVIDES_${PN} += "u-boot-fw-utils"

INSANE_SKIP_${PN} = "already-stripped"
EXTRA_OEMAKE_class-target = 'CROSS_COMPILE=${TARGET_PREFIX} CC="${CC}
${CFLAGS} ${LDFLAGS}" V=1'
EXTRA_OEMAKE_class-cross = 'ARCH=${TARGET_ARCH} CC="${CC} ${CFLAGS}
${LDFLAGS}" V=1'

inherit uboot-config

do_compile () {
        oe_runmake ${UBOOT_MACHINE}
        oe_runmake env
}

do_install () {
        install -d ${D}${base_sbindir}
        install -d ${D}${sysconfdir}
        install -m 755 ${S}/tools/env/fw_printenv
${D}${base_sbindir}/fw_printenv
        install -m 755 ${S}/tools/env/fw_printenv
${D}${base_sbindir}/fw_setenv
        install -m 0644 ${S}/tools/env/fw_env.config
${D}${sysconfdir}/fw_env.config
}

do_install_class-cross () {
        install -d ${D}${bindir_cross}
        install -m 755 ${S}/tools/env/fw_printenv
${D}${bindir_cross}/fw_printenv
        install -m 755 ${S}/tools/env/fw_printenv
${D}${bindir_cross}/fw_setenv
}

SYSROOT_DIRS_append_class-cross = " ${bindir_cross}"

PACKAGE_ARCH = "${MACHINE_ARCH}"
BBCLASSEXTEND = "cross"




On Thu, Nov 2, 2017 at 12:50 PM, Burton, Ross <ross.burton@intel.com> wrote:

> What do you mean by patches not being applied correctly?
>  temp/log.do_patch has the output from patch so that might show that you've
> a patch that applies with lots of fuzz and is applied incorrectly.
>
> Ross
>
> On 2 November 2017 at 11:46, Alan Martinovic <alan.martinovic@senic.com>
> wrote:
>
>> I see, so I can't use the devshell to debug why the patch hasn't been
>> correctly applied.
>>
>> The answer you gave help for debugging actual build and configure
>> problems.
>> Debugging patching seems to be out scope for this thread.
>> Will start a new one.
>>
>>
>> On Thu, Nov 2, 2017 at 12:13 PM, Burton, Ross <ross.burton@intel.com>
>> wrote:
>>
>>> The patching is done by a bbclass (patch.bbclass) and helper modules
>>> (meta/oe/lib/patch.py), so you can't execute it like a shell task (such as
>>> do_compile).
>>>
>>> Ross
>>>
>>> On 2 November 2017 at 11:05, Alan Martinovic <alan.martinovic@senic.com>
>>> wrote:
>>>
>>>> Thanks for the suggestions
>>>> Am currently implementing both of them and am trying to understand how
>>>> the patching is done.
>>>>
>>>> In the temp directory I can see all the tasks.
>>>> For some reasons the patch wasn't applied correctly and I'm debugging
>>>> why.
>>>>
>>>> I have patches from before which are being correctly applied, one of
>>>> them being "0001-sun8i-configs-Add-CONFIG_BOOTCOUNT_LIMIT-ENV-for-men.p
>>>> atch".
>>>> Am using that one just as a reference for this example.
>>>> I want to see the steps done to apply the patch so I do:
>>>>
>>>>     temp$ grep -r 0001-sun8i-configs *
>>>>     temp$ grep -r quilt *
>>>>
>>>> I am expecting to see some commands related to the patching process in
>>>> one of the run scripts.
>>>> For example,  "quilt" followed by some arguments or
>>>> "0001-sun8i-configs-Add-CONFIG_BOOTCOUNT_LIMIT-ENV-for-men.patch"
>>>> being applied
>>>> by some other tool instead of quilt.
>>>>
>>>> I only end up with some findings in the log files (log.do_fetch,
>>>> log.do_unpack which don't tell me much).
>>>>
>>>>
>>>> Where are the steps that apply the patches located?
>>>>
>>>> Be Well :)
>>>> Alan
>>>>
>>>>
>>>>
>>>>
>>>> I've gotten to the
>>>>
>>>> On Wed, Nov 1, 2017 at 8:05 PM, Alex Kiernan <alex.kiernan@hivehome.com
>>>> > wrote:
>>>>
>>>>> On 1 November 2017 at 17:38, Alan Martinovic <
>>>>> alan.martinovic@senic.com> wrote:
>>>>>
>>>>>> I'm just upgrading to pyro and have some issues with u-boot-fw-utils.
>>>>>>
>>>>>> The error fails at do_compile stage which looks like this:
>>>>>>
>>>>>>     do_compile () {
>>>>>>             oe_runmake ${UBOOT_MACHINE}
>>>>>>             oe_runmake env
>>>>>>     }
>>>>>>
>>>>>>
>>>>>> The error is:
>>>>>>
>>>>>> Log data follows:
>>>>>> | DEBUG: Executing shell function do_compile
>>>>>> | NOTE: make -j 16 CROSS_COMPILE=arm-senic-linux-gnueabi-
>>>>>> CC=arm-senic-linux-gnueabi-       gcc  -march=armv7ve -mfpu=neon-vfpv4
>>>>>>  -mfloat-abi=hard -mcpu=cortex-a7
>>>>>> --sysroot=/home/alan/senic-os-update/build/tmp-glibc/work/se
>>>>>> nic_hub_beta-senic-linux-gnueabi/u-boot-fw-utils-senic/v2017
>>>>>> .03+gitAUTOINC+5233f17333-r0/recipe-sysroot
>>>>>>  -O2 -pipe -g -feliminate-unused-debug-types
>>>>>> -fdebug-prefix-map=/home/alan/senic-os-update/build/tmp-glib
>>>>>> c/work/senic_hub_beta-senic-linux-gnueabi/u-boot-fw-utils-se
>>>>>> nic/v2017.03+gitAUTOINC+5233f17333-r0=/usr/src/debug/u-boot-
>>>>>> fw-utils-senic/v2017.03+gitAUTOINC+5233f17333-r0
>>>>>> -fdebug-prefix-map=/home/alan/senic-os-update/build/tmp-glib
>>>>>> c/work/senic_hub_beta-senic-linux-gnueabi/u-boot-fw-utils-se
>>>>>> nic/v2017.03+gitAUTOINC+5233f17333-r0/recipe-sysroot-native=
>>>>>> -fdebug-prefix-map=/home/alan/senic-os-update/build/tmp-glib
>>>>>> c/work/senic_hub_beta-senic-linux-gnueabi/u-boot-fw-utils-se
>>>>>> nic/v2017.03+gitAUTOINC+5233f17333-r0/recipe-sysroot=
>>>>>>  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed V=1
>>>>>> | ERROR: oe_runmake failed
>>>>>> | make -f ./Makefile silentoldconfig
>>>>>> | make -f ./scripts/Makefile.build obj=scripts/basic
>>>>>> |   cc -Wp,-MD,scripts/basic/.fixdep.d -Wall -Wstrict-prototypes -O2
>>>>>> -fomit-frame-pointer      -o scripts/basic/fixdep
>>>>>> scripts/basic/fixdep.c
>>>>>> | /bin/sh: 1: cc: not found
>>>>>>
>>>>>>
>>>>>> I would assume this is a to specific error to ask help about. It seems
>>>>>> that the compiler isn't being called correctly (it's called as cc,
>>>>>> which isn't the full compiler name).
>>>>>> Suggestions are welcome but that isn't the reason for my post.
>>>>>>
>>>>>>
>>>>> Guessing... apply this in your recipe:
>>>>>
>>>>> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/rec
>>>>> ipes-bsp/u-boot/files/default-gcc.patch?h=pyro
>>>>>
>>>>> --
>>>>> Alex Kiernan
>>>>> Senior Engineering Manager
>>>>>
>>>>> hivehome.com <http://www.hivehome.com>
>>>>>
>>>>>
>>>>>
>>>>> Hive | London | Cambridge | Houston | Toronto
>>>>> The information contained in or attached to this email is confidential
>>>>> and intended only for the use of the individual(s) to which it is
>>>>> addressed. It may contain information which is confidential and/or covered
>>>>> by legal professional or other privilege. The views expressed in this email
>>>>> are not necessarily the views of Centrica plc, and the company, its
>>>>> directors, officers or employees make no representation or accept any
>>>>> liability for their accuracy or completeness unless expressly stated to the
>>>>> contrary.
>>>>> Centrica Connected Home Limited (company no: 5782908), registered in
>>>>> England and Wales with its registered office at Millstream, Maidenhead
>>>>> Road, Windsor, Berkshire SL4 5GD.
>>>>>
>>>>
>>>>
>>>
>>
>

--001a113d485aae5f7f055cff73ff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">That I can&#39;t see the changes for that particular patch=
 in the source (by manually checking the source for the changes).<div>Other=
 patches are applied correctly, I can trace them in the sources.</div><div>=
<br></div><div>I have no &quot;<span style=3D"font-size:12.8px">temp/log.do=
_patch&quot; and find notions of patches (both the successfully=C2=A0and un=
successfully=C2=A0applied ones) only in the log.do_fetch and log.do_unpack =
steps.</span></div><div><span style=3D"font-size:12.8px"><br></span></div><=
div><span style=3D"font-size:12.8px">Is there a way to grep through how a r=
ecipe looks like when all the inherited=C2=A0parts have been expanded?</spa=
n></div><div><span style=3D"font-size:12.8px">There seems to be a do_patch =
task (<a href=3D"http://www.yoctoproject.org/docs/2.3/ref-manual/ref-manual=
.html#patching-dev-environment">http://www.yoctoproject.org/docs/2.3/ref-ma=
nual/ref-manual.html#patching-dev-environment</a>)=C2=A0</span></div><div><=
span style=3D"font-size:12.8px">which I would grep for in that expanded rec=
ipe.</span></div><div><br></div><div><span style=3D"font-size:12.8px">For m=
ore insight, the current recipe (the one I&#39;d like to see expanded) look=
s like this:</span></div><div><span style=3D"font-size:12.8px"><br></span><=
/div><div><div><span style=3D"font-size:12.8px">$ cat <a href=3D"http://u-b=
oot-fw-utils-senic_2017.03.bb">u-boot-fw-utils-senic_2017.03.bb</a></span><=
/div><div><span style=3D"font-size:12.8px">SUMMARY =3D &quot;U-Boot bootloa=
der fw_printenv/setenv utilities&quot;</span></div><div><span style=3D"font=
-size:12.8px">LICENSE =3D &quot;GPLv2+&quot;</span></div><div><span style=
=3D"font-size:12.8px">LIC_FILES_CHKSUM =3D &quot;file://Licenses/README;md5=
=3Da2c678cfd4a4d97135585cad908541c6&quot;</span></div><div><span style=3D"f=
ont-size:12.8px">SECTION =3D &quot;bootloader&quot;</span></div><div><span =
style=3D"font-size:12.8px">DEPENDS =3D &quot;mtd-utils&quot;</span></div><d=
iv><span style=3D"font-size:12.8px"><br></span></div><div><span style=3D"fo=
nt-size:12.8px">require recipes-bsp/u-boot/u-boot-fw-utils-mender.inc</span=
></div><div><span style=3D"font-size:12.8px"><br></span></div><div><span st=
yle=3D"font-size:12.8px">SRCBRANCH =3D &quot;senic/v2017.03&quot;</span></d=
iv><div><span style=3D"font-size:12.8px">SRC_URI =3D &quot;git://<a href=3D=
"http://git@github.com/getsenic/senic-os-uboot.git;protocol=3Dssh;branch=3D=
${SRCBRANCH}">git@github.com/getsenic/senic-os-uboot.git;protocol=3Dssh;bra=
nch=3D${SRCBRANCH}</a>; \</span></div><div><span style=3D"font-size:12.8px"=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://boot.cmd \</span></div><di=
v><span style=3D"font-size:12.8px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0file://0001-sun8i-configs-Add-CONFIG_BOOTCOUNT_LIMIT-ENV-for-men.patch \=
</span></div><div><span style=3D"font-size:12.8px">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0file://0002-sunxi-common-Remove-variables-used-by-Mender.p=
atch \</span></div><div><span style=3D"font-size:12.8px">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0file://default-gcc.patch&quot;</span></div><div><sp=
an style=3D"font-size:12.8px"><br></span></div><div><span style=3D"font-siz=
e:12.8px">SRC_URI_remove =3D &quot;file://0003-Integration-of-Mender-boot-c=
ode-into-U-Boot.patch&quot;</span></div><div><span style=3D"font-size:12.8p=
x">SRC_URI_append =3D &quot; file://0001-Integration-of-Mender-boot-code-in=
to-U-Boot.patch&quot;</span></div><div><span style=3D"font-size:12.8px"><br=
></span></div><div><span style=3D"font-size:12.8px">SRCREV =3D &quot;5233f1=
73335a61b1e2b9120c55422a8d60ff7ffe&quot;</span></div><div><span style=3D"fo=
nt-size:12.8px">PV =3D &quot;v2017.03+git${SRCPV}&quot;</span></div><div><s=
pan style=3D"font-size:12.8px">S =3D &quot;${WORKDIR}/git&quot;</span></div=
><div><span style=3D"font-size:12.8px"><br></span></div><div><span style=3D=
"font-size:12.8px"># For Mender.io integration</span></div><div><span style=
=3D"font-size:12.8px">BOOTENV_SIZE =3D &quot;0x20000&quot;</span></div><div=
><span style=3D"font-size:12.8px">PROVIDES +=3D &quot;u-boot-fw-utils&quot;=
</span></div><div><span style=3D"font-size:12.8px">RPROVIDES_${PN} +=3D &qu=
ot;u-boot-fw-utils&quot;</span></div><div><span style=3D"font-size:12.8px">=
<br></span></div><div><span style=3D"font-size:12.8px">INSANE_SKIP_${PN} =
=3D &quot;already-stripped&quot;</span></div><div><span style=3D"font-size:=
12.8px">EXTRA_OEMAKE_class-target =3D &#39;CROSS_COMPILE=3D${TARGET_PREFIX}=
 CC=3D&quot;${CC} ${CFLAGS} ${LDFLAGS}&quot; V=3D1&#39;</span></div><div><s=
pan style=3D"font-size:12.8px">EXTRA_OEMAKE_class-cross =3D &#39;ARCH=3D${T=
ARGET_ARCH} CC=3D&quot;${CC} ${CFLAGS} ${LDFLAGS}&quot; V=3D1&#39;</span></=
div><div><span style=3D"font-size:12.8px"><br></span></div><div><span style=
=3D"font-size:12.8px">inherit uboot-config</span></div><div><span style=3D"=
font-size:12.8px"><br></span></div><div><span style=3D"font-size:12.8px">do=
_compile () {</span></div><div><span style=3D"font-size:12.8px">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 oe_runmake ${UBOOT_MACHINE}</span></div><div><span style=
=3D"font-size:12.8px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 oe_runmake env</span></di=
v><div><span style=3D"font-size:12.8px">}</span></div><div><span style=3D"f=
ont-size:12.8px"><br></span></div><div><span style=3D"font-size:12.8px">do_=
install () {</span></div><div><span style=3D"font-size:12.8px">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 install -d ${D}${base_sbindir}</span></div><div><span sty=
le=3D"font-size:12.8px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}${syscon=
fdir}</span></div><div><span style=3D"font-size:12.8px">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 install -m 755 ${S}/tools/env/fw_printenv ${D}${base_sbindir}/fw=
_printenv</span></div><div><span style=3D"font-size:12.8px">=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 install -m 755 ${S}/tools/env/fw_printenv ${D}${base_sbindir}=
/fw_setenv</span></div><div><span style=3D"font-size:12.8px">=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 install -m 0644 ${S}/tools/env/fw_env.config ${D}${sysconfdir=
}/fw_env.config</span></div><div><span style=3D"font-size:12.8px">}</span><=
/div><div><span style=3D"font-size:12.8px"><br></span></div><div><span styl=
e=3D"font-size:12.8px">do_install_class-cross () {</span></div><div><span s=
tyle=3D"font-size:12.8px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}${bind=
ir_cross}</span></div><div><span style=3D"font-size:12.8px">=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 install -m 755 ${S}/tools/env/fw_printenv ${D}${bindir_cross}=
/fw_printenv</span></div><div><span style=3D"font-size:12.8px">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 install -m 755 ${S}/tools/env/fw_printenv ${D}${bindir_cr=
oss}/fw_setenv</span></div><div><span style=3D"font-size:12.8px">}</span></=
div><div><span style=3D"font-size:12.8px"><br></span></div><div><span style=
=3D"font-size:12.8px">SYSROOT_DIRS_append_class-cross =3D &quot; ${bindir_c=
ross}&quot;</span></div><div><span style=3D"font-size:12.8px"><br></span></=
div><div><span style=3D"font-size:12.8px">PACKAGE_ARCH =3D &quot;${MACHINE_=
ARCH}&quot;</span></div><div><span style=3D"font-size:12.8px">BBCLASSEXTEND=
 =3D &quot;cross&quot;</span></div><div style=3D"font-size:12.8px"><br></di=
v></div><div><span style=3D"font-size:12.8px"><br></span></div><div><span s=
tyle=3D"font-size:12.8px"><br></span></div></div><div class=3D"gmail_extra"=
><br><div class=3D"gmail_quote">On Thu, Nov 2, 2017 at 12:50 PM, Burton, Ro=
ss <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D=
"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr">What do you mean by patches not being applie=
d correctly? =C2=A0temp/log.do_patch has the output from patch so that migh=
t show that you&#39;ve a patch that applies with lots of fuzz and is applie=
d incorrectly.<span class=3D"HOEnZb"><font color=3D"#888888"><div><br></div=
><div>Ross</div></font></span></div><div class=3D"HOEnZb"><div class=3D"h5"=
><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 2 November 20=
17 at 11:46, Alan Martinovic <span dir=3D"ltr">&lt;<a href=3D"mailto:alan.m=
artinovic@senic.com" target=3D"_blank">alan.martinovic@senic.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">I see, so I =
can&#39;t use the devshell to debug why the patch hasn&#39;t been correctly=
 applied.=C2=A0=C2=A0<div><br></div><div>The answer you gave help for debug=
ging actual build and configure problems.<br></div><div>Debugging patching =
seems to be out scope for this thread.<br>Will start a new one.</div><div><=
div class=3D"m_-5726545329610597227h5"><div><div><span style=3D"font-size:1=
2.8px"><br></span></div><div class=3D"gmail_extra"><br><div class=3D"gmail_=
quote">On Thu, Nov 2, 2017 at 12:13 PM, Burton, Ross <span dir=3D"ltr">&lt;=
<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@inte=
l.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"l=
tr">The patching is done by a bbclass (patch.bbclass) and helper modules (m=
eta/oe/lib/patch.py), so you can&#39;t execute it like a shell task (such a=
s do_compile).<span class=3D"m_-5726545329610597227m_-1619227811431477559m_=
-9066818731552652358HOEnZb"><font color=3D"#888888"><div><br></div><div>Ros=
s</div></font></span></div><div class=3D"m_-5726545329610597227m_-161922781=
1431477559m_-9066818731552652358HOEnZb"><div class=3D"m_-572654532961059722=
7m_-1619227811431477559m_-9066818731552652358h5"><div class=3D"gmail_extra"=
><br><div class=3D"gmail_quote">On 2 November 2017 at 11:05, Alan Martinovi=
c <span dir=3D"ltr">&lt;<a href=3D"mailto:alan.martinovic@senic.com" target=
=3D"_blank">alan.martinovic@senic.com</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex"><div dir=3D"ltr">Thanks for the suggestions<div>Am curre=
ntly implementing both of them and am trying to understand how the patching=
 is done.</div><div><br></div><div>In the temp directory I can see all the =
tasks.=C2=A0</div><div>For some reasons the patch wasn&#39;t applied correc=
tly and I&#39;m debugging why.</div><div><br></div><div>I have patches from=
 before which are being correctly applied, one of them being &quot;0001-sun=
8i-configs-Add-CONFIG<wbr>_BOOTCOUNT_LIMIT-ENV-for-men.p<wbr>atch&quot;.</d=
iv><div>Am using that one just as a reference for this example.</div><div>I=
 want to see the steps done to apply the patch so I do:</div><div><br></div=
><div>=C2=A0 =C2=A0 temp$ grep -r 0001-sun8i-configs *<br></div><div>=C2=A0=
 =C2=A0 temp$ grep -r=C2=A0quilt *</div><div><br></div><div>I am expecting =
to see some commands related to the patching process in one of the run scri=
pts.</div><div>For example,=C2=A0 &quot;quilt&quot; followed by some argume=
nts or &quot;0001-sun8i-configs-Add-CONFIG<wbr>_BOOTCOUNT_LIMIT-ENV-for-men=
.p<wbr>atch&quot; being applied=C2=A0</div><div>by some other tool instead =
of quilt.=C2=A0</div><div><br></div><div>I only end up with some findings i=
n the log files (log.do_fetch, log.do_unpack which don&#39;t tell me much).=
=C2=A0</div><div><br></div><div><br></div><div>Where are the steps that app=
ly the patches located?=C2=A0<br></div><div><br></div><div>Be Well :)</div>=
<div>Alan</div><div><br></div><div><br></div><div><br><div><br></div><div>I=
&#39;ve gotten to the=C2=A0</div></div></div><div class=3D"m_-5726545329610=
597227m_-1619227811431477559m_-9066818731552652358m_-1287795589794992332HOE=
nZb"><div class=3D"m_-5726545329610597227m_-1619227811431477559m_-906681873=
1552652358m_-1287795589794992332h5"><div class=3D"gmail_extra"><br><div cla=
ss=3D"gmail_quote">On Wed, Nov 1, 2017 at 8:05 PM, Alex Kiernan <span dir=
=3D"ltr">&lt;<a href=3D"mailto:alex.kiernan@hivehome.com" target=3D"_blank"=
>alex.kiernan@hivehome.com</a>&gt;</span> wrote:<br><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quo=
te"><span>On 1 November 2017 at 17:38, Alan Martinovic <span dir=3D"ltr">&l=
t;<a href=3D"mailto:alan.martinovic@senic.com" target=3D"_blank">alan.marti=
novic@senic.com</a>&gt;</span> wrote:<br></span><div><div class=3D"m_-57265=
45329610597227m_-1619227811431477559m_-9066818731552652358m_-12877955897949=
92332m_-6888141748760329520h5"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">I&#39;m just upgrading to pyro and have some issues with u-boot-fw-ut=
ils.<br>
<br>
The error fails at do_compile stage which looks like this:<br>
<br>
=C2=A0 =C2=A0 do_compile () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 oe_runmake ${UBOOT_MACHINE}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 oe_runmake env<br>
=C2=A0 =C2=A0 }<br>
<br>
<br>
The error is:<br>
<br>
Log data follows:<br>
| DEBUG: Executing shell function do_compile<br>
| NOTE: make -j 16 CROSS_COMPILE=3Darm-senic-linux-<wbr>gnueabi-<br>
CC=3Darm-senic-linux-gnueabi-=C2=A0 =C2=A0 =C2=A0 =C2=A0gcc=C2=A0 -march=3D=
armv7ve -mfpu=3Dneon-vfpv4<br>
=C2=A0-mfloat-abi=3Dhard -mcpu=3Dcortex-a7<br>
--sysroot=3D/home/alan/senic-os-<wbr>update/build/tmp-glibc/work/se<wbr>nic=
_hub_beta-senic-linux-gnuea<wbr>bi/u-boot-fw-utils-senic/v2017<wbr>.03+gitA=
UTOINC+5233f17333-r0/r<wbr>ecipe-sysroot<br>
=C2=A0-O2 -pipe -g -feliminate-unused-debug-types<br>
-fdebug-prefix-map=3D/home/alan/<wbr>senic-os-update/build/tmp-glib<wbr>c/w=
ork/senic_hub_beta-senic-li<wbr>nux-gnueabi/u-boot-fw-utils-se<wbr>nic/v201=
7.03+gitAUTOINC+5233f1<wbr>7333-r0=3D/usr/src/debug/u-boot-<wbr>fw-utils-se=
nic/v2017.03+gitAUT<wbr>OINC+5233f17333-r0<br>
-fdebug-prefix-map=3D/home/alan/<wbr>senic-os-update/build/tmp-glib<wbr>c/w=
ork/senic_hub_beta-senic-li<wbr>nux-gnueabi/u-boot-fw-utils-se<wbr>nic/v201=
7.03+gitAUTOINC+5233f1<wbr>7333-r0/recipe-sysroot-native=3D<br>
-fdebug-prefix-map=3D/home/alan/<wbr>senic-os-update/build/tmp-glib<wbr>c/w=
ork/senic_hub_beta-senic-li<wbr>nux-gnueabi/u-boot-fw-utils-se<wbr>nic/v201=
7.03+gitAUTOINC+5233f1<wbr>7333-r0/recipe-sysroot=3D<br>
=C2=A0-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed V=3D1<br>
| ERROR: oe_runmake failed<br>
| make -f ./Makefile silentoldconfig<br>
| make -f ./scripts/Makefile.build obj=3Dscripts/basic<br>
|=C2=A0 =C2=A0cc -Wp,-MD,scripts/basic/.fixdep.<wbr>d -Wall -Wstrict-protot=
ypes -O2<br>
-fomit-frame-pointer=C2=A0 =C2=A0 =C2=A0 -o scripts/basic/fixdep<br>
scripts/basic/fixdep.c<br>
| /bin/sh: 1: cc: not found<br>
<br>
<br>
I would assume this is a to specific error to ask help about. It seems<br>
that the compiler isn&#39;t being called correctly (it&#39;s called as cc,<=
br>
which isn&#39;t the full compiler name).<br>
Suggestions are welcome but that isn&#39;t the reason for my post.<br>
<br></blockquote><div><br></div></div></div><div>Guessing... apply this in =
your recipe:</div><div><br></div><div><a href=3D"http://git.yoctoproject.or=
g/cgit/cgit.cgi/poky/tree/meta/recipes-bsp/u-boot/files/default-gcc.patch?h=
=3Dpyro" target=3D"_blank">http://git.yoctoproject.org/cg<wbr>it/cgit.cgi/p=
oky/tree/meta/rec<wbr>ipes-bsp/u-boot/files/default-<wbr>gcc.patch?h=3Dpyro=
</a></div><span class=3D"m_-5726545329610597227m_-1619227811431477559m_-906=
6818731552652358m_-1287795589794992332m_-6888141748760329520HOEnZb"><font c=
olor=3D"#888888"><div><div><div class=3D"m_-5726545329610597227m_-161922781=
1431477559m_-9066818731552652358m_-1287795589794992332m_-688814174876032952=
0m_2972955679539863485gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><d=
iv dir=3D"ltr"><span style=3D"font-size:12.8px;font-family:arial,helvetica,=
sans-serif"><br></span></div><div dir=3D"ltr"><span style=3D"font-size:12.8=
px;font-family:arial,helvetica,sans-serif">--=C2=A0</span></div><div dir=3D=
"ltr"><span style=3D"font-size:12.8px;font-family:arial,helvetica,sans-seri=
f">Alex Kiernan</span><div><span style=3D"font-size:12.8px;font-family:aria=
l,helvetica,sans-serif;color:rgb(255,122,0)">Senior Engineering Manager</sp=
an><br style=3D"font-size:12.8px;font-family:arial,helvetica,sans-serif"></=
div></div></div></div></div></div></div></font></span></div></div></div><sp=
an class=3D"m_-5726545329610597227m_-1619227811431477559m_-9066818731552652=
358m_-1287795589794992332m_-6888141748760329520HOEnZb"><font color=3D"#8888=
88">

<br>
<a href=3D"http://www.hivehome.com" target=3D"_blank">hivehome.com</a><div>=
<div><br></div><div><img src=3D"https://s3-eu-west-1.amazonaws.com/81023081=
2/HiveSig.png"></div><div><br></div><div><br></div><div><div style=3D"font-=
size:12px;background-color:rgb(255,255,255);margin:0cm 0cm 0.0001pt;font-fa=
mily:Arial,sans-serif"><font size=3D"1" color=3D"#b7b7b7">Hive | London | C=
ambridge | Houston | Toronto<u></u><u></u></font></div><div style=3D"font-s=
ize:12px;background-color:rgb(255,255,255);margin:0cm 0cm 0.0001pt;font-fam=
ily:Arial,sans-serif"><font size=3D"1" color=3D"#b7b7b7">The information co=
ntained in or attached to this email is confidential and intended only for =
the use of the individual(s) to which it is addressed. It may contain infor=
mation which is confidential and/or covered by legal professional or other =
privilege. The views expressed in this email are not necessarily the views =
of Centrica plc, and the company, its directors, officers or employees make=
 no representation or accept any liability for their accuracy or completene=
ss unless expressly stated to the contrary.=C2=A0<u></u><u></u></font></div=
><div style=3D"font-size:12px;background-color:rgb(255,255,255);margin:0cm =
0cm 0.0001pt;font-family:Arial,sans-serif"><font size=3D"1" color=3D"#b7b7b=
7">Centrica Connected Home Limited (company no: 5782908), registered in Eng=
land and Wales with its registered office at Millstream, Maidenhead Road, W=
indsor, Berkshire SL4 5GD.</font></div></div></div></font></span></blockquo=
te></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div></div></div></div></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--001a113d485aae5f7f055cff73ff--
