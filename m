Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DFF7E010A6; Mon,  1 Aug 2016 06:16:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9D80E00E5B
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2016 06:15:55 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id A573168A019; Mon,  1 Aug 2016 14:15:53 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 0A14568A019;
	Mon,  1 Aug 2016 14:15:53 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id BB9DC6740335;
	Mon,  1 Aug 2016 15:15:52 +0200 (CEST)
To: yocto@yoctoproject.org
References: <CAFZh4h8HyfyfzX8m_jZWzUuOEJ4dnndxHjH67s9urxQVM5PKrw@mail.gmail.com>
	<CAFZh4h_h5mU9_dDRiu84p56y+x80_J85q=LjQsy=3DTZt4jw_Q@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <34cbadbf-f3b2-1ee2-84c8-4820ffaa7e36@mlbassoc.com>
Date: Mon, 1 Aug 2016 15:15:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <CAFZh4h_h5mU9_dDRiu84p56y+x80_J85q=LjQsy=3DTZt4jw_Q@mail.gmail.com>
Subject: Re: Yocto 1.8.1 - Insert USB VFAT thumb drive results in "Volume was not properly unmounted. Some data may be corrupt. Please run fsck"
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
X-List-Received-Date: Mon, 01 Aug 2016 13:16:02 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-08-01 15:06, Brian Hutchinson wrote:
> On Mon, Aug 1, 2016 at 8:56 AM, Brian Hutchinson <b.hutchman@gmail.com> wrote:
>> If the USB drive is cold plugged (inserted before power on) it mounts
>> fine, it is only a hotplug that results in the message "Volume was not
>> properly unmounted. Some data may be corrupt. Please run fsck"
>>
>> The drive is mounted under /run/media/sdb1 but a listing of the
>> directory just shows strange characters for the file names.
>>
>> Installed dosfstools on target and running fsck.vfat doesn't report a
>> problem.  Inserting the exact same USB drive in a Ubuntu 14.04 box
>> works fine so it isn't the USB drive.
>>
>> Found this thread talking about the problem I'm seeing (link below)
>> and a bug report that sounds similar to what I'm seeing but I never
>> really saw what the issue is and it says it's been fixed in Yocto
>> 1.8.3 but I don't see a Yocto 1.8.3 release ... only Yocto 1.8.2.
>>
>> https://lists.yoctoproject.org/pipermail/yocto/2015-September/026563.html
>>
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=9652/
>>
>> When I run the mount command it says the USB drive is mounted as:
>>
>> type vfat (rw,relatime,gid=6,fmask=0007,dmask=0007,allow_utime=0020,codepage=437,iocharset=iso8859-1,shortname=mixed,errors=remount-ro)
>>
>> I'm running a 4.4.1 kernel built outside of Yocto on a TI 816x SoC.
>>
>> Anyone have any information on what the issue may be?  I've played
>> around with my kernel .config thinking it was something there but that
>> didn't make any difference.  Kinda stumped at the moment.
>>
>> Regards,
>>
>> Brian
>
> This is the output of running fsck.vfat in case anyone cares.  It
> doesn't report anything about a "dirty bit" being set.  Could it be
> this version of dosfsck is too old?
>
> dosfsck 2.11, 12 Mar 2005, FAT32, LFN
> Starting check/repair pass.
> Starting verification pass.
> /dev/sdb1: 284 files, 60465/62894 clusters
>

BTW, this behavior still exists in Poky/Yocto 2.1+  I was thinking
of filing a bug myself (I tried to look into the details, but I
could not figure out why the 'fsck' step didn't make the kernel
happy)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

