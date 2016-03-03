Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6FD80E00BEB; Thu,  3 Mar 2016 12:42:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD673E00BE1
	for <yocto@yoctoproject.org>; Thu,  3 Mar 2016 12:41:56 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u23KfjIl006320
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 3 Mar 2016 12:41:45 -0800 (PST)
Received: from soho-mhatle-m.local (172.25.36.235) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Thu, 3 Mar 2016 12:41:44 -0800
To: Joe MacDonald <Joe_MacDonald@mentor.com>, Philip Tricca <flihp@twobit.us>
References: <1456984524-70640-1-git-send-email-flihp@twobit.us>
	<56D7D2D9.2080306@twobit.us> <20160303203128.GD4671@mentor.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <56D8A187.8050502@windriver.com>
Date: Thu, 3 Mar 2016 14:41:43 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <20160303203128.GD4671@mentor.com>
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
X-List-Received-Date: Thu, 03 Mar 2016 20:42:00 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 3/3/16 2:31 PM, Joe MacDonald wrote:
> [Re: [yocto] [meta-selinux][PATCH] udev: Rename udev bbappend to eudev.] On 16.03.02 (Wed 21:59) Philip Tricca wrote:
> 
>> Not sure what to do with PR value in this case.
> 
> Since it's a 'new' recipe, isn't this a case where we dump the PR
> entirely?

Yup, all new stuff any reference to PR goes away, unless there is a specific
reason to keep it.

--Mark

