Return-Path: <vidal.develone@gmail.com>
Received: from mail-ee0-f52.google.com (mail-ee0-f52.google.com [74.125.83.52])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 91258E00312
	for <yocto@yoctoproject.org>; Sat,  9 Feb 2013 07:59:24 -0800 (PST)
Received: by mail-ee0-f52.google.com with SMTP id b15so2470006eek.39
	for <yocto@yoctoproject.org>; Sat, 09 Feb 2013 07:59:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=PsVG7DuDl7K+y3m1oYO0MzAH7UFozU8wN8S8Wn3etZA=;
	b=n/uNSr/kTZQ9CnYtVuteZt26MerLUXta7YUhxuzcvKpIxf2ydI9jmaUBKEFROEM7Ev
	fDCDSxch+MElfOQPx6fI8cCFlR/D3WqW7D8kwA/ocJdgRZ2GxTH0qPxVGZU3haqrRVPh
	Ly9qQ91V6jDgFiHvryXmAZnO3tq1XM3B3CBjYvrppAYw8QEJi8Q1MyakwVdlXlT0RsO5
	C2s+4H4ENo+pMpTiRup7BrogQb4ByP4F13hizZkboKXN3ApxEBs3cnuNR5O/JzJLd7Lm
	+v+ZQNGTu5wfPdUQQXjX4PuaQrajFp8hdbWW6VxTJ3VsX8oHetT70cAJJlVh3ctj/Q9w
	COpg==
MIME-Version: 1.0
X-Received: by 10.14.1.65 with SMTP id 41mr12235571eec.35.1360425562545; Sat,
	09 Feb 2013 07:59:22 -0800 (PST)
Received: by 10.223.159.129 with HTTP; Sat, 9 Feb 2013 07:59:22 -0800 (PST)
Date: Sat, 9 Feb 2013 08:59:22 -0700
Message-ID: <CANwz6nwFHrudB-MBOFhbqq9LufwQoyiLUp9S_5B5U7CrhM9gPA@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: yocto@yoctoproject.org
Subject: mouse issue qemuarm
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
X-List-Received-Date: Sat, 09 Feb 2013 15:59:25 -0000
Content-Type: multipart/alternative; boundary=047d7b66f67d661e4b04d54cc21e

--047d7b66f67d661e4b04d54cc21e
Content-Type: text/plain; charset=ISO-8859-1

Hello,

Version of qemuarm built on 01/30/13 works okay but the version built on
02/08/13 exhibits the following problem:

When clicking the mouse to switch between panels nothing happens. See the
details of 2 builds below.

How would you use git to bisect what caused the issue.

Any help will be appreciated.

Thanks

Created a clean build 013013 with the command MACHINE=qemuarm bitbake
core-image-sato-sdk -vDD This version appears okay below are the details of
the build.



 runqemu qemuarm

uname -a

Linux qemuarm 3.4.26-yocto-standard #1 PREEMPT Thu Jan 31 14:38:44 MST 2013
armv5tejl GNU/Linux


 Build Configuration:

BB_VERSION = "1.17.0"

BUILD_SYS = "x86_64-linux"

NATIVELSBSTRING = "Unknown"

TARGET_SYS = "arm-poky-linux-gnueabi"

MACHINE = "qemuarm"

DISTRO = "poky"

DISTRO_VERSION = "1.3+snapshot-20130131"

TUNE_FEATURES = "armv5 thumb dsp"

TARGET_FPU = "soft"

meta

meta-yocto

meta-yocto-bsp = "master:d82eac804134028ece749928aa2d83096b7aec96"


 Created a clean build 020813 with the command MACHINE=qemuarm bitbake
core-image-sato-sdk -vDD This version appears exhibits the following
problem:

When clicking the mouse to switch between panels nothing happens.


 uname -a

Linux qemuarm 3.4.28-yocto-standard #1 PREEMPT Fri Feb 8 15:46:09 MST 2013
armv5tejl GNU/Linux


 Build Configuration:

BB_VERSION = "1.17.1"

BUILD_SYS = "x86_64-linux"

NATIVELSBSTRING = "Unknown"

TARGET_SYS = "arm-poky-linux-gnueabi"

MACHINE = "qemuarm"

DISTRO = "poky"

DISTRO_VERSION = "1.3+snapshot-20130208"

TUNE_FEATURES = "armv5 thumb dsp"

TARGET_FPU = "soft"

meta

meta-yocto

meta-yocto-bsp = "master:20b4dcace222d6b1d659a8813b4affad075ec0c6"

--047d7b66f67d661e4b04d54cc21e
Content-Type: text/html; charset=ISO-8859-1

Hello,<br>


	
	
	
	<style type="text/css">
	<!--
		@page { margin: 0.79in }
		P { margin-bottom: 0.08in }
	-->
	</style>


