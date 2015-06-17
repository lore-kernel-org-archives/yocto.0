Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3C69E00A5B; Wed, 17 Jun 2015 13:35:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B9E8E00A51
	for <yocto@yoctoproject.org>; Wed, 17 Jun 2015 13:35:39 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.1/8.15.1) with ESMTPS id t5HKZbHX018843
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 17 Jun 2015 13:35:37 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.234) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.224.2; Wed, 17 Jun 2015 13:35:37 -0700
Message-ID: <5581DA18.4080803@windriver.com>
Date: Wed, 17 Jun 2015 15:35:36 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Florian Boehmak <florian@fnbk.cc>
References: <CALgoR9NG-nVj7qaSSbAVjmhEWSpWaq_oGqFvA0yq+YM9nisF_g@mail.gmail.com>	<55807507.1080906@windriver.com>
	<CALgoR9N55VS2D+UzMmdShBUmQBes_tEj8KqTi7Ff9UtO8pV7Mw@mail.gmail.com>
In-Reply-To: <CALgoR9N55VS2D+UzMmdShBUmQBes_tEj8KqTi7Ff9UtO8pV7Mw@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [prelink-cross] error while loading shared libraries: ld-linux.so.3
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
X-List-Received-Date: Wed, 17 Jun 2015 20:35:46 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

On 6/16/15 5:56 PM, Florian Boehmak wrote:
>> The error indicates that it found a library required called 'ld-linux.so.3', but
>> could not find that in the "path".  (The path generally being the sysroot path
>> passed to the rtld.)
> 
> I tried to move the files to their location in sysroot:
> 
> arm-2012.03/arm-none-linux-gnueabi/libc/usr/local/include/world.h
> arm-2012.03/arm-none-linux-gnueabi/libc/usr/local/lib/libworld.so
> arm-2012.03/arm-none-linux-gnueabi/libc/usr/local/bin/hello
> arm-2012.03/arm-none-linux-gnueabi/libc/etc/prelink.conf
> 
> 
>> What command did you use to run the prelinker?  And does your sysroot contain
>> the /lib/ld-linux.so.3?
> 
> prelink command:
> 
> PATH=/usr/local/sbin prelink --verbose
> --root=arm-2012.03/arm-none-linux-gnueabi/libc
> --cache-file=/etc/cache/prelink.cache --config-file=/etc/prelink.conf
> --ld-library-path="/usr/local/lib;/lib;/usr/lib;" -h /usr/local/bin/hello
> 

/usr/local/bin/hello is going to look at the absolute location, not that patch
within that specific sysroot.  Any files passed in should have the on-host path
names specified.  This allows for you to prelink an app based on rootfs where
the app is not present.

The normal mechanism used by the Yocto Project is:

[path]/prelink --root ${IMAGE_ROOTFS} -amR -N -c /etc/prelink.conf

This will process the entire contents of the IMAGE_ROOTFS.

--Mark

