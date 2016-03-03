Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47C9FE00BEA; Thu,  3 Mar 2016 12:31:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BE6DE00BAB
	for <yocto@yoctoproject.org>; Thu,  3 Mar 2016 12:31:32 -0800 (PST)
Received: from svr-orw-fem-06.mgc.mentorg.com ([147.34.97.120])
	by relay1.mentorg.com with esmtp 
	id 1abZuF-0007f3-I9 from Joe_MacDonald@mentor.com ;
	Thu, 03 Mar 2016 12:31:31 -0800
Received: from burninator (147.34.91.1) by SVR-ORW-FEM-06.mgc.mentorg.com
	(147.34.97.120) with Microsoft SMTP Server id 14.3.224.2;
	Thu, 3 Mar 2016 12:31:30 -0800
Received: by burninator (Postfix, from userid 1000)	id A561A5833BA; Thu,  3
	Mar 2016 15:31:29 -0500 (EST)
Date: Thu, 3 Mar 2016 15:31:29 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: Philip Tricca <flihp@twobit.us>
Message-ID: <20160303203128.GD4671@mentor.com>
References: <1456984524-70640-1-git-send-email-flihp@twobit.us>
	<56D7D2D9.2080306@twobit.us>
MIME-Version: 1.0
In-Reply-To: <56D7D2D9.2080306@twobit.us>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] udev: Rename udev bbappend to eudev.
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
X-List-Received-Date: Thu, 03 Mar 2016 20:31:36 -0000
X-Groupsio-MsgNum: 28842
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="JwB53PgKC5A7+0Ej"
Content-Disposition: inline

--JwB53PgKC5A7+0Ej
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [meta-selinux][PATCH] udev: Rename udev bbappend to eudev.] On=
 16.03.02 (Wed 21:59) Philip Tricca wrote:

> Not sure what to do with PR value in this case.

Since it's a 'new' recipe, isn't this a case where we dump the PR
entirely?

-J.

