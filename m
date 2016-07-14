Return-Path: <simon.bolek@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E96DCE00D47; Thu, 14 Jul 2016 16:17:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (simon.bolek[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B96B3E00D47
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2016 16:17:17 -0700 (PDT)
Received: by mail-it0-f48.google.com with SMTP id h190so5653072ith.1
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2016 16:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Ix2Ot9RU+j0wJ4PCzO+foeYi8YvXzxgHapM7oEI+06Q=;
	b=HHG8lWzL4P7vv4RNqDcxfXcax3yQ4Gv6n2mZUtGtYiVmbiQU21bk/6oKx/h48NySr5
	W5Zogze6+3QbG53Xcqgw35HXHQtvKA0UaJtKuihrkHVpKuvx4sC3B2Jrj/bFJAftCC6V
	aZBUMUQqu888U+lXS6zhXVaP1/PFqewYC+ES57UvZR/ReRx4e65Au+SH57uh4/HqW1uf
	oinff51wPQ0dEw53XaCuzmcWTU1ruj6L0xyQIPUEMfB9HBI3eKOvjdghYS8CfaqEoX0d
	X2cLoKdIr6hbYhzXVIR0TC11sJTMHt92Z2KRKT0vheZHdIXZapShBo56Ilbcr+0+20OZ
	KcYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Ix2Ot9RU+j0wJ4PCzO+foeYi8YvXzxgHapM7oEI+06Q=;
	b=dFrHpXgbRxaDuVRNiwD/8KYe9sAtdZ0Qvg9X/K35MDCOMwmtnTzk4unLSYkLm8CxiT
	iDHy+xyFOg+n+bSB+lLDg4xybEvYdyWv1so2tpPYqPM1wEBBA+xf7FUQmheryI5EaJZQ
	GiTasy52YL668Yq/YpQEcLmAeYtG9ipBprLXM2K0ph+q6FoKOTx80bHXm6jbLfm2imie
	aR4hak2XvNwoXaNJIcQ8mQ1LVQR4Z04TDNLqQf0VSrn4MjauVFw1FBE3ZDVdkktiikmL
	FBRyfxL1e5V0ZNo+8gnqrKw1el+KnwgfjvRvq7CTgSbYUsQ7/XiVQoGlRr5FFy24jXan
	4N/w==
X-Gm-Message-State: ALyK8tJnHlc/Au1uDNQ2uXHgiGoJ7bC1uMC+aNbDIC9vxCnIxMpJgg1DnZ9qijNeclHHt45nVsrqV5gqIy8rww==
X-Received: by 10.36.103.210 with SMTP id u201mr2456760itc.45.1468538237203;
	Thu, 14 Jul 2016 16:17:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.55.135 with HTTP; Thu, 14 Jul 2016 16:16:57 -0700 (PDT)
In-Reply-To: <CAEfap_ATPbqdD9H6gYikvs+Afa6XhxvbC-DU9-v-sUzhCANE9Q@mail.gmail.com>
References: <CAEfap_CAJpEnc6xWUbcYUkMx2CRa2HVT+FOBXy+rYb67jv16gw@mail.gmail.com>
	<CAMKF1soyZBMzFUo0FLgk3Hb69PfMGiyQ7TNqsDBdVdHz7UNX8w@mail.gmail.com>
	<CAEfap_BV6LRYUyG3u9oLDvXrpy9ztgVM-UaPNSHo9i1xbNj24w@mail.gmail.com>
	<CAMKF1sqGSWkd-aTcY3fNk=88iL8BW5ihGnvSy14bCiSfeVUvzw@mail.gmail.com>
	<CAEfap_BpFoi66j9PJO=PiZURULiivtR0Z6yCSedebLgTvzcY0g@mail.gmail.com>
	<CAEfap_DQrSiDkDrBH7T7Ecez5R2D-KM_V+Lnm2nombozFBKF4w@mail.gmail.com>
	<CAMKF1srjRAkFueO5A-dXy-E+n4PjpcZM57xF=BbU7P7NJH4csg@mail.gmail.com>
	<CAEfap_ATPbqdD9H6gYikvs+Afa6XhxvbC-DU9-v-sUzhCANE9Q@mail.gmail.com>
From: Simon Bolek <simon.bolek@googlemail.com>
Date: Fri, 15 Jul 2016 01:16:57 +0200
Message-ID: <CAEfap_BDcUGfDEViXOQ6TiT16bcsxOjUBCsd5xaKEOpr_+EJPQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 14 Jul 2016 23:17:21 -0000
Content-Type: multipart/alternative; boundary=001a114ac808f7bed00537a0b33e

--001a114ac808f7bed00537a0b33e
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Raj,

About depmod again.
Should it be run from meta/classes/kernel.bbclass  ?
...
pkg_postinst_kernel-base () {
    if [ ! -e "$D/lib/modules/${KERNEL_VERSION}" ]; then
        mkdir -p $D/lib/modules/${KERNEL_VERSION}
    fi
    if [ -n "$D" ]; then
        depmodwrapper -a -b $D ${KERNEL_VERSION}
    else
        depmod -a ${KERNEL_VERSION}
    fi
}
...

Where is this function beeing called?
I did not find it anywhere.
thanks and kind regards
Simon :-)

On Thu, Jul 14, 2016 at 8:32 AM, Simon Bolek <simon.bolek@googlemail.com>
wrote:

>
> On Wed, Jul 13, 2016 at 4:56 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Wed, Jul 13, 2016 at 4:57 AM, Simon Bolek <simon.bolek@googlemail.com=
>
>> wrote:
>> > Hi Raj,
>> >
>> > So i tried to do manually, what init script does and udev definitely
>> does
>> > not recognize the SSD drive.
>> > I ran
>> >  /lib/udev/udevd --daemon --debug > udev.debug 2>&1 &
>> > from the cli and there is no trace of recognizing the SSD. Only the
>> > /dev/sda, which is the USB stick I am running the installation from.
>> >
>> > I used 'meld' to compare the /initrd from current jethro image and
>> previous
>> > working fido image.
>> > They are almost the same:
>> > - in jethro /lib/modules... file structure is missing with:
>> > modules.alias
>> > modules.alias.bin
>> > modules.builtin.bin
>> > modules.dep
>> > modules.dep.bin
>> > modules.devname
>> > modules.softdep
>> > modules.symbols
>> > modules.symbols.bin
>>
>> this means depmod did not run during initramfs image creation
>>
> How can I make this happen during bitbake, so i have those files in the
> HDDIMG?
>
>
>> >
>> > - there are slight differences between
>> > /etc/init.d/udev
>> > /etc/udev/scripts/mount.sh
>> > , but I cannot tell, if this is the reason.
>>
>> what are the differences ?
>>
>
> Sorry for this patch-like copy/paste, but this was the simplest way of
> presenting the changes.
> Do you see something important here, that might cause the SDD not beeing
> recognized?
>
> --- /home/simon/Development/Yocto-Project/initrd-ok/etc/init.d/udev
> +++ /home/simon/Development/Yocto-Project/initrd-jethro/etc/init.d/udev
> @@ -14,20 +14,27 @@
>  [ -d /sys/class ] || exit 1
>  [ -r /proc/mounts ] || exit 1
>  [ -x /lib/udev/udevd ] || exit 1
> +SYSCONF_CACHED=3D"/etc/udev/cache.data"
> +SYSCONF_TMP=3D"/dev/shm/udev.cache"
> +DEVCACHE_REGEN=3D"/dev/shm/udev-regen" # create to request cache regen
> +
> +# A list of files which are used as a criteria to judge whether the udev
> cache could be reused.
> +CMP_FILE_LIST=3D"/proc/version /proc/cmdline /proc/devices"
> +[ -f /proc/atags ] && CMP_FILE_LIST=3D"$CMP_FILE_LIST /proc/atags"
> +
> +# List of files whose metadata (size/mtime/name) will be included in
> cached
> +# system state.
> +META_FILE_LIST=3D"lib/udev/rules.d/* etc/udev/rules.d/*"
> +
> +# Command to compute system configuration.
> +sysconf_cmd () {
> +    cat -- $CMP_FILE_LIST
> +    stat -c '%s %Y %n' -- $META_FILE_LIST | awk -F/ '{print $1 " " $NF;}=
'
> +}
> +
>  [ -f /etc/default/udev-cache ] && . /etc/default/udev-cache
>  [ -f /etc/udev/udev.conf ] && . /etc/udev/udev.conf
>  [ -f /etc/default/rcS ] && . /etc/default/rcS
> -
> -readfiles () {
> -   READDATA=3D""
> -   for filename in $@; do
> -       if [ -r $filename ]; then
> -           while read line; do
> -               READDATA=3D"$READDATA$line"
> -           done < $filename
> -       fi
> -   done
> -}
>
>  kill_udevd () {
>      pid=3D`pidof -x udevd`
> @@ -57,38 +64,35 @@
>      # the automount rule for udev needs /tmp directory available, as /tm=
p
> is a symlink
>      # to /var/tmp which in turn is a symlink to /var/volatile/tmp, we
> need to make sure
>      # /var/volatile/tmp directory to be available.
> -    mkdir -p /var/volatile/tmp
> +    mkdir -m 1777 -p /var/volatile/tmp
>
>      # Cache handling.
> -    # A list of files which are used as a criteria to judge whether the
> udev cache could be reused.
> -    CMP_FILE_LIST=3D"/proc/version /proc/cmdline /proc/devices /proc/ata=
gs"
>      if [ "$DEVCACHE" !=3D "" ]; then
>              if [ -e $DEVCACHE ]; then
> -            readfiles $CMP_FILE_LIST
> -            NEWDATA=3D"$READDATA"
> -            readfiles /etc/udev/cache.data
> -            OLDDATA=3D"$READDATA"
> -            if [ "$OLDDATA" =3D "$NEWDATA" ]; then
> -                            (cd /; tar xf $DEVCACHE > /dev/null 2>&1)
> +            sysconf_cmd > "$SYSCONF_TMP"
> +            if cmp $SYSCONF_CACHED $SYSCONF_TMP >/dev/null; then
> +                            tar xmf $DEVCACHE -C / -m
>                              not_first_boot=3D1
>                              [ "$VERBOSE" !=3D "no" ] && echo "udev: usin=
g
> cache file $DEVCACHE"
> -                            [ -e /dev/shm/udev.cache ] && rm -f
> /dev/shm/udev.cache
> +                            [ -e $SYSCONF_TMP ] && rm -f "$SYSCONF_TMP"
> +                            [ -e "$DEVCACHE_REGEN" ] && rm -f
> "$DEVCACHE_REGEN"
>                      else
>                  # Output detailed reason why the cached /dev is not used
> -                if [ "$VERBOSE" !=3D "no" ]; then
> -                    echo "udev: udev cache not used"
> -                    echo "udev: we use $CMP_FILE_LIST as criteria to
> judge whether the cache /dev could be resued"
> -                    echo "udev: olddata: $OLDDATA"
> -                    echo "udev: newdata: $NEWDATA"
> -                fi
> -                echo "$NEWDATA" > /dev/shm/udev.cache
> +                cat <<EOF
> +udev: Not using udev cache because of changes detected in the following
> files:
> +udev:     $CMP_FILE_LIST
> +udev:     $META_FILE_LIST
> +udev: The udev cache will be regenerated. To identify the detected
> changes,
> +udev: compare the cached sysconf at   $SYSCONF_CACHED
> +udev: against the current sysconf at  $SYSCONF_TMP
> +EOF
> +                touch "$DEVCACHE_REGEN"
>                      fi
>          else
>              if [ "$ROOTFS_READ_ONLY" !=3D "yes" ]; then
>                  # If rootfs is not read-only, it's possible that a new
> udev cache would be generated;
>                  # otherwise, we do not bother to read files.
> -                readfiles $CMP_FILE_LIST
> -                echo "$READDATA" > /dev/shm/udev.cache
> +                touch "$DEVCACHE_REGEN"
>              fi
>              fi
>      fi
> @@ -97,7 +101,7 @@
>      kill_udevd > "/dev/null" 2>&1
>
>      # trigger the sorted events
> -    echo -e '\000\000\000\000' > /proc/sys/kernel/hotplug
> +    [ -e /proc/sys/kernel/hotplug ] && echo -e '\000'
> >/proc/sys/kernel/hotplug
>      /lib/udev/udevd -d
>
>      udevadm control --env=3DSTARTUP=3D1
>
>
>
>> >
>> > Unfortunately I did not dig inside binary /lib/udev/udevd.
>> >
>> > So do you have any other ideas, what might be the reason for not
>> recognizing
>> > the SSD? Maybe there are some additional recipes needed from jethro on=
?
>> >
>> >
>> > thanks & kind regards
>> > Simon :-)
>> >
>> > mit freundlichem Gruss / kind regards / pozdrawiam
>> > Simon P. Bolek
>> > ------------------------------------------------------
>> > Dipl. Inf. Simon P. Bolek
>> > SAP Integration Architect
>> > Business Mobile and IVI Solutions
>> > mailto: simon.bolek@arcom-ivi.de
>> > http://www.arcom-ivi.de/
>> > XING: https://www.xing.com/profile/SimonP_Bolek
>> >
>> > On Wed, Jul 13, 2016 at 9:03 AM, Simon Bolek <
>> simon.bolek@googlemail.com>
>> > wrote:
>> >>
>> >> Thank you,
>> >>
>> >> I just guess, that it is the following function in init script to put
>> the
>> >> echos to? Is it?
>> >>
>> >> udev_daemon() {
>> >>     OPTIONS=3D"/sbin/udev/udevd /sbin/udevd /lib/udev/udevd
>> >> /lib/systemd/systemd-udevd"
>> >>
>> >>     for o in $OPTIONS; do
>> >>         if [ -x "$o" ]; then
>> >>             echo $o
>> >>             return 0
>> >>         fi
>> >>     done
>> >>
>> >>     return 1
>> >> }
>> >>
>> >>
>> >> cheers
>> >> Simon:-)
>> >>
>> >> Viele Gr=C3=BCsse
>> >> Simon Bolek :-)
>> >>
>> >> mit freundlichem Gruss / kind regards / pozdrawiam
>> >> Simon P. Bolek
>> >> ------------------------------------------------------
>> >> Dipl. Inf. Simon P. Bolek
>> >> SAP Integration Architect
>> >> Business Mobile and IVI Solutions
>> >> mailto: simon.bolek@arcom-ivi.de
>> >> http://www.arcom-ivi.de/
>> >> XING: https://www.xing.com/profile/SimonP_Bolek
>> >>
>> >> On Wed, Jul 13, 2016 at 8:36 AM, Khem Raj <raj.khem@gmail.com> wrote:
>> >>>
>> >>> On Tue, Jul 12, 2016 at 11:28 PM, Simon Bolek
>> >>> <simon.bolek@googlemail.com> wrote:
>> >>> > Thank you Raj,
>> >>> >
>> >>> > Is there a standard way to activate these initramfs logs, or do I
>> have
>> >>> > to
>> >>> > implement it myself somewhere?
>> >>>
>> >>> you have to add printf etc. yourself into the init script in initram=
fs
>> >>> image
>> >>>
>> >>> >
>> >>> > thank you and kind regards
>> >>> > Simon :-)
>> >>> >
>> >>> > Viele Gr=C3=BCsse
>> >>> > Simon Bolek :-)
>> >>> >
>> >>> > mit freundlichem Gruss / kind regards / pozdrawiam
>> >>> > Simon P. Bolek
>> >>> > ------------------------------------------------------
>> >>> > Dipl. Inf. Simon P. Bolek
>> >>> > SAP Integration Architect
>> >>> > Business Mobile and IVI Solutions
>> >>> > mailto: simon.bolek@arcom-ivi.de
>> >>> > http://www.arcom-ivi.de/
>> >>> > XING: https://www.xing.com/profile/SimonP_Bolek
>> >>> >
>> >>> > On Wed, Jul 13, 2016 at 1:36 AM, Khem Raj <raj.khem@gmail.com>
>> wrote:
>> >>> >>
>> >>> >> On Tue, Jul 12, 2016 at 3:45 AM, Simon Bolek
>> >>> >> <simon.bolek@googlemail.com>
>> >>> >> wrote:
>> >>> >> > Hello everyone!
>> >>> >> >
>> >>> >> > I am trying to install genericx86 core-image-sato (jethro)
>> HDDIMG to
>> >>> >> > an
>> >>> >> > atom-pc.
>> >>> >> > For this 2GB USB stick is used.
>> >>> >> > When choosing 'install' option from boot menu I get the message=
:
>> >>> >> >
>> >>> >> > "Searching for hard drives...
>> >>> >> > No hard drive selected. Installation aborted."
>> >>> >> >
>> >>> >> > Installatiion stops and i get the console.
>> >>> >> > When I try to run fsck, it says: can't read '/etc/fstab': No su=
ch
>> >>> >> > file
>> >>> >> > or
>> >>> >> > directory
>> >>> >> >
>> >>> >> > fdisk -l  shows only the partitions of USB stick.
>> >>> >> >
>> >>> >> > After I choose 'boot' option to boot into live image, SDD drive
>> is
>> >>> >> > under
>> >>> >> > /dev/sdb and USB installation stick under /dev/sda,
>> >>> >> >
>> >>> >> > What recipe/package is my installation missing? The SSD hard
>> drive
>> >>> >> > is
>> >>> >> > not
>> >>> >> > recognized for some reason. With previous yocto releases this
>> >>> >> > package
>> >>> >> > list
>> >>> >> > DID work fine.
>> >>> >> > So there is something missing in the background.
>> >>> >> > Do you have any idea what this might be?
>> >>> >>
>> >>> >> udev should have run and found your hdd. So it seems its not
>> finding
>> >>> >> it when running from initramfs. Can you try to add logs to
>> initramfs
>> >>> >> and see what udev is doing ?
>> >>> >>
>> >>> >> >
>> >>> >> > Below is my package list from local.conf.
>> >>> >> >
>> >>> >> > thank you and kind regards
>> >>> >> > Simon :-)
>> >>> >> >
>> >>> >> > EXTRA_IMAGE_FEATURES =3D "debug-tweaks ssh-server-openssh"
>> >>> >> > IMAGE_INSTALL_append =3D " make \
>> >>> >> >      initscripts \
>> >>> >> >      grub \
>> >>> >> >      initramfs-boot \
>> >>> >> >      syslinux \
>> >>> >> >      initramfs-live-install \
>> >>> >> >      initramfs-live-install-efi \
>> >>> >> >      initramfs-live-boot \
>> >>> >> >      xinit \
>> >>> >> >      xwininfo \
>> >>> >> >      openssh-sftp \
>> >>> >> >      openssh-sftp-server \
>> >>> >> >      qtbase-plugins \
>> >>> >> >      qtconnectivity \
>> >>> >> >      qtdeclarative \
>> >>> >> >      qtdeclarative-plugins \
>> >>> >> >      qtdeclarative-tools \
>> >>> >> >      qtdeclarative-qmlplugins \
>> >>> >> >      qtenginio \
>> >>> >> >      qtlocation \
>> >>> >> >      qtmultimedia \
>> >>> >> >      qtmultimedia-plugins \
>> >>> >> >      qtmultimedia-qmlplugins \
>> >>> >> >      qtsystems \
>> >>> >> > "
>> >>> >> >
>> >>> >> > Viele Gr=C3=BCsse
>> >>> >> > Simon Bolek :-)
>> >>> >> >
>> >>> >> > mit freundlichem Gruss / kind regards / pozdrawiam
>> >>> >> > Simon P. Bolek
>> >>> >> > ------------------------------------------------------
>> >>> >> > Dipl. Inf. Simon P. Bolek
>> >>> >> > SAP Integration Architect
>> >>> >> > Business Mobile and IVI Solutions
>> >>> >> > mailto: simon.bolek@arcom-ivi.de
>> >>> >> > http://www.arcom-ivi.de/
>> >>> >> > XING: https://www.xing.com/profile/SimonP_Bolek
>> >>> >> >
>> >>> >> > --
>> >>> >> > _______________________________________________
>> >>> >> > yocto mailing list
>> >>> >> > yocto@yoctoproject.org
>> >>> >> > https://lists.yoctoproject.org/listinfo/yocto
>> >>> >> >
>> >>> >
>> >>> >
>> >>
>> >>
>> >
>>
>
>

