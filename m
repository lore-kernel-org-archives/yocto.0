Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A58CE00CF2; Thu,  2 Nov 2017 06:32:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.51 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.51 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A943DE00CC4
	for <yocto@yoctoproject.org>; Thu,  2 Nov 2017 06:32:01 -0700 (PDT)
Received: by mail-oi0-f51.google.com with SMTP id f66so8800157oib.2
	for <yocto@yoctoproject.org>; Thu, 02 Nov 2017 06:32:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=86+g837FWCH/w2Y+CM14YiUVi73IFnLM2qNItbovZg4=;
	b=Uz9jWCw7e2mJxYBCoh9PHUiq2tfsL7zrXmwYFU3p6m1I6MYlYGz8wC7IwRgdJFVVm7
	GWBxx9p70greMsVu6w41DWF4attm9jRTV5dkDqAmfh6sZWwTbdU2ADaE3zwJ5u7fExZ/
	om3RKgdgY7nt2d0ONvlv3Z3/ZfEGV5miPoAailYojDlNs20sJiMPcROFl16nkQpSn66K
	h0f+6GqWRFzWggW2hraR+0X1M+DAEmNGtR+b2CA2fF95n5hzRzg0LaSNiXH31ARv91uV
	ieKkdM0Pj8zE8pmIo5JAMGXbMoSWvf6QfuaycCEaANkClSDG2RAnPJPbGW4tFBgTy5r4
	C8rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=86+g837FWCH/w2Y+CM14YiUVi73IFnLM2qNItbovZg4=;
	b=BE3sE0Qg8wW8U7YgeYTVBGbkoyeIQF0uQlCUSBe1rf9Wc9UcfRv5r4v+LT4Vg0nCRD
	+zgPVOSgFbPW4B2X7FcMGUzVVay/NbXr0Y+gjEyLd6D7DaIiBu0wiNFGz6kpRNR8+65Y
	O0bngmqfmEc9gfFTrUwHq63sp/EfQ969C4Yc6wC+vtUs1KhcRvnqInlhpcRl2PbwDvZ3
	NUQtiX79lHLJOHKJ0KucImA346CE1C7et8ZqPv/Ed5Qjv2wHOzv1YztqU1+eO+s305aj
	7KL6NOhlHGNDtlFzufZDW5H936D/coh6vpFPT9sWAeKSyC9QMICZMzlYOaZ3itci0utM
	ciMA==
X-Gm-Message-State: AJaThX5A5Wn/49aWvdm9dKLvwwjixZklMnJexzEFssCm+uJeAaQCc1S9
	s53ux8wtAvkJKjkpzFPfFRnWTHhGH+WudTFHx/wurg==
X-Google-Smtp-Source: ABhQp+RW/C7I2A9aq12Giu7sLdJRIvdvypNabdG05P7Cnh6dA7hrs8jnZxpc884yPzcUyrHWxskokFFBEHUjl0ICnoU=
X-Received: by 10.157.33.9 with SMTP id i9mr2124330otb.298.1509629520505; Thu,
	02 Nov 2017 06:32:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.17.242 with HTTP; Thu, 2 Nov 2017 06:31:59 -0700 (PDT)
In-Reply-To: <CAOT_U5ZY+UWe-69XuS_m+D5LKE0OyxkrabPcHgOB3p226aiZdA@mail.gmail.com>
References: <CAOT_U5ZYFa_5Ua0swNRGyxG+hV9xNtTzGuEe5yGzYG4rDxsdNQ@mail.gmail.com>
	<CAGxhq2aHU7xgimpRhavOp6AqL4ALf9SBDk6Wti6BFPtftGC99Q@mail.gmail.com>
	<CAOT_U5ZsGM5WHnkX+eQ3KeeAFwR=mzaBgqqW-698jd9euXxoCg@mail.gmail.com>
	<CAJTo0LbY+nCmSA3o_hbaTm69okMA9z9V_V_CULY3e6rMNKV6xQ@mail.gmail.com>
	<CAOT_U5bvt5FfWMowG2YcknTy2=t0hJG8XO90OyqyypNa94BLbw@mail.gmail.com>
	<CAJTo0LaPLuDMi=vQf+EvXnftzm11OqPPbEAiJmNh0XPdDtz7sQ@mail.gmail.com>
	<CAOT_U5ZY+UWe-69XuS_m+D5LKE0OyxkrabPcHgOB3p226aiZdA@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Thu, 2 Nov 2017 14:31:59 +0100
