Return-Path: <simon.bolek@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5574FE00E9C; Thu, 21 Jul 2016 02:15:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
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
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EB1FE00DA9
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 02:15:26 -0700 (PDT)
Received: by mail-io0-f181.google.com with SMTP id 38so70760476iol.0
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 02:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=RDU5acdo2V7ieiFr1syO1YmS3IBE0u8QDKkhSo851jM=;
	b=YOTZuak1x9ovO2Rmfd4/e/57Eda6yUBET180JnWQiaK7qtEBsVGoqfZP6QmYWCqCvb
	4+0ecblMqZnrPP1Rc2ibHqqCvVKEngY9t7hY+ULpNfrRbd1N92prqxpe5IRIlkqLXsGV
	n9bLiwIyMD1Qr2+rUfw2Y01BeHUxA55LGR0xFv6kJkjLtWr/3QDfXArtKpvEDZO33Sho
	SqQgoITRwly2nu1yQCQYs5Owg7vRVoWDQxOg50RCzej65TVdyC0vpobOcEajt1euK5Y1
	N3PjiwsPyHTKlN33nyHLrCBBMkKktzLIi9+q2wdAx1WlUbmJ+7sfwhuYOVdrJsiByJBm
	XKoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=RDU5acdo2V7ieiFr1syO1YmS3IBE0u8QDKkhSo851jM=;
	b=Fs19TsMuhQfyTdbDPKUF4FuRQ5geZwYAbtCwhrNc0nb2gtruB9+0uxPIFkB1SMr4tF
	aqL9DGfnhzkCeK9ogv221b/3TDcoFsqZ7jE3Q9PcwNDvHHHcEaHrYSNQdWOsfGXQoWfX
	g0UL7RfD2QOMEENI/JOhZ+kNmY5+eo0VT/WyFZhH8dUBjEQjboWZv/5p0Eg4jcdfKnXx
	heUmexZaI1Y8wuHlfntGV8eiAac9BIXrzVGZr2eFvuZLXPnfRHhqpGOz+9Ti8Jrpk5a0
	djeNhlXosBCv29ulSKJhxDPg4UxaVvxyoRMHWjxW6myRDOLEDos9UxK9hXIoA2P9IW0I
	PJXA==
X-Gm-Message-State: ALyK8tLacciF3gnx3Mmbya5TJXPnx3x2Go44zhttNfIavESnRwrrtykiWCrx5tCud2W8yHVAt9KbYjOl5IidtQ==
X-Received: by 10.107.154.196 with SMTP id c187mr19332368ioe.99.1469092525710; 
	Thu, 21 Jul 2016 02:15:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.55.135 with HTTP; Thu, 21 Jul 2016 02:15:06 -0700 (PDT)
In-Reply-To: <CAMKF1soBbUcqK9y1Dx8dnXiy6v92ZhtQS_Ghu46nQphj1V3CkA@mail.gmail.com>
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
	<CAMKF1soBbUcqK9y1Dx8dnXiy6v92ZhtQS_Ghu46nQphj1V3CkA@mail.gmail.com>
From: Simon Bolek <simon.bolek@googlemail.com>
Date: Thu, 21 Jul 2016 11:15:06 +0200
Message-ID: <CAEfap_Dg4cKZokee=fprKrNCRod9gP-F_7qFcmQiXcnnB0qyMQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 21 Jul 2016 09:15:31 -0000
Content-Type: multipart/alternative; boundary=001a1140e81e234bdf053821c22b

--001a1140e81e234bdf053821c22b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Raj,
Thank you.
I have already tried this.

I managed to start the USB installation by addding
kernel-modules
to core-image-minimal-initramfs.bb

However after the installation, system will not boot up due to kernel
panic:
VFS: Cannot open root device "sda2" or unknown block (0,0) Please append a
correct "root=3D" boot option;

It seems, the SDD hard drive is found on installation time, but not on boot
time.
How is that possible? It did work with FIDO, but is not working with JETHRO=
.
Any hint what I have to look for now? Is it the drivers missing? Or maybe
some scripts not running at boot?
What will run at boot prior to mounting what is stated in root=3D in grub.c=
fg?

kind regards
Simon :-)


