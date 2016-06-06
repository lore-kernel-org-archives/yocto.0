Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 537ECE00DAC; Mon,  6 Jun 2016 00:20:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03D64E00D8C
	for <yocto@yoctoproject.org>; Mon,  6 Jun 2016 00:20:33 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 68EF568A01B; Mon,  6 Jun 2016 08:20:32 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 0E76F68A019;
	Mon,  6 Jun 2016 08:20:17 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 8CB4E6740315;
	Mon,  6 Jun 2016 09:20:16 +0200 (CEST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <57552430.5050105@mlbassoc.com>
Date: Mon, 6 Jun 2016 09:20:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
Subject: Another new error
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
X-List-Received-Date: Mon, 06 Jun 2016 07:20:39 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I just got another message/error I've not seen before, after I interrupted a
build using ^C

==========================================================================================
Keyboard Interrupt, closing down...

NOTE: Tasks Summary: Attempted 4444 tasks of which 3297 didn't need to be rerun and all succeeded.
ERROR: Command execution failed: Stopped build

Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
Execution was interrupted, returning a non-zero exit code.
Process ProcessServer-1:
Traceback (most recent call last):
   File "/usr/lib/python3.4/multiprocessing/process.py", line 254, in _bootstrap
     self.run()
   File "/local/poky-cutting-edge/bitbake/lib/bb/server/process.py", line 104, in run
     bb.cooker.server_main(self.cooker, self.main)
   File "/local/poky-cutting-edge/bitbake/lib/bb/cooker.py", line 1689, in server_main
     cooker.post_serve()
   File "/local/poky-cutting-edge/bitbake/lib/bb/cooker.py", line 1624, in post_serve
     procs = subprocess.check_output(["lsof", '-w', lockfile], stderr=subprocess.STDOUT)
   File "/usr/lib/python3.4/subprocess.py", line 620, in check_output
     raise CalledProcessError(retcode, process.args, output=output)
subprocess.CalledProcessError: Command '['lsof', '-w', '/local/p0382_2016-01-13/bitbake.lock']' returned non-zero exit 
status 1
==========================================================================================

Build Configuration:
BB_VERSION = "1.31.0"
BUILD_SYS = "x86_64-linux"
NATIVELSBSTRING = "Ubuntu-15.10"
TARGET_SYS = "arm-amltd-linux-gnueabi"
MACHINE = "teton-p0382"
DISTRO = "amltd"
DISTRO_VERSION = "2.1+snapshot-20160606"
TUNE_FEATURES = "arm armv7a vfp thumb neon callconvention-hard cortexa9"
TARGET_FPU = "hard"
meta = "poky-master:6c5d7f1fb276cbe0a461ece6c8f0ca17a478fa8c"

Maybe it has to do with a change in the multiprocessing library
between python2 and python3?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

