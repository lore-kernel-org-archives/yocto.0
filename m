Return-Path: <evadeflow@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9783FE011AF
	for <yocto@yoctoproject.org>; Fri,  7 Sep 2012 06:50:05 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so4672217pbb.35
	for <yocto@yoctoproject.org>; Fri, 07 Sep 2012 06:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Eug8KkjT9Mt5gKsXfmo9hiMF2uexM4apP2Amk10Hrl8=;
	b=TcuYQNuQtX5FYEh0K7lMqrwUjshBnv0zIhsDLXH+U6ix4IgNGbBIJxY/VZAL6L1c3b
	ELNWnYi8UpJrntEkJK5HS9y0HFpQGpZCJiBvv26YlZV2U9b7nJOQISCrvSM8HrZOxwRY
	zyGoTqadVIx9YXHgFzkdbpOmvhJaaegLwYyO5A68++1xcq5wW3ZkNSyt69o2Tpgp86nH
	vKyJB+GkRh+66O75XDuTK9MzfDtYXMr7wiMzcndVTt4Xckdgpxtu6S9a4Cl0ag8YWOq6
	xEePbPRA/fv/ZYk/F79tcMQQWEW0lYg31x5NHENT9nqp8ZwkCnsXo4CYpZIcJbdehnc7
	V6nQ==
MIME-Version: 1.0
Received: by 10.68.134.97 with SMTP id pj1mr10059095pbb.55.1347025805196; Fri,
	07 Sep 2012 06:50:05 -0700 (PDT)
Received: by 10.66.90.42 with HTTP; Fri, 7 Sep 2012 06:50:05 -0700 (PDT)
In-Reply-To: <5049813A.2000904@windriver.com>
References: <CAMAb8ZNh8zUQnPuhMK8fkPT5QZuBdypDVYb8BudqT9Dc2TbT3g@mail.gmail.com>
	<5048FA0F.50309@windriver.com>
	<CAMAb8ZMhVPceKMAdoR-iTr9Rrd8UQT2CnfPm6kEjKo7b7Th14A@mail.gmail.com>
	<5049813A.2000904@windriver.com>
Date: Fri, 7 Sep 2012 09:50:05 -0400
Message-ID: <CAMAb8ZNC5zT_B66VUF8zc4QXZSoiXpEo1ERQwDh6N12DXh7Uaw@mail.gmail.com>
From: Evade Flow <evadeflow@gmail.com>
To: yocto@yoctoproject.org
Cc: Florin Sarbu <florin.sarbu@windriver.com>
Subject: Re: ERROR: Nothing RPROVIDES 'libsegfault'
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
X-List-Received-Date: Fri, 07 Sep 2012 13:50:05 -0000
Content-Type: text/plain; charset=ISO-8859-1

Ah, right--sorry, you did say the denzil *branch*. It seems to be
building fine now, thanks. So far, it's gotten through the first 150
tasks, which is a lot further than before. I'll follow up if I
encounter any other problems...