>=20
> Philip
>=20
> On 03/02/2016 09:55 PM, Philip Tricca wrote:
> > Required by switch to eudev in oe-core.
> >=20
> > Signed-off-by: Philip Tricca <flihp@twobit.us>
> > ---
> >  recipes-core/eudev/eudev/init           | 144 ++++++++++++++++++++++++=
++++++++
> >  recipes-core/eudev/eudev/udev-cache     |  32 +++++++
> >  recipes-core/eudev/eudev_3.1.5.bbappend |   5 ++
> >  recipes-core/udev/udev/init             | 144 ------------------------=
--------
> >  recipes-core/udev/udev/udev-cache       |  32 -------
> >  recipes-core/udev/udev_182.bbappend     |   5 --
> >  6 files changed, 181 insertions(+), 181 deletions(-)
> >  create mode 100644 recipes-core/eudev/eudev/init
> >  create mode 100644 recipes-core/eudev/eudev/udev-cache
> >  create mode 100644 recipes-core/eudev/eudev_3.1.5.bbappend
> >  delete mode 100644 recipes-core/udev/udev/init
> >  delete mode 100644 recipes-core/udev/udev/udev-cache
> >  delete mode 100644 recipes-core/udev/udev_182.bbappend
> >=20
> > diff --git a/recipes-core/eudev/eudev/init b/recipes-core/eudev/eudev/i=
nit
> > new file mode 100644
> > index 0000000..bb8b95b
> > --- /dev/null
> > +++ b/recipes-core/eudev/eudev/init
> > @@ -0,0 +1,144 @@
> > +#!/bin/sh
> > +
> > +### BEGIN INIT INFO
> > +# Provides:          udev
> > +# Required-Start:    mountvirtfs
> > +# Required-Stop:    =20
> > +# Default-Start:     S
> > +# Default-Stop:
> > +# Short-Description: Start udevd, populate /dev and load drivers.
> > +### END INIT INFO
> > +
> > +export TZ=3D/etc/localtime
> > +
> > +[ -d /sys/class ] || exit 1
> > +[ -r /proc/mounts ] || exit 1
> > +[ -x @UDEVD@ ] || exit 1
> > +if [ "$use_udev_cache" !=3D "" ]; then
> > +	[ -f /etc/default/udev-cache ] && . /etc/default/udev-cache
> > +fi
> > +[ -f /etc/udev/udev.conf ] && . /etc/udev/udev.conf
> > +[ -f /etc/default/rcS ] && . /etc/default/rcS
> > +
> > +readfiles () {
> > +   READDATA=3D""
> > +   for filename in $@; do
> > +	   if [ -r $filename ]; then
> > +		   while read line; do
> > +			   READDATA=3D"$READDATA$line"
> > +		   done < $filename
> > +	   fi
> > +   done
> > +}
> > +
> > +kill_udevd () {
> > +    pid=3D`pidof -x udevd`
> > +    [ -n "$pid" ] && kill $pid
> > +}
> > +
> > +case "$1" in
> > +  start)
> > +    export ACTION=3Dadd
> > +    # propagate /dev from /sys
> > +    echo "Starting udev"
> > +
> > +    # Check for requireed devtmpfs before trying to start udev and
> > +    # mount a no-existant fs.
> > +    if ! grep -q devtmpfs /proc/filesystems
> > +    then
> > +        echo "Missing devtmpfs, which is required for udev to run";
> > +        echo "Halting..."
> > +        halt
> > +    fi
> > +    # mount the devtmpfs on /dev, if not already done
> > +    LANG=3DC awk '$2 =3D=3D "/dev" && ($3 =3D=3D "devtmpfs") { exit 1 =
}' /proc/mounts && {
> > +            mount -n -o mode=3D0755 -t devtmpfs none "/dev"
> > +    }
> > +    [ -e /dev/pts ] || mkdir -m 0755 /dev/pts
> > +    [ -e /dev/shm ] || mkdir -m 1777 /dev/shm
> > +    # the automount rule for udev needs /tmp directory available, as /=
tmp is a symlink
> > +    # to /var/tmp which in turn is a symlink to /var/volatile/tmp, we =
need to make sure
> > +    # /var/volatile/tmp directory to be available.
> > +    mkdir -p /var/volatile/tmp
> > +
> > +    # restorecon /run early to allow mdadm creating dir /run/mdadm
> > +    test ! -x /sbin/restorecon || /sbin/restorecon -F /run
> > +
> > +    # Cache handling.
> > +    # A list of files which are used as a criteria to judge whether th=
e udev cache could be reused.
> > +    CMP_FILE_LIST=3D"/proc/version /proc/cmdline /proc/devices /proc/a=
tags"
> > +    if [ "$use_udev_cache" !=3D "" ]; then
> > +	    if [ "$DEVCACHE" !=3D "" ]; then
> > +		    if [ -e $DEVCACHE ]; then
> > +			    readfiles $CMP_FILE_LIST
> > +			    NEWDATA=3D"$READDATA"
> > +			    readfiles /etc/udev/cache.data
> > +			    OLDDATA=3D"$READDATA"
> > +			    if [ "$OLDDATA" =3D "$NEWDATA" ]; then
> > +				    tar --directory=3D/ -xf $DEVCACHE > /dev/null 2>&1
> > +				    not_first_boot=3D1
> > +				    [ "$VERBOSE" !=3D "no" ] && echo "udev: using cache file $DEVC=
ACHE"
> > +				    [ -e /dev/shm/udev.cache ] && rm -f /dev/shm/udev.cache
> > +			    else
> > +				    # Output detailed reason why the cached /dev is not used
> > +				    if [ "$VERBOSE" !=3D "no" ]; then
> > +					    echo "udev: udev cache not used"
> > +					    echo "udev: we use $CMP_FILE_LIST as criteria to judge whethe=
r the cache /dev could be resued"
> > +					    echo "udev: olddata: $OLDDATA"
> > +					    echo "udev: newdata: $NEWDATA"
> > +				    fi
> > +				    echo "$NEWDATA" > /dev/shm/udev.cache
> > +			    fi
> > +			    /usr/sbin/setenforce 1
> > +		    else
> > +			    if [ "$ROOTFS_READ_ONLY" !=3D "yes" ]; then
> > +				    # If rootfs is not read-only, it's possible that a new udev ca=
che would be generated;
> > +				    # otherwise, we do not bother to read files.
> > +				    readfiles $CMP_FILE_LIST
> > +				    echo "$READDATA" > /dev/shm/udev.cache
> > +			    fi
> > +		    fi
> > +	    fi
> > +    fi
> > +
> > +    # make_extra_nodes
> > +    kill_udevd > "/dev/null" 2>&1
> > +
> > +    # trigger the sorted events
> > +    echo -e '\000\000\000\000' > /proc/sys/kernel/hotplug
> > +    @UDEVD@ -d
> > +
> > +    udevadm control --env=3DSTARTUP=3D1
> > +    if [ "$not_first_boot" !=3D "" ];then
> > +            udevadm trigger --action=3Dadd --subsystem-nomatch=3Dtty -=
-subsystem-nomatch=3Dmem --subsystem-nomatch=3Dvc --subsystem-nomatch=3Dvtc=
onsole --subsystem-nomatch=3Dmisc --subsystem-nomatch=3Ddcon --subsystem-no=
match=3Dpci_bus  --subsystem-nomatch=3Dgraphics	 --subsystem-nomatch=3Dback=
light --subsystem-nomatch=3Dvideo4linux	--subsystem-nomatch=3Dplatform
> > +            (udevadm settle --timeout=3D10; udevadm control --env=3DST=
ARTUP=3D)&
> > +    else
> > +            udevadm trigger --action=3Dadd
> > +            udevadm settle
> > +    fi
> > +
> > +    test ! -x /sbin/restorecon || /sbin/restorecon -F /dev /dev/shm /d=
ev/pts
> > +
> > +    ;;
> > +  stop)
> > +    echo "Stopping udevd"
> > +    start-stop-daemon --stop --name udevd --quiet
> > +    ;;
> > +  restart)
> > +    $0 stop
> > +    sleep 1
> > +    $0 start
> > +    ;;
> > +  status)
> > +    pid=3D`pidof -x udevd`
> > +    if [ -n "$pid" ]; then
> > +	echo "udevd (pid $pid) is running ..."
> > +    else
> > +	echo "udevd is stopped"
> > +    fi
> > +    ;;
> > +  *)
> > +    echo "Usage: $0 {start|stop|status|restart}"
> > +    exit 1
> > +esac
> > +exit 0
> > diff --git a/recipes-core/eudev/eudev/udev-cache b/recipes-core/eudev/e=
udev/udev-cache
> > new file mode 100644
> > index 0000000..6898577
> > --- /dev/null
> > +++ b/recipes-core/eudev/eudev/udev-cache
> > @@ -0,0 +1,32 @@
> > +#!/bin/sh -e
> > +
> > +### BEGIN INIT INFO
> > +# Provides:          udev-cache
> > +# Required-Start:    mountall
> > +# Required-Stop:
> > +# Default-Start:     S
> > +# Default-Stop:
> > +# Short-Description: cache /dev to speedup the udev next boot
> > +### END INIT INFO
> > +
> > +export TZ=3D/etc/localtime
> > +
> > +[ -r /proc/mounts ] || exit 1
> > +[ -x @UDEVD@ ] || exit 1
> > +[ -d /sys/class ] || exit 1
> > +
> > +[ -f /etc/default/rcS ] && . /etc/default/rcS
> > +[ -f /etc/default/udev-cache ] && . /etc/default/udev-cache
> > +
> > +if [ "$ROOTFS_READ_ONLY" =3D "yes" ]; then
> > +    [ "$VERBOSE" !=3D "no" ] && echo "udev-cache: read-only rootfs, sk=
ip generating udev-cache"
> > +    exit 0
> > +fi
> > +
> > +if [ "$DEVCACHE" !=3D "" -a -e /dev/shm/udev.cache ]; then
> > +	echo "Populating dev cache"
> > +	tar --directory=3D/ --selinux --xattrs -cf "$DEVCACHE" dev
> > +	mv /dev/shm/udev.cache /etc/udev/cache.data
> > +fi
> > +
> > +exit 0
> > diff --git a/recipes-core/eudev/eudev_3.1.5.bbappend b/recipes-core/eud=
ev/eudev_3.1.5.bbappend
> > new file mode 100644
> > index 0000000..e87af0b
> > --- /dev/null
> > +++ b/recipes-core/eudev/eudev_3.1.5.bbappend
> > @@ -0,0 +1,5 @@
> > +PR .=3D ".4"
> > +
> > +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> > +
> > +inherit enable-selinux
> > diff --git a/recipes-core/udev/udev/init b/recipes-core/udev/udev/init
> > deleted file mode 100644
> > index bb8b95b..0000000
> > --- a/recipes-core/udev/udev/init
> > +++ /dev/null
> > @@ -1,144 +0,0 @@
> > -#!/bin/sh
> > -
> > -### BEGIN INIT INFO
> > -# Provides:          udev
> > -# Required-Start:    mountvirtfs
> > -# Required-Stop:    =20
> > -# Default-Start:     S
> > -# Default-Stop:
> > -# Short-Description: Start udevd, populate /dev and load drivers.
> > -### END INIT INFO
> > -
> > -export TZ=3D/etc/localtime
> > -
> > -[ -d /sys/class ] || exit 1
> > -[ -r /proc/mounts ] || exit 1
> > -[ -x @UDEVD@ ] || exit 1
> > -if [ "$use_udev_cache" !=3D "" ]; then
> > -	[ -f /etc/default/udev-cache ] && . /etc/default/udev-cache
> > -fi
> > -[ -f /etc/udev/udev.conf ] && . /etc/udev/udev.conf
> > -[ -f /etc/default/rcS ] && . /etc/default/rcS
> > -
> > -readfiles () {
> > -   READDATA=3D""
> > -   for filename in $@; do
> > -	   if [ -r $filename ]; then
> > -		   while read line; do
> > -			   READDATA=3D"$READDATA$line"
> > -		   done < $filename
> > -	   fi
> > -   done
> > -}
> > -
> > -kill_udevd () {
> > -    pid=3D`pidof -x udevd`
> > -    [ -n "$pid" ] && kill $pid
> > -}
> > -
> > -case "$1" in
> > -  start)
> > -    export ACTION=3Dadd
> > -    # propagate /dev from /sys
> > -    echo "Starting udev"
> > -
> > -    # Check for requireed devtmpfs before trying to start udev and
> > -    # mount a no-existant fs.
> > -    if ! grep -q devtmpfs /proc/filesystems
> > -    then
> > -        echo "Missing devtmpfs, which is required for udev to run";
> > -        echo "Halting..."
> > -        halt
> > -    fi
> > -    # mount the devtmpfs on /dev, if not already done
> > -    LANG=3DC awk '$2 =3D=3D "/dev" && ($3 =3D=3D "devtmpfs") { exit 1 =
}' /proc/mounts && {
> > -            mount -n -o mode=3D0755 -t devtmpfs none "/dev"
> > -    }
> > -    [ -e /dev/pts ] || mkdir -m 0755 /dev/pts
> > -    [ -e /dev/shm ] || mkdir -m 1777 /dev/shm
> > -    # the automount rule for udev needs /tmp directory available, as /=
tmp is a symlink
> > -    # to /var/tmp which in turn is a symlink to /var/volatile/tmp, we =
need to make sure
> > -    # /var/volatile/tmp directory to be available.
> > -    mkdir -p /var/volatile/tmp
> > -
> > -    # restorecon /run early to allow mdadm creating dir /run/mdadm
> > -    test ! -x /sbin/restorecon || /sbin/restorecon -F /run
> > -
> > -    # Cache handling.
> > -    # A list of files which are used as a criteria to judge whether th=
e udev cache could be reused.
> > -    CMP_FILE_LIST=3D"/proc/version /proc/cmdline /proc/devices /proc/a=
tags"
> > -    if [ "$use_udev_cache" !=3D "" ]; then
> > -	    if [ "$DEVCACHE" !=3D "" ]; then
> > -		    if [ -e $DEVCACHE ]; then
> > -			    readfiles $CMP_FILE_LIST
> > -			    NEWDATA=3D"$READDATA"
> > -			    readfiles /etc/udev/cache.data
> > -			    OLDDATA=3D"$READDATA"
> > -			    if [ "$OLDDATA" =3D "$NEWDATA" ]; then
> > -				    tar --directory=3D/ -xf $DEVCACHE > /dev/null 2>&1
> > -				    not_first_boot=3D1
> > -				    [ "$VERBOSE" !=3D "no" ] && echo "udev: using cache file $DEVC=
ACHE"
> > -				    [ -e /dev/shm/udev.cache ] && rm -f /dev/shm/udev.cache
> > -			    else
> > -				    # Output detailed reason why the cached /dev is not used
> > -				    if [ "$VERBOSE" !=3D "no" ]; then
> > -					    echo "udev: udev cache not used"
> > -					    echo "udev: we use $CMP_FILE_LIST as criteria to judge whethe=
r the cache /dev could be resued"
> > -					    echo "udev: olddata: $OLDDATA"
> > -					    echo "udev: newdata: $NEWDATA"
> > -				    fi
> > -				    echo "$NEWDATA" > /dev/shm/udev.cache
> > -			    fi
> > -			    /usr/sbin/setenforce 1
> > -		    else
> > -			    if [ "$ROOTFS_READ_ONLY" !=3D "yes" ]; then
> > -				    # If rootfs is not read-only, it's possible that a new udev ca=
che would be generated;
> > -				    # otherwise, we do not bother to read files.
> > -				    readfiles $CMP_FILE_LIST
> > -				    echo "$READDATA" > /dev/shm/udev.cache
> > -			    fi
> > -		    fi
> > -	    fi
> > -    fi
> > -
> > -    # make_extra_nodes
> > -    kill_udevd > "/dev/null" 2>&1
> > -
> > -    # trigger the sorted events
> > -    echo -e '\000\000\000\000' > /proc/sys/kernel/hotplug
> > -    @UDEVD@ -d
> > -
> > -    udevadm control --env=3DSTARTUP=3D1
> > -    if [ "$not_first_boot" !=3D "" ];then
> > -            udevadm trigger --action=3Dadd --subsystem-nomatch=3Dtty -=
-subsystem-nomatch=3Dmem --subsystem-nomatch=3Dvc --subsystem-nomatch=3Dvtc=
onsole --subsystem-nomatch=3Dmisc --subsystem-nomatch=3Ddcon --subsystem-no=
match=3Dpci_bus  --subsystem-nomatch=3Dgraphics	 --subsystem-nomatch=3Dback=
light --subsystem-nomatch=3Dvideo4linux	--subsystem-nomatch=3Dplatform
> > -            (udevadm settle --timeout=3D10; udevadm control --env=3DST=
ARTUP=3D)&
> > -    else
> > -            udevadm trigger --action=3Dadd
> > -            udevadm settle
> > -    fi
> > -
> > -    test ! -x /sbin/restorecon || /sbin/restorecon -F /dev /dev/shm /d=
ev/pts
> > -
> > -    ;;
> > -  stop)
> > -    echo "Stopping udevd"
> > -    start-stop-daemon --stop --name udevd --quiet
> > -    ;;
> > -  restart)
> > -    $0 stop
> > -    sleep 1
> > -    $0 start
> > -    ;;
> > -  status)
> > -    pid=3D`pidof -x udevd`
> > -    if [ -n "$pid" ]; then
> > -	echo "udevd (pid $pid) is running ..."
> > -    else
> > -	echo "udevd is stopped"
> > -    fi
> > -    ;;
> > -  *)
> > -    echo "Usage: $0 {start|stop|status|restart}"
> > -    exit 1
> > -esac
> > -exit 0
> > diff --git a/recipes-core/udev/udev/udev-cache b/recipes-core/udev/udev=
/udev-cache
> > deleted file mode 100644
> > index 6898577..0000000
> > --- a/recipes-core/udev/udev/udev-cache
> > +++ /dev/null
> > @@ -1,32 +0,0 @@
> > -#!/bin/sh -e
> > -
> > -### BEGIN INIT INFO
> > -# Provides:          udev-cache
> > -# Required-Start:    mountall
> > -# Required-Stop:
> > -# Default-Start:     S
> > -# Default-Stop:
> > -# Short-Description: cache /dev to speedup the udev next boot
> > -### END INIT INFO
> > -
> > -export TZ=3D/etc/localtime
> > -
> > -[ -r /proc/mounts ] || exit 1
> > -[ -x @UDEVD@ ] || exit 1
> > -[ -d /sys/class ] || exit 1
> > -
> > -[ -f /etc/default/rcS ] && . /etc/default/rcS
> > -[ -f /etc/default/udev-cache ] && . /etc/default/udev-cache
> > -
> > -if [ "$ROOTFS_READ_ONLY" =3D "yes" ]; then
> > -    [ "$VERBOSE" !=3D "no" ] && echo "udev-cache: read-only rootfs, sk=
ip generating udev-cache"
> > -    exit 0
> > -fi
> > -
> > -if [ "$DEVCACHE" !=3D "" -a -e /dev/shm/udev.cache ]; then
> > -	echo "Populating dev cache"
> > -	tar --directory=3D/ --selinux --xattrs -cf "$DEVCACHE" dev
> > -	mv /dev/shm/udev.cache /etc/udev/cache.data
> > -fi
> > -
> > -exit 0
> > diff --git a/recipes-core/udev/udev_182.bbappend b/recipes-core/udev/ud=
ev_182.bbappend
> > deleted file mode 100644
> > index 6f8f049..0000000
> > --- a/recipes-core/udev/udev_182.bbappend
> > +++ /dev/null
> > @@ -1,5 +0,0 @@
> > -PR .=3D ".4"
> > -
> > -FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> > -
> > -inherit with-selinux
> >=20
>=20
--=20
-Joe MacDonald.
:wq

--JwB53PgKC5A7+0Ej
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJW2J8gAAoJEEn8ffcsOfaW8QAH/iDjve47nfW6Dw30JmhgqAu6
vv6wINQJv59yYmjzaY2Xc+VMfDM5pCElgqT3M3KlTEansqJb4tfJS4Fp39Oa2L63
Jcdnm2W0TYIGD/wbtdGJCc200OENGK9HuN/bnDe+4/MZWii5Q07QxgJ9mO88KcSA
wjg4bazjWXFQp13yEPV8D01IYxfxoGjW8PXiS2ehBwIp71xl/Zt8m6dW4ZYXLjUK
6Y8JTEqCp6GSMLZcbr6HkUaxYQgUiu372xiPerUdGMryggUXnySIwNSNICk2kFpM
9mQipCCbfysr/zA1QFeNR98wWKBN/YT1T0GyrrVoheEx75cYzlHZa+ZKhrDM5Gs=
=meoo
-----END PGP SIGNATURE-----

--JwB53PgKC5A7+0Ej--
