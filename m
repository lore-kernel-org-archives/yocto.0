Return-Path: <simon.bolek@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34FCEE00EAE; Fri, 15 Jul 2016 01:59:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (simon.bolek[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17573E00E44
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 01:59:22 -0700 (PDT)
Received: by mail-io0-f179.google.com with SMTP id 38so98852708iol.0
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 01:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4dUbsxS1VRQScGdF07n241m1mnQJ2xH4cePEYjir844=;
	b=rToBJOQhtVRPk6PWYwZpZjlkO/qR0PfvM8bymGir9fgUNZX+It8VRmVnvPBklcm713
	rbcHK2lKRV0MhApSDcjILkD3QPoj6sEPhJMeTOxGzysJogvBXJVl2u8Nvtcy7J1rWpLv
	sJtIUtMracizqVKo1hYVCAV5S8zaf4U4t/S3+2rlzKA13M6NmPY78yWpRXI/JdHLGo0X
	ljg0zdO9DmRGAAmqs+j9CN/8BmCSYu3E5p3kTJDz8sB9ahtM9oKWnyqmaemBFlgHSyVc
	BFKK+sf9N5dIWmqf36xcxqTPfkAwlOED1EhyWNUvdGc1p3lAVMKkVYxS/h1ZWjbn/HBK
	BICg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4dUbsxS1VRQScGdF07n241m1mnQJ2xH4cePEYjir844=;
	b=UatiS/U2NyoTLzJDi8cgJTq8cL786FR2n13l1CZOfJl5QXRY4w3spIE2WIePoE/IqN
	7+2Yh8RnjXIZbxtllOez7x/utf30GIyPI4IHlaEneV0sxicMgp7lQ9HTqG/klBgYVtRG
	zKBNnOHhjffR9xxxbv//q1i/jGePYScEirAmQOy3TJ4n9dmuyB6GhVauMzQYJ4jmb/MN
	vWHXQ89HRWB/iXmEeQSml8DA9i1xh4r81+Z4Maz1cZHMU6jrUlv70WiWENyBeth7Q+29
	Y/ujBL1ZOwDBk/LNIol++qx24zqHpmz7244J2g925vY2HYSO174uR0xhmgCo1Qu/wko8
	E6kA==
X-Gm-Message-State: ALyK8tLM0PSPyyhbbNTd4zCuMtpjMpIp0VR3Hvrxxm7Sbqj284lQJdy/UWj7A2hJbVP/CrgCJG/nX9twXvrHUg==
X-Received: by 10.107.154.210 with SMTP id c201mr18825110ioe.99.1468573161818; 
	Fri, 15 Jul 2016 01:59:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.55.135 with HTTP; Fri, 15 Jul 2016 01:59:02 -0700 (PDT)
In-Reply-To: <CAMKF1so2w-6-vvtvubJcGw-HF0As2WaymTweoOnJX1_LCYpv0w@mail.gmail.com>
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
From: Simon Bolek <simon.bolek@googlemail.com>
Date: Fri, 15 Jul 2016 10:59:02 +0200
Message-ID: <CAEfap_C=OON++bN=VWhF8-WC=Kpt-esTEMzNjUSfCxytiYS+yQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
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
X-List-Received-Date: Fri, 15 Jul 2016 08:59:26 -0000
Content-Type: multipart/alternative; boundary=001a1140fab6a30f310537a8d53d

--001a1140fab6a30f310537a8d53d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks, but neither:
pkg_postinst_kernel-base ()
nor:
pkg_postinst_kernel-image ()
from /meta/classes/kernel.bbclass gets called when running:
- bitbake core-image-sato or
- bitbake linux-yocto

I put some commands in there, which are definitely wrong (like foobar) and
bitbake run successfully.
Whereas, in other funtions it caused problems.
Any ideas how can fix this?

thanks and best regards
Simon :-)

On Fri, Jul 15, 2016 at 1:30 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Thu, Jul 14, 2016 at 4:16 PM, Simon Bolek <simon.bolek@googlemail.com>
> wrote:
> > Hi Raj,
> >
> > About depmod again.
> > Should it be run from meta/classes/kernel.bbclass  ?
> > ...
> > pkg_postinst_kernel-base () {
> >     if [ ! -e "$D/lib/modules/${KERNEL_VERSION}" ]; then
> >         mkdir -p $D/lib/modules/${KERNEL_VERSION}
> >     fi
> >     if [ -n "$D" ]; then
> >         depmodwrapper -a -b $D ${KERNEL_VERSION}
> >     else
> >         depmod -a ${KERNEL_VERSION}
> >     fi
> > }
> > ...
> >
> > Where is this function beeing called?
>
> It should be called during rootfs and image creation time. as well as
> when you update the package using online package manager.
>
> > I did not find it anywhere.
> > thanks and kind regards
> > Simon :-)
> >
> > On Thu, Jul 14, 2016 at 8:32 AM, Simon Bolek <simon.bolek@googlemail.co=
m
> >
> > wrote:
> >>
> >>
> >> On Wed, Jul 13, 2016 at 4:56 PM, Khem Raj <raj.khem@gmail.com> wrote:
> >>>
> >>> On Wed, Jul 13, 2016 at 4:57 AM, Simon Bolek <
> simon.bolek@googlemail.com>
> >>> wrote:
> >>> > Hi Raj,
> >>> >
> >>> > So i tried to do manually, what init script does and udev definitel=
y
> >>> > does
> >>> > not recognize the SSD drive.
> >>> > I ran
> >>> >  /lib/udev/udevd --daemon --debug > udev.debug 2>&1 &
> >>> > from the cli and there is no trace of recognizing the SSD. Only the
> >>> > /dev/sda, which is the USB stick I am running the installation from=
.
> >>> >
> >>> > I used 'meld' to compare the /initrd from current jethro image and
> >>> > previous
> >>> > working fido image.
> >>> > They are almost the same:
> >>> > - in jethro /lib/modules... file structure is missing with:
> >>> > modules.alias
> >>> > modules.alias.bin
> >>> > modules.builtin.bin
> >>> > modules.dep
> >>> > modules.dep.bin
> >>> > modules.devname
> >>> > modules.softdep
> >>> > modules.symbols
> >>> > modules.symbols.bin
> >>>
> >>> this means depmod did not run during initramfs image creation
> >>
> >> How can I make this happen during bitbake, so i have those files in th=
e
> >> HDDIMG?
> >>
> >>>
> >>> >
> >>> > - there are slight differences between
> >>> > /etc/init.d/udev
> >>> > /etc/udev/scripts/mount.sh
> >>> > , but I cannot tell, if this is the reason.
> >>>
> >>> what are the differences ?
> >>
> >>
> >> Sorry for this patch-like copy/paste, but this was the simplest way of
> >> presenting the changes.
> >> Do you see something important here, that might cause the SDD not beei=
ng
> >> recognized?
> >>
> >> --- /home/simon/Development/Yocto-Project/initrd-ok/etc/init.d/udev
> >> +++ /home/simon/Development/Yocto-Project/initrd-jethro/etc/init.d/ude=
v
> >> @@ -14,20 +14,27 @@
> >>  [ -d /sys/class ] || exit 1
> >>  [ -r /proc/mounts ] || exit 1
> >>  [ -x /lib/udev/udevd ] || exit 1
> >> +SYSCONF_CACHED=3D"/etc/udev/cache.data"
> >> +SYSCONF_TMP=3D"/dev/shm/udev.cache"
> >> +DEVCACHE_REGEN=3D"/dev/shm/udev-regen" # create to request cache rege=
n
> >> +
> >> +# A list of files which are used as a criteria to judge whether the
> udev
> >> cache could be reused.
> >> +CMP_FILE_LIST=3D"/proc/version /proc/cmdline /proc/devices"
> >> +[ -f /proc/atags ] && CMP_FILE_LIST=3D"$CMP_FILE_LIST /proc/atags"
> >> +
> >> +# List of files whose metadata (size/mtime/name) will be included in
> >> cached
> >> +# system state.
> >> +META_FILE_LIST=3D"lib/udev/rules.d/* etc/udev/rules.d/*"
> >> +
> >> +# Command to compute system configuration.
> >> +sysconf_cmd () {
> >> +    cat -- $CMP_FILE_LIST
> >> +    stat -c '%s %Y %n' -- $META_FILE_LIST | awk -F/ '{print $1 " "
> $NF;}'
> >> +}
> >> +
> >>  [ -f /etc/default/udev-cache ] && . /etc/default/udev-cache
> >>  [ -f /etc/udev/udev.conf ] && . /etc/udev/udev.conf
> >>  [ -f /etc/default/rcS ] && . /etc/default/rcS
> >> -
> >> -readfiles () {
> >> -   READDATA=3D""
> >> -   for filename in $@; do
> >> -       if [ -r $filename ]; then
> >> -           while read line; do
> >> -               READDATA=3D"$READDATA$line"
> >> -           done < $filename
> >> -       fi
> >> -   done
> >> -}
> >>
> >>  kill_udevd () {
> >>      pid=3D`pidof -x udevd`
> >> @@ -57,38 +64,35 @@
> >>      # the automount rule for udev needs /tmp directory available, as
> /tmp
> >> is a symlink
> >>      # to /var/tmp which in turn is a symlink to /var/volatile/tmp, we
> >> need to make sure
> >>      # /var/volatile/tmp directory to be available.
> >> -    mkdir -p /var/volatile/tmp
> >> +    mkdir -m 1777 -p /var/volatile/tmp
> >>
> >>      # Cache handling.
> >> -    # A list of files which are used as a criteria to judge whether t=
he
> >> udev cache could be reused.
> >> -    CMP_FILE_LIST=3D"/proc/version /proc/cmdline /proc/devices
> /proc/atags"
> >>      if [ "$DEVCACHE" !=3D "" ]; then
> >>              if [ -e $DEVCACHE ]; then
> >> -            readfiles $CMP_FILE_LIST
> >> -            NEWDATA=3D"$READDATA"
> >> -            readfiles /etc/udev/cache.data
> >> -            OLDDATA=3D"$READDATA"
> >> -            if [ "$OLDDATA" =3D "$NEWDATA" ]; then
> >> -                            (cd /; tar xf $DEVCACHE > /dev/null 2>&1)
> >> +            sysconf_cmd > "$SYSCONF_TMP"
> >> +            if cmp $SYSCONF_CACHED $SYSCONF_TMP >/dev/null; then
> >> +                            tar xmf $DEVCACHE -C / -m
> >>                              not_first_boot=3D1
> >>                              [ "$VERBOSE" !=3D "no" ] && echo "udev: u=
sing
> >> cache file $DEVCACHE"
> >> -                            [ -e /dev/shm/udev.cache ] && rm -f
> >> /dev/shm/udev.cache
> >> +                            [ -e $SYSCONF_TMP ] && rm -f "$SYSCONF_TM=
P"
> >> +                            [ -e "$DEVCACHE_REGEN" ] && rm -f
> >> "$DEVCACHE_REGEN"
> >>                      else
> >>                  # Output detailed reason why the cached /dev is not
> used
> >> -                if [ "$VERBOSE" !=3D "no" ]; then
> >> -                    echo "udev: udev cache not used"
> >> -                    echo "udev: we use $CMP_FILE_LIST as criteria to
> >> judge whether the cache /dev could be resued"
> >> -                    echo "udev: olddata: $OLDDATA"
> >> -                    echo "udev: newdata: $NEWDATA"
> >> -                fi
> >> -                echo "$NEWDATA" > /dev/shm/udev.cache
> >> +                cat <<EOF
> >> +udev: Not using udev cache because of changes detected in the followi=
ng
> >> files:
> >> +udev:     $CMP_FILE_LIST
> >> +udev:     $META_FILE_LIST
> >> +udev: The udev cache will be regenerated. To identify the detected
> >> changes,
> >> +udev: compare the cached sysconf at   $SYSCONF_CACHED
> >> +udev: against the current sysconf at  $SYSCONF_TMP
> >> +EOF
> >> +                touch "$DEVCACHE_REGEN"
> >>                      fi
> >>          else
> >>              if [ "$ROOTFS_READ_ONLY" !=3D "yes" ]; then
> >>                  # If rootfs is not read-only, it's possible that a ne=
w
> >> udev cache would be generated;
> >>                  # otherwise, we do not bother to read files.
> >> -                readfiles $CMP_FILE_LIST
> >> -                echo "$READDATA" > /dev/shm/udev.cache
> >> +                touch "$DEVCACHE_REGEN"
> >>              fi
> >>              fi
> >>      fi
> >> @@ -97,7 +101,7 @@
> >>      kill_udevd > "/dev/null" 2>&1
> >>
> >>      # trigger the sorted events
> >> -    echo -e '\000\000\000\000' > /proc/sys/kernel/hotplug
> >> +    [ -e /proc/sys/kernel/hotplug ] && echo -e '\000'
> >> >/proc/sys/kernel/hotplug
> >>      /lib/udev/udevd -d
> >>
> >>      udevadm control --env=3DSTARTUP=3D1
> >>
> >>
> >>>
> >>> >
> >>> > Unfortunately I did not dig inside binary /lib/udev/udevd.
> >>> >
> >>> > So do you have any other ideas, what might be the reason for not
> >>> > recognizing
> >>> > the SSD? Maybe there are some additional recipes needed from jethro
> on?
> >>> >
> >>> >
> >>> > thanks & kind regards
> >>> > Simon :-)
> >>> >
> >>> > mit freundlichem Gruss / kind regards / pozdrawiam
> >>> > Simon P. Bolek
> >>> > ------------------------------------------------------
> >>> > Dipl. Inf. Simon P. Bolek
> >>> > SAP Integration Architect
> >>> > Business Mobile and IVI Solutions
> >>> > mailto: simon.bolek@arcom-ivi.de
> >>> > http://www.arcom-ivi.de/
> >>> > XING: https://www.xing.com/profile/SimonP_Bolek
> >>> >
> >>> > On Wed, Jul 13, 2016 at 9:03 AM, Simon Bolek
> >>> > <simon.bolek@googlemail.com>
> >>> > wrote:
> >>> >>
> >>> >> Thank you,
> >>> >>
> >>> >> I just guess, that it is the following function in init script to
> put
> >>> >> the
> >>> >> echos to? Is it?
> >>> >>
> >>> >> udev_daemon() {
> >>> >>     OPTIONS=3D"/sbin/udev/udevd /sbin/udevd /lib/udev/udevd
> >>> >> /lib/systemd/systemd-udevd"
> >>> >>
> >>> >>     for o in $OPTIONS; do
> >>> >>         if [ -x "$o" ]; then
> >>> >>             echo $o
> >>> >>             return 0
> >>> >>         fi
> >>> >>     done
> >>> >>
> >>> >>     return 1
> >>> >> }
> >>> >>
> >>> >>
> >>> >> cheers
> >>> >> Simon:-)
> >>> >>
> >>> >> Viele Gr=C3=BCsse
> >>> >> Simon Bolek :-)
> >>> >>
> >>> >> mit freundlichem Gruss / kind regards / pozdrawiam
> >>> >> Simon P. Bolek
> >>> >> ------------------------------------------------------
> >>> >> Dipl. Inf. Simon P. Bolek
> >>> >> SAP Integration Architect
> >>> >> Business Mobile and IVI Solutions
> >>> >> mailto: simon.bolek@arcom-ivi.de
> >>> >> http://www.arcom-ivi.de/
> >>> >> XING: https://www.xing.com/profile/SimonP_Bolek
> >>> >>
> >>> >> On Wed, Jul 13, 2016 at 8:36 AM, Khem Raj <raj.khem@gmail.com>
> wrote:
> >>> >>>
> >>> >>> On Tue, Jul 12, 2016 at 11:28 PM, Simon Bolek
> >>> >>> <simon.bolek@googlemail.com> wrote:
> >>> >>> > Thank you Raj,
> >>> >>> >
> >>> >>> > Is there a standard way to activate these initramfs logs, or do=
 I