On Fri, Sep 7, 2012 at 1:08 AM, Florin Sarbu <florin.sarbu@windriver.com> wrote:
> Please use the denzil branch for poky, not a denzil tag.
>
> Thanks,
> Florin
>
>
> On 09/06/2012 11:02 PM, Evade Flow wrote:
>>
>> Thanks for confirming that the target for meta-ivi is denzil. After
>> re-targetting to branch denzil-7.0.1, I got the following error:
>>
>> ----------
>> Pseudo is not present but is required, building this first before the main
>> build
>> Parsing recipes...NOTE: Error expanding variable populate_packages
>> NOTE: Error during finalise of
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-graphics/mesa/mesa-dri_8.0.1.bb
>> ERROR: Unable to parse
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-graphics/mesa/mesa-dri_8.0.1.bb
>> NOTE: Error expanding variable populate_packages
>> NOTE: Error during finalise of
>> /media/acme/remus/poky-git/meta-ivi/recipes-graphics/pango/pango_1.28.4.bb
>> ERROR: Command execution failed: Traceback (most recent call last):
>>    File "/media/acme/remus/poky-git/bitbake/lib/bb/command.py", line
>> 84, in runAsyncCommand
>>      self.cooker.updateCache()
>>    File "/media/acme/remus/poky-git/bitbake/lib/bb/cooker.py", line
>> 1202, in updateCache
>>      if not self.parser.parse_next():
>>    File "/media/acme/remus/poky-git/bitbake/lib/bb/cooker.py", line
>> 1669, in parse_next
>>      self.virtuals += len(result)
>> UnboundLocalError: local variable 'result' referenced before assignment
>>
>>
>> Summary: There were 2 ERROR messages shown, returning a non-zero exit
>> code.
>> ----------
>>
>> I attempted a trivial fix for this (see below), and then got:
>>
>> ----------
>> Pseudo is not present but is required, building this first before the main
>> build
>> Loading cache...done.
>> Loaded 3 entries from dependency cache.
>> Parsing recipes...NOTE: Error expanding variable populate_packages
>> NOTE: Error during finalise of
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-graphics/mesa/mesa-dri_8.0.1.bb
>> ERROR: Unable to parse
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-graphics/mesa/mesa-dri_8.0.1.bb
>> NOTE: Error expanding variable populate_packages
>> NOTE: Error during finalise of
>> /media/acme/remus/poky-git/meta-ivi/recipes-graphics/pango/pango_1.28.4.bb
>> ERROR: Command execution failed: Traceback (most recent call last):
>>    File "/media/acme/remus/poky-git/bitbake/lib/bb/command.py", line
>> 84, in runAsyncCommand
>>      self.cooker.updateCache()
>>    File "/media/acme/remus/poky-git/bitbake/lib/bb/cooker.py", line
>> 1202, in updateCache
>>      if not self.parser.parse_next():
>>    File "/media/acme/remus/poky-git/bitbake/lib/bb/cooker.py", line
>> 1671, in parse_next
>>      if parsed:
>> UnboundLocalError: local variable 'parsed' referenced before assignment
>>
>>
>> Summary: There were 2 ERROR messages shown, returning a non-zero exit
>> code.
>> ----------
>>
>> The patch I tried was:
>>
>> diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
>> index 4a4dc38..a2cac9a 100644
>> --- a/bitbake/lib/bb/cooker.py
>> +++ b/bitbake/lib/bb/cooker.py
>> @@ -1644,6 +1644,8 @@ class CookerParser(object):
>>                       yield result
>>
>>       def parse_next(self):
>> +        result = []
>> +        parsed = 0
>>           try:
>>               parsed, result = self.results.next()
>>           except StopIteration:
>>
>>
>> After this attempted fix, I got the following errors:
>>
>> ----------
>> Pseudo is not present but is required, building this first before the main
>> build
>> Loading cache...done.
>> Loaded 3 entries from dependency cache.
>> Parsing recipes...NOTE: Error expanding variable populate_packages
>> NOTE: Error during finalise of
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-graphics/mesa/mesa-dri_8.0.1.bb
>> ERROR: Unable to parse
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-graphics/mesa/mesa-dri_8.0.1.bb
>> NOTE: Error expanding variable populate_packages
>> NOTE: Error during finalise of
>> /media/acme/remus/poky-git/meta-ivi/recipes-graphics/pango/pango_1.28.4.bb
>> ERROR: No recipes available for:
>>
>> /media/acme/remus/poky-git/meta-yocto/recipes-core/uclibc/uclibc_git.bbappend
>>
>> /media/acme/remus/poky-git/meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappend
>>
>> /media/acme/remus/poky-git/meta-yocto/recipes-bsp/formfactor/formfactor_0.0.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-connectivity/openssl/openssl_1.0.0j.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-kernel/kmod/kmod_git.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-core-ivi/eglibc/eglibc-locale_2.16.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-core-ivi/tinylogin/tinylogin_1.4.bbappend
>>
>> /media/acme/remus/poky-git/meta-yocto/recipes-graphics/mesa/mesa-dri_7.11.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-core-ivi/eglibc/eglibc_2.16.bbappend
>>
>> /media/acme/remus/poky-git/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-extended/tcp-wrappers/tcp-wrappers_7.6.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-support-ivi/attr/attr_2.4.46.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-graphics/xorg-xserver/xserver-xorg_1.11.2.bbappend
>>
>> /media/acme/remus/poky-git/meta-yocto/recipes-bsp/alsa-state/alsa-state.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-qt/qt4/qt4-embedded_4.8.1.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-multimedia/libtiff/tiff_4.0.2.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-core-ivi/coreutils/coreutils_6.9.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-connectivity/ofono/ofono_1.10.bbappend
>>
>> /media/acme/remus/poky-git/meta-yocto/recipes-core/psplash/psplash_git.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-multimedia/gstreamer/gst-plugins-good_0.10.31.bbappend
>>
>> /media/acme/remus/poky-git/meta-yocto/recipes-gnome/tasks/task-core-sdk-gmae.bbappend
>>
>> /media/acme/remus/poky-git/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-kernel/linux/linux-yocto_3.0.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-multimedia/alsa/alsa-utils_1.0.25.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-connectivity/bluez/bluez4_4.101.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-bsp/usbutils/usbutils_006.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-core-ivi/base-files/base-files_3.0.14.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-support-ivi/attr/acl_2.2.51.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-support-ivi/libcap/libcap_2.22.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-extended/shadow/shadow_4.1.4.3.bbappend
>>
>> /media/acme/remus/poky-git/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-devtools/gcc/libgcc_4.7.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-bsp/u-boot/u-boot_2011.06.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-extended/shadow-securetty/shadow-securetty_4.1.4.3.bbappend
>>
>> /media/acme/remus/poky-git/meta-yocto/recipes-core/tasks/task-core-tools-profile.bbappend
>>
>> /media/acme/remus/poky-git/meta-yocto/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-devtools/e2fsprogs/e2fsprogs_1.42.1.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-core-ivi/ncurses/ncurses_5.9.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-multimedia/pulseaudio/pulseaudio_2.1.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-connectivity/connman/connman_1.4.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-core-ivi/busybox/busybox_1.20.2.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-kernel/linux/linux-yocto_3.4.bbappend
>>
>> /media/acme/remus/poky-git/meta-yocto/recipes-qt/qt4/qt4-x11-free_4.7.4.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-connectivity/portmap/portmap_6.0.bbappend
>>
>> /media/acme/remus/poky-git/meta-yocto/recipes-gnome/tasks/task-core-standalone-gmae-sdk-target.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-qt/qt4/qt4-native_4.8.1.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-extended/bash/bash_3.2.48.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-support-ivi/libusb/libusb1_1.0.8.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-core-ivi/util-linux/util-linux_2.21.2.bbappend
>>
>> /media/acme/remus/poky-git/meta-yocto/recipes-graphics/mesa/mesa-dri_git.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-support-ivi/libusb/libusb-compat_0.1.3.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-connectivity/wpa-supplicant/wpa-supplicant_1.0.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-connectivity/openssh/openssh_6.0p1.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-core-ivi/base-passwd/base-passwd_3.5.24.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-core-ivi/dbus/dbus_1.6.4.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-multimedia/gstreamer/gst-plugins-base_0.10.36.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bbappend
>>
>> /media/acme/remus/poky-git/meta-ivi/recipes-extended/pam/libpam_1.1.6.bbappend
>> ERROR: Command execution failed: Exited with 1
>>
>> Summary: There were 3 ERROR messages shown, returning a non-zero exit
>> code.
>> ----------
>>
>>
>> I'm out of ideas now. `:-} (Actually, I remember now that it was these
>> errors that made me decide to try poky master instead of denzil in the
>> first place.)
>>
>> Any idea what might be wrong?
>>
>>
>> On Thu, Sep 6, 2012 at 3:31 PM, Florin Sarbu <florin.sarbu@windriver.com>
>> wrote:
>>>
>>> Hi,
>>> discovery-image is supposed to work with the denzil branch of poky.
>>> Please
>>> checkout that branch and let us know if you encounter any other issues.
>>>
>>> Thanks,
>>> Florin
>>>
>>>
>>> On 09/06/2012 10:22 PM, Evade Flow wrote:
>>>>
>>>> I'm seeing this error while trying to 'bitbake discovery-image' from the
>>>> meta-ivi layer, according to the instructions here:
>>>>
>>>>     - http://git.yoctoproject.org/cgit/cgit.cgi/meta-ivi/tree/README.md
>>>>
>>>> The complete output looks like this:
>>>>
>>>> Loading cache...done.
>>>> Loaded 1162 entries from dependency cache.
>>>> Parsing recipes...done.
>>>> Parsing of 858 .bb files complete (857 cached, 1 parsed). 1159
>>>> targets, 39 skipped, 0 masked, 0 errors.
>>>>
>>>> Build Configuration:
>>>> BB_VERSION        = "1.15.3"
>>>> TARGET_ARCH       = "arm"
>>>> TARGET_OS         = "linux-gnueabi"
>>>> MACHINE           = "vexpressa9"
>>>> DISTRO            = "poky-ivi-systemd"
>>>> DISTRO_VERSION    = "E-0.2+snapshot-20120906"
>>>> TUNE_FEATURES     = "armv7a vfp neon cortexa9"
>>>> TARGET_FPU        = "vfp-neon"
>>>> meta
>>>> meta-yocto        = "master:0f55a5868457300a3defc7fa7451ef191d19e018"
>>>> meta-ivi          = "master:d2be84764e15003603f08e950308dae7d0ffa9a2"
>>>> meta-systemd      = "master:ff33e6271934c747396c307e51dc3e5a5a1f75b8"
>>>>
>>>> NOTE: Resolving any missing task queue dependencies
>>>> ERROR: Nothing RPROVIDES 'libsegfault' (but
>>>>
>>>>
>>>> /media/acme/remus/poky-git/meta/recipes-core/packagegroups/packagegroup-core-standalone-sdk-target.bb
>>>> RDEPENDS on or otherwise requires it)
>>>> NOTE: Runtime target 'libsegfault' is unbuildable, removing...
>>>> Missing or unbuildable dependency chain was: ['libsegfault']
>>>> NOTE: Runtime target 'packagegroup-core-standalone-sdk-target' is
>>>> unbuildable, removing...
>>>> Missing or unbuildable dependency chain was:
>>>> ['packagegroup-core-standalone-sdk-target', 'libsegfault']
>>>> ERROR: Required build target 'discovery-image' has no buildable
>>>> providers.
>>>> Missing or unbuildable dependency chain was: ['discovery-image',
>>>> 'packagegroup-core-standalone-sdk-target', 'libsegfault']
>>>>
>>>> Summary: There were 2 ERROR messages shown, returning a non-zero exit
>>>> code.
>>>>
>>>>
>>>> Being fairly new to Yocto/bitbake, I'm not sure how to begin
>>>> troubleshooting this. Any suggestions?  (Note: this is from poky master
>>>> as of this morning. It may be that meta-ivi doesn't--and isn't intended
>>>> to--work with the bleeding edge poky sources. I'm just trying to get my
>>>> head around how to sort out conflicts like this...)
>>>
>>>
>

