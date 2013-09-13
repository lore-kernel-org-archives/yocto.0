Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BFF1E0155E
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 06:54:02 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 19F21F811F6; Fri, 13 Sep 2013 07:54:02 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 52619F811D8;
	Fri, 13 Sep 2013 07:54:00 -0600 (MDT)
Message-ID: <5233192B.60901@mlbassoc.com>
Date: Fri, 13 Sep 2013 07:54:51 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130804 Thunderbird/17.0.8
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Differing fetch results
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
X-List-Received-Date: Fri, 13 Sep 2013 13:54:03 -0000
X-Groupsio-MsgNum: 16035
Content-Type: multipart/mixed; boundary="------------020501070809060203080108"

--------------020501070809060203080108
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I just did a build, totally from scratch, using the current master:
   commit dd36930f3f37b2e0e1258de28ac1b1fa99cf196f
   Author: Richard Purdie <richard.purdie@linuxfoundation.org>
   Date:   Thu Sep 12 13:06:22 2013 +0000

I mention "from scratch" as I did this on a fresh machine with
no pre-downloaded sources. (I mostly build using sources I've
already collected over the past years...)  What I noticed is
that many of the freshly downloaded packages have the same
time stamps as the ones in my download repository, but a fair
number have today's date on them.

Here are a few examples of downloads that differ:

My sources repository:
-rw-rw-r-- 1 gthomas gthomas  1781068 May 14 04:19 bison-2.7.1.tar.xz
-rw-rw-r-- 1 gthomas gthomas  2213841 May 14 04:19 gmp-5.1.1.tar.bz2
-rw-rw-r-- 1 gthomas gthomas   983500 Aug  8  2012 gperf-3.0.4.tar.gz
-rw-rw-r-- 1 gthomas gthomas  2826473 Aug  8  2012 ncurses-5.9.tar.gz

Today's build:
-rw-rw-r-- 1 gthomas gthomas  1781068 Sep 13 12:11 bison-2.7.1.tar.xz
-rw-rw-r-- 1 gthomas gthomas  2213841 Sep 13 12:11 gmp-5.1.1.tar.bz2
-rw-rw-r-- 1 gthomas gthomas   983500 Sep 13 12:12 gperf-3.0.4.tar.gz
-rw-rw-r-- 1 gthomas gthomas  2826473 Sep 13 12:12 ncurses-5.9.tar.gz

Note: the MD5 hashes match so these are the same files, just different
dates.

Can someone explain why they are different?  The full list of files
which were downloaded to build a minimal image are attached.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------020501070809060203080108
Content-Type: text/plain; charset=UTF-8;
 name="files"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="files"

