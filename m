Return-Path: <thshin@telechips.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4D5FE009C8; Thu,  4 Jun 2015 02:28:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from telegweb.telechips.com (unknown [219.240.43.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DB56E007B6
	for <yocto@yoctoproject.org>; Thu,  4 Jun 2015 02:28:32 -0700 (PDT)
x-mimeole: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Thu, 4 Jun 2015 18:27:59 +0900
Message-ID: <F4F751F96C54D346898D4C77E196E3DB0E5E537F@telegweb.telechips.com>
In-Reply-To: <mailman.3998.1433170100.2787.yocto@yoctoproject.org>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: cortexa15 toolchain compilation option (Neelkumar Patel)
Thread-Index: AdCcentUyKHVGHutTpyTpSB56DfnUgCLdzYg
References: <mailman.3998.1433170100.2787.yocto@yoctoproject.org>
From: =?ks_c_5601-1987?B?vcXFw8f2IChUYWVrIEh5dW4gU2hpbik=?=
	<thshin@telechips.com>
To: <yocto@yoctoproject.org>
Subject: Re: cortexa15 toolchain compilation option (Neelkumar Patel)
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
X-List-Received-Date: Thu, 04 Jun 2015 09:28:38 -0000
Content-class: urn:content-classes:message
Content-Type: text/plain;
	charset="ks_c_5601-1987"
Content-Transfer-Encoding: quoted-printable

If we do not provide that option (arm-XXX-gcc  hello.c ) then it gives =
below error.
fatal error: gnu/stubs-soft.h: No such file or directory

=3D> your toolchain support only hard fpu
if you want to use softfp , you must change your toolchain

do you use linaro-toolchain gcc-4.9???=20

linaro-toolchain gcc-4.9 only hard fpu


-----Original Message-----
From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of =
yocto-request@yoctoproject.org
Sent: Monday, June 01, 2015 11:48 PM
To: yocto@yoctoproject.org
Subject: yocto Digest, Vol 57, Issue 1

Send yocto mailing list submissions to
	yocto@yoctoproject.org

To subscribe or unsubscribe via the World Wide Web, visit
	https://lists.yoctoproject.org/listinfo/yocto
or, via email, send a message with subject or body 'help' to
	yocto-request@yoctoproject.org

You can reach the person managing the list at
	yocto-owner@yoctoproject.org

When replying, please edit your Subject line so it is more specific than =
"Re: Contents of yocto digest..."


Today's Topics:

   1. Re: cortexa15 toolchain compilation option (Neelkumar Patel)
   2. Strange configure error (???) (Neuer User)
   3. Re: build hello_world.c in yocto (Victor Rodriguez)
   4. Re: build hello_world.c in yocto (Burton, Ross)
   5. Multi recipes for different defconfig on the same kernel
      source (Joel (Xi Zhou) Zhou)


----------------------------------------------------------------------

Message: 1
Date: Mon, 1 Jun 2015 07:02:33 +0000
From: Neelkumar Patel <neel.patel@einfochips.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto] cortexa15 toolchain compilation option
Message-ID:
	=
<HK2PR0201MB0931B1E128C7F804CB9DEED6FFB60@HK2PR0201MB0931.apcprd02.prod.o=
utlook.com>
=09
Content-Type: text/plain; charset=3D"us-ascii"

Hi,

Sorry option is  -mfloat-abi=3Dhard.

We have to provide below option during compilation.
arm-XXX-gcc  -mfloat-abi=3Dhard hello.c

We do not want to give -mfloat-abi=3Dhard option during compilation.

If we do not provide that option (arm-XXX-gcc  hello.c ) then it gives =
below error.
fatal error: gnu/stubs-soft.h: No such file or directory

Thanks
From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Neelkumar Patel
Sent: 01 June 2015 12:04
To: yocto@yoctoproject.org
Subject: [yocto] cortexa15 toolchain compilation option

Hi,

We are building the toolchain for cortexa15 CPU in oe-core and we are =
able to build the toolchain but during the compilation of the =
application we have to provide manually option "--with-float=3Dhard".

e.g.  We have one application called "hello.c". We have to provide below =
option for compilation. If we do not provide --with-float option then we =
are getting compilation error.

arm-XXX-gcc  --with-float=3Dhard  hello.c

Is there any option to remove "-with-float" option during the =
application compilation. Is there any change we have to do in oe-core ??

Thanks in Advance.

*************************************************************************=
*************************************************************************=
*********** eInfochips Business Disclaimer: This e-mail message and all =
attachments transmitted with it are intended solely for the use of the =
addressee and may contain legally privileged and confidential =
information. If the reader of this message is not the intended =
recipient, or an employee or agent responsible for delivering this =
message to the intended recipient, you are hereby notified that any =
dissemination, distribution, copying, or other use of this message or =
its attachments is strictly prohibited. If you have received this =
message in error, please notify the sender immediately by replying to =
this message and please delete it from your computer. Any views =
expressed in this message are those of the individual sender unless =
otherwise stated. Company has taken enough precautions to prevent the =
spread of viruses. However the co  mpany accepts no liability for any =
damage caused by any virus transmitted by this email. =
*************************************************************************=
*************************************************************************=
***********
-------------- next part --------------
An HTML attachment was scrubbed...
URL: =
<http://lists.yoctoproject.org/pipermail/yocto/attachments/20150601/f8450=
16f/attachment-0001.html>

------------------------------

Message: 2
Date: Mon, 01 Jun 2015 11:23:19 +0200
From: Neuer User <auslands-kv@gmx.de>
To: yocto@yoctoproject.org
Subject: [yocto] Strange configure error (???)
Message-ID: <mkh8a7$kt6$1@ger.gmane.org>
Content-Type: text/plain; charset=3Dutf-8

Hi

I'm currently moving from Dora to Fido. I moved all my recipes to a new =
yocto installation and are modifying the recipes where necessary.

I have a very strange error when configuring a kernel recipe =
(linux-cubox-i). Actually, there is no error when using the defaut =
recipe included in fido. Only if I add the following bbappend file in =
order to change the kernel configuration, I get the error:

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/linux-cubox-i:"

SRC_URI =3D "file://defconfig \
           file://videoin.cfg \
           file://networking.cfg \
           file://wlan.cfg \
           file://dm-crypt.cfg \
           file://no-caam.cfg \
           file://leds.cfg \
           file://mod-to-builtin.cfg \
           file://watchdog-nowayout.cfg \ "

KERNEL_IMAGETYPE_cubox-i =3D "zImage"


Error:

| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: Executing shell function do_configure
| WARNING: exit code 128 from a shell command.
| ERROR: Function failed: do_configure (log file is located at
/home/ubuntu/yocto1.8/build/tmp/work/cubox_i-poky-linux-gnueabi/linux-cub=
ox-i/3.14.14-r0/temp/log.do_configure.29043)


Nothing more in the configure log. :(

Any idea, what is wrong? In general I just want to use a diffent kernel =
config. Actually a kernel config that worked before without problems on =
dora. I really have no idea, why this isn't working or even what the =
error means.

Thanks for any help

Michael



------------------------------

Message: 3
Date: Mon, 1 Jun 2015 07:08:19 -0500
From: Victor Rodriguez <vm.rod25@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto] build hello_world.c in yocto
Message-ID:
	=
<CAK5mtexC81Yi9C2YA6O4SuKZ=3DvQ6wk8=3DcUYNZ8mYOQ4uAoZ+qw@mail.gmail.com>
Content-Type: text/plain; charset=3DUTF-8

On Sun, May 31, 2015 at 5:48 PM, Burton, Ross <ross.burton@intel.com> =
wrote:
>
> On 29 May 2015 at 21:59, Victor Rodriguez <vm.rod25@gmail.com> wrote:
>>
>> Question what are the necessary IMAGE_INSTALL_append to build a c=20
>> hello world in an core-image-minimal ?
>
>
> The easy way is to add tools-sdk to IMAGE_FEATURES.  That gives you a=20
> complete toolchain (not just gcc) and more pieces.
>
> Ross
Thanks a lot Ross

I will try this on e, I had the idea that just with

EXTRA_IMAGE_FEATURES =3D "debug-tweaks dev-pkgs"

Thanks

Victor Rodriguez


------------------------------

Message: 4
Date: Mon, 1 Jun 2015 13:22:03 +0100
From: "Burton, Ross" <ross.burton@intel.com>
To: Victor Rodriguez <vm.rod25@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto] build hello_world.c in yocto
Message-ID:
	<CAJTo0LZqH+u5fNKF_vVVuyw7kaXRMdLteNai1UCPz2-UEpbXxw@mail.gmail.com>
