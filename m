Return-Path: <woailinux@hotmail.com>
Received: from blu0-omc3-s38.blu0.hotmail.com (blu0-omc3-s38.blu0.hotmail.com
	[65.55.116.113])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02BE8E0044D
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 09:10:31 -0700 (PDT)
Received: from BLU0-SMTP98 ([65.55.116.72]) by blu0-omc3-s38.blu0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.4675); 
	Fri, 4 May 2012 09:10:30 -0700
X-Originating-IP: [114.255.122.12]
X-Originating-Email: [woailinux@hotmail.com]
Message-ID: <BLU0-SMTP9800BBCD2EEA3D7A38253CB92C0@phx.gbl>
Received: from [172.21.23.12] ([114.255.122.12]) by BLU0-SMTP98.phx.gbl over
	TLS secured channel with Microsoft SMTPSVC(6.0.3790.4675); 
	Fri, 4 May 2012 09:10:30 -0700
Date: Sat, 5 May 2012 00:10:23 +0800
From: jack <woailinux@hotmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-OriginalArrivalTime: 04 May 2012 16:10:30.0549 (UTC)
	FILETIME=[6D512450:01CD2A10]
Subject: When "bitbake core-image-sato-sdk", Error: Function failed: do_kernel_configme. Who can explain Bruce Ashfield's solution? thank you!
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
X-List-Received-Date: Fri, 04 May 2012 16:10:32 -0000
Content-Type: multipart/alternative;
	boundary="------------060902090605080003010907"

--------------060902090605080003010907
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hello, all! When "bitbake core-image-sato-sdk", I was puzzled by such 
errors:


NOTE: package 
linux-yocto-3.0.23+git1+59314a3523e360796419d76d78c6f7d8c5ef2593_1+63c65842a3a74e4bd3128004ac29b5639f16433f-r4: 
task do_kernel_configme: Started
ERROR: Function failed: do_kernel_configme (see 
/home/jackie/esdc/poky/build/tmp/work/esdc2012-poky-linux/linux-yocto-3.0.23+git1+59314a3523e360796419d76d78c6f7d8c5ef2593_1+63c65842a3a74e4bd3128004ac29b5639f16433f-r4/temp/log.do_kernel_configme.18778 
for further information)
ERROR: Logfile of failure stored in: 
/home/jackie/esdc/poky/build/tmp/work/esdc2012-poky-linux/linux-yocto-3.0.23+git1+59314a3523e360796419d76d78c6f7d8c5ef2593_1+63c65842a3a74e4bd3128004ac29b5639f16433f-r4/temp/log.do_kernel_configme.18778
Log data follows:
| ERROR: Function failed: do_kernel_configme (see 
/home/jackie/esdc/poky/build/tmp/work/esdc2012-poky-linux/linux-yocto-3.0.23+git1+59314a3523e360796419d76d78c6f7d8c5ef2593_1+63c65842a3a74e4bd3128004ac29b5639f16433f-r4/temp/log.do_kernel_configme.18778 
for further information)
| [INFO] doing kernel configme
| 
/home/jackie/esdc/poky/build/tmp/work/esdc2012-poky-linux/linux-yocto-3.0.23+git1+59314a3523e360796419d76d78c6f7d8c5ef2593_1+63c65842a3a74e4bd3128004ac29b5639f16433f-r4/temp/run.do_kernel_configme.18778: 
line 92: 
:/home/jackie/esdc/poky/scripts:/home/jackie/esdc/poky/build/tmp/work/esdc2012-poky-linux/linux-yocto-3.0.23+git1+59314a3523e360796419d76d78c6f7d8c5ef2593_1+63c65842a3a74e4bd3128004ac29b5639f16433f-r4/linux/scripts/util: 
No such file or directory
NOTE: package 
linux-yocto-3.0.23+git1+59314a3523e360796419d76d78c6f7d8c5ef2593_1+63c65842a3a74e4bd3128004ac29b5639f16433f-r4: 
task do_kernel_configme: Failed
ERROR: Task 760 
(/home/jackie/esdc/poky/meta/recipes-kernel/linux/linux-yocto_3.0.bb, 
do_kernel_configme) failed with exit code '1'
Waiting for 2 active tasks to finish:
0: gcc-cross-4.6.3+svnr184847-r23 do_compile (pid 14631)
1: eggdbus-native-0.6-r3 do_compile (pid 18130)


