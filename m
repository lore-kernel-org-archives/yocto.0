Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23CC7E013A6
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 05:21:25 -0700 (PDT)
Received: from [192.168.0.41] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id D9B5F600D2
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 12:33:30 +0100 (BST)
Message-ID: <4FD9D77E.20907@communistcode.co.uk>
Date: Thu, 14 Jun 2012 13:22:22 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120605 Thunderbird/13.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: OpenSSL Perl File::Find
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 14 Jun 2012 12:21:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

The OpenSSL recipe halts saying it can't find find.pl however I have 
File::Find installed which brings in file.pl as a perl module (find.pm). 
Could anyone shed any light on why this might not be found?

Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: Executing shell function do_configure
| ERROR: Function failed: do_configure (see 
/home/jack/Projects/poky-denzil.git/r0005/tmp/work/x86_64-linux/openssl-native-1.0.0i-r15.2/temp/log.do_configure.6745 
for further information)
| Can't locate find.pl in @INC (@INC contains: /usr/lib/perl5/site_perl 
/usr/share/perl5/site_perl /usr/lib/perl5/vendor_perl 
/usr/share/perl5/vendor_perl /usr/lib/perl5/core_perl 
/usr/share/perl5/core_perl .) at perlpath.pl line 7.
NOTE: package openssl-native-1.0.0i-r15.2: task do_configure: Failed


The module is located in: /usr/lib/perl5/core_perl

My host is Archlinux 64.

Regards,

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