> >>> >>> > have
> >>> >>> > to
> >>> >>> > implement it myself somewhere?
> >>> >>>
> >>> >>> you have to add printf etc. yourself into the init script in
> >>> >>> initramfs
> >>> >>> image
> >>> >>>
> >>> >>> >
> >>> >>> > thank you and kind regards
> >>> >>> > Simon :-)
> >>> >>> >
> >>> >>> > Viele Gr=C3=BCsse
> >>> >>> > Simon Bolek :-)
> >>> >>> >
> >>> >>> > mit freundlichem Gruss / kind regards / pozdrawiam
> >>> >>> > Simon P. Bolek
> >>> >>> > ------------------------------------------------------
> >>> >>> > Dipl. Inf. Simon P. Bolek
> >>> >>> > SAP Integration Architect
> >>> >>> > Business Mobile and IVI Solutions
> >>> >>> > mailto: simon.bolek@arcom-ivi.de
> >>> >>> > http://www.arcom-ivi.de/
> >>> >>> > XING: https://www.xing.com/profile/SimonP_Bolek
> >>> >>> >
> >>> >>> > On Wed, Jul 13, 2016 at 1:36 AM, Khem Raj <raj.khem@gmail.com>
> >>> >>> > wrote:
> >>> >>> >>
> >>> >>> >> On Tue, Jul 12, 2016 at 3:45 AM, Simon Bolek
> >>> >>> >> <simon.bolek@googlemail.com>
> >>> >>> >> wrote:
> >>> >>> >> > Hello everyone!
> >>> >>> >> >
> >>> >>> >> > I am trying to install genericx86 core-image-sato (jethro)
> >>> >>> >> > HDDIMG to
> >>> >>> >> > an
> >>> >>> >> > atom-pc.
> >>> >>> >> > For this 2GB USB stick is used.
> >>> >>> >> > When choosing 'install' option from boot menu I get the
> message:
> >>> >>> >> >
> >>> >>> >> > "Searching for hard drives...
> >>> >>> >> > No hard drive selected. Installation aborted."
> >>> >>> >> >
> >>> >>> >> > Installatiion stops and i get the console.
> >>> >>> >> > When I try to run fsck, it says: can't read '/etc/fstab': No
> >>> >>> >> > such
> >>> >>> >> > file
> >>> >>> >> > or
> >>> >>> >> > directory
> >>> >>> >> >
> >>> >>> >> > fdisk -l  shows only the partitions of USB stick.
> >>> >>> >> >
> >>> >>> >> > After I choose 'boot' option to boot into live image, SDD
> drive
> >>> >>> >> > is
> >>> >>> >> > under
> >>> >>> >> > /dev/sdb and USB installation stick under /dev/sda,
> >>> >>> >> >
> >>> >>> >> > What recipe/package is my installation missing? The SSD hard
> >>> >>> >> > drive
> >>> >>> >> > is
> >>> >>> >> > not
> >>> >>> >> > recognized for some reason. With previous yocto releases thi=
s
> >>> >>> >> > package
> >>> >>> >> > list
> >>> >>> >> > DID work fine.
> >>> >>> >> > So there is something missing in the background.
> >>> >>> >> > Do you have any idea what this might be?
> >>> >>> >>
> >>> >>> >> udev should have run and found your hdd. So it seems its not
> >>> >>> >> finding
> >>> >>> >> it when running from initramfs. Can you try to add logs to
> >>> >>> >> initramfs
> >>> >>> >> and see what udev is doing ?
> >>> >>> >>
> >>> >>> >> >
> >>> >>> >> > Below is my package list from local.conf.
> >>> >>> >> >
> >>> >>> >> > thank you and kind regards
> >>> >>> >> > Simon :-)
> >>> >>> >> >
> >>> >>> >> > EXTRA_IMAGE_FEATURES =3D "debug-tweaks ssh-server-openssh"
> >>> >>> >> > IMAGE_INSTALL_append =3D " make \
> >>> >>> >> >      initscripts \
> >>> >>> >> >      grub \
> >>> >>> >> >      initramfs-boot \
> >>> >>> >> >      syslinux \
> >>> >>> >> >      initramfs-live-install \
> >>> >>> >> >      initramfs-live-install-efi \
> >>> >>> >> >      initramfs-live-boot \
> >>> >>> >> >      xinit \
> >>> >>> >> >      xwininfo \
> >>> >>> >> >      openssh-sftp \
> >>> >>> >> >      openssh-sftp-server \
> >>> >>> >> >      qtbase-plugins \
> >>> >>> >> >      qtconnectivity \
> >>> >>> >> >      qtdeclarative \
> >>> >>> >> >      qtdeclarative-plugins \
> >>> >>> >> >      qtdeclarative-tools \
> >>> >>> >> >      qtdeclarative-qmlplugins \
> >>> >>> >> >      qtenginio \
> >>> >>> >> >      qtlocation \
> >>> >>> >> >      qtmultimedia \
> >>> >>> >> >      qtmultimedia-plugins \
> >>> >>> >> >      qtmultimedia-qmlplugins \
> >>> >>> >> >      qtsystems \
> >>> >>> >> > "
> >>> >>> >> >
> >>> >>> >> > Viele Gr=C3=BCsse
> >>> >>> >> > Simon Bolek :-)
> >>> >>> >> >
> >>> >>> >> > mit freundlichem Gruss / kind regards / pozdrawiam
> >>> >>> >> > Simon P. Bolek
> >>> >>> >> > ------------------------------------------------------
> >>> >>> >> > Dipl. Inf. Simon P. Bolek
> >>> >>> >> > SAP Integration Architect
> >>> >>> >> > Business Mobile and IVI Solutions
> >>> >>> >> > mailto: simon.bolek@arcom-ivi.de
> >>> >>> >> > http://www.arcom-ivi.de/
> >>> >>> >> > XING: https://www.xing.com/profile/SimonP_Bolek
> >>> >>> >> >
> >>> >>> >> > --
> >>> >>> >> > _______________________________________________
> >>> >>> >> > yocto mailing list
> >>> >>> >> > yocto@yoctoproject.org
> >>> >>> >> > https://lists.yoctoproject.org/listinfo/yocto
> >>> >>> >> >
> >>> >>> >
> >>> >>> >
> >>> >>
> >>> >>
> >>> >
> >>
> >>
> >
>

