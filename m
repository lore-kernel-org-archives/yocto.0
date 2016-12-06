Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90AE5E007A2; Tue,  6 Dec 2016 10:04:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7DE0E006EA
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 10:04:38 -0800 (PST)
Received: from nbhjo (plum.beechwoods.com [70.88.250.17])
	by msfrf2624.sfr.fr (SMTP Server) with ESMTP id B8A531C000C0B;
	Tue,  6 Dec 2016 19:04:35 +0100 (CET)
Received: from nbhjo (plum.beechwoods.com [70.88.250.17])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2624.sfr.fr (SMTP Server) with ESMTPSA;
	Tue,  6 Dec 2016 19:04:33 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Andrei Gherzan' <andrei@gherzan.ro>, 'Khem Raj' <raj.khem@gmail.com>
References: <19a9d76a-2c15-551a-2fce-55d8b8cfe1d0@mlbassoc.com>
	<20161203141606.2899e98c@nuc.betafive.co.uk>
	<CAK18fxFm3ttr1TJxw3+-PJD0A8WMDb0SKMMq2cJxiOwuY7=H1A@mail.gmail.com>
	<9f5e8157-ba81-7486-d761-3fd0ec5de3f9@mlbassoc.com>
	<CAMKF1sq0U1G-c266eCNCGAdw=B0Dcv0dXF7LjG8G=yPd4dFBXg@mail.gmail.com>
	<CAK18fxHR-X12Hr0R2Ba8=UToVtvWmb979k9+eQi+6yqHvbUN2w@mail.gmail.com>
In-Reply-To: <CAK18fxHR-X12Hr0R2Ba8=UToVtvWmb979k9+eQi+6yqHvbUN2w@mail.gmail.com>
Date: Tue, 6 Dec 2016 19:04:31 +0100
Message-ID: <009401d24feb$33bc8f30$9b35ad90$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIdWPz6eV3C2BSfUPw1Ib/BTgRAkQJ5ti72AXsfg8QBwY5G3wLYon7LAtJBUUygChibEA==
X-sfr-mailing: LEGIT
Cc: yocto@yoctoproject.org, 'Gary Thomas' <gary@mlbassoc.com>
Subject: Re: ***SPAM*** Re: [meta-raspberrypi] Current master broken
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
X-List-Received-Date: Tue, 06 Dec 2016 18:04:41 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi Andrei,

But I believe that the core of the problem is not necessarily the patch =
in
oe-core to detect the kernel version itself, but like Khem mentioned the
fact that a "well known" SRCREV is only valid for a brief period of time
under the RPI tree "constant" rebasing we've been experiencing lately.
So basically, the SRCREV that is used is not corresponding to what it =
used
to be, if it's still there in the tree, and the oe-core detects that - =
the
SRCREV thought it was one version of the kernel, and it just happened =
that
it corresponds to a different codebase with a different linux version.
Killing the error reporting by a patch will probably not prevent the
mismatch happening behind the scene.
So like Khem mentioned, either we find a way to "prevent" the rebasing =
at
the source, or we need to track down every version we want to support, =
and
update SRCREV and corresponding kernel version for those.

Cheers,
Herve

-----Original Message-----
From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Andrei Gherzan
Sent: mardi 6 d=E9cembre 2016 16:29
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org; Gary Thomas <gary@mlbassoc.com>
Subject: ***SPAM*** Re: [yocto] [meta-raspberrypi] Current master broken