> error message:
> 
> prelink: /lib/libdl-2.15.so <http://libdl-2.15.so> is not present in any config
> file directories, nor was specified on command line
> prelink: /lib/libc-2.15.so <http://libc-2.15.so> is not present in any config
> file directories, nor was specified on command line
> prelink: /lib/libgcc_s.so.1 is not present in any config file directories, nor
> was specified on command line
> prelink: /lib/ld-2.15.so <http://ld-2.15.so> is not present in any config file
> directories, nor was specified on command line
> Laying out 1 libraries in virtual address space 41000000-50000000
> Assigned virtual address space slots for libraries:
> /usr/local/lib/libworld.so                                   41000000-410086d0
> prelink: Could not prelink /usr/lib/bin/localedef because its dependency
> /lib/libc.so.6 could not be prelinked
> prelink: Could not prelink /usr/lib/bin/POSIX_V6_ILP32_OFFBIG because its
> dependency /lib/libc.so.6 could not be prelinked
> prelink: Could not prelink /usr/lib/bin/zdump because its dependency
> /lib/libc.so.6 could not be prelinked
> prelink: Could not prelink /usr/lib/bin/POSIX_V7_ILP32_OFF32 because its
> dependency /lib/libc.so.6 could not be prelinked
> prelink: Could not prelink /usr/local/lib/libworld.so because its dependency
> /lib/libgcc_s.so.1 could not be prelinked
> prelink: Could not prelink /usr/local/bin/hello because its dependency
> /usr/local/lib/libworld.so could not be prelinked
> prelink: Could not prelink /usr/lib/bin/pldd because its dependency
> /lib/libc.so.6 could not be prelinked
> prelink: Could not prelink /usr/lib/bin/zic because its dependency
> /lib/libc.so.6 could not be prelinked
> prelink: Could not prelink /usr/lib/bin/sprof because its dependency
> /lib/libdl.so.2 could not be prelinked
> prelink: Could not prelink /usr/lib/bin/POSIX_V6_ILP32_OFF32 because its
> dependency /lib/libc.so.6 could not be prelinked
> prelink: Could not prelink /usr/lib/bin/gdbserver because its dependency
> /lib/libdl.so.2 could not be prelinked
> prelink: Could not prelink /usr/lib/bin/XBS5_ILP32_OFFBIG because its dependency
> /lib/libc.so.6 could not be prelinked
> prelink: Could not prelink /usr/lib/bin/XBS5_ILP32_OFF32 because its dependency
> /lib/libc.so.6 could not be prelinked
> prelink: Could not prelink /usr/lib/bin/makedb because its dependency
> /lib/libc.so.6 could not be prelinked
> prelink: Could not prelink /usr/lib/bin/pcprofiledump because its dependency
> /lib/libc.so.6 could not be prelinked
> prelink: Could not prelink /usr/lib/bin/iconv because its dependency
> /lib/libc.so.6 could not be prelinked
> prelink: Could not prelink /usr/lib/bin/locale because its dependency
> /lib/libc.so.6 could not be prelinked
> prelink: Could not prelink /usr/lib/bin/gencat because its dependency
> /lib/libc.so.6 could not be prelinked
> prelink: Could not prelink /usr/lib/bin/POSIX_V7_ILP32_OFFBIG because its
> dependency /lib/libc.so.6 could not be prelinked
> prelink: Could not prelink /usr/lib/bin/rpcgen because its dependency
> /lib/libc.so.6 could not be prelinked
> prelink: Could not prelink /usr/lib/bin/getent because its dependency
> /lib/libc.so.6 could not be prelinked
> prelink: Could not prelink /usr/lib/bin/getconf because its dependency
> /lib/libc.so.6 could not be prelinked
> prelink: Could not prelink /usr/lib/bin/iconvconfig because its dependency
> /lib/libc.so.6 could not be prelinked
> 
> 
> prelink.conf
> 
> -l /lib 
> -h /lib 
> -l /usr/lib
> -h /usr/lib
> -l /usr/local/lib
> -h /usr/local/lib
> 
> 
> Now there is no error message from rtld and libworld.so seems to be found. But
> what's the problem with the folling libraries?
> 
> libdl-2.15.so <http://libdl-2.15.so>
> libc-2.15.so <http://libc-2.15.so>
> libgcc_s.so.1
> ld-2.15.so <http://ld-2.15.so>
> 
> 
> I can see them in this folder arm-2012.03/arm-none-linux-gnueabi/libc/lib:
> 
> -rwxr-xr-x 1 developer users  177212 10. Jun 18:43 ld-2.15.so <http://ld-2.15.so>
> lrwxrwxrwx 1 developer users      10 10. Jun 18:43 ld-linux.so.3 -> ld-2.15.so
> <http://ld-2.15.so>
> -rwxr-xr-x 1 developer users 1777390 10. Jun 18:43 libc-2.15.so
> <http://libc-2.15.so>
> lrwxrwxrwx 1 developer users      12 10. Jun 18:43 libc.so.6 -> libc-2.15.so
> <http://libc-2.15.so>
> -rwxr-xr-x 1 developer users   26841 10. Jun 18:43 libdl-2.15.so
> <http://libdl-2.15.so>
> lrwxrwxrwx 1 developer users      13 10. Jun 18:43 libdl.so.2 -> libdl-2.15.so
> <http://libdl-2.15.so>
> -rw-r--r-- 1 developer users     135 10. Jun 18:43 libgcc_s.so
> -rw-r--r-- 1 developer users 3190583 10. Jun 18:43 libgcc_s.so.1
> lrwxrwxrwx 1 developer users      13 10. Jun 18:43 libld-linux.so.3 -> ld-linux.so.3
> 
> 
> 
> I have also put the code on github for reference. Where is the mistake? - I
> think we are almost there :-)
> https://github.com/fnbk/prelink-cross-example/tree/shared-library
> 
> 
> Greetings
> Florian
> 
> 
> 


