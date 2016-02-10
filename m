Return-Path: <oliver.graute@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 590E5E0090C; Wed, 10 Feb 2016 11:06:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, MALFORMED_FREEMAIL,
	MISSING_HEADERS, RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oliver.graute[at]gmail.com)
	*  1.0 MISSING_HEADERS Missing To: header
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* 2.7 MALFORMED_FREEMAIL Bad headers on message from free email service
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0719E008B4
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 11:06:20 -0800 (PST)
Received: by mail-ig0-f174.google.com with SMTP id ik10so21398321igb.1
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 11:06:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:cc
	:content-type; bh=oftaewz4tVBT5msphEM0V5/RSjVWflCwCea+yfFmRxY=;
	b=k9UM1HJ7eCp2qfes3rBS3uUEDuWhwQpkZ6UcJ79iJX2Ex0gUCLwtsSgsvqlU4u1kiC
	M9g5kHjmqhiAj2VfmG96zMaHPlFUma5Xgr7xGg1snuKvh+QhiijXMI8C+s2bxCcX+iuq
	LfjzDzoJ79KoaX4YGCsPJE28YLZg9keaT65Ump63SRNnbjCuMfYTVancoFawP4SlFeLT
	57eV4+umhlXMSYgIwQIh7i3pvh/TQM6jpdLnHXLBjQlfCUL7y+AVBnPmOyjiTiximz3I
	PI7Cir5rVMPmh7tq4lBctBbW2oc1fTxRg3AUzY3U5FMFJv3N+avkDpLjWGWw+bRBcPWO
	qEqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:cc:content-type;
	bh=oftaewz4tVBT5msphEM0V5/RSjVWflCwCea+yfFmRxY=;
	b=dvu1KDPE6GG8FO7SslUQPZ9MCSciojtpRpAowKsRYNOspbuXHVTbZYVdDUGpxmeH8s
	ob9Vnfn9uRzIcFjh3eJA9mXBpZOdt7VmV4P0Q+SPjhXo3tPOqBdScmzf0jeH4eqGYU+c
	nRQOuLkeQdd/NnE0pXu0ZR+yvtRRHy9vpmBt0LXyxU08uLBO+V4JidhS2avi3VL70yfr
	1AE0fRSlK0hMiDphmXcKvWIBnSHF53qz+agtt2nsQlEDh0APKWcpqP8WPEe9C5BPkqz6
	yp6704ltcRWTvn1y8UVLIMfX+9qkQiMyvo8j3d0HxTioOWbGEqrjcudYs0D6N59hD7N5
	9A3w==
X-Gm-Message-State: AG10YOTkFQYU/ETLFDu7OUCRQ1iw1upA0OiI4UDmyUzNf/zDBHdzi4mgHKe2Npi01HxDYY21+C40JPLJpXzY8w==
MIME-Version: 1.0
X-Received: by 10.50.160.41 with SMTP id xh9mr9726179igb.76.1455131180218;
	Wed, 10 Feb 2016 11:06:20 -0800 (PST)
Received: by 10.79.122.194 with HTTP; Wed, 10 Feb 2016 11:06:20 -0800 (PST)
In-Reply-To: <20160210101913.GA31234@linux.intel.com>
References: <20160209082916.GB6748@graute-opti>
	<20160210101913.GA31234@linux.intel.com>
Date: Wed, 10 Feb 2016 20:06:20 +0100
Message-ID: <CA+KjHfZCg+7EENA-9+Dx9m4p6hZahELgfJc-aBqWB2FmZhYHZA@mail.gmail.com>
From: Oliver Graute <oliver.graute@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: wic adds wrong mount lines to my fstab
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
X-List-Received-Date: Wed, 10 Feb 2016 19:06:21 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 10, 2016 at 11:19 AM, Ed Bartosh <ed.bartosh@linux.intel.com> wrote:
> Hi Oliver,
>
> On Tue, Feb 09, 2016 at 09:29:16AM +0100, Oliver Graute wrote:
>> # It uses SPL and u-boot
>> #
>> # The disk layout used is:
>> #  - ----- --------- ---------- -------- --------- ---------- ------------
>> # | | SPL | u-boot  |  /boot1  | /boot2 | rootfs1 | rootfs2  |    data    |
>> #  - ----- --------- ---------- -------- --------- ---------- ------------
>> # ^ ^     ^         ^         ^              ^
>> # | |     |         |         |              |
>> # 0 1kiB  69kiB     4MiB   4MiB + 20MiB    4MiB + 8Mib + rootfs1 + rootfs2 + data
>> #
>> part SPL --source rawcopy --sourceparams="file=SPL" --ondisk mmcblk --no-table --align 1
>> part u-boot --source rawcopy --sourceparams="file=u-boot.img" --ondisk mmcblk --no-table --align 69
>> part /boot --source bootimg-partition --ondisk mmcblk --fstype=vfat --label boot --active --align 4096 --size 20M --extra-space 0
>> #part /boot2 --source bootimg-partition --ondisk mmcblk --fstype=vfat --label boot2 --active --align 4096 --size 8M --extra-space 0
>> part / --source rootfs --ondisk mmcblk --fstype=ext3 --label root --align 4 --size 125
>> part /rescue --source rootfs --ondisk mmcblk --fstype=ext3 --label secondary --align 4 --size 125
>> part /data --ondisk mmcblk --fstype=ext3 --label data --align 4 --size 730
>>
>> Some sugesstions to fix this?
> How exactly wic complains if you use --ondisk mmcblk0 ?
>
> It worked for me with this .wks:
> part /boot --source bootimg-pcbios --ondisk mmcblk0 --label boot --active --align 1024
> part / --source rootfs --ondisk mmcblk0 --fstype=ext3 --label root --align 1024
> part /rescue --source rootfs --ondisk mmcblk0 --fstype=ext3 --label secondary --align 4 --size 125
> part /data --ondisk mmcblk0 --fstype=ext3 --label data --align 4 --size 730
>
> bootloader --timeout=0 --append="rootwait rootfstype=ext3 console=tty0"
>
> and produced these 2 lines in fstab:
> /dev/mmcblk0p3  /rescue ext3    defaults        0       0
> /dev/mmcblk0p5  /data   ext3    defaults        0       0
>
> If you provide more info about your setup(layers used?) I can try to
> reproduce it and fix the issue.
> Creating bug in https://bugzilla.yoctoproject.org would be great too.

Hello Ed,

it is working now with --ondisk mmcblk0. I'am not sure why it didn't
worked before. I can't reproduce it anymore. Thx for your help and sorry
for the noise.

best regards,

Oliver