On Mon, Dec 5, 2016 at 4:50 PM, Khem Raj <raj.khem@gmail.com> wrote:
> On Sun, Dec 4, 2016 at 10:03 PM, Gary Thomas <gary@mlbassoc.com> =
wrote:
>> On 2016-12-05 01:54, Andrei Gherzan wrote:
>>>
>>> Hi Gary,
>>>
>>>
>>> On Sat, Dec 3, 2016 at 2:16 PM, Paul Barker <paul@paulbarker.me.uk>
wrote:
>>>>
>>>> On Sat, 3 Dec 2016 08:33:40 +0100
>>>> Gary Thomas <gary@mlbassoc.com> wrote:
>>>>
>>>>> I'm currently unable to build for the RaspberryPi-3 using the=20
>>>>> master
>>>>> branch:
>>>>>
>>>>> Build Configuration:
>>>>> BB_VERSION        =3D "1.32.0"
>>>>> BUILD_SYS         =3D "x86_64-linux"
>>>>> NATIVELSBSTRING   =3D "universal"
>>>>> TARGET_SYS        =3D "arm-amltd-linux-gnueabi"
>>>>> MACHINE           =3D "raspberrypi3"
>>>>> DISTRO            =3D "amltd"
>>>>> DISTRO_VERSION    =3D "2.2+snapshot-20161202"
>>>>> TUNE_FEATURES     =3D "arm armv7ve vfp thumb neon vfpv4
>>>>> callconvention-hard cortexa7"
>>>>> TARGET_FPU        =3D "hard"
>>>>> meta              =3D =
"master:9e63f81c78e284c9b325fe04a1b59e61c7ad8a1a"
>>>>> meta-amltd        =3D =
"master:074120ab3a82cea0ac50d4e9eec89130a860a4fa"
>>>>> meta-raspberrypi  =3D =
"master:44d41bf3e94c4c8fe5ad5a3650572c8d17ef36c9"
>>>>>
>>>>> Initialising tasks: 100%
>>>>> |#############################################################| =
Time:
>>>>> 0:00:00
>>>>> Checking sstate mirror object availability: 100%
>>>>> |#####################################| Time: 0:00:00
>>>>> NOTE: Executing SetScene Tasks
>>>>> NOTE: Executing RunQueue Tasks
>>>>> ERROR: linux-raspberrypi-1_4.4.28+gitAUTOINC+5afda48c34-r0
>>>>> do_kernel_metadata: Function failed: do_kernel_metadata (log file=20
>>>>> is located at
>>>>>
>>>>> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/l
>>>>> inux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_ker
>>>>> nel_metadata.5647)
>>>>> ERROR: Logfile of failure stored in:
>>>>>
>>>>> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/l
>>>>> inux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_ker
>>>>> nel_metadata.5647
>>>>> Log data follows:
>>>>> | DEBUG: Executing shell function do_kernel_metadata
>>>>> | [ERROR]: processing of file /tmp/tmp.bXPr8PVPz3 failed
>>>>> |
>>>>>
/build/rpi3_2016-09-13/tmp/sysroots/x86_64-linux/usr/bin/scc-cmds/patch.c=
md:
>>>>> line 29: : No such file or directory
>>>>> |
>>>>> | Context around the error is:
>>>>> |
>>>>> |     #
>>>>> |     prefix
>>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/lin
>>>>> ux-raspberrypi/
>>>>> |     kconf non-hardware
>>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/lin
>>>>> ux-raspberrypi/defconfig
>>>>> |     prefix
>>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/lin
>>>>> ux-raspberrypi-4.4/
>>>>> |     patch
>>>>>
"/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-ras=
pbe
rrypi-4.4/0001-fix-dtbo-rules.patch"
>>>>> |     # run time: 0 seconds
>>>>> |     # processed files:
>>>>> |     # _cfg
>>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/lin
>>>>> ux-raspberrypi/defconfig
>>>>> |     # _cfg
>>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/lin
>>>>> ux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
>>>>> |
>>>>> | See pre-processed file /tmp/tmp.bXPr8PVPz3 for more details # #=20
>>>>> | scc v0.8 # processed: Fri Dec  2 04:12:25 CET 2016 # # This is a =

