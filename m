Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCC57E011B6
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2011 13:27:59 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 967FC5AE518; Thu,  4 Aug 2011 14:28:07 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 45FE616603AC;
	Thu,  4 Aug 2011 14:28:05 -0600 (MDT)
Message-ID: <4E3B00D5.6090800@mlbassoc.com>
Date: Thu, 04 Aug 2011 14:28:05 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <B27EBC40D200ED48A3F4CC2EBEABAE0B260B53A4B7@orsmsx501.amr.corp.intel.com>	<1312469410.14274.0.camel@rex>
	<4E3AB3B3.7050103@mlbassoc.com> <2016626.y3nmSzkdEa@perseus>
In-Reply-To: <2016626.y3nmSzkdEa@perseus>
Cc: yocto@yoctoproject.org
Subject: Re: examples / docs on utilizing an external toolchain
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
X-List-Received-Date: Thu, 04 Aug 2011 20:28:00 -0000
X-Groupsio-MsgNum: 2228
Content-Type: multipart/mixed; boundary="------------000001020607010607020400"

--------------000001020607010607020400
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-08-04 09:06, Khem Raj wrote:
> On Thursday, August 04, 2011 08:58:59 AM Gary Thomas wrote:
>> On 2011-08-04 08:49, Richard Purdie wrote:
>>> On Wed, 2011-08-03 at 23:59 -0500, Kumar Gala wrote:
>>>> On Aug 3, 2011, at 10:12 AM, Richard Purdie wrote:
>>>>> On Wed, 2011-08-03 at 09:50 -0500, Kumar Gala wrote:
>>>>>> On Aug 3, 2011, at 9:22 AM, Richard Purdie wrote:
>>>>>>> On Wed, 2011-08-03 at 09:04 -0500, Kumar Gala wrote:
>>>>>>>> Bug submitted:
>>>>>>>>
>>>>>>>> http://bugzilla.pokylinux.org/show_bug.cgi?id=1323
>>>>>>>>
>>>>>>>> My question still stands even w/o it being in formal docs.
>>>>>>>
>>>>>>> FWIW, POKYMODE was replaced by TCMODE as part of the OE-Core
>>>>>>> changes.
>>>>>>> I'd be interested to know where we've missed the references to
>>>>>>> it and
>>>>>>> get to get those references fixed.
>>>>>>
>>>>>> Ok, but how does one use TCMODE?  :)
>>>>>>
>>>>>> is there an example around anywhere?
>>>>>
>>>>> I'll explain on the condition that someone actually documents this
>>>>> ;-).
>>>>>
>>>>> TCMODE determines which of the files in
>>>>> meta/conf/distro/include/tcmode-* is used. It defaults to "default"
>>>>> and
>>>>> our default toolchain definition is in tcmode-default.inc.
>>>>>
>>>>> There is another example there which is "external-csl2008q3". As you
>>>>> can see from the tcmode-external-csl2008q3 file, it sets up the
>>>>> system to use an external toolchain instead.
>>>>>
>>>>> So you can define one of these files in your layer and then the
>>>>> system
>>>>> can select alternative toolchain configurations.
>>>>>
>>>>> Does that help? :)
>>>>>
>>>>> There is a similar TCLIBC variable which controls which libc is used
>>>>> (eglibc or uclibc).
>>>>
>>>> Yes that helps.  So it looks as if today there is not a means to point
>>>> to SDK prebuilt toolchain via this means.
>>>
>>> We have supported this in the past but it got messy and I'd really
>>> prefer people to use sstate for this.
>>
>> That would be great, if only it worked for this purpose.  Sadly, I've not
>> had much luck with sharing toolchains like this.
>>
>> Here's my problem - I have a number of different target platforms (MACHINE),
>> all of which are really the same ARM SoC (OMAP/3530==armv7a).  When I try
>> to share the sstate between them, the toolchain always rebuilds from
>> scratch.
>
> can you post bitbake -e of say gcc-cross gcc-runtime and eglibc
> for both machines ? We somehow need to figure what changes the signatures
>
>> A lot of other packages do seem to share state properly, e.g.
>> busybox built for these platforms uses sstate well, but not so with
>> toolchains.
>>
>> Is there any way for this to work?  I'd love to be able to hand my customers
>> a set of sstate files for the things they don't really need to rebuild and
>> the toolchains are a giant part of it.  If this should work and the current
>> failures a bug, I'll report it as such.
>>
>> Thanks