Message-ID: <CAOT_U5b8m+Tp6OBrtqSO30Kn2At4akXxK_AEUUCeg=z2sc4LHw@mail.gmail.com>
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
X-List-Received-Date: Thu, 02 Nov 2017 13:32:03 -0000
Content-Type: multipart/alternative; boundary="001a11351d84500a81055d000367"

--001a11351d84500a81055d000367
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Found what I was asking for with:

bitbake -e <package>

going through the output, there are mentions of patch_do_patch().
I've traced it to meta/classes/patch.bbclass.

However, trying to execute just the patching for the recipe doesn't work.

build=E2=9F=AB bitbake -c patch u-boot-fw-utils-senic
...
ERROR: Task do_patch does not exist for target u-boot-fw-utils-senic
(/home/alan/senic-os-update/oe/../meta-senic/recipes-bsp/u-boot/u-boot-fw-u=
tils-senic_2017.03.bb:do_patch).
Close matches:
  do_fetch
  do_unpack
ERROR: Command execution failed: 1




On Thu, Nov 2, 2017 at 1:51 PM, Alan Martinovic <alan.martinovic@senic.com>
wrote:

> That I can't see the changes for that particular patch in the source (by
> manually checking the source for the changes).
> Other patches are applied correctly, I can trace them in the sources.
>
> I have no "temp/log.do_patch" and find notions of patches (both the
> successfully and unsuccessfully applied ones) only in the log.do_fetch an=
d
> log.do_unpack steps.
>
> Is there a way to grep through how a recipe looks like when all the
> inherited parts have been expanded?
> There seems to be a do_patch task (http://www.yoctoproject.org/
> docs/2.3/ref-manual/ref-manual.html#patching-dev-environment)
> which I would grep for in that expanded recipe.
>
> For more insight, the current recipe (the one I'd like to see expanded)
> looks like this:
>
> $ cat u-boot-fw-utils-senic_2017.03.bb
> SUMMARY =3D "U-Boot bootloader fw_printenv/setenv utilities"
> LICENSE =3D "GPLv2+"
> LIC_FILES_CHKSUM =3D "file://Licenses/README;md5=3D
> a2c678cfd4a4d97135585cad908541c6"
> SECTION =3D "bootloader"
> DEPENDS =3D "mtd-utils"
>
> require recipes-bsp/u-boot/u-boot-fw-utils-mender.inc
>
> SRCBRANCH =3D "senic/v2017.03"
> SRC_URI =3D "git://git@github.com/getsenic/senic-os-uboot.git;
> protocol=3Dssh;branch=3D${SRCBRANCH}
> <http://git@github.com/getsenic/senic-os-uboot.git;protocol=3Dssh;branch=
=3D$%7BSRCBRANCH%7D>;
> \
>            file://boot.cmd \
>            file://0001-sun8i-configs-Add-CONFIG_BOOTCOUNT_LIMIT-ENV-for-m=
en.patch
> \
>            file://0002-sunxi-common-Remove-variables-used-by-Mender.patch
> \
>            file://default-gcc.patch"
>
> SRC_URI_remove =3D "file://0003-Integration-of-Mender-boot-code-into-U-Bo=
ot.
> patch"
> SRC_URI_append =3D " file://0001-Integration-of-
> Mender-boot-code-into-U-Boot.patch"
>
> SRCREV =3D "5233f173335a61b1e2b9120c55422a8d60ff7ffe"
> PV =3D "v2017.03+git${SRCPV}"
> S =3D "${WORKDIR}/git"
>
> # For Mender.io integration
> BOOTENV_SIZE =3D "0x20000"
> PROVIDES +=3D "u-boot-fw-utils"
> RPROVIDES_${PN} +=3D "u-boot-fw-utils"
>
> INSANE_SKIP_${PN} =3D "already-stripped"
> EXTRA_OEMAKE_class-target =3D 'CROSS_COMPILE=3D${TARGET_PREFIX} CC=3D"${C=
C}
> ${CFLAGS} ${LDFLAGS}" V=3D1'
> EXTRA_OEMAKE_class-cross =3D 'ARCH=3D${TARGET_ARCH} CC=3D"${CC} ${CFLAGS}
> ${LDFLAGS}" V=3D1'
>
> inherit uboot-config
>
> do_compile () {
>         oe_runmake ${UBOOT_MACHINE}
>         oe_runmake env
> }
>
> do_install () {
>         install -d ${D}${base_sbindir}
>         install -d ${D}${sysconfdir}
>         install -m 755 ${S}/tools/env/fw_printenv ${D}${base_sbindir}/fw_
> printenv
>         install -m 755 ${S}/tools/env/fw_printenv
> ${D}${base_sbindir}/fw_setenv
>         install -m 0644 ${S}/tools/env/fw_env.config
> ${D}${sysconfdir}/fw_env.config
> }
>
> do_install_class-cross () {
>         install -d ${D}${bindir_cross}
>         install -m 755 ${S}/tools/env/fw_printenv ${D}${bindir_cross}/fw_
> printenv
>         install -m 755 ${S}/tools/env/fw_printenv
> ${D}${bindir_cross}/fw_setenv
> }
>
> SYSROOT_DIRS_append_class-cross =3D " ${bindir_cross}"
>
> PACKAGE_ARCH =3D "${MACHINE_ARCH}"
> BBCLASSEXTEND =3D "cross"
>
>
>
>
> On Thu, Nov 2, 2017 at 12:50 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
>
>> What do you mean by patches not being applied correctly?
>>  temp/log.do_patch has the output from patch so that might show that you=
've
>> a patch that applies with lots of fuzz and is applied incorrectly.
>>
>> Ross
>>
>> On 2 November 2017 at 11:46, Alan Martinovic <alan.martinovic@senic.com>
>> wrote:
>>
>>> I see, so I can't use the devshell to debug why the patch hasn't been
>>> correctly applied.
>>>
>>> The answer you gave help for debugging actual build and configure
>>> problems.
>>> Debugging patching seems to be out scope for this thread.
>>> Will start a new one.
>>>
>>>
>>> On Thu, Nov 2, 2017 at 12:13 PM, Burton, Ross <ross.burton@intel.com>
>>> wrote:
>>>
>>>> The patching is done by a bbclass (patch.bbclass) and helper modules
>>>> (meta/oe/lib/patch.py), so you can't execute it like a shell task (suc=
h as
>>>> do_compile).
>>>>
>>>> Ross
>>>>
>>>> On 2 November 2017 at 11:05, Alan Martinovic <alan.martinovic@senic.co=
m
>>>> > wrote:
>>>>
>>>>> Thanks for the suggestions
>>>>> Am currently implementing both of them and am trying to understand ho=
w
>>>>> the patching is done.
>>>>>
>>>>> In the temp directory I can see all the tasks.
>>>>> For some reasons the patch wasn't applied correctly and I'm debugging
>>>>> why.
>>>>>
>>>>> I have patches from before which are being correctly applied, one of
>>>>> them being "0001-sun8i-configs-Add-CONFIG
>>>>> _BOOTCOUNT_LIMIT-ENV-for-men.patch".
>>>>> Am using that one just as a reference for this example.
>>>>> I want to see the steps done to apply the patch so I do:
>>>>>
>>>>>     temp$ grep -r 0001-sun8i-configs *
>>>>>     temp$ grep -r quilt *
>>>>>
>>>>> I am expecting to see some commands related to the patching process i=
n
>>>>> one of the run scripts.
>>>>> For example,  "quilt" followed by some arguments or
>>>>> "0001-sun8i-configs-Add-CONFIG_BOOTCOUNT_LIMIT-ENV-for-men.patch"
>>>>> being applied
>>>>> by some other tool instead of quilt.
>>>>>
>>>>> I only end up with some findings in the log files (log.do_fetch,
>>>>> log.do_unpack which don't tell me much).
>>>>>
>>>>>
>>>>> Where are the steps that apply the patches located?
>>>>>
>>>>> Be Well :)
>>>>> Alan
>>>>>
>>>>>
>>>>>
>>>>>
>>>>> I've gotten to the
>>>>>
>>>>> On Wed, Nov 1, 2017 at 8:05 PM, Alex Kiernan <
>>>>> alex.kiernan@hivehome.com> wrote:
>>>>>
>>>>>> On 1 November 2017 at 17:38, Alan Martinovic <
>>>>>> alan.martinovic@senic.com> wrote:
>>>>>>
>>>>>>> I'm just upgrading to pyro and have some issues with u-boot-fw-util=
s.
>>>>>>>
>>>>>>> The error fails at do_compile stage which looks like this:
>>>>>>>
>>>>>>>     do_compile () {
>>>>>>>             oe_runmake ${UBOOT_MACHINE}
>>>>>>>             oe_runmake env
>>>>>>>     }
>>>>>>>
>>>>>>>
>>>>>>> The error is:
>>>>>>>
>>>>>>> Log data follows:
>>>>>>> | DEBUG: Executing shell function do_compile
>>>>>>> | NOTE: make -j 16 CROSS_COMPILE=3Darm-senic-linux-gnueabi-
>>>>>>> CC=3Darm-senic-linux-gnueabi-       gcc  -march=3Darmv7ve
>>>>>>> -mfpu=3Dneon-vfpv4
>>>>>>>  -mfloat-abi=3Dhard -mcpu=3Dcortex-a7
>>>>>>> --sysroot=3D/home/alan/senic-os-update/build/tmp-glibc/work/se
>>>>>>> nic_hub_beta-senic-linux-gnueabi/u-boot-fw-utils-senic/v2017
>>>>>>> .03+gitAUTOINC+5233f17333-r0/recipe-sysroot
>>>>>>>  -O2 -pipe -g -feliminate-unused-debug-types
>>>>>>> -fdebug-prefix-map=3D/home/alan/senic-os-update/build/tmp-glib
>>>>>>> c/work/senic_hub_beta-senic-linux-gnueabi/u-boot-fw-utils-se
>>>>>>> nic/v2017.03+gitAUTOINC+5233f17333-r0=3D/usr/src/debug/u-boot-
>>>>>>> fw-utils-senic/v2017.03+gitAUTOINC+5233f17333-r0
>>>>>>> -fdebug-prefix-map=3D/home/alan/senic-os-update/build/tmp-glib
>>>>>>> c/work/senic_hub_beta-senic-linux-gnueabi/u-boot-fw-utils-se
>>>>>>> nic/v2017.03+gitAUTOINC+5233f17333-r0/recipe-sysroot-native=3D
>>>>>>> -fdebug-prefix-map=3D/home/alan/senic-os-update/build/tmp-glib
>>>>>>> c/work/senic_hub_beta-senic-linux-gnueabi/u-boot-fw-utils-se
>>>>>>> nic/v2017.03+gitAUTOINC+5233f17333-r0/recipe-sysroot=3D
>>>>>>>  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed V=3D1
>>>>>>> | ERROR: oe_runmake failed
>>>>>>> | make -f ./Makefile silentoldconfig
>>>>>>> | make -f ./scripts/Makefile.build obj=3Dscripts/basic
>>>>>>> |   cc -Wp,-MD,scripts/basic/.fixdep.d -Wall -Wstrict-prototypes -O=
2
>>>>>>> -fomit-frame-pointer      -o scripts/basic/fixdep
>>>>>>> scripts/basic/fixdep.c
>>>>>>> | /bin/sh: 1: cc: not found
>>>>>>>
>>>>>>>
>>>>>>> I would assume this is a to specific error to ask help about. It
>>>>>>> seems
>>>>>>> that the compiler isn't being called correctly (it's called as cc,
>>>>>>> which isn't the full compiler name).
>>>>>>> Suggestions are welcome but that isn't the reason for my post.
>>>>>>>
>>>>>>>
>>>>>> Guessing... apply this in your recipe:
>>>>>>
>>>>>> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/rec
>>>>>> ipes-bsp/u-boot/files/default-gcc.patch?h=3Dpyro
>>>>>>
>>>>>> --
>>>>>> Alex Kiernan
>>>>>> Senior Engineering Manager
>>>>>>
>>>>>> hivehome.com <http://www.hivehome.com>
>>>>>>
>>>>>>
>>>>>>
>>>>>> Hive | London | Cambridge | Houston | Toronto
>>>>>> The information contained in or attached to this email is
>>>>>> confidential and intended only for the use of the individual(s) to w=
hich it
>>>>>> is addressed. It may contain information which is confidential and/o=
r
>>>>>> covered by legal professional or other privilege. The views expresse=
d in
>>>>>> this email are not necessarily the views of Centrica plc, and the co=
mpany,
>>>>>> its directors, officers or employees make no representation or accep=
t any
>>>>>> liability for their accuracy or completeness unless expressly stated=
 to the
