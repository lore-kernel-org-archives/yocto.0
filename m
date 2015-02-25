Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51D50E0076F; Wed, 25 Feb 2015 04:12:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 239B2E0074C
	for <yocto@yoctoproject.org>; Wed, 25 Feb 2015 04:12:48 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id D6084F811D9; Wed, 25 Feb 2015 05:12:47 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 649E7F811D7;
	Wed, 25 Feb 2015 05:12:47 -0700 (MST)
Message-ID: <54EDBC4A.70306@mlbassoc.com>
Date: Wed, 25 Feb 2015 05:12:58 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: bitbake-whatchanged usefulness?
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
X-List-Received-Date: Wed, 25 Feb 2015 12:12:51 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I just updated my Poky/Yocto master and tried to use bitbake-whatchanged
to see what was about to happen.  I'm not sure I know how to
read this and there doesn't seem to be any documentation other
than the simple help provided by the script.

Here's part of what I saw:
-------------------------------------------------
=== Newly added tasks: (87 tasks)
   ninja-native: do_compile do_configure do_patch do_unpack do_install
   ldconfig-native: do_patch do_configure do_unpack do_compile do_install
   makedevs-native: do_install do_patch do_unpack do_compile do_configure
   python: do_populate_sysroot do_package do_fetch do_packagedata do_patch do_build do_configure do_compile do_install do_package_write_ipk do_unpack do_populate_lic do_package_qa
   unzip-native: do_compile do_unpack do_configure do_install do_patch
   gettext-minimal-native: do_configure do_install do_patch do_unpack do_compile
   perl-native: do_configure do_compile do_install do_unpack do_patch
   update-rc.d-native: do_install do_unpack do_patch do_configure do_compile
   texinfo-dummy-native: do_unpack do_compile do_patch do_configure do_install
   gnu-config-native: do_compile do_unpack do_install do_configure do_patch
   sgmlspl-native: do_patch do_install do_configure do_compile do_unpack
   u-boot-mkimage-native: do_configure do_patch do_compile do_unpack do_install
   imx6-demo-image: do_configure do_populate_lic do_compile do_install
   opkg-utils-native: do_configure do_install do_unpack do_compile do_patch
   cryptodev-linux-native: do_unpack do_install do_patch do_configure do_compile
   dosfstools-native: do_patch do_install do_unpack do_compile do_configure

=== PV changed: (57 tasks)
   linux-libc-headers: 3.17.7 -> 3.19
   quilt-native: 0.63 -> 0.64
   cups: 2.0.1 -> 2.0.2
   pulseaudio: 5.0 -> 6.0
   kern-tools-native: 0.2+gitAUTOINC+daab4442c2 -> 0.2+gitAUTOINC+cab17f8849

=== Dependencies changed: (3101 tasks)
   speex: do_package do_package_qa do_packagedata do_populate_lic do_package_write_ipk do_compile do_configure do_populate_sysroot do_build do_install
   busybox: do_patch do_unpack do_build do_configure do_packagedata do_package_write_ipk do_populate_sysroot do_package_qa do_package do_fetch do_install do_compile do_populate_lic
   ...

=== Summary: (3245 changed, 1721 unchanged)
Newly added: 87
PV changed: 57
PR changed: 0
Dependencies changed: 3101
-------------------------------------------------

A couple of questions:

* I know that python was updated from 2.7.3 to 2.7.9 - why doesn't
   it show in the 'PV changed' section?
* If there were 57 PV changes, why did only 5 get shown?
* How can I tell what dependencies were changed - that section doesn't
   really tell me much more than certain recipes will have to be rebuilt
   because some dependency changed.

Is there anything [more] useful that I can get from this tool?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