This turns out (in my case) to be a sensitivity to $DISTRO_FEATURES
One of my builds had slightly different value, but not such that it
actually changed any packages (it had an unused key).

I tried this with two machines, identical except in the name, with machineB
sharing state with machineB.  The only packages which had to be rebuilt were
the target specific ones, e.g. the machine kernel.

If I touch DISTRO_FEATURES in the build for machineB though, the number of
packages rebuilt skyrockets (list attached).

For now, I'll make sure that DISTRO_FEATURES is not something that my builds
touch.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------000001020607010607020400
Content-Type: text/plain;
 name="pkgs"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="pkgs"

sstate-cache/sstate-acl-armv5te-amltd-linux-gnueabi-2.2.51-r1-armv5te-2-6b8cc98b10370be238413867a3f5522e_package.tgz
sstate-cache/sstate-attr-armv5te-amltd-linux-gnueabi-2.4.46-r1-armv5te-2-d0b5730e91b3ef9952c13ef9e075fd19_package.tgz
sstate-cache/sstate-base-passwd-armv5te-amltd-linux-gnueabi-3.5.22-r3-armv5te-2-84996e9837490d84a916f90e5c8f05e8_package.tgz
sstate-cache/sstate-bash-armv5te-amltd-linux-gnueabi-4.1-r2-armv5te-2-a02ca1ba1fc49785d57840fb885b7f93_package.tgz
sstate-cache/sstate-bison-armv5te-amltd-linux-gnueabi-2.5-r0-armv5te-2-7c62d5c1ef24ff60a3f9075686dea68b_package.tgz
sstate-cache/sstate-busybox-armv5te-amltd-linux-gnueabi-1.18.4-r7.1-armv5te-2-b795c99d6c5fa2a552b497e989fd4064_package.tgz
sstate-cache/sstate-bzip2-armv5te-amltd-linux-gnueabi-1.0.6-r3-armv5te-2-6698349244d671c825c132e7f7f8b4ef_package.tgz
sstate-cache/sstate-dbus-armv5te-amltd-linux-gnueabi-1.4.12-r0-armv5te-2-ed94dafaac16d14bdcbd32af8d718473_package.tgz
sstate-cache/sstate-dropbear-armv5te-amltd-linux-gnueabi-0.52-r2-armv5te-2-6f2d63ee1b120cc18b5c90771898e496_package.tgz
sstate-cache/sstate-e2fsprogs-armv5te-amltd-linux-gnueabi-1.41.14-r1-armv5te-2-07f2879846fa80fa7afdc4b102b58858_package.tgz
sstate-cache/sstate-eglibc-armv5te-amltd-linux-gnueabi-2.13-r8+svnr14157-armv5te-2-9537d4b964a485fb6daec8e3cb116220_package.tgz
sstate-cache/sstate-eglibc-initial-armv5te-amltd-linux-gnueabi-2.13-r8+svnr14157-armv5te-2-85ce5c36a4b5ac4d0b6db6d01d1b2604_package.tgz
sstate-cache/sstate-eglibc-locale-armv5te-amltd-linux-gnueabi-2.13-r16-armv5te-2-113b7e47e1e28245255bc7bb02b06faa_package.tgz
sstate-cache/sstate-ethtool-armv5te-amltd-linux-gnueabi-2.6.35-r1-armv5te-2-122d591dbce3f1c2d4ce311099deab1c_package.tgz
sstate-cache/sstate-expat-armv5te-amltd-linux-gnueabi-2.0.1-r0-armv5te-2-e26bcb5b64d18838897383894ee67cf2_package.tgz
sstate-cache/sstate-flex-armv5te-amltd-linux-gnueabi-2.5.35-r2-armv5te-2-894ae0ab9feaa448c0e11735f16b9bd2_package.tgz
sstate-cache/sstate-gcc-cross-armv5te-amltd-linux-gnueabi-4.6.1+svnr175454-r1-i686_armv5te-2-c7a45894d4780fa26351cbc0b16a857c_package.tgz
sstate-cache/sstate-gcc-cross-intermediate-armv5te-amltd-linux-gnueabi-4.6.1+svnr175454-r1-i686_armv5te-2-af7c2a4137edf7b0d3ec4a3121a755d1_package.tgz
sstate-cache/sstate-gcc-runtime-armv5te-amltd-linux-gnueabi-4.6.1+svnr175454-r1-armv5te-2-d187d2e10c5c607f57ad9381b57b28f0_package.tgz
sstate-cache/sstate-gettext-armv5te-amltd-linux-gnueabi-0.18.1.1-r2-armv5te-2-c94705f370d84e6fd497755653f30c67_package.tgz
sstate-cache/sstate-glib-2.0-armv5te-amltd-linux-gnueabi-2.28.8-r2-armv5te-2-ee4ad6647ab68ce844e89b7a2de134fb_package.tgz
sstate-cache/sstate-inputproto-armv5te-amltd-linux-gnueabi-2.0.2-r0-armv5te-2-d11ed15db20c445dbc5c6ed1f91afe5d_package.tgz
sstate-cache/sstate-kbproto-armv5te-amltd-linux-gnueabi-1.0.5-r0-armv5te-2-8b68646f11bb4af8ceb523b8029021dd_package.tgz
sstate-cache/sstate-libcap-armv5te-amltd-linux-gnueabi-2.20-r3-armv5te-2-f51307d6e6eae7808b8212b81cb92d7b_package.tgz
sstate-cache/sstate-libevent-armv5te-amltd-linux-gnueabi-1.4.14b-r0-armv5te-2-433179e837318c010fa0133ae4341ef9_package.tgz
sstate-cache/sstate-libgpg-error-armv5te-amltd-linux-gnueabi-1.10-r0-armv5te-2-ef59a332ee11b5e662357fa11f714ba4_package.tgz
sstate-cache/sstate-libice-armv5te-amltd-linux-gnueabi-1.0.7-r0-armv5te-2-9ad2f814ff73f65f31073557251ce8ea_package.tgz
sstate-cache/sstate-libnfsidmap-armv5te-amltd-linux-gnueabi-0.24-r0-armv5te-2-7db71655a5500f8f82259a3c2ffc6cd8_package.tgz
sstate-cache/sstate-libpam-armv5te-amltd-linux-gnueabi-1.1.3-r0-armv5te-2-18433f99864d400bb7306d208335ac1f_package.tgz
sstate-cache/sstate-libpthread-stubs-armv5te-amltd-linux-gnueabi-0.3-r0-armv5te-2-ddc7dce24da6cde2386b917e94e1138b_package.tgz
sstate-cache/sstate-libsm-armv5te-amltd-linux-gnueabi-1.2.0-r1-armv5te-2-61abea3a452378499a2d7abf01fe0ca2_package.tgz
sstate-cache/sstate-libtool-cross-armv5te-amltd-linux-gnueabi-2.4-r2-armv5te-2-e11b7507e703961b0012799fb27353dd_package.tgz
sstate-cache/sstate-libusb1-armv5te-amltd-linux-gnueabi-1.0.8-r0-armv5te-2-0b763f8ad3689c89f2fbe66338b12f78_package.tgz
sstate-cache/sstate-libusb-compat-armv5te-amltd-linux-gnueabi-0.1.3-r0-armv5te-2-50ed25918a3c9296abf200b090eb60ac_package.tgz
sstate-cache/sstate-libx11-trim-armv5te-amltd-linux-gnueabi-1.3.4-r1-armv5te-2-983a491b65df503370c6daf0f4276b76_package.tgz
sstate-cache/sstate-libxau-armv5te-amltd-linux-gnueabi-1.0.6-r0-armv5te-2-27e7b06b1f23e80ad1744d844f0448ae_package.tgz
sstate-cache/sstate-libxcb-armv5te-amltd-linux-gnueabi-1.7-r1-armv5te-2-f7320692199e04b6c2fd6c3e9c6978f5_package.tgz
sstate-cache/sstate-module-init-tools-armv5te-amltd-linux-gnueabi-3.16-r0-armv5te-2-2b7c6ee51928fd35d9ee16afb341393d_package.tgz
sstate-cache/sstate-modutils-initscripts-armv5te-amltd-linux-gnueabi-1.0-r6-armv5te-2-85058b32e45e048987f36d963de05511_package.tgz
sstate-cache/sstate-ncurses-armv5te-amltd-linux-gnueabi-5.9-r0.1-armv5te-2-fb82e5091caab17acd3176f9e66fd6c7_package.tgz
sstate-cache/sstate-nfs-utils-armv5te-amltd-linux-gnueabi-1.2.3-r2-armv5te-2-e3e3eca7d460603782f3ecf10dadab05_package.tgz
sstate-cache/sstate-opkg-armv5te-amltd-linux-gnueabi-0.1.8+svnr609-r2-armv5te-2-3b62dba9438005376e319c3cecbb0d0e_package.tgz
sstate-cache/sstate-opkg-collateral-armv5te-amltd-linux-gnueabi-1.0-r0-armv5te-2-a3e78e3fe420811a97a087038b5b7c49_package.tgz
sstate-cache/sstate-pciutils-armv5te-amltd-linux-gnueabi-3.1.7-r2-armv5te-2-576ca3586414addbfc0b7369c7f30b8e_package.tgz
sstate-cache/sstate-popt-armv5te-amltd-linux-gnueabi-1.16-r0-armv5te-2-85ef4a4fc2d013d57fbfec5aefb6f6bc_package.tgz
sstate-cache/sstate-portmap-armv5te-amltd-linux-gnueabi-6.0-r7-armv5te-2-cf35c3c2f85d4fb70e891b68c73c9431_package.tgz
sstate-cache/sstate-rsync-armv5te-amltd-linux-gnueabi-3.0.8-r0-armv5te-2-f25ccfe28d9936e5721c2fc2464e5f5e_package.tgz
sstate-cache/sstate-sysvinit-armv5te-amltd-linux-gnueabi-2.88dsf-r4-armv5te-2-c2614336339933f47e36c0c7615d1d32_package.tgz
sstate-cache/sstate-tar-armv5te-amltd-linux-gnueabi-1.26-r0-armv5te-2-7c83ae476c41bec083c778f55e90e86e_package.tgz
sstate-cache/sstate-tcp-wrappers-armv5te-amltd-linux-gnueabi-7.6-r0-armv5te-2-3ab1b6b6f461c21dce51d533bc707f69_package.tgz
sstate-cache/sstate-tinylogin-armv5te-amltd-linux-gnueabi-1.4-r7-armv5te-2-ca5c2ca9c48eff98758efc65a5fa0b71_package.tgz
sstate-cache/sstate-udev-armv5te-amltd-linux-gnueabi-164-r3-armv5te-2-fe68f4b0303a4a45ddc198dca81fa508_package.tgz
sstate-cache/sstate-udev-extraconf-armv5te-amltd-linux-gnueabi-0.0-r1-armv5te-2-80657f0c66b0fd456e7c4f24c927de98_package.tgz
sstate-cache/sstate-usbutils-armv5te-amltd-linux-gnueabi-0.91-r2-armv5te-2-61756c1a7102865bf845a1598c61dac9_package.tgz
sstate-cache/sstate-util-linux-armv5te-amltd-linux-gnueabi-2.19.1-r2-armv5te-2-82e2a8b0fc9ca23ff7decca343b23e38_package.tgz
sstate-cache/sstate-util-macros-armv5te-amltd-linux-gnueabi-1.14.0-r0-armv5te-2-f6097b8acc1859cc4e74cf48d56af10a_package.tgz
sstate-cache/sstate-xcb-proto-armv5te-amltd-linux-gnueabi-1.6-r2-armv5te-2-e1b7560bc6b717139220abf6d7da8ff2_package.tgz
sstate-cache/sstate-xextproto-armv5te-amltd-linux-gnueabi-7.2.0-r0-armv5te-2-87cd263d21f2d92b5afae77775469245_package.tgz
sstate-cache/sstate-xf86bigfontproto-armv5te-amltd-linux-gnueabi-1.2.0-r1-armv5te-2-263bf0f1ea07edd4a639e2e945c18c46_package.tgz
sstate-cache/sstate-xproto-armv5te-amltd-linux-gnueabi-7.0.21-r0-armv5te-2-4bf627f003f48fb0880e6024e6d85dac_package.tgz
sstate-cache/sstate-xtrans-armv5te-amltd-linux-gnueabi-1.2.6-r0-armv5te-2-5fc0adb0f22bd97abb65499bd5afc3dd_package.tgz
sstate-cache/sstate-zip-armv5te-amltd-linux-gnueabi-3.0-r0-armv5te-2-822141be972f639e95c3de90bc5bf364_package.tgz
sstate-cache/sstate-zlib-armv5te-amltd-linux-gnueabi-1.2.5-r0-armv5te-2-050355f9bed87cf915cc36ed6ab41f17_package.tgz

--------------000001020607010607020400--