On Sat, Jul 16, 2016 at 2:02 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Fri, Jul 15, 2016 at 3:17 PM, Simon Bolek <simon.bolek@googlemail.com>
> wrote:
> > Hi Raj,
> >
> > Maybe you could help me with this.
> > I found out that during rootfs (meta/lib/oe/rootfs.py), depmodwrapper
> script
> > is beeing called.
> > I noticed, that it does generate /lib/modules/<kernel>.. directory
> structure
> > under:
> > poky/build/tmp/work/genericx86-poky-linux/core-image-sato
> > However, at the end of the bitbake process, there is no /lib/modules
> > direcotry in
> > core-image-minimal-initramfs-genericx86-20160715210400.rootfs.cpio.gz
> >
> > Where are the steps, where this .cpio.gz file is beeing generated. Ther=
e
> > must be a place where all the files, that are inside, are beeing put
> > together.
>
> initramfs image is a separate image. What you are seeing is the final
> image.
> you might have to add the kernel module to you machine conf
>
> MACHINE_EXTRA_RRECOMMENDS =3D " kernel-modules"
>
> >
> > HELP!
> > kind regards
> > Simon :-)
> >
> >
> >
> > On Fri, Jul 15, 2016 at 10:59 AM, Simon Bolek <
> simon.bolek@googlemail.com>
> > wrote:
> >>
> >> Thanks, but neither:
> >> pkg_postinst_kernel-base ()
> >> nor:
> >> pkg_postinst_kernel-image ()
> >> from /meta/classes/kernel.bbclass gets called when running:
> >> - bitbake core-image-sato or
> >> - bitbake linux-yocto
> >>
> >> I put some commands in there, which are definitely wrong (like foobar)
> and
> >> bitbake run successfully.
> >> Whereas, in other funtions it caused problems.
> >> Any ideas how can fix this?
> >>
> >> thanks and best regards
> >> Simon :-)
> >>
> >>
> >> On Fri, Jul 15, 2016 at 1:30 AM, Khem Raj <raj.khem@gmail.com> wrote:
> >>>
> >>> On Thu, Jul 14, 2016 at 4:16 PM, Simon Bolek <
> simon.bolek@googlemail.com>
> >>> wrote:
> >>> > Hi Raj,
> >>> >
> >>> > About depmod again.
> >>> > Should it be run from meta/classes/kernel.bbclass  ?
> >>> > ...
> >>> > pkg_postinst_kernel-base () {
> >>> >     if [ ! -e "$D/lib/modules/${KERNEL_VERSION}" ]; then
> >>> >         mkdir -p $D/lib/modules/${KERNEL_VERSION}
> >>> >     fi
> >>> >     if [ -n "$D" ]; then
> >>> >         depmodwrapper -a -b $D ${KERNEL_VERSION}
> >>> >     else
> >>> >         depmod -a ${KERNEL_VERSION}
> >>> >     fi
> >>> > }
> >>> > ...
> >>> >
> >>> > Where is this function beeing called?
> >>>
> >>> It should be called during rootfs and image creation time. as well as
> >>> when you update the package using online package manager.
> >>>
> >>> > I did not find it anywhere.
> >>> > thanks and kind regards
> >>> > Simon :-)
> >>> >
> >>> > On Thu, Jul 14, 2016 at 8:32 AM, Simon Bolek
> >>> > <simon.bolek@googlemail.com>
> >>> > wrote:
> >>> >>
> >>> >>
> >>> >> On Wed, Jul 13, 2016 at 4:56 PM, Khem Raj <raj.khem@gmail.com>
> wrote:
> >>> >>>
> >>> >>> On Wed, Jul 13, 2016 at 4:57 AM, Simon Bolek
> >>> >>> <simon.bolek@googlemail.com>
> >>> >>> wrote:
> >>> >>> > Hi Raj,
> >>> >>> >
> >>> >>> > So i tried to do manually, what init script does and udev
> >>> >>> > definitely
> >>> >>> > does
> >>> >>> > not recognize the SSD drive.
> >>> >>> > I ran
> >>> >>> >  /lib/udev/udevd --daemon --debug > udev.debug 2>&1 &
> >>> >>> > from the cli and there is no trace of recognizing the SSD. Only
> the
> >>> >>> > /dev/sda, which is the USB stick I am running the installation
> >>> >>> > from.
> >>> >>> >
> >>> >>> > I used 'meld' to compare the /initrd from current jethro image
> and
> >>> >>> > previous
> >>> >>> > working fido image.
> >>> >>> > They are almost the same:
> >>> >>> > - in jethro /lib/modules... file structure is missing with:
> >>> >>> > modules.alias
> >>> >>> > modules.alias.bin
> >>> >>> > modules.builtin.bin
> >>> >>> > modules.dep
> >>> >>> > modules.dep.bin
> >>> >>> > modules.devname
> >>> >>> > modules.softdep
> >>> >>> > modules.symbols
> >>> >>> > modules.symbols.bin
> >>> >>>
> >>> >>> this means depmod did not run during initramfs image creation
> >>> >>
> >>> >> How can I make this happen during bitbake, so i have those files i=
n
> >>> >> the
> >>> >> HDDIMG?
> >>> >>
> >>> >>>
> >>> >>> >
> >>> >>> > - there are slight differences between
> >>> >>> > /etc/init.d/udev
> >>> >>> > /etc/udev/scripts/mount.sh
> >>> >>> > , but I cannot tell, if this is the reason.
> >>> >>>
> >>> >>> what are the differences ?
> >>> >>
> >>> >>
> >>> >> Sorry for this patch-like copy/paste, but this was the simplest wa=
y
> of
> >>> >> presenting the changes.
> >>> >> Do you see something important here, that might cause the SDD not
> >>> >> beeing
> >>> >> recognized?
> >>> >>
> >>> >> --- /home/simon/Development/Yocto-Project/initrd-ok/etc/init.d/ude=
v
> >>> >> +++
> >>> >> /home/simon/Development/Yocto-Project/initrd-jethro/etc/init.d/ude=
v
> >>> >> @@ -14,20 +14,27 @@
> >>> >>  [ -d /sys/class ] || exit 1
> >>> >>  [ -r /proc/mounts ] || exit 1
> >>> >>  [ -x /lib/udev/udevd ] || exit 1
> >>> >> +SYSCONF_CACHED=3D"/etc/udev/cache.data"
> >>> >> +SYSCONF_TMP=3D"/dev/shm/udev.cache"
> >>> >> +DEVCACHE_REGEN=3D"/dev/shm/udev-regen" # create to request cache
> regen
> >>> >> +
> >>> >> +# A list of files which are used as a criteria to judge whether t=
he
> >>> >> udev
> >>> >> cache could be reused.
> >>> >> +CMP_FILE_LIST=3D"/proc/version /proc/cmdline /proc/devices"
> >>> >> +[ -f /proc/atags ] && CMP_FILE_LIST=3D"$CMP_FILE_LIST /proc/atags=
"
> >>> >> +
> >>> >> +# List of files whose metadata (size/mtime/name) will be included
> in
> >>> >> cached
> >>> >> +# system state.
> >>> >> +META_FILE_LIST=3D"lib/udev/rules.d/* etc/udev/rules.d/*"
> >>> >> +
> >>> >> +# Command to compute system configuration.
> >>> >> +sysconf_cmd () {
> >>> >> +    cat -- $CMP_FILE_LIST
> >>> >> +    stat -c '%s %Y %n' -- $META_FILE_LIST | awk -F/ '{print $1 " =
"
> >>> >> $NF;}'
> >>> >> +}
> >>> >> +
> >>> >>  [ -f /etc/default/udev-cache ] && . /etc/default/udev-cache
> >>> >>  [ -f /etc/udev/udev.conf ] && . /etc/udev/udev.conf
> >>> >>  [ -f /etc/default/rcS ] && . /etc/default/rcS
> >>> >> -
> >>> >> -readfiles () {
> >>> >> -   READDATA=3D""
> >>> >> -   for filename in $@; do
> >>> >> -       if [ -r $filename ]; then
> >>> >> -           while read line; do
> >>> >> -               READDATA=3D"$READDATA$line"
> >>> >> -           done < $filename
> >>> >> -       fi
> >>> >> -   done
> >>> >> -}
> >>> >>
> >>> >>  kill_udevd () {
> >>> >>      pid=3D`pidof -x udevd`
> >>> >> @@ -57,38 +64,35 @@
> >>> >>      # the automount rule for udev needs /tmp directory available,
> as
> >>> >> /tmp
> >>> >> is a symlink
> >>> >>      # to /var/tmp which in turn is a symlink to /var/volatile/tmp=
,
> we
> >>> >> need to make sure
> >>> >>      # /var/volatile/tmp directory to be available.
> >>> >> -    mkdir -p /var/volatile/tmp
> >>> >> +    mkdir -m 1777 -p /var/volatile/tmp
> >>> >>
> >>> >>      # Cache handling.
> >>> >> -    # A list of files which are used as a criteria to judge wheth=
er
> >>> >> the
> >>> >> udev cache could be reused.
> >>> >> -    CMP_FILE_LIST=3D"/proc/version /proc/cmdline /proc/devices
> >>> >> /proc/atags"
> >>> >>      if [ "$DEVCACHE" !=3D "" ]; then
> >>> >>              if [ -e $DEVCACHE ]; then
> >>> >> -            readfiles $CMP_FILE_LIST
> >>> >> -            NEWDATA=3D"$READDATA"
> >>> >> -            readfiles /etc/udev/cache.data
> >>> >> -            OLDDATA=3D"$READDATA"
> >>> >> -            if [ "$OLDDATA" =3D "$NEWDATA" ]; then
> >>> >> -                            (cd /; tar xf $DEVCACHE > /dev/null
> 2>&1)
> >>> >> +            sysconf_cmd > "$SYSCONF_TMP"
> >>> >> +            if cmp $SYSCONF_CACHED $SYSCONF_TMP >/dev/null; then
> >>> >> +                            tar xmf $DEVCACHE -C / -m
> >>> >>                              not_first_boot=3D1
> >>> >>                              [ "$VERBOSE" !=3D "no" ] && echo "ude=
v:
> >>> >> using
> >>> >> cache file $DEVCACHE"
> >>> >> -                            [ -e /dev/shm/udev.cache ] && rm -f
> >>> >> /dev/shm/udev.cache
> >>> >> +                            [ -e $SYSCONF_TMP ] && rm -f
> >>> >> "$SYSCONF_TMP"
> >>> >> +                            [ -e "$DEVCACHE_REGEN" ] && rm -f
> >>> >> "$DEVCACHE_REGEN"
> >>> >>                      else
> >>> >>                  # Output detailed reason why the cached /dev is n=
ot
> >>> >> used
> >>> >> -                if [ "$VERBOSE" !=3D "no" ]; then
> >>> >> -                    echo "udev: udev cache not used"
> >>> >> -                    echo "udev: we use $CMP_FILE_LIST as criteria
> to
> >>> >> judge whether the cache /dev could be resued"
> >>> >> -                    echo "udev: olddata: $OLDDATA"
> >>> >> -                    echo "udev: newdata: $NEWDATA"
> >>> >> -                fi
> >>> >> -                echo "$NEWDATA" > /dev/shm/udev.cache
> >>> >> +                cat <<EOF
> >>> >> +udev: Not using udev cache because of changes detected in the
> >>> >> following
> >>> >> files:
> >>> >> +udev:     $CMP_FILE_LIST
> >>> >> +udev:     $META_FILE_LIST
> >>> >> +udev: The udev cache will be regenerated. To identify the detecte=
d
> >>> >> changes,
> >>> >> +udev: compare the cached sysconf at   $SYSCONF_CACHED
> >>> >> +udev: against the current sysconf at  $SYSCONF_TMP
> >>> >> +EOF
> >>> >> +                touch "$DEVCACHE_REGEN"
> >>> >>                      fi
> >>> >>          else
> >>> >>              if [ "$ROOTFS_READ_ONLY" !=3D "yes" ]; then
> >>> >>                  # If rootfs is not read-only, it's possible that =
a
> >>> >> new
> >>> >> udev cache would be generated;
> >>> >>                  # otherwise, we do not bother to read files.
> >>> >> -                readfiles $CMP_FILE_LIST
> >>> >> -                echo "$READDATA" > /dev/shm/udev.cache
> >>> >> +                touch "$DEVCACHE_REGEN"
> >>> >>              fi
> >>> >>              fi
> >>> >>      fi
> >>> >> @@ -97,7 +101,7 @@
> >>> >>      kill_udevd > "/dev/null" 2>&1
> >>> >>
> >>> >>      # trigger the sorted events
> >>> >> -    echo -e '\000\000\000\000' > /proc/sys/kernel/hotplug
> >>> >> +    [ -e /proc/sys/kernel/hotplug ] && echo -e '\000'
> >>> >> >/proc/sys/kernel/hotplug
> >>> >>      /lib/udev/udevd -d
> >>> >>
> >>> >>      udevadm control --env=3DSTARTUP=3D1
> >>> >>
> >>> >>
> >>> >>>
> >>> >>> >
> >>> >>> > Unfortunately I did not dig inside binary /lib/udev/udevd.
> >>> >>> >
> >>> >>> > So do you have any other ideas, what might be the reason for no=
t
> >>> >>> > recognizing
> >>> >>> > the SSD? Maybe there are some additional recipes needed from
> jethro
> >>> >>> > on?
> >>> >>> >
> >>> >>> >
> >>> >>> > thanks & kind regards
> >>> >>> > Simon :-)
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
> >>> >>> > On Wed, Jul 13, 2016 at 9:03 AM, Simon Bolek
> >>> >>> > <simon.bolek@googlemail.com>
> >>> >>> > wrote:
> >>> >>> >>
> >>> >>> >> Thank you,
> >>> >>> >>
> >>> >>> >> I just guess, that it is the following function in init script
> to
> >>> >>> >> put
> >>> >>> >> the
> >>> >>> >> echos to? Is it?
> >>> >>> >>
> >>> >>> >> udev_daemon() {
> >>> >>> >>     OPTIONS=3D"/sbin/udev/udevd /sbin/udevd /lib/udev/udevd
> >>> >>> >> /lib/systemd/systemd-udevd"
> >>> >>> >>
> >>> >>> >>     for o in $OPTIONS; do
> >>> >>> >>         if [ -x "$o" ]; then
> >>> >>> >>             echo $o
> >>> >>> >>             return 0
> >>> >>> >>         fi
> >>> >>> >>     done
> >>> >>> >>
> >>> >>> >>     return 1
> >>> >>> >> }
> >>> >>> >>
> >>> >>> >>
> >>> >>> >> cheers
> >>> >>> >> Simon:-)
> >>> >>> >>
> >>> >>> >> Viele Gr=C3=BCsse
> >>> >>> >> Simon Bolek :-)
> >>> >>> >>
> >>> >>> >> mit freundlichem Gruss / kind regards / pozdrawiam
> >>> >>> >> Simon P. Bolek
> >>> >>> >> ------------------------------------------------------
> >>> >>> >> Dipl. Inf. Simon P. Bolek
> >>> >>> >> SAP Integration Architect
> >>> >>> >> Business Mobile and IVI Solutions
> >>> >>> >> mailto: simon.bolek@arcom-ivi.de
> >>> >>> >> http://www.arcom-ivi.de/
> >>> >>> >> XING: https://www.xing.com/profile/SimonP_Bolek
> >>> >>> >>
> >>> >>> >> On Wed, Jul 13, 2016 at 8:36 AM, Khem Raj <raj.khem@gmail.com>
> >>> >>> >> wrote:
> >>> >>> >>>
> >>> >>> >>> On Tue, Jul 12, 2016 at 11:28 PM, Simon Bolek
> >>> >>> >>> <simon.bolek@googlemail.com> wrote:
> >>> >>> >>> > Thank you Raj,
> >>> >>> >>> >
> >>> >>> >>> > Is there a standard way to activate these initramfs logs, o=
r
> do
> >>> >>> >>> > I
> >>> >>> >>> > have
> >>> >>> >>> > to
> >>> >>> >>> > implement it myself somewhere?
> >>> >>> >>>
> >>> >>> >>> you have to add printf etc. yourself into the init script in
> >>> >>> >>> initramfs
> >>> >>> >>> image
> >>> >>> >>>
> >>> >>> >>> >
> >>> >>> >>> > thank you and kind regards
> >>> >>> >>> > Simon :-)
> >>> >>> >>> >
> >>> >>> >>> > Viele Gr=C3=BCsse
> >>> >>> >>> > Simon Bolek :-)
> >>> >>> >>> >
> >>> >>> >>> > mit freundlichem Gruss / kind regards / pozdrawiam
> >>> >>> >>> > Simon P. Bolek
> >>> >>> >>> > ------------------------------------------------------
> >>> >>> >>> > Dipl. Inf. Simon P. Bolek
> >>> >>> >>> > SAP Integration Architect
> >>> >>> >>> > Business Mobile and IVI Solutions
> >>> >>> >>> > mailto: simon.bolek@arcom-ivi.de
> >>> >>> >>> > http://www.arcom-ivi.de/
> >>> >>> >>> > XING: https://www.xing.com/profile/SimonP_Bolek
> >>> >>> >>> >
> >>> >>> >>> > On Wed, Jul 13, 2016 at 1:36 AM, Khem Raj <
> raj.khem@gmail.com>
> >>> >>> >>> > wrote:
> >>> >>> >>> >>
> >>> >>> >>> >> On Tue, Jul 12, 2016 at 3:45 AM, Simon Bolek
> >>> >>> >>> >> <simon.bolek@googlemail.com>
> >>> >>> >>> >> wrote:
> >>> >>> >>> >> > Hello everyone!
> >>> >>> >>> >> >
> >>> >>> >>> >> > I am trying to install genericx86 core-image-sato (jethr=
o)
> >>> >>> >>> >> > HDDIMG to
> >>> >>> >>> >> > an
> >>> >>> >>> >> > atom-pc.
> >>> >>> >>> >> > For this 2GB USB stick is used.
> >>> >>> >>> >> > When choosing 'install' option from boot menu I get the
> >>> >>> >>> >> > message:
> >>> >>> >>> >> >
> >>> >>> >>> >> > "Searching for hard drives...
> >>> >>> >>> >> > No hard drive selected. Installation aborted."
> >>> >>> >>> >> >
> >>> >>> >>> >> > Installatiion stops and i get the console.
> >>> >>> >>> >> > When I try to run fsck, it says: can't read '/etc/fstab'=
:
> No
> >>> >>> >>> >> > such
> >>> >>> >>> >> > file
> >>> >>> >>> >> > or
> >>> >>> >>> >> > directory
> >>> >>> >>> >> >
> >>> >>> >>> >> > fdisk -l  shows only the partitions of USB stick.
> >>> >>> >>> >> >
> >>> >>> >>> >> > After I choose 'boot' option to boot into live image, SD=
D
> >>> >>> >>> >> > drive
> >>> >>> >>> >> > is
> >>> >>> >>> >> > under
> >>> >>> >>> >> > /dev/sdb and USB installation stick under /dev/sda,
> >>> >>> >>> >> >
> >>> >>> >>> >> > What recipe/package is my installation missing? The SSD
> hard
> >>> >>> >>> >> > drive
> >>> >>> >>> >> > is
> >>> >>> >>> >> > not
> >>> >>> >>> >> > recognized for some reason. With previous yocto releases
> >>> >>> >>> >> > this
> >>> >>> >>> >> > package
> >>> >>> >>> >> > list
> >>> >>> >>> >> > DID work fine.
> >>> >>> >>> >> > So there is something missing in the background.
> >>> >>> >>> >> > Do you have any idea what this might be?
> >>> >>> >>> >>
> >>> >>> >>> >> udev should have run and found your hdd. So it seems its n=
ot
> >>> >>> >>> >> finding
> >>> >>> >>> >> it when running from initramfs. Can you try to add logs to
> >>> >>> >>> >> initramfs
> >>> >>> >>> >> and see what udev is doing ?
> >>> >>> >>> >>
> >>> >>> >>> >> >
> >>> >>> >>> >> > Below is my package list from local.conf.
> >>> >>> >>> >> >
> >>> >>> >>> >> > thank you and kind regards
> >>> >>> >>> >> > Simon :-)
> >>> >>> >>> >> >
> >>> >>> >>> >> > EXTRA_IMAGE_FEATURES =3D "debug-tweaks ssh-server-openss=
h"
> >>> >>> >>> >> > IMAGE_INSTALL_append =3D " make \
> >>> >>> >>> >> >      initscripts \
> >>> >>> >>> >> >      grub \
> >>> >>> >>> >> >      initramfs-boot \
> >>> >>> >>> >> >      syslinux \
> >>> >>> >>> >> >      initramfs-live-install \
> >>> >>> >>> >> >      initramfs-live-install-efi \
> >>> >>> >>> >> >      initramfs-live-boot \
> >>> >>> >>> >> >      xinit \
> >>> >>> >>> >> >      xwininfo \
> >>> >>> >>> >> >      openssh-sftp \
> >>> >>> >>> >> >      openssh-sftp-server \
> >>> >>> >>> >> >      qtbase-plugins \
> >>> >>> >>> >> >      qtconnectivity \
> >>> >>> >>> >> >      qtdeclarative \
> >>> >>> >>> >> >      qtdeclarative-plugins \
> >>> >>> >>> >> >      qtdeclarative-tools \
> >>> >>> >>> >> >      qtdeclarative-qmlplugins \
> >>> >>> >>> >> >      qtenginio \
> >>> >>> >>> >> >      qtlocation \
> >>> >>> >>> >> >      qtmultimedia \
> >>> >>> >>> >> >      qtmultimedia-plugins \
> >>> >>> >>> >> >      qtmultimedia-qmlplugins \
> >>> >>> >>> >> >      qtsystems \
> >>> >>> >>> >> > "
> >>> >>> >>> >> >
> >>> >>> >>> >> > Viele Gr=C3=BCsse
> >>> >>> >>> >> > Simon Bolek :-)
> >>> >>> >>> >> >
> >>> >>> >>> >> > mit freundlichem Gruss / kind regards / pozdrawiam
> >>> >>> >>> >> > Simon P. Bolek
> >>> >>> >>> >> > ------------------------------------------------------
> >>> >>> >>> >> > Dipl. Inf. Simon P. Bolek
> >>> >>> >>> >> > SAP Integration Architect
> >>> >>> >>> >> > Business Mobile and IVI Solutions
> >>> >>> >>> >> > mailto: simon.bolek@arcom-ivi.de
> >>> >>> >>> >> > http://www.arcom-ivi.de/
> >>> >>> >>> >> > XING: https://www.xing.com/profile/SimonP_Bolek
> >>> >>> >>> >> >
> >>> >>> >>> >> > --
> >>> >>> >>> >> > _______________________________________________
> >>> >>> >>> >> > yocto mailing list
> >>> >>> >>> >> > yocto@yoctoproject.org
> >>> >>> >>> >> > https://lists.yoctoproject.org/listinfo/yocto
> >>> >>> >>> >> >
> >>> >>> >>> >
> >>> >>> >>> >
> >>> >>> >>
> >>> >>> >>
> >>> >>> >
> >>> >>
> >>> >>
> >>> >
> >>
> >>
> >
>