--001a1140fab6a30f310537a8d53d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div><div>Thanks, but n=
either:<br>pkg_postinst_kernel-base ()<br></div>nor:<br>pkg_postinst_kernel=
-image ()<br></div>from /meta/classes/kernel.bbclass gets called when runni=
ng:<br>- bitbake core-image-sato or<br></div>- bitbake linux-yocto<br><br><=
/div>I put some commands in there, which are definitely wrong (like foobar)=
 and bitbake run successfully. <br></div>Whereas, in other funtions it caus=
ed problems. <br></div>Any ideas how can fix this?<br></div><br></div>thank=
s and best regards<br></div>Simon :-)<br><div><div><div><div><div><div><br>=
<div><div><div><div class=3D"gmail_extra"><div class=3D"gmail_quote">On Fri=
, Jul 15, 2016 at 1:30 AM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto=
:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><span class=3D"">=
On Thu, Jul 14, 2016 at 4:16 PM, Simon Bolek &lt;<a href=3D"mailto:simon.bo=
lek@googlemail.com">simon.bolek@googlemail.com</a>&gt; wrote:<br>
&gt; Hi Raj,<br>
&gt;<br>
&gt; About depmod again.<br>
&gt; Should it be run from meta/classes/kernel.bbclass=C2=A0 ?<br>
&gt; ...<br>
&gt; pkg_postinst_kernel-base () {<br>
&gt;=C2=A0 =C2=A0 =C2=A0if [ ! -e &quot;$D/lib/modules/${KERNEL_VERSION}&qu=
ot; ]; then<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mkdir -p $D/lib/modules/${KERNEL_VERS=
ION}<br>
&gt;=C2=A0 =C2=A0 =C2=A0fi<br>
&gt;=C2=A0 =C2=A0 =C2=A0if [ -n &quot;$D&quot; ]; then<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0depmodwrapper -a -b $D ${KERNEL_VERSI=
ON}<br>
&gt;=C2=A0 =C2=A0 =C2=A0else<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0depmod -a ${KERNEL_VERSION}<br>
&gt;=C2=A0 =C2=A0 =C2=A0fi<br>
&gt; }<br>
&gt; ...<br>
&gt;<br>
&gt; Where is this function beeing called?<br>
<br>
</span>It should be called during rootfs and image creation time. as well a=
s<br>
when you update the package using online package manager.<br>
<div class=3D""><div class=3D"h5"><br>
&gt; I did not find it anywhere.<br>
&gt; thanks and kind regards<br>
&gt; Simon :-)<br>
&gt;<br>
&gt; On Thu, Jul 14, 2016 at 8:32 AM, Simon Bolek &lt;<a href=3D"mailto:sim=
on.bolek@googlemail.com">simon.bolek@googlemail.com</a>&gt;<br>
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Wed, Jul 13, 2016 at 4:56 PM, Khem Raj &lt;<a href=3D"mailto:ra=
j.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Wed, Jul 13, 2016 at 4:57 AM, Simon Bolek &lt;<a href=3D"ma=
ilto:simon.bolek@googlemail.com">simon.bolek@googlemail.com</a>&gt;<br>
&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt; &gt; Hi Raj,<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; So i tried to do manually, what init script does and udev=
 definitely<br>
