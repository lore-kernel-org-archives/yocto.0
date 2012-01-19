Return-Path: <jfabernathy@gmail.com>
Received: from mail-qw0-f41.google.com (mail-qw0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F2A2E00599
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2012 05:55:48 -0800 (PST)
Received: by qadc11 with SMTP id c11so1835100qad.14
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2012 05:55:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type;
	bh=9cedp0SAUzFovoy06OFH9gcoNoQ9eebMxfq6xQ9D7/c=;
	b=QQS1fqg+wD+677b8JxvYEGfcHSsE5KIHtXaMrtc6gShoQ+CNbhgcp6wv3mnWeoHXSH
	9e54lXYj4/l6DBAwwqyr8evcJ6+BjRkl7bBAqkV1pNvRxLamWgOGMN+prr1eqbR0dwgD
	y4xhVQs+IeeNkISJEhPJNdOj5pPOgeGoStL5Y=
Received: by 10.224.209.133 with SMTP id gg5mr27461196qab.40.1326981347731;
	Thu, 19 Jan 2012 05:55:47 -0800 (PST)
Received: from [10.0.1.54] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id hv20sm30312qab.22.2012.01.19.05.55.42
	(version=SSLv3 cipher=OTHER); Thu, 19 Jan 2012 05:55:45 -0800 (PST)
Message-ID: <4F1820DE.7060700@gmail.com>
Date: Thu, 19 Jan 2012 08:55:42 -0500
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <CANFv2EmGr9fZOPbi1G+sWbWp0t6B-mijZ6z8iLLw7ZGN9OZy9Q@mail.gmail.com>	<CANFv2E=WCVdtHMrf9VBC0JX+GjTRk+NZr+ZwA4F-x0SAnc3L1g@mail.gmail.com>	<CANFv2EnCdxjffKM1W42vBU-TTPCG8kL2GTXr5VUP47zDof8VwA@mail.gmail.com>	<4F16DC5D.9070903@mlbassoc.com>	<4F16DDCD.2020701@ti.com>	<CANFv2E=R2NwFm0CdHqmQC0HskVYZFFYCwu49r2vs5wxkmHS=rg@mail.gmail.com>	<4F16E20C.9010909@ti.com>
	<CANFv2EnTYUmywJfVGw27QP4QHqgJnjF9-H9G0DEj-HrTAmpytg@mail.gmail.com>
	<4F16EE0D.1080805@ti.com> <4F16F0A2.9070805@gmail.com>
	<4F16F410.4050800@linux.intel.com> <4F16FBBF.6080406@gmail.com>
	<4F173AD5.4040200@linux.intel.com>
In-Reply-To: <4F173AD5.4040200@linux.intel.com>
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
X-List-Received-Date: Thu, 19 Jan 2012 13:55:48 -0000
Content-Type: multipart/alternative;
	boundary="------------040902040604040804000403"

--------------040902040604040804000403
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/18/2012 04:34 PM, Darren Hart wrote:
>
> On 01/18/2012 09:05 AM, Jim Abernathy wrote:
>
>> FYI for those wanting to use Soft RAID, make sure you create one very
>> small primary partition for GRUB2 to put the second part of the
>> boot-loader in.  Can't use the old process.
> I strongly recommend using a separate DISK for your OS installation.
> Yocto builds are hard on disks, and RAID 0 increases your risk of
> failure in exchange for the added performance. I use a small SSD for my
> OS disk and a large RAID0 array of spinning disks for /build and another
> array for /virt (where my VM images live - easily recreated).
>
Learned a few things in this process. I appreciate all the help and advice.

 1. So we know that at least with Edison, btrfs does not work with bitbake.
 2. When I rebuilt the system, this time I put the Linux root directory
    on an 80GB SSD.  That is where I also have my clone of Linux-Yocto
    repository, poky, and download directory , DL_DIR.
 3. I have create /build with EXT4 format on a Software RAID 0 (striped)
    partition, using 2 separate hard drives,  to use as the working
    build directory for bitbake. I have a striped swap file on the same
    two drives.  But with 8GB or RAM, I shouldn't be using that much.

My build times for some of the basic meta-intel BSPs is around 103 minutes.

Jim A



--------------040902040604040804000403
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    On 01/18/2012 04:34 PM, Darren Hart wrote:
    <blockquote cite="mid:4F173AD5.4040200@linux.intel.com" type="cite">
      <pre wrap="">

On 01/18/2012 09:05 AM, Jim Abernathy wrote:

</pre>
      <blockquote type="cite">
        <pre wrap="">FYI for those wanting to use Soft RAID, make sure you create one very 
small primary partition for GRUB2 to put the second part of the 
boot-loader in.  Can't use the old process.
</pre>
      </blockquote>
      <pre wrap="">
I strongly recommend using a separate DISK for your OS installation.
Yocto builds are hard on disks, and RAID 0 increases your risk of
failure in exchange for the added performance. I use a small SSD for my
OS disk and a large RAID0 array of spinning disks for /build and another
array for /virt (where my VM images live - easily recreated).

</pre>
    </blockquote>
    Learned a few things in this process. I appreciate all the help and
    advice.<br>
    <ol>
      <li>So we know that at least with Edison, btrfs does not work with
        bitbake.</li>
      <li>When I rebuilt the system, this time I put the Linux root
        directory on an 80GB SSD.&nbsp; That is where I also have my clone of
        Linux-Yocto repository, poky, and download directory , DL_DIR. </li>
      <li>I have create /build with EXT4 format on a Software RAID 0
        (striped) partition, using 2 separate hard drives,&nbsp; to use as
        the working build directory for bitbake. I have a striped swap
        file on the same two drives.&nbsp; But with 8GB or RAM, I shouldn't
        be using that much.<br>
      </li>
    </ol>
    My build times for some of the basic meta-intel BSPs is around 103
    minutes.<br>
    <br>
    Jim A<br>
    <br>
    <br>
  </body>
</html>

--------------040902040604040804000403--
