Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0AD5E00D4D; Fri, 15 Jul 2016 17:02:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f177.google.com (mail-qt0-f177.google.com
	[209.85.216.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C1E3E00D13
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 17:02:43 -0700 (PDT)
Received: by mail-qt0-f177.google.com with SMTP id j35so67580848qtj.2
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 17:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=2V4PykPqLqEq2xVOVLfLW3qT87Nq/4wvfZYOCrntlMY=;
	b=rOwqTVXtx0oBYRKjDdMY/01dj9raLDU41Tk9Mkyw5Sa5IJh+VHcWqojc+mQu5KeL1j
	AbACdDj458ROde5jw1SMVzJl23Em+G7mB+6Ew41S2/zliaMOjJOTA8/6JhQrGZlDyb7D
	IuId+8vOgHs9Ae3wZkpI1N76iCiz+w0nvQQ8fscJREp4Gy73ORuMzM+TyPBARXirgL4L
	0nJvlN5+0duMb6Rxzx7vN/B4bsuyrFKJ8rB94fF+Wsxb/RgB1h2fmRV8K/oW0hZMkMtF
	HR9HZ26ydSW7EpcfOfrvHfXHWRPqL1DAGNiehYaQdLuZ09Z896T5XdButRtcc+3oUnaW
	yT2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=2V4PykPqLqEq2xVOVLfLW3qT87Nq/4wvfZYOCrntlMY=;
	b=MU5KN4jLAqIDDF/k2s2bd5RciHtgAvcl5Eo2QhDv+J/pdpPH+jM9VIzcLMszvjiwzF
	0AT76Cm+y3tcDBVGV0J11CGxRQTWc216db/iT4yFXwGF6lQnEC47T9d/QHTsbJ0AxPb3
	hJx0SsjWSZj9hpGA9yVk12fwSmhiCsRUoYukmzt7KuTk4Ka64Aidw3k0vHraI9ka5s1Y
	oW9w4Nzjf6gCLl7hYSn5taVQua5kNI6AtSqAOZgyhr9hPnKTyfQK4roZ0UFWuxBmZR/P
	MXN1mpz8rkZZ+wqMGFAORdthSF5Inm3tE5NSHUCU1bVz3qANGY8VPm6JXrN+i1aG9cn8
	5nQQ==
X-Gm-Message-State: ALyK8tI1MB0Tk9Jo7r7vm7eLxJ5L/kO6i76olxDS0IYdxjp7laruopfEX4Z5GUBBf61Zw8lOTsYPOwgM63A7Rw==
X-Received: by 10.200.48.141 with SMTP id v13mr33800428qta.76.1468627362176;
	Fri, 15 Jul 2016 17:02:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Fri, 15 Jul 2016 17:02:12 -0700 (PDT)
In-Reply-To: <CAEfap_C-JBVEo9jmPf02E+tK2uzO00gCjRPzA3JNkij0J6MdmQ@mail.gmail.com>
References: <CAEfap_CAJpEnc6xWUbcYUkMx2CRa2HVT+FOBXy+rYb67jv16gw@mail.gmail.com>
	<CAMKF1soyZBMzFUo0FLgk3Hb69PfMGiyQ7TNqsDBdVdHz7UNX8w@mail.gmail.com>
	<CAEfap_BV6LRYUyG3u9oLDvXrpy9ztgVM-UaPNSHo9i1xbNj24w@mail.gmail.com>
	<CAMKF1sqGSWkd-aTcY3fNk=88iL8BW5ihGnvSy14bCiSfeVUvzw@mail.gmail.com>
	<CAEfap_BpFoi66j9PJO=PiZURULiivtR0Z6yCSedebLgTvzcY0g@mail.gmail.com>
	<CAEfap_DQrSiDkDrBH7T7Ecez5R2D-KM_V+Lnm2nombozFBKF4w@mail.gmail.com>
	<CAMKF1srjRAkFueO5A-dXy-E+n4PjpcZM57xF=BbU7P7NJH4csg@mail.gmail.com>
	<CAEfap_ATPbqdD9H6gYikvs+Afa6XhxvbC-DU9-v-sUzhCANE9Q@mail.gmail.com>
	<CAEfap_BDcUGfDEViXOQ6TiT16bcsxOjUBCsd5xaKEOpr_+EJPQ@mail.gmail.com>
	<CAMKF1so2w-6-vvtvubJcGw-HF0As2WaymTweoOnJX1_LCYpv0w@mail.gmail.com>
	<CAEfap_C=OON++bN=VWhF8-WC=Kpt-esTEMzNjUSfCxytiYS+yQ@mail.gmail.com>
	<CAEfap_C-JBVEo9jmPf02E+tK2uzO00gCjRPzA3JNkij0J6MdmQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 15 Jul 2016 17:02:12 -0700
Message-ID: <CAMKF1soBbUcqK9y1Dx8dnXiy6v92ZhtQS_Ghu46nQphj1V3CkA@mail.gmail.com>
To: Simon Bolek <simon.bolek@googlemail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [genericx86-jethro] core-image-sato HDDIMG 'install' - no hard drive selected - /etc/fstab no such file or directory
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
X-List-Received-Date: Sat, 16 Jul 2016 00:02:47 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 15, 2016 at 3:17 PM, Simon Bolek <simon.bolek@googlemail.com> w=
rote:
> Hi Raj,
>
> Maybe you could help me with this.
> I found out that during rootfs (meta/lib/oe/rootfs.py), depmodwrapper scr=
ipt
> is beeing called.
> I noticed, that it does generate /lib/modules/<kernel>.. directory struct=
ure
> under:
> poky/build/tmp/work/genericx86-poky-linux/core-image-sato
> However, at the end of the bitbake process, there is no /lib/modules
> direcotry in
> core-image-minimal-initramfs-genericx86-20160715210400.rootfs.cpio.gz
>
> Where are the steps, where this .cpio.gz file is beeing generated. There
> must be a place where all the files, that are inside, are beeing put
> together.

initramfs image is a separate image. What you are seeing is the final image=
.
you might have to add the kernel module to you machine conf

MACHINE_EXTRA_RRECOMMENDS =3D " kernel-modules"

>
> HELP!
> kind regards
> Simon :-)
>
>
>
> On Fri, Jul 15, 2016 at 10:59 AM, Simon Bolek <simon.bolek@googlemail.com=
>
> wrote:
>>
>> Thanks, but neither:
>> pkg_postinst_kernel-base ()
>> nor:
>> pkg_postinst_kernel-image ()
>> from /meta/classes/kernel.bbclass gets called when running:
>> - bitbake core-image-sato or
>> - bitbake linux-yocto
>>
>> I put some commands in there, which are definitely wrong (like foobar) a=
nd
>> bitbake run successfully.
>> Whereas, in other funtions it caused problems.
>> Any ideas how can fix this?
>>
>> thanks and best regards
>> Simon :-)
>>
>>
>> On Fri, Jul 15, 2016 at 1:30 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>>
>>> On Thu, Jul 14, 2016 at 4:16 PM, Simon Bolek <simon.bolek@googlemail.co=
m>
>>> wrote:
>>> > Hi Raj,
>>> >
>>> > About depmod again.
>>> > Should it be run from meta/classes/kernel.bbclass  ?
>>> > ...
>>> > pkg_postinst_kernel-base () {
>>> >     if [ ! -e "$D/lib/modules/${KERNEL_VERSION}" ]; then
>>> >         mkdir -p $D/lib/modules/${KERNEL_VERSION}
>>> >     fi
>>> >     if [ -n "$D" ]; then
>>> >         depmodwrapper -a -b $D ${KERNEL_VERSION}
>>> >     else
>>> >         depmod -a ${KERNEL_VERSION}
>>> >     fi
>>> > }
>>> > ...
>>> >
>>> > Where is this function beeing called?
>>>
>>> It should be called during rootfs and image creation time. as well as
>>> when you update the package using online package manager.
>>>
>>> > I did not find it anywhere.
>>> > thanks and kind regards
>>> > Simon :-)
>>> >
>>> > On Thu, Jul 14, 2016 at 8:32 AM, Simon Bolek
>>> > <simon.bolek@googlemail.com>
>>> > wrote:
>>> >>
>>> >>
>>> >> On Wed, Jul 13, 2016 at 4:56 PM, Khem Raj <raj.khem@gmail.com> wrote=
:
>>> >>>
>>> >>> On Wed, Jul 13, 2016 at 4:57 AM, Simon Bolek
>>> >>> <simon.bolek@googlemail.com>
>>> >>> wrote:
>>> >>> > Hi Raj,
>>> >>> >
>>> >>> > So i tried to do manually, what init script does and udev
>>> >>> > definitely
>>> >>> > does
>>> >>> > not recognize the SSD drive.
>>> >>> > I ran
>>> >>> >  /lib/udev/udevd --daemon --debug > udev.debug 2>&1 &
>>> >>> > from the cli and there is no trace of recognizing the SSD. Only t=
he
>>> >>> > /dev/sda, which is the USB stick I am running the installation
>>> >>> > from.
>>> >>> >
>>> >>> > I used 'meld' to compare the /initrd from current jethro image an=
d
>>> >>> > previous
>>> >>> > working fido image.
>>> >>> > They are almost the same:
>>> >>> > - in jethro /lib/modules... file structure is missing with:
>>> >>> > modules.alias
>>> >>> > modules.alias.bin
>>> >>> > modules.builtin.bin
>>> >>> > modules.dep
>>> >>> > modules.dep.bin
>>> >>> > modules.devname
>>> >>> > modules.softdep
>>> >>> > modules.symbols
>>> >>> > modules.symbols.bin
>>> >>>
>>> >>> this means depmod did not run during initramfs image creation
>>> >>
>>> >> How can I make this happen during bitbake, so i have those files in
>>> >> the
>>> >> HDDIMG?
>>> >>
>>> >>>
>>> >>> >
>>> >>> > - there are slight differences between
>>> >>> > /etc/init.d/udev
>>> >>> > /etc/udev/scripts/mount.sh
>>> >>> > , but I cannot tell, if this is the reason.
>>> >>>
>>> >>> what are the differences ?
>>> >>
>>> >>
>>> >> Sorry for this patch-like copy/paste, but this was the simplest way =
of
>>> >> presenting the changes.
>>> >> Do you see something important here, that might cause the SDD not
>>> >> beeing
>>> >> recognized?
>>> >>
>>> >> --- /home/simon/Development/Yocto-Project/initrd-ok/etc/init.d/udev
>>> >> +++
>>> >> /home/simon/Development/Yocto-Project/initrd-jethro/etc/init.d/udev
>>> >> @@ -14,20 +14,27 @@
>>> >>  [ -d /sys/class ] || exit 1
>>> >>  [ -r /proc/mounts ] || exit 1
>>> >>  [ -x /lib/udev/udevd ] || exit 1
>>> >> +SYSCONF_CACHED=3D"/etc/udev/cache.data"
>>> >> +SYSCONF_TMP=3D"/dev/shm/udev.cache"
>>> >> +DEVCACHE_REGEN=3D"/dev/shm/udev-regen" # create to request cache re=
gen
>>> >> +
>>> >> +# A list of files which are used as a criteria to judge whether the
>>> >> udev
>>> >> cache could be reused.
>>> >> +CMP_FILE_LIST=3D"/proc/version /proc/cmdline /proc/devices"
>>> >> +[ -f /proc/atags ] && CMP_FILE_LIST=3D"$CMP_FILE_LIST /proc/atags"
>>> >> +
>>> >> +# List of files whose metadata (size/mtime/name) will be included i=
n
>>> >> cached
>>> >> +# system state.
>>> >> +META_FILE_LIST=3D"lib/udev/rules.d/* etc/udev/rules.d/*"
>>> >> +
>>> >> +# Command to compute system configuration.
>>> >> +sysconf_cmd () {
>>> >> +    cat -- $CMP_FILE_LIST
>>> >> +    stat -c '%s %Y %n' -- $META_FILE_LIST | awk -F/ '{print $1 " "
>>> >> $NF;}'
>>> >> +}
>>> >> +
>>> >>  [ -f /etc/default/udev-cache ] && . /etc/default/udev-cache
>>> >>  [ -f /etc/udev/udev.conf ] && . /etc/udev/udev.conf
>>> >>  [ -f /etc/default/rcS ] && . /etc/default/rcS
>>> >> -
>>> >> -readfiles () {
>>> >> -   READDATA=3D""
>>> >> -   for filename in $@; do
>>> >> -       if [ -r $filename ]; then
>>> >> -           while read line; do
>>> >> -               READDATA=3D"$READDATA$line"
>>> >> -           done < $filename
>>> >> -       fi
>>> >> -   done
>>> >> -}
>>> >>
>>> >>  kill_udevd () {
>>> >>      pid=3D`pidof -x udevd`
>>> >> @@ -57,38 +64,35 @@
>>> >>      # the automount rule for udev needs /tmp directory available, a=
s
>>> >> /tmp
>>> >> is a symlink
>>> >>      # to /var/tmp which in turn is a symlink to /var/volatile/tmp, =
we
>>> >> need to make sure
>>> >>      # /var/volatile/tmp directory to be available.
>>> >> -    mkdir -p /var/volatile/tmp
>>> >> +    mkdir -m 1777 -p /var/volatile/tmp
>>> >>
>>> >>      # Cache handling.
>>> >> -    # A list of files which are used as a criteria to judge whether
>>> >> the
>>> >> udev cache could be reused.
>>> >> -    CMP_FILE_LIST=3D"/proc/version /proc/cmdline /proc/devices
>>> >> /proc/atags"
>>> >>      if [ "$DEVCACHE" !=3D "" ]; then
>>> >>              if [ -e $DEVCACHE ]; then
>>> >> -            readfiles $CMP_FILE_LIST
>>> >> -            NEWDATA=3D"$READDATA"
>>> >> -            readfiles /etc/udev/cache.data
>>> >> -            OLDDATA=3D"$READDATA"
>>> >> -            if [ "$OLDDATA" =3D "$NEWDATA" ]; then
>>> >> -                            (cd /; tar xf $DEVCACHE > /dev/null 2>&=
1)
>>> >> +            sysconf_cmd > "$SYSCONF_TMP"
>>> >> +            if cmp $SYSCONF_CACHED $SYSCONF_TMP >/dev/null; then
>>> >> +                            tar xmf $DEVCACHE -C / -m
>>> >>                              not_first_boot=3D1
>>> >>                              [ "$VERBOSE" !=3D "no" ] && echo "udev:
>>> >> using
>>> >> cache file $DEVCACHE"
>>> >> -                            [ -e /dev/shm/udev.cache ] && rm -f
>>> >> /dev/shm/udev.cache
>>> >> +                            [ -e $SYSCONF_TMP ] && rm -f
>>> >> "$SYSCONF_TMP"
>>> >> +                            [ -e "$DEVCACHE_REGEN" ] && rm -f
>>> >> "$DEVCACHE_REGEN"
>>> >>                      else
>>> >>                  # Output detailed reason why the cached /dev is not
>>> >> used
>>> >> -                if [ "$VERBOSE" !=3D "no" ]; then
>>> >> -                    echo "udev: udev cache not used"
>>> >> -                    echo "udev: we use $CMP_FILE_LIST as criteria t=
o
>>> >> judge whether the cache /dev could be resued"
>>> >> -                    echo "udev: olddata: $OLDDATA"
>>> >> -                    echo "udev: newdata: $NEWDATA"
>>> >> -                fi
>>> >> -                echo "$NEWDATA" > /dev/shm/udev.cache
>>> >> +                cat <<EOF
>>> >> +udev: Not using udev cache because of changes detected in the
>>> >> following
>>> >> files:
>>> >> +udev:     $CMP_FILE_LIST
>>> >> +udev:     $META_FILE_LIST
>>> >> +udev: The udev cache will be regenerated. To identify the detected
>>> >> changes,
>>> >> +udev: compare the cached sysconf at   $SYSCONF_CACHED
>>> >> +udev: against the current sysconf at  $SYSCONF_TMP
>>> >> +EOF
>>> >> +                touch "$DEVCACHE_REGEN"
>>> >>                      fi
>>> >>          else
>>> >>              if [ "$ROOTFS_READ_ONLY" !=3D "yes" ]; then
>>> >>                  # If rootfs is not read-only, it's possible that a
>>> >> new
>>> >> udev cache would be generated;
>>> >>                  # otherwise, we do not bother to read files.
>>> >> -                readfiles $CMP_FILE_LIST
>>> >> -                echo "$READDATA" > /dev/shm/udev.cache
>>> >> +                touch "$DEVCACHE_REGEN"
>>> >>              fi
>>> >>              fi
>>> >>      fi
>>> >> @@ -97,7 +101,7 @@
>>> >>      kill_udevd > "/dev/null" 2>&1
>>> >>
>>> >>      # trigger the sorted events
>>> >> -    echo -e '\000\000\000\000' > /proc/sys/kernel/hotplug
>>> >> +    [ -e /proc/sys/kernel/hotplug ] && echo -e '\000'
>>> >> >/proc/sys/kernel/hotplug
>>> >>      /lib/udev/udevd -d
>>> >>
>>> >>      udevadm control --env=3DSTARTUP=3D1
>>> >>
>>> >>
>>> >>>
>>> >>> >
>>> >>> > Unfortunately I did not dig inside binary /lib/udev/udevd.
>>> >>> >
>>> >>> > So do you have any other ideas, what might be the reason for not
>>> >>> > recognizing
>>> >>> > the SSD? Maybe there are some additional recipes needed from jeth=
ro
>>> >>> > on?
>>> >>> >
>>> >>> >
>>> >>> > thanks & kind regards
>>> >>> > Simon :-)
>>> >>> >
>>> >>> > mit freundlichem Gruss / kind regards / pozdrawiam
>>> >>> > Simon P. Bolek
>>> >>> > ------------------------------------------------------
>>> >>> > Dipl. Inf. Simon P. Bolek
>>> >>> > SAP Integration Architect
>>> >>> > Business Mobile and IVI Solutions
>>> >>> > mailto: simon.bolek@arcom-ivi.de
>>> >>> > http://www.arcom-ivi.de/
>>> >>> > XING: https://www.xing.com/profile/SimonP_Bolek
>>> >>> >
>>> >>> > On Wed, Jul 13, 2016 at 9:03 AM, Simon Bolek
>>> >>> > <simon.bolek@googlemail.com>
>>> >>> > wrote:
>>> >>> >>
>>> >>> >> Thank you,
>>> >>> >>
>>> >>> >> I just guess, that it is the following function in init script t=
o
>>> >>> >> put
>>> >>> >> the
>>> >>> >> echos to? Is it?
>>> >>> >>
>>> >>> >> udev_daemon() {
>>> >>> >>     OPTIONS=3D"/sbin/udev/udevd /sbin/udevd /lib/udev/udevd
>>> >>> >> /lib/systemd/systemd-udevd"
>>> >>> >>
>>> >>> >>     for o in $OPTIONS; do
>>> >>> >>         if [ -x "$o" ]; then
>>> >>> >>             echo $o
>>> >>> >>             return 0
>>> >>> >>         fi
>>> >>> >>     done
>>> >>> >>
>>> >>> >>     return 1
>>> >>> >> }
>>> >>> >>
>>> >>> >>
>>> >>> >> cheers
>>> >>> >> Simon:-)
>>> >>> >>
>>> >>> >> Viele Gr=C3=BCsse
>>> >>> >> Simon Bolek :-)
>>> >>> >>
>>> >>> >> mit freundlichem Gruss / kind regards / pozdrawiam
>>> >>> >> Simon P. Bolek
>>> >>> >> ------------------------------------------------------
>>> >>> >> Dipl. Inf. Simon P. Bolek
>>> >>> >> SAP Integration Architect
>>> >>> >> Business Mobile and IVI Solutions
>>> >>> >> mailto: simon.bolek@arcom-ivi.de
>>> >>> >> http://www.arcom-ivi.de/
>>> >>> >> XING: https://www.xing.com/profile/SimonP_Bolek
>>> >>> >>
>>> >>> >> On Wed, Jul 13, 2016 at 8:36 AM, Khem Raj <raj.khem@gmail.com>
>>> >>> >> wrote:
>>> >>> >>>
>>> >>> >>> On Tue, Jul 12, 2016 at 11:28 PM, Simon Bolek
>>> >>> >>> <simon.bolek@googlemail.com> wrote:
>>> >>> >>> > Thank you Raj,
>>> >>> >>> >
>>> >>> >>> > Is there a standard way to activate these initramfs logs, or =
do
>>> >>> >>> > I
>>> >>> >>> > have
>>> >>> >>> > to
>>> >>> >>> > implement it myself somewhere?
>>> >>> >>>
>>> >>> >>> you have to add printf etc. yourself into the init script in
>>> >>> >>> initramfs
>>> >>> >>> image
>>> >>> >>>
>>> >>> >>> >
>>> >>> >>> > thank you and kind regards
>>> >>> >>> > Simon :-)
>>> >>> >>> >
>>> >>> >>> > Viele Gr=C3=BCsse
>>> >>> >>> > Simon Bolek :-)
>>> >>> >>> >
>>> >>> >>> > mit freundlichem Gruss / kind regards / pozdrawiam
>>> >>> >>> > Simon P. Bolek
>>> >>> >>> > ------------------------------------------------------
>>> >>> >>> > Dipl. Inf. Simon P. Bolek
>>> >>> >>> > SAP Integration Architect
>>> >>> >>> > Business Mobile and IVI Solutions
>>> >>> >>> > mailto: simon.bolek@arcom-ivi.de
>>> >>> >>> > http://www.arcom-ivi.de/
>>> >>> >>> > XING: https://www.xing.com/profile/SimonP_Bolek
>>> >>> >>> >
>>> >>> >>> > On Wed, Jul 13, 2016 at 1:36 AM, Khem Raj <raj.khem@gmail.com=
>
>>> >>> >>> > wrote:
>>> >>> >>> >>
>>> >>> >>> >> On Tue, Jul 12, 2016 at 3:45 AM, Simon Bolek
>>> >>> >>> >> <simon.bolek@googlemail.com>
>>> >>> >>> >> wrote:
>>> >>> >>> >> > Hello everyone!
>>> >>> >>> >> >
>>> >>> >>> >> > I am trying to install genericx86 core-image-sato (jethro)
>>> >>> >>> >> > HDDIMG to
>>> >>> >>> >> > an
>>> >>> >>> >> > atom-pc.
>>> >>> >>> >> > For this 2GB USB stick is used.
>>> >>> >>> >> > When choosing 'install' option from boot menu I get the
>>> >>> >>> >> > message:
>>> >>> >>> >> >
>>> >>> >>> >> > "Searching for hard drives...
>>> >>> >>> >> > No hard drive selected. Installation aborted."
>>> >>> >>> >> >
>>> >>> >>> >> > Installatiion stops and i get the console.
>>> >>> >>> >> > When I try to run fsck, it says: can't read '/etc/fstab': =
No
>>> >>> >>> >> > such
>>> >>> >>> >> > file
>>> >>> >>> >> > or
>>> >>> >>> >> > directory
>>> >>> >>> >> >
>>> >>> >>> >> > fdisk -l  shows only the partitions of USB stick.
>>> >>> >>> >> >
>>> >>> >>> >> > After I choose 'boot' option to boot into live image, SDD
>>> >>> >>> >> > drive
>>> >>> >>> >> > is
>>> >>> >>> >> > under
>>> >>> >>> >> > /dev/sdb and USB installation stick under /dev/sda,
>>> >>> >>> >> >
>>> >>> >>> >> > What recipe/package is my installation missing? The SSD ha=
rd
>>> >>> >>> >> > drive
>>> >>> >>> >> > is
>>> >>> >>> >> > not
>>> >>> >>> >> > recognized for some reason. With previous yocto releases
>>> >>> >>> >> > this
>>> >>> >>> >> > package
>>> >>> >>> >> > list
>>> >>> >>> >> > DID work fine.
>>> >>> >>> >> > So there is something missing in the background.
>>> >>> >>> >> > Do you have any idea what this might be?
>>> >>> >>> >>
>>> >>> >>> >> udev should have run and found your hdd. So it seems its not
>>> >>> >>> >> finding
>>> >>> >>> >> it when running from initramfs. Can you try to add logs to
>>> >>> >>> >> initramfs
>>> >>> >>> >> and see what udev is doing ?
>>> >>> >>> >>
>>> >>> >>> >> >
>>> >>> >>> >> > Below is my package list from local.conf.
>>> >>> >>> >> >
>>> >>> >>> >> > thank you and kind regards
>>> >>> >>> >> > Simon :-)
>>> >>> >>> >> >
>>> >>> >>> >> > EXTRA_IMAGE_FEATURES =3D "debug-tweaks ssh-server-openssh"
>>> >>> >>> >> > IMAGE_INSTALL_append =3D " make \
>>> >>> >>> >> >      initscripts \
>>> >>> >>> >> >      grub \
>>> >>> >>> >> >      initramfs-boot \
>>> >>> >>> >> >      syslinux \
>>> >>> >>> >> >      initramfs-live-install \
>>> >>> >>> >> >      initramfs-live-install-efi \
>>> >>> >>> >> >      initramfs-live-boot \
>>> >>> >>> >> >      xinit \
>>> >>> >>> >> >      xwininfo \
>>> >>> >>> >> >      openssh-sftp \
>>> >>> >>> >> >      openssh-sftp-server \
>>> >>> >>> >> >      qtbase-plugins \
>>> >>> >>> >> >      qtconnectivity \
>>> >>> >>> >> >      qtdeclarative \
>>> >>> >>> >> >      qtdeclarative-plugins \
>>> >>> >>> >> >      qtdeclarative-tools \
>>> >>> >>> >> >      qtdeclarative-qmlplugins \
>>> >>> >>> >> >      qtenginio \
>>> >>> >>> >> >      qtlocation \
>>> >>> >>> >> >      qtmultimedia \
>>> >>> >>> >> >      qtmultimedia-plugins \
>>> >>> >>> >> >      qtmultimedia-qmlplugins \
>>> >>> >>> >> >      qtsystems \
>>> >>> >>> >> > "
>>> >>> >>> >> >
>>> >>> >>> >> > Viele Gr=C3=BCsse
>>> >>> >>> >> > Simon Bolek :-)
>>> >>> >>> >> >
>>> >>> >>> >> > mit freundlichem Gruss / kind regards / pozdrawiam
>>> >>> >>> >> > Simon P. Bolek
>>> >>> >>> >> > ------------------------------------------------------
>>> >>> >>> >> > Dipl. Inf. Simon P. Bolek
>>> >>> >>> >> > SAP Integration Architect
>>> >>> >>> >> > Business Mobile and IVI Solutions
>>> >>> >>> >> > mailto: simon.bolek@arcom-ivi.de
>>> >>> >>> >> > http://www.arcom-ivi.de/
>>> >>> >>> >> > XING: https://www.xing.com/profile/SimonP_Bolek
>>> >>> >>> >> >
>>> >>> >>> >> > --
>>> >>> >>> >> > _______________________________________________
>>> >>> >>> >> > yocto mailing list
>>> >>> >>> >> > yocto@yoctoproject.org
>>> >>> >>> >> > https://lists.yoctoproject.org/listinfo/yocto
>>> >>> >>> >> >
>>> >>> >>> >
>>> >>> >>> >
>>> >>> >>
>>> >>> >>
>>> >>> >
>>> >>
>>> >>
>>> >
>>
>>
>