--001a1140e81e234bdf053821c22b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Raj, <br><div><div class=3D"gmail_extra">Thank you.<br>=
</div><div class=3D"gmail_extra">I have already tried this. <br></div><div =
class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">I managed to sta=
rt the USB installation by addding<br>kernel-modules<br></div><div class=3D=
"gmail_extra">to <a href=3D"http://core-image-minimal-initramfs.bb">core-im=
age-minimal-initramfs.bb</a><br><br></div><div class=3D"gmail_extra">Howeve=
r after the installation, system will not boot up due to kernel panic: <br>=
VFS: Cannot open root device &quot;sda2&quot; or unknown block (0,0)=20
  Please append a correct &quot;root=3D&quot; boot option;<br><br></div><di=
v class=3D"gmail_extra">It seems, the SDD hard drive is found on installati=
on time, but not on boot time. <br></div><div class=3D"gmail_extra">How is =
that possible? It did work with FIDO, but is not working with JETHRO.<br></=
div><div class=3D"gmail_extra">Any hint what I have to look for now? Is it =
the drivers missing? Or maybe some scripts not running at boot?<br></div><d=
iv class=3D"gmail_extra">What will run at boot prior to mounting what is st=
ated in root=3D in grub.cfg?<br><br></div><div class=3D"gmail_extra">kind r=
egards<br></div><div class=3D"gmail_extra">Simon :-)<br></div><div class=3D=
"gmail_extra"><br><br></div><div class=3D"gmail_extra"><div class=3D"gmail_=
quote">On Sat, Jul 16, 2016 at 2:02 AM, Khem Raj <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><spa=
n class=3D"">On Fri, Jul 15, 2016 at 3:17 PM, Simon Bolek &lt;<a href=3D"ma=
ilto:simon.bolek@googlemail.com">simon.bolek@googlemail.com</a>&gt; wrote:<=
br>
&gt; Hi Raj,<br>
&gt;<br>
</span><span class=3D"">&gt; Maybe you could help me with this.<br>
&gt; I found out that during rootfs (meta/lib/oe/rootfs.py), depmodwrapper =
script<br>
&gt; is beeing called.<br>
&gt; I noticed, that it does generate /lib/modules/&lt;kernel&gt;.. directo=
ry structure<br>
&gt; under:<br>
&gt; poky/build/tmp/work/genericx86-poky-linux/core-image-sato<br>
&gt; However, at the end of the bitbake process, there is no /lib/modules<b=
r>
&gt; direcotry in<br>
&gt; core-image-minimal-initramfs-genericx86-20160715210400.rootfs.cpio.gz<=
br>
&gt;<br>
&gt; Where are the steps, where this .cpio.gz file is beeing generated. The=
re<br>
&gt; must be a place where all the files, that are inside, are beeing put<b=
r>
&gt; together.<br>
<br>
</span>initramfs image is a separate image. What you are seeing is the fina=
l image.<br>
you might have to add the kernel module to you machine conf<br>
<br>
MACHINE_EXTRA_RRECOMMENDS =3D &quot; kernel-modules&quot;<br>
<div class=3D""><div class=3D"h5"><br>
&gt;<br>
&gt; HELP!<br>
&gt; kind regards<br>
&gt; Simon :-)<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Fri, Jul 15, 2016 at 10:59 AM, Simon Bolek &lt;<a href=3D"mailto:si=
mon.bolek@googlemail.com">simon.bolek@googlemail.com</a>&gt;<br>
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Thanks, but neither:<br>
&gt;&gt; pkg_postinst_kernel-base ()<br>
&gt;&gt; nor:<br>
&gt;&gt; pkg_postinst_kernel-image ()<br>
&gt;&gt; from /meta/classes/kernel.bbclass gets called when running:<br>
&gt;&gt; - bitbake core-image-sato or<br>
&gt;&gt; - bitbake linux-yocto<br>
&gt;&gt;<br>
&gt;&gt; I put some commands in there, which are definitely wrong (like foo=
bar) and<br>
&gt;&gt; bitbake run successfully.<br>
&gt;&gt; Whereas, in other funtions it caused problems.<br>
&gt;&gt; Any ideas how can fix this?<br>
&gt;&gt;<br>
&gt;&gt; thanks and best regards<br>
&gt;&gt; Simon :-)<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Fri, Jul 15, 2016 at 1:30 AM, Khem Raj &lt;<a href=3D"mailto:ra=
j.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Thu, Jul 14, 2016 at 4:16 PM, Simon Bolek &lt;<a href=3D"ma=
ilto:simon.bolek@googlemail.com">simon.bolek@googlemail.com</a>&gt;<br>
&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt; &gt; Hi Raj,<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; About depmod again.<br>
&gt;&gt;&gt; &gt; Should it be run from meta/classes/kernel.bbclass=C2=A0 ?=
<br>
&gt;&gt;&gt; &gt; ...<br>
&gt;&gt;&gt; &gt; pkg_postinst_kernel-base () {<br>
&gt;&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0if [ ! -e &quot;$D/lib/modules/${KERNE=
L_VERSION}&quot; ]; then<br>
&gt;&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mkdir -p $D/lib/modules/=
${KERNEL_VERSION}<br>
&gt;&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0fi<br>
&gt;&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0if [ -n &quot;$D&quot; ]; then<br>
&gt;&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0depmodwrapper -a -b $D $=
{KERNEL_VERSION}<br>
&gt;&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0else<br>
&gt;&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0depmod -a ${KERNEL_VERSI=
ON}<br>
&gt;&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0fi<br>
&gt;&gt;&gt; &gt; }<br>
&gt;&gt;&gt; &gt; ...<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Where is this function beeing called?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; It should be called during rootfs and image creation time. as =
well as<br>
&gt;&gt;&gt; when you update the package using online package manager.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt; I did not find it anywhere.<br>
&gt;&gt;&gt; &gt; thanks and kind regards<br>
&gt;&gt;&gt; &gt; Simon :-)<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; On Thu, Jul 14, 2016 at 8:32 AM, Simon Bolek<br>
&gt;&gt;&gt; &gt; &lt;<a href=3D"mailto:simon.bolek@googlemail.com">simon.b=
olek@googlemail.com</a>&gt;<br>
&gt;&gt;&gt; &gt; wrote:<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; On Wed, Jul 13, 2016 at 4:56 PM, Khem Raj &lt;<a href=
=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; On Wed, Jul 13, 2016 at 4:57 AM, Simon Bolek<br>
&gt;&gt;&gt; &gt;&gt;&gt; &lt;<a href=3D"mailto:simon.bolek@googlemail.com"=
>simon.bolek@googlemail.com</a>&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; Hi Raj,<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; So i tried to do manually, what init script =
does and udev<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; definitely<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; does<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; not recognize the SSD drive.<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; I ran<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;=C2=A0 /lib/udev/udevd --daemon --debug &gt; =
udev.debug 2&gt;&amp;1 &amp;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; from the cli and there is no trace of recogn=
izing the SSD. Only the<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; /dev/sda, which is the USB stick I am runnin=
g the installation<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; from.<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; I used &#39;meld&#39; to compare the /initrd=
 from current jethro image and<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; previous<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; working fido image.<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; They are almost the same:<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; - in jethro /lib/modules... file structure i=