>>>>>> contrary.
>>>>>> Centrica Connected Home Limited (company no: 5782908), registered in
>>>>>> England and Wales with its registered office at Millstream, Maidenhe=
ad
>>>>>> Road, Windsor, Berkshire SL4 5GD.
>>>>>>
>>>>>
>>>>>
>>>>
>>>
>>
>

--001a11351d84500a81055d000367
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Found what I was asking for with:<div><br></div><div>bitba=
ke -e &lt;package&gt;</div><div><br></div><div>going through the output, th=
ere are mentions of patch_do_patch().</div><div>I&#39;ve traced it to meta/=
classes/patch.bbclass.</div><div><br></div><div>However, trying to execute =
just the patching for the recipe doesn&#39;t work.</div><div><br></div><div=
>build=E2=9F=AB bitbake -c patch u-boot-fw-utils-senic<br></div><div>...</d=
iv><div><div>ERROR: Task do_patch does not exist for target u-boot-fw-utils=
-senic (/home/alan/senic-os-update/oe/../meta-senic/recipes-bsp/u-boot/u-bo=
ot-fw-utils-senic_2017.03.bb:do_patch). Close matches:</div><div>=C2=A0 do_=
fetch</div><div>=C2=A0 do_unpack</div><div>ERROR: Command execution failed:=
 1</div></div><div><br></div><div><br></div><div>=C2=A0<br></div></div><div=
 class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Nov 2, 2017 a=
