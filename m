Return-Path: <jfabernathy@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E8CFE0123C
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 08:24:41 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qadc16 with SMTP id c16so5561585qad.14
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 08:24:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:x-forwarded-message-id:content-type;
	bh=bogxC5DZnqm754nHXa1dne+Ml+gO5+0xGyD+T5dXq8w=;
	b=DVV5L6oZoiw3yH/90lQZKcLSzN3g10kiBlBAut0hVw7MEZ+qUUPBWKtXeyOUuqFlBf
	UTXif3ifdj+WWhQ8akk4J36ooGU+yqB2GjK3twj2/mOkBLfr/0ovVc8ojXQOZMBPw7D/
	cXZ7CNSQFtgHiCOESW3f9xKy/r5KDymKeoPY4=
Received: by 10.224.205.134 with SMTP id fq6mr9096856qab.99.1324484680814;
	Wed, 21 Dec 2011 08:24:40 -0800 (PST)
Received: from [10.0.1.39] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	q14sm11494641qap.4.2011.12.21.08.24.39 (version=SSLv3 cipher=OTHER);
	Wed, 21 Dec 2011 08:24:39 -0800 (PST)
Message-ID: <4EF20847.1030106@gmail.com>
Date: Wed, 21 Dec 2011 11:24:39 -0500
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
References: <CANSwnwggQwOgZk61xvppWXnz3+Wks9jSaNcp0+cBf9eS2xNNOg@mail.gmail.com>
In-Reply-To: <CANSwnwggQwOgZk61xvppWXnz3+Wks9jSaNcp0+cBf9eS2xNNOg@mail.gmail.com>
X-Forwarded-Message-Id: <CANSwnwggQwOgZk61xvppWXnz3+Wks9jSaNcp0+cBf9eS2xNNOg@mail.gmail.com>
Subject: build error on meta-cedarview
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
X-List-Received-Date: Wed, 21 Dec 2011 16:24:42 -0000
Content-Type: multipart/alternative;
	boundary="------------090001000504020804010604"

--------------090001000504020804010604
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

While running a build of the core-image-sato using the edison latest 
commits and the meta-cedartrail bsp, I notices some errors fly by and 
thought I'd see if anyone knows the reason.  The build is just to test 
the bsp with no changes.  Basically, doing the Appendix A of the 
Development manual substituting cedartrail for crownbay.

snippet of the console log below:

