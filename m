Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B63D2E01213
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2012 05:33:20 -0800 (PST)
Received: by mail-pa0-f48.google.com with SMTP id fa1so2907891pad.35
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2012 05:33:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=uHw6mjmOGjE0HVD2u95p/+eeRm/EsSq7LMAzPyaY/uw=;
	b=XtJpuNodH6JXzxgTXqYbvq1UTDYf6PvSgoqeAYiT5hoFcg3bIaPsOh/dqhxnu0YzKp
	92XKg4/LWr0BpV+4SWciwjSymtuqsjyoXWC5xEL+zaPMpe+NrtX/m5gi6kT6Swh/6bAA
	Tbxp8v+HQ1IY7GZ0OedmNuf3k5/0aB8hSxM3lp14bapL04iDySQHXm0DEkuPdrDwo29z
	bVA/hT1ze3kTdHfsGHJOOFxfEZ8LuPeKi/yxxZsQgQA6N4y0D/TMbKUSoVrKawwjt9Mj
	SNj72bCHaju0tAarv3WKk2T6ClMghgeCZwflOxQyaomPO9ONl70ymGkRqdj4mw5zX8Mf
	pz5Q==
Received: by 10.68.129.227 with SMTP id nz3mr37523503pbb.111.1353936800493;
	Mon, 26 Nov 2012 05:33:20 -0800 (PST)
Received: from [192.168.1.100] ([94.205.133.177])
	by mx.google.com with ESMTPS id ue7sm8788315pbc.53.2012.11.26.05.33.17
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 26 Nov 2012 05:33:19 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <50B32C0C.4060406@sacnet.es>
Date: Mon, 26 Nov 2012 17:33:12 +0400
Message-Id: <50C8205A-FFF4-4F4D-8B9F-8CADFFA3A5EB@gmail.com>
References: <50B32C0C.4060406@sacnet.es>
To: Daniel Martinez Ramos <daniel.martinez@sacnet.es>
X-Mailer: Apple Mail (2.1499)
Cc: yocto@yoctoproject.org
Subject: Re: mail list for Xilinx Zynq platform?
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
X-List-Received-Date: Mon, 26 Nov 2012 13:33:20 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Daniel,
                   As far as I know, there is no specific mailing list =
for the Xilinx Zynq platform. I use the Xilinx forums to get help at the =
moment.

I personally have used Philip's meta-zynq layer to build a working =
u-boot and linux kernel image using Yocto. It works really well.

Using the Zynq is a little bit different than a standard ARM SOC. If =
you've worked with the TI OMAP series, you would be familiar with the =
x-loader component, that runs before u-boot. Well, the only difference =
here is that you need to use the Xilinx SDK to create a zynq_fsbl (first =
stage boot loader) project, using the defaults.

Once you've got the zynq_fsbl, you have a couple of options

a. Create a bootable image

Use the SDK create boot image utility to create a bootable image
- zynq_fsbl
- u-boot.bin
- system.bit (hardware bitstream)

You would rename the resultant file as BOOT.bin.

After that, you can drop the linux kernel uImage onto an SD card and =
boot linux as normal.=20

b. Download to the target using xmd and a tcl script

Use the xapp792 design files, to see how to download the binaries to the =
Zynq board using a JTAG cable. The tcl file is located in =
xapp792/zc702_video_3x_pipeline/ready_for_download/xmd_top.tcl

The whole process takes a couple of days to get used to. Let me know if =
you get stuck somewhere.

Best regards,

Elvis DOwson


On Nov 26, 2012, at 12:45 PM, Daniel Martinez Ramos =
<daniel.martinez@sacnet.es> wrote:

> Hi all,
>=20
> I've found a bsp layer in Xilinx here =
http://forums.xilinx.com/t5/Embedded-Linux/Yocto-BSP-for-ZC-702/td-p/24693=
2, which is pretty interesting.
>=20
> Is any mail list under Yocto for the Xilinx Zinq platform?
>=20
> Best regards,
>=20
> Daniel Martinez
>=20
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