t 1:51 PM, Alan Martinovic <span dir=3D"ltr">&lt;<a href=3D"mailto:alan.mar=
tinovic@senic.com" target=3D"_blank">alan.martinovic@senic.com</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">That I can&#39=
;t see the changes for that particular patch in the source (by manually che=
cking the source for the changes).<div>Other patches are applied correctly,=
 I can trace them in the sources.</div><div><br></div><div>I have no &quot;=
<span style=3D"font-size:12.8px">temp/log.do_patch&quot; and find notions o=
f patches (both the successfully=C2=A0and unsuccessfully=C2=A0applied ones)=
 only in the log.do_fetch and log.do_unpack steps.</span></div><div><span s=
tyle=3D"font-size:12.8px"><br></span></div><div><span style=3D"font-size:12=
.8px">Is there a way to grep through how a recipe looks like when all the i=
nherited=C2=A0parts have been expanded?</span></div><div><span style=3D"fon=
t-size:12.8px">There seems to be a do_patch task (<a href=3D"http://www.yoc=
toproject.org/docs/2.3/ref-manual/ref-manual.html#patching-dev-environment"=
 target=3D"_blank">http://www.yoctoproject.org/<wbr>docs/2.3/ref-manual/ref=
-<wbr>manual.html#patching-dev-<wbr>environment</a>)=C2=A0</span></div><div=
><span style=3D"font-size:12.8px">which I would grep for in that expanded r=
ecipe.</span></div><div><br></div><div><span style=3D"font-size:12.8px">For=
 more insight, the current recipe (the one I&#39;d like to see expanded) lo=
oks like this:</span></div><div><span style=3D"font-size:12.8px"><br></span=
></div><div><div><span style=3D"font-size:12.8px">$ cat <a href=3D"http://u=
-boot-fw-utils-senic_2017.03.bb" target=3D"_blank">u-boot-fw-utils-senic_20=
17.03.<wbr>bb</a></span></div><div><span style=3D"font-size:12.8px">SUMMARY=
 =3D &quot;U-Boot bootloader fw_printenv/setenv utilities&quot;</span></div=
><div><span style=3D"font-size:12.8px">LICENSE =3D &quot;GPLv2+&quot;</span=
></div><div><span style=3D"font-size:12.8px">LIC_FILES_CHKSUM =3D &quot;fil=
e://Licenses/README;md5=3D<wbr>a2c678cfd4a4d97135585cad908541<wbr>c6&quot;<=
/span></div><div><span style=3D"font-size:12.8px">SECTION =3D &quot;bootloa=
der&quot;</span></div><div><span style=3D"font-size:12.8px">DEPENDS =3D &qu=
ot;mtd-utils&quot;</span></div><div><span style=3D"font-size:12.8px"><br></=
span></div><div><span style=3D"font-size:12.8px">require recipes-bsp/u-boot=
/u-boot-fw-<wbr>utils-mender.inc</span></div><div><span style=3D"font-size:=
12.8px"><br></span></div><div><span style=3D"font-size:12.8px">SRCBRANCH =
=3D &quot;senic/v2017.03&quot;</span></div><div><span style=3D"font-size:12=
.8px">SRC_URI =3D &quot;git://<a href=3D"http://git@github.com/getsenic/sen=
ic-os-uboot.git;protocol=3Dssh;branch=3D$%7BSRCBRANCH%7D" target=3D"_blank"=
>git@github.com/<wbr>getsenic/senic-os-uboot.git;<wbr>protocol=3Dssh;branch=
=3D${<wbr>SRCBRANCH}</a>; \</span></div><div><span style=3D"font-size:12.8p=
x">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://boot.cmd \</span></div><=
div><span style=3D"font-size:12.8px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0file://0001-sun8i-configs-<wbr>Add-CONFIG_BOOTCOUNT_LIMIT-<wbr>ENV-for-m=
en.patch \</span></div><div><span style=3D"font-size:12.8px">=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0file://0002-sunxi-common-<wbr>Remove-variables-u=
sed-by-<wbr>Mender.patch \</span></div><div><span style=3D"font-size:12.8px=
">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://default-gcc.patch&quot;</=
span></div><div><span style=3D"font-size:12.8px"><br></span></div><div><spa=
n style=3D"font-size:12.8px">SRC_URI_remove =3D &quot;file://0003-Integrati=
on-of-<wbr>Mender-boot-code-into-U-Boot.<wbr>patch&quot;</span></div><div><=
span style=3D"font-size:12.8px">SRC_URI_append =3D &quot; file://0001-Integ=
ration-of-<wbr>Mender-boot-code-into-U-Boot.<wbr>patch&quot;</span></div><d=
iv><span style=3D"font-size:12.8px"><br></span></div><div><span style=3D"fo=
nt-size:12.8px">SRCREV =3D &quot;<wbr>5233f173335a61b1e2b9120c55422a<wbr>8d=
60ff7ffe&quot;</span></div><div><span style=3D"font-size:12.8px">PV =3D &qu=
ot;v2017.03+git${SRCPV}&quot;</span></div><div><span style=3D"font-size:12.=
8px">S =3D &quot;${WORKDIR}/git&quot;</span></div><div><span style=3D"font-=
size:12.8px"><br></span></div><div><span style=3D"font-size:12.8px"># For M=
ender.io integration</span></div><div><span style=3D"font-size:12.8px">BOOT=
ENV_SIZE =3D &quot;0x20000&quot;</span></div><div><span style=3D"font-size:=
12.8px">PROVIDES +=3D &quot;u-boot-fw-utils&quot;</span></div><div><span st=
yle=3D"font-size:12.8px">RPROVIDES_${PN} +=3D &quot;u-boot-fw-utils&quot;</=
span></div><div><span style=3D"font-size:12.8px"><br></span></div><div><spa=
n style=3D"font-size:12.8px">INSANE_SKIP_${PN} =3D &quot;already-stripped&q=
uot;</span></div><div><span style=3D"font-size:12.8px">EXTRA_OEMAKE_class-t=
arget =3D &#39;CROSS_COMPILE=3D${TARGET_<wbr>PREFIX} CC=3D&quot;${CC} ${CFL=
AGS} ${LDFLAGS}&quot; V=3D1&#39;</span></div><div><span style=3D"font-size:=
12.8px">EXTRA_OEMAKE_class-cross =3D &#39;ARCH=3D${TARGET_ARCH} CC=3D&quot;=
${CC} ${CFLAGS} ${LDFLAGS}&quot; V=3D1&#39;</span></div><div><span style=3D=
"font-size:12.8px"><br></span></div><div><span style=3D"font-size:12.8px">i=
nherit uboot-config</span></div><span class=3D""><div><span style=3D"font-s=
ize:12.8px"><br></span></div><div><span style=3D"font-size:12.8px">do_compi=
le () {</span></div><div><span style=3D"font-size:12.8px">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 oe_runmake ${UBOOT_MACHINE}</span></div><div><span style=3D"font=
-size:12.8px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 oe_runmake env</span></div><div><=
span style=3D"font-size:12.8px">}</span></div><div><span style=3D"font-size=
:12.8px"><br></span></div></span><div><span style=3D"font-size:12.8px">do_i=
nstall () {</span></div><div><span style=3D"font-size:12.8px">=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 install -d ${D}${base_sbindir}</span></div><div><span style=
=3D"font-size:12.8px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}${sysconfd=
ir}</span></div><div><span style=3D"font-size:12.8px">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 install -m 755 ${S}/tools/env/fw_printenv ${D}${base_sbindir}/fw_<wb=
r>printenv</span></div><div><span style=3D"font-size:12.8px">=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 install -m 755 ${S}/tools/env/fw_printenv ${D}${base_sbindir}=
/fw_setenv</span></div><div><span style=3D"font-size:12.8px">=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 install -m 0644 ${S}/tools/env/fw_env.config ${D}${sysconfdir=
}/fw_env.<wbr>config</span></div><div><span style=3D"font-size:12.8px">}</s=
pan></div><div><span style=3D"font-size:12.8px"><br></span></div><div><span=
 style=3D"font-size:12.8px">do_install_class-cross () {</span></div><div><s=
pan style=3D"font-size:12.8px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}$=
{bindir_cross}</span></div><div><span style=3D"font-size:12.8px">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 install -m 755 ${S}/tools/env/fw_printenv ${D}${bindir_cr=
oss}/fw_<wbr>printenv</span></div><div><span style=3D"font-size:12.8px">=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 install -m 755 ${S}/tools/env/fw_printenv ${D}${bi=
ndir_cross}/fw_setenv</span></div><div><span style=3D"font-size:12.8px">}</=
span></div><div><span style=3D"font-size:12.8px"><br></span></div><div><spa=
n style=3D"font-size:12.8px">SYSROOT_DIRS_append_class-<wbr>cross =3D &quot=
; ${bindir_cross}&quot;</span></div><div><span style=3D"font-size:12.8px"><=
br></span></div><div><span style=3D"font-size:12.8px">PACKAGE_ARCH =3D &quo=
t;${MACHINE_ARCH}&quot;</span></div><div><span style=3D"font-size:12.8px">B=
BCLASSEXTEND =3D &quot;cross&quot;</span></div><div style=3D"font-size:12.8=
px"><br></div></div><div><span style=3D"font-size:12.8px"><br></span></div>=
<div><span style=3D"font-size:12.8px"><br></span></div></div><div class=3D"=
HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmai=
l_quote">On Thu, Nov 2, 2017 at 12:50 PM, Burton, Ross <span dir=3D"ltr">&l=
t;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@in=
tel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D=
"ltr">What do you mean by patches not being applied correctly? =C2=A0temp/l=
og.do_patch has the output from patch so that might show that you&#39;ve a =
patch that applies with lots of fuzz and is applied incorrectly.<span class=
=3D"m_1368548635376472645HOEnZb"><font color=3D"#888888"><div><br></div><di=
v>Ross</div></font></span></div><div class=3D"m_1368548635376472645HOEnZb">=
<div class=3D"m_1368548635376472645h5"><div class=3D"gmail_extra"><br><div =
class=3D"gmail_quote">On 2 November 2017 at 11:46, Alan Martinovic <span di=
r=3D"ltr">&lt;<a href=3D"mailto:alan.martinovic@senic.com" target=3D"_blank=
">alan.martinovic@senic.com</a>&gt;</span> wrote:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"><div dir=3D"ltr">I see, so I can&#39;t use the devshell to debug w=
hy the patch hasn&#39;t been correctly applied.=C2=A0=C2=A0<div><br></div><=
div>The answer you gave help for debugging actual build and configure probl=
ems.<br></div><div>Debugging patching seems to be out scope for this thread=
.<br>Will start a new one.</div><div><div class=3D"m_1368548635376472645m_-=
5726545329610597227h5"><div><div><span style=3D"font-size:12.8px"><br></spa=
n></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, N=
ov 2, 2017 at 12:13 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">The patching=
 is done by a bbclass (patch.bbclass) and helper modules (meta/oe/lib/patch=
.py), so you can&#39;t execute it like a shell task (such as do_compile).<s=
pan class=3D"m_1368548635376472645m_-5726545329610597227m_-1619227811431477=
559m_-9066818731552652358HOEnZb"><font color=3D"#888888"><div><br></div><di=
v>Ross</div></font></span></div><div class=3D"m_1368548635376472645m_-57265=
45329610597227m_-1619227811431477559m_-9066818731552652358HOEnZb"><div clas=
s=3D"m_1368548635376472645m_-5726545329610597227m_-1619227811431477559m_-90=
66818731552652358h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On 2 November 2017 at 11:05, Alan Martinovic <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:alan.martinovic@senic.com" target=3D"_blank">alan.martinovic@=
senic.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr">Thanks for the suggestions<div>Am currently implementing both of t=
hem and am trying to understand how the patching is done.</div><div><br></d=
iv><div>In the temp directory I can see all the tasks.=C2=A0</div><div>For =
some reasons the patch wasn&#39;t applied correctly and I&#39;m debugging w=
hy.</div><div><br></div><div>I have patches from before which are being cor=
rectly applied, one of them being &quot;0001-sun8i-configs-Add-CONFIG<wbr>_=
BOOTCOUNT_LIMIT-ENV-for-men.p<wbr>atch&quot;.</div><div>Am using that one j=
ust as a reference for this example.</div><div>I want to see the steps done=
 to apply the patch so I do:</div><div><br></div><div>=C2=A0 =C2=A0 temp$ g=