&gt;&gt;&gt; &gt; does<br>
&gt;&gt;&gt; &gt; not recognize the SSD drive.<br>
&gt;&gt;&gt; &gt; I ran<br>
&gt;&gt;&gt; &gt;=C2=A0 /lib/udev/udevd --daemon --debug &gt; udev.debug 2&=
gt;&amp;1 &amp;<br>
&gt;&gt;&gt; &gt; from the cli and there is no trace of recognizing the SSD=
. Only the<br>
&gt;&gt;&gt; &gt; /dev/sda, which is the USB stick I am running the install=
ation from.<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; I used &#39;meld&#39; to compare the /initrd from current=
 jethro image and<br>
&gt;&gt;&gt; &gt; previous<br>
&gt;&gt;&gt; &gt; working fido image.<br>
&gt;&gt;&gt; &gt; They are almost the same:<br>
&gt;&gt;&gt; &gt; - in jethro /lib/modules... file structure is missing wit=
h:<br>
&gt;&gt;&gt; &gt; modules.alias<br>
&gt;&gt;&gt; &gt; modules.alias.bin<br>
&gt;&gt;&gt; &gt; modules.builtin.bin<br>
&gt;&gt;&gt; &gt; modules.dep<br>
&gt;&gt;&gt; &gt; modules.dep.bin<br>
&gt;&gt;&gt; &gt; modules.devname<br>
&gt;&gt;&gt; &gt; modules.softdep<br>
&gt;&gt;&gt; &gt; modules.symbols<br>
&gt;&gt;&gt; &gt; modules.symbols.bin<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; this means depmod did not run during initramfs image creation<=
br>
&gt;&gt;<br>
&gt;&gt; How can I make this happen during bitbake, so i have those files i=
n the<br>
&gt;&gt; HDDIMG?<br>
&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; - there are slight differences between<br>
&gt;&gt;&gt; &gt; /etc/init.d/udev<br>
&gt;&gt;&gt; &gt; /etc/udev/scripts/mount.sh<br>
&gt;&gt;&gt; &gt; , but I cannot tell, if this is the reason.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; what are the differences ?<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Sorry for this patch-like copy/paste, but this was the simplest wa=
y of<br>
&gt;&gt; presenting the changes.<br>
&gt;&gt; Do you see something important here, that might cause the SDD not =
beeing<br>
&gt;&gt; recognized?<br>
&gt;&gt;<br>
&gt;&gt; --- /home/simon/Development/Yocto-Project/initrd-ok/etc/init.d/ude=
v<br>
&gt;&gt; +++ /home/simon/Development/Yocto-Project/initrd-jethro/etc/init.d=
/udev<br>
&gt;&gt; @@ -14,20 +14,27 @@<br>
&gt;&gt;=C2=A0 [ -d /sys/class ] || exit 1<br>
&gt;&gt;=C2=A0 [ -r /proc/mounts ] || exit 1<br>
&gt;&gt;=C2=A0 [ -x /lib/udev/udevd ] || exit 1<br>
&gt;&gt; +SYSCONF_CACHED=3D&quot;/etc/udev/cache.data&quot;<br>
&gt;&gt; +SYSCONF_TMP=3D&quot;/dev/shm/udev.cache&quot;<br>
&gt;&gt; +DEVCACHE_REGEN=3D&quot;/dev/shm/udev-regen&quot; # create to requ=
est cache regen<br>
&gt;&gt; +<br>
&gt;&gt; +# A list of files which are used as a criteria to judge whether t=
he udev<br>
&gt;&gt; cache could be reused.<br>
&gt;&gt; +CMP_FILE_LIST=3D&quot;/proc/version /proc/cmdline /proc/devices&q=
uot;<br>
&gt;&gt; +[ -f /proc/atags ] &amp;&amp; CMP_FILE_LIST=3D&quot;$CMP_FILE_LIS=
T /proc/atags&quot;<br>
&gt;&gt; +<br>
&gt;&gt; +# List of files whose metadata (size/mtime/name) will be included=
 in<br>