<p style="margin-bottom:0in">Version of qemuarm built on 01/30/13
works okay but the version built on 02/08/13 exhibits the following
problem:</p>
<p style="margin-bottom:0in">When clicking the mouse to switch
between panels nothing happens.  See the details of 2 builds below.</p>
<p style="margin-bottom:0in">How would you use git to bisect what caused the issue.<br>
</p>
<p style="margin-bottom:0in">Any help will be appreciated.</p><p style="margin-bottom:0in">Thanks<br>
</p>
<p style="margin-bottom:0in">Created a clean build 013013 with the
command MACHINE=qemuarm bitbake core-image-sato-sdk -vDD  This
version appears okay below are the details of the build.</p>
<p style="margin-bottom:0in"><br>
</p>
<p style="margin-bottom:0in"><br>
</p>
<p style="margin-bottom:0in">runqemu  qemuarm</p>
<p style="margin-bottom:0in">uname -a
</p>
<p style="margin-bottom:0in">Linux qemuarm 3.4.26-yocto-standard #1
PREEMPT Thu Jan 31 14:38:44 MST 2013 armv5tejl GNU/Linux
</p>
<p style="margin-bottom:0in"><br>
</p>
<p style="margin-bottom:0in">Build Configuration:
</p>
<p style="margin-bottom:0in">BB_VERSION        = &quot;1.17.0&quot;
</p>
<p style="margin-bottom:0in">BUILD_SYS         = &quot;x86_64-linux&quot;
</p>
<p style="margin-bottom:0in">NATIVELSBSTRING   = &quot;Unknown&quot;
</p>
<p style="margin-bottom:0in">TARGET_SYS        =
&quot;arm-poky-linux-gnueabi&quot;
</p>
<p style="margin-bottom:0in">MACHINE           = &quot;qemuarm&quot;
</p>
<p style="margin-bottom:0in">DISTRO            = &quot;poky&quot;
</p>
<p style="margin-bottom:0in">DISTRO_VERSION    =
&quot;1.3+snapshot-20130131&quot;
</p>
<p style="margin-bottom:0in">TUNE_FEATURES     = &quot;armv5 thumb
dsp&quot;
</p>
<p style="margin-bottom:0in">TARGET_FPU        = &quot;soft&quot;
</p>
<p style="margin-bottom:0in">meta              
</p>
<p style="margin-bottom:0in">meta-yocto        
</p>
<p style="margin-bottom:0in">meta-yocto-bsp    =
&quot;master:d82eac804134028ece749928aa2d83096b7aec96&quot;
</p>
<p style="margin-bottom:0in"><br>
</p>
<p style="margin-bottom:0in">Created a clean build 020813 with the
command MACHINE=qemuarm bitbake core-image-sato-sdk -vDD  This
version appears exhibits the following problem:</p>
<p style="margin-bottom:0in">When clicking the mouse to switch
between panels nothing happens.</p>
<p style="margin-bottom:0in"><br>
</p>
<p style="margin-bottom:0in">uname -a
</p>
<p style="margin-bottom:0in">Linux qemuarm 3.4.28-yocto-standard #1
PREEMPT Fri Feb 8 15:46:09 MST 2013 armv5tejl GNU/Linux</p>
<p style="margin-bottom:0in"><br>
</p>
<p style="margin-bottom:0in">Build Configuration:
</p>
<p style="margin-bottom:0in">BB_VERSION        = &quot;1.17.1&quot;
</p>
<p style="margin-bottom:0in">BUILD_SYS         = &quot;x86_64-linux&quot;
</p>
<p style="margin-bottom:0in">NATIVELSBSTRING   = &quot;Unknown&quot;
</p>
<p style="margin-bottom:0in">TARGET_SYS        =
&quot;arm-poky-linux-gnueabi&quot;
</p>
<p style="margin-bottom:0in">MACHINE           = &quot;qemuarm&quot;
</p>
<p style="margin-bottom:0in">DISTRO            = &quot;poky&quot;
</p>
<p style="margin-bottom:0in">DISTRO_VERSION    =
&quot;1.3+snapshot-20130208&quot;
</p>
<p style="margin-bottom:0in">TUNE_FEATURES     = &quot;armv5 thumb
dsp&quot;
</p>
<p style="margin-bottom:0in">TARGET_FPU        = &quot;soft&quot;
</p>
<p style="margin-bottom:0in">meta              
</p>
<p style="margin-bottom:0in">meta-yocto        
</p>
<p style="margin-bottom:0in">meta-yocto-bsp    =
&quot;master:20b4dcace222d6b1d659a8813b4affad075ec0c6&quot;</p>

<br>

--047d7b66f67d661e4b04d54cc21e--
