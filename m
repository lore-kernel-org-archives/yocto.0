Return-Path: <yoavrubin17@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DF9BE00E17; Tue, 12 Nov 2019 12:00:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (yoavrubin17[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
	[209.85.167.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C29D2E00E05
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 12:00:27 -0800 (PST)
Received: by mail-oi1-f176.google.com with SMTP id v138so15992500oif.6
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 12:00:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=2XNmJYPfDD6twLzzM5+9wPTS/uvaBvaxmuM+qcBRFNA=;
	b=JQV8qI3+4GHRrQ34E8TvOrqSBn+h+h3mmOLzVzIBE8JgorWC2/WrBmxobuGSPSByjG
	Lr9VZgUi0cdukJwRkvYEsnV5V9gCtgA3gTYy4hajBlNAWBudoKlwqOLrXWH4c5Ah6cRy
	Ek20zHppq7eIJD7BZWbkFGIpYrKgwnu1uhGWct5ZeXsVRxHSilKixM1Ik2gKSNUwHWBz
	baJw8xRpNp4HS3YPy0/gtTuH4Qb13wDfSlixNQQh1ykh2CmhiJT9GqbI81Iv1gmvEFGz
	TJz0SKET15urlOxY1/8wf/3VWC5fOTbQcnK/WQnT+2Ayd2rqSYTpRP2fvo75PWVj7gEX
	qxLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=2XNmJYPfDD6twLzzM5+9wPTS/uvaBvaxmuM+qcBRFNA=;
	b=SGMEACgsglI7A6D5c8FhBuVi2aNoPxJB11gfYfYLmdoEUKGaKCT9MAY/GqXovZV4Iu
	MgJXSlUr5fEno0Hr1M2UI8i59kFYocg/GLEXPnH2TdRICcczRkaA29pJ0Avjl9aZ9NFt
	ATZUWQ8AztiB3blGqMXI4gns0nW5UCeCRTRkTezqo2OETk4WXu04IyzNpkj3JkusZ0EX
	NZMKCPm+vArsmiO+9UBQT/sl4aPVbCkTW9z4UNzHnVDM/qAwwJecGA83wc81qi1aCR+M
	fNTbmvBbkXsiW5OzYyAuh5rn+yZkVmiu+YhRxefrA7yMRsXYfTAWoxBO4dy5rt2u600v
	0ZXQ==
X-Gm-Message-State: APjAAAVearhogzyLOjHQqVYUS7a+b2JYCElYd5ZXAuKQOKZkhkbLtaoq
	SzYBPY7VVUU56am4zgijTca379KrrCLLwbiw/hOCpPgbXX8=
X-Google-Smtp-Source: APXvYqzZbC8FmvbL0BpjPteaV4GB6S32qQf547T2VrfsPA10VS5ccaMLHeF6PX6fSnd9vZalTVJQAxPJ+QOswpm+/DI=
X-Received: by 2002:aca:3c0b:: with SMTP id j11mr593160oia.105.1573588826558; 
	Tue, 12 Nov 2019 12:00:26 -0800 (PST)
MIME-Version: 1.0
From: Yoav Rubin <yoavrubin17@gmail.com>
Date: Tue, 12 Nov 2019 22:00:15 +0200
Message-ID: <CAM66B2qSLxx6XVsw42VUM4--vB2XNradOTzz1UAONukfZTbTEQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Occasionally long boot after erasing and re creating ext4 fs
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
X-List-Received-Date: Tue, 12 Nov 2019 20:00:44 -0000
Content-Type: multipart/alternative; boundary="00000000000007946f05972bb354"

--00000000000007946f05972bb354
Content-Type: text/plain; charset="UTF-8"

Linux 32bit 4.1.8 kernel , PowerPC , embedded , real time patch , systemV
init.
I had an ext4 file system mounted at /run/media/mmcblk0p1.
I unmounted and erased it and then recreated it:

1)
fdisk /dev/mmcblk0
-> select: n
-> enter (choose default value for start)
-> enter (choose default value for end)
-> enter (choose default)
-> enter (choose default)
-> select: w  (write changes to MBR)
(pressed n , four times enter and w).



2) mkfs.ext4 -E nodiscard -F /dev/mmcblk0p1

After restart I got the following error:
```
EXT4-fs (mmcblk0p1): Filesystem with huge files cannot be mounted RDWR
without CONFIG_LBDAF
```

Because I don't need huge_files support (files bigger than 2TB)
I used:
```
mkfs.ext4 -O ^huge_file -E nodiscard -F /dev/mmcblk0p1
```
and now the system works with /dev/mmcblk0p1 mounted at
/run/media/mmcblk0p1.

the problem is that since these actions , sometimes the boot takes a long
time and sometimes not. I have no Idea why.


**bad dmesg:**
```
[    5.775060] udevd[872]: renamed network interface eth0 to fm2-gb0
[    5.793777] udevd[873]: renamed network interface eth1 to fm2-gb1
[    7.482486] EXT4-fs (mmcblk0p1): recovery complete
[    7.487834] EXT4-fs (mmcblk0p1): mounted filesystem with ordered data
mode. Opts: (null)
[    7.728026] random: dd urandom read with 29 bits of entropy available
[    9.113007] random: nonblocking pool is initialized
[   43.058167]
               [rmStart]:The OSA version is: LINUXA4.1.0 from 16-04-2019
[   43.094075] [rmStart] gpr: id: 0 - physAddr: 0x1a0000000 - len: 0x1000 -
memAddr: 0xf1afe000
[   43.104048] [rmStart] dcfg: id: 7 - physAddr: 0x1900e0000 - len: 0x1000
- memAddr: 0xf1c7a000
```


**good dmesg:**
```
[    5.773918] udevd[872]: renamed network interface eth0 to fm2-gb0
[    5.792785] udevd[873]: renamed network interface eth1 to fm2-gb1
[    7.508329] EXT4-fs (mmcblk0p1): recovery complete
[    7.513673] EXT4-fs (mmcblk0p1): mounted filesystem with ordered data
mode. Opts: (null)
[    7.754070] random: dd urandom read with 29 bits of entropy available
[    9.699353]
               [rmStart]:The OSA version is: LINUXA4.1.0 from 16-04-2019
[    9.710210] [rmStart] gpr: id: 0 - physAddr: 0x1a0000000 - len: 0x1000 -
memAddr: 0xf1afe000
```



**/etc/fstab:**
```
/dev/root            /                    auto       defaults
 1  1
proc                 /proc                proc       defaults
 0  0
devpts               /dev/pts             devpts     mode=0620,gid=5
0  0
tmpfs                /run                 tmpfs
 mode=0755,nodev,nosuid,strictatime 0  0
tmpfs                /var/volatile        tmpfs      defaults
 0  0
/dev/mmcblk0p1 /run/media/mmcblk0p1 ext4 defaults,async,noauto 0 0
```

**tune2fs -l /dev/mmcblk0p1**
```
tune2fs 1.42.9 (28-Dec-2013)
Filesystem volume name:   <none>
Last mounted on:          <not available>
Filesystem UUID:          49ef04af-109b-433d-81b8-e5d42c947c8c
Filesystem magic number:  0xEF53
Filesystem revision #:    1 (dynamic)
Filesystem features:      has_journal ext_attr resize_inode dir_index
filetype needs_recovery extent flex_bg sparse_super large_file uninit_bg
dir_nlink extra_isize
Filesystem flags:         unsigned_directory_hash
Default mount options:    user_xattr acl
Filesystem state:         clean
Errors behavior:          Continue
Filesystem OS type:       Linux
Inode count:              956592
Block count:              3825408
Reserved block count:     191270
Free blocks:              3723263
Free inodes:              956581
First block:              0
Block size:               4096
Fragment size:            4096
Reserved GDT blocks:      933
Blocks per group:         32768
Fragments per group:      32768
Inodes per group:         8176
Inode blocks per group:   511
Flex block group size:    16
Filesystem created:       Wed Dec 13 15:17:05 2017
Last mount time:          Thu Jan  1 00:00:07 1970
Last write time:          Thu Jan  1 00:00:07 1970
Mount count:              9
Maximum mount count:      -1
Last checked:             Wed Dec 13 15:17:05 2017
Check interval:           0 (<none>)
Lifetime writes:          132 MB
Reserved blocks uid:      0 (user root)
Reserved blocks gid:      0 (group root)
First inode:              11
Inode size:               256
Required extra isize:     28
Desired extra isize:      28
Journal inode:            8
Default directory hash:   half_md4
Directory Hash Seed:      d3fe2c1f-7dbb-43d5-b6d6-7b867b71386c
Journal backup:           inode blocks
```



*After a couple of prints I noticed the delay occurs at
populate-volatile.sh*
*in a specific line. I marked it at file's end.*
*this is the script:*


#!/bin/sh

### BEGIN INIT INFO

# Provides:             volatile

# Required-Start:       $local_fs

# Required-Stop:      $local_fs

# Default-Start:        S

# Default-Stop:

# Short-Description:  Populate the volatile filesystem

### END INIT INFO

echo "******populate-volatile start*******"

# Get ROOT_DIR

DIRNAME=`dirname $0`

ROOT_DIR=`echo $DIRNAME | sed -ne 's:/etc/.*::p'`



[ -e ${ROOT_DIR}/etc/default/rcS ] && . ${ROOT_DIR}/etc/default/rcS

# When running populate-volatile.sh at rootfs time, disable cache.

[ -n "$ROOT_DIR" ] && VOLATILE_ENABLE_CACHE=no

# If rootfs is read-only, disable cache.

[ "$ROOTFS_READ_ONLY" = "yes" ] && VOLATILE_ENABLE_CACHE=no



CFGDIR="${ROOT_DIR}/etc/default/volatiles"

TMPROOT="${ROOT_DIR}/var/volatile/tmp"

COREDEF="00_core"



[ "${VERBOSE}" != "no" ] && echo "Populating volatile Filesystems."



create_file() {

                EXEC="

                touch \"$1\";

                chown ${TUSER}.${TGROUP} $1 || echo \"Failed to set owner
-${TUSER}- for -$1-.\" >/dev/tty0 2>&1;

                chmod ${TMODE} $1 || echo \"Failed to set mode -${TMODE}-
for -$1-.\" >/dev/tty0 2>&1 "



                test "$VOLATILE_ENABLE_CACHE" = yes && echo "$EXEC" >>
/etc/volatile.cache.build



                [ -e "$1" ] && {

                                [ "${VERBOSE}" != "no" ] && echo "Target
already exists. Skipping."

                } || {

                                if [ -z "$ROOT_DIR" ]; then

                                                eval $EXEC &

                                else

                                                # Creating some files at
rootfs time may fail and should fail,

                                                # but these failures should
not be logged to make sure the do_rootfs

                                                # process doesn't fail.
This does no harm, as this script will

                                                # run on target to set up
the correct files and directories.

                                                eval $EXEC > /dev/null 2>&1

                                fi

                }

}



mk_dir() {

                EXEC="

                mkdir -p \"$1\";

                chown ${TUSER}.${TGROUP} $1 || echo \"Failed to set owner
-${TUSER}- for -$1-.\" >/dev/tty0 2>&1;

                chmod ${TMODE} $1 || echo \"Failed to set mode -${TMODE}-
for -$1-.\" >/dev/tty0 2>&1 "



                test "$VOLATILE_ENABLE_CACHE" = yes && echo "$EXEC" >>
/etc/volatile.cache.build

                [ -e "$1" ] && {

                                [ "${VERBOSE}" != "no" ] && echo "Target
already exists. Skipping."

                } || {

                                if [ -z "$ROOT_DIR" ]; then

                                                eval $EXEC

                                else

                                                # For the same reason with
create_file(), failures should

                                                # not be logged.

                                                eval $EXEC > /dev/null 2>&1

                                fi

                }

}



link_file() {

                EXEC="

                if [ -L \"$2\" ]; then

                                [ \"\$(readlink -f \"$2\")\" !=
\"\$(readlink -f \"$1\")\" ] && { rm -f \"$2\"; ln -sf \"$1\" \"$2\"; };

                elif [ -d \"$2\" ]; then

                                if awk '\$2 == \"$2\" {exit 1}'
/proc/mounts; then

                                                cp -a $2/* $1 2>/dev/null;

                                                cp -a $2/.[!.]* $1
2>/dev/null;

                                                rm -rf \"$2\";

                                                ln -sf \"$1\" \"$2\";

                                fi

                else

                                ln -sf \"$1\" \"$2\";

                fi

        "



                test "$VOLATILE_ENABLE_CACHE" = yes && echo "
$EXEC" >> /etc/volatile.cache.build



                if [ -z "$ROOT_DIR" ]; then

                                eval $EXEC &

                else

                                # For the same reason with create_file(),
failures should

                                # not be logged.

                                eval $EXEC > /dev/null 2>&1

                fi

}



check_requirements() {

                cleanup() {

                                rm "${TMP_INTERMED}"

                                rm "${TMP_DEFINED}"

                                rm "${TMP_COMBINED}"

                }



                CFGFILE="$1"

                [ `basename "${CFGFILE}"` = "${COREDEF}" ] && return 0



                TMP_INTERMED="${TMPROOT}/tmp.$$"

                TMP_DEFINED="${TMPROOT}/tmpdefined.$$"

                TMP_COMBINED="${TMPROOT}/tmpcombined.$$"



                sed 's@\(^:\)*:.*@\1@' ${ROOT_DIR}/etc/passwd | sort | uniq
> "${TMP_DEFINED}"

                cat ${CFGFILE} | grep -v "^#" | cut -s -d " " -f 2 >
"${TMP_INTERMED}"

                cat "${TMP_DEFINED}" "${TMP_INTERMED}" | sort | uniq >
"${TMP_COMBINED}"

                NR_DEFINED_USERS="`cat "${TMP_DEFINED}" | wc -l`"

                NR_COMBINED_USERS="`cat "${TMP_COMBINED}" | wc -l`"



                [ "${NR_DEFINED_USERS}" -ne "${NR_COMBINED_USERS}" ] && {

                                echo "Undefined users:"

                                diff "${TMP_DEFINED}" "${TMP_COMBINED}" |
grep "^>"

                                cleanup

                                return 1

                }





                sed 's@\(^:\)*:.*@\1@' ${ROOT_DIR}/etc/group | sort | uniq
> "${TMP_DEFINED}"

                cat ${CFGFILE} | grep -v "^#" | cut -s -d " " -f 3 >
"${TMP_INTERMED}"

                cat "${TMP_DEFINED}" "${TMP_INTERMED}" | sort | uniq >
"${TMP_COMBINED}"



                NR_DEFINED_GROUPS="`cat "${TMP_DEFINED}" | wc -l`"

                NR_COMBINED_GROUPS="`cat "${TMP_COMBINED}" | wc -l`"



                [ "${NR_DEFINED_GROUPS}" -ne "${NR_COMBINED_GROUPS}" ] && {

                                echo "Undefined groups:"

                                diff "${TMP_DEFINED}" "${TMP_COMBINED}" |
grep "^>"

                                cleanup

                                return 1

                }



                # Add checks for required directories here



                cleanup

                return 0

}



apply_cfgfile() {

                CFGFILE="$1"

                check_requirements "${CFGFILE}" || {

                                echo "Skipping ${CFGFILE}"

                                return 1

                }

                cat ${CFGFILE} | grep -v "^#" | \

                                while read LINE; do

                                eval `echo "$LINE" | sed -n "s/\(.*\)\
\(.*\) \(.*\)\ \(.*\)\ \(.*\)\ \(.*\)/TTYPE=\1 ; TUSER=\2; TGROUP=\3;
TMODE=\4; TNAME=\5 TLTARGET=\6/p"`

                                TNAME=${ROOT_DIR}${TNAME}

                                [ "${VERBOSE}" != "no" ] && echo "Checking
for -${TNAME}-."



                                [ "${TTYPE}" = "l" ] && {

                                                TSOURCE="$TLTARGET"

                                                [ "${VERBOSE}" != "no" ] &&
echo "Creating link -${TNAME}- pointing to -${TSOURCE}-."

                                                link_file "${TSOURCE}"
"${TNAME}"

                                                continue

                                }

                                [ -L "${TNAME}" ] && {

                                                [ "${VERBOSE}" != "no" ] &&
echo "Found link."

                                                NEWNAME=`ls -l "${TNAME}" |
sed -e 's/^.*-> \(.*\)$/\1/'`

                                                echo ${NEWNAME} | grep -v
"^/" >/dev/null && {


TNAME="`echo ${TNAME} | sed -e 's@\(.*\)/.*@\1@'`/${NEWNAME}"

                                                                [
"${VERBOSE}" != "no" ] && echo "Converted relative linktarget to absolute
path -${TNAME}-."

                                                } || {


TNAME="${NEWNAME}"

                                                                [
"${VERBOSE}" != "no" ] && echo "Using absolute link target -${TNAME}-."

                                                }

                                }

                                case "${TTYPE}" in

                                                "f")  [ "${VERBOSE}" !=
"no" ] && echo "Creating file -${TNAME}-."

                                                                create_file
"${TNAME}" &

                                                                ;;

                                                "d")  [ "${VERBOSE}" !=
"no" ] && echo "Creating directory -${TNAME}-."

                                                                mk_dir
"${TNAME}"

                                                                # Add check
to see if there's an entry in fstab to mount.

                                                                ;;

                                                *)    [ "${VERBOSE}" !=
"no" ] && echo "Invalid type -${TTYPE}-."

                                                                continue

                                                                ;;

                                esac

                done

                return 0

}



clearcache=0

exec 9</proc/cmdline

while read line <&9

do

                case "$line" in

                                *clearcache*)  clearcache=1

                                                       ;;

                                *)                   continue

                                                       ;;

                esac

done

exec 9>&-

if test -e ${ROOT_DIR}/etc/volatile.cache -a "$VOLATILE_ENABLE_CACHE" =
"yes" -a "x$1" != "xupdate" -a "x$clearcache" = "x0"

then

                sh ${ROOT_DIR}/etc/volatile.cache

else

                rm -f ${ROOT_DIR}/etc/volatile.cache
${ROOT_DIR}/etc/volatile.cache.build

                for file in `ls -1 "${CFGDIR}" | sort`; do

                                apply_cfgfile "${CFGDIR}/${file}"

                done



****This line occasionally (sometimes not) executes for a long time during
boot****


               * [ -e ${ROOT_DIR}/etc/volatile.cache.build ] && sync && mv
${ROOT_DIR}/etc/volatile.cache.build ${ROOT_DIR}/etc/volatile.cache*




fi

if [ -z "${ROOT_DIR}" ] && [ -f /etc/ld.so.cache ] && [ ! -f
/var/run/ld.so.cache ]

then

                ln -s /etc/ld.so.cache /var/run/ld.so.cache

fi


Any idea what can goes wrong and why sometimes booting takes long time and
sometimes not?

--00000000000007946f05972bb354
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+TGludXggMzJiaXQgNC4xLjgga2VybmVsICwgUG93ZXJQQyAsIGVtYmVk
ZGVkICwgcmVhbCB0aW1lIHBhdGNoICwgc3lzdGVtViBpbml0LiA8YnI+SSBoYWQgYW4gZXh0NCBm
aWxlIHN5c3RlbSBtb3VudGVkIGF0IC9ydW4vbWVkaWEvbW1jYmxrMHAxLjxicj5JIHVubW91bnRl
ZCBhbmQgZXJhc2VkIGl0IGFuZCB0aGVuIHJlY3JlYXRlZCBpdDo8YnI+PGJyPjEpIDxicj5mZGlz
ayAvZGV2L21tY2JsazA8YnI+LSZndDsgc2VsZWN0OiBuPGJyPi0mZ3Q7IGVudGVyIChjaG9vc2Ug
ZGVmYXVsdCB2YWx1ZSBmb3Igc3RhcnQpPGJyPi0mZ3Q7IGVudGVyIChjaG9vc2UgZGVmYXVsdCB2
YWx1ZSBmb3IgZW5kKTxicj4tJmd0OyBlbnRlciAoY2hvb3NlIGRlZmF1bHQpPGJyPi0mZ3Q7IGVu
dGVyIChjaG9vc2UgZGVmYXVsdCk8YnI+LSZndDsgc2VsZWN0OiB3IMKgKHdyaXRlIGNoYW5nZXMg
dG8gTUJSKTxicj4ocHJlc3NlZCBuICwgZm91ciB0aW1lcyBlbnRlciBhbmQgdykuPGJyPjxicj48
YnI+PGJyPjIpIG1rZnMuZXh0NCAtRSBub2Rpc2NhcmQgLUYgL2Rldi9tbWNibGswcDE8YnI+PGJy
PkFmdGVyIHJlc3RhcnQgSSBnb3QgdGhlIGZvbGxvd2luZyBlcnJvcjogPGJyPmBgYDxicj5FWFQ0
LWZzIChtbWNibGswcDEpOiBGaWxlc3lzdGVtIHdpdGggaHVnZSBmaWxlcyBjYW5ub3QgYmUgbW91
bnRlZCBSRFdSIHdpdGhvdXQgQ09ORklHX0xCREFGPGJyPmBgYDxicj48YnI+QmVjYXVzZSBJIGRv
biYjMzk7dCBuZWVkIGh1Z2VfZmlsZXMgc3VwcG9ydCAoZmlsZXMgYmlnZ2VyIHRoYW4gMlRCKTxi
cj5JIHVzZWQ6PGJyPmBgYDxicj5ta2ZzLmV4dDQgLU8gXmh1Z2VfZmlsZSAtRSBub2Rpc2NhcmQg
LUYgL2Rldi9tbWNibGswcDE8YnI+YGBgPGJyPmFuZCBub3cgdGhlIHN5c3RlbSB3b3JrcyB3aXRo
IC9kZXYvbW1jYmxrMHAxIG1vdW50ZWQgYXQgL3J1bi9tZWRpYS9tbWNibGswcDEuPGJyPjxicj50
aGUgcHJvYmxlbSBpcyB0aGF0IHNpbmNlIHRoZXNlIGFjdGlvbnMgLCBzb21ldGltZXMgdGhlIGJv
b3QgdGFrZXMgYSBsb25nIHRpbWUgYW5kIHNvbWV0aW1lcyBub3QuIEkgaGF2ZSBubyBJZGVhIHdo
eS48YnI+PGJyPjxicj4qKmJhZCBkbWVzZzoqKjxicj5gYGA8YnI+WyDCoCDCoDUuNzc1MDYwXSB1
ZGV2ZFs4NzJdOiByZW5hbWVkIG5ldHdvcmsgaW50ZXJmYWNlIGV0aDAgdG8gZm0yLWdiMDxicj5b
IMKgIMKgNS43OTM3NzddIHVkZXZkWzg3M106IHJlbmFtZWQgbmV0d29yayBpbnRlcmZhY2UgZXRo
MSB0byBmbTItZ2IxPGJyPlsgwqAgwqA3LjQ4MjQ4Nl0gRVhUNC1mcyAobW1jYmxrMHAxKTogcmVj
b3ZlcnkgY29tcGxldGU8YnI+WyDCoCDCoDcuNDg3ODM0XSBFWFQ0LWZzIChtbWNibGswcDEpOiBt
b3VudGVkIGZpbGVzeXN0ZW0gd2l0aCBvcmRlcmVkIGRhdGEgbW9kZS4gT3B0czogKG51bGwpPGJy
PlsgwqAgwqA3LjcyODAyNl0gcmFuZG9tOiBkZCB1cmFuZG9tIHJlYWQgd2l0aCAyOSBiaXRzIG9m
IGVudHJvcHkgYXZhaWxhYmxlPGJyPlsgwqAgwqA5LjExMzAwN10gcmFuZG9tOiBub25ibG9ja2lu
ZyBwb29sIGlzIGluaXRpYWxpemVkPGJyPlsgwqAgNDMuMDU4MTY3XTxicj7CoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoFtybVN0YXJ0XTpUaGUgT1NBIHZlcnNpb24gaXM6IExJTlVYQTQuMS4wIGZyb20g
MTYtMDQtMjAxOTxicj5bIMKgIDQzLjA5NDA3NV0gW3JtU3RhcnRdIGdwcjogaWQ6IDAgLSBwaHlz
QWRkcjogMHgxYTAwMDAwMDAgLSBsZW46IDB4MTAwMCAtIG1lbUFkZHI6IDB4ZjFhZmUwMDA8YnI+
WyDCoCA0My4xMDQwNDhdIFtybVN0YXJ0XSBkY2ZnOiBpZDogNyAtIHBoeXNBZGRyOiAweDE5MDBl
MDAwMCAtIGxlbjogMHgxMDAwIC0gbWVtQWRkcjogMHhmMWM3YTAwMDxicj5gYGA8YnI+PGJyPjxi
cj4qKmdvb2QgZG1lc2c6Kio8YnI+YGBgPGJyPlsgwqAgwqA1Ljc3MzkxOF0gdWRldmRbODcyXTog
cmVuYW1lZCBuZXR3b3JrIGludGVyZmFjZSBldGgwIHRvIGZtMi1nYjA8YnI+WyDCoCDCoDUuNzky
Nzg1XSB1ZGV2ZFs4NzNdOiByZW5hbWVkIG5ldHdvcmsgaW50ZXJmYWNlIGV0aDEgdG8gZm0yLWdi
MTxicj5bIMKgIMKgNy41MDgzMjldIEVYVDQtZnMgKG1tY2JsazBwMSk6IHJlY292ZXJ5IGNvbXBs
ZXRlPGJyPlsgwqAgwqA3LjUxMzY3M10gRVhUNC1mcyAobW1jYmxrMHAxKTogbW91bnRlZCBmaWxl
c3lzdGVtIHdpdGggb3JkZXJlZCBkYXRhIG1vZGUuIE9wdHM6IChudWxsKTxicj5bIMKgIMKgNy43
NTQwNzBdIHJhbmRvbTogZGQgdXJhbmRvbSByZWFkIHdpdGggMjkgYml0cyBvZiBlbnRyb3B5IGF2
YWlsYWJsZTxicj5bIMKgIMKgOS42OTkzNTNdPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgW3Jt
U3RhcnRdOlRoZSBPU0EgdmVyc2lvbiBpczogTElOVVhBNC4xLjAgZnJvbSAxNi0wNC0yMDE5PGJy
PlsgwqAgwqA5LjcxMDIxMF0gW3JtU3RhcnRdIGdwcjogaWQ6IDAgLSBwaHlzQWRkcjogMHgxYTAw
MDAwMDAgLSBsZW46IDB4MTAwMCAtIG1lbUFkZHI6IDB4ZjFhZmUwMDA8YnI+YGBgPGJyPjxicj48
YnI+PGJyPioqL2V0Yy9mc3RhYjoqKjxicj5gYGA8YnI+L2Rldi9yb290IMKgIMKgIMKgIMKgIMKg
IMKgLyDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGF1dG8gwqAgwqAgwqAgZGVmYXVsdHMg
wqAgwqAgwqAgwqAgwqAgwqAgwqAxIMKgMTxicj5wcm9jIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IC9wcm9jIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcHJvYyDCoCDCoCDCoCBkZWZhdWx0cyDCoCDC
oCDCoCDCoCDCoCDCoCDCoDAgwqAwPGJyPmRldnB0cyDCoCDCoCDCoCDCoCDCoCDCoCDCoCAvZGV2
L3B0cyDCoCDCoCDCoCDCoCDCoCDCoCBkZXZwdHMgwqAgwqAgbW9kZT0wNjIwLGdpZD01IMKgIMKg
IMKgIDAgwqAwPGJyPnRtcGZzIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgL3J1biDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCB0bXBmcyDCoCDCoCDCoG1vZGU9MDc1NSxub2Rldixub3N1aWQsc3RyaWN0
YXRpbWUgMCDCoDA8YnI+dG1wZnMgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAvdmFyL3ZvbGF0aWxl
IMKgIMKgIMKgIMKgdG1wZnMgwqAgwqAgwqBkZWZhdWx0cyDCoCDCoCDCoCDCoCDCoCDCoCDCoDAg
wqAwPGJyPi9kZXYvbW1jYmxrMHAxIC9ydW4vbWVkaWEvbW1jYmxrMHAxIGV4dDQgZGVmYXVsdHMs
YXN5bmMsbm9hdXRvIDAgMDxicj5gYGA8YnI+PGJyPioqdHVuZTJmcyAtbCAvZGV2L21tY2JsazBw
MSoqPGJyPmBgYDxicj50dW5lMmZzIDEuNDIuOSAoMjgtRGVjLTIwMTMpPGJyPkZpbGVzeXN0ZW0g
dm9sdW1lIG5hbWU6IMKgICZsdDtub25lJmd0Ozxicj5MYXN0IG1vdW50ZWQgb246IMKgIMKgIMKg
IMKgIMKgJmx0O25vdCBhdmFpbGFibGUmZ3Q7PGJyPkZpbGVzeXN0ZW0gVVVJRDogwqAgwqAgwqAg
wqAgwqA0OWVmMDRhZi0xMDliLTQzM2QtODFiOC1lNWQ0MmM5NDdjOGM8YnI+RmlsZXN5c3RlbSBt
YWdpYyBudW1iZXI6IMKgMHhFRjUzPGJyPkZpbGVzeXN0ZW0gcmV2aXNpb24gIzogwqAgwqAxIChk
eW5hbWljKTxicj5GaWxlc3lzdGVtIGZlYXR1cmVzOiDCoCDCoCDCoGhhc19qb3VybmFsIGV4dF9h
dHRyIHJlc2l6ZV9pbm9kZSBkaXJfaW5kZXggZmlsZXR5cGUgbmVlZHNfcmVjb3ZlcnkgZXh0ZW50
IGZsZXhfYmcgc3BhcnNlX3N1cGVyIGxhcmdlX2ZpbGUgdW5pbml0X2JnIGRpcl9ubGluayBleHRy
YV9pc2l6ZTxicj5GaWxlc3lzdGVtIGZsYWdzOiDCoCDCoCDCoCDCoCB1bnNpZ25lZF9kaXJlY3Rv
cnlfaGFzaDxicj5EZWZhdWx0IG1vdW50IG9wdGlvbnM6IMKgIMKgdXNlcl94YXR0ciBhY2w8YnI+
RmlsZXN5c3RlbSBzdGF0ZTogwqAgwqAgwqAgwqAgY2xlYW48YnI+RXJyb3JzIGJlaGF2aW9yOiDC
oCDCoCDCoCDCoCDCoENvbnRpbnVlPGJyPkZpbGVzeXN0ZW0gT1MgdHlwZTogwqAgwqAgwqAgTGlu
dXg8YnI+SW5vZGUgY291bnQ6IMKgIMKgIMKgIMKgIMKgIMKgIMKgOTU2NTkyPGJyPkJsb2NrIGNv
dW50OiDCoCDCoCDCoCDCoCDCoCDCoCDCoDM4MjU0MDg8YnI+UmVzZXJ2ZWQgYmxvY2sgY291bnQ6
IMKgIMKgIDE5MTI3MDxicj5GcmVlIGJsb2NrczogwqAgwqAgwqAgwqAgwqAgwqAgwqAzNzIzMjYz
PGJyPkZyZWUgaW5vZGVzOiDCoCDCoCDCoCDCoCDCoCDCoCDCoDk1NjU4MTxicj5GaXJzdCBibG9j
azogwqAgwqAgwqAgwqAgwqAgwqAgwqAwPGJyPkJsb2NrIHNpemU6IMKgIMKgIMKgIMKgIMKgIMKg
IMKgIDQwOTY8YnI+RnJhZ21lbnQgc2l6ZTogwqAgwqAgwqAgwqAgwqAgwqA0MDk2PGJyPlJlc2Vy
dmVkIEdEVCBibG9ja3M6IMKgIMKgIMKgOTMzPGJyPkJsb2NrcyBwZXIgZ3JvdXA6IMKgIMKgIMKg
IMKgIDMyNzY4PGJyPkZyYWdtZW50cyBwZXIgZ3JvdXA6IMKgIMKgIMKgMzI3Njg8YnI+SW5vZGVz
IHBlciBncm91cDogwqAgwqAgwqAgwqAgODE3Njxicj5Jbm9kZSBibG9ja3MgcGVyIGdyb3VwOiDC
oCA1MTE8YnI+RmxleCBibG9jayBncm91cCBzaXplOiDCoCDCoDE2PGJyPkZpbGVzeXN0ZW0gY3Jl
YXRlZDogwqAgwqAgwqAgV2VkIERlYyAxMyAxNToxNzowNSAyMDE3PGJyPkxhc3QgbW91bnQgdGlt
ZTogwqAgwqAgwqAgwqAgwqBUaHUgSmFuIMKgMSAwMDowMDowNyAxOTcwPGJyPkxhc3Qgd3JpdGUg
dGltZTogwqAgwqAgwqAgwqAgwqBUaHUgSmFuIMKgMSAwMDowMDowNyAxOTcwPGJyPk1vdW50IGNv
dW50OiDCoCDCoCDCoCDCoCDCoCDCoCDCoDk8YnI+TWF4aW11bSBtb3VudCBjb3VudDogwqAgwqAg
wqAtMTxicj5MYXN0IGNoZWNrZWQ6IMKgIMKgIMKgIMKgIMKgIMKgIFdlZCBEZWMgMTMgMTU6MTc6
MDUgMjAxNzxicj5DaGVjayBpbnRlcnZhbDogwqAgwqAgwqAgwqAgwqAgMCAoJmx0O25vbmUmZ3Q7
KTxicj5MaWZldGltZSB3cml0ZXM6IMKgIMKgIMKgIMKgIMKgMTMyIE1CPGJyPlJlc2VydmVkIGJs
b2NrcyB1aWQ6IMKgIMKgIMKgMCAodXNlciByb290KTxicj5SZXNlcnZlZCBibG9ja3MgZ2lkOiDC
oCDCoCDCoDAgKGdyb3VwIHJvb3QpPGJyPkZpcnN0IGlub2RlOiDCoCDCoCDCoCDCoCDCoCDCoCDC
oDExPGJyPklub2RlIHNpemU6IMKgIMKgIMKgIMKgIMKgIMKgIMKgIDI1Njxicj5SZXF1aXJlZCBl
eHRyYSBpc2l6ZTogwqAgwqAgMjg8YnI+RGVzaXJlZCBleHRyYSBpc2l6ZTogwqAgwqAgwqAyODxi
cj5Kb3VybmFsIGlub2RlOiDCoCDCoCDCoCDCoCDCoCDCoDg8YnI+RGVmYXVsdCBkaXJlY3Rvcnkg
aGFzaDogwqAgaGFsZl9tZDQ8YnI+RGlyZWN0b3J5IEhhc2ggU2VlZDogwqAgwqAgwqBkM2ZlMmMx
Zi03ZGJiLTQzZDUtYjZkNi03Yjg2N2I3MTM4NmM8YnI+Sm91cm5hbCBiYWNrdXA6IMKgIMKgIMKg
IMKgIMKgIGlub2RlIGJsb2Nrczxicj5gYGA8YnI+PGJyPjxicj48YnI+PGI+QWZ0ZXIgYSBjb3Vw
bGUgb2YgcHJpbnRzIEkgbm90aWNlZCB0aGUgZGVsYXkgb2NjdXJzwqBhdCBwb3B1bGF0ZS12b2xh
dGlsZS5zaDwvYj48ZGl2PjxiPmluIGEgc3BlY2lmaWPCoGxpbmUuIEkgbWFya2VkIGl0IGF0IGZp
bGUmIzM5O3MgZW5kLjwvYj48L2Rpdj48ZGl2PjxiPnRoaXMgaXMgdGhlIHNjcmlwdDo8L2I+PC9k
aXY+PGRpdj48Yj48YnI+PC9iPjwvZGl2PjxkaXY+PGI+PGJyPjwvYj48L2Rpdj48ZGl2PjxwIGNs
YXNzPSJNc29Ob3JtYWwiPiMhL2Jpbi9zaDx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29O
b3JtYWwiPiMjIyBCRUdJTiBJTklUIElORk88dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNv
Tm9ybWFsIj4jIFByb3ZpZGVzOsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB2b2xhdGlsZTx1Pjwv
dT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPiMgUmVxdWlyZWQtU3RhcnQ6wqDCoMKg
wqDCoMKgICRsb2NhbF9mczx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPiMg
UmVxdWlyZWQtU3RvcDrCoMKgwqDCoMKgICRsb2NhbF9mczx1PjwvdT48dT48L3U+PC9wPjxwIGNs
YXNzPSJNc29Ob3JtYWwiPiMgRGVmYXVsdC1TdGFydDrCoMKgwqDCoMKgwqDCoCBTPHU+PC91Pjx1
PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+IyBEZWZhdWx0LVN0b3A6PHU+PC91Pjx1Pjwv
dT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+IyBTaG9ydC1EZXNjcmlwdGlvbjrCoCBQb3B1bGF0
ZSB0aGUgdm9sYXRpbGUgZmlsZXN5c3RlbTx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29O
b3JtYWwiPiMjIyBFTkQgSU5JVCBJTkZPPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05v
cm1hbCI+ZWNobyAmcXVvdDsqKioqKipwb3B1bGF0ZS12b2xhdGlsZSBzdGFydCoqKioqKiomcXVv
dDs8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj4jIEdldCBST09UX0RJUjx1
PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPkRJUk5BTUU9YGRpcm5hbWUgJDBg
PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+Uk9PVF9ESVI9YGVjaG8gJERJ
Uk5BTUUgfCBzZWQgLW5lICYjMzk7czovZXRjLy4qOjpwJiMzOTtgPHU+PC91Pjx1PjwvdT48L3A+
PHAgY2xhc3M9Ik1zb05vcm1hbCI+PHU+PC91PsKgPHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9y
bWFsIj5bIC1lICR7Uk9PVF9ESVJ9L2V0Yy9kZWZhdWx0L3JjUyBdICZhbXA7JmFtcDsgLiAke1JP
T1RfRElSfS9ldGMvZGVmYXVsdC9yY1M8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9y
bWFsIj4jIFdoZW4gcnVubmluZyBwb3B1bGF0ZS12b2xhdGlsZS5zaCBhdCByb290ZnMgdGltZSwg
ZGlzYWJsZSBjYWNoZS48dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj5bIC1u
ICZxdW90OyRST09UX0RJUiZxdW90OyBdICZhbXA7JmFtcDsgVk9MQVRJTEVfRU5BQkxFX0NBQ0hF
PW5vPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+IyBJZiByb290ZnMgaXMg
cmVhZC1vbmx5LCBkaXNhYmxlIGNhY2hlLjx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29O
b3JtYWwiPlsgJnF1b3Q7JFJPT1RGU19SRUFEX09OTFkmcXVvdDsgPSAmcXVvdDt5ZXMmcXVvdDsg
XSAmYW1wOyZhbXA7IFZPTEFUSUxFX0VOQUJMRV9DQUNIRT1ubzx1PjwvdT48dT48L3U+PC9wPjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjx1PjwvdT7CoDx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1h
bCI+Q0ZHRElSPSZxdW90OyR7Uk9PVF9ESVJ9L2V0Yy9kZWZhdWx0L3ZvbGF0aWxlcyZxdW90Ozx1
PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPlRNUFJPT1Q9JnF1b3Q7JHtST09U
X0RJUn0vdmFyL3ZvbGF0aWxlL3RtcCZxdW90Ozx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJN
c29Ob3JtYWwiPkNPUkVERUY9JnF1b3Q7MDBfY29yZSZxdW90Ozx1PjwvdT48dT48L3U+PC9wPjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjx1PjwvdT7CoDx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1h
bCI+WyAmcXVvdDske1ZFUkJPU0V9JnF1b3Q7ICE9ICZxdW90O25vJnF1b3Q7IF0gJmFtcDsmYW1w
OyBlY2hvICZxdW90O1BvcHVsYXRpbmcgdm9sYXRpbGUgRmlsZXN5c3RlbXMuJnF1b3Q7PHU+PC91
Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+PHU+PC91PsKgPHU+PC91PjwvcD48cCBj
bGFzcz0iTXNvTm9ybWFsIj5jcmVhdGVfZmlsZSgpIHs8dT48L3U+PHU+PC91PjwvcD48cCBjbGFz
cz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRVhFQz0mcXVvdDs8
dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgdG91Y2ggXCZxdW90OyQxXCZxdW90Ozs8dT48L3U+PHU+PC91PjwvcD48cCBj
bGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2hvd24gJHtU
VVNFUn0uJHtUR1JPVVB9ICQxIHx8IGVjaG8gXCZxdW90O0ZhaWxlZCB0byBzZXQgb3duZXIgLSR7
VFVTRVJ9LSBmb3IgLSQxLS5cJnF1b3Q7ICZndDsvZGV2L3R0eTAgMiZndDsmYW1wOzE7PHU+PC91
Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGNobW9kICR7VE1PREV9ICQxIHx8IGVjaG8gXCZxdW90O0ZhaWxlZCB0byBzZXQgbW9k
ZSAtJHtUTU9ERX0tIGZvciAtJDEtLlwmcXVvdDsgJmd0Oy9kZXYvdHR5MCAyJmd0OyZhbXA7MSAm
cXVvdDs8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj48dT48L3U+wqA8dT48
L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB0ZXN0ICZxdW90OyRWT0xBVElMRV9FTkFCTEVfQ0FDSEUmcXVvdDsgPSB5ZXMgJmFtcDsmYW1w
OyBlY2hvICZxdW90OyRFWEVDJnF1b3Q7ICZndDsmZ3Q7IC9ldGMvdm9sYXRpbGUuY2FjaGUuYnVp
bGQ8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj48dT48L3U+wqA8dT48L3U+
PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBb
IC1lICZxdW90OyQxJnF1b3Q7IF0gJmFtcDsmYW1wOyB7PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xh
c3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgWyAmcXVvdDske1ZFUkJPU0V9JnF1b3Q7ICE9ICZxdW90O25v
JnF1b3Q7IF0gJmFtcDsmYW1wOyBlY2hvICZxdW90O1RhcmdldCBhbHJlYWR5IGV4aXN0cy4gU2tp
cHBpbmcuJnF1b3Q7PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0gfHwgezx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNz
PSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGlmIFsgLXogJnF1b3Q7JFJPT1RfRElSJnF1b3Q7IF07IHRoZW48
dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGV2YWwgJEVYRUMgJmFtcDs8dT48L3U+PHU+PC91PjwvcD48cCBj
bGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbHNlPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1z
b05vcm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjIENyZWF0aW5n
IHNvbWUgZmlsZXMgYXQgcm9vdGZzIHRpbWUgbWF5IGZhaWwgYW5kIHNob3VsZCBmYWlsLDx1Pjwv
dT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgIyBidXQgdGhlc2UgZmFpbHVyZXMgc2hvdWxkIG5vdCBiZSBsb2dnZWQg
dG8gbWFrZSBzdXJlIHRoZSBkb19yb290ZnM8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNv
Tm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICMgcHJvY2VzcyBk
b2VzbiYjMzk7dCBmYWlsLiBUaGlzIGRvZXMgbm8gaGFybSwgYXMgdGhpcyBzY3JpcHQgd2lsbDx1
PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgIyBydW4gb24gdGFyZ2V0IHRvIHNldCB1cCB0aGUgY29ycmVjdCBm
aWxlcyBhbmQgZGlyZWN0b3JpZXMuPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1h
bCI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBldmFsICRFWEVDICZndDsg
L2Rldi9udWxsIDImZ3Q7JmFtcDsxPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1h
bCI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgZmk8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29O
b3JtYWwiPn08dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj48dT48L3U+wqA8
dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPm1rX2RpcigpIHs8dT48L3U+PHU+PC91Pjwv
cD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRVhF
Qz0mcXVvdDs8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgbWtkaXIgLXAgXCZxdW90OyQxXCZxdW90Ozs8dT48L3U+PHU+
PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgY2hvd24gJHtUVVNFUn0uJHtUR1JPVVB9ICQxIHx8IGVjaG8gXCZxdW90O0ZhaWxlZCB0byBz
ZXQgb3duZXIgLSR7VFVTRVJ9LSBmb3IgLSQxLS5cJnF1b3Q7ICZndDsvZGV2L3R0eTAgMiZndDsm
YW1wOzE7PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGNobW9kICR7VE1PREV9ICQxIHx8IGVjaG8gXCZxdW90O0ZhaWxl
ZCB0byBzZXQgbW9kZSAtJHtUTU9ERX0tIGZvciAtJDEtLlwmcXVvdDsgJmd0Oy9kZXYvdHR5MCAy
Jmd0OyZhbXA7MSAmcXVvdDs8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj48
dT48L3U+wqA8dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB0ZXN0ICZxdW90OyRWT0xBVElMRV9FTkFCTEVfQ0FDSEUmcXVvdDsgPSB5
ZXMgJmFtcDsmYW1wOyBlY2hvICZxdW90OyRFWEVDJnF1b3Q7ICZndDsmZ3Q7IC9ldGMvdm9sYXRp
bGUuY2FjaGUuYnVpbGQ8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgWyAtZSAmcXVvdDskMSZxdW90OyBdICZhbXA7JmFt
cDsgezx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFsgJnF1b3Q7
JHtWRVJCT1NFfSZxdW90OyAhPSAmcXVvdDtubyZxdW90OyBdICZhbXA7JmFtcDsgZWNobyAmcXVv
dDtUYXJnZXQgYWxyZWFkeSBleGlzdHMuIFNraXBwaW5nLiZxdW90Ozx1PjwvdT48dT48L3U+PC9w
PjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9IHx8
IHs8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiBbIC16ICZx
dW90OyRST09UX0RJUiZxdW90OyBdOyB0aGVuPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1z
b05vcm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBldmFsICRFWEVD
PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZWxzZTx1PjwvdT48
dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgIyBGb3IgdGhlIHNhbWUgcmVhc29uIHdpdGggY3JlYXRlX2ZpbGUoKSwgZmFp
bHVyZXMgc2hvdWxkPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjIG5vdCBiZSBsb2dnZWQuPHU+PC91Pjx1
PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBldmFsICRFWEVDICZndDsgL2Rldi9udWxsIDImZ3Q7JmFtcDsxPHU+PC91Pjx1
PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZmk8dT48L3U+PHU+PC91PjwvcD48
cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTx1Pjwv
dT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPn08dT48L3U+PHU+PC91PjwvcD48cCBj
bGFzcz0iTXNvTm9ybWFsIj48dT48L3U+wqA8dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwi
PmxpbmtfZmlsZSgpIHs8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRVhFQz0mcXVvdDs8dT48L3U+PHU+PC91PjwvcD48
cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgWyAt
TCBcJnF1b3Q7JDJcJnF1b3Q7IF07IHRoZW48dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNv
Tm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBbIFwmcXVvdDtcJChyZWFkbGluayAtZiBcJnF1b3Q7JDJcJnF1b3Q7KVwm
cXVvdDsgIT0gXCZxdW90O1wkKHJlYWRsaW5rIC1mIFwmcXVvdDskMVwmcXVvdDspXCZxdW90OyBd
ICZhbXA7JmFtcDsgeyBybSAtZiBcJnF1b3Q7JDJcJnF1b3Q7OyBsbiAtc2YgXCZxdW90OyQxXCZx
dW90OyBcJnF1b3Q7JDJcJnF1b3Q7OyB9Ozx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29O
b3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbGlmIFsgLWQgXCZxdW90OyQy
XCZxdW90OyBdOyB0aGVuPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgaWYgYXdrICYjMzk7XCQyID09IFwmcXVvdDskMlwmcXVvdDsge2V4aXQgMX0mIzM5OyAvcHJv
Yy9tb3VudHM7IHRoZW48dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNwIC1hICQyLyogJDEgMiZndDsvZGV2
L251bGw7PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjcCAtYSAkMi8uWyEuXSogJDEgMiZndDsvZGV2L251
bGw7PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBybSAtcmYgXCZxdW90OyQyXCZxdW90Ozs8dT48L3U+PHU+
PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGxuIC1zZiBcJnF1b3Q7JDFcJnF1b3Q7IFwmcXVvdDskMlwmcXVvdDs7PHU+PC91
Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZmk8dT48L3U+PHU+PC91Pjwv
cD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZWxz
ZTx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxuIC1zZiBcJnF1
b3Q7JDFcJnF1b3Q7IFwmcXVvdDskMlwmcXVvdDs7PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9
Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZpPHU+PC91Pjx1Pjwv
dT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgJnF1b3Q7PHU+PC91Pjx1
PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+PHU+PC91PsKgPHU+PC91PjwvcD48cCBjbGFz
cz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdGVzdCAmcXVvdDsk
Vk9MQVRJTEVfRU5BQkxFX0NBQ0hFJnF1b3Q7ID0geWVzICZhbXA7JmFtcDsgZWNobyAmcXVvdDvC
oMKgwqDCoMKgwqDCoMKgwqDCoCAkRVhFQyZxdW90OyAmZ3Q7Jmd0OyAvZXRjL3ZvbGF0aWxlLmNh
Y2hlLmJ1aWxkPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+PHU+PC91PsKg
PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgaWYgWyAteiAmcXVvdDskUk9PVF9ESVImcXVvdDsgXTsgdGhlbjx1PjwvdT48dT48L3U+
PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGV2YWwgJEVYRUMgJmFtcDs8dT48L3U+PHU+
PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgZWxzZTx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICMgRm9y
IHRoZSBzYW1lIHJlYXNvbiB3aXRoIGNyZWF0ZV9maWxlKCksIGZhaWx1cmVzIHNob3VsZDx1Pjwv
dT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICMgbm90IGJlIGxvZ2dlZC48
dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBldmFsICRFWEVDICZn
dDsgL2Rldi9udWxsIDImZ3Q7JmFtcDsxPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05v
cm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZpPHU+PC91Pjx1PjwvdT48L3A+
PHAgY2xhc3M9Ik1zb05vcm1hbCI+fTx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjx1PjwvdT7CoDx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+Y2hlY2tfcmVxdWly
ZW1lbnRzKCkgezx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbGVhbnVwKCkgezx1PjwvdT48dT48L3U+PC9wPjxwIGNs
YXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJtICZxdW90OyR7VE1QX0lOVEVSTUVEfSZxdW90Ozx1Pjwv
dT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJtICZxdW90OyR7VE1QX0RF
RklORUR9JnF1b3Q7PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
cm0gJnF1b3Q7JHtUTVBfQ09NQklORUR9JnF1b3Q7PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9
Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH08dT48L3U+PHU+PC91
PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj48dT48L3U+wqA8dT48L3U+PC9wPjxwIGNsYXNzPSJN
c29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBDRkdGSUxFPSZxdW90OyQx
JnF1b3Q7PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIFsgYGJhc2VuYW1lICZxdW90OyR7Q0ZHRklMRX0mcXVvdDtgID0g
JnF1b3Q7JHtDT1JFREVGfSZxdW90OyBdICZhbXA7JmFtcDsgcmV0dXJuIDA8dT48L3U+PHU+PC91
PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj48dT48L3U+wqA8dT48L3U+PC9wPjxwIGNsYXNzPSJN
c29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBUTVBfSU5URVJNRUQ9JnF1
b3Q7JHtUTVBST09UfS90bXAuJCQmcXVvdDs8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNv
Tm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgVE1QX0RFRklORUQ9JnF1b3Q7
JHtUTVBST09UfS90bXBkZWZpbmVkLiQkJnF1b3Q7PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9
Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFRNUF9DT01CSU5FRD0m
cXVvdDske1RNUFJPT1R9L3RtcGNvbWJpbmVkLiQkJnF1b3Q7PHU+PC91Pjx1PjwvdT48L3A+PHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PHU+PC91PsKgPHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFs
Ij7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2VkICYjMzk7c0BcKF46XCkqOi4qQFwx
QCYjMzk7ICR7Uk9PVF9ESVJ9L2V0Yy9wYXNzd2QgfCBzb3J0IHwgdW5pcSAmZ3Q7ICZxdW90OyR7
VE1QX0RFRklORUR9JnF1b3Q7PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNhdCAke0NGR0ZJTEV9IHwgZ3JlcCAtdiAm
cXVvdDteIyZxdW90OyB8IGN1dCAtcyAtZCAmcXVvdDsgJnF1b3Q7IC1mIDIgJmd0OyAmcXVvdDsk
e1RNUF9JTlRFUk1FRH0mcXVvdDs8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFs
Ij7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2F0ICZxdW90OyR7VE1QX0RFRklORUR9
JnF1b3Q7ICZxdW90OyR7VE1QX0lOVEVSTUVEfSZxdW90OyB8IHNvcnQgfCB1bmlxICZndDsgJnF1
b3Q7JHtUTVBfQ09NQklORUR9JnF1b3Q7PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05v
cm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIE5SX0RFRklORURfVVNFUlM9JnF1
b3Q7YGNhdCAmcXVvdDske1RNUF9ERUZJTkVEfSZxdW90OyB8IHdjIC1sYCZxdW90Ozx1PjwvdT48
dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBOUl9DT01CSU5FRF9VU0VSUz0mcXVvdDtgY2F0ICZxdW90OyR7VE1QX0NPTUJJTkVEfSZx
dW90OyB8IHdjIC1sYCZxdW90Ozx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwi
Pjx1PjwvdT7CoDx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIFsgJnF1b3Q7JHtOUl9ERUZJTkVEX1VTRVJTfSZxdW90OyAtbmUgJnF1
b3Q7JHtOUl9DT01CSU5FRF9VU0VSU30mcXVvdDsgXSAmYW1wOyZhbXA7IHs8dT48L3U+PHU+PC91
PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlY2hvICZxdW90O1VuZGVmaW5lZCB1c2Vy
czomcXVvdDs8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkaWZm
ICZxdW90OyR7VE1QX0RFRklORUR9JnF1b3Q7ICZxdW90OyR7VE1QX0NPTUJJTkVEfSZxdW90OyB8
IGdyZXAgJnF1b3Q7XiZndDsmcXVvdDs8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9y
bWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBjbGVhbnVwPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgcmV0dXJuIDE8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjx1PjwvdT7CoDx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+PHU+PC91
PsKgPHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgc2VkICYjMzk7c0BcKF46XCkqOi4qQFwxQCYjMzk7ICR7Uk9PVF9ESVJ9L2V0Yy9n
cm91cCB8IHNvcnQgfCB1bmlxICZndDsgJnF1b3Q7JHtUTVBfREVGSU5FRH0mcXVvdDs8dT48L3U+
PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgY2F0ICR7Q0ZHRklMRX0gfCBncmVwIC12ICZxdW90O14jJnF1b3Q7IHwgY3V0IC1zIC1k
ICZxdW90OyAmcXVvdDsgLWYgMyAmZ3Q7ICZxdW90OyR7VE1QX0lOVEVSTUVEfSZxdW90Ozx1Pjwv
dT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBjYXQgJnF1b3Q7JHtUTVBfREVGSU5FRH0mcXVvdDsgJnF1b3Q7JHtUTVBfSU5URVJN
RUR9JnF1b3Q7IHwgc29ydCB8IHVuaXEgJmd0OyAmcXVvdDske1RNUF9DT01CSU5FRH0mcXVvdDs8
dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj48dT48L3U+wqA8dT48L3U+PC9w
PjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBOUl9E
RUZJTkVEX0dST1VQUz0mcXVvdDtgY2F0ICZxdW90OyR7VE1QX0RFRklORUR9JnF1b3Q7IHwgd2Mg
LWxgJnF1b3Q7PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIE5SX0NPTUJJTkVEX0dST1VQUz0mcXVvdDtgY2F0ICZxdW90
OyR7VE1QX0NPTUJJTkVEfSZxdW90OyB8IHdjIC1sYCZxdW90Ozx1PjwvdT48dT48L3U+PC9wPjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjx1PjwvdT7CoDx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1h
bCI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFsgJnF1b3Q7JHtOUl9ERUZJTkVEX0dS
T1VQU30mcXVvdDsgLW5lICZxdW90OyR7TlJfQ09NQklORURfR1JPVVBTfSZxdW90OyBdICZhbXA7
JmFtcDsgezx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVjaG8g
JnF1b3Q7VW5kZWZpbmVkIGdyb3VwczomcXVvdDs8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0i
TXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBkaWZmICZxdW90OyR7VE1QX0RFRklORUR9JnF1b3Q7ICZxdW90OyR7
VE1QX0NPTUJJTkVEfSZxdW90OyB8IGdyZXAgJnF1b3Q7XiZndDsmcXVvdDs8dT48L3U+PHU+PC91
PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbGVhbnVwPHU+PC91Pjx1PjwvdT48L3A+
PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDE8dT48L3U+PHU+PC91PjwvcD48cCBj
bGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTx1PjwvdT48
dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPjx1PjwvdT7CoDx1PjwvdT48L3A+PHAgY2xh
c3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICMgQWRkIGNoZWNr
cyBmb3IgcmVxdWlyZWQgZGlyZWN0b3JpZXMgaGVyZTx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNz
PSJNc29Ob3JtYWwiPjx1PjwvdT7CoDx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNsZWFudXA8dT48L3U+PHU+PC91PjwvcD48cCBj
bGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDA8
dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj59PHU+PC91Pjx1PjwvdT48L3A+
PHAgY2xhc3M9Ik1zb05vcm1hbCI+PHU+PC91PsKgPHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9y
bWFsIj5hcHBseV9jZmdmaWxlKCkgezx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBDRkdGSUxFPSZxdW90OyQxJnF1b3Q7
PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBj
aGVja19yZXF1aXJlbWVudHMgJnF1b3Q7JHtDRkdGSUxFfSZxdW90OyB8fCB7PHU+PC91Pjx1Pjwv
dT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZWNobyAmcXVvdDtTa2lwcGluZyAke0NG
R0ZJTEV9JnF1b3Q7PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAxPHU+PC91
Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIH08L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGNhdCAke0NGR0ZJTEV9IHwgZ3JlcCAtdiAmcXVvdDteIyZxdW90OyB8IFw8dT48L3U+
PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB3aGlsZSByZWFkIExJTkU7IGRv
PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGV2YWwgYGVjaG8gJnF1b3Q7JExJTkUmcXVv
dDsgfCBzZWQgLW4gJnF1b3Q7cy9cKC4qXClcIFwoLipcKSBcKC4qXClcIFwoLipcKVwgXCguKlwp
XCBcKC4qXCkvVFRZUEU9XDEgOyBUVVNFUj1cMjsgVEdST1VQPVwzOyBUTU9ERT1cNDsgVE5BTUU9
XDUgVExUQVJHRVQ9XDYvcCZxdW90O2A8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9y
bWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBUTkFNRT0ke1JPT1RfRElSfSR7VE5BTUV9PHU+PC91Pjx1PjwvdT48L3A+PHAg
Y2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgWyAmcXVvdDske1ZFUkJPU0V9JnF1b3Q7ICE9ICZxdW90
O25vJnF1b3Q7IF0gJmFtcDsmYW1wOyBlY2hvICZxdW90O0NoZWNraW5nIGZvciAtJHtUTkFNRX0t
LiZxdW90Ozx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPjx1PjwvdT7CoDx1
PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgWyAmcXVvdDske1RUWVBFfSZxdW90
OyA9ICZxdW90O2wmcXVvdDsgXSAmYW1wOyZhbXA7IHs8dT48L3U+PHU+PC91PjwvcD48cCBjbGFz
cz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFRTT1VS
Q0U9JnF1b3Q7JFRMVEFSR0VUJnF1b3Q7PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05v
cm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBbICZxdW90OyR7VkVS
Qk9TRX0mcXVvdDsgIT0gJnF1b3Q7bm8mcXVvdDsgXSAmYW1wOyZhbXA7IGVjaG8gJnF1b3Q7Q3Jl
YXRpbmcgbGluayAtJHtUTkFNRX0tIHBvaW50aW5nIHRvIC0ke1RTT1VSQ0V9LS4mcXVvdDs8dT48
L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGxpbmtfZmlsZSAmcXVvdDske1RTT1VSQ0V9JnF1b3Q7ICZxdW90OyR7
VE5BTUV9JnF1b3Q7PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb250aW51ZTx1PjwvdT48dT48L3U+PC9w
PjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH08L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgWyAtTCAmcXVvdDske1ROQU1FfSZxdW90OyBdICZhbXA7JmFtcDsgezx1PjwvdT48dT48L3U+
PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgWyAmcXVvdDske1ZFUkJPU0V9JnF1b3Q7ICE9ICZxdW90O25vJnF1b3Q7IF0gJmFtcDsm
YW1wOyBlY2hvICZxdW90O0ZvdW5kIGxpbmsuJnF1b3Q7PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xh
c3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBORVdO
QU1FPWBscyAtbCAmcXVvdDske1ROQU1FfSZxdW90OyB8IHNlZCAtZSAmIzM5O3MvXi4qLSZndDsg
XCguKlwpJC9cMS8mIzM5O2A8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVjaG8gJHtORVdOQU1FfSB8IGdy
ZXAgLXYgJnF1b3Q7Xi8mcXVvdDsgJmd0Oy9kZXYvbnVsbCAmYW1wOyZhbXA7IHs8dT48L3U+PHU+
PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgVE5BTUU9JnF1b3Q7YGVj
aG8gJHtUTkFNRX0gfCBzZWQgLWUgJiMzOTtzQFwoLipcKS8uKkBcMUAmIzM5O2AvJHtORVdOQU1F
fSZxdW90Ozx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBbICZxdW90OyR7VkVSQk9TRX0mcXVvdDsgIT0gJnF1b3Q7bm8mcXVvdDsgXSAmYW1wOyZhbXA7
IGVjaG8gJnF1b3Q7Q29udmVydGVkIHJlbGF0aXZlIGxpbmt0YXJnZXQgdG8gYWJzb2x1dGUgcGF0
aCAtJHtUTkFNRX0tLiZxdW90Ozx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwi
PsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfSB8fCB7PHU+PC91Pjx1Pjwv
dT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFROQU1FPSZxdW90OyR7TkVX
TkFNRX0mcXVvdDs8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgWyAmcXVvdDske1ZFUkJPU0V9JnF1b3Q7ICE9ICZxdW90O25vJnF1b3Q7IF0gJmFtcDsm
YW1wOyBlY2hvICZxdW90O1VzaW5nIGFic29sdXRlIGxpbmsgdGFyZ2V0IC0ke1ROQU1FfS0uJnF1
b3Q7PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05v
cm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgfTwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjYXNlICZxdW90OyR7
VFRZUEV9JnF1b3Q7IGluPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAmcXVvdDtmJnF1b3Q7KcKgIFsgJnF1
b3Q7JHtWRVJCT1NFfSZxdW90OyAhPSAmcXVvdDtubyZxdW90OyBdICZhbXA7JmFtcDsgZWNobyAm
cXVvdDtDcmVhdGluZyBmaWxlIC0ke1ROQU1FfS0uJnF1b3Q7PHU+PC91Pjx1PjwvdT48L3A+PHAg
Y2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNyZWF0ZV9maWxlICZxdW90OyR7VE5BTUV9
JnF1b3Q7ICZhbXA7PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIDs7PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAmcXVvdDtkJnF1b3Q7KcKgIFsgJnF1b3Q7JHtW
RVJCT1NFfSZxdW90OyAhPSAmcXVvdDtubyZxdW90OyBdICZhbXA7JmFtcDsgZWNobyAmcXVvdDtD
cmVhdGluZyBkaXJlY3RvcnkgLSR7VE5BTUV9LS4mcXVvdDs8dT48L3U+PHU+PC91PjwvcD48cCBj
bGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbWtfZGlyICZxdW90OyR7VE5BTUV9JnF1b3Q7
PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICMgQWRk
IGNoZWNrIHRvIHNlZSBpZiB0aGVyZSYjMzk7cyBhbiBlbnRyeSBpbiBmc3RhYiB0byBtb3VudC48
dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgOzs8dT48
L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgICopwqDCoMKgIFsgJnF1b3Q7JHtWRVJCT1NFfSZxdW90OyAhPSAmcXVv
dDtubyZxdW90OyBdICZhbXA7JmFtcDsgZWNobyAmcXVvdDtJbnZhbGlkIHR5cGUgLSR7VFRZUEV9
LS4mcXVvdDs8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgY29udGludWU8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgOzs8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlc2Fj
PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGRvbmU8L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHJldHVybiAwPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05v
cm1hbCI+fTx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPjx1PjwvdT7CoDx1
PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+Y2xlYXJjYWNoZT0wPC9wPjxwIGNsYXNzPSJN
c29Ob3JtYWwiPmV4ZWMgOSZsdDsvcHJvYy9jbWRsaW5lPC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwi
PndoaWxlIHJlYWQgbGluZSAmbHQ7JmFtcDs5PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1z
b05vcm1hbCI+ZG88dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2FzZSAmcXVvdDskbGluZSZxdW90OyBpbjx1PjwvdT48
dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICpjbGVhcmNhY2hlKinCoCBjbGVh
cmNhY2hlPTE8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIMKgwqDCoMKgwqDCoCA7Ozx1PjwvdT48dT48L3U+
PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICopwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCDC
oMKgwqDCoMKgwqAgY29udGludWU8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFs
Ij7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIMKgwqDCoMKgwqDCoCA7Ozx1
PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBlc2FjPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+ZG9u
ZTwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj5leGVjIDkmZ3Q7JmFtcDstPC9wPjxwIGNsYXNzPSJN
c29Ob3JtYWwiPmlmIHRlc3QgLWUgJHtST09UX0RJUn0vZXRjL3ZvbGF0aWxlLmNhY2hlIC1hICZx
dW90OyRWT0xBVElMRV9FTkFCTEVfQ0FDSEUmcXVvdDsgPSAmcXVvdDt5ZXMmcXVvdDsgLWEgJnF1
b3Q7eCQxJnF1b3Q7ICE9ICZxdW90O3h1cGRhdGUmcXVvdDsgLWEgJnF1b3Q7eCRjbGVhcmNhY2hl
JnF1b3Q7ID0gJnF1b3Q7eDAmcXVvdDs8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9y
bWFsIj50aGVuPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNoICR7Uk9PVF9ESVJ9L2V0Yy92b2xhdGlsZS5jYWNoZTx1
PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPmVsc2U8dT48L3U+PHU+PC91Pjwv
cD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcm0g
LWYgJHtST09UX0RJUn0vZXRjL3ZvbGF0aWxlLmNhY2hlICR7Uk9PVF9ESVJ9L2V0Yy92b2xhdGls
ZS5jYWNoZS5idWlsZDwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgZm9yIGZpbGUgaW4gYGxzIC0xICZxdW90OyR7Q0ZHRElSfSZxdW90OyB8IHNv
cnRgOyBkbzx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGFwcGx5
X2NmZ2ZpbGUgJnF1b3Q7JHtDRkdESVJ9LyR7ZmlsZX0mcXVvdDs8dT48L3U+PHU+PC91PjwvcD48
cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZG9uZTwv
cD48cCBjbGFzcz0iTXNvTm9ybWFsIj48YnI+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxicj48
L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+PGI+KioqVGhpcyBsaW5lIG9jY2FzaW9uYWxseSAoc29t
ZXRpbWVzIG5vdCkgZXhlY3V0ZXMgZm9yIGEgbG9uZyB0aW1lIGR1cmluZyBib290KioqPC9iPjwv
cD48cCBjbGFzcz0iTXNvTm9ybWFsIj48YnI+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoDxiPjx1PiBbIC1lICR7Uk9PVF9ESVJ9L2V0Yy92b2xh
dGlsZS5jYWNoZS5idWlsZCBdICZhbXA7JmFtcDsgc3luYyAmYW1wOyZhbXA7IG12ICR7Uk9PVF9E
SVJ9L2V0Yy92b2xhdGlsZS5jYWNoZS5idWlsZCAke1JPT1RfRElSfS9ldGMvdm9sYXRpbGUuY2Fj
aGU8L3U+PC9iPjx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxicj48L3A+
PHAgY2xhc3M9Ik1zb05vcm1hbCI+PGJyPjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj48YnI+PC9w
PjxwIGNsYXNzPSJNc29Ob3JtYWwiPmZpPC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPmlmIFsgLXog
JnF1b3Q7JHtST09UX0RJUn0mcXVvdDsgXSAmYW1wOyZhbXA7IFsgLWYgL2V0Yy9sZC5zby5jYWNo
ZSBdICZhbXA7JmFtcDsgWyAhIC1mIC92YXIvcnVuL2xkLnNvLmNhY2hlIF08dT48L3U+PHU+PC91
PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj50aGVuPC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBsbiAtcyAvZXRjL2xkLnNvLmNhY2hlIC92YXIv
cnVuL2xkLnNvLmNhY2hlPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+Zmk8
L3A+PGJyPjxicj5BbnkgaWRlYSB3aGF0IGNhbiBnb2VzIHdyb25nIGFuZCB3aHkgc29tZXRpbWVz
IGJvb3RpbmcgdGFrZXMgbG9uZyB0aW1lIGFuZCBzb21ldGltZXMgbm90P8KgPGJyPjwvZGl2Pjwv
ZGl2Pg0K

--00000000000007946f05972bb354--