NOTE: package icon-naming-utils-native-0.8.7-r3: task do_unpack: Started
ERROR: Function 'Unpack failure for URL: 
'http://tango.freedesktop.org/releases/icon-naming-utils-0.8.7.tar.gz'. 
Unpack command 
PATH="/home/jim/poky/build/tmp/sysroots/i686-linux/usr/bin/perl-native:/home/jim/poky/build/tmp/sysroots/i686-linux/usr/bin/core2-linux:/home/jim/poky/build/tmp/sysroots/i686-linux/usr/bin:/home/jim/poky/build/tmp/sysroots/i686-linux/usr/sbin:/home/jim/poky/build/tmp/sysroots/i686-linux/usr/bin:/home/jim/poky/build/tmp/sysroots/i686-linux/sbin:/home/jim/poky/build/tmp/sysroots/i686-linux//bin:/home/jim/poky/scripts/native-intercept:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jim/poky/scripts" 
tar xz --no-same-owner -f 
/home/jim/poky/build/downloads/icon-naming-utils-0.8.7.tar.gz failed 
with return value 2' failed
ERROR: Logfile of failure stored in: 
/home/jim/poky/build/tmp/work/i686-linux/icon-naming-utils-native-0.8.7-r3/temp/log.do_unpack.19392
Log data follows:
| NOTE: Unpacking 
/home/jim/poky/build/downloads/icon-naming-utils-0.8.7.tar.gz to 
/home/jim/poky/build/tmp/work/i686-linux/icon-naming-utils-native-0.8.7-r3/
|
| gzip: stdin: not in gzip format
| tar: Child returned status 1
| tar: Error is not recoverable: exiting now
| ERROR: Function 'Unpack failure for URL: 
'http://tango.freedesktop.org/releases/icon-naming-utils-0.8.7.tar.gz'. 
Unpack command 
PATH="/home/jim/poky/build/tmp/sysroots/i686-linux/usr/bin/perl-native:/home/jim/poky/build/tmp/sysroots/i686-linux/usr/bin/core2-linux:/home/jim/poky/build/tmp/sysroots/i686-linux/usr/bin:/home/jim/poky/build/tmp/sysroots/i686-linux/usr/sbin:/home/jim/poky/build/tmp/sysroots/i686-linux/usr/bin:/home/jim/poky/build/tmp/sysroots/i686-linux/sbin:/home/jim/poky/build/tmp/sysroots/i686-linux//bin:/home/jim/poky/scripts/native-intercept:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jim/poky/scripts" 
tar xz --no-same-owner -f 
/home/jim/poky/build/downloads/icon-naming-utils-0.8.7.tar.gz failed 
with return value 2' failed
NOTE: package icon-naming-utils-native-0.8.7-r3: task do_unpack: Failed
ERROR: Task 2395 
(/home/jim/poky/meta/recipes-devtools/icon-naming-utils/icon-naming-utils-native_0.8.7.bb 
<http://icon-naming-utils-native_0.8.7.bb>, do_unpack) failed with exit 
code '1'

Jim A


--------------090001000504020804010604
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    While running a build of the core-image-sato using the edison latest
    commits and the meta-cedartrail bsp, I notices some errors fly by
    and thought I'd see if anyone knows the reason.&nbsp; The build is just
    to test the bsp with no changes.&nbsp; Basically, doing the Appendix A of
    the Development manual substituting cedartrail for crownbay.<br>
    <br>
    snippet of the console log below:<br>
    <br>
    NOTE: package icon-naming-utils-native-0.8.7-r3: task do_unpack:
    Started<br>
    ERROR: Function 'Unpack failure for URL: '<a moz-do-not-send="true"
href="http://tango.freedesktop.org/releases/icon-naming-utils-0.8.7.tar.gz">http://tango.freedesktop.org/releases/icon-naming-utils-0.8.7.tar.gz</a>'.
    Unpack command
    PATH="/home/jim/poky/build/tmp/sysroots/i686-linux/usr/bin/perl-native:/home/jim/poky/build/tmp/sysroots/i686-linux/usr/bin/core2-linux:/home/jim/poky/build/tmp/sysroots/i686-linux/usr/bin:/home/jim/poky/build/tmp/sysroots/i686-linux/usr/sbin:/home/jim/poky/build/tmp/sysroots/i686-linux/usr/bin:/home/jim/poky/build/tmp/sysroots/i686-linux/sbin:/home/jim/poky/build/tmp/sysroots/i686-linux//bin:/home/jim/poky/scripts/native-intercept:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jim/poky/scripts"
    tar xz --no-same-owner -f
    /home/jim/poky/build/downloads/icon-naming-utils-0.8.7.tar.gz failed
    with return value 2' failed<br>
    ERROR: Logfile of failure stored in:
/home/jim/poky/build/tmp/work/i686-linux/icon-naming-utils-native-0.8.7-r3/temp/log.do_unpack.19392<br>
    Log data follows:<br>
    | NOTE: Unpacking
    /home/jim/poky/build/downloads/icon-naming-utils-0.8.7.tar.gz to
/home/jim/poky/build/tmp/work/i686-linux/icon-naming-utils-native-0.8.7-r3/<br>
    | <br>
    | gzip: stdin: not in gzip format<br>
    | tar: Child returned status 1<br>
    | tar: Error is not recoverable: exiting now<br>
    | ERROR: Function 'Unpack failure for URL: '<a
      moz-do-not-send="true"
href="http://tango.freedesktop.org/releases/icon-naming-utils-0.8.7.tar.gz">http://tango.freedesktop.org/releases/icon-naming-utils-0.8.7.tar.gz</a>'.
    Unpack command
    PATH="/home/jim/poky/build/tmp/sysroots/i686-linux/usr/bin/perl-native:/home/jim/poky/build/tmp/sysroots/i686-linux/usr/bin/core2-linux:/home/jim/poky/build/tmp/sysroots/i686-linux/usr/bin:/home/jim/poky/build/tmp/sysroots/i686-linux/usr/sbin:/home/jim/poky/build/tmp/sysroots/i686-linux/usr/bin:/home/jim/poky/build/tmp/sysroots/i686-linux/sbin:/home/jim/poky/build/tmp/sysroots/i686-linux//bin:/home/jim/poky/scripts/native-intercept:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jim/poky/scripts"
    tar xz --no-same-owner -f
    /home/jim/poky/build/downloads/icon-naming-utils-0.8.7.tar.gz failed
    with return value 2' failed<br>
    NOTE: package icon-naming-utils-native-0.8.7-r3: task do_unpack:
    Failed<br>
    ERROR: Task 2395
    (/home/jim/poky/meta/recipes-devtools/icon-naming-utils/<a
      moz-do-not-send="true"
      href="http://icon-naming-utils-native_0.8.7.bb">icon-naming-utils-native_0.8.7.bb</a>,
    do_unpack) failed with exit code '1'<br>
    <br>
    Jim A<br>
    <br>
  </body>
</html>

--------------090001000504020804010604--