&gt;&gt; cached<br>
&gt;&gt; +# system state.<br>
&gt;&gt; +META_FILE_LIST=3D&quot;lib/udev/rules.d/* etc/udev/rules.d/*&quot=
;<br>
&gt;&gt; +<br>
&gt;&gt; +# Command to compute system configuration.<br>
&gt;&gt; +sysconf_cmd () {<br>
&gt;&gt; +=C2=A0 =C2=A0 cat -- $CMP_FILE_LIST<br>
&gt;&gt; +=C2=A0 =C2=A0 stat -c &#39;%s %Y %n&#39; -- $META_FILE_LIST | awk=
 -F/ &#39;{print $1 &quot; &quot; $NF;}&#39;<br>
&gt;&gt; +}<br>
&gt;&gt; +<br>
&gt;&gt;=C2=A0 [ -f /etc/default/udev-cache ] &amp;&amp; . /etc/default/ude=
v-cache<br>
&gt;&gt;=C2=A0 [ -f /etc/udev/udev.conf ] &amp;&amp; . /etc/udev/udev.conf<=
br>
&gt;&gt;=C2=A0 [ -f /etc/default/rcS ] &amp;&amp; . /etc/default/rcS<br>
&gt;&gt; -<br>
&gt;&gt; -readfiles () {<br>
&gt;&gt; -=C2=A0 =C2=A0READDATA=3D&quot;&quot;<br>
&gt;&gt; -=C2=A0 =C2=A0for filename in $@; do<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if [ -r $filename ]; then<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while read line; do<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0READDATA=
=3D&quot;$READDATA$line&quot;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0done &lt; $filename<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>
&gt;&gt; -=C2=A0 =C2=A0done<br>
&gt;&gt; -}<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 kill_udevd () {<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 pid=3D`pidof -x udevd`<br>
&gt;&gt; @@ -57,38 +64,35 @@<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 # the automount rule for udev needs /tmp direc=
tory available, as /tmp<br>
&gt;&gt; is a symlink<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 # to /var/tmp which in turn is a symlink to /v=
ar/volatile/tmp, we<br>
&gt;&gt; need to make sure<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 # /var/volatile/tmp directory to be available.=
<br>
&gt;&gt; -=C2=A0 =C2=A0 mkdir -p /var/volatile/tmp<br>
&gt;&gt; +=C2=A0 =C2=A0 mkdir -m 1777 -p /var/volatile/tmp<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 # Cache handling.<br>
&gt;&gt; -=C2=A0 =C2=A0 # A list of files which are used as a criteria to j=
udge whether the<br>
&gt;&gt; udev cache could be reused.<br>
&gt;&gt; -=C2=A0 =C2=A0 CMP_FILE_LIST=3D&quot;/proc/version /proc/cmdline /=
proc/devices /proc/atags&quot;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 if [ &quot;$DEVCACHE&quot; !=3D &quot;&quot; ]=
; then<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ -e $DEVCACHE =
]; then<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 readfiles $CMP_FILE_LIS=
T<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NEWDATA=3D&quot;$READDA=
TA&quot;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 readfiles /etc/udev/cac=
he.data<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 OLDDATA=3D&quot;$READDA=
TA&quot;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ &quot;$OLDDATA&quo=
t; =3D &quot;$NEWDATA&quot; ]; then<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (cd /; tar xf $DEVCACHE &gt; /dev/null 2=
&gt;&amp;1)<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sysconf_cmd &gt; &quot;=
$SYSCONF_TMP&quot;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if cmp $SYSCONF_CACHED =
$SYSCONF_TMP &gt;/dev/null; then<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 tar xmf $DEVCACHE -C / -m<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 not_first_boot=3D1<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ &quot;$VERBOSE&quot; !=3D &quot;no=
&quot; ] &amp;&amp; echo &quot;udev: using<br>
&gt;&gt; cache file $DEVCACHE&quot;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ -e /dev/shm/udev.cache ] &amp;&amp; rm=
 -f<br>
&gt;&gt; /dev/shm/udev.cache<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ -e $SYSCONF_TMP ] &amp;&amp; rm -f &qu=
ot;$SYSCONF_TMP&quot;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ -e &quot;$DEVCACHE_REGEN&quot; ] &amp;=
&amp; rm -f<br>
&gt;&gt; &quot;$DEVCACHE_REGEN&quot;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 else<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Ou=
tput detailed reason why the cached /dev is not used<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ &quo=
t;$VERBOSE&quot; !=3D &quot;no&quot; ]; then<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 echo &quot;udev: udev cache not used&quot;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 echo &quot;udev: we use $CMP_FILE_LIST as criteria to<br>
&gt;&gt; judge whether the cache /dev could be resued&quot;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 echo &quot;udev: olddata: $OLDDATA&quot;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 echo &quot;udev: newdata: $NEWDATA&quot;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quo=
t;$NEWDATA&quot; &gt; /dev/shm/udev.cache<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cat &lt;&=
lt;EOF<br>
&gt;&gt; +udev: Not using udev cache because of changes detected in the fol=
lowing<br>
&gt;&gt; files:<br>
&gt;&gt; +udev:=C2=A0 =C2=A0 =C2=A0$CMP_FILE_LIST<br>
&gt;&gt; +udev:=C2=A0 =C2=A0 =C2=A0$META_FILE_LIST<br>
&gt;&gt; +udev: The udev cache will be regenerated. To identify the detecte=
d<br>
&gt;&gt; changes,<br>
&gt;&gt; +udev: compare the cached sysconf at=C2=A0 =C2=A0$SYSCONF_CACHED<b=
r>
&gt;&gt; +udev: against the current sysconf at=C2=A0 $SYSCONF_TMP<br>
&gt;&gt; +EOF<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 touch &qu=
ot;$DEVCACHE_REGEN&quot;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 fi<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ &quot;$ROOTFS=
_READ_ONLY&quot; !=3D &quot;yes&quot; ]; then<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # If=
 rootfs is not read-only, it&#39;s possible that a new<br>
&gt;&gt; udev cache would be generated;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # ot=
herwise, we do not bother to read files.<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 readfiles=
 $CMP_FILE_LIST<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quo=
t;$READDATA&quot; &gt; /dev/shm/udev.cache<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 touch &qu=
ot;$DEVCACHE_REGEN&quot;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 fi<br>
&gt;&gt; @@ -97,7 +101,7 @@<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 kill_udevd &gt; &quot;/dev/null&quot; 2&gt;&am=
p;1<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 # trigger the sorted events<br>
&gt;&gt; -=C2=A0 =C2=A0 echo -e &#39;\000\000\000\000&#39; &gt; /proc/sys/k=
ernel/hotplug<br>
&gt;&gt; +=C2=A0 =C2=A0 [ -e /proc/sys/kernel/hotplug ] &amp;&amp; echo -e =
&#39;\000&#39;<br>
&gt;&gt; &gt;/proc/sys/kernel/hotplug<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 /lib/udev/udevd -d<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 udevadm control --env=3DSTARTUP=3D1<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Unfortunately I did not dig inside binary /lib/udev/udevd=
.<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; So do you have any other ideas, what might be the reason =
for not<br>
&gt;&gt;&gt; &gt; recognizing<br>
&gt;&gt;&gt; &gt; the SSD? Maybe there are some additional recipes needed f=
rom jethro on?<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; thanks &amp; kind regards<br>
&gt;&gt;&gt; &gt; Simon :-)<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; mit freundlichem Gruss / kind regards / pozdrawiam<br>
&gt;&gt;&gt; &gt; Simon P. Bolek<br>
&gt;&gt;&gt; &gt; ------------------------------------------------------<br=
>
&gt;&gt;&gt; &gt; Dipl. Inf. Simon P. Bolek<br>
&gt;&gt;&gt; &gt; SAP Integration Architect<br>
&gt;&gt;&gt; &gt; Business Mobile and IVI Solutions<br>
&gt;&gt;&gt; &gt; mailto: <a href=3D"mailto:simon.bolek@arcom-ivi.de">simon=
.bolek@arcom-ivi.de</a><br>
&gt;&gt;&gt; &gt; <a href=3D"http://www.arcom-ivi.de/" rel=3D"noreferrer" t=
arget=3D"_blank">http://www.arcom-ivi.de/</a><br>
&gt;&gt;&gt; &gt; XING: <a href=3D"https://www.xing.com/profile/SimonP_Bole=
k" rel=3D"noreferrer" target=3D"_blank">https://www.xing.com/profile/SimonP=
_Bolek</a><br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; On Wed, Jul 13, 2016 at 9:03 AM, Simon Bolek<br>
&gt;&gt;&gt; &gt; &lt;<a href=3D"mailto:simon.bolek@googlemail.com">simon.b=
olek@googlemail.com</a>&gt;<br>
&gt;&gt;&gt; &gt; wrote:<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; Thank you,<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; I just guess, that it is the following function in in=
it script to put<br>
&gt;&gt;&gt; &gt;&gt; the<br>
&gt;&gt;&gt; &gt;&gt; echos to? Is it?<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; udev_daemon() {<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0OPTIONS=3D&quot;/sbin/udev/udevd /=
sbin/udevd /lib/udev/udevd<br>
&gt;&gt;&gt; &gt;&gt; /lib/systemd/systemd-udevd&quot;<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0for o in $OPTIONS; do<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if [ -x &quot;$o&quo=
t; ]; then<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0echo $=
o<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return=
 0<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0done<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0return 1<br>
&gt;&gt;&gt; &gt;&gt; }<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; cheers<br>
&gt;&gt;&gt; &gt;&gt; Simon:-)<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; Viele Gr=C3=BCsse<br>
&gt;&gt;&gt; &gt;&gt; Simon Bolek :-)<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; mit freundlichem Gruss / kind regards / pozdrawiam<br=
>
&gt;&gt;&gt; &gt;&gt; Simon P. Bolek<br>
&gt;&gt;&gt; &gt;&gt; -----------------------------------------------------=
-<br>
&gt;&gt;&gt; &gt;&gt; Dipl. Inf. Simon P. Bolek<br>
&gt;&gt;&gt; &gt;&gt; SAP Integration Architect<br>
&gt;&gt;&gt; &gt;&gt; Business Mobile and IVI Solutions<br>
&gt;&gt;&gt; &gt;&gt; mailto: <a href=3D"mailto:simon.bolek@arcom-ivi.de">s=
imon.bolek@arcom-ivi.de</a><br>
&gt;&gt;&gt; &gt;&gt; <a href=3D"http://www.arcom-ivi.de/" rel=3D"noreferre=
r" target=3D"_blank">http://www.arcom-ivi.de/</a><br>
&gt;&gt;&gt; &gt;&gt; XING: <a href=3D"https://www.xing.com/profile/SimonP_=
Bolek" rel=3D"noreferrer" target=3D"_blank">https://www.xing.com/profile/Si=
monP_Bolek</a><br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; On Wed, Jul 13, 2016 at 8:36 AM, Khem Raj &lt;<a href=
=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; On Tue, Jul 12, 2016 at 11:28 PM, Simon Bolek<br>
&gt;&gt;&gt; &gt;&gt;&gt; &lt;<a href=3D"mailto:simon.bolek@googlemail.com"=
>simon.bolek@googlemail.com</a>&gt; wrote:<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; Thank you Raj,<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; Is there a standard way to activate these in=
itramfs logs, or do I<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; have<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; to<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; implement it myself somewhere?<br>
&gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; you have to add printf etc. yourself into the ini=
t script in<br>
&gt;&gt;&gt; &gt;&gt;&gt; initramfs<br>
&gt;&gt;&gt; &gt;&gt;&gt; image<br>
&gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; thank you and kind regards<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; Simon :-)<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; Viele Gr=C3=BCsse<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; Simon Bolek :-)<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; mit freundlichem Gruss / kind regards / pozd=
rawiam<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; Simon P. Bolek<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; --------------------------------------------=
----------<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; Dipl. Inf. Simon P. Bolek<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; SAP Integration Architect<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; Business Mobile and IVI Solutions<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; mailto: <a href=3D"mailto:simon.bolek@arcom-=
ivi.de">simon.bolek@arcom-ivi.de</a><br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; <a href=3D"http://www.arcom-ivi.de/" rel=3D"=
noreferrer" target=3D"_blank">http://www.arcom-ivi.de/</a><br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; XING: <a href=3D"https://www.xing.com/profil=
e/SimonP_Bolek" rel=3D"noreferrer" target=3D"_blank">https://www.xing.com/p=
rofile/SimonP_Bolek</a><br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; On Wed, Jul 13, 2016 at 1:36 AM, Khem Raj &l=
t;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; wrote:<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; On Tue, Jul 12, 2016 at 3:45 AM, Simon B=
olek<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &lt;<a href=3D"mailto:simon.bolek@google=
mail.com">simon.bolek@googlemail.com</a>&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; wrote:<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Hello everyone!<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; I am trying to install genericx86 c=
ore-image-sato (jethro)<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; HDDIMG to<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; an<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; atom-pc.<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; For this 2GB USB stick is used.<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; When choosing &#39;install&#39; opt=
ion from boot menu I get the message:<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; &quot;Searching for hard drives...<=
br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; No hard drive selected. Installatio=
n aborted.&quot;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Installatiion stops and i get the c=
onsole.<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; When I try to run fsck, it says: ca=
n&#39;t read &#39;/etc/fstab&#39;: No<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; such<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; file<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; or<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; directory<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; fdisk -l=C2=A0 shows only the parti=
tions of USB stick.<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; After I choose &#39;boot&#39; optio=
n to boot into live image, SDD drive<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; is<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; under<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; /dev/sdb and USB installation stick=
 under /dev/sda,<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; What recipe/package is my installat=
ion missing? The SSD hard<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; drive<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; is<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; not<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; recognized for some reason. With pr=
evious yocto releases this<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; package<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; list<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; DID work fine.<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; So there is something missing in th=
e background.<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Do you have any idea what this migh=
t be?<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; udev should have run and found your hdd.=
 So it seems its not<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; finding<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; it when running from initramfs. Can you =
try to add logs to<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; initramfs<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; and see what udev is doing ?<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Below is my package list from local=
.conf.<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; thank you and kind regards<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Simon :-)<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; EXTRA_IMAGE_FEATURES =3D &quot;debu=
g-tweaks ssh-server-openssh&quot;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; IMAGE_INSTALL_append =3D &quot; mak=
e \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 initscripts \<b=
r>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 grub \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 initramfs-boot =
\<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 syslinux \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 initramfs-live-=
install \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 initramfs-live-=
install-efi \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 initramfs-live-=
boot \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 xinit \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 xwininfo \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 openssh-sftp \<=
br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 openssh-sftp-se=
rver \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtbase-plugins =
\<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtconnectivity =
\<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtdeclarative \=
<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtdeclarative-p=
lugins \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtdeclarative-t=
ools \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtdeclarative-q=
mlplugins \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtenginio \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtlocation \<br=
>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtmultimedia \<=
br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtmultimedia-pl=
ugins \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtmultimedia-qm=
lplugins \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtsystems \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; &quot;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Viele Gr=C3=BCsse<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Simon Bolek :-)<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; mit freundlichem Gruss / kind regar=
ds / pozdrawiam<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Simon P. Bolek<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; -----------------------------------=
-------------------<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Dipl. Inf. Simon P. Bolek<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; SAP Integration Architect<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Business Mobile and IVI Solutions<b=
r>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; mailto: <a href=3D"mailto:simon.bol=
ek@arcom-ivi.de">simon.bolek@arcom-ivi.de</a><br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; <a href=3D"http://www.arcom-ivi.de/=
" rel=3D"noreferrer" target=3D"_blank">http://www.arcom-ivi.de/</a><br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; XING: <a href=3D"https://www.xing.c=
om/profile/SimonP_Bolek" rel=3D"noreferrer" target=3D"_blank">https://www.x=
ing.com/profile/SimonP_Bolek</a><br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; --<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; ___________________________________=
____________<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; yocto mailing list<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoprojec=
t.org">yocto@yoctoproject.org</a><br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; <a href=3D"https://lists.yoctoproje=
ct.org/listinfo/yocto" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/listinfo/yocto</a><br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div></div></div></div></div></div></di=
v></div></div></div></div>

--001a1140fab6a30f310537a8d53d--
