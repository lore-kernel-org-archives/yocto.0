Return-Path: <gada.kashyap@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EAAADE00B20; Tue,  3 Jun 2014 09:20:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gada.kashyap[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yh0-f48.google.com (mail-yh0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73614E0073D
	for <yocto@yoctoproject.org>; Tue,  3 Jun 2014 09:20:12 -0700 (PDT)
Received: by mail-yh0-f48.google.com with SMTP id a41so5264360yho.21
	for <yocto@yoctoproject.org>; Tue, 03 Jun 2014 09:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=fqZiMxnC2DghUR0a5s58YoXLYRSC+LMIz8Wxgihabag=;
	b=VbTSqnulDSF+FcSEHd0iFsP8i8F2PV7rv1OICLqG+fGSozeda1wt2HIDJO3GTMAYzV
	FZChkJtcEyfPAjwegOISgYxjrLSOt41UqmlyoccjugOEUeIsUcYmuG/JgeMU9y2FOpb5
	PEIRMQNgwi+7Xed5uAYKEDWRAl3dTdrGSO1R5OgKROviT3h7/P4aoFDHZh+FObA0S1w2
	JArZrjaQmh7ZijAV3SCsprlaS8B+bejZK9HtRhRmW3Fou3efd7xRgTxX1iRPNpQ4wzqJ
	YuOvA1NHPFfssYjRfaIykRWAXslfaRbWrFUu8yWdUWEdSv0VS+F7PfqKF7JXXRqhkARV
	keMA==
MIME-Version: 1.0
X-Received: by 10.236.137.114 with SMTP id x78mr3396714yhi.97.1401812411967;
	Tue, 03 Jun 2014 09:20:11 -0700 (PDT)
Received: by 10.170.143.138 with HTTP; Tue, 3 Jun 2014 09:20:11 -0700 (PDT)
In-Reply-To: <CAJTo0LbKNeujMacRb-O3RHq5LfWZ01axS-TYTwhScjFnm-uu8g@mail.gmail.com>
References: <CANJXcUap4aox3bhkxzq+EqTtZHokfMX6cqaao5o0oLqqRE+4SA@mail.gmail.com>
	<CAJTo0LaNbvwf+2yEnPorOj81N4fSJwfYOxppqHcrX-hUHabBeA@mail.gmail.com>
	<CANJXcUaZm=4XeG4PDZwbaX+DtCo-fh+-aWWD49EsjOVmOuiN0Q@mail.gmail.com>
	<CANJXcUZOwrAuMjkt_RfBuSU3fyyDbay024qvf1KEfuPkOuJBew@mail.gmail.com>
	<CAJTo0Lbd257SN_SmwD=2MKYrw0LYODnhJoPhCPCSpdhxf7Nixw@mail.gmail.com>
	<CANJXcUYEdbSf1Fo5kZAw5GE+36fnz=EgzZojXxr44WdnCtC1Qg@mail.gmail.com>
	<CAJTo0LbKNeujMacRb-O3RHq5LfWZ01axS-TYTwhScjFnm-uu8g@mail.gmail.com>
Date: Tue, 3 Jun 2014 21:50:11 +0530
Message-ID: <CANJXcUasi1Pf3T4Zq5Fz7ExKq7Zm9FKCYERRLuaaLODuEZR0Hg@mail.gmail.com>
From: Kashyap Gada <gada.kashyap@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Source Command Permission Denied
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
X-List-Received-Date: Tue, 03 Jun 2014 16:20:20 -0000
Content-Type: multipart/alternative; boundary=20cf303dd404db6e1b04faf0e21e

--20cf303dd404db6e1b04faf0e21e
Content-Type: text/plain; charset=UTF-8

Thank you Ross.

I actually ran into another problem in bitbaking core-image-sato from the
getting started guide at the yocto site which led me into changing to a
setup which doesnot include mounting of any drive to my ubuntu
distribution. the problem is as follows.

While compiling of e2fsprogs-1.42.9-r0 do_compile (pid 5276)

the details of the error log generated is as follows

DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common',
'common-linux', 'common-glibc', 'i586-linux', 'common']
DEBUG: Executing shell function do_compile
NOTE: make -j 4
make[1]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[1]: `util/subst.conf' is up to date.
make[1]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[1]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[1]: `lib/config.h' is up to date.
make[1]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[1]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
SUBST lib/dirpaths.h
make[1]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[1]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
cd .; CONFIG_FILES=./lib/ext2fs/ext2_types.h ./config.status
config.status: creating ./lib/ext2fs/ext2_types.h
config.status: creating lib/config.h
config.status: lib/config.h is unchanged
config.status: executing po-directories commands
make[1]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[1]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
cd .; CONFIG_FILES=./lib/blkid/blkid_types.h ./config.status
config.status: creating ./lib/blkid/blkid_types.h
config.status: creating lib/config.h
config.status: lib/config.h is unchanged
config.status: executing po-directories commands
make[1]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[1]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
cd .; CONFIG_FILES=./lib/uuid/uuid_types.h ./config.status
config.status: creating ./lib/uuid/uuid_types.h
config.status: creating lib/config.h
config.status: lib/config.h is unchanged
config.status: executing po-directories commands
make[1]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[1]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/et'
SUBST compile_et
make[1]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/et'
make[1]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/ext2fs'
SUBST ext2_err.et
make[1]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/ext2fs'
make libs
make[1]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[2]: `util/subst.conf' is up to date.
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[2]: `lib/config.h' is up to date.
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
SUBST lib/dirpaths.h
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[2]: `lib/ext2fs/ext2_types.h' is up to date.
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[2]: `lib/blkid/blkid_types.h' is up to date.
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[2]: `lib/uuid/uuid_types.h' is up to date.
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/et'
SUBST compile_et
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/et'
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/ext2fs'
SUBST ext2_err.et
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/ext2fs'
making all in lib/et
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/et'
SUBST compile_et
SUBST ../../lib/dirpaths.h
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/et'
making all in lib/ss
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/ss'
SUBST mk_cmds
SUBST ../../lib/dirpaths.h
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/ss'
making all in lib/e2p
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/e2p'
SUBST ../../lib/dirpaths.h
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/fsetflags.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/fgetversion.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/feature.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/fgetflags.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/fsetversion.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/getflags.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/getversion.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/hashstr.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/iod.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/ls.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/mntopts.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/parse_num.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/pe.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/pf.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/ps.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/setflags.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/setversion.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/uuid.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/ostype.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/percent.c
GEN_ELF_SOLIB libe2p.so.2.3
GEN_LIB libe2p.a
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/e2p'
making all in lib/ext2fs
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/ext2fs'
SUBST ../../lib/dirpaths.h
SUBST ext2_err.et
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/crc16.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/inode_io.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/write_bb_file.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/bb_compat.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/dupfs.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/imager.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/test_io.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/alloc.c
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/test_io.c:14:0:
warning: "_GNU_SOURCE" redefined [enabled by default]
 #define _GNU_SOURCE
 ^
In file included from
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/test_io.c:12:0:
../../lib/config.h:648:0: note: this is the location of the previous
definition
 # define _GNU_SOURCE 1
 ^
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/alloc_sb.c
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/test_io.c:14:0:
warning: "_GNU_SOURCE" redefined [enabled by default]
 #define _GNU_SOURCE
 ^
In file included from
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/test_io.c:12:0:
../../lib/config.h:648:0: note: this is the location of the previous
definition
 # define _GNU_SOURCE 1
 ^
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/alloc_stats.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/alloc_tables.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/badblocks.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/bb_inode.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/bitmaps.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/bitops.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/blkmap64_ba.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/blkmap64_rb.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/block.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/bmap.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/check_desc.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/closefs.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/crc32c.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/csum.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/dblist.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/dblist_dir.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/dirblock.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/dirhash.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/dir_iterate.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/expanddir.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/ext_attr.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/extent.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/fileio.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/finddev.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/flushb.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/freefs.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/gen_bitmap.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/gen_bitmap64.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/get_pathname.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/getsize.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/getsectsize.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/i_block.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/icount.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/ind_block.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/initialize.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/inline.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/inode.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/io_manager.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/ismounted.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/link.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/lookup.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/mkdir.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/mkjournal.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/mmp.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/namei.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/native.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/newdir.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/openfs.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/progress.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/punch.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/qcow2.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/read_bb.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/read_bb_file.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/res_gdt.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/rw_bitmaps.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/swapfs.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/symlink.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/undo_io.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/unix_io.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/unlink.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/valid_blk.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/version.c
GEN_LIB libext2fs.a
GEN_ELF_SOLIB libext2fs.so.2.4
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/ext2fs'
making all in lib/blkid
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/blkid'
SUBST ../../lib/dirpaths.h
SUBST libblkid.3
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/blkid/cache.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/blkid/dev.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/blkid/devname.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/blkid/devno.c
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/blkid/cache.c:15:0:
warning: "_GNU_SOURCE" redefined [enabled by default]
 #define _GNU_SOURCE
 ^
In file included from
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/blkid/cache.c:13:0:
../../lib/config.h:648:0: note: this is the location of the previous
definition
 # define _GNU_SOURCE 1
 ^
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/blkid/cache.c:15:0:
warning: "_GNU_SOURCE" redefined [enabled by default]
 #define _GNU_SOURCE
 ^
In file included from
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/blkid/cache.c:13:0:
../../lib/config.h:648:0: note: this is the location of the previous
definition
 # define _GNU_SOURCE 1
 ^
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/blkid/getsize.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/blkid/llseek.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/blkid/probe.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/blkid/read.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/blkid/resolve.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/blkid/save.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/blkid/tag.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/blkid/version.c
GEN_ELF_SOLIB libblkid.so.1.0
GEN_LIB libblkid.a
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/blkid'
making all in lib/quota
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/quota'
SUBST ../../lib/dirpaths.h
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/quota/quotaio.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/quota/quotaio_v2.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/quota/quotaio_tree.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/quota/mkquota.c
GEN_LIB libquota.a
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/quota'
making all in intl
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/intl'
make[2]: Nothing to be done for `all'.
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/intl'
make[1]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make progs
make[1]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[2]: `util/subst.conf' is up to date.
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[2]: `lib/config.h' is up to date.
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
SUBST lib/dirpaths.h
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[2]: `lib/ext2fs/ext2_types.h' is up to date.
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[2]: `lib/blkid/blkid_types.h' is up to date.
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[2]: `lib/uuid/uuid_types.h' is up to date.
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/et'
SUBST compile_et
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/et'
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/ext2fs'
SUBST ext2_err.et
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/ext2fs'
making all in lib/et
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/et'
SUBST compile_et
SUBST ../../lib/dirpaths.h
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/et'
making all in lib/ss
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/ss'
SUBST mk_cmds
SUBST ../../lib/dirpaths.h
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/ss'
making all in lib/e2p
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/e2p'
SUBST ../../lib/dirpaths.h
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/e2p'
making all in lib/ext2fs
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/ext2fs'
SUBST ../../lib/dirpaths.h
SUBST ext2_err.et
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/ext2fs'
making all in lib/blkid
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/blkid'
SUBST ../../lib/dirpaths.h
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/blkid'
making all in lib/quota
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/quota'
SUBST ../../lib/dirpaths.h
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/quota'
making all in intl
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/intl'
make[2]: Nothing to be done for `all'.
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/intl'
making all in e2fsck
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/e2fsck'
SUBST ../lib/dirpaths.h
GEN32TABLE crc32table.h
CC prof_err.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/logfile.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/sigcatcher.c
SUBST e2fsck.8
SUBST e2fsck.conf.5
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/crc32.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/unix.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/e2fsck.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/super.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/pass1.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/pass1b.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/pass2.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/pass3.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/pass4.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/pass5.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/journal.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/badblocks.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/util.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/dirinfo.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/dx_dirinfo.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/ehandler.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/problem.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/message.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/quota.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/recovery.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/region.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/revoke.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/ea_refcount.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/rehash.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/profile.c
LD e2fsck
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/e2fsck'
making all in debugfs
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/debugfs'
MK_CMDS debug_cmds.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/debugfs/debugfs.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/debugfs/util.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/debugfs/ncheck.c
chmod: debug_cmds.c: new permissions are r-xrwxrwx, not r-xr-xr-x
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/debugfs/icheck.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/debugfs/ls.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/debugfs/lsdel.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/debugfs/dump.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/debugfs/set_fields.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/debugfs/logdump.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/debugfs/htree.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/debugfs/unused.c
CC e2freefrag.o
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/debugfs/filefrag.c
MK_CMDS extent_cmds.c
chmod: extent_cmds.c: new permissions are r-xrwxrwx, not r-xr-xr-x
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/debugfs/extent_inode.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/debugfs/zap.c
CC create_inode.o
SUBST debugfs.8
CC debug_cmds.c
CC extent_cmds.c
LD debugfs
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/debugfs'
making all in misc
make[2]: Entering directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/misc'
SUBST ../lib/dirpaths.h
CP
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/profile.h
COMPILE_ET prof_err.et
COMPILE_ET prof_err.et
if test -f
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/misc/
mke2fs.conf.custom.in ; then \
cp
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/misc/
mke2fs.conf.custom.in mke2fs.conf; \
else \
cp
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/misc/
mke2fs.conf.in mke2fs.conf; \
fi
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/misc/create_inode.c
CC
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/misc/badblocks.c
chmod: cannot operate on dangling symlink 'prof_err.h'
chmod: prof_err.h: new permissions are r-xrwxrwx, not r-xr-xr-x
chmod: prof_err.c: new permissions are r-xrwxrwx, not r-xr-xr-x
make[2]: *** [prof_err.h] Error 1
make[2]: *** Waiting for unfinished jobs....
make[2]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/misc'
make[1]: *** [all-progs-recursive] Error 1
make[1]: Leaving directory
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
make: *** [all] Error 2
ERROR: oe_runmake failed
WARNING: exit code 1 from a shell command.
ERROR: Function failed: do_compile (log file is located at
/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/temp/log.do_compile.5276)




Sorry for attaching this to this list.



On Tue, Jun 3, 2014 at 9:20 PM, Burton, Ross <ross.burton@intel.com> wrote:

> So you probably lost every executable mode when you did that.  Make a
> fresh clone and reapply your changes, that will be easier than finding
> every file that isn't executable when it should be.
>
> Ross
>
> On 3 June 2014 16:49, Kashyap Gada <gada.kashyap@gmail.com> wrote:
> > its copied!
> >
> >
> > On Tue, Jun 3, 2014 at 9:16 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
> >>
> >> On 3 June 2014 16:39, Kashyap Gada <gada.kashyap@gmail.com> wrote:
> >> > bash: /home/kashyap/yocto/poky/scripts/oe-setup-builddir: Permission
> >> > denied
> >>
> >> The permissions on that file don't involve +x.  Is that a fresh
> >> checkout of poky or copied from the removable media?
> >>
> >> Ross
> >
> >
>

--20cf303dd404db6e1b04faf0e21e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you Ross.=C2=A0<br><br>I actually ran into another p=
roblem in bitbaking core-image-sato from the getting started guide at the y=
octo site which led me into changing to a setup which doesnot include mount=
ing of any drive to my ubuntu distribution. the problem is as follows.<div>
<br></div><div>While compiling of=C2=A0e2fsprogs-1.42.9-r0 do_compile (pid =
5276)=C2=A0</div><div><br></div><div>the details of the error log generated=
 is as follows</div><div><br></div><div><div>DEBUG: SITE files [&#39;endian=
-little&#39;, &#39;bit-32&#39;, &#39;ix86-common&#39;, &#39;common-linux&#3=
9;, &#39;common-glibc&#39;, &#39;i586-linux&#39;, &#39;common&#39;]</div>
<div>DEBUG: Executing shell function do_compile</div><div>NOTE: make -j 4</=
div><div>make[1]: Entering directory `/mnt/kashyap/hda/yocto/poky/build/tmp=
/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build&#39;</div><div>make[1]: `ut=
il/subst.conf&#39; is up to date.</div>
<div>make[1]: Leaving directory `/mnt/kashyap/hda/yocto/poky/build/tmp/work=
/i586-poky-linux/e2fsprogs/1.42.9-r0/build&#39;</div><div>make[1]: Entering=
 directory `/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fs=
progs/1.42.9-r0/build&#39;</div>
<div>make[1]: `lib/config.h&#39; is up to date.</div><div>make[1]: Leaving =
directory `/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsp=
rogs/1.42.9-r0/build&#39;</div><div>make[1]: Entering directory `/mnt/kashy=
ap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build&=
#39;</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>SUBST lib/dirpaths.=
h</div><div>make[1]: Leaving directory `/mnt/kashyap/hda/yocto/poky/build/t=
mp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build&#39;</div><div>make[1]: E=
ntering directory `/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-lin=
ux/e2fsprogs/1.42.9-r0/build&#39;</div>
<div>cd .; CONFIG_FILES=3D./lib/ext2fs/ext2_types.h ./config.status</div><d=
iv>config.status: creating ./lib/ext2fs/ext2_types.h</div><div>config.statu=
s: creating lib/config.h</div><div>config.status: lib/config.h is unchanged=
</div>
<div>config.status: executing po-directories commands</div><div>make[1]: Le=
aving directory `/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux=
/e2fsprogs/1.42.9-r0/build&#39;</div><div>make[1]: Entering directory `/mnt=
/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/=
build&#39;</div>
<div>cd .; CONFIG_FILES=3D./lib/blkid/blkid_types.h ./config.status</div><d=
iv>config.status: creating ./lib/blkid/blkid_types.h</div><div>config.statu=
s: creating lib/config.h</div><div>config.status: lib/config.h is unchanged=
</div>
<div>config.status: executing po-directories commands</div><div>make[1]: Le=
aving directory `/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux=
/e2fsprogs/1.42.9-r0/build&#39;</div><div>make[1]: Entering directory `/mnt=
/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/=
build&#39;</div>
<div>cd .; CONFIG_FILES=3D./lib/uuid/uuid_types.h ./config.status</div><div=
>config.status: creating ./lib/uuid/uuid_types.h</div><div>config.status: c=
reating lib/config.h</div><div>config.status: lib/config.h is unchanged</di=
v>
<div>config.status: executing po-directories commands</div><div>make[1]: Le=
aving directory `/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux=
/e2fsprogs/1.42.9-r0/build&#39;</div><div>make[1]: Entering directory `/mnt=
/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/=
build/lib/et&#39;</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>SUBST compile_et</d=
iv><div>make[1]: Leaving directory `/mnt/kashyap/hda/yocto/poky/build/tmp/w=
ork/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/et&#39;</div><div>make[1]=
: Entering directory `/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-=
linux/e2fsprogs/1.42.9-r0/build/lib/ext2fs&#39;</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>SUBST <a href=3D"ht=
tp://ext2_err.et">ext2_err.et</a></div><div>make[1]: Leaving directory `/mn=
t/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0=
/build/lib/ext2fs&#39;</div>
<div>make libs</div><div>make[1]: Entering directory `/mnt/kashyap/hda/yoct=
o/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build&#39;</div><=
div>make[2]: Entering directory `/mnt/kashyap/hda/yocto/poky/build/tmp/work=
/i586-poky-linux/e2fsprogs/1.42.9-r0/build&#39;</div>
<div>make[2]: `util/subst.conf&#39; is up to date.</div><div>make[2]: Leavi=
ng directory `/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2=
fsprogs/1.42.9-r0/build&#39;</div><div>make[2]: Entering directory `/mnt/ka=
shyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/bui=
ld&#39;</div>
<div>make[2]: `lib/config.h&#39; is up to date.</div><div>make[2]: Leaving =
directory `/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsp=
rogs/1.42.9-r0/build&#39;</div><div>make[2]: Entering directory `/mnt/kashy=
ap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build&=
#39;</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>SUBST lib/dirpaths.=
h</div><div>make[2]: Leaving directory `/mnt/kashyap/hda/yocto/poky/build/t=
mp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build&#39;</div><div>make[2]: E=
ntering directory `/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-lin=
ux/e2fsprogs/1.42.9-r0/build&#39;</div>
<div>make[2]: `lib/ext2fs/ext2_types.h&#39; is up to date.</div><div>make[2=
]: Leaving directory `/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-=
linux/e2fsprogs/1.42.9-r0/build&#39;</div><div>make[2]: Entering directory =
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.=
9-r0/build&#39;</div>
<div>make[2]: `lib/blkid/blkid_types.h&#39; is up to date.</div><div>make[2=
]: Leaving directory `/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-=
linux/e2fsprogs/1.42.9-r0/build&#39;</div><div>make[2]: Entering directory =
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.=
9-r0/build&#39;</div>
<div>make[2]: `lib/uuid/uuid_types.h&#39; is up to date.</div><div>make[2]:=
 Leaving directory `/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-li=
nux/e2fsprogs/1.42.9-r0/build&#39;</div><div>make[2]: Entering directory `/=
mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-=
r0/build/lib/et&#39;</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>SUBST compile_et</d=
iv><div>make[2]: Leaving directory `/mnt/kashyap/hda/yocto/poky/build/tmp/w=
ork/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/et&#39;</div><div>make[2]=
: Entering directory `/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-=
linux/e2fsprogs/1.42.9-r0/build/lib/ext2fs&#39;</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>SUBST <a href=3D"ht=
tp://ext2_err.et">ext2_err.et</a></div><div>make[2]: Leaving directory `/mn=
t/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0=
/build/lib/ext2fs&#39;</div>
<div>making all in lib/et</div><div>make[2]: Entering directory `/mnt/kashy=
ap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/=
lib/et&#39;</div><div><span class=3D"" style=3D"white-space:pre">	</span>SU=
BST compile_et</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>SUBST ../../lib/dir=
paths.h</div><div>make[2]: Leaving directory `/mnt/kashyap/hda/yocto/poky/b=
uild/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/et&#39;</div><d=
iv>
making all in lib/ss</div><div>make[2]: Entering directory `/mnt/kashyap/hd=
a/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/s=
s&#39;</div><div><span class=3D"" style=3D"white-space:pre">	</span>SUBST m=
k_cmds</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>SUBST ../../lib/dir=
paths.h</div><div>make[2]: Leaving directory `/mnt/kashyap/hda/yocto/poky/b=
uild/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/ss&#39;</div><d=
iv>
making all in lib/e2p</div><div>make[2]: Entering directory `/mnt/kashyap/h=
da/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/=
e2p&#39;</div><div><span class=3D"" style=3D"white-space:pre">	</span>SUBST=
 ../../lib/dirpaths.h</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/e2p/fsetflags.c</div><div><span class=3D"" style=3D"white-space:pr=
e">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2=
fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/fgetversion.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/e2p/feature.c</div><div><span class=3D"" style=3D"white-space:pre"=
>	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fs=
progs/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/fgetflags.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/e2p/fsetversion.c</div><div><span class=3D"" style=3D"white-space:=
pre">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/=
e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/getflags.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/e2p/getversion.c</div><div><span class=3D"" style=3D"white-space:p=
re">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e=
2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/hashstr.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/e2p/iod.c</div><div><span class=3D"" style=3D"white-space:pre">	</=
span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprog=
s/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/ls.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/e2p/mntopts.c</div><div><span class=3D"" style=3D"white-space:pre"=
>	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fs=
progs/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/parse_num.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/e2p/pe.c</div><div><span class=3D"" style=3D"white-space:pre">	</s=
pan>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs=
/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/pf.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/e2p/ps.c</div><div><span class=3D"" style=3D"white-space:pre">	</s=
pan>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs=
/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/setflags.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/e2p/setversion.c</div><div><span class=3D"" style=3D"white-space:p=
re">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e=
2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/uuid.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/e2p/ostype.c</div><div><span class=3D"" style=3D"white-space:pre">=
	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsp=
rogs/1.42.9-r0/e2fsprogs-1.42.9/lib/e2p/percent.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>GEN_ELF_SOLIB libe2=
p.so.2.3</div><div><span class=3D"" style=3D"white-space:pre">	</span>GEN_L=
IB libe2p.a</div><div>make[2]: Leaving directory `/mnt/kashyap/hda/yocto/po=
ky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/e2p&#39;</d=
iv>
<div>making all in lib/ext2fs</div><div>make[2]: Entering directory `/mnt/k=
ashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/bu=
ild/lib/ext2fs&#39;</div><div><span class=3D"" style=3D"white-space:pre">	<=
/span>SUBST ../../lib/dirpaths.h</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>SUBST <a href=3D"ht=
tp://ext2_err.et">ext2_err.et</a></div><div><span class=3D"" style=3D"white=
-space:pre">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky=
-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/crc16.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/inode_io.c</div><div><span class=3D"" style=3D"white-space:=
pre">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/=
e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/write_bb_file.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/bb_compat.c</div><div><span class=3D"" style=3D"white-space=
:pre">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux=
/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/dupfs.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/imager.c</div><div><span class=3D"" style=3D"white-space:pr=
e">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2=
fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/test_io.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/alloc.c</div><div>/mnt/kashyap/hda/yocto/poky/build/tmp/wor=
k/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/test_io.c=
:14:0: warning: &quot;_GNU_SOURCE&quot; redefined [enabled by default]</div=
>
<div>=C2=A0#define _GNU_SOURCE</div><div>=C2=A0^</div><div>In file included=
 from /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/=
1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/test_io.c:12:0:</div><div>../../lib/c=
onfig.h:648:0: note: this is the location of the previous definition</div>
<div>=C2=A0# define _GNU_SOURCE 1</div><div>=C2=A0^</div><div><span class=
=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda/yocto/poky/buil=
d/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/=
alloc_sb.c</div>
<div>/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1=
.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/test_io.c:14:0: warning: &quot;_GNU_SO=
URCE&quot; redefined [enabled by default]</div><div>=C2=A0#define _GNU_SOUR=
CE</div>
<div>=C2=A0^</div><div>In file included from /mnt/kashyap/hda/yocto/poky/bu=
ild/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2f=
s/test_io.c:12:0:</div><div>../../lib/config.h:648:0: note: this is the loc=
ation of the previous definition</div>
<div>=C2=A0# define _GNU_SOURCE 1</div><div>=C2=A0^</div><div><span class=
=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda/yocto/poky/buil=
d/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/=
alloc_stats.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/alloc_tables.c</div><div><span class=3D"" style=3D"white-sp=
ace:pre">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-li=
nux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/badblocks.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/bb_inode.c</div><div><span class=3D"" style=3D"white-space:=
pre">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/=
e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/bitmaps.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/bitops.c</div><div><span class=3D"" style=3D"white-space:pr=
e">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2=
fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/blkmap64_ba.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/blkmap64_rb.c</div><div><span class=3D"" style=3D"white-spa=
ce:pre">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-lin=
ux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/block.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/bmap.c</div><div><span class=3D"" style=3D"white-space:pre"=
>	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fs=
progs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/check_desc.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/closefs.c</div><div><span class=3D"" style=3D"white-space:p=
re">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e=
2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/crc32c.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/csum.c</div><div><span class=3D"" style=3D"white-space:pre"=
>	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fs=
progs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/dblist.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/dblist_dir.c</div><div><span class=3D"" style=3D"white-spac=
e:pre">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linu=
x/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/dirblock.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/dirhash.c</div><div><span class=3D"" style=3D"white-space:p=
re">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e=
2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/dir_iterate.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/expanddir.c</div><div><span class=3D"" style=3D"white-space=
:pre">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux=
/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/ext_attr.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/extent.c</div><div><span class=3D"" style=3D"white-space:pr=
e">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2=
fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/fileio.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/finddev.c</div><div><span class=3D"" style=3D"white-space:p=
re">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e=
2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/flushb.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/freefs.c</div><div><span class=3D"" style=3D"white-space:pr=
e">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2=
fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/gen_bitmap.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/gen_bitmap64.c</div><div><span class=3D"" style=3D"white-sp=
ace:pre">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-li=
nux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/get_pathname.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/getsize.c</div><div><span class=3D"" style=3D"white-space:p=
re">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e=
2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/getsectsize.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/i_block.c</div><div><span class=3D"" style=3D"white-space:p=
re">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e=
2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/icount.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/ind_block.c</div><div><span class=3D"" style=3D"white-space=
:pre">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux=
/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/initialize.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/inline.c</div><div><span class=3D"" style=3D"white-space:pr=
e">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2=
fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/inode.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/io_manager.c</div><div><span class=3D"" style=3D"white-spac=
e:pre">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linu=
x/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/ismounted.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/link.c</div><div><span class=3D"" style=3D"white-space:pre"=
>	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fs=
progs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/lookup.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/mkdir.c</div><div><span class=3D"" style=3D"white-space:pre=
">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2f=
sprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/mkjournal.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/mmp.c</div><div><span class=3D"" style=3D"white-space:pre">=
	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsp=
rogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/namei.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/native.c</div><div><span class=3D"" style=3D"white-space:pr=
e">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2=
fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/newdir.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/openfs.c</div><div><span class=3D"" style=3D"white-space:pr=
e">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2=
fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/progress.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/punch.c</div><div><span class=3D"" style=3D"white-space:pre=
">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2f=
sprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/qcow2.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/read_bb.c</div><div><span class=3D"" style=3D"white-space:p=
re">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e=
2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/read_bb_file.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/res_gdt.c</div><div><span class=3D"" style=3D"white-space:p=
re">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e=
2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/rw_bitmaps.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/swapfs.c</div><div><span class=3D"" style=3D"white-space:pr=
e">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2=
fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/symlink.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/undo_io.c</div><div><span class=3D"" style=3D"white-space:p=
re">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e=
2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/unix_io.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/unlink.c</div><div><span class=3D"" style=3D"white-space:pr=
e">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2=
fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/valid_blk.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/ext2fs/version.c</div><div><span class=3D"" style=3D"white-space:p=
re">	</span>GEN_LIB libext2fs.a</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>GEN_ELF_SOLIB libex=
t2fs.so.2.4</div><div>make[2]: Leaving directory `/mnt/kashyap/hda/yocto/po=
ky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/ext2fs&#39;=
</div>
<div>making all in lib/blkid</div><div>make[2]: Entering directory `/mnt/ka=
shyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/bui=
ld/lib/blkid&#39;</div><div><span class=3D"" style=3D"white-space:pre">	</s=
pan>SUBST ../../lib/dirpaths.h</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>SUBST libblkid.3</d=
iv><div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/=
hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs=
-1.42.9/lib/blkid/cache.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/blkid/dev.c</div><div><span class=3D"" style=3D"white-space:pre">	=
</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fspr=
ogs/1.42.9-r0/e2fsprogs-1.42.9/lib/blkid/devname.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/blkid/devno.c</div><div>/mnt/kashyap/hda/yocto/poky/build/tmp/work=
/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/blkid/cache.c:15:=
0: warning: &quot;_GNU_SOURCE&quot; redefined [enabled by default]</div>
<div>=C2=A0#define _GNU_SOURCE</div><div>=C2=A0^</div><div>In file included=
 from /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/=
1.42.9-r0/e2fsprogs-1.42.9/lib/blkid/cache.c:13:0:</div><div>../../lib/conf=
ig.h:648:0: note: this is the location of the previous definition</div>
<div>=C2=A0# define _GNU_SOURCE 1</div><div>=C2=A0^</div><div>/mnt/kashyap/=
hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs=
-1.42.9/lib/blkid/cache.c:15:0: warning: &quot;_GNU_SOURCE&quot; redefined =
[enabled by default]</div>
<div>=C2=A0#define _GNU_SOURCE</div><div>=C2=A0^</div><div>In file included=
 from /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/=
1.42.9-r0/e2fsprogs-1.42.9/lib/blkid/cache.c:13:0:</div><div>../../lib/conf=
ig.h:648:0: note: this is the location of the previous definition</div>
<div>=C2=A0# define _GNU_SOURCE 1</div><div>=C2=A0^</div><div><span class=
=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda/yocto/poky/buil=
d/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/blkid/g=
etsize.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/blkid/llseek.c</div><div><span class=3D"" style=3D"white-space:pre=
">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2f=
sprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/blkid/probe.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/blkid/read.c</div><div><span class=3D"" style=3D"white-space:pre">=
	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsp=
rogs/1.42.9-r0/e2fsprogs-1.42.9/lib/blkid/resolve.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/blkid/save.c</div><div><span class=3D"" style=3D"white-space:pre">=
	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsp=
rogs/1.42.9-r0/e2fsprogs-1.42.9/lib/blkid/tag.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/blkid/version.c</div><div><span class=3D"" style=3D"white-space:pr=
e">	</span>GEN_ELF_SOLIB libblkid.so.1.0</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>GEN_LIB libblkid.a<=
/div><div>make[2]: Leaving directory `/mnt/kashyap/hda/yocto/poky/build/tmp=
/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/blkid&#39;</div><div>ma=
king all in lib/quota</div>
<div>make[2]: Entering directory `/mnt/kashyap/hda/yocto/poky/build/tmp/wor=
k/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/quota&#39;</div><div><span =
class=3D"" style=3D"white-space:pre">	</span>SUBST ../../lib/dirpaths.h</di=
v>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/quota/quotaio.c</div><div><span class=3D"" style=3D"white-space:pr=
e">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2=
fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/quota/quotaio_v2.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/lib/quota/quotaio_tree.c</div><div><span class=3D"" style=3D"white-spa=
ce:pre">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-lin=
ux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/quota/mkquota.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>GEN_LIB libquota.a<=
/div><div>make[2]: Leaving directory `/mnt/kashyap/hda/yocto/poky/build/tmp=
/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/quota&#39;</div><div>ma=
king all in intl</div>
<div>make[2]: Entering directory `/mnt/kashyap/hda/yocto/poky/build/tmp/wor=
k/i586-poky-linux/e2fsprogs/1.42.9-r0/build/intl&#39;</div><div>make[2]: No=
thing to be done for `all&#39;.</div><div>make[2]: Leaving directory `/mnt/=
kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/b=
uild/intl&#39;</div>
<div>make[1]: Leaving directory `/mnt/kashyap/hda/yocto/poky/build/tmp/work=
/i586-poky-linux/e2fsprogs/1.42.9-r0/build&#39;</div><div>make progs</div><=
div>make[1]: Entering directory `/mnt/kashyap/hda/yocto/poky/build/tmp/work=
/i586-poky-linux/e2fsprogs/1.42.9-r0/build&#39;</div>
<div>make[2]: Entering directory `/mnt/kashyap/hda/yocto/poky/build/tmp/wor=
k/i586-poky-linux/e2fsprogs/1.42.9-r0/build&#39;</div><div>make[2]: `util/s=
ubst.conf&#39; is up to date.</div><div>make[2]: Leaving directory `/mnt/ka=
shyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/bui=
ld&#39;</div>
<div>make[2]: Entering directory `/mnt/kashyap/hda/yocto/poky/build/tmp/wor=
k/i586-poky-linux/e2fsprogs/1.42.9-r0/build&#39;</div><div>make[2]: `lib/co=
nfig.h&#39; is up to date.</div><div>make[2]: Leaving directory `/mnt/kashy=
ap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build&=
#39;</div>
<div>make[2]: Entering directory `/mnt/kashyap/hda/yocto/poky/build/tmp/wor=
k/i586-poky-linux/e2fsprogs/1.42.9-r0/build&#39;</div><div><span class=3D""=
 style=3D"white-space:pre">	</span>SUBST lib/dirpaths.h</div><div>make[2]: =
Leaving directory `/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-lin=
ux/e2fsprogs/1.42.9-r0/build&#39;</div>
<div>make[2]: Entering directory `/mnt/kashyap/hda/yocto/poky/build/tmp/wor=
k/i586-poky-linux/e2fsprogs/1.42.9-r0/build&#39;</div><div>make[2]: `lib/ex=
t2fs/ext2_types.h&#39; is up to date.</div><div>make[2]: Leaving directory =
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.=
9-r0/build&#39;</div>
<div>make[2]: Entering directory `/mnt/kashyap/hda/yocto/poky/build/tmp/wor=
k/i586-poky-linux/e2fsprogs/1.42.9-r0/build&#39;</div><div>make[2]: `lib/bl=
kid/blkid_types.h&#39; is up to date.</div><div>make[2]: Leaving directory =
`/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.=
9-r0/build&#39;</div>
<div>make[2]: Entering directory `/mnt/kashyap/hda/yocto/poky/build/tmp/wor=
k/i586-poky-linux/e2fsprogs/1.42.9-r0/build&#39;</div><div>make[2]: `lib/uu=
id/uuid_types.h&#39; is up to date.</div><div>make[2]: Leaving directory `/=
mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-=
r0/build&#39;</div>
<div>make[2]: Entering directory `/mnt/kashyap/hda/yocto/poky/build/tmp/wor=
k/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/et&#39;</div><div><span cla=
ss=3D"" style=3D"white-space:pre">	</span>SUBST compile_et</div><div>make[2=
]: Leaving directory `/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-=
linux/e2fsprogs/1.42.9-r0/build/lib/et&#39;</div>
<div>make[2]: Entering directory `/mnt/kashyap/hda/yocto/poky/build/tmp/wor=
k/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/ext2fs&#39;</div><div><span=
 class=3D"" style=3D"white-space:pre">	</span>SUBST <a href=3D"http://ext2_=
err.et">ext2_err.et</a></div>
<div>make[2]: Leaving directory `/mnt/kashyap/hda/yocto/poky/build/tmp/work=
/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/ext2fs&#39;</div><div>making=
 all in lib/et</div><div>make[2]: Entering directory `/mnt/kashyap/hda/yoct=
o/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/et&#39;=
</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>SUBST compile_et</d=
iv><div><span class=3D"" style=3D"white-space:pre">	</span>SUBST ../../lib/=
dirpaths.h</div><div>make[2]: Leaving directory `/mnt/kashyap/hda/yocto/pok=
y/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/et&#39;</div=
>
<div>making all in lib/ss</div><div>make[2]: Entering directory `/mnt/kashy=
ap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/=
lib/ss&#39;</div><div><span class=3D"" style=3D"white-space:pre">	</span>SU=
BST mk_cmds</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>SUBST ../../lib/dir=
paths.h</div><div>make[2]: Leaving directory `/mnt/kashyap/hda/yocto/poky/b=
uild/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/ss&#39;</div><d=
iv>
making all in lib/e2p</div><div>make[2]: Entering directory `/mnt/kashyap/h=
da/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/=
e2p&#39;</div><div><span class=3D"" style=3D"white-space:pre">	</span>SUBST=
 ../../lib/dirpaths.h</div>
<div>make[2]: Leaving directory `/mnt/kashyap/hda/yocto/poky/build/tmp/work=
/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/e2p&#39;</div><div>making al=
l in lib/ext2fs</div><div>make[2]: Entering directory `/mnt/kashyap/hda/yoc=
to/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/ext2fs=
&#39;</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>SUBST ../../lib/dir=
paths.h</div><div><span class=3D"" style=3D"white-space:pre">	</span>SUBST =
<a href=3D"http://ext2_err.et">ext2_err.et</a></div><div>make[2]: Leaving d=
irectory `/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fspr=
ogs/1.42.9-r0/build/lib/ext2fs&#39;</div>
<div>making all in lib/blkid</div><div>make[2]: Entering directory `/mnt/ka=
shyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/bui=
ld/lib/blkid&#39;</div><div><span class=3D"" style=3D"white-space:pre">	</s=
pan>SUBST ../../lib/dirpaths.h</div>
<div>make[2]: Leaving directory `/mnt/kashyap/hda/yocto/poky/build/tmp/work=
/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/blkid&#39;</div><div>making =
all in lib/quota</div><div>make[2]: Entering directory `/mnt/kashyap/hda/yo=
cto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/quota=
&#39;</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>SUBST ../../lib/dir=
paths.h</div><div>make[2]: Leaving directory `/mnt/kashyap/hda/yocto/poky/b=
uild/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/lib/quota&#39;</div=
>
<div>making all in intl</div><div>make[2]: Entering directory `/mnt/kashyap=
/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/in=
tl&#39;</div><div>make[2]: Nothing to be done for `all&#39;.</div><div>
make[2]: Leaving directory `/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586=
-poky-linux/e2fsprogs/1.42.9-r0/build/intl&#39;</div><div>making all in e2f=
sck</div><div>make[2]: Entering directory `/mnt/kashyap/hda/yocto/poky/buil=
d/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/e2fsck&#39;</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>SUBST ../lib/dirpat=
hs.h</div><div><span class=3D"" style=3D"white-space:pre">	</span>GEN32TABL=
E crc32table.h</div><div><span class=3D"" style=3D"white-space:pre">	</span=
>CC prof_err.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/e2fsck/logfile.c</div><div><span class=3D"" style=3D"white-space:pre">=
	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsp=
rogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/sigcatcher.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>SUBST e2fsck.8</div=
><div><span class=3D"" style=3D"white-space:pre">	</span>SUBST e2fsck.conf.=
5</div><div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kash=
yap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsp=
rogs-1.42.9/e2fsck/crc32.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/e2fsck/unix.c</div><div><span class=3D"" style=3D"white-space:pre">	</=
span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprog=
s/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/e2fsck.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/e2fsck/super.c</div><div><span class=3D"" style=3D"white-space:pre">	<=
/span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fspro=
gs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/pass1.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/e2fsck/pass1b.c</div><div><span class=3D"" style=3D"white-space:pre">	=
</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fspr=
ogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/pass2.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/e2fsck/pass3.c</div><div><span class=3D"" style=3D"white-space:pre">	<=
/span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fspro=
gs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/pass4.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/e2fsck/pass5.c</div><div><span class=3D"" style=3D"white-space:pre">	<=
/span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fspro=
gs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/journal.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/e2fsck/badblocks.c</div><div><span class=3D"" style=3D"white-space:pre=
">	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2f=
sprogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/util.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/e2fsck/dirinfo.c</div><div><span class=3D"" style=3D"white-space:pre">=
	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsp=
rogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/dx_dirinfo.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/e2fsck/ehandler.c</div><div><span class=3D"" style=3D"white-space:pre"=
>	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fs=
progs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/problem.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/e2fsck/message.c</div><div><span class=3D"" style=3D"white-space:pre">=
	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsp=
rogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/quota.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/e2fsck/recovery.c</div><div><span class=3D"" style=3D"white-space:pre"=
>	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fs=
progs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/region.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/e2fsck/revoke.c</div><div><span class=3D"" style=3D"white-space:pre">	=
</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fspr=
ogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/ea_refcount.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/e2fsck/rehash.c</div><div><span class=3D"" style=3D"white-space:pre">	=
</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fspr=
ogs/1.42.9-r0/e2fsprogs-1.42.9/e2fsck/profile.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>LD e2fsck</div><div=
>make[2]: Leaving directory `/mnt/kashyap/hda/yocto/poky/build/tmp/work/i58=
6-poky-linux/e2fsprogs/1.42.9-r0/build/e2fsck&#39;</div><div>making all in =
debugfs</div>
<div>make[2]: Entering directory `/mnt/kashyap/hda/yocto/poky/build/tmp/wor=
k/i586-poky-linux/e2fsprogs/1.42.9-r0/build/debugfs&#39;</div><div><span cl=
ass=3D"" style=3D"white-space:pre">	</span>MK_CMDS debug_cmds.c</div><div><=
span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda/yocto=
/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/d=
ebugfs/debugfs.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/debugfs/util.c</div><div><span class=3D"" style=3D"white-space:pre">	<=
/span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fspro=
gs/1.42.9-r0/e2fsprogs-1.42.9/debugfs/ncheck.c</div>
<div>chmod: debug_cmds.c: new permissions are r-xrwxrwx, not r-xr-xr-x</div=
><div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hd=
a/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1=
.42.9/debugfs/icheck.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/debugfs/ls.c</div><div><span class=3D"" style=3D"white-space:pre">	</s=
pan>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs=
/1.42.9-r0/e2fsprogs-1.42.9/debugfs/lsdel.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/debugfs/dump.c</div><div><span class=3D"" style=3D"white-space:pre">	<=
/span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fspro=
gs/1.42.9-r0/e2fsprogs-1.42.9/debugfs/set_fields.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/debugfs/logdump.c</div><div><span class=3D"" style=3D"white-space:pre"=
>	</span>CC /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fs=
progs/1.42.9-r0/e2fsprogs-1.42.9/debugfs/htree.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/debugfs/unused.c</div><div><span class=3D"" style=3D"white-space:pre">=
	</span>CC e2freefrag.o</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/debugfs/filefrag.c</div><div><span class=3D"" style=3D"white-space:pre=
">	</span>MK_CMDS extent_cmds.c</div>
<div>chmod: extent_cmds.c: new permissions are r-xrwxrwx, not r-xr-xr-x</di=
v><div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/h=
da/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-=
1.42.9/debugfs/extent_inode.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/debugfs/zap.c</div><div><span class=3D"" style=3D"white-space:pre">	</=
span>CC create_inode.o</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>SUBST debugfs.8</di=
v><div><span class=3D"" style=3D"white-space:pre">	</span>CC debug_cmds.c</=
div><div><span class=3D"" style=3D"white-space:pre">	</span>CC extent_cmds.=
c</div><div>
<span class=3D"" style=3D"white-space:pre">	</span>LD debugfs</div><div>mak=
e[2]: Leaving directory `/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-po=
ky-linux/e2fsprogs/1.42.9-r0/build/debugfs&#39;</div><div>making all in mis=
c</div>
<div>make[2]: Entering directory `/mnt/kashyap/hda/yocto/poky/build/tmp/wor=
k/i586-poky-linux/e2fsprogs/1.42.9-r0/build/misc&#39;</div><div><span class=
=3D"" style=3D"white-space:pre">	</span>SUBST ../lib/dirpaths.h</div><div><=
span class=3D"" style=3D"white-space:pre">	</span>CP /mnt/kashyap/hda/yocto=
/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/e=
2fsck/profile.h</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>COMPILE_ET <a href=
=3D"http://prof_err.et">prof_err.et</a></div><div><span class=3D"" style=3D=
"white-space:pre">	</span>COMPILE_ET <a href=3D"http://prof_err.et">prof_er=
r.et</a></div>
<div>if test -f /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/=
e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/misc/<a href=3D"http://mke2fs.conf.cus=
tom.in">mke2fs.conf.custom.in</a> ; then \</div><div><span class=3D"" style=
=3D"white-space:pre">		</span>cp /mnt/kashyap/hda/yocto/poky/build/tmp/work=
/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/misc/<a href=3D"http:=
//mke2fs.conf.custom.in">mke2fs.conf.custom.in</a> mke2fs.conf; \</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>else \</div><div><s=
pan class=3D"" style=3D"white-space:pre">		</span>cp /mnt/kashyap/hda/yocto=
/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/m=
isc/<a href=3D"http://mke2fs.conf.in">mke2fs.conf.in</a> mke2fs.conf; \</di=
v>
<div><span class=3D"" style=3D"white-space:pre">	</span>fi</div><div><span =
class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda/yocto/poky=
/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/misc/c=
reate_inode.c</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>CC /mnt/kashyap/hda=
/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/e2fsprogs-1.=
42.9/misc/badblocks.c</div><div>chmod: cannot operate on dangling symlink &=
#39;prof_err.h&#39;</div>
<div>chmod: prof_err.h: new permissions are r-xrwxrwx, not r-xr-xr-x</div><=
div>chmod: prof_err.c: new permissions are r-xrwxrwx, not r-xr-xr-x</div><d=
iv>make[2]: *** [prof_err.h] Error 1</div><div>make[2]: *** Waiting for unf=
inished jobs....</div>
<div>make[2]: Leaving directory `/mnt/kashyap/hda/yocto/poky/build/tmp/work=
/i586-poky-linux/e2fsprogs/1.42.9-r0/build/misc&#39;</div><div>make[1]: ***=
 [all-progs-recursive] Error 1</div><div>make[1]: Leaving directory `/mnt/k=
ashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/bu=
ild&#39;</div>
<div>make: *** [all] Error 2</div><div>ERROR: oe_runmake failed</div><div>W=
ARNING: exit code 1 from a shell command.</div><div>ERROR: Function failed:=
 do_compile (log file is located at /mnt/kashyap/hda/yocto/poky/build/tmp/w=
ork/i586-poky-linux/e2fsprogs/1.42.9-r0/temp/log.do_compile.5276)</div>
</div><div><br></div><div><br></div><div><br></div><div><br></div><div>Sorr=
y for attaching this to this list.</div><div><br></div></div><div class=3D"=
gmail_extra"><br><br><div class=3D"gmail_quote">On Tue, Jun 3, 2014 at 9:20=
 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel=
.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">So you probably lost every executable mode w=
hen you did that. =C2=A0Make a<br>
fresh clone and reapply your changes, that will be easier than finding<br>
every file that isn&#39;t executable when it should be.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
On 3 June 2014 16:49, Kashyap Gada &lt;<a href=3D"mailto:gada.kashyap@gmail=
.com">gada.kashyap@gmail.com</a>&gt; wrote:<br>
&gt; its copied!<br>
&gt;<br>
&gt;<br>
&gt; On Tue, Jun 3, 2014 at 9:16 PM, Burton, Ross &lt;<a href=3D"mailto:ros=
s.burton@intel.com">ross.burton@intel.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On 3 June 2014 16:39, Kashyap Gada &lt;<a href=3D"mailto:gada.kash=
yap@gmail.com">gada.kashyap@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt; bash: /home/kashyap/yocto/poky/scripts/oe-setup-builddir: Per=
mission<br>
&gt;&gt; &gt; denied<br>
&gt;&gt;<br>
&gt;&gt; The permissions on that file don&#39;t involve +x. =C2=A0Is that a=
 fresh<br>
&gt;&gt; checkout of poky or copied from the removable media?<br>
&gt;&gt;<br>
&gt;&gt; Ross<br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div>

--20cf303dd404db6e1b04faf0e21e--
