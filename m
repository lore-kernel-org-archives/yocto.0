Return-Path: <jfabernathy@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE791E004D2
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 08:17:41 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qadz30 with SMTP id z30so3991435qad.14
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 08:17:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=aeX9n5E8n9e3q+T2F7XrpNXDCh0XKFBUJt80JgHdv0Q=;
	b=RvELMrj5t6cLSugWpA5S7lpmbJkRRb6krVlP6JJjSgxFAWpQ3XVhIbNHGjy3+IGOvo
	2+1BpHzaQyg+GqvDN7k54vxXADAXenz6LT0Y1oJF9AoOGuEPiNagiC5lBN6VWKkxcWAD
	yAjnDJA4cBLgvrTG8kO/NeCxcyKtQU3WWt+W4=
Received: by 10.224.17.143 with SMTP id s15mr22525880qaa.64.1326903460567;
	Wed, 18 Jan 2012 08:17:40 -0800 (PST)
Received: from [10.0.1.39] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	m20sm51188723qaj.14.2012.01.18.08.17.38 (version=SSLv3 cipher=OTHER);
	Wed, 18 Jan 2012 08:17:39 -0800 (PST)
Message-ID: <4F16F0A2.9070805@gmail.com>
Date: Wed, 18 Jan 2012 11:17:38 -0500
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: William Mills <wmills@ti.com>
References: <CANFv2EmGr9fZOPbi1G+sWbWp0t6B-mijZ6z8iLLw7ZGN9OZy9Q@mail.gmail.com>	<CANFv2E=WCVdtHMrf9VBC0JX+GjTRk+NZr+ZwA4F-x0SAnc3L1g@mail.gmail.com>	<CANFv2EnCdxjffKM1W42vBU-TTPCG8kL2GTXr5VUP47zDof8VwA@mail.gmail.com>	<4F16DC5D.9070903@mlbassoc.com>	<4F16DDCD.2020701@ti.com>	<CANFv2E=R2NwFm0CdHqmQC0HskVYZFFYCwu49r2vs5wxkmHS=rg@mail.gmail.com>	<4F16E20C.9010909@ti.com>
	<CANFv2EnTYUmywJfVGw27QP4QHqgJnjF9-H9G0DEj-HrTAmpytg@mail.gmail.com>
	<4F16EE0D.1080805@ti.com>