Content-Type: text/plain; charset=3D"utf-8"

On 1 June 2015 at 13:08, Victor Rodriguez <vm.rod25@gmail.com> wrote:

> EXTRA_IMAGE_FEATURES =3D "debug-tweaks dev-pkgs"
>

As the documentation says (
http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#ref-featu=
res-image),
dev-pkgs is just the headers and library links for the packages you've =
installed.  No tools come with that.

Ross
-------------- next part --------------
An HTML attachment was scrubbed...
URL: =
<http://lists.yoctoproject.org/pipermail/yocto/attachments/20150601/d1930=
302/attachment-0001.html>

------------------------------

Message: 5
Date: Mon, 1 Jun 2015 14:48:14 +0000
From: "Joel (Xi Zhou) Zhou" <joel.zhou@broadcom.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [yocto] Multi recipes for different defconfig on the same
	kernel	source
Message-ID:
	=
<9F136EE5FB53D64397ED1089A0E760E0162D2974@SJEXCHMB12.corp.ad.broadcom.com=
>
=09
Content-Type: text/plain; charset=3D"us-ascii"

Hi all,

I need to create multiple recipes for different kernel config based on =
the same kernel source.
In my experiment, I create a new recipe linux-brcm-nand based on =
linux-brcm, the only different is the kernel defconfig file.
From the following error message, it looks like the idea of =
multi-kernel providers.

