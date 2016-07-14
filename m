Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96548E00D47; Thu, 14 Jul 2016 16:31:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20729E00D47
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2016 16:31:25 -0700 (PDT)
Received: by mail-qk0-f171.google.com with SMTP id x1so2629319qkb.3
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2016 16:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=lxoqUS0kHyrIKx27ZIOVJ0VF4M5l5ZQAqv65tr5KObQ=;
	b=E1Vo5jsvb8rTsGvmEM12ppcg3vrLEjNfjVrOGKpbpc7NZQi8/mMPFi8C3ywg3l0I5N
	eRlg/UDl9vQzriN9eIiuULR5P6E6mkdbIEDOofuKFIytrEZZ7PjUJNI45t07/lh3RGA1
	u4Pe4MjO9K73PfIz3iowU1rmdOsw+FPChdzR4MsqFbdbV4JSzL/ZGbCQnw0zR0w3sff/
	DRT3+PraXLDcocP3rFErHTiIkZXY6hcr2Oaeg4H0t1iD5FoAr7+q9pyxalvVZFJ//HoT
	dhW4Z9WIxLalpG2PF2xyTF0dN4/0Mpz2Pmn4lSu+Bfv/1/ErVV9d+J6suPnE91y/jxMX
	N3kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=lxoqUS0kHyrIKx27ZIOVJ0VF4M5l5ZQAqv65tr5KObQ=;
	b=AFsZJw8rwGqAt7e6I066OO5jN92OwiDFCWu6aifdqdw1aiCENzg2QcVGN0/Ip4mMIc
	YAi4RtbQ1RaUxdbi5i+82aRERZdNLOlE0N4Yo1CLeALiaxfrVytmDjEMFiULhLYAsW55
	BgaMsrRJP03sdDTqEJODPoYXc/XpBYCvXbfcxK7dqJtpMF+45PKF/LnaVSyMuGgL+HUh
	hiqRxa9EbCWQgTEpXYamcfD20PNXx5pwW8y2QhzauPQlQG3btB6iAzDyPFfZ7F0oUw/Q
	9wepXMIR1859cqfa4AUojNgV5HqW5SqhHfMiLXNKZHXsy4YwXQQJOodi8aj9kDxqUqAl
	/ECg==
X-Gm-Message-State: ALyK8tLyH+VXoSsvl588+v9vMrZtza4NNkp/ArEnEpzk9Wqx8m7h/yeWRwQucibHZ7UB53iSjjB+4PCFi7anOA==
X-Received: by 10.55.178.195 with SMTP id b186mr19664834qkf.81.1468539084824; 
	Thu, 14 Jul 2016 16:31:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Thu, 14 Jul 2016 16:30:55 -0700 (PDT)
In-Reply-To: <CAEfap_BDcUGfDEViXOQ6TiT16bcsxOjUBCsd5xaKEOpr_+EJPQ@mail.gmail.com>
References: <CAEfap_CAJpEnc6xWUbcYUkMx2CRa2HVT+FOBXy+rYb67jv16gw@mail.gmail.com>
	<CAMKF1soyZBMzFUo0FLgk3Hb69PfMGiyQ7TNqsDBdVdHz7UNX8w@mail.gmail.com>
	<CAEfap_BV6LRYUyG3u9oLDvXrpy9ztgVM-UaPNSHo9i1xbNj24w@mail.gmail.com>
	<CAMKF1sqGSWkd-aTcY3fNk=88iL8BW5ihGnvSy14bCiSfeVUvzw@mail.gmail.com>
	<CAEfap_BpFoi66j9PJO=PiZURULiivtR0Z6yCSedebLgTvzcY0g@mail.gmail.com>
	<CAEfap_DQrSiDkDrBH7T7Ecez5R2D-KM_V+Lnm2nombozFBKF4w@mail.gmail.com>
	<CAMKF1srjRAkFueO5A-dXy-E+n4PjpcZM57xF=BbU7P7NJH4csg@mail.gmail.com>
	<CAEfap_ATPbqdD9H6gYikvs+Afa6XhxvbC-DU9-v-sUzhCANE9Q@mail.gmail.com>
	<CAEfap_BDcUGfDEViXOQ6TiT16bcsxOjUBCsd5xaKEOpr_+EJPQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 14 Jul 2016 16:30:55 -0700
