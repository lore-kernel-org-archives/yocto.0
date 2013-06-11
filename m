Return-Path: <Ben.Warren@spidercloud.com>
Received: from berg.int.copivia.com (mailgate1.spidercloud.com [209.49.242.60])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63BC5E015A6
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 10:51:05 -0700 (PDT)
Received: from mailx.spidercloud.com ([10.1.1.225])
	by berg.int.copivia.com (8.13.8/8.13.8) with ESMTP id r5BHp4rr014786
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 10:51:05 -0700
Received: from sofia.us.spidercloud.com ([10.1.1.225]) by
	sofia.us.spidercloud.com ([10.1.1.225]) with mapi;
	Tue, 11 Jun 2013 10:51:04 -0700
From: Ben Warren <Ben.Warren@spidercloud.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 11 Jun 2013 10:51:04 -0700
Thread-Topic: How to get mkfs.ext4 in rootfs package
Thread-Index: Ac5mzD4V/IefcFxGR6We7ov7A2VlUA==
Message-ID: <0E1D49D2-4C56-45AC-AB70-2EA8261EE4D8@spidercloud.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: How to get mkfs.ext4 in rootfs package
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
X-List-Received-Date: Tue, 11 Jun 2013 17:51:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to get the 'mkfs.ext4' binary from e2fsprogs into my image, in p=
articular the '.ext3' rootfs image, and am obviously missing something fund=
amental.
I'm using a custom image based on (copy/pasted from) 'kvm_image_minimal', a=
nd have added 'e2fsprogs' to the IMAGE_INSTALL string in the image descript=
or file.

I see that the library is compiling and the binary is in tmp/sysroots:

ben@ubuntu-scw:/opt/scw-appscard-build$ ls tmp/sysroots/x86_64-linux/sbin/m=
kfs.*
tmp/sysroots/x86_64-linux/sbin/mkfs.ext2  tmp/sysroots/x86_64-linux/sbin/mk=
fs.ext4     tmp/sysroots/x86_64-linux/sbin/mkfs.minix
tmp/sysroots/x86_64-linux/sbin/mkfs.ext3  tmp/sysroots/x86_64-linux/sbin/mk=
fs.ext4dev

but it's not making it to the rootfs images.

I've tried to read the documentation but still am not quite sure about what=
 defines the contents of the rootfs images.

thanks,
Ben



