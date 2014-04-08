Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1A7CE00C5B
	for <yocto@yoctoproject.org>; Tue,  8 Apr 2014 06:28:41 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id D802FF811EC; Tue,  8 Apr 2014 07:28:40 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 150C6F811D7;
	Tue,  8 Apr 2014 07:28:40 -0600 (MDT)
Message-ID: <5343F995.4080402@mlbassoc.com>
Date: Tue, 08 Apr 2014 07:28:53 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
X-Enigmail-Version: 1.5.2
Subject: fetchall strangeness
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
X-List-Received-Date: Tue, 08 Apr 2014 13:28:43 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I just ran 'bitbake <image> -c fetchall' in a clean build tree
and noticed that this builds a bunch of native packages:

$ ls -l tmp/work/*/*/*/temp/log.do_compile.*
-rw-r--r-- 1 gary develop  76530 Apr  8 14:17 tmp/work/i686-linux/apr-native/1.4.8-r0/temp/log.do_compile.8115
-rw-r--r-- 1 gary develop  51866 Apr  8 14:17 tmp/work/i686-linux/apr-util-native/1.5.2-r0/temp/log.do_compile.19690
-rw-r--r-- 1 gary develop  27916 Apr  8 14:11 tmp/work/i686-linux/autoconf-native/2.69-r11/temp/log.do_compile.20820
-rw-r--r-- 1 gary develop  11925 Apr  8 14:11 tmp/work/i686-linux/automake-native/1.14-r0/temp/log.do_compile.22425
-rw-r--r-- 1 gary develop  28129 Apr  8 14:14 tmp/work/i686-linux/bzip2-native/1.0.6-r5/temp/log.do_compile.12000
-rw-r--r-- 1 gary develop     85 Apr  8 14:11 tmp/work/i686-linux/cryptodev-linux-native/1.6-r0/temp/log.do_compile.13477
-rw-r--r-- 1 gary develop   5815 Apr  8 14:14 tmp/work/i686-linux/expat-native/2.1.0-r0/temp/log.do_compile.25198
-rw-r--r-- 1 gary develop  41125 Apr  8 14:15 tmp/work/i686-linux/file-native/5.16-r0/temp/log.do_compile.28856
-rw-r--r-- 1 gary develop  92543 Apr  8 14:14 tmp/work/i686-linux/gdbm-native/1.11-r0/temp/log.do_compile.5100
-rw-r--r-- 1 gary develop    110 Apr  8 14:10 tmp/work/i686-linux/gettext-minimal-native/0.18.3.2-r0/temp/log.do_compile.9603
-rw-r--r-- 1 gary develop     85 Apr  8 14:10 tmp/work/i686-linux/gnu-config-native/20120814-r0/temp/log.do_compile.8957
-rw-r--r-- 1 gary develop 787508 Apr  8 14:18 tmp/work/i686-linux/gnutls-native/2.12.23-r8.4/temp/log.do_compile.6985
-rw-r--r-- 1 gary develop  10398 Apr  8 14:10 tmp/work/i686-linux/libcap-native/2.22-r6/temp/log.do_compile.10990
-rw-r--r-- 1 gary develop 129792 Apr  8 14:15 tmp/work/i686-linux/libgcrypt-native/1.5.3-r0/temp/log.do_compile.15135
-rw-r--r-- 1 gary develop  26450 Apr  8 14:14 tmp/work/i686-linux/libgpg-error-native/1.12-r0/temp/log.do_compile.1064
-rw-r--r-- 1 gary develop  83871 Apr  8 14:14 tmp/work/i686-linux/libtasn1-native/3.4-r0/temp/log.do_compile.23801
-rw-r--r-- 1 gary develop  34071 Apr  8 14:12 tmp/work/i686-linux/libtool-native/2.4.2-r6.1/temp/log.do_compile.27475
-rw-r--r-- 1 gary develop 278406 Apr  8 14:21 tmp/work/i686-linux/libxml2-native/2.9.1-r0/temp/log.do_compile.3191
-rw-r--r-- 1 gary develop 189586 Apr  8 14:12 tmp/work/i686-linux/lzo-native/2.06-r1/temp/log.do_compile.10403
-rw-r--r-- 1 gary develop 101354 Apr  8 14:11 tmp/work/i686-linux/m4-native/1.4.17-r0/temp/log.do_compile.19559
-rw-r--r-- 1 gary develop 829027 Apr  8 14:13 tmp/work/i686-linux/ncurses-native/5.9-r15.1/temp/log.do_compile.11001
-rw-r--r-- 1 gary develop  14753 Apr  8 14:21 tmp/work/i686-linux/neon-native/0.30.0-r0/temp/log.do_compile.15805
-rw-r--r-- 1 gary develop 504937 Apr  8 14:16 tmp/work/i686-linux/openssl-native/1.0.1e-r15.0/temp/log.do_compile.30233
-rw-r--r-- 1 gary develop   3170 Apr  8 14:13 tmp/work/i686-linux/pigz-native/2.3.1-r0/temp/log.do_compile.4503
-rw-r--r-- 1 gary develop 149805 Apr  8 14:13 tmp/work/i686-linux/pkgconfig-native/0.28-r0/temp/log.do_compile.12369
-rw-r--r-- 1 gary develop 100152 Apr  8 14:19 tmp/work/i686-linux/python-native/2.7.3-r0.1/temp/log.do_compile.32093
-rw-r--r-- 1 gary develop   1585 Apr  8 14:10 tmp/work/i686-linux/quilt-native/0.61-r0/temp/log.do_compile.8085
-rw-r--r-- 1 gary develop  34761 Apr  8 14:14 tmp/work/i686-linux/readline-native/6.3-r0/temp/log.do_compile.19880
-rw-r--r-- 1 gary develop   8633 Apr  8 14:15 tmp/work/i686-linux/sqlite3-native/1_3.8.3.1-r0/temp/log.do_compile.28334
-rw-r--r-- 1 gary develop 473033 Apr  8 14:23 tmp/work/i686-linux/subversion-native/1.7.10-r0/temp/log.do_compile.19956
-rw-r--r-- 1 gary develop 911700 Apr  8 14:16 tmp/work/i686-linux/util-linux-native/2.24.1-r0/temp/log.do_compile.2925
-rw-r--r-- 1 gary develop 475772 Apr  8 14:13 tmp/work/i686-linux/xz-native/5.1.3alpha-r0/temp/log.do_compile.21732
-rw-r--r-- 1 gary develop   8341 Apr  8 14:13 tmp/work/i686-linux/zlib-native/1.2.8-r0/temp/log.do_compile.614

Why?

Note: this is using the latest Poky/Yocto master, but I've
seen this behaviour for a long time...

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