--001a114ac808f7bed00537a0b33e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hi Raj, <br><br></div>About =
depmod again. <br></div>Should it be run from meta/classes/kernel.bbclass=
=C2=A0 ?<br>...<br>pkg_postinst_kernel-base () {<br>=C2=A0=C2=A0=C2=A0 if [=
 ! -e &quot;$D/lib/modules/${KERNEL_VERSION}&quot; ]; then<br>=C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 mkdir -p $D/lib/modules/${KERNEL_VERSION}<br>=C2=
=A0=C2=A0=C2=A0 fi<br>=C2=A0=C2=A0=C2=A0 if [ -n &quot;$D&quot; ]; then<br>=
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 depmodwrapper -a -b $D ${KERNEL_VERSI=
ON}<br>=C2=A0=C2=A0=C2=A0 else<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 dep=
mod -a ${KERNEL_VERSION}<br>=C2=A0=C2=A0=C2=A0 fi<br>}<br>...<br><br></div>=
Where is this function beeing called?<br></div>I did not find it anywhere.<=
br></div>thanks and kind regards<br></div>Simon :-)<br><div><div><div><div>=
<div><div><div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On=
 Thu, Jul 14, 2016 at 8:32 AM, Simon Bolek <span dir=3D"ltr">&lt;<a href=3D=