s missing with:<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; modules.alias<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; modules.alias.bin<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; modules.builtin.bin<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; modules.dep<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; modules.dep.bin<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; modules.devname<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; modules.softdep<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; modules.symbols<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; modules.symbols.bin<br>
&gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; this means depmod did not run during initramfs im=
age creation<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; How can I make this happen during bitbake, so i have =
those files in<br>
&gt;&gt;&gt; &gt;&gt; the<br>
&gt;&gt;&gt; &gt;&gt; HDDIMG?<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; - there are slight differences between<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; /etc/init.d/udev<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; /etc/udev/scripts/mount.sh<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; , but I cannot tell, if this is the reason.<=
br>
&gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; what are the differences ?<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; Sorry for this patch-like copy/paste, but this was th=
e simplest way of<br>
&gt;&gt;&gt; &gt;&gt; presenting the changes.<br>
&gt;&gt;&gt; &gt;&gt; Do you see something important here, that might cause=
 the SDD not<br>
&gt;&gt;&gt; &gt;&gt; beeing<br>
&gt;&gt;&gt; &gt;&gt; recognized?<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; --- /home/simon/Development/Yocto-Project/initrd-ok/e=
tc/init.d/udev<br>
&gt;&gt;&gt; &gt;&gt; +++<br>
&gt;&gt;&gt; &gt;&gt; /home/simon/Development/Yocto-Project/initrd-jethro/e=
tc/init.d/udev<br>
&gt;&gt;&gt; &gt;&gt; @@ -14,20 +14,27 @@<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 [ -d /sys/class ] || exit 1<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 [ -r /proc/mounts ] || exit 1<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 [ -x /lib/udev/udevd ] || exit 1<br>
&gt;&gt;&gt; &gt;&gt; +SYSCONF_CACHED=3D&quot;/etc/udev/cache.data&quot;<br=
>
&gt;&gt;&gt; &gt;&gt; +SYSCONF_TMP=3D&quot;/dev/shm/udev.cache&quot;<br>
&gt;&gt;&gt; &gt;&gt; +DEVCACHE_REGEN=3D&quot;/dev/shm/udev-regen&quot; # c=
reate to request cache regen<br>
&gt;&gt;&gt; &gt;&gt; +<br>
&gt;&gt;&gt; &gt;&gt; +# A list of files which are used as a criteria to ju=
dge whether the<br>
&gt;&gt;&gt; &gt;&gt; udev<br>
&gt;&gt;&gt; &gt;&gt; cache could be reused.<br>
&gt;&gt;&gt; &gt;&gt; +CMP_FILE_LIST=3D&quot;/proc/version /proc/cmdline /p=
roc/devices&quot;<br>
&gt;&gt;&gt; &gt;&gt; +[ -f /proc/atags ] &amp;&amp; CMP_FILE_LIST=3D&quot;=
$CMP_FILE_LIST /proc/atags&quot;<br>
&gt;&gt;&gt; &gt;&gt; +<br>
&gt;&gt;&gt; &gt;&gt; +# List of files whose metadata (size/mtime/name) wil=
l be included in<br>
&gt;&gt;&gt; &gt;&gt; cached<br>
&gt;&gt;&gt; &gt;&gt; +# system state.<br>
&gt;&gt;&gt; &gt;&gt; +META_FILE_LIST=3D&quot;lib/udev/rules.d/* etc/udev/r=
ules.d/*&quot;<br>
&gt;&gt;&gt; &gt;&gt; +<br>
&gt;&gt;&gt; &gt;&gt; +# Command to compute system configuration.<br>
&gt;&gt;&gt; &gt;&gt; +sysconf_cmd () {<br>
&gt;&gt;&gt; &gt;&gt; +=C2=A0 =C2=A0 cat -- $CMP_FILE_LIST<br>
&gt;&gt;&gt; &gt;&gt; +=C2=A0 =C2=A0 stat -c &#39;%s %Y %n&#39; -- $META_FI=
LE_LIST | awk -F/ &#39;{print $1 &quot; &quot;<br>
&gt;&gt;&gt; &gt;&gt; $NF;}&#39;<br>
&gt;&gt;&gt; &gt;&gt; +}<br>
&gt;&gt;&gt; &gt;&gt; +<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 [ -f /etc/default/udev-cache ] &amp;&amp; . /et=
c/default/udev-cache<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 [ -f /etc/udev/udev.conf ] &amp;&amp; . /etc/ud=
ev/udev.conf<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 [ -f /etc/default/rcS ] &amp;&amp; . /etc/defau=
lt/rcS<br>
&gt;&gt;&gt; &gt;&gt; -<br>
&gt;&gt;&gt; &gt;&gt; -readfiles () {<br>
&gt;&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0READDATA=3D&quot;&quot;<br>
&gt;&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0for filename in $@; do<br>
&gt;&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if [ -r $filename ]; then=
<br>
&gt;&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while read =
line; do<br>
&gt;&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0READDATA=3D&quot;$READDATA$line&quot;<br>
&gt;&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0done &lt; $=
filename<br>
&gt;&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>
&gt;&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0done<br>
&gt;&gt;&gt; &gt;&gt; -}<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 kill_udevd () {<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 pid=3D`pidof -x udevd`<br>
&gt;&gt;&gt; &gt;&gt; @@ -57,38 +64,35 @@<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 # the automount rule for udev nee=
ds /tmp directory available, as<br>
&gt;&gt;&gt; &gt;&gt; /tmp<br>
&gt;&gt;&gt; &gt;&gt; is a symlink<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 # to /var/tmp which in turn is a =
symlink to /var/volatile/tmp, we<br>
&gt;&gt;&gt; &gt;&gt; need to make sure<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 # /var/volatile/tmp directory to =
be available.<br>
&gt;&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 mkdir -p /var/volatile/tmp<br>
&gt;&gt;&gt; &gt;&gt; +=C2=A0 =C2=A0 mkdir -m 1777 -p /var/volatile/tmp<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 # Cache handling.<br>
&gt;&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 # A list of files which are used as a =
criteria to judge whether<br>
&gt;&gt;&gt; &gt;&gt; the<br>
&gt;&gt;&gt; &gt;&gt; udev cache could be reused.<br>
&gt;&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 CMP_FILE_LIST=3D&quot;/proc/version /p=
roc/cmdline /proc/devices<br>
&gt;&gt;&gt; &gt;&gt; /proc/atags&quot;<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 if [ &quot;$DEVCACHE&quot; !=3D &=
quot;&quot; ]; then<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ =
-e $DEVCACHE ]; then<br>
&gt;&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 readfiles =
$CMP_FILE_LIST<br>
&gt;&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NEWDATA=3D=
&quot;$READDATA&quot;<br>
&gt;&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 readfiles =
/etc/udev/cache.data<br>
&gt;&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 OLDDATA=3D=
&quot;$READDATA&quot;<br>
&gt;&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ &quot=
;$OLDDATA&quot; =3D &quot;$NEWDATA&quot; ]; then<br>
&gt;&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (cd /; tar xf $DEVCACHE &gt; =
/dev/null 2&gt;&amp;1)<br>
&gt;&gt;&gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sysconf_cm=
d &gt; &quot;$SYSCONF_TMP&quot;<br>
&gt;&gt;&gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if cmp $SY=
SCONF_CACHED $SYSCONF_TMP &gt;/dev/null; then<br>
&gt;&gt;&gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 tar xmf $DEVCACHE -C / -m<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 not_first_boot=3D1<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ &quot;$VERBOSE&quot;=
 !=3D &quot;no&quot; ] &amp;&amp; echo &quot;udev:<br>
&gt;&gt;&gt; &gt;&gt; using<br>
&gt;&gt;&gt; &gt;&gt; cache file $DEVCACHE&quot;<br>
&gt;&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ -e /dev/shm/udev.cache ] &a=
mp;&amp; rm -f<br>
&gt;&gt;&gt; &gt;&gt; /dev/shm/udev.cache<br>
&gt;&gt;&gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ -e $SYSCONF_TMP ] &amp;&amp=
; rm -f<br>
&gt;&gt;&gt; &gt;&gt; &quot;$SYSCONF_TMP&quot;<br>
&gt;&gt;&gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ -e &quot;$DEVCACHE_REGEN&qu=
ot; ] &amp;&amp; rm -f<br>
&gt;&gt;&gt; &gt;&gt; &quot;$DEVCACHE_REGEN&quot;<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 else<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 # Output detailed reason why the cached /dev is not<br>
&gt;&gt;&gt; &gt;&gt; used<br>
&gt;&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 if [ &quot;$VERBOSE&quot; !=3D &quot;no&quot; ]; then<br>
&gt;&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 echo &quot;udev: udev cache not used&quot;<br>
&gt;&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 echo &quot;udev: we use $CMP_FILE_LIST as criteria to<br>
&gt;&gt;&gt; &gt;&gt; judge whether the cache /dev could be resued&quot;<br=
>
&gt;&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 echo &quot;udev: olddata: $OLDDATA&quot;<br>
&gt;&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 echo &quot;udev: newdata: $NEWDATA&quot;<br>
&gt;&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 fi<br>
&gt;&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 echo &quot;$NEWDATA&quot; &gt; /dev/shm/udev.cache<br>
&gt;&gt;&gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 cat &lt;&lt;EOF<br>
&gt;&gt;&gt; &gt;&gt; +udev: Not using udev cache because of changes detect=
ed in the<br>
&gt;&gt;&gt; &gt;&gt; following<br>
&gt;&gt;&gt; &gt;&gt; files:<br>
&gt;&gt;&gt; &gt;&gt; +udev:=C2=A0 =C2=A0 =C2=A0$CMP_FILE_LIST<br>
&gt;&gt;&gt; &gt;&gt; +udev:=C2=A0 =C2=A0 =C2=A0$META_FILE_LIST<br>
&gt;&gt;&gt; &gt;&gt; +udev: The udev cache will be regenerated. To identif=
y the detected<br>
&gt;&gt;&gt; &gt;&gt; changes,<br>
&gt;&gt;&gt; &gt;&gt; +udev: compare the cached sysconf at=C2=A0 =C2=A0$SYS=
CONF_CACHED<br>
&gt;&gt;&gt; &gt;&gt; +udev: against the current sysconf at=C2=A0 $SYSCONF_=
TMP<br>
&gt;&gt;&gt; &gt;&gt; +EOF<br>
&gt;&gt;&gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 touch &quot;$DEVCACHE_REGEN&quot;<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 fi<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ =
&quot;$ROOTFS_READ_ONLY&quot; !=3D &quot;yes&quot; ]; then<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 # If rootfs is not read-only, it&#39;s possible that a<br>
&gt;&gt;&gt; &gt;&gt; new<br>
&gt;&gt;&gt; &gt;&gt; udev cache would be generated;<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 # otherwise, we do not bother to read files.<br>
&gt;&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 readfiles $CMP_FILE_LIST<br>
&gt;&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 echo &quot;$READDATA&quot; &gt; /dev/shm/udev.cache<br>
&gt;&gt;&gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 touch &quot;$DEVCACHE_REGEN&quot;<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<br=
>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<br=
>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 fi<br>
&gt;&gt;&gt; &gt;&gt; @@ -97,7 +101,7 @@<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 kill_udevd &gt; &quot;/dev/null&q=
uot; 2&gt;&amp;1<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 # trigger the sorted events<br>
&gt;&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 echo -e &#39;\000\000\000\000&#39; &gt=
; /proc/sys/kernel/hotplug<br>
&gt;&gt;&gt; &gt;&gt; +=C2=A0 =C2=A0 [ -e /proc/sys/kernel/hotplug ] &amp;&=
amp; echo -e &#39;\000&#39;<br>
&gt;&gt;&gt; &gt;&gt; &gt;/proc/sys/kernel/hotplug<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 /lib/udev/udevd -d<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 udevadm control --env=3DSTARTUP=
=3D1<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; Unfortunately I did not dig inside binary /l=
ib/udev/udevd.<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; So do you have any other ideas, what might b=
e the reason for not<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; recognizing<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; the SSD? Maybe there are some additional rec=
ipes needed from jethro<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; on?<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; thanks &amp; kind regards<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; Simon :-)<br>
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
&gt;&gt;&gt; &gt;&gt;&gt; &gt; On Wed, Jul 13, 2016 at 9:03 AM, Simon Bolek=
<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; &lt;<a href=3D"mailto:simon.bolek@googlemail=
.com">simon.bolek@googlemail.com</a>&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt; wrote:<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; Thank you,<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; I just guess, that it is the following f=
unction in init script to<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; put<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; the<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; echos to? Is it?<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; udev_daemon() {<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0OPTIONS=3D&quot;/sbin=
/udev/udevd /sbin/udevd /lib/udev/udevd<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; /lib/systemd/systemd-udevd&quot;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0for o in $OPTIONS; do=
<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if [ -x=
 &quot;$o&quot; ]; then<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0echo $o<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0return 0<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0done<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0return 1<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; }<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; cheers<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; Simon:-)<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; Viele Gr=C3=BCsse<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; Simon Bolek :-)<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; mit freundlichem Gruss / kind regards / =
pozdrawiam<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; Simon P. Bolek<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; ----------------------------------------=
--------------<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; Dipl. Inf. Simon P. Bolek<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; SAP Integration Architect<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; Business Mobile and IVI Solutions<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; mailto: <a href=3D"mailto:simon.bolek@ar=
com-ivi.de">simon.bolek@arcom-ivi.de</a><br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; <a href=3D"http://www.arcom-ivi.de/" rel=
=3D"noreferrer" target=3D"_blank">http://www.arcom-ivi.de/</a><br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; XING: <a href=3D"https://www.xing.com/pr=
ofile/SimonP_Bolek" rel=3D"noreferrer" target=3D"_blank">https://www.xing.c=
om/profile/SimonP_Bolek</a><br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; On Wed, Jul 13, 2016 at 8:36 AM, Khem Ra=
j &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; wrote:<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; On Tue, Jul 12, 2016 at 11:28 PM, Si=
mon Bolek<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &lt;<a href=3D"mailto:simon.bolek@go=
oglemail.com">simon.bolek@googlemail.com</a>&gt; wrote:<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt; Thank you Raj,<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt; Is there a standard way to acti=
vate these initramfs logs, or do<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt; I<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt; have<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt; to<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt; implement it myself somewhere?<=
br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; you have to add printf etc. yourself=
 into the init script in<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; initramfs<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; image<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt; thank you and kind regards<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt; Simon :-)<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt; Viele Gr=C3=BCsse<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt; Simon Bolek :-)<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt; mit freundlichem Gruss / kind r=
egards / pozdrawiam<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt; Simon P. Bolek<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt; -------------------------------=
-----------------------<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt; Dipl. Inf. Simon P. Bolek<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt; SAP Integration Architect<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt; Business Mobile and IVI Solutio=
ns<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt; mailto: <a href=3D"mailto:simon=
.bolek@arcom-ivi.de">simon.bolek@arcom-ivi.de</a><br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt; <a href=3D"http://www.arcom-ivi=
.de/" rel=3D"noreferrer" target=3D"_blank">http://www.arcom-ivi.de/</a><br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt; XING: <a href=3D"https://www.xi=
ng.com/profile/SimonP_Bolek" rel=3D"noreferrer" target=3D"_blank">https://w=
ww.xing.com/profile/SimonP_Bolek</a><br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt; On Wed, Jul 13, 2016 at 1:36 AM=
, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>=
&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt; wrote:<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; On Tue, Jul 12, 2016 at 3:4=
5 AM, Simon Bolek<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &lt;<a href=3D"mailto:simon=
.bolek@googlemail.com">simon.bolek@googlemail.com</a>&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; wrote:<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Hello everyone!<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; I am trying to install=
 genericx86 core-image-sato (jethro)<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; HDDIMG to<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; an<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; atom-pc.<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; For this 2GB USB stick=
 is used.<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; When choosing &#39;ins=
tall&#39; option from boot menu I get the<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; message:<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; &quot;Searching for ha=
rd drives...<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; No hard drive selected=
. Installation aborted.&quot;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Installatiion stops an=
d i get the console.<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; When I try to run fsck=
, it says: can&#39;t read &#39;/etc/fstab&#39;: No<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; such<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; file<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; or<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; directory<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; fdisk -l=C2=A0 shows o=
nly the partitions of USB stick.<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; After I choose &#39;bo=
ot&#39; option to boot into live image, SDD<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; drive<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; is<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; under<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; /dev/sdb and USB insta=
llation stick under /dev/sda,<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; What recipe/package is=
 my installation missing? The SSD hard<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; drive<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; is<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; not<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; recognized for some re=
ason. With previous yocto releases<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; this<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; package<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; list<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; DID work fine.<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; So there is something =
missing in the background.<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Do you have any idea w=
hat this might be?<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; udev should have run and fo=
und your hdd. So it seems its not<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; finding<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; it when running from initra=
mfs. Can you try to add logs to<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; initramfs<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; and see what udev is doing =
?<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Below is my package li=
st from local.conf.<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; thank you and kind reg=
ards<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Simon :-)<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; EXTRA_IMAGE_FEATURES =
=3D &quot;debug-tweaks ssh-server-openssh&quot;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; IMAGE_INSTALL_append =
=3D &quot; make \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 in=
itscripts \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 gr=
ub \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 in=
itramfs-boot \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 sy=
slinux \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 in=
itramfs-live-install \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 in=
itramfs-live-install-efi \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 in=
itramfs-live-boot \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 xi=
nit \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 xw=
ininfo \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 op=
enssh-sftp \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 op=
enssh-sftp-server \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qt=
base-plugins \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qt=
connectivity \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qt=
declarative \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qt=
declarative-plugins \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qt=
declarative-tools \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qt=
declarative-qmlplugins \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qt=
enginio \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qt=
location \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qt=
multimedia \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qt=
multimedia-plugins \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qt=
multimedia-qmlplugins \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qt=
systems \<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; &quot;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Viele Gr=C3=BCsse<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Simon Bolek :-)<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; mit freundlichem Gruss=
 / kind regards / pozdrawiam<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Simon P. Bolek<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; ----------------------=
--------------------------------<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Dipl. Inf. Simon P. Bo=
lek<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; SAP Integration Archit=
ect<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Business Mobile and IV=
I Solutions<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; mailto: <a href=3D"mai=
lto:simon.bolek@arcom-ivi.de">simon.bolek@arcom-ivi.de</a><br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; <a href=3D"http://www.=
arcom-ivi.de/" rel=3D"noreferrer" target=3D"_blank">http://www.arcom-ivi.de=
/</a><br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; XING: <a href=3D"https=
://www.xing.com/profile/SimonP_Bolek" rel=3D"noreferrer" target=3D"_blank">=
https://www.xing.com/profile/SimonP_Bolek</a><br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; --<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; ______________________=
_________________________<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; yocto mailing list<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; <a href=3D"mailto:yoct=
o@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; <a href=3D"https://lis=
ts.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer" target=3D"_blank">ht=
tps://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div></div></div>

--001a1140e81e234bdf053821c22b--