I googled and found Bruce Ashfield 
<http://search.gmane.org/?author=Bruce+Ashfield&sort=date>'s solution:
In the meantime, if you remove the kern-tools-native_git.bbappend from 
the meta-kernel-dev
layer, the AUTOREV setting will be removed, and you won't pull in tools 
that are too
new for the matching kernel.

But where is the kern-tools-native_git.bbappend and meta-kernel-dev? I 
am newer to yocto, who can help me?

Thanks!

--------------060902090605080003010907
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hello, all! When "bitbake core-image-sato-sdk", I was puzzled by
    such errors:<br>
    <br>
    <br>
    NOTE: package
    linux-yocto-3.0.23+git1+59314a3523e360796419d76d78c6f7d8c5ef2593_1+63c65842a3a74e4bd3128004ac29b5639f16433f-r4:
    task do_kernel_configme: Started<br>
    ERROR: Function failed: do_kernel_configme (see
    /home/jackie/esdc/poky/build/tmp/work/esdc2012-poky-linux/linux-yocto-3.0.23+git1+59314a3523e360796419d76d78c6f7d8c5ef2593_1+63c65842a3a74e4bd3128004ac29b5639f16433f-r4/temp/log.do_kernel_configme.18778
    for further information)<br>
    ERROR: Logfile of failure stored in:
/home/jackie/esdc/poky/build/tmp/work/esdc2012-poky-linux/linux-yocto-3.0.23+git1+59314a3523e360796419d76d78c6f7d8c5ef2593_1+63c65842a3a74e4bd3128004ac29b5639f16433f-r4/temp/log.do_kernel_configme.18778<br>
    Log data follows:<br>
    | ERROR: Function failed: do_kernel_configme (see
    /home/jackie/esdc/poky/build/tmp/work/esdc2012-poky-linux/linux-yocto-3.0.23+git1+59314a3523e360796419d76d78c6f7d8c5ef2593_1+63c65842a3a74e4bd3128004ac29b5639f16433f-r4/temp/log.do_kernel_configme.18778
    for further information)<br>
    | [INFO] doing kernel configme<br>
    |
    /home/jackie/esdc/poky/build/tmp/work/esdc2012-poky-linux/linux-yocto-3.0.23+git1+59314a3523e360796419d76d78c6f7d8c5ef2593_1+63c65842a3a74e4bd3128004ac29b5639f16433f-r4/temp/run.do_kernel_configme.18778:
    line 92:
    :/home/jackie/esdc/poky/scripts:/home/jackie/esdc/poky/build/tmp/work/esdc2012-poky-linux/linux-yocto-3.0.23+git1+59314a3523e360796419d76d78c6f7d8c5ef2593_1+63c65842a3a74e4bd3128004ac29b5639f16433f-r4/linux/scripts/util:
    No such file or directory<br>
    NOTE: package
    linux-yocto-3.0.23+git1+59314a3523e360796419d76d78c6f7d8c5ef2593_1+63c65842a3a74e4bd3128004ac29b5639f16433f-r4:
    task do_kernel_configme: Failed<br>
    ERROR: Task 760
    (/home/jackie/esdc/poky/meta/recipes-kernel/linux/linux-yocto_3.0.bb,
    do_kernel_configme) failed with exit code '1'<br>
    Waiting for 2 active tasks to finish:<br>
    0: gcc-cross-4.6.3+svnr184847-r23 do_compile (pid 14631)<br>
    1: eggdbus-native-0.6-r3 do_compile (pid 18130)<br>
    <br>
    &nbsp;<br>
    I googled and found <span class="author"><a
        href="http://search.gmane.org/?author=Bruce+Ashfield&amp;sort=date"
        rel="nofollow">Bruce Ashfield</a>'s solution:<br>
    </span>In the meantime, if you remove the
    kern-tools-native_git.bbappend from the meta-kernel-dev<br>
    layer, the AUTOREV setting will be removed, and you won't pull in
    tools that are too<br>
    new for the matching kernel.<br>
    <br>
    But where is the kern-tools-native_git.bbappend and meta-kernel-dev?
    I am newer to yocto, who can help me?<br>
    &nbsp;<br>
    Thanks!<br>
  </body>
</html>

--------------060902090605080003010907--
