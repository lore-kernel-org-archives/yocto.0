Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53E4AE00797
	for <yocto@yoctoproject.org>; Thu, 28 Nov 2013 04:48:52 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id rASCmkIG025717
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 28 Nov 2013 04:48:46 -0800 (PST)
Received: from [128.224.162.242] (128.224.162.242) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.2.347.0;
	Thu, 28 Nov 2013 04:48:45 -0800
Message-ID: <52973B8D.9010806@windriver.com>
Date: Thu, 28 Nov 2013 20:48:13 +0800
From: Robert Yang <liezhi.yang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: Todd Stellanova <tstellanova@gmail.com>
References: <CACRzEudEBj6ZfdTyzCtBWCorDdPgPHHpWovbR5VJB5GuRVu8dA@mail.gmail.com>	<CACRzEue6532CCMbAo=a43Hb1ycPmaTg60LfOH273Y4CW93kemQ@mail.gmail.com>	<CAP71Wjwim0JxpX01Zw+EXknG1cLC0xqVcf8ZwK=2=i2Bfswegg@mail.gmail.com>	<2925583.ItqHBfeJuJ@helios>	<FDC4F28A-69CB-406F-95EA-0A5D2AB800BC@gmail.com>
	<CACRzEucp69jwmpR1KzYcOMfy-RdNym_NAPsQtYNdiFNkbNMbtQ@mail.gmail.com>
In-Reply-To: <CACRzEucp69jwmpR1KzYcOMfy-RdNym_NAPsQtYNdiFNkbNMbtQ@mail.gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: unbootable image produced with PACKAGE_CLASSES ?= "package_ipk", /etc missing
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
X-List-Received-Date: Thu, 28 Nov 2013 12:48:53 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit


Hi Todd,

I can't reproduce the problem, the rpm has more space than ipk is because
of the IMAGE_ROOTFS_EXTRA_SPACE, which is 50M * 1.3 by default.

Would you please try the following commands:

1) $ ls -stlh 
tmp/deploy/images/wandboard-dual/core-image-minimal-dev-wandboard-dual-*.ext3

2) $ fsck.ext4 -fn /path/to/image.ext3

And can you show the bb file if possible ?

// Robert

On 11/27/2013 09:27 AM, Todd Stellanova wrote:
> Tried creating a fresh build folder and giving the vm more ram but the
> results are basically the same:
>
> Allocated inode: 15264
> copy_file: Could not allocate block in ext2 filesystem
> debugfs: sif "libgio-2.0.so.0.3800.1" mode 0x81ed
>
> It appears that using package_rpm successfully allocates something like
> 15968 inodes. When calculating the ROOTFS_SIZE it looks like package_rpm
> and package_ipk are using very different values:
>
> package_rpm:
>
> ++ du -ks
> /fsl-community-bsp/build/tmp/work/wandboard_dual-poky-linux-gnueabi/todd-new/1.0-r0/rootfs
> ++ awk '{base_size = $1 * 1.3; base_size = ((base_size > 8192 ? base_size :
> 8192) + 0 + *51200*); if (base_size != int(base_size)) base_size =
> int(base_size + 1); base_size = base_size + 4096 - 1; base_size -=
> base_size % 4096; print base_size }'
>
> + ROOTFS_SIZE=*458752*
>
> package_ipk:
>
> ++ du -ks
> /fsl-community-bsp/build/tmp/work/wandboard_dual-poky-linux-gnueabi/todd-new/1.0-r0/rootfs
> ++ awk '{base_size = $1 * 1.3; base_size = ((base_size > 8192 ? base_size :
> 8192) + 0); if (base_size != int(base_size)) base_size = int(base_size +
> 1); base_size = base_size + 4096 - 1; base_size -= base_size % 4096; print
> base_size }'
>
> + ROOTFS_SIZE=*376832*
>
> I'm just guessing here, but it seems like package_ipk is underestimating
> ROOTFS_SIZE and subsequently populate-extfs.sh fails trying to add files to
> the ext fs.  Any ideas what might cause this?
>
> Thanks for any help!
>
>
>
>
>
>
> On Mon, Nov 25, 2013 at 7:03 AM, Todd Stellanova <tstellanova@gmail.com>wrote:
>
>> Thanks for the ideas. I'll try creating a new build folder. If that still
>> shows the problem, I'm thinking this has something to do with the fact that
>> I'm running the build inside a vm (inside an Ubuntu vm running on a Mac).
>> It looks like the build is using debugfs...maybe it's running out of ram at
>> some point and not obtaining more in the vm properly?
>>
>>> On Nov 25, 2013, at 5:21 AM, Paul Eggleton <
>> paul.eggleton@linux.intel.com> wrote:
>>>
>>> Hi Nicolas / Todd,
>>>
>>>> On Monday 25 November 2013 11:31:42 Nicolas Dechesne wrote:
>>>> On Sun, Nov 24, 2013 at 3:51 AM, Todd Stellanova
>>>> <tstellanova@gmail.com>wrote:
>>>>> It appears that copying the files to the ext3 / sdcard image is
>> failing in
>>>>> *populate-extfs.sh*
>>>>> I see a series of these errors:
>>>>>
>>>>> *copy_file: Could not allocate block in ext2 filesystem*
>>>>>
>>>>> Any idea what might cause this?  I've verified that the initial .tar
>>>>> archive and the bz2 contain the right files.
>>>>
>>>> can you try to create a new <build> folder (do not remove the current
>> one
>>>> for now) and reuse the downloads and sstate folder? i am wondering if
>> there
>>>> is a bug when trying to change PACKAGE_CLASSES in an existing <build>
>>>> folder.
>>>
>>> I do this not infrequently and never hit a problem like this, so I doubt
>> this
>>> is the case.
>>>
>>> Either there is a problem in how the filesystem is being set up (block
>> sizes,
>>> etc.) or there is some kind of corruption occurring.
>>>
>>> Cheers,
>>> Paul
>>>
>>> --
>>>
>>> Paul Eggleton
>>> Intel Open Source Technology Centre
>>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