Message-ID: <CAMKF1so2w-6-vvtvubJcGw-HF0As2WaymTweoOnJX1_LCYpv0w@mail.gmail.com>
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
X-List-Received-Date: Thu, 14 Jul 2016 23:31:28 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 14, 2016 at 4:16 PM, Simon Bolek <simon.bolek@googlemail.com> w=
rote:
> Hi Raj,
>
> About depmod again.
> Should it be run from meta/classes/kernel.bbclass  ?
> ...
> pkg_postinst_kernel-base () {
>     if [ ! -e "$D/lib/modules/${KERNEL_VERSION}" ]; then
>         mkdir -p $D/lib/modules/${KERNEL_VERSION}
>     fi
>     if [ -n "$D" ]; then
>         depmodwrapper -a -b $D ${KERNEL_VERSION}
>     else
>         depmod -a ${KERNEL_VERSION}
>     fi
> }
> ...
>
> Where is this function beeing called?

It should be called during rootfs and image creation time. as well as
when you update the package using online package manager.

> I did not find it anywhere.
> thanks and kind regards
> Simon :-)
>
> On Thu, Jul 14, 2016 at 8:32 AM, Simon Bolek <simon.bolek@googlemail.com>
> wrote:
>>
>>
>> On Wed, Jul 13, 2016 at 4:56 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>>
>>> On Wed, Jul 13, 2016 at 4:57 AM, Simon Bolek <simon.bolek@googlemail.co=
m>
>>> wrote:
>>> > Hi Raj,
>>> >
>>> > So i tried to do manually, what init script does and udev definitely
>>> > does
>>> > not recognize the SSD drive.
>>> > I ran
>>> >  /lib/udev/udevd --daemon --debug > udev.debug 2>&1 &
>>> > from the cli and there is no trace of recognizing the SSD. Only the
>>> > /dev/sda, which is the USB stick I am running the installation from.
>>> >
>>> > I used 'meld' to compare the /initrd from current jethro image and
>>> > previous
>>> > working fido image.
>>> > They are almost the same:
>>> > - in jethro /lib/modules... file structure is missing with:
>>> > modules.alias
>>> > modules.alias.bin
>>> > modules.builtin.bin
>>> > modules.dep
>>> > modules.dep.bin
>>> > modules.devname
>>> > modules.softdep
>>> > modules.symbols
>>> > modules.symbols.bin
>>>
>>> this means depmod did not run during initramfs image creation
>>
>> How can I make this happen during bitbake, so i have those files in the
>> HDDIMG?
>>
>>>
>>> >
>>> > - there are slight differences between
>>> > /etc/init.d/udev
>>> > /etc/udev/scripts/mount.sh
>>> > , but I cannot tell, if this is the reason.
>>>
>>> what are the differences ?
>>
>>
>> Sorry for this patch-like copy/paste, but this was the simplest way of
>> presenting the changes.
>> Do you see something important here, that might cause the SDD not beeing
>> recognized?
>>
>> --- /home/simon/Development/Yocto-Project/initrd-ok/etc/init.d/udev
>> +++ /home/simon/Development/Yocto-Project/initrd-jethro/etc/init.d/udev
>> @@ -14,20 +14,27 @@
>>  [ -d /sys/class ] || exit 1
>>  [ -r /proc/mounts ] || exit 1
>>  [ -x /lib/udev/udevd ] || exit 1
>> +SYSCONF_CACHED=3D"/etc/udev/cache.data"
>> +SYSCONF_TMP=3D"/dev/shm/udev.cache"
>> +DEVCACHE_REGEN=3D"/dev/shm/udev-regen" # create to request cache regen
>> +
>> +# A list of files which are used as a criteria to judge whether the ude=
v
>> cache could be reused.
>> +CMP_FILE_LIST=3D"/proc/version /proc/cmdline /proc/devices"
>> +[ -f /proc/atags ] && CMP_FILE_LIST=3D"$CMP_FILE_LIST /proc/atags"
>> +
>> +# List of files whose metadata (size/mtime/name) will be included in
>> cached
>> +# system state.
>> +META_FILE_LIST=3D"lib/udev/rules.d/* etc/udev/rules.d/*"
>> +
>> +# Command to compute system configuration.
>> +sysconf_cmd () {
>> +    cat -- $CMP_FILE_LIST
>> +    stat -c '%s %Y %n' -- $META_FILE_LIST | awk -F/ '{print $1 " " $NF;=
}'
>> +}
>> +
>>  [ -f /etc/default/udev-cache ] && . /etc/default/udev-cache
>>  [ -f /etc/udev/udev.conf ] && . /etc/udev/udev.conf
>>  [ -f /etc/default/rcS ] && . /etc/default/rcS
>> -
>> -readfiles () {
>> -   READDATA=3D""
>> -   for filename in $@; do
>> -       if [ -r $filename ]; then
>> -           while read line; do
>> -               READDATA=3D"$READDATA$line"
>> -           done < $filename
>> -       fi
>> -   done
>> -}
>>
>>  kill_udevd () {
>>      pid=3D`pidof -x udevd`
>> @@ -57,38 +64,35 @@
>>      # the automount rule for udev needs /tmp directory available, as /t=
mp
>> is a symlink
>>      # to /var/tmp which in turn is a symlink to /var/volatile/tmp, we
>> need to make sure
>>      # /var/volatile/tmp directory to be available.
>> -    mkdir -p /var/volatile/tmp
>> +    mkdir -m 1777 -p /var/volatile/tmp
>>
>>      # Cache handling.
>> -    # A list of files which are used as a criteria to judge whether the
>> udev cache could be reused.
>> -    CMP_FILE_LIST=3D"/proc/version /proc/cmdline /proc/devices /proc/at=
ags"
>>      if [ "$DEVCACHE" !=3D "" ]; then
>>              if [ -e $DEVCACHE ]; then
>> -            readfiles $CMP_FILE_LIST
>> -            NEWDATA=3D"$READDATA"
>> -            readfiles /etc/udev/cache.data
>> -            OLDDATA=3D"$READDATA"
>> -            if [ "$OLDDATA" =3D "$NEWDATA" ]; then
>> -                            (cd /; tar xf $DEVCACHE > /dev/null 2>&1)
>> +            sysconf_cmd > "$SYSCONF_TMP"
>> +            if cmp $SYSCONF_CACHED $SYSCONF_TMP >/dev/null; then
>> +                            tar xmf $DEVCACHE -C / -m
>>                              not_first_boot=3D1
>>                              [ "$VERBOSE" !=3D "no" ] && echo "udev: usi=
ng
>> cache file $DEVCACHE"
>> -                            [ -e /dev/shm/udev.cache ] && rm -f
>> /dev/shm/udev.cache
>> +                            [ -e $SYSCONF_TMP ] && rm -f "$SYSCONF_TMP"
>> +                            [ -e "$DEVCACHE_REGEN" ] && rm -f
>> "$DEVCACHE_REGEN"
>>                      else
>>                  # Output detailed reason why the cached /dev is not use=
d
>> -                if [ "$VERBOSE" !=3D "no" ]; then
>> -                    echo "udev: udev cache not used"
>> -                    echo "udev: we use $CMP_FILE_LIST as criteria to
>> judge whether the cache /dev could be resued"
>> -                    echo "udev: olddata: $OLDDATA"
>> -                    echo "udev: newdata: $NEWDATA"
>> -                fi
>> -                echo "$NEWDATA" > /dev/shm/udev.cache
>> +                cat <<EOF
>> +udev: Not using udev cache because of changes detected in the following
>> files:
>> +udev:     $CMP_FILE_LIST
>> +udev:     $META_FILE_LIST
>> +udev: The udev cache will be regenerated. To identify the detected
>> changes,
>> +udev: compare the cached sysconf at   $SYSCONF_CACHED
>> +udev: against the current sysconf at  $SYSCONF_TMP
>> +EOF
>> +                touch "$DEVCACHE_REGEN"
>>                      fi
>>          else
>>              if [ "$ROOTFS_READ_ONLY" !=3D "yes" ]; then
>>                  # If rootfs is not read-only, it's possible that a new
>> udev cache would be generated;
>>                  # otherwise, we do not bother to read files.
>> -                readfiles $CMP_FILE_LIST
>> -                echo "$READDATA" > /dev/shm/udev.cache
>> +                touch "$DEVCACHE_REGEN"
>>              fi
>>              fi
>>      fi
>> @@ -97,7 +101,7 @@
>>      kill_udevd > "/dev/null" 2>&1
>>
>>      # trigger the sorted events
>> -    echo -e '\000\000\000\000' > /proc/sys/kernel/hotplug
>> +    [ -e /proc/sys/kernel/hotplug ] && echo -e '\000'
>> >/proc/sys/kernel/hotplug
>>      /lib/udev/udevd -d
>>
>>      udevadm control --env=3DSTARTUP=3D1
>>
>>
>>>
>>> >
>>> > Unfortunately I did not dig inside binary /lib/udev/udevd.
>>> >
>>> > So do you have any other ideas, what might be the reason for not
>>> > recognizing
>>> > the SSD? Maybe there are some additional recipes needed from jethro o=
n?
>>> >
>>> >
>>> > thanks & kind regards
>>> > Simon :-)
>>> >
>>> > mit freundlichem Gruss / kind regards / pozdrawiam
>>> > Simon P. Bolek
>>> > ------------------------------------------------------
>>> > Dipl. Inf. Simon P. Bolek
>>> > SAP Integration Architect
>>> > Business Mobile and IVI Solutions
>>> > mailto: simon.bolek@arcom-ivi.de
>>> > http://www.arcom-ivi.de/
>>> > XING: https://www.xing.com/profile/SimonP_Bolek
>>> >
>>> > On Wed, Jul 13, 2016 at 9:03 AM, Simon Bolek
>>> > <simon.bolek@googlemail.com>
>>> > wrote:
>>> >>
>>> >> Thank you,
>>> >>
>>> >> I just guess, that it is the following function in init script to pu=
t
>>> >> the
>>> >> echos to? Is it?
>>> >>
>>> >> udev_daemon() {
>>> >>     OPTIONS=3D"/sbin/udev/udevd /sbin/udevd /lib/udev/udevd
>>> >> /lib/systemd/systemd-udevd"
>>> >>
>>> >>     for o in $OPTIONS; do
>>> >>         if [ -x "$o" ]; then
>>> >>             echo $o
>>> >>             return 0
>>> >>         fi
>>> >>     done
>>> >>
>>> >>     return 1
>>> >> }
>>> >>
>>> >>
>>> >> cheers
>>> >> Simon:-)
>>> >>
>>> >> Viele Gr=C3=BCsse
>>> >> Simon Bolek :-)
>>> >>
>>> >> mit freundlichem Gruss / kind regards / pozdrawiam
>>> >> Simon P. Bolek
>>> >> ------------------------------------------------------
>>> >> Dipl. Inf. Simon P. Bolek
>>> >> SAP Integration Architect
>>> >> Business Mobile and IVI Solutions
>>> >> mailto: simon.bolek@arcom-ivi.de
>>> >> http://www.arcom-ivi.de/
>>> >> XING: https://www.xing.com/profile/SimonP_Bolek
>>> >>
>>> >> On Wed, Jul 13, 2016 at 8:36 AM, Khem Raj <raj.khem@gmail.com> wrote=
:
>>> >>>
>>> >>> On Tue, Jul 12, 2016 at 11:28 PM, Simon Bolek
>>> >>> <simon.bolek@googlemail.com> wrote:
>>> >>> > Thank you Raj,
>>> >>> >
>>> >>> > Is there a standard way to activate these initramfs logs, or do I
>>> >>> > have
>>> >>> > to
>>> >>> > implement it myself somewhere?
>>> >>>
>>> >>> you have to add printf etc. yourself into the init script in
>>> >>> initramfs
>>> >>> image
>>> >>>
>>> >>> >
>>> >>> > thank you and kind regards
>>> >>> > Simon :-)
>>> >>> >
>>> >>> > Viele Gr=C3=BCsse
>>> >>> > Simon Bolek :-)
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
>>> >>> > On Wed, Jul 13, 2016 at 1:36 AM, Khem Raj <raj.khem@gmail.com>
>>> >>> > wrote:
>>> >>> >>
>>> >>> >> On Tue, Jul 12, 2016 at 3:45 AM, Simon Bolek
>>> >>> >> <simon.bolek@googlemail.com>
>>> >>> >> wrote:
>>> >>> >> > Hello everyone!
>>> >>> >> >
>>> >>> >> > I am trying to install genericx86 core-image-sato (jethro)
>>> >>> >> > HDDIMG to
>>> >>> >> > an
>>> >>> >> > atom-pc.
>>> >>> >> > For this 2GB USB stick is used.
>>> >>> >> > When choosing 'install' option from boot menu I get the messag=
e:
>>> >>> >> >
>>> >>> >> > "Searching for hard drives...
>>> >>> >> > No hard drive selected. Installation aborted."
>>> >>> >> >
>>> >>> >> > Installatiion stops and i get the console.
>>> >>> >> > When I try to run fsck, it says: can't read '/etc/fstab': No
>>> >>> >> > such
>>> >>> >> > file
>>> >>> >> > or
>>> >>> >> > directory
>>> >>> >> >
>>> >>> >> > fdisk -l  shows only the partitions of USB stick.
>>> >>> >> >
>>> >>> >> > After I choose 'boot' option to boot into live image, SDD driv=
e
>>> >>> >> > is
>>> >>> >> > under
>>> >>> >> > /dev/sdb and USB installation stick under /dev/sda,
>>> >>> >> >
>>> >>> >> > What recipe/package is my installation missing? The SSD hard
>>> >>> >> > drive
>>> >>> >> > is
>>> >>> >> > not
>>> >>> >> > recognized for some reason. With previous yocto releases this
>>> >>> >> > package
>>> >>> >> > list
>>> >>> >> > DID work fine.
>>> >>> >> > So there is something missing in the background.
>>> >>> >> > Do you have any idea what this might be?
>>> >>> >>
>>> >>> >> udev should have run and found your hdd. So it seems its not
>>> >>> >> finding
>>> >>> >> it when running from initramfs. Can you try to add logs to
>>> >>> >> initramfs
>>> >>> >> and see what udev is doing ?
>>> >>> >>
>>> >>> >> >
>>> >>> >> > Below is my package list from local.conf.
>>> >>> >> >
>>> >>> >> > thank you and kind regards
>>> >>> >> > Simon :-)
>>> >>> >> >
>>> >>> >> > EXTRA_IMAGE_FEATURES =3D "debug-tweaks ssh-server-openssh"
>>> >>> >> > IMAGE_INSTALL_append =3D " make \
>>> >>> >> >      initscripts \
>>> >>> >> >      grub \
>>> >>> >> >      initramfs-boot \
>>> >>> >> >      syslinux \
>>> >>> >> >      initramfs-live-install \
>>> >>> >> >      initramfs-live-install-efi \
>>> >>> >> >      initramfs-live-boot \
>>> >>> >> >      xinit \
>>> >>> >> >      xwininfo \
>>> >>> >> >      openssh-sftp \
>>> >>> >> >      openssh-sftp-server \
>>> >>> >> >      qtbase-plugins \
>>> >>> >> >      qtconnectivity \
>>> >>> >> >      qtdeclarative \
>>> >>> >> >      qtdeclarative-plugins \
>>> >>> >> >      qtdeclarative-tools \
>>> >>> >> >      qtdeclarative-qmlplugins \
>>> >>> >> >      qtenginio \
>>> >>> >> >      qtlocation \
>>> >>> >> >      qtmultimedia \
>>> >>> >> >      qtmultimedia-plugins \
>>> >>> >> >      qtmultimedia-qmlplugins \
>>> >>> >> >      qtsystems \
>>> >>> >> > "
>>> >>> >> >
>>> >>> >> > Viele Gr=C3=BCsse
>>> >>> >> > Simon Bolek :-)
>>> >>> >> >
>>> >>> >> > mit freundlichem Gruss / kind regards / pozdrawiam
>>> >>> >> > Simon P. Bolek
>>> >>> >> > ------------------------------------------------------
>>> >>> >> > Dipl. Inf. Simon P. Bolek
>>> >>> >> > SAP Integration Architect
>>> >>> >> > Business Mobile and IVI Solutions
>>> >>> >> > mailto: simon.bolek@arcom-ivi.de
>>> >>> >> > http://www.arcom-ivi.de/
>>> >>> >> > XING: https://www.xing.com/profile/SimonP_Bolek
>>> >>> >> >
>>> >>> >> > --
>>> >>> >> > _______________________________________________
>>> >>> >> > yocto mailing list
>>> >>> >> > yocto@yoctoproject.org
>>> >>> >> > https://lists.yoctoproject.org/listinfo/yocto
>>> >>> >> >
>>> >>> >
>>> >>> >
>>> >>
>>> >>
>>> >
>>
>>
>

