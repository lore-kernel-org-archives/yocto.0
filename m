Return-Path: <ml@communistcode.co.uk>
Received: from eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29098E002AB
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 06:33:13 -0700 (PDT)
Received: from localhost ([127.0.0.1]:33715 helo=eumx.net)
	by eumx.net with esmtp (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1T0ula-000236-Jm
	for yocto@yoctoproject.org; Mon, 13 Aug 2012 13:33:10 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=eumx.net; h=message-id
	:date:from:reply-to:mime-version:to:subject:content-type
	:content-transfer-encoding; s=default; bh=rQECrR91zTzyL06ScbjBE3
	ZJE/8=; b=NuKeQPheetvCFBCme3AQFfnzTYptIKzvkx8ybh/F0qnLVkpHut6RZi
	OqongYqlLuPhXC7B/4bRrMfHc6IWahLIXrEPqpbMYMSVoNASOZV+s9xUfF7pbFwZ
	qqE7c448Ej466RyzKIDiDrGFCrLO52nMGJd3ogzB4BcrANtSmPeW4=
Received: from [195.171.99.130] (port=42006 helo=[192.168.0.47])
	by eumx.net with esmtpa (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1T0ula-000233-HW
	for yocto@yoctoproject.org; Mon, 13 Aug 2012 13:33:10 +0000
Message-ID: <5029026B.90602@communistcode.co.uk>
Date: Mon, 13 Aug 2012 14:34:35 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Raspberry Pi do_fetch failure
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ml@communistcode.co.uk
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 13 Aug 2012 13:33:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Good afternoon everyone,

I am trying (yet again) to get yocto to build for the Raspberry Pi and I 
am falling at the do_fetch hurdle on the RasPi kernel.

    ERROR: Fetcher failure: Fetch command export HOME="/home/jack";
    export SSH_AGENT_PID="1350"; export
    SSH_AUTH_SOCK="/home/jack/.cache/keyring-fjEm9a/ssh"; export
    GIT_CONFIG="/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_64-linux/etc/gitconfig";
    export
    PATH="/home/jack/Projects/poky-rasp/scripts:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_64-linux/usr/bin/armv6-vfp-poky-linux-gnueabi:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/raspberrypi/usr/bin/crossscripts:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_64-linux/usr/sbin:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_64-linux/usr/bin:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_64-linux/sbin:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_64-linux//bin:/home/jack/Projects/poky-rasp/scripts:/home/jack/Projects/poky-rasp/bitbake/bin/:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl";
    git clone --bare --mirror git://github.com/raspberrypi/linux.git
    /home/jack/Projects/poky-rasp/raspberry/downloads/git2/github.com.raspberrypi.linux.git
    failed with exit code 128, output:
    STDOUT: Cloning into bare repository
    '/home/jack/Projects/poky-rasp/raspberry/downloads/git2/github.com.raspberrypi.linux.git'...

    STDERR: fatal: The remote end hung up unexpectedly
    fatal: early EOF
    fatal: index-pack failed

    ERROR: Function failed: Fetcher failure for URL:
    'git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-patches'.
    Unable to fetch URL from any source.
    ERROR: Logfile of failure stored in:
    /home/jack/Projects/poky-rasp/raspberry/tmp/work/raspberrypi-poky-linux-gnueabi/linux-raspberrypi-3.1.9-rpi+r3+git14ad68cf4afc7acf14076f895b539d81cd9f32ab-r3/temp/log.do_fetch.21673
    NOTE: package
    linux-raspberrypi-3.1.9-rpi+r3+git14ad68cf4afc7acf14076f895b539d81cd9f32ab-r3:
    task do_fetch: Failed
    ERROR: Task 234
    (/home/jack/Projects/poky-rasp/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_3.1.9.bb,
    do_fetch) failed with exit code '1'
    Waiting for 2 running tasks to finish:
    0:
    gcc-runtime-4.7.1.0+git1+d07e24f4ab59f264d68d21838795349faab5dede-r9
    do_populate_sysroot (pid 2167)
    1:
    gcc-runtime-4.7.1.0+git1+d07e24f4ab59f264d68d21838795349faab5dede-r9
    do_package (pid 2168)
    NOTE: package
    gcc-runtime-4.7.1.0+git1+d07e24f4ab59f264d68d21838795349faab5dede-r9: task
    do_populate_sysroot: Succeeded
    Waiting for 1 running tasks to finish:
    0:
    gcc-runtime-4.7.1.0+git1+d07e24f4ab59f264d68d21838795349faab5dede-r9
    do_package (pid 2168)
    NOTE: package
    gcc-runtime-4.7.1.0+git1+d07e24f4ab59f264d68d21838795349faab5dede-r9: task
    do_package: Succeeded
    NOTE: Tasks Summary: Attempted 1223 tasks of which 1014 didn't need
    to be rerun and 1 failed.


Does anyone recognise the root cause of this message? Running poky and 
meta-raspberrypi at latest master.

Regards,
Jack.

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