"mailto:simon.bolek@googlemail.com" target=3D"_blank">simon.bolek@googlemai=
l.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_q=
uote"><span class=3D"">On Wed, Jul 13, 2016 at 4:56 PM, Khem Raj <span dir=
=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.kh=
em@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><span>On Wed, Jul 13, 2016 at 4:57 AM, Simon Bolek &lt;<a href=
=3D"mailto:simon.bolek@googlemail.com" target=3D"_blank">simon.bolek@google=
mail.com</a>&gt; wrote:<br>
&gt; Hi Raj,<br>
&gt;<br>
&gt; So i tried to do manually, what init script does and udev definitely d=
oes<br>
&gt; not recognize the SSD drive.<br>
&gt; I ran<br>
&gt;=C2=A0 /lib/udev/udevd --daemon --debug &gt; udev.debug 2&gt;&amp;1 &am=
p;<br>
&gt; from the cli and there is no trace of recognizing the SSD. Only the<br=
>
&gt; /dev/sda, which is the USB stick I am running the installation from.<b=
r>
&gt;<br>
&gt; I used &#39;meld&#39; to compare the /initrd from current jethro image=
 and previous<br>
&gt; working fido image.<br>
&gt; They are almost the same:<br>
&gt; - in jethro /lib/modules... file structure is missing with:<br>
&gt; modules.alias<br>
&gt; modules.alias.bin<br>
&gt; modules.builtin.bin<br>
&gt; modules.dep<br>
&gt; modules.dep.bin<br>
&gt; modules.devname<br>
&gt; modules.softdep<br>
&gt; modules.symbols<br>
&gt; modules.symbols.bin<br>
<br>
</span>this means depmod did not run during initramfs image creation<br></b=
lockquote></span><div>How can I make this happen during bitbake, so i have =
those files in the HDDIMG?<br><br></div><span class=3D""><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
<span><br>
&gt;<br>
&gt; - there are slight differences between<br>
&gt; /etc/init.d/udev<br>
&gt; /etc/udev/scripts/mount.sh<br>
&gt; , but I cannot tell, if this is the reason.<br>
<br>
</span>what are the differences ?<br></blockquote><div><br></div></span><di=
v>Sorry for this patch-like copy/paste, but this was the simplest way of pr=
esenting the changes. <br>Do you see something important here, that might c=
ause the SDD not beeing recognized?<br></div><div><br>--- /home/simon/Devel=
opment/Yocto-Project/initrd-ok/etc/init.d/udev<br>+++ /home/simon/Developme=
nt/Yocto-Project/initrd-jethro/etc/init.d/udev<br>@@ -14,20 +14,27 @@<br>=
=C2=A0[ -d /sys/class ] || exit 1<br>=C2=A0[ -r /proc/mounts ] || exit 1<br=
>=C2=A0[ -x /lib/udev/udevd ] || exit 1<br>+SYSCONF_CACHED=3D&quot;/etc/ude=
v/cache.data&quot;<br>+SYSCONF_TMP=3D&quot;/dev/shm/udev.cache&quot;<br>+DE=
VCACHE_REGEN=3D&quot;/dev/shm/udev-regen&quot; # create to request cache re=
gen<br>+<br>+# A list of files which are used as a criteria to judge whethe=
r the udev cache could be reused.<br>+CMP_FILE_LIST=3D&quot;/proc/version /=
proc/cmdline /proc/devices&quot;<br>+[ -f /proc/atags ] &amp;&amp; CMP_FILE=
_LIST=3D&quot;$CMP_FILE_LIST /proc/atags&quot;<br>+<br>+# List of files who=
se metadata (size/mtime/name) will be included in cached<br>+# system state=
.<br>+META_FILE_LIST=3D&quot;lib/udev/rules.d/* etc/udev/rules.d/*&quot;<br=
>+<br>+# Command to compute system configuration.<br>+sysconf_cmd () {<br>+=
=C2=A0=C2=A0=C2=A0 cat -- $CMP_FILE_LIST<br>+=C2=A0=C2=A0=C2=A0 stat -c &#3=
9;%s %Y %n&#39; -- $META_FILE_LIST | awk -F/ &#39;{print $1 &quot; &quot; $=
NF;}&#39;<br>+}<br>+<br>=C2=A0[ -f /etc/default/udev-cache ] &amp;&amp; . /=
etc/default/udev-cache<br>=C2=A0[ -f /etc/udev/udev.conf ] &amp;&amp; . /et=
c/udev/udev.conf<br>=C2=A0[ -f /etc/default/rcS ] &amp;&amp; . /etc/default=
/rcS<br>-<br>-readfiles () {<br>-=C2=A0=C2=A0 READDATA=3D&quot;&quot;<br>-=
=C2=A0=C2=A0 for filename in $@; do<br>-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0 if =
[ -r $filename ]; then<br>-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=
=A0 while read line; do<br>-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0 READDATA=3D&quot;$READDATA$line&quot;<br>-=C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0 done &lt; $filename<br>-=C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0 fi<br>-=C2=A0=C2=A0 done<br>-}<br>=C2=A0<br>=C2=A0ki=
ll_udevd () {<br>=C2=A0=C2=A0=C2=A0=C2=A0 pid=3D`pidof -x udevd`<br>@@ -57,=
38 +64,35 @@<br>=C2=A0=C2=A0=C2=A0=C2=A0 # the automount rule for udev need=
s /tmp directory available, as /tmp is a symlink<br>=C2=A0=C2=A0=C2=A0=C2=
=A0 # to /var/tmp which in turn is a symlink to /var/volatile/tmp, we need =
to make sure<br>=C2=A0=C2=A0=C2=A0=C2=A0 # /var/volatile/tmp directory to b=
e available.<br>-=C2=A0=C2=A0=C2=A0 mkdir -p /var/volatile/tmp<br>+=C2=A0=
=C2=A0=C2=A0 mkdir -m 1777 -p /var/volatile/tmp<br>=C2=A0<br>=C2=A0=C2=A0=
=C2=A0=C2=A0 # Cache handling.<br>-=C2=A0=C2=A0=C2=A0 # A list of files whi=
ch are used as a criteria to judge whether the udev cache could be reused.<=
br>-=C2=A0=C2=A0=C2=A0 CMP_FILE_LIST=3D&quot;/proc/version /proc/cmdline /p=
roc/devices /proc/atags&quot;<br>=C2=A0=C2=A0=C2=A0=C2=A0 if [ &quot;$DEVCA=
CHE&quot; !=3D &quot;&quot; ]; then<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if [ -e $DEVCACHE ]; then<br>-=C2=A0=
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 readfiles $CMP_FILE_LIST=
<br>-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 NEWDATA=3D&qu=
ot;$READDATA&quot;<br>-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 readfiles /etc/udev/cache.data<br>-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 OLDDATA=3D&quot;$READDATA&quot;<br>-=C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if [ &quot;$OLDDATA&quot; =3D =
&quot;$NEWDATA&quot; ]; then<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (cd /; tar xf $DEVCACHE &gt; =
/dev/null 2&gt;&amp;1)<br>+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=
=A0=C2=A0 sysconf_cmd &gt; &quot;$SYSCONF_TMP&quot;<br>+=C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if cmp $SYSCONF_CACHED $SYSCONF_TMP &=
gt;/dev/null; then<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tar xmf $DEVCACHE -C / -m<br>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 not_first_boot=3D1<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 [ &quot;$VERBOSE&quot; =
!=3D &quot;no&quot; ] &amp;&amp; echo &quot;udev: using cache file $DEVCACH=
E&quot;<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 [ -e /dev/shm/udev.cache ] &amp;&amp; rm -f /dev/s=
hm/udev.cache<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 [ -e $SYSCONF_TMP ] &amp;&amp; rm -f &quot;$=
SYSCONF_TMP&quot;<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 [ -e &quot;$DEVCACHE_REGEN&quot; ] &am=
p;&amp; rm -f &quot;$DEVCACHE_REGEN&quot;<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 else<br>=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 # Output detailed reason why the cached /de=
v is not used<br>-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0 if [ &quot;$VERBOSE&quot; !=3D &quot;no&quot; ]; then<br=
>-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0=C2=A0 echo &quot;udev: udev cache not used&quot;<br>-=C2=
=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0 echo &quot;udev: we use $CMP_FILE_LIST as criteria to ju=
dge whether the cache /dev could be resued&quot;<br>-=C2=A0=C2=A0=C2=A0 =C2=
=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ec=
ho &quot;udev: olddata: $OLDDATA&quot;<br>-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 echo &quot;=
udev: newdata: $NEWDATA&quot;<br>-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=
=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 fi<br>-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 echo &quot;$NEWDATA&quot; &gt;=
 /dev/shm/udev.cache<br>+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 cat &lt;&lt;EOF<br>+udev: Not using udev cache be=
cause of changes detected in the following files:<br>+udev:=C2=A0=C2=A0=C2=
=A0=C2=A0 $CMP_FILE_LIST<br>+udev:=C2=A0=C2=A0=C2=A0=C2=A0 $META_FILE_LIST<=
br>+udev: The udev cache will be regenerated. To identify the detected chan=
ges,<br>+udev: compare the cached sysconf at=C2=A0=C2=A0 $SYSCONF_CACHED<br=
>+udev: against the current sysconf at=C2=A0 $SYSCONF_TMP<br>+EOF<br>+=C2=
=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 to=
uch &quot;$DEVCACHE_REGEN&quot;<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 fi<br>=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 else<br>=C2=A0=C2=
=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if [ &quot;$ROOTFS_RE=
AD_ONLY&quot; !=3D &quot;yes&quot; ]; then<br>=C2=A0=C2=A0=C2=A0=C2=A0 =C2=
=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 # If rootfs is not re=
ad-only, it&#39;s possible that a new udev cache would be generated;<br>=C2=
=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 # otherwise, we do not bother to read files.<br>-=C2=A0=C2=A0=C2=A0 =C2=
=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 readfiles $CMP_FILE_L=
IST<br>-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=
=A0=C2=A0 echo &quot;$READDATA&quot; &gt; /dev/shm/udev.cache<br>+=C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 touch &q=
uot;$DEVCACHE_REGEN&quot;<br>=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0 fi<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 fi<br>=C2=A0=C2=A0=C2=A0=C2=A0 fi<br>@@ -97,7 +101=
,7 @@<br>=C2=A0=C2=A0=C2=A0=C2=A0 kill_udevd &gt; &quot;/dev/null&quot; 2&g=
t;&amp;1<br>=C2=A0<br>=C2=A0=C2=A0=C2=A0=C2=A0 # trigger the sorted events<=
br>-=C2=A0=C2=A0=C2=A0 echo -e &#39;\000\000\000\000&#39; &gt; /proc/sys/ke=
rnel/hotplug<br>+=C2=A0=C2=A0=C2=A0 [ -e /proc/sys/kernel/hotplug ] &amp;&a=
mp; echo -e &#39;\000&#39; &gt;/proc/sys/kernel/hotplug<br>=C2=A0=C2=A0=C2=
=A0=C2=A0 /lib/udev/udevd -d<br>=C2=A0<br>=C2=A0=C2=A0=C2=A0=C2=A0 udevadm =
control --env=3DSTARTUP=3D1<br><br>=C2=A0</div><div><div class=3D"h5"><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">
<div><div>&gt;<br>
&gt; Unfortunately I did not dig inside binary /lib/udev/udevd.<br>
&gt;<br>
&gt; So do you have any other ideas, what might be the reason for not recog=
nizing<br>
&gt; the SSD? Maybe there are some additional recipes needed from jethro on=
?<br>
&gt;<br>
&gt;<br>
&gt; thanks &amp; kind regards<br>
&gt; Simon :-)<br>
&gt;<br>
&gt; mit freundlichem Gruss / kind regards / pozdrawiam<br>
&gt; Simon P. Bolek<br>
&gt; ------------------------------------------------------<br>
&gt; Dipl. Inf. Simon P. Bolek<br>
&gt; SAP Integration Architect<br>
&gt; Business Mobile and IVI Solutions<br>
&gt; mailto: <a href=3D"mailto:simon.bolek@arcom-ivi.de" target=3D"_blank">=
simon.bolek@arcom-ivi.de</a><br>
&gt; <a href=3D"http://www.arcom-ivi.de/" rel=3D"noreferrer" target=3D"_bla=
nk">http://www.arcom-ivi.de/</a><br>
&gt; XING: <a href=3D"https://www.xing.com/profile/SimonP_Bolek" rel=3D"nor=
eferrer" target=3D"_blank">https://www.xing.com/profile/SimonP_Bolek</a><br=
>
&gt;<br>
&gt; On Wed, Jul 13, 2016 at 9:03 AM, Simon Bolek &lt;<a href=3D"mailto:sim=
on.bolek@googlemail.com" target=3D"_blank">simon.bolek@googlemail.com</a>&g=
t;<br>
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Thank you,<br>
&gt;&gt;<br>
&gt;&gt; I just guess, that it is the following function in init script to =
put the<br>
&gt;&gt; echos to? Is it?<br>
&gt;&gt;<br>
&gt;&gt; udev_daemon() {<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0OPTIONS=3D&quot;/sbin/udev/udevd /sbin/udevd /l=
ib/udev/udevd<br>
&gt;&gt; /lib/systemd/systemd-udevd&quot;<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0for o in $OPTIONS; do<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if [ -x &quot;$o&quot; ]; then<br=
>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0echo $o<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 0<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0done<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0return 1<br>
&gt;&gt; }<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; cheers<br>
&gt;&gt; Simon:-)<br>
&gt;&gt;<br>
&gt;&gt; Viele Gr=C3=BCsse<br>
&gt;&gt; Simon Bolek :-)<br>
&gt;&gt;<br>
&gt;&gt; mit freundlichem Gruss / kind regards / pozdrawiam<br>
&gt;&gt; Simon P. Bolek<br>
&gt;&gt; ------------------------------------------------------<br>
&gt;&gt; Dipl. Inf. Simon P. Bolek<br>
&gt;&gt; SAP Integration Architect<br>
&gt;&gt; Business Mobile and IVI Solutions<br>
&gt;&gt; mailto: <a href=3D"mailto:simon.bolek@arcom-ivi.de" target=3D"_bla=
nk">simon.bolek@arcom-ivi.de</a><br>
&gt;&gt; <a href=3D"http://www.arcom-ivi.de/" rel=3D"noreferrer" target=3D"=
_blank">http://www.arcom-ivi.de/</a><br>
&gt;&gt; XING: <a href=3D"https://www.xing.com/profile/SimonP_Bolek" rel=3D=
"noreferrer" target=3D"_blank">https://www.xing.com/profile/SimonP_Bolek</a=
><br>
&gt;&gt;<br>
&gt;&gt; On Wed, Jul 13, 2016 at 8:36 AM, Khem Raj &lt;<a href=3D"mailto:ra=
j.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Tue, Jul 12, 2016 at 11:28 PM, Simon Bolek<br>
&gt;&gt;&gt; &lt;<a href=3D"mailto:simon.bolek@googlemail.com" target=3D"_b=
lank">simon.bolek@googlemail.com</a>&gt; wrote:<br>
&gt;&gt;&gt; &gt; Thank you Raj,<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Is there a standard way to activate these initramfs logs,=
 or do I have<br>
&gt;&gt;&gt; &gt; to<br>
&gt;&gt;&gt; &gt; implement it myself somewhere?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; you have to add printf etc. yourself into the init script in i=
nitramfs<br>
&gt;&gt;&gt; image<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; thank you and kind regards<br>
&gt;&gt;&gt; &gt; Simon :-)<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Viele Gr=C3=BCsse<br>
&gt;&gt;&gt; &gt; Simon Bolek :-)<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; mit freundlichem Gruss / kind regards / pozdrawiam<br>
&gt;&gt;&gt; &gt; Simon P. Bolek<br>
&gt;&gt;&gt; &gt; ------------------------------------------------------<br=
>
&gt;&gt;&gt; &gt; Dipl. Inf. Simon P. Bolek<br>
&gt;&gt;&gt; &gt; SAP Integration Architect<br>
&gt;&gt;&gt; &gt; Business Mobile and IVI Solutions<br>
&gt;&gt;&gt; &gt; mailto: <a href=3D"mailto:simon.bolek@arcom-ivi.de" targe=
t=3D"_blank">simon.bolek@arcom-ivi.de</a><br>
&gt;&gt;&gt; &gt; <a href=3D"http://www.arcom-ivi.de/" rel=3D"noreferrer" t=
arget=3D"_blank">http://www.arcom-ivi.de/</a><br>
&gt;&gt;&gt; &gt; XING: <a href=3D"https://www.xing.com/profile/SimonP_Bole=
k" rel=3D"noreferrer" target=3D"_blank">https://www.xing.com/profile/SimonP=
_Bolek</a><br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; On Wed, Jul 13, 2016 at 1:36 AM, Khem Raj &lt;<a href=3D"=
mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wro=
te:<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; On Tue, Jul 12, 2016 at 3:45 AM, Simon Bolek<br>
&gt;&gt;&gt; &gt;&gt; &lt;<a href=3D"mailto:simon.bolek@googlemail.com" tar=
get=3D"_blank">simon.bolek@googlemail.com</a>&gt;<br>
&gt;&gt;&gt; &gt;&gt; wrote:<br>
&gt;&gt;&gt; &gt;&gt; &gt; Hello everyone!<br>
&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt; I am trying to install genericx86 core-image-sat=
o (jethro) HDDIMG to<br>
&gt;&gt;&gt; &gt;&gt; &gt; an<br>
&gt;&gt;&gt; &gt;&gt; &gt; atom-pc.<br>
&gt;&gt;&gt; &gt;&gt; &gt; For this 2GB USB stick is used.<br>
&gt;&gt;&gt; &gt;&gt; &gt; When choosing &#39;install&#39; option from boot=
 menu I get the message:<br>
&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt; &quot;Searching for hard drives...<br>
&gt;&gt;&gt; &gt;&gt; &gt; No hard drive selected. Installation aborted.&qu=
ot;<br>
&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt; Installatiion stops and i get the console.<br>
&gt;&gt;&gt; &gt;&gt; &gt; When I try to run fsck, it says: can&#39;t read =
&#39;/etc/fstab&#39;: No such<br>
&gt;&gt;&gt; &gt;&gt; &gt; file<br>
&gt;&gt;&gt; &gt;&gt; &gt; or<br>
&gt;&gt;&gt; &gt;&gt; &gt; directory<br>
&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt; fdisk -l=C2=A0 shows only the partitions of USB =
stick.<br>
&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt; After I choose &#39;boot&#39; option to boot int=
o live image, SDD drive is<br>
&gt;&gt;&gt; &gt;&gt; &gt; under<br>
&gt;&gt;&gt; &gt;&gt; &gt; /dev/sdb and USB installation stick under /dev/s=
da,<br>
&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt; What recipe/package is my installation missing? =
The SSD hard drive<br>
&gt;&gt;&gt; &gt;&gt; &gt; is<br>
&gt;&gt;&gt; &gt;&gt; &gt; not<br>
&gt;&gt;&gt; &gt;&gt; &gt; recognized for some reason. With previous yocto =
releases this<br>
&gt;&gt;&gt; &gt;&gt; &gt; package<br>
&gt;&gt;&gt; &gt;&gt; &gt; list<br>
&gt;&gt;&gt; &gt;&gt; &gt; DID work fine.<br>
&gt;&gt;&gt; &gt;&gt; &gt; So there is something missing in the background.=
<br>
&gt;&gt;&gt; &gt;&gt; &gt; Do you have any idea what this might be?<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; udev should have run and found your hdd. So it seems =
its not finding<br>
&gt;&gt;&gt; &gt;&gt; it when running from initramfs. Can you try to add lo=
gs to initramfs<br>
&gt;&gt;&gt; &gt;&gt; and see what udev is doing ?<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt; Below is my package list from local.conf.<br>
&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt; thank you and kind regards<br>
&gt;&gt;&gt; &gt;&gt; &gt; Simon :-)<br>
&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt; EXTRA_IMAGE_FEATURES =3D &quot;debug-tweaks ssh-=
server-openssh&quot;<br>
&gt;&gt;&gt; &gt;&gt; &gt; IMAGE_INSTALL_append =3D &quot; make \<br>
&gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 initscripts \<br>
&gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 grub \<br>
&gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 initramfs-boot \<br>
&gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 syslinux \<br>
&gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 initramfs-live-install \<br>
&gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 initramfs-live-install-efi \=
<br>
&gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 initramfs-live-boot \<br>
&gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 xinit \<br>
&gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 xwininfo \<br>
&gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 openssh-sftp \<br>
&gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 openssh-sftp-server \<br>
&gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtbase-plugins \<br>
&gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtconnectivity \<br>
&gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtdeclarative \<br>
&gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtdeclarative-plugins \<br>
&gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtdeclarative-tools \<br>
&gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtdeclarative-qmlplugins \<b=
r>
&gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtenginio \<br>
&gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtlocation \<br>
&gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtmultimedia \<br>
&gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtmultimedia-plugins \<br>
&gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtmultimedia-qmlplugins \<br=
>
&gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtsystems \<br>
&gt;&gt;&gt; &gt;&gt; &gt; &quot;<br>
&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt; Viele Gr=C3=BCsse<br>
&gt;&gt;&gt; &gt;&gt; &gt; Simon Bolek :-)<br>
&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt; mit freundlichem Gruss / kind regards / pozdrawi=
am<br>
&gt;&gt;&gt; &gt;&gt; &gt; Simon P. Bolek<br>
&gt;&gt;&gt; &gt;&gt; &gt; ------------------------------------------------=
------<br>
&gt;&gt;&gt; &gt;&gt; &gt; Dipl. Inf. Simon P. Bolek<br>
&gt;&gt;&gt; &gt;&gt; &gt; SAP Integration Architect<br>
&gt;&gt;&gt; &gt;&gt; &gt; Business Mobile and IVI Solutions<br>
&gt;&gt;&gt; &gt;&gt; &gt; mailto: <a href=3D"mailto:simon.bolek@arcom-ivi.=
de" target=3D"_blank">simon.bolek@arcom-ivi.de</a><br>
&gt;&gt;&gt; &gt;&gt; &gt; <a href=3D"http://www.arcom-ivi.de/" rel=3D"nore=
ferrer" target=3D"_blank">http://www.arcom-ivi.de/</a><br>
&gt;&gt;&gt; &gt;&gt; &gt; XING: <a href=3D"https://www.xing.com/profile/Si=
monP_Bolek" rel=3D"noreferrer" target=3D"_blank">https://www.xing.com/profi=
le/SimonP_Bolek</a><br>
&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt; --<br>
&gt;&gt;&gt; &gt;&gt; &gt; _______________________________________________<=
br>
&gt;&gt;&gt; &gt;&gt; &gt; yocto mailing list<br>
&gt;&gt;&gt; &gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" target=
=3D"_blank">yocto@yoctoproject.org</a><br>
&gt;&gt;&gt; &gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listin=
fo/yocto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/listinfo/yocto</a><br>
&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
</div></div></blockquote></div></div></div><br></div></div>
</blockquote></div><br></div></div></div></div></div></div></div></div></di=
v>

--001a114ac808f7bed00537a0b33e--
