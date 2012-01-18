Return-Path: <wmills@ti.com>
Received: from devils.ext.ti.com (devils.ext.ti.com [198.47.26.153])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48E17E004D2
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 06:57:19 -0800 (PST)
Received: from dlep26.itg.ti.com ([157.170.170.121])
	by devils.ext.ti.com (8.13.7/8.13.7) with ESMTP id q0IEvHUM025730;
	Wed, 18 Jan 2012 08:57:17 -0600
Received: from DLEE74.ent.ti.com (localhost [127.0.0.1])
	by dlep26.itg.ti.com (8.13.8/8.13.8) with ESMTP id q0IEvHqg019072;
	Wed, 18 Jan 2012 08:57:17 -0600 (CST)
Received: from dlelxv22.itg.ti.com (172.17.1.197) by DLEE74.ent.ti.com
	(157.170.170.8) with Microsoft SMTP Server id 14.1.323.3;
	Wed, 18 Jan 2012 08:57:17 -0600
Received: from gtwmills.gt.design.ti.com (gtwmills.gt.design.ti.com
	[158.218.100.52])	by dlelxv22.itg.ti.com (8.13.8/8.13.8) with ESMTP id
	q0IEvHEV011309;	Wed, 18 Jan 2012 08:57:17 -0600
Message-ID: <4F16DDCD.2020701@ti.com>
Date: Wed, 18 Jan 2012 09:57:17 -0500
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <CANFv2EmGr9fZOPbi1G+sWbWp0t6B-mijZ6z8iLLw7ZGN9OZy9Q@mail.gmail.com>	<CANFv2E=WCVdtHMrf9VBC0JX+GjTRk+NZr+ZwA4F-x0SAnc3L1g@mail.gmail.com>	<CANFv2EnCdxjffKM1W42vBU-TTPCG8kL2GTXr5VUP47zDof8VwA@mail.gmail.com>
	<4F16DC5D.9070903@mlbassoc.com>
In-Reply-To: <4F16DC5D.9070903@mlbassoc.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 18 Jan 2012 14:57:19 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit



On 01/18/2012 09:51 AM, Gary Thomas wrote:
> On 2012-01-18 07:42, James Abernathy wrote:
>>
>>
>> On Wed, Jan 18, 2012 at 9:30 AM, James Abernathy 
>> <jfabernathy@gmail.com <mailto:jfabernathy@gmail.com>> wrote:
>>
>>
>>
>>     On Wed, Jan 18, 2012 at 7:55 AM, James Abernathy 
>> <jfabernathy@gmail.com <mailto:jfabernathy@gmail.com>> wrote:
>>
>>         I just built a new development pc and installed Ubuntu 11.10 
>> x64.  I wonder if there are any new requirements to building Yocto in 
>> that environment?  I got an error right
>>         off, but then it complete the first 63 task and stopped 
>> successfully.  error below:
>>
>>         jim@ubuntu:~/poky/build-cdv$ bitbake core-image-sato
>>         Pseudo is not present but is required, building this first 
>> before the main build
>>         Parsing recipes: 100% 
>> |#################################################| Time: 00:00:25
>>         Parsing of 797 .bb files complete (0 cached, 797 parsed). 
>> 1037 targets, 22 skipped, 0 masked, 0 errors.
>>         ERROR: Execution of event handler 'run_buildstats' failed
>>         Traceback (most recent call last):
>>            File "run_buildstats(e)", line 18, in 
>> run_buildstats(e=<bb.event.BuildStarted object at 0x4c338d0>)
>>            File "buildstats.bbclass", line 21, in 
>> set_device(e=<bb.event.BuildStarted object at 0x4c338d0>)
>>         UnboundLocalError: local variable 'rdev' referenced before 
>> assignment
>>
>>
>>         Any ideas?
>>
>>         JIm A
>>
>>
>>     I went back and tried using the tarballs for poky edison and 
>> cedartrail bsp and the errors don't occur.  So I'm guessing the issue 
>> isn't related to Ubuntu 32 vs. 64 bit.
>>
>>
>> I spoke too soon. Same error in edison tarballs.  I looked at the 
>> code and I can see an place were rdev could go un assigned. If you 
>> fell out of the for loop without passing any of
>> the if conditions, rdev would be unassigned.  That must be what is 
>> happening in Ubuntu 11.10 x64
>>
>> Anybody building with Ubuntu 11.10 x64?  This doesn't happen on x32
>>
>> Jim A
>>
>>
>> def set_device(e):
>>      tmpdir = bb.data.getVar('TMPDIR', e.data, True)
>>      try:
>>          os.remove(bb.data.getVar('DEVFILE', e.data, True))
>>      except:
>>          pass
>>      
>> ############################################################################
>>      # We look for the volume TMPDIR lives on. To do all disks would 
>> make little
>>      # sense and not give us any particularly useful data. In theory 
>> we could do
>>      # something like stick DL_DIR on a different partition and this 
>> would
>>      # throw stats gathering off. The same goes with SSTATE_DIR. 
>> However, let's
>>      # get the basics in here and work on the cornercases later.
>>      
>> ############################################################################
>>      device=os.stat(tmpdir)
>>      majordev=os.major(device.st_dev)
>>      minordev=os.minor(device.st_dev)
>>      for line in open("/proc/diskstats", "r"):
>>          if majordev == int(line.split()[0]) and minordev == 
>> int(line.split()[1]):
>>             rdev=line.split()[2]
>>      file = open(bb.data.getVar('DEVFILE', e.data, True), "w")
>>      file.write(rdev)
>>      file.close()
>
> Can you show what the differences are between /proc/diskstats
> on the two systems?  That's obviously what's causing the error.
>

If your build dir is encyptfs or a fuse device or anything that is not a 
direct block device you will get this error.  This is to be fixed in 
1.1.1 but encyptfs will still have other problems.