> -J.
> 
>>
>> Philip
>>
>> On 03/02/2016 09:55 PM, Philip Tricca wrote:
>>> Required by switch to eudev in oe-core.
>>>
>>> Signed-off-by: Philip Tricca <flihp@twobit.us>
>>> ---
>>>  recipes-core/eudev/eudev/init           | 144 ++++++++++++++++++++++++++++++++
>>>  recipes-core/eudev/eudev/udev-cache     |  32 +++++++
>>>  recipes-core/eudev/eudev_3.1.5.bbappend |   5 ++
>>>  recipes-core/udev/udev/init             | 144 --------------------------------
>>>  recipes-core/udev/udev/udev-cache       |  32 -------
>>>  recipes-core/udev/udev_182.bbappend     |   5 --
>>>  6 files changed, 181 insertions(+), 181 deletions(-)
>>>  create mode 100644 recipes-core/eudev/eudev/init
>>>  create mode 100644 recipes-core/eudev/eudev/udev-cache
>>>  create mode 100644 recipes-core/eudev/eudev_3.1.5.bbappend
>>>  delete mode 100644 recipes-core/udev/udev/init
>>>  delete mode 100644 recipes-core/udev/udev/udev-cache
>>>  delete mode 100644 recipes-core/udev/udev_182.bbappend
>>>
>>> diff --git a/recipes-core/eudev/eudev/init b/recipes-core/eudev/eudev/init
>>> new file mode 100644
>>> index 0000000..bb8b95b
>>> --- /dev/null
>>> +++ b/recipes-core/eudev/eudev/init
>>> @@ -0,0 +1,144 @@
>>> +#!/bin/sh
>>> +
>>> +### BEGIN INIT INFO
>>> +# Provides:          udev
>>> +# Required-Start:    mountvirtfs
>>> +# Required-Stop:     
>>> +# Default-Start:     S
>>> +# Default-Stop:
>>> +# Short-Description: Start udevd, populate /dev and load drivers.
>>> +### END INIT INFO
>>> +
>>> +export TZ=/etc/localtime
>>> +
>>> +[ -d /sys/class ] || exit 1
>>> +[ -r /proc/mounts ] || exit 1
>>> +[ -x @UDEVD@ ] || exit 1
>>> +if [ "$use_udev_cache" != "" ]; then
>>> +	[ -f /etc/default/udev-cache ] && . /etc/default/udev-cache
>>> +fi
>>> +[ -f /etc/udev/udev.conf ] && . /etc/udev/udev.conf
>>> +[ -f /etc/default/rcS ] && . /etc/default/rcS
>>> +
>>> +readfiles () {
>>> +   READDATA=""
>>> +   for filename in $@; do
>>> +	   if [ -r $filename ]; then
>>> +		   while read line; do
>>> +			   READDATA="$READDATA$line"
>>> +		   done < $filename
>>> +	   fi
>>> +   done
>>> +}
>>> +
>>> +kill_udevd () {
>>> +    pid=`pidof -x udevd`
>>> +    [ -n "$pid" ] && kill $pid
>>> +}
>>> +
>>> +case "$1" in
>>> +  start)
>>> +    export ACTION=add
>>> +    # propagate /dev from /sys
>>> +    echo "Starting udev"
>>> +
>>> +    # Check for requireed devtmpfs before trying to start udev and
>>> +    # mount a no-existant fs.
>>> +    if ! grep -q devtmpfs /proc/filesystems
>>> +    then
>>> +        echo "Missing devtmpfs, which is required for udev to run";
>>> +        echo "Halting..."
>>> +        halt
>>> +    fi
>>> +    # mount the devtmpfs on /dev, if not already done
>>> +    LANG=C awk '$2 == "/dev" && ($3 == "devtmpfs") { exit 1 }' /proc/mounts && {
>>> +            mount -n -o mode=0755 -t devtmpfs none "/dev"
>>> +    }
>>> +    [ -e /dev/pts ] || mkdir -m 0755 /dev/pts
>>> +    [ -e /dev/shm ] || mkdir -m 1777 /dev/shm
>>> +    # the automount rule for udev needs /tmp directory available, as /tmp is a symlink
>>> +    # to /var/tmp which in turn is a symlink to /var/volatile/tmp, we need to make sure
>>> +    # /var/volatile/tmp directory to be available.
>>> +    mkdir -p /var/volatile/tmp
>>> +
>>> +    # restorecon /run early to allow mdadm creating dir /run/mdadm
>>> +    test ! -x /sbin/restorecon || /sbin/restorecon -F /run
>>> +
>>> +    # Cache handling.
>>> +    # A list of files which are used as a criteria to judge whether the udev cache could be reused.
>>> +    CMP_FILE_LIST="/proc/version /proc/cmdline /proc/devices /proc/atags"
>>> +    if [ "$use_udev_cache" != "" ]; then
>>> +	    if [ "$DEVCACHE" != "" ]; then
>>> +		    if [ -e $DEVCACHE ]; then
>>> +			    readfiles $CMP_FILE_LIST
>>> +			    NEWDATA="$READDATA"
>>> +			    readfiles /etc/udev/cache.data
>>> +			    OLDDATA="$READDATA"
>>> +			    if [ "$OLDDATA" = "$NEWDATA" ]; then
>>> +				    tar --directory=/ -xf $DEVCACHE > /dev/null 2>&1
>>> +				    not_first_boot=1
>>> +				    [ "$VERBOSE" != "no" ] && echo "udev: using cache file $DEVCACHE"
>>> +				    [ -e /dev/shm/udev.cache ] && rm -f /dev/shm/udev.cache
>>> +			    else
>>> +				    # Output detailed reason why the cached /dev is not used
>>> +				    if [ "$VERBOSE" != "no" ]; then
>>> +					    echo "udev: udev cache not used"
>>> +					    echo "udev: we use $CMP_FILE_LIST as criteria to judge whether the cache /dev could be resued"
>>> +					    echo "udev: olddata: $OLDDATA"
>>> +					    echo "udev: newdata: $NEWDATA"
>>> +				    fi
>>> +				    echo "$NEWDATA" > /dev/shm/udev.cache
>>> +			    fi
>>> +			    /usr/sbin/setenforce 1
>>> +		    else
>>> +			    if [ "$ROOTFS_READ_ONLY" != "yes" ]; then
>>> +				    # If rootfs is not read-only, it's possible that a new udev cache would be generated;
>>> +				    # otherwise, we do not bother to read files.
>>> +				    readfiles $CMP_FILE_LIST
>>> +				    echo "$READDATA" > /dev/shm/udev.cache
>>> +			    fi
>>> +		    fi
>>> +	    fi
>>> +    fi
>>> +
>>> +    # make_extra_nodes
>>> +    kill_udevd > "/dev/null" 2>&1
>>> +
>>> +    # trigger the sorted events
>>> +    echo -e '\000\000\000\000' > /proc/sys/kernel/hotplug
>>> +    @UDEVD@ -d
>>> +
>>> +    udevadm control --env=STARTUP=1
>>> +    if [ "$not_first_boot" != "" ];then
>>> +            udevadm trigger --action=add --subsystem-nomatch=tty --subsystem-nomatch=mem --subsystem-nomatch=vc --subsystem-nomatch=vtconsole --subsystem-nomatch=misc --subsystem-nomatch=dcon --subsystem-nomatch=pci_bus  --subsystem-nomatch=graphics	 --subsystem-nomatch=backlight --subsystem-nomatch=video4linux	--subsystem-nomatch=platform
>>> +            (udevadm settle --timeout=10; udevadm control --env=STARTUP=)&
>>> +    else
>>> +            udevadm trigger --action=add
>>> +            udevadm settle
>>> +    fi
>>> +
>>> +    test ! -x /sbin/restorecon || /sbin/restorecon -F /dev /dev/shm /dev/pts
>>> +
>>> +    ;;
>>> +  stop)
>>> +    echo "Stopping udevd"
>>> +    start-stop-daemon --stop --name udevd --quiet
>>> +    ;;
>>> +  restart)
>>> +    $0 stop
>>> +    sleep 1
>>> +    $0 start
>>> +    ;;
>>> +  status)
>>> +    pid=`pidof -x udevd`
>>> +    if [ -n "$pid" ]; then
>>> +	echo "udevd (pid $pid) is running ..."
>>> +    else
>>> +	echo "udevd is stopped"
>>> +    fi
>>> +    ;;
>>> +  *)
>>> +    echo "Usage: $0 {start|stop|status|restart}"
>>> +    exit 1
>>> +esac
>>> +exit 0
>>> diff --git a/recipes-core/eudev/eudev/udev-cache b/recipes-core/eudev/eudev/udev-cache
>>> new file mode 100644
>>> index 0000000..6898577
>>> --- /dev/null
>>> +++ b/recipes-core/eudev/eudev/udev-cache
>>> @@ -0,0 +1,32 @@
>>> +#!/bin/sh -e
>>> +
>>> +### BEGIN INIT INFO
>>> +# Provides:          udev-cache
>>> +# Required-Start:    mountall
>>> +# Required-Stop:
>>> +# Default-Start:     S
>>> +# Default-Stop:
>>> +# Short-Description: cache /dev to speedup the udev next boot
>>> +### END INIT INFO
>>> +
>>> +export TZ=/etc/localtime
>>> +
>>> +[ -r /proc/mounts ] || exit 1
>>> +[ -x @UDEVD@ ] || exit 1
>>> +[ -d /sys/class ] || exit 1
>>> +
>>> +[ -f /etc/default/rcS ] && . /etc/default/rcS
>>> +[ -f /etc/default/udev-cache ] && . /etc/default/udev-cache
>>> +
>>> +if [ "$ROOTFS_READ_ONLY" = "yes" ]; then
>>> +    [ "$VERBOSE" != "no" ] && echo "udev-cache: read-only rootfs, skip generating udev-cache"
>>> +    exit 0
>>> +fi
>>> +
>>> +if [ "$DEVCACHE" != "" -a -e /dev/shm/udev.cache ]; then
>>> +	echo "Populating dev cache"
>>> +	tar --directory=/ --selinux --xattrs -cf "$DEVCACHE" dev
>>> +	mv /dev/shm/udev.cache /etc/udev/cache.data
>>> +fi
>>> +
>>> +exit 0
>>> diff --git a/recipes-core/eudev/eudev_3.1.5.bbappend b/recipes-core/eudev/eudev_3.1.5.bbappend
>>> new file mode 100644
>>> index 0000000..e87af0b
>>> --- /dev/null
>>> +++ b/recipes-core/eudev/eudev_3.1.5.bbappend
>>> @@ -0,0 +1,5 @@
>>> +PR .= ".4"
>>> +
>>> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>> +
>>> +inherit enable-selinux
>>> diff --git a/recipes-core/udev/udev/init b/recipes-core/udev/udev/init
>>> deleted file mode 100644
>>> index bb8b95b..0000000
>>> --- a/recipes-core/udev/udev/init
>>> +++ /dev/null
>>> @@ -1,144 +0,0 @@
>>> -#!/bin/sh
>>> -
>>> -### BEGIN INIT INFO
>>> -# Provides:          udev
>>> -# Required-Start:    mountvirtfs
>>> -# Required-Stop:     
>>> -# Default-Start:     S
>>> -# Default-Stop:
>>> -# Short-Description: Start udevd, populate /dev and load drivers.
>>> -### END INIT INFO
>>> -
>>> -export TZ=/etc/localtime
>>> -
>>> -[ -d /sys/class ] || exit 1
>>> -[ -r /proc/mounts ] || exit 1
>>> -[ -x @UDEVD@ ] || exit 1
>>> -if [ "$use_udev_cache" != "" ]; then
>>> -	[ -f /etc/default/udev-cache ] && . /etc/default/udev-cache
>>> -fi
>>> -[ -f /etc/udev/udev.conf ] && . /etc/udev/udev.conf
>>> -[ -f /etc/default/rcS ] && . /etc/default/rcS
>>> -
>>> -readfiles () {
>>> -   READDATA=""
>>> -   for filename in $@; do
>>> -	   if [ -r $filename ]; then
>>> -		   while read line; do
>>> -			   READDATA="$READDATA$line"
>>> -		   done < $filename
>>> -	   fi
>>> -   done
>>> -}
>>> -
>>> -kill_udevd () {
>>> -    pid=`pidof -x udevd`
>>> -    [ -n "$pid" ] && kill $pid
>>> -}
>>> -
>>> -case "$1" in
>>> -  start)
>>> -    export ACTION=add
>>> -    # propagate /dev from /sys
>>> -    echo "Starting udev"
>>> -
>>> -    # Check for requireed devtmpfs before trying to start udev and
>>> -    # mount a no-existant fs.
>>> -    if ! grep -q devtmpfs /proc/filesystems
>>> -    then
>>> -        echo "Missing devtmpfs, which is required for udev to run";
>>> -        echo "Halting..."
>>> -        halt
>>> -    fi
>>> -    # mount the devtmpfs on /dev, if not already done
>>> -    LANG=C awk '$2 == "/dev" && ($3 == "devtmpfs") { exit 1 }' /proc/mounts && {
>>> -            mount -n -o mode=0755 -t devtmpfs none "/dev"
>>> -    }
>>> -    [ -e /dev/pts ] || mkdir -m 0755 /dev/pts
>>> -    [ -e /dev/shm ] || mkdir -m 1777 /dev/shm
>>> -    # the automount rule for udev needs /tmp directory available, as /tmp is a symlink
>>> -    # to /var/tmp which in turn is a symlink to /var/volatile/tmp, we need to make sure
>>> -    # /var/volatile/tmp directory to be available.
>>> -    mkdir -p /var/volatile/tmp
>>> -
>>> -    # restorecon /run early to allow mdadm creating dir /run/mdadm
>>> -    test ! -x /sbin/restorecon || /sbin/restorecon -F /run
>>> -
>>> -    # Cache handling.
>>> -    # A list of files which are used as a criteria to judge whether the udev cache could be reused.
>>> -    CMP_FILE_LIST="/proc/version /proc/cmdline /proc/devices /proc/atags"
>>> -    if [ "$use_udev_cache" != "" ]; then
>>> -	    if [ "$DEVCACHE" != "" ]; then
>>> -		    if [ -e $DEVCACHE ]; then
>>> -			    readfiles $CMP_FILE_LIST
>>> -			    NEWDATA="$READDATA"
>>> -			    readfiles /etc/udev/cache.data
>>> -			    OLDDATA="$READDATA"
>>> -			    if [ "$OLDDATA" = "$NEWDATA" ]; then
>>> -				    tar --directory=/ -xf $DEVCACHE > /dev/null 2>&1
>>> -				    not_first_boot=1
>>> -				    [ "$VERBOSE" != "no" ] && echo "udev: using cache file $DEVCACHE"
>>> -				    [ -e /dev/shm/udev.cache ] && rm -f /dev/shm/udev.cache
>>> -			    else
>>> -				    # Output detailed reason why the cached /dev is not used
>>> -				    if [ "$VERBOSE" != "no" ]; then
>>> -					    echo "udev: udev cache not used"
>>> -					    echo "udev: we use $CMP_FILE_LIST as criteria to judge whether the cache /dev could be resued"
>>> -					    echo "udev: olddata: $OLDDATA"
>>> -					    echo "udev: newdata: $NEWDATA"
>>> -				    fi
>>> -				    echo "$NEWDATA" > /dev/shm/udev.cache
>>> -			    fi
>>> -			    /usr/sbin/setenforce 1
>>> -		    else
>>> -			    if [ "$ROOTFS_READ_ONLY" != "yes" ]; then
>>> -				    # If rootfs is not read-only, it's possible that a new udev cache would be generated;
>>> -				    # otherwise, we do not bother to read files.
>>> -				    readfiles $CMP_FILE_LIST
>>> -				    echo "$READDATA" > /dev/shm/udev.cache
>>> -			    fi
>>> -		    fi
>>> -	    fi
>>> -    fi
>>> -
>>> -    # make_extra_nodes
>>> -    kill_udevd > "/dev/null" 2>&1
>>> -
>>> -    # trigger the sorted events
>>> -    echo -e '\000\000\000\000' > /proc/sys/kernel/hotplug
>>> -    @UDEVD@ -d
>>> -
>>> -    udevadm control --env=STARTUP=1
>>> -    if [ "$not_first_boot" != "" ];then
>>> -            udevadm trigger --action=add --subsystem-nomatch=tty --subsystem-nomatch=mem --subsystem-nomatch=vc --subsystem-nomatch=vtconsole --subsystem-nomatch=misc --subsystem-nomatch=dcon --subsystem-nomatch=pci_bus  --subsystem-nomatch=graphics	 --subsystem-nomatch=backlight --subsystem-nomatch=video4linux	--subsystem-nomatch=platform
>>> -            (udevadm settle --timeout=10; udevadm control --env=STARTUP=)&
>>> -    else
>>> -            udevadm trigger --action=add
>>> -            udevadm settle
>>> -    fi
>>> -
>>> -    test ! -x /sbin/restorecon || /sbin/restorecon -F /dev /dev/shm /dev/pts
>>> -
>>> -    ;;
>>> -  stop)
>>> -    echo "Stopping udevd"
>>> -    start-stop-daemon --stop --name udevd --quiet
>>> -    ;;
>>> -  restart)
>>> -    $0 stop
>>> -    sleep 1
>>> -    $0 start
>>> -    ;;
>>> -  status)
>>> -    pid=`pidof -x udevd`
>>> -    if [ -n "$pid" ]; then
>>> -	echo "udevd (pid $pid) is running ..."
>>> -    else
>>> -	echo "udevd is stopped"
>>> -    fi
>>> -    ;;
>>> -  *)
>>> -    echo "Usage: $0 {start|stop|status|restart}"
>>> -    exit 1
>>> -esac
>>> -exit 0
>>> diff --git a/recipes-core/udev/udev/udev-cache b/recipes-core/udev/udev/udev-cache
>>> deleted file mode 100644
>>> index 6898577..0000000
>>> --- a/recipes-core/udev/udev/udev-cache
>>> +++ /dev/null
>>> @@ -1,32 +0,0 @@
>>> -#!/bin/sh -e
>>> -
>>> -### BEGIN INIT INFO
>>> -# Provides:          udev-cache
>>> -# Required-Start:    mountall
>>> -# Required-Stop:
>>> -# Default-Start:     S
>>> -# Default-Stop:
>>> -# Short-Description: cache /dev to speedup the udev next boot
>>> -### END INIT INFO
>>> -
>>> -export TZ=/etc/localtime
>>> -
>>> -[ -r /proc/mounts ] || exit 1
>>> -[ -x @UDEVD@ ] || exit 1
>>> -[ -d /sys/class ] || exit 1
>>> -
>>> -[ -f /etc/default/rcS ] && . /etc/default/rcS
>>> -[ -f /etc/default/udev-cache ] && . /etc/default/udev-cache
>>> -
>>> -if [ "$ROOTFS_READ_ONLY" = "yes" ]; then
>>> -    [ "$VERBOSE" != "no" ] && echo "udev-cache: read-only rootfs, skip generating udev-cache"
>>> -    exit 0
>>> -fi
>>> -
>>> -if [ "$DEVCACHE" != "" -a -e /dev/shm/udev.cache ]; then
>>> -	echo "Populating dev cache"
>>> -	tar --directory=/ --selinux --xattrs -cf "$DEVCACHE" dev
>>> -	mv /dev/shm/udev.cache /etc/udev/cache.data
>>> -fi
>>> -
>>> -exit 0
>>> diff --git a/recipes-core/udev/udev_182.bbappend b/recipes-core/udev/udev_182.bbappend
>>> deleted file mode 100644
>>> index 6f8f049..0000000
>>> --- a/recipes-core/udev/udev_182.bbappend
>>> +++ /dev/null
>>> @@ -1,5 +0,0 @@
>>> -PR .= ".4"
>>> -
>>> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>> -
>>> -inherit with-selinux
>>>
>>


