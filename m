Return-Path: <Qi.Chen@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEAB6E013CB
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2013 01:12:49 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r638CnFi007339
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 3 Jul 2013 01:12:49 -0700 (PDT)
Received: from [128.224.162.233] (128.224.162.233) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Wed, 3 Jul 2013 01:12:48 -0700
Message-ID: <51D3DD1B.2000806@windriver.com>
Date: Wed, 3 Jul 2013 16:13:15 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <6915E88EED1243A0989D0097AC115254@PAULD>
In-Reply-To: <6915E88EED1243A0989D0097AC115254@PAULD>
X-Originating-IP: [128.224.162.233]
Subject: Re: Creating a volatile image
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
X-List-Received-Date: Wed, 03 Jul 2013 08:12:50 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 07/03/2013 03:48 PM, Paul D. DeRocco wrote:
> When an .hddimg image is used on a hard disk or flash drive, the target root
> directory is implemented as a loop device referring to the rootfs.img file
> contained in that drive. This means it is a true non-volatile file system.
> Is there a way to make the entire file system volatile?
Three ways to achieve this goal.

1. If you're using yocto 3.8 kernel, you can enable aufs by add the 
following line to local.conf.
KERNEL_FEATURES_append = " features/aufs/aufs-enable.scc"
This will enable the aufs support and your live image (iso or hddimg) 
will appear to be writable.
This aufs support in live image is added recently.
commit: 29e55997caeb9c6367f9a340e153f829228f36ed
subject: init-live.sh: try to make a union mount when possible

2. If you're using other kernel versions, an option is to use 
device-mapping.
But you might need to write your own recipe to include the dmsetup 
command into the image.
In addition, you need to modify the init-live.sh script a little.
dmsetup is not used in OE/Yocto for now.
ArchLinux uses this method to make its liveCD version work.

3. As a temporary workaround, you can bind mount the directory you need 
to write to with a tmpfs.
e.g.
mkdir -p /var/volatile/lib
mount --bind /var/lib /var/volatile/lib


Best Regards,
Chen Qi

> I'm trying to ensure that my flash drive is written to as rarely as
> possible. To this end, I'm putting my app's volatile data on a separate
> partition, and I'd like to run the OS out of a big ramdisk, loading it on
> startup and then discarding it on shutdown. In other words, I want a
> Groundhog Day system, which always boots up as though it is a brand new
> clean install.
>
> I've spent a couple hours trying to decipher various .bbclass files,
> Googling about the various file systems, and so on, and I haven't seen
> anything that looks like this capability is already provided somehow in the
> Yocto system. Is there an easy way to do this? Or is there only a hard way
> to do it, involving way more expertise in the build system than I've got?
>
> Alternatively, is it practical to make the existing file system readonly? My
> system is based on core-image-base, with no graphics. What will break if it
> can't write to anything outside of /tmp or /run or /media/ram or
> /var/volatile? And is there a built-in way to do that?
>


