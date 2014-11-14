Return-Path: <wd@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF5E1E00876; Fri, 14 Nov 2014 01:55:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,HDRS_LCASE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.18.0.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 HDRS_LCASE Odd capitalization of message header
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EDE4E00837
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 01:54:59 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3jfFQn6qxtz3hjtv
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 10:54:57 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3jfFQn3NgRzvk96
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 10:54:57 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.184])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024) with ESMTP id dTcY-i1M6AFW for <yocto@yoctoproject.org>;
	Fri, 14 Nov 2014 10:54:56 +0100 (CET)
X-Auth-Info: diPZry2T9yeNsxgDXppTa5p+9YNzhZ0KCNK7e+DeOgo=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 10:54:56 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 3D4A71AAC41
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 10:54:56 +0100 (CET)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id 0FE0E382CC5
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 10:54:56 +0100 (MET)
To: Yocto <yocto@yoctoproject.org>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
Date: Fri, 14 Nov 2014 10:54:56 +0100
Message-Id: <20141114095456.0FE0E382CC5@gemini.denx.de>
Subject: Referencing sysroot libraries during build?
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
X-List-Received-Date: Fri, 14 Nov 2014 09:55:12 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Hello,

I have a build problem which is caused by libraries not being found.

It's a recipe to build the U-Boot bot loader which includes running
the "mkimage" tool generated during this build.  This fails as
follows:

...
|   LD      u-boot
|   OBJCOPY u-boot.bin
|   MKIMAGE u-boot.img
|
/opt/eldk/build/eldk-rel-v5.6-2014-08-17-fe344de-mcvevk/tmp/work/mcvevk-linux-gnueabi/u-boot/v2014.10+gitAUTOINC+c43fd23cf6-r0/git/tools/mkimage:
error while loading shared libraries: libssl.so.1.0.0: cannot open shared object file: No such file or directory
| make: *** [u-boot.img] Error 127 

I verified that the LD_LIBRARY_PATH variable is not set when these
commands are run, which explains the problem:

-> ldd /opt/eldk/build/eldk-rel-v5.6-2014-08-17-fe344de-mcvevk/tmp/work/mcvevk-linux-gnueabi/u-boot/v2014.10+gitAUTOINC+c43fd23cf6-r0/git/tools/mkimage
        linux-vdso.so.1 =>  (0x00007fff6a7fe000)
        libssl.so.1.0.0 => not found
        libcrypto.so.1.0.0 => not found
        libc.so.6 => /lib64/libc.so.6 (0x0000003396000000)
        /lib64/ld-linux-x86-64.so.2 (0x0000003395c00000)

The reason is that this system uses a different version of these libraries:

-> ls -l /lib64/libssl.so.1* /lib64/libcrypto.so.1*
-rwxr-xr-x 1 root root 1972736 Aug  8 13:48 /lib64/libcrypto.so.1.0.1e
lrwxrwxrwx 1 root root      19 Sep  2 23:49 /lib64/libcrypto.so.10 -> libcrypto.so.1.0.1e
-rwxr-xr-x 1 root root  446040 Aug  8 13:48 /lib64/libssl.so.1.0.1e
lrwxrwxrwx 1 root root      16 Sep  2 23:49 /lib64/libssl.so.10 -> libssl.so.1.0.1e


So the host system is using one version of these libraries, while the
build is done against a different version.

I can work around this problem by adding the build's sysroot
libraries to LD_LIBRARY_PATH, like that:

do_compile_prepend () {
	export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${STAGING_LIBDIR_NATIVE}:${STAGING_LIBDIR_NATIVE}/../../lib
}

But this looks wrong to me - if this was needed, should it not be
done on a much higer level, at some central point so that all tools
run during the build will automatically pick up the matching
libraries from sysroot?

Or is this some problem anywhere else in my own code?

Thanks in advance.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
If I had to live my life again,  I'd  make  the  same  mistakes, only
sooner.                                          -- Tallulah Bankhead