In-Reply-To: <4F16EE0D.1080805@ti.com>
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
X-List-Received-Date: Wed, 18 Jan 2012 16:17:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/18/2012 11:06 AM, William Mills wrote:
>
>
> On 01/18/2012 10:25 AM, James Abernathy wrote:
>>
>>
>> On Wed, Jan 18, 2012 at 10:15 AM, William Mills <wmills@ti.com
>> <mailto:wmills@ti.com>> wrote:
>>
>>
>>
>>     On 01/18/2012 10:04 AM, James Abernathy wrote:
>>
>>
>>
>>         ---------- Forwarded message ----------
>>         From: *William Mills* <wmills@ti.com <mailto:wmills@ti.com>
>> <mailto:wmills@ti.com <mailto:wmills@ti.com>>>
>>         Date: Wed, Jan 18, 2012 at 9:57 AM
>>         Subject: Re: [yocto] build failure on ubuntu 64bits development
>>         system
>>         To: Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>
>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>
>>         Cc: yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>> <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>__>
>>
>>
>>
>>
>>         On 01/18/2012 09:51 AM, Gary Thomas wrote:
>>
>>         On 2012-01-18 07 <tel:2012-01-18%2007> <tel:2012-01-18%2007>:42,
>>         James Abernathy wrote:
>>
>>
>>
>>         On Wed, Jan 18, 2012 at 9:30 AM, James Abernathy
>> <jfabernathy@gmail.com <mailto:jfabernathy@gmail.com>
>> <mailto:jfabernathy@gmail.com <mailto:jfabernathy@gmail.com>>
>> <mailto:jfabernathy@gmail.com <mailto:jfabernathy@gmail.com>
>> <mailto:jfabernathy@gmail.com <mailto:jfabernathy@gmail.com>>__>__>
>>
>>         wrote:
>>
>>
>>
>>         On Wed, Jan 18, 2012 at 7:55 AM, James Abernathy
>> <jfabernathy@gmail.com <mailto:jfabernathy@gmail.com>
>> <mailto:jfabernathy@gmail.com <mailto:jfabernathy@gmail.com>>
>> <mailto:jfabernathy@gmail.com <mailto:jfabernathy@gmail.com>
>> <mailto:jfabernathy@gmail.com <mailto:jfabernathy@gmail.com>>__>__>
>>
>>         wrote:
>>
>>         I just built a new development pc and installed Ubuntu 11.10
>>         x64. I wonder if there are any new requirements to building
>>         Yocto in that environment? I got an error right
>>         off, but then it complete the first 63 task and stopped
>>         successfully. error below:
>>
>>         jim@ubuntu:~/poky/build-cdv$ bitbake core-image-sato
>>         Pseudo is not present but is required, building this first
>>         before the main build
>>         Parsing recipes: 100%
>>         |#############################____####################| Time:
>>         00:00:25
>>
>>         Parsing of 797 .bb files complete (0 cached, 797 parsed). 1037
>>         targets, 22 skipped, 0 masked, 0 errors.
>>         ERROR: Execution of event handler 'run_buildstats' failed
>>         Traceback (most recent call last):
>>         File "run_buildstats(e)", line 18, in
>>         run_buildstats(e=<bb.event.____BuildStarted object at 
>> 0x4c338d0>)
>>
>>         File "buildstats.bbclass", line 21, in
>>         set_device(e=<bb.event.____BuildStarted object at 0x4c338d0>)
>>
>>         UnboundLocalError: local variable 'rdev' referenced before
>>         assignment
>>
>>
>>         Any ideas?
>>
>>         JIm A
>>
>>
>>         I went back and tried using the tarballs for poky edison and
>>         cedartrail bsp and the errors don't occur. So I'm guessing the
>>         issue isn't related to Ubuntu 32 vs. 64 bit.
>>
>>
>>         I spoke too soon. Same error in edison tarballs. I looked at the
>>         code and I can see an place were rdev could go un assigned. If
>>         you fell out of the for loop without passing any of
>>         the if conditions, rdev would be unassigned. That must be what
>>         is happening in Ubuntu 11.10 x64
>>
>>         Anybody building with Ubuntu 11.10 x64? This doesn't happen 
>> on x32
>>
>>         Jim A
>>
>>
>>         def set_device(e):
>>         tmpdir = bb.data.getVar('TMPDIR', e.data, True)
>>         try:
>>         os.remove(bb.data.getVar('____DEVFILE', e.data, True))
>>         except:
>>         pass
>>         
>> ##############################____############################__##__################
>>
>>         # We look for the volume TMPDIR lives on. To do all disks would
>>         make little
>>         # sense and not give us any particularly useful data. In theory
>>         we could do
>>         # something like stick DL_DIR on a different partition and this
>>         would
>>         # throw stats gathering off. The same goes with SSTATE_DIR.
>>         However, let's
>>         # get the basics in here and work on the cornercases later.
>>         
>> ##############################____############################__##__################
>>         device=os.stat(tmpdir)
>>         majordev=os.major(device.st_____dev)
>>         minordev=os.minor(device.st_____dev)
>>
>>         for line in open("/proc/diskstats", "r"):
>>         if majordev == int(line.split()[0]) and minordev ==
>>         int(line.split()[1]):
>>         rdev=line.split()[2]
>>         file = open(bb.data.getVar('DEVFILE', e.data, True), "w")
>>         file.write(rdev)
>>         file.close()
>>
>>
>>         Can you show what the differences are between /proc/diskstats
>>         on the two systems? That's obviously what's causing the error.
>>
>>
>>         If your build dir is encyptfs or a fuse device or anything that
>>         is not a
>>         direct block device you will get this error. This is to be 
>> fixed in
>>         1.1.1 but encyptfs will still have other problems.
>>
>>         I build the Ubuntu 11.10 x64 system with 2 drives setup as Soft
>>         RAID 0.
>>         I picked btrfs as the file system for no particular reason.
>>         Should I go
>>         back to ext4 or is RAID 0 the problem?
>>
>>
>>     No, I would not do that yet. I would think software RAID would
>>     present a block device so would not trigger this error.
>>
>> I was hoping to use RAID 0 for speed. I have a I7 2700K on a DZ68DB with
>> 2 6Gb/s ports matched to 2 6Gb/s 7200 hard drives. Since the builds take
>> so long, I was looking for an edge.
>>
>> So are there any recommendations at this point? I'm assuming that the
>> default ext4 directly on the SATA drive is a fall back position.
>>
>> Advice?
>
> If it were me, I would instrument (hack) that code above to see what 
> part is failing.  Are you getting the right dev major/ minor from the 
> stat code or is the /proc/diskstats search code failing.
>
> Alternatively you could try the 1.1.1 branch to see if that fixes it.
>
I'm not sure I'm the right guys to be debugging this :-)
In the interest of my schedule, and since this is a brand new 
workstation, I'm just going to try EXT4 on Soft RAID 0 and see if that 
works.  If not, I'll look at 1.1.1.  I Assume that would be the M4 
release at this time.

Jim A
>
>>
>> Jim A
>>
>>
>> > 9 0 md0 133691 0 2218832 0 67133 0 5629616 0 0 0 0
>> > 9 1 md1 235 0 1880 0 0 0 0 0 0 0 0
>>
>>     Your build dir is in md0 or md1 (wrt your other post)
>>
>>
>>         JIm A
>>
>>         ___________________________________________________
>>         yocto mailing list
>>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>> <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>__>
>>         https://lists.yoctoproject.____org/listinfo/yocto
>> <https://lists.yoctoproject.__org/listinfo/yocto
>> <https://lists.yoctoproject.org/listinfo/yocto>>
>>
>>
>>
>>
>>         _________________________________________________
>>         yocto mailing list
>>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>         https://lists.yoctoproject.__org/listinfo/yocto
>> <https://lists.yoctoproject.org/listinfo/yocto>
>>
>>