What is the correct way to different kernel config on the same kernel =
source?

Thanks,
Joel
----------------------------------
ERROR: The recipe linux-brcm-nand is trying to install files into a =
shared area when those files already exist. Those files and their =
manifest location are:
   /projects/poky/build64/tmp/sysroots/brcm/pkgdata/runtime/kernel
Matched in manifest-brcm-linux-brcm.packagedata
/projects/poky/build64/tmp/sysroots/brcm/pkgdata/runtime/kernel.packaged
Matched in manifest-brcm-linux-brcm.packagedata
...
/projects/poky/build64/tmp/sysroots/brcm/pkgdata/kernel-depmod/System.map=
-3.14.29
Matched in manifest-brcm-linux-brcm.packagedata
Please verify which recipe should provide the above files.
The build has stopped as continuing in this scenario WILL break things, =
if not now, possibly in the future (we've seen builds fail several =
months later). If the system knew how to recover from this automatically =
it would however there are several different scenarios which can result =
in this and we don't know which one this is. It may be you have switched =
providers of something like virtual/kernel (e.g. from linux-yocto to =
linux-yocto-dev), in that case you need to execute the clean task for =
both recipes and it will resolve this error. It may be you changed =
DISTRO_FEATURES from systemd to udev or vice versa. Cleaning those =
recipes should again resolve this error however switching =
DISTRO_FEATURES on an existing build directory is not supported, you =
should really clean out tmp and rebuild (reusing sstate should be safe). =
It could be the overlapping files detected are harmless in which case =
adding them to SSTATE_DUPWHITELIST may be the correct solution. It could =
also be your buil  d is including two different conflicting versions of =
things (e.g. bluez 4 and bluez 5 and the correct solution for that would =
be to resolve the conflict. If in doubt, please ask on the mailing list, =
sharing the error and filelist above.
ERROR: If the above message is too much, the simpler version is you're =
advised to wipe out tmp and rebuild (reusing sstate is fine). That will =
likely fix things in most (but not all) cases.
ERROR: Function failed: sstate_task_postfunc
ERROR: Logfile of failure stored in: =
/projects/poky/build64/tmp/work/brcm =
-poky-linux/linux-brcm-nand/3.14.29-r6/temp/log.do_packagedata.40045
NOTE: recipe linux-brcm-nand-3.14.29-r6: task do_packagedata: Failed
ERROR: Task 11 =
(/projects/poky/build64../meta-brcm/meta/recipes-kernel/linux/linux-brcm-=
nand_3.14.29.bb, do_packagedata) failed with exit code '1'
NOTE: Tasks Summary: Attempted 447 tasks of which 445 didn't need to be =
rerun and 2 failed.
-------------- next part --------------
An HTML attachment was scrubbed...
URL: =
<http://lists.yoctoproject.org/pipermail/yocto/attachments/20150601/6ccd5=
80f/attachment.html>

------------------------------

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


End of yocto Digest, Vol 57, Issue 1
************************************


