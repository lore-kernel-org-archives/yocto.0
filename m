Return-Path: <arunkr.linux@gmail.com>
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D863EE0155B
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2013 20:26:41 -0700 (PDT)
Received: by mail-pa0-f50.google.com with SMTP id fb10so4246174pad.37
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2013 20:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type; bh=DwEVVP1F6hXAzqDblFKOxxDutbws9Ba56By7ETEQJ6s=;
	b=MZ+EQLfyqQaSl/83yn4AB//XxJtXXZ4qFMy9hketiJ5I45D+Hs0kgw/TigLeDNjwV8
	Fpr/WnKlho7ivInu++ekz9UxN94FT+7TlOXF/JBkuEuy6yWpSgp9fDPfEXqXGxZ2HtNF
	Zk/beeDMEYceRo1iPHcaMH5XC/pZz4JrrQJ3DXONbQRUnkHtCK0a4Cm08JNcV68HXf4L
	7KlJ/2gC8YJ405Q76h4avrZss7BVLArFz2ZP39sbBgeOFYD8Iv7FyfYZTPDC/sUGQsGy
	ZTpfYa1CfTmsHdlJ2RHIXd1oB5faO+BU/XX7teMwOaSrYOE+2B7zutmC3rkTpXmO48go
	a9hQ==
X-Received: by 10.66.232.39 with SMTP id tl7mr6633326pac.140.1377574000720;
	Mon, 26 Aug 2013 20:26:40 -0700 (PDT)
Received: from linux-ok2f.site ([123.201.193.33])
	by mx.google.com with ESMTPSA id
	om2sm21425134pbc.30.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 26 Aug 2013 20:26:40 -0700 (PDT)
Message-ID: <521C1C4E.7020107@gmail.com>
Date: Tue, 27 Aug 2013 08:56:06 +0530
From: Arun M Kumar <arunkr.linux@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130620 Thunderbird/17.0.7
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: First build stuck at a Single Task..
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
X-List-Received-Date: Tue, 27 Aug 2013 03:26:42 -0000
Content-Type: multipart/alternative;
	boundary="------------090501010708000605010107"

--------------090501010708000605010107
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I am Building the recipe for the first time.
Based on the Documentation, I clone the GIT repo of Poky and the other 
tasks that were mentioned in the mega manual, (quick Start).
I ran this command

  "bitbake -k core-image-sato"

all is well, but the build process seems to be stuck at  this point.
-------------------------------------------------------------------------------------------------------------

Loading cache: 100% 
|#################################################################################################################| 
ETA:  00:00:00
Loaded 1181 entries from dependency cache.

Build Configuration:
BB_VERSION        = "1.19.1"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "openSUSE-project-12.3"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "qemuarm"
DISTRO            = "poky"
DISTRO_VERSION    = "1.4+snapshot-20130827"
TUNE_FEATURES     = "armv5 thumb dsp"
TARGET_FPU        = "soft"
meta
meta-yocto
meta-yocto-bsp    = "master:b2ff1add530b1fec2fb7f385227a03db47015c37"

NOTE: Resolving any missing task queue dependencies
NOTE: multiple providers are available for runtime 
libasound-module-bluez (bluez4, bluez5)
NOTE: consider defining a PREFERRED_PROVIDER entry to match 
libasound-module-bluez
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
Currently 1 running tasks (1587 of 5917):
*0: linux-yocto-3.8.13+gitAUTOINC+e7f42a416a_aa76cc2840-r4.2 do_fetch 
(pid 2006)*
-----------------------------------------------------------------------------------------------------------------------


It has been like this for the past 4 Hours. Internet download Traffic is 
around 124KB/s on system monitor (no other process using Internet).

I have set the number of jobs in the local conf file as '9' and

I have re-initialted the command from the same directory once the 
previous build failed.

--------------090501010708000605010107
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    I am Building the recipe for the first time.<br>
    Based on the Documentation, I clone the GIT repo of Poky and the
    other tasks that were mentioned in the mega manual, (quick Start).<br>
    I ran this command<br>
    <br>
    &nbsp;"bitbake -k core-image-sato"<br>
    <br>
    all is well, but the build process seems to be stuck at&nbsp; this point.<br>
-------------------------------------------------------------------------------------------------------------<br>
    <br>
    Loading cache: 100%
    |#################################################################################################################|
    ETA:&nbsp; 00:00:00<br>
    Loaded 1181 entries from dependency cache.<br>
    <br>
    Build Configuration:<br>
    BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = "1.19.1"<br>
    BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = "x86_64-linux"<br>
    NATIVELSBSTRING&nbsp;&nbsp; = "openSUSE-project-12.3"<br>
    TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = "arm-poky-linux-gnueabi"<br>
    MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = "qemuarm"<br>
    DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = "poky"<br>
    DISTRO_VERSION&nbsp;&nbsp;&nbsp; = "1.4+snapshot-20130827"<br>
    TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; = "armv5 thumb dsp"<br>
    TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = "soft"<br>
    meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
    meta-yocto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
    meta-yocto-bsp&nbsp;&nbsp;&nbsp; =
    "master:b2ff1add530b1fec2fb7f385227a03db47015c37"<br>
    <br>
    NOTE: Resolving any missing task queue dependencies<br>
    NOTE: multiple providers are available for runtime
    libasound-module-bluez (bluez4, bluez5)<br>
    NOTE: consider defining a PREFERRED_PROVIDER entry to match
    libasound-module-bluez<br>
    NOTE: Preparing runqueue<br>
    NOTE: Executing SetScene Tasks<br>
    NOTE: Executing RunQueue Tasks<br>
    Currently 1 running tasks (1587 of 5917):<br>
    <b>0: linux-yocto-3.8.13+gitAUTOINC+e7f42a416a_aa76cc2840-r4.2
      do_fetch (pid 2006)</b><br>
-----------------------------------------------------------------------------------------------------------------------<br>
    <br>
    <br>
    It has been like this for the past 4 Hours. Internet download
    Traffic is around 124KB/s on system monitor (no other process using
    Internet).<br>
    <br>
    I have set the number of jobs in the local conf file as '9' and<br>
    <br>
    I have re-initialted the command from the same directory once the
    previous build failed.<br>
  </body>
</html>

--------------090501010708000605010107--