>>>>> | scc output file, do not edit #
>>>>> | [ERROR]: processing of file /tmp/tmp.eTLAT789Q2 failed #=20
>>>>> | _reloc_dir
>>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux
>>>>> | # _reloc_dir
>>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux
>>>>> |
>>>>>
/build/rpi3_2016-09-13/tmp/sysroots/x86_64-linux/usr/bin/scc-cmds/patch.c=
md:
>>>>> line 29: : No such file or directory
>>>>> |
>>>>> | Context around the error is:
>>>>> |
>>>>> |     #
>>>>> |     prefix
>>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/lin
>>>>> ux-raspberrypi/
>>>>> |     kconf non-hardware
>>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/lin
>>>>> ux-raspberrypi/defconfig
>>>>> |     prefix
>>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/lin
>>>>> ux-raspberrypi-4.4/
>>>>> |     patch
>>>>>
"/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-ras=
pbe
rrypi-4.4/0001-fix-dtbo-rules.patch"
>>>>> |     # run time: 1 seconds
>>>>> |     # processed files:
>>>>> |     # _cfg
>>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/lin
>>>>> ux-raspberrypi/defconfig
>>>>> |     # _cfg
>>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/lin
>>>>> ux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
>>>>> |
>>>>> | See pre-processed file /tmp/tmp.eTLAT789Q2 for more details
>>>>> | WARNING: exit code 1 from a shell command.
>>>>> | ERROR: Function failed: do_kernel_metadata (log file is located=20
>>>>> | at
>>>>>
>>>>> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/l
>>>>> inux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_ker
>>>>> nel_metadata.5647)
>>>>> ERROR: Task
>>>>> (/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/li
>>>>> nux-raspberrypi_4.4.bb:do_kernel_metadata)
>>>>> failed with exit code '1'
>>>>>
>>>>> I also tried kernel version 4.7:
>>>>> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+a45a35c085-r0 =
do_fetch:
>>>>> Fetcher failure: Unable to find revision=20
>>>>> a45a35c08598b23f9fd82e49c83b46c7d536244f in branch rpi-4.7.y even=20
>>>>> from upstream
>>>>> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+a45a35c085-r0 =
do_fetch:
>>>>> Fetcher failure for URL:
>>>>>
'git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-4.7.y=
'.
>>>>> Unable to fetch URL from any source.
>>>>> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+a45a35c085-r0 =
do_fetch:
>>>>> Function failed: base_do_fetch
>>>>> ERROR: Logfile of failure stored in:
>>>>>
>>>>> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/l
>>>>> inux-raspberrypi/1_4.7.7+gitAUTOINC+a45a35c085-r0/temp/log.do_fetc
>>>>> h.6133
>>>>> ERROR: Task
>>>>> (/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/li
>>>>> nux-raspberrypi_4.7.bb:do_fetch)
>>>>> failed
>>>>> with exit code '1'
>>>>>
>>>>> I was able to build with 4.8, but X didn't come up :-(
>>>>>
>>>>> Any ideas?
>>>>>
>>>>> Note: I changed the 4.7 recipe to use a good revision (c2cbd9c611) =

>>>>> but then I suffered the same problem installing the .dtbo patch=20
>>>>> :-(
>>>>>
>>>>
>>>> It looks like the following oe-core commit broke the build for
>>>> meta-raspberrypi:
>>>>
>>>>
>>>> =
http://git.openembedded.org/openembedded-core/commit/?id=3D83d10e2ace
>>>> f936b1f38804988f10eafa48db36f9
>>>>
>>>> Applying the following patch from the oe-core mailing list fixes it =

>>>> for
>>>> me:
>>>>
>>>>
>>>> http://lists.openembedded.org/pipermail/openembedded-core/2016-Dece
>>>> mber/129567.html
>>>>
>>>> I'm just going to apply that locally until it's merged into master.
>>>
>>>
>>> Does the referenced patch by Paul fix your issue here?
>>
>>
>> Yes, for version 4.4.x
>>
>> When I tried to build 4.7.x, I got these errors:
>>
>> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+c2cbd9c611-r0
>> do_kernel_version_sanity_check: Package Version
>> (4.7.7+gitAUTOINC+c2cbd9c611) does not match of kernel being built
(4.7.10).
>> Please update the PV variable to match the kernel source.
>> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+c2cbd9c611-r0
>> do_kernel_version_sanity_check: Function failed:
>> do_kernel_version_sanity_check (log file is located at
>> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linu
>> x-raspberrypi/1_4.7.7+gitAUTOINC+c2cbd9c611-r0/temp/log.do_kernel_ver
>> sion_sanity_check.2574)
>> ERROR: Logfile of failure stored in:
>> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linu
>> x-raspberrypi/1_4.7.7+gitAUTOINC+c2cbd9c611-r0/temp/log.do_kernel_ver
>> sion_sanity_check.2574
>> ERROR: Task
>> (/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux
>> -raspberrypi_4.7.bb:do_kernel_version_sanity_check)
>> failed with exit code '1'
>
> Yeah there are changes in OE-Core master to catch kernel verison=20
> mismatches now and moreover rpi folks rebase the trees except 4.1 and
> 4.4 none of recipes may hold
> true with SRCREV after sometime, we should bring this to notice of rpi =

> community if they could instead do merges instead of rebasing the=20
> trees we can keep those recipes locked to a given version, otherwise=20
> we are forced to move them as soon as the rebase is detected.

I managed to hit this too. @Paul Is that patch coming to oe-core master
soon?
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


