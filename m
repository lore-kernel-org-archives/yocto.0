Return-Path: <woailinux@hotmail.com>
Received: from bay0-omc3-s13.bay0.hotmail.com (bay0-omc3-s13.bay0.hotmail.com
	[65.54.190.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44830E01450
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 01:49:33 -0700 (PDT)
Received: from BAY158-W20 ([65.54.190.188]) by bay0-omc3-s13.bay0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.4675); 
	Thu, 31 May 2012 01:49:32 -0700
Message-ID: <BAY158-W20600DF937B42CE9117DE9B90B0@phx.gbl>
X-Originating-IP: [114.255.122.12]
From: fungjack <woailinux@hotmail.com>
To: yocto <yocto@yoctoproject.org>
Date: Thu, 31 May 2012 08:49:32 +0000
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 31 May 2012 08:49:32.0387 (UTC)
	FILETIME=[4C2D4330:01CD3F0A]
Subject: task 240 of 4900 and task 1526 of 4900 failed When I followed "The Yocto Project Quick Start"
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
X-List-Received-Date: Thu, 31 May 2012 08:49:33 -0000
Content-Type: multipart/alternative;
	boundary="_ee583cd4-2cd4-41e5-a3a3-6602d73537a7_"

--_ee583cd4-2cd4-41e5-a3a3-6602d73537a7_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: 8bit


Hello all!
When I followed "The Yocto Project Quick Start" and ran bitbake -k core-image-sato, two tasks(240 and 1526) failed. My host is Ubuntu 10.04. Who can give me some advices? Thanks!

NOTE: Running task 240 of 4900 (ID: 586, /home/jack/work/poky-denzil-7.0/meta/recipes-devtools/perl/perl-native_5.14.2.bb, do_unpack)
NOTE: Running task 1526 of 4900 (ID: 874, /home/jack/work/poky-denzil-7.0/meta/recipes-devtools/perl/perl_5.14.2.bb, do_unpack)
NOTE: package perl-5.14.2-r6: task do_unpack: Started
NOTE: package perl-native-5.14.2-r0: task do_unpack: Started
ERROR: Function failed: Unpack failure for URL: 'http://www.cpan.org/src/5.0/perl-5.14.2.tar.gz'. Unpack command PATH="/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin/core2-linux:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/sbin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/sbin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux//bin:/home/jack/work/poky-denzil-7.0/scripts/native-intercept:/home/jack/work/poky-denzil-7.0/scripts:/home/jack/work/poky-denzil-7.0/bitbake/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jack/work/poky-denzil-7.0/scripts" tar xz --no-same-owner -f /home/jack/work/poky-denzil-7.0-build/downloads/perl-5.14.2.tar.gz failed with return value 2
ERROR: Logfile of failure stored in: /home/jack/work/poky-denzil-7.0-build/tmp/work/i686-linux/perl-native-5.14.2-r0/temp/log.do_unpack.15111
Log data follows:
| NOTE: Unpacking /home/jack/work/poky-denzil-7.0-build/downloads/perl-5.14.2.tar.gz to /home/jack/work/poky-denzil-7.0-build/tmp/work/i686-linux/perl-native-5.14.2-r0/
| 
| gzip: stdin: invalid compressed data--crc error
| tar: Child returned status 1
| tar: Error is not recoverable: exiting now
| ERROR: Function failed: Unpack failure for URL: 'http://www.cpan.org/src/5.0/perl-5.14.2.tar.gz'. Unpack command PATH="/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin/core2-linux:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/sbin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/sbin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux//bin:/home/jack/work/poky-denzil-7.0/scripts/native-intercept:/home/jack/work/poky-denzil-7.0/scripts:/home/jack/work/poky-denzil-7.0/bitbake/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jack/work/poky-denzil-7.0/scripts" tar xz --no-same-owner -f /home/jack/work/poky-denzil-7.0-build/downloads/perl-5.14.2.tar.gz failed with return value 2
NOTE: package perl-native-5.14.2-r0: task do_unpack: Failed
ERROR: Task 586 (/home/jack/work/poky-denzil-7.0/meta/recipes-devtools/perl/perl-native_5.14.2.bb, do_unpack) failed with exit code '1'
ERROR: Function failed: Unpack failure for URL: 'http://www.cpan.org/src/5.0/perl-5.14.2.tar.gz'. Unpack command PATH="/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin/perl-native:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin/core2-poky-linux:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/atom-pc/usr/bin/crossscripts:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/sbin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/sbin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux//bin:/home/jack/work/poky-denzil-7.0/scripts:/home/jack/work/poky-denzil-7.0/bitbake/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jack/work/poky-denzil-7.0/scripts" tar xz --no-same-owner -f /home/jack/work/poky-denzil-7.0-build/downloads/perl-5.14.2.tar.gz failed with return value 2
ERROR: Logfile of failure stored in: /home/jack/work/poky-denzil-7.0-build/tmp/work/core2-poky-linux/perl-5.14.2-r6/temp/log.do_unpack.15114
Log data follows:
| NOTE: Unpacking /home/jack/work/poky-denzil-7.0-build/downloads/perl-5.14.2.tar.gz to /home/jack/work/poky-denzil-7.0-build/tmp/work/core2-poky-linux/perl-5.14.2-r6/
| 
| gzip: stdin: invalid compressed data--crc error
| tar: Child returned status 1
| tar: Error is not recoverable: exiting now
| ERROR: Function failed: Unpack failure for URL: 'http://www.cpan.org/src/5.0/perl-5.14.2.tar.gz'. Unpack command PATH="/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin/perl-native:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin/core2-poky-linux:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/atom-pc/usr/bin/crossscripts:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/sbin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/sbin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux//bin:/home/jack/work/poky-denzil-7.0/scripts:/home/jack/work/poky-denzil-7.0/bitbake/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jack/work/poky-denzil-7.0/scripts" tar xz --no-same-owner -f /home/jack/work/poky-denzil-7.0-build/downloads/perl-5.14.2.tar.gz failed with return value 2
NOTE: package perl-5.14.2-r6: task do_unpack: Failed
ERROR: Task 874 (/home/jack/work/poky-denzil-7.0/meta/recipes-devtools/perl/perl_5.14.2.bb, do_unpack) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3307 tasks of which 3305 didn't need to be rerun and 2 failed.

Summary: 2 tasks failed:
  /home/jack/work/poky-denzil-7.0/meta/recipes-devtools/perl/perl-native_5.14.2.bb, do_unpack
  /home/jack/work/poky-denzil-7.0/meta/recipes-devtools/perl/perl_5.14.2.bb, do_unpack
Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.



 		 	   		  

--_ee583cd4-2cd4-41e5-a3a3-6602d73537a7_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: 8bit

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px;
padding:0px
}
body.hmmessage
{
font-size: 10pt;
font-family:Î¢ÈíÑÅºÚ
}
--></style></head>
<body class='hmmessage'><div dir='ltr'>
Hello all!<br>When I followed "The Yocto Project Quick Start" and ran bitbake -k core-image-sato, two tasks(240 and 1526) failed. My host is Ubuntu 10.04. Who can give me some advices? Thanks!<br><br>NOTE: Running task 240 of 4900 (ID: 586, /home/jack/work/poky-denzil-7.0/meta/recipes-devtools/perl/perl-native_5.14.2.bb, do_unpack)<br>NOTE: Running task 1526 of 4900 (ID: 874, /home/jack/work/poky-denzil-7.0/meta/recipes-devtools/perl/perl_5.14.2.bb, do_unpack)<br>NOTE: package perl-5.14.2-r6: task do_unpack: Started<br>NOTE: package perl-native-5.14.2-r0: task do_unpack: Started<br>ERROR: Function failed: Unpack failure for URL: 'http://www.cpan.org/src/5.0/perl-5.14.2.tar.gz'. Unpack command PATH="/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin/core2-linux:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/sbin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/sbin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux//bin:/home/jack/work/poky-denzil-7.0/scripts/native-intercept:/home/jack/work/poky-denzil-7.0/scripts:/home/jack/work/poky-denzil-7.0/bitbake/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jack/work/poky-denzil-7.0/scripts" tar xz --no-same-owner -f /home/jack/work/poky-denzil-7.0-build/downloads/perl-5.14.2.tar.gz failed with return value 2<br>ERROR: Logfile of failure stored in: /home/jack/work/poky-denzil-7.0-build/tmp/work/i686-linux/perl-native-5.14.2-r0/temp/log.do_unpack.15111<br>Log data follows:<br>| NOTE: Unpacking /home/jack/work/poky-denzil-7.0-build/downloads/perl-5.14.2.tar.gz to /home/jack/work/poky-denzil-7.0-build/tmp/work/i686-linux/perl-native-5.14.2-r0/<br>| <br>| gzip: stdin: invalid compressed data--crc error<br>| tar: Child returned status 1<br>| tar: Error is not recoverable: exiting now<br>| ERROR: Function failed: Unpack failure for URL: 'http://www.cpan.org/src/5.0/perl-5.14.2.tar.gz'. Unpack command PATH="/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin/core2-linux:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/sbin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/sbin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux//bin:/home/jack/work/poky-denzil-7.0/scripts/native-intercept:/home/jack/work/poky-denzil-7.0/scripts:/home/jack/work/poky-denzil-7.0/bitbake/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jack/work/poky-denzil-7.0/scripts" tar xz --no-same-owner -f /home/jack/work/poky-denzil-7.0-build/downloads/perl-5.14.2.tar.gz failed with return value 2<br>NOTE: package perl-native-5.14.2-r0: task do_unpack: Failed<br>ERROR: Task 586 (/home/jack/work/poky-denzil-7.0/meta/recipes-devtools/perl/perl-native_5.14.2.bb, do_unpack) failed with exit code '1'<br>ERROR: Function failed: Unpack failure for URL: 'http://www.cpan.org/src/5.0/perl-5.14.2.tar.gz'. Unpack command PATH="/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin/perl-native:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin/core2-poky-linux:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/atom-pc/usr/bin/crossscripts:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/sbin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/sbin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux//bin:/home/jack/work/poky-denzil-7.0/scripts:/home/jack/work/poky-denzil-7.0/bitbake/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jack/work/poky-denzil-7.0/scripts" tar xz --no-same-owner -f /home/jack/work/poky-denzil-7.0-build/downloads/perl-5.14.2.tar.gz failed with return value 2<br>ERROR: Logfile of failure stored in: /home/jack/work/poky-denzil-7.0-build/tmp/work/core2-poky-linux/perl-5.14.2-r6/temp/log.do_unpack.15114<br>Log data follows:<br>| NOTE: Unpacking /home/jack/work/poky-denzil-7.0-build/downloads/perl-5.14.2.tar.gz to /home/jack/work/poky-denzil-7.0-build/tmp/work/core2-poky-linux/perl-5.14.2-r6/<br>| <br>| gzip: stdin: invalid compressed data--crc error<br>| tar: Child returned status 1<br>| tar: Error is not recoverable: exiting now<br>| ERROR: Function failed: Unpack failure for URL: 'http://www.cpan.org/src/5.0/perl-5.14.2.tar.gz'. Unpack command PATH="/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin/perl-native:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin/core2-poky-linux:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/atom-pc/usr/bin/crossscripts:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/sbin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/sbin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux//bin:/home/jack/work/poky-denzil-7.0/scripts:/home/jack/work/poky-denzil-7.0/bitbake/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jack/work/poky-denzil-7.0/scripts" tar xz --no-same-owner -f /home/jack/work/poky-denzil-7.0-build/downloads/perl-5.14.2.tar.gz failed with return value 2<br>NOTE: package perl-5.14.2-r6: task do_unpack: Failed<br>ERROR: Task 874 (/home/jack/work/poky-denzil-7.0/meta/recipes-devtools/perl/perl_5.14.2.bb, do_unpack) failed with exit code '1'<br>NOTE: Tasks Summary: Attempted 3307 tasks of which 3305 didn't need to be rerun and 2 failed.<br><br>Summary: 2 tasks failed:<br>&nbsp; /home/jack/work/poky-denzil-7.0/meta/recipes-devtools/perl/perl-native_5.14.2.bb, do_unpack<br>&nbsp; /home/jack/work/poky-denzil-7.0/meta/recipes-devtools/perl/perl_5.14.2.bb, do_unpack<br>Summary: There was 1 WARNING message shown.<br>Summary: There were 2 ERROR messages shown, returning a non-zero exit code.<br><br><br><br> 		 	   		  </div></body>
</html>

--_ee583cd4-2cd4-41e5-a3a3-6602d73537a7_--
