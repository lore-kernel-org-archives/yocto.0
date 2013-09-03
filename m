Return-Path: <chgans@googlemail.com>
Received: from mail-pb0-f41.google.com (mail-pb0-f41.google.com
	[209.85.160.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 297BBE01440
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2013 20:06:46 -0700 (PDT)
Received: by mail-pb0-f41.google.com with SMTP id rp2so5402984pbb.14
	for <yocto@yoctoproject.org>; Mon, 02 Sep 2013 20:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=oHEZM/KsLVA1H0sRYCfeE3QUNcOfmubveN8V1RFJOTU=;
	b=fT88hoBsKghD7joQUT9piJXZe4noJoz+4gN62pniIcMNSQUB8AbBlK7AflOCyKRCNH
	FSTNjwCnQy8PU23tH4xmP//pkiT+GU6ZZeRqJy4PpckpZigszUczV5PNu05YIBAoWEVH
	U9IiTjFBLqqKM7CtDJU71UqDPlVuNYbh9faZ9Un3Xnb3vwGE9PFBFb/J9q7bE8E3jmIT
	ZScdhpoGtYUZEkbcXJiuTCn+zeEuj2I2l8qXIHY8WnbXx9N+cRGFlP+0km/UMzEFBoSt
	ZZiFtxw1/ZvPRNBsewMvsxNs/ZiClZfvwcwLmYmP4PUaGMcqflUufkI0CGvy9mVySB0I
	QFtw==
X-Received: by 10.68.194.161 with SMTP id hx1mr5794527pbc.164.1378177606054;
	Mon, 02 Sep 2013 20:06:46 -0700 (PDT)
Received: from [0.0.0.0] ([210.48.94.225]) by mx.google.com with ESMTPSA id
	ef10sm20649133pac.1.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 02 Sep 2013 20:06:45 -0700 (PDT)
Sender: Chris Gagneraud <chgans@googlemail.com>
Message-ID: <52255245.9090609@gna.org>
Date: Tue, 03 Sep 2013 15:06:45 +1200
From: Christian Gagneraud <chgans@gna.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: Elvis Dowson <elvis.dowson@gmail.com>
References: <52241C84.2090605@gna.org>
	<CAJTo0LZSkA5Gr4AkaFEAuG0irsLWfeUkO2jXmmBXHJ6qcaGN_w@mail.gmail.com>
	<522506F8.8060706@gna.org>
	<0C95222C-9247-4FDD-837C-83FB03A314AC@keylevel.com>
	<52251F60.9060804@gna.org>
	<B3347AE5-6200-4E3D-9A7F-8BC683568F98@gmail.com>
In-Reply-To: <B3347AE5-6200-4E3D-9A7F-8BC683568F98@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Server specs for a continuous integration system
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
X-List-Received-Date: Tue, 03 Sep 2013 03:06:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

On 03/09/13 13:04, Elvis Dowson wrote:
> Hi,
>
> On Sep 3, 2013, at 3:29 AM, Christian Gagneraud <chgans@gna.org
> <mailto:chgans@gna.org>> wrote:
>
>>> Isn't RAID-5 going to be slower, especially if it's software? RAID 1
>>> is probably better as you'll potentially double the write speed to disk.
>>> I use a couple of Vertex SSDs in RAID 1 giving a theoretical write speed
>>> near to 1GBs. Write endurance is possibly a concern, but I've not had
>>> any issues using them on a local build machine. I would probably look at
>>> some higher end models if I was going to run a lot of builds. A lot less
>>> noise than hard drives ;-)
>>
>> Thanks for the info, i will have a look at RAID-1, as you can see, I
>> know absolutely nothing about RAID! ;)
>>
>> Does SSD really help with disk throughput? Then what's the point of
>> using ramdisk for TMPDIR/WORKDIR? If you "fully" work in RAM, the disk
>> bottleneck shouldn't be such a problem anymore (basically, on disk,
>> you should only have your yocto source tree and your download directory?).
>
> I use a Gigabyte Z77X-UP5TH motherboard
>
> http://www.gigabyte.us/press-center/news-page.aspx?nid=1166
>
> which has support for RAID in BIOS, at boot up, and Thunderbolt
> connected to an Apple 27" Thunderbolt display. I've got two SSDs in a
> RAID1 configuration (striped).
>
> If you can wait for some more time, they'll be releasing a version of
> the motherboard for the new haswell chips as well, but it's not probably
> going to increase performance.

Right now, i'm just proposing an infrastructure solution, i'm not even 
sure it will be accepted, and the final hardware choice (if accepted) 
might not even be in my hands ...

>
> I use a 3770K i7 quad-core processor, 16GB RAM, with a liquid cooled
> solution running at 3.8GHz. I've overclocked the CPU to 4.5GHz, but I
> end up shaving only 2 minutes off build times, so I just run it at 3.8GHz.
>
> A core-image-minimal build takes around 22 minutes for me, for a Xilinx
> ZC702 machine configuration (Dual ARM Cortex A9 processor + FPGA).

Is it a full build from scratch (cross-toolchain, native stuff, etc...)? 
If so, it's quite impressive to me!

Chris

>
> Here are the modifications that I've done to my system, to tweak SSD
> performance, for Ubuntu-12.10, for a RAID1 array.
>
> *SSD performance tweaks (for non RAID0 arrays)*
>
> Step 01.01: Modify /etc/fstab.
>
> $ sudo gedit /etc/fstab
>
> Increase the life of the SSD by reducing how much the OS writes to the
> disk. If you don't need to knowwhen each file or directory was last
> accessed, add the following two options to the /etc/fstab file:
>
> noatime, nodiratime
>
> To enable TRIM support to help manage disk performance over the long
> term, add the following option to the /etc/fstab file:
>
> discard
>
> The /etc/fstab file should look like this:
>
> # / was on /dev/sda1 during installation
> UUID=xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx /               ext4
> discard,noatime,nodiratime,errors=remount-ro 0       1
>
> Move /tmp to RAM
>
> # Move /tmp to RAM
> none            /tmp            tmpfs
> defaults,noatime,nodiratime,noexec,nodev,nosuid 0      0
>
> See: Guide software RAID/LVM TRIM support on Linux
> <http://www.ocztechnologyforum.com/forum/showthread.php?82648-software-RAID-LVM-TRIM-support-on-Linux>
> for more details.
>
> Step 01.02: Move the browser's cache to a tmpfs in RAM
>
> Launch firefox and type the following in the location bar:
>
> about:config
>
> Right click and enter a new preference configution by selecting the
> New->String option.
>
> Preference name: browser.cache.disk.parent_directory
> string value:/tmp/firefox-cache
>
> See: Running Ubuntu and other Linux flavors on an SSD « Brizoma
> <http://brizoma.wordpress.com/2012/08/04/running-ubuntu-and-other-linux-flavors-on-an-ssd/>.
>
>
> Best regards,
>
> Elvis Dowson