total 550840
-rw-rw-r-- 1 gthomas gthomas    22251 May 15  2007 portmap-6.0.tgz
-rw-rw-r-- 1 gthomas gthomas  2009217 Sep 16  2007 flac-1.2.1.tar.gz
-rw-rw-r-- 1 gthomas gthomas   638940 Sep  1  2008 xmlts20080827.tar.gz
-rw-rw-r-- 1 gthomas gthomas   271018 May 29  2009 rpcbind-0.2.0.tar.bz2
-rw-rw-r-- 1 gthomas gthomas   882758 Jul 12  2009 beecrypt-4.2.1.tar.gz
-rw-rw-r-- 1 gthomas gthomas   203468 Oct 14  2009 libpthread-stubs-0.3.tar.bz2
-rw-rw-r-- 1 gthomas gthomas   105551 Apr 14  2010 sysvinit-2.88dsf.tar.bz2
-rw-rw-r-- 1 gthomas gthomas   702769 May  7  2010 popt-1.16.tar.gz
-rw-rw-r-- 1 gthomas gthomas    56654 May 21  2010 docbk41.zip
-rw-rw-r-- 1 gthomas gthomas   782025 Sep 20  2010 bzip2-1.0.6.tar.gz
-rw-rw-r-- 1 gthomas gthomas   385378 Apr 19  2011 acl-2.2.51.src.tar.gz
-rw-rw-r-- 1 gthomas gthomas   238441 Jun  3  2011 XML-Parser-2.41.tar.gz
-rw-rw-r-- 1 gthomas gthomas  1804034 Jun  8  2011 shadow-4.1.4.3.tar.bz2
-rw-rw-r-- 1 gthomas gthomas     8948 Jun 11  2011 libtirpc-glibc-nfs.tar.xz
-rw-rw-r-- 1 gthomas gthomas  1060692 Jul 13  2011 libsndfile-1.0.25.tar.gz
-rw-rw-r-- 1 gthomas gthomas   583045 Aug 12  2011 lzo-2.06.tar.gz
-rw-rw-r-- 1 gthomas gthomas  4303330 Aug 15  2011 libsamplerate-0.1.8.tar.gz
-rw-rw-r-- 1 gthomas gthomas   792725 Sep 23  2011 rsync-3.0.9.tar.gz
-rw-rw-r-- 1 gthomas gthomas   346587 Dec  6  2011 libnfsidmap-0.25.tar.gz
-rw-rw-r-- 1 gthomas gthomas   706521 Jan 27  2012 ocf-linux-20120127.tar.gz
-rw-rw-r-- 1 gthomas gthomas   475657 Feb 20  2012 libcgroup-0.38.tar.bz2
-rw-rw-r-- 1 gthomas gthomas   189483 Feb 26  2012 intltool-0.50.2.tar.gz
-rw-rw-r-- 1 gthomas gthomas   442369 Feb 29  2012 quilt-0.60.tar.gz
-rw-rw-r-- 1 gthomas gthomas   365762 Mar  3  2012 libICE-1.0.8.tar.bz2
-rw-rw-r-- 1 gthomas gthomas   334696 Mar  3  2012 libSM-1.2.1.tar.bz2
-rw-rw-r-- 1 gthomas gthomas   310878 Mar  8  2012 libXdmcp-1.1.1.tar.bz2
-rw-rw-r-- 1 gthomas gthomas    92276 Mar 13  2012 util-macros-1.17.tar.gz
-rw-rw-r-- 1 gthomas gthomas 78963640 Mar 19  2012 linux-3.3.tar.bz2
-rw-rw-r-- 1 gthomas gthomas   173025 Mar 23  2012 xtrans-1.2.7.tar.bz2
-rw-rw-r-- 1 gthomas gthomas   256988 Mar 23  2012 kbproto-1.0.6.tar.bz2
-rw-rw-r-- 1 gthomas gthomas   229282 Mar 23  2012 xextproto-7.2.1.tar.bz2
-rw-rw-r-- 1 gthomas gthomas   562616 Mar 24  2012 expat-2.1.0.tar.gz
-rw-rw-r-- 1 gthomas gthomas 11793433 Apr  9  2012 Python-2.7.3.tar.bz2
-rw-rw-r-- 1 gthomas gthomas  7691952 May  8  2012 rpm-5.4.9-0.20120508.src.rpm
-rw-rw-r-- 1 gthomas gthomas 35062469 May 23  2012 db-5.3.21.tar.gz
-rw-rw-r-- 1 gthomas gthomas  1316091 Jul  4  2012 xz-5.1.2alpha.tar.gz
-rw-rw-r-- 1 gthomas gthomas  1303313 Aug  3  2012 flex-2.5.37.tar.bz2
-rw-rw-r-- 1 gthomas gthomas   458123 Aug 23  2012 quota-4.01.tar.gz
-rw-rw-r-- 1 gthomas gthomas   624125 Sep  6  2012 mpc-1.0.1.tar.gz
-rw-rw-r-- 1 gthomas gthomas    43026 Sep 18  2012 gnu-config-20120814.tar.bz2
-rw-rw-r-- 1 gthomas gthomas   125072 Oct  5  2012 xcb-proto-1.8.tar.bz2
-rw-rw-r-- 1 gthomas gthomas 16299646 Oct 12  2012 perl-5.14.3.tar.gz
-rw-rw-r-- 1 gthomas gthomas   850772 Nov 19  2012 libevent-2.0.21-stable.tar.gz
-rw-rw-r-- 1 gthomas gthomas  1931203 Jan 24  2013 pkg-config-0.28.tar.gz
-rw-rw-r-- 1 gthomas gthomas  4459777 Feb 11  2013 openssl-1.0.1e.tar.gz
-rw-rw-r-- 1 gthomas gthomas   464189 Feb 13  2013 libtirpc-0.2.3.tar.bz2
-rw-rw-r-- 1 gthomas gthomas   107840 Feb 28  2013 pseudo-1.5.1.tar.bz2
-rw-rw-r-- 1 gthomas gthomas    83636 Mar  4  2013 pigz-2.3.tar.gz
-rw-rw-r-- 1 gthomas gthomas   195642 Mar  7  2013 inputproto-2.3.tar.bz2
-rw-rw-r-- 1 gthomas gthomas  1074388 Mar 13  2013 mpfr-3.1.2.tar.xz
-rw-rw-r-- 1 gthomas gthomas  2477883 Mar 18 19:39 elfutils-0.155.tar.bz2
-rw-rw-r-- 1 gthomas gthomas   292795 Mar 30 00:00 xproto-7.0.24.tar.bz2
-rw-rw-r-- 1 gthomas gthomas   867573 Apr  2 18:20 apr-util-1.5.2.tar.gz
-rw-rw-r-- 1 gthomas gthomas  1580584 Apr 18 15:00 dropbear-2013.58.tar.bz2
-rw-rw-r-- 1 gthomas gthomas  1930118 Apr 24 11:18 dbus-1.6.10.tar.gz
-rw-rw-r-- 1 gthomas gthomas   450776 Apr 29 00:35 zlib-1.2.8.tar.xz
-rw-rw-r-- 1 gthomas gthomas  2747577 May  2 18:24 nfs-utils-1.2.8.tar.bz2
-rw-rw-r-- 1 gthomas gthomas   338181 May 19 14:20 attr-2.4.46.src.tar.gz
-rw-rw-r-- 1 gthomas gthomas   406840 May 20 14:10 libogg-1.3.1.tar.xz
-rw-rw-r-- 1 gthomas gthomas 11931067 May 20 15:41 qemu-1.5.0.tar.bz2
-rw-rw-r-- 1 gthomas gthomas 21841928 May 23 21:05 icu4c-51_2-src.tgz
-rw-rw-r-- 1 gthomas gthomas   295297 May 24 22:18 libXau-1.0.8.tar.bz2
-rw-rw-r-- 1 gthomas gthomas  1440869 May 29 16:19 pcre-8.33.tar.bz2
-rw-rw-r-- 1 gthomas gthomas   373312 May 30 15:53 libxcb-1.9.1.tar.bz2
-rw-rw-r-- 1 gthomas gthomas  5952121 May 30 19:22 subversion-1.7.10.tar.bz2
-rw-rw-r-- 1 gthomas gthomas   772927 Jun 20 20:32 apr-1.4.8.tar.bz2
-rw-rw-r-- 1 gthomas gthomas  5990116 Jun 21 03:18 e2fsprogs-1.42.8.tar.gz
-rw-rw-r-- 1 gthomas gthomas  2201917 Jun 29 15:08 busybox-1.21.1.tar.bz2
-rw-rw-r-- 1 gthomas gthomas 87164931 Jun 30 22:50 linux-3.10.tar.bz2
-rw-rw-r-- 1 gthomas gthomas   243237 Jul  1 16:21 ethtool-3.10.tar.gz
-rw-rw-r-- 1 gthomas gthomas   869244 Jul 18 00:29 libpng-1.6.3.tar.xz
-rw-rw-r-- 1 gthomas gthomas  2340536 Jul 23 00:12 systemd-206.tar.xz
-rw-rw-r-- 1 gthomas gthomas  2356196 Jul 30 04:43 libX11-1.6.1.tar.bz2
-rw-rw-r-- 1 gthomas gthomas  5536805 Jul 31 12:40 util-linux-2.23.2.tar.bz2
-rw-rw-r-- 1 gthomas gthomas   909989 Jul 31 16:32 neon-0.30.0.tar.gz
-rw-rw-r-- 1 gthomas gthomas   666281 Aug  7 14:10 pixman-0.30.2.tar.bz2
-rw-rw-r-- 1 gthomas gthomas  6570720 Aug  7 15:53 glib-2.36.4.tar.xz
-rw-rw-r-- 1 gthomas gthomas  1040140 Aug 18 19:54 kbd-1.15.2.tar.bz2
-rw-rw-r-- 1 gthomas gthomas 17862773 Aug 21 05:36 eglibc-2.18-svnr23787.tar.bz2
-rw-rw-r-- 1 gthomas gthomas  1876108 Aug 22 20:06 sqlite-autoconf-3071700.tar.gz
-rw-rw-r-- 1 gthomas gthomas  1657870 Sep 13 12:11 m4-1.4.16.tar.gz
-rw-rw-r-- 1 gthomas gthomas  1927468 Sep 13 12:11 autoconf-2.69.tar.gz
-rw-rw-r-- 1 gthomas gthomas  2632347 Sep 13 12:11 libtool-2.4.2.tar.gz
-rw-rw-r-- 1 gthomas gthomas  2107791 Sep 13 12:11 automake-1.12.6.tar.gz
-rw-rw-r-- 1 gthomas gthomas  2213841 Sep 13 12:11 gmp-5.1.1.tar.bz2
-rw-rw-r-- 1 gthomas gthomas  1781068 Sep 13 12:11 bison-2.7.1.tar.xz
-rw-rw-r-- 1 gthomas gthomas   983500 Sep 13 12:12 gperf-3.0.4.tar.gz
-rw-rw-r-- 1 gthomas gthomas  2826473 Sep 13 12:12 ncurses-5.9.tar.gz
-rw-rw-r-- 1 gthomas gthomas 21440347 Sep 13 12:12 binutils-2.23.2.tar.bz2
-rw-rw-r-- 1 gthomas gthomas   355240 Sep 13 12:12 kconfig-frontends-3.10.0.0.tar.xz
-rw-rw-r-- 1 gthomas gthomas 82884636 Sep 13 12:12 gcc-4.7.2.tar.bz2
-rw-rw-r-- 1 gthomas gthomas   648552 Sep 13 12:12 file-5.14.tar.gz
-rw-rw-r-- 1 gthomas gthomas  2277926 Sep 13 12:12 readline-6.2.tar.gz
-rw-rw-r-- 1 gthomas gthomas     1714 Sep 13 12:12 readline62-002
-rw-rw-r-- 1 gthomas gthomas     1388 Sep 13 12:12 readline62-001
-rw-rw-r-- 1 gthomas gthomas     3335 Sep 13 12:12 readline62-004
-rw-rw-r-- 1 gthomas gthomas     1911 Sep 13 12:12 readline62-003
-rw-rw-r-- 1 gthomas gthomas   397048 Sep 13 12:18 uuid-1.6.2.tar.gz
-rw-rw-r-- 1 gthomas gthomas  1925041 Sep 13 12:26 git2_git.yoctoproject.org.prelink-cross.git.tar.gz
-rw-rw-r-- 1 gthomas gthomas  5172503 Sep 13 12:26 libxml2-2.9.1.tar.gz
-rw-rw-r-- 1 gthomas gthomas 16341773 Sep 13 12:27 gettext-0.18.3.1.tar.gz
-rw-rw-r-- 1 gthomas gthomas    67432 Sep 13 12:31 libcap2_2.22.orig.tar.gz
-rw-rw-r-- 1 gthomas gthomas   489266 Sep 13 12:32 libgpg-error-1.12.tar.bz2
-rw-rw-r-- 1 gthomas gthomas  1788760 Sep 13 12:33 libgcrypt-1.5.3.tar.gz
-rw-rw-r-- 1 gthomas gthomas  2039225 Sep 13 12:33 libtasn1-3.3.tar.gz
-rw-rw-r-- 1 gthomas gthomas   655599 Sep 13 12:34 gdbm-1.10.tar.gz
-rw-rw-r-- 1 gthomas gthomas  7279415 Sep 13 12:34 gnutls-2.12.23.tar.bz2
-rw-rw-r-- 1 gthomas gthomas    24287 Sep 13 12:37 git2_git.gnome.org.gtk-doc-stub.tar.gz
-rw-rw-r-- 1 gthomas gthomas   845747 Sep 13 12:37 libffi-3.0.13.tar.gz
-rw-rw-r-- 1 gthomas gthomas  5168647 Sep 13 12:38 git2_git.kernel.org.pub.scm.utils.kernel.kmod.kmod.git.tar.gz
-rw-rw-r-- 1 gthomas gthomas    62710 Sep 13 12:39 git2_git.yoctoproject.org.opkg-utils.tar.gz
-rw-rw-r-- 1 gthomas gthomas    77858 Sep 13 12:39 base-passwd_3.5.26.tar.gz
-rw-rw-r-- 1 gthomas gthomas     8228 Sep 13 12:40 git2_github.com.philb.update-rc.d.git.tar.gz
-rw-rw-r-- 1 gthomas gthomas  3435907 Sep 13 12:40 libxslt-1.1.28.tar.gz
-rw-rw-r-- 1 gthomas gthomas    99438 Sep 13 12:42 tcp_wrappers_7.6.tar.gz
-rw-rw-r-- 1 gthomas gthomas  8469694 Sep 13 12:43 u-boot-2011.06.tar.bz2
-rw-rw-r-- 1 gthomas gthomas   906844 Sep 13 12:43 alsa-lib-1.0.27.2.tar.bz2
-rw-rw-r-- 1 gthomas gthomas   174785 Sep 13 12:45 trunk_opkg.googlecode.com_.svn_653_.tar.gz
-rw-rw-r-- 1 gthomas gthomas  1376845 Sep 13 12:45 unzip60.tgz
-rw-rw-r-- 1 gthomas gthomas   736056 Sep 13 12:45 git2_www.jdl.com.software.dtc.git.tar.gz
-rw-rw-r-- 1 gthomas gthomas    76783 Sep 13 12:46 sgml-common-0.6.3.tgz
-rw-rw-r-- 1 gthomas gthomas   302505 Sep 13 13:05 git2_git.yoctoproject.org.yocto-kernel-tools.git.tar.gz
-rw-rw-r-- 1 gthomas gthomas  1143802 Sep 13 13:12 alsa-utils-1.0.27.2.tar.bz2
-rw-rw-r-- 1 gthomas gthomas    35193 Sep 13 13:12 netbase_5.1.tar.gz
-rw-rw-r-- 1 gthomas gthomas  1739308 Sep 13 13:13 git2_git.infradead.org.mtd-utils.git.tar.gz
-rw-rw-r-- 1 gthomas gthomas  5357988 Sep 13 13:13 coreutils-8.21.tar.xz
-rw-rw-r-- 1 gthomas gthomas  2339773 Sep 13 13:13 tar-1.26.tar.bz2

--------------020501070809060203080108--
