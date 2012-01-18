Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07599E004D2
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 06:51:15 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 51DA1F8127F; Wed, 18 Jan 2012 07:51:10 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 53E0DF8127E;
	Wed, 18 Jan 2012 07:51:09 -0700 (MST)
Message-ID: <4F16DC5D.9070903@mlbassoc.com>
Date: Wed, 18 Jan 2012 07:51:09 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CANFv2EmGr9fZOPbi1G+sWbWp0t6B-mijZ6z8iLLw7ZGN9OZy9Q@mail.gmail.com>
	<CANFv2E=WCVdtHMrf9VBC0JX+GjTRk+NZr+ZwA4F-x0SAnc3L1g@mail.gmail.com>
	<CANFv2EnCdxjffKM1W42vBU-TTPCG8kL2GTXr5VUP47zDof8VwA@mail.gmail.com>
In-Reply-To: <CANFv2EnCdxjffKM1W42vBU-TTPCG8kL2GTXr5VUP47zDof8VwA@mail.gmail.com>
Subject: Re: build failure on ubuntu 64bits development system
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
X-List-Received-Date: Wed, 18 Jan 2012 14:51:16 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-01-18 07:42, James Abernathy wrote:
>
>
> On Wed, Jan 18, 2012 at 9:30 AM, James Abernathy <jfabernathy@gmail.com <mailto:jfabernathy@gmail.com>> wrote:
>
>
>
>     On Wed, Jan 18, 2012 at 7:55 AM, James Abernathy <jfabernathy@gmail.com <mailto:jfabernathy@gmail.com>> wrote:
>
>         I just built a new development pc and installed Ubuntu 11.10 x64.  I wonder if there are any new requirements to building Yocto in that environment?  I got an error right
>         off, but then it complete the first 63 task and stopped successfully.  error below:
>
>         jim@ubuntu:~/poky/build-cdv$ bitbake core-image-sato
>         Pseudo is not present but is required, building this first before the main build
>         Parsing recipes: 100% |#################################################| Time: 00:00:25
>         Parsing of 797 .bb files complete (0 cached, 797 parsed). 1037 targets, 22 skipped, 0 masked, 0 errors.
>         ERROR: Execution of event handler 'run_buildstats' failed
>         Traceback (most recent call last):
>            File "run_buildstats(e)", line 18, in run_buildstats(e=<bb.event.BuildStarted object at 0x4c338d0>)
>            File "buildstats.bbclass", line 21, in set_device(e=<bb.event.BuildStarted object at 0x4c338d0>)
>         UnboundLocalError: local variable 'rdev' referenced before assignment
>
>
>         Any ideas?
>
>         JIm A
>
>
>     I went back and tried using the tarballs for poky edison and cedartrail bsp and the errors don't occur.  So I'm guessing the issue isn't related to Ubuntu 32 vs. 64 bit.
>
>
> I spoke too soon. Same error in edison tarballs.  I looked at the code and I can see an place were rdev could go un assigned. If you fell out of the for loop without passing any of
> the if conditions, rdev would be unassigned.  That must be what is happening in Ubuntu 11.10 x64
>
> Anybody building with Ubuntu 11.10 x64?  This doesn't happen on x32
>
> Jim A
>
>
> def set_device(e):
>      tmpdir = bb.data.getVar('TMPDIR', e.data, True)
>      try:
>          os.remove(bb.data.getVar('DEVFILE', e.data, True))
>      except:
>          pass
>      ############################################################################
>      # We look for the volume TMPDIR lives on. To do all disks would make little
>      # sense and not give us any particularly useful data. In theory we could do
>      # something like stick DL_DIR on a different partition and this would
>      # throw stats gathering off. The same goes with SSTATE_DIR. However, let's
>      # get the basics in here and work on the cornercases later.
>      ############################################################################
>      device=os.stat(tmpdir)
>      majordev=os.major(device.st_dev)
>      minordev=os.minor(device.st_dev)
>      for line in open("/proc/diskstats", "r"):
>          if majordev == int(line.split()[0]) and minordev == int(line.split()[1]):
>             rdev=line.split()[2]
>      file = open(bb.data.getVar('DEVFILE', e.data, True), "w")
>      file.write(rdev)
>      file.close()

Can you show what the differences are between /proc/diskstats
on the two systems?  That's obviously what's causing the error.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