rep -r 0001-sun8i-configs *<br></div><div>=C2=A0 =C2=A0 temp$ grep -r=C2=A0=
quilt *</div><div><br></div><div>I am expecting to see some commands relate=
d to the patching process in one of the run scripts.</div><div>For example,=
=C2=A0 &quot;quilt&quot; followed by some arguments or &quot;0001-sun8i-con=
figs-Add-CONFIG<wbr>_BOOTCOUNT_LIMIT-ENV-for-men.p<wbr>atch&quot; being app=
lied=C2=A0</div><div>by some other tool instead of quilt.=C2=A0</div><div><=
br></div><div>I only end up with some findings in the log files (log.do_fet=
ch, log.do_unpack which don&#39;t tell me much).=C2=A0</div><div><br></div>=
<div><br></div><div>Where are the steps that apply the patches located?=C2=
=A0<br></div><div><br></div><div>Be Well :)</div><div>Alan</div><div><br></=
div><div><br></div><div><br><div><br></div><div>I&#39;ve gotten to the=C2=
=A0</div></div></div><div class=3D"m_1368548635376472645m_-5726545329610597=
227m_-1619227811431477559m_-9066818731552652358m_-1287795589794992332HOEnZb=
"><div class=3D"m_1368548635376472645m_-5726545329610597227m_-1619227811431=
477559m_-9066818731552652358m_-1287795589794992332h5"><div class=3D"gmail_e=
xtra"><br><div class=3D"gmail_quote">On Wed, Nov 1, 2017 at 8:05 PM, Alex K=
iernan <span dir=3D"ltr">&lt;<a href=3D"mailto:alex.kiernan@hivehome.com" t=
arget=3D"_blank">alex.kiernan@hivehome.com</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div cl=
ass=3D"gmail_quote"><span>On 1 November 2017 at 17:38, Alan Martinovic <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:alan.martinovic@senic.com" target=3D"_b=
lank">alan.martinovic@senic.com</a>&gt;</span> wrote:<br></span><div><div c=
lass=3D"m_1368548635376472645m_-5726545329610597227m_-1619227811431477559m_=
-9066818731552652358m_-1287795589794992332m_-6888141748760329520h5"><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">I&#39;m just upgrading to pyro a=
nd have some issues with u-boot-fw-utils.<br>
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
</a></div><span class=3D"m_1368548635376472645m_-5726545329610597227m_-1619=
227811431477559m_-9066818731552652358m_-1287795589794992332m_-6888141748760=
329520HOEnZb"><font color=3D"#888888"><div><div><div class=3D"m_13685486353=
76472645m_-5726545329610597227m_-1619227811431477559m_-9066818731552652358m=
_-1287795589794992332m_-6888141748760329520m_2972955679539863485gmail_signa=
ture"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><span style=3D"fon=
t-size:12.8px;font-family:arial,helvetica,sans-serif"><br></span></div><div=
 dir=3D"ltr"><span style=3D"font-size:12.8px;font-family:arial,helvetica,sa=
ns-serif">--=C2=A0</span></div><div dir=3D"ltr"><span style=3D"font-size:12=
.8px;font-family:arial,helvetica,sans-serif">Alex Kiernan</span><div><span =
style=3D"font-size:12.8px;font-family:arial,helvetica,sans-serif;color:rgb(=
255,122,0)">Senior Engineering Manager</span><br style=3D"font-size:12.8px;=
font-family:arial,helvetica,sans-serif"></div></div></div></div></div></div=
></div></font></span></div></div></div><span class=3D"m_1368548635376472645=
m_-5726545329610597227m_-1619227811431477559m_-9066818731552652358m_-128779=
5589794992332m_-6888141748760329520HOEnZb"><font color=3D"#888888">

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
</div></div></blockquote></div><br></div>

--001a11351d84500a81055d000367--
